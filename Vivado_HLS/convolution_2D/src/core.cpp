#include "core.h"

/*
 * Core that apply a 3x3(Configurable) 2d Convolution, Erode, Dilate on
 * grayscale images
 * http://www.xilinx.com/support/documentation/sw_manuals/xilinx2014_1/ug902-vivado-high-level-synthesis.pdf
 * */
void doImgProc(hls::stream<uint_8_side_channel>& inStream,
               hls::stream<int_8_side_channel> & outStream,
               char                              kernel[KERNEL_DIM * KERNEL_DIM],
               int                               operation)
{
#pragma HLS INTERFACE axis port=inStream
#pragma HLS INTERFACE axis port=outStream
#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS
#pragma HLS INTERFACE s_axilite port=operation bundle=CRTL_BUS
#pragma HLS INTERFACE s_axilite port=kernel bundle=KERNEL_BUS

  // Defining the line buffer and setting the inter dependency to false through
  // pragmas
  hls::LineBuffer<KERNEL_DIM, IMG_WIDTH, unsigned char> lineBuff;
  hls::Window<KERNEL_DIM, KERNEL_DIM, short> window;

  // Index used to keep track of row,col
  int idxCol       = 0;
  int idxRow       = 0;
  int pixConvolved = 0;

  // Calculate delay to fix line-buffer offset
  int waitTicks  = (IMG_WIDTH * (KERNEL_DIM - 1) + KERNEL_DIM) / 2;// 241;
  int countWait  = 0;
  int sentPixels = 0;


  int_8_side_channel  dataOutSideChannel;
  uint_8_side_channel currPixelSideChannel;

  // Iterate on all pixels for our 320x240 image, the HLS PIPELINE improves our
  // latency
  for (int idxPixel = 0; idxPixel < (IMG_WIDTH * IMG_HEIGHT); idxPixel++) {
#pragma HLS PIPELINE

    // Read and cache (Block here if FIFO sender is empty)
    currPixelSideChannel = inStream.read();

    // Get the pixel data
    unsigned char pixelIn = currPixelSideChannel.data;

    // Put data on the LineBuffer
    lineBuff.shift_up(idxCol);
    lineBuff.insert_top(pixelIn, idxCol); // Will put in val[2] of line buffer
                                          // (Check Debug)

    // Put data on the window and multiply with the kernel
    for (int idxWinRow = 0; idxWinRow < KERNEL_DIM; idxWinRow++) {
      for (int idxWinCol = 0; idxWinCol < KERNEL_DIM; idxWinCol++) {
        // idxWinCol + pixConvolved, will slide the window ...
        short val = (short)lineBuff.getval(idxWinRow, idxWinCol + pixConvolved);

        // Multiply kernel by the sampling window
        val = (short)kernel[(idxWinRow * KERNEL_DIM) + idxWinCol] * val;
        window.insert(val, idxWinRow, idxWinCol);
      }
    }

    // Avoid calculate out of the image boundaries and if we can convolve
    short valOutput = 0;

    if ((idxRow >= KERNEL_DIM - 1) && (idxCol >= KERNEL_DIM - 1)) {
      switch (operation) {
      case 0:

        // Convolution
        valOutput = sumWindow(&window);
        valOutput = valOutput / 8;

        // Avoid negative values
        if (valOutput < 0) valOutput = 0;
        break;

      case 1:

        // Erode
        valOutput = minWindow(&window);
        break;

      case 2:

        // Dilate
        valOutput = maxWindow(&window);
        break;
      }

      pixConvolved++;
    }

    // Calculate row and col index
    if (idxCol < IMG_WIDTH - 1) {
      idxCol++;
    }
    else {
      // New line
      idxCol = 0;
      idxRow++;
      pixConvolved = 0;
    }

    /*
     * Fix the line buffer delay, on a 320x240 image with 3x3 kernel, the delay
     * will be
     * ((240*2) + 3)/2 = 241
     * So we wait for 241 ticks send the results than put more 241 zeros
     */

    // Put data on output stream (side-channel(tlast) way...)

    /*dataOutSideChannel.data = valOutput;
       dataOutSideChannel.keep = currPixelSideChannel.keep;
       dataOutSideChannel.strb = currPixelSideChannel.strb;
       dataOutSideChannel.user = currPixelSideChannel.user;
       dataOutSideChannel.last = currPixelSideChannel.last;
       dataOutSideChannel.id = currPixelSideChannel.id;
       dataOutSideChannel.dest = currPixelSideChannel.dest;

       // Send to the stream (Block if the FIFO receiver is full)
       outStream.write(dataOutSideChannel);*/
    countWait++;

    if (countWait > waitTicks)  {
      dataOutSideChannel.data = valOutput;
      dataOutSideChannel.keep = currPixelSideChannel.keep;
      dataOutSideChannel.strb = currPixelSideChannel.strb;
      dataOutSideChannel.user = currPixelSideChannel.user;
      dataOutSideChannel.last = 0;
      dataOutSideChannel.id   = currPixelSideChannel.id;
      dataOutSideChannel.dest = currPixelSideChannel.dest;

      // Send to the stream (Block if the FIFO receiver is full)
      outStream.write(dataOutSideChannel);
      sentPixels++;
    }
  }

  // Now send the remaining zeros (Just the (Number of delayed ticks)
  for (countWait = 0; countWait < waitTicks; countWait++) {
    dataOutSideChannel.data = 0;
    dataOutSideChannel.keep = currPixelSideChannel.keep;
    dataOutSideChannel.strb = currPixelSideChannel.strb;
    dataOutSideChannel.user = currPixelSideChannel.user;

    // Send last on the last item
    if (countWait < waitTicks - 1) dataOutSideChannel.last = 0;
    else dataOutSideChannel.last = 1;
    dataOutSideChannel.id   = currPixelSideChannel.id;
    dataOutSideChannel.dest = currPixelSideChannel.dest;

    // Send to the stream (Block if the FIFO receiver is full)
    outStream.write(dataOutSideChannel);
  }
}

short minWindow(hls::Window<KERNEL_DIM, KERNEL_DIM, short> *window)
{
  unsigned char minVal = 255;

  // Look for the smallest value on the array
  for (int idxRow = 0; idxRow < KERNEL_DIM; idxRow++) {
    for (int idxCol = 0; idxCol < KERNEL_DIM; idxCol++) {
      unsigned char valInWindow;
      valInWindow = (unsigned char)window->getval(idxRow, idxCol);

      if (valInWindow < minVal) minVal = valInWindow;
    }
  }
  return minVal;
}

// Dilate will get the maximum value on the window, which in our case will
// always be rectangular and filled with one
short maxWindow(hls::Window<KERNEL_DIM, KERNEL_DIM, short> *window)
{
  unsigned char maxVal = 0;

  // Look for the smallest value on the array
  for (int idxRow = 0; idxRow < KERNEL_DIM; idxRow++) {
    for (int idxCol = 0; idxCol < KERNEL_DIM; idxCol++) {
      unsigned char valInWindow;
      valInWindow = (unsigned char)window->getval(idxRow, idxCol);

      if (valInWindow > maxVal) maxVal = valInWindow;
    }
  }
  return maxVal;
}

// Sum all values inside window (Already multiplied by the kernel)
short sumWindow(hls::Window<KERNEL_DIM, KERNEL_DIM, short> *window)
{
  short accumulator = 0;

  // Iterate on the window multiplying and accumulating the kernel and sampling
  // window
  for (int idxRow = 0; idxRow < KERNEL_DIM; idxRow++) {
    for (int idxCol = 0; idxCol < KERNEL_DIM; idxCol++) {
      accumulator = accumulator + (short)window->getval(idxRow, idxCol);
    }
  }
  return accumulator;
}
