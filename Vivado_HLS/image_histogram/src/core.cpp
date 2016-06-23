#include "core.h"

void doHist(hls::stream<uint_8_side_channel>& inStream, int histo[PIXEL_RANGE])
{
#pragma HLS INTERFACE axis port = inStream
#pragma HLS INTERFACE s_axilite port = return bundle = CTRL_BUS
#pragma HLS INTERFACE bram port = histo

  // Initialize always before calculating to zero
  for (int idxHist = 0; idxHist < PIXEL_RANGE; idxHist++) {
#pragma HLS PIPELINE
    histo[idxHist] = 0;
  }

  // Iterate on a stream of (320*240)
  for (int idxPixel = 0; idxPixel < (IMG_WIDTH * IMG_HEIGHT); idxPixel++) {
    // Read and cache (block here if FIFO sender is empty)
    uint_8_side_channel currPixelSideChannel = inStream.read();

    // Calculate the histogram
    histo[currPixelSideChannel.data] += 1;
  }
}
