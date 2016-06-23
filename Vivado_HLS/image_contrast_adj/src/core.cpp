#include "core.h"

void doHistStretch(hls::stream<uint_8_side_channel>& inStream,
                   hls::stream<uint_8_side_channel>& outStream,
                   unsigned char                     xMin,
                   unsigned char                     xMax)
{
#pragma HLS INTERFACE axis port=inStream
#pragma HLS INTERFACE axis port=outStream
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=xMin bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=xMax bundle=CTRL_BUS

  // Calculate and cache the result of xMax-xMin
  float xMax_minus_xMin = xMax - xMin;

  // Iterate on the image stream of (IMG_WIDTH * IMG_HEIGHT)
  for (int idxPixel = 0; idxPixel < (IMG_WIDTH * IMG_HEIGHT); idxPixel++) {
#pragma HLS PIPELINE

    // Read and cache (block here if FIFO sender is empty)
    uint_8_side_channel currPixelSideChannel = inStream.read();
    uint_8_side_channel dataOutSideChannel;

    // Get pixel data
    unsigned char x_t = currPixelSideChannel.data;

    // Calculate the histogram stretch (calculate in float then convert to
    // 8-bit)
    float y_t_float   = ((x_t - xMin) / xMax_minus_xMin) * (PIXEL_RANGE - 1);
    unsigned char y_t = y_t_float;

    // Put data in output stream (side-channel(tlast) way...)
    dataOutSideChannel.data = y_t;
    dataOutSideChannel.keep = currPixelSideChannel.keep;
    dataOutSideChannel.strb = currPixelSideChannel.strb;
    dataOutSideChannel.user = currPixelSideChannel.user;
    dataOutSideChannel.last = currPixelSideChannel.last;
    dataOutSideChannel.id   = currPixelSideChannel.id;
    dataOutSideChannel.dest = currPixelSideChannel.dest;

    // Send to the stream (block if the FIFO receiver is full)
    outStream.write(dataOutSideChannel);
  }
}
