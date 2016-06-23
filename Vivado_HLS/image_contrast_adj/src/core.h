#include "define.h"

// use the class stream
#include <hls_stream.h>

// use the axi stream side-channel
#include <ap_axi_sdata.h>

typedef ap_axiu < 8, 2, 5, 6 > uint_8_side_channel;

void doHistStretch(hls::stream < uint_8_side_channel >& inStream,
                   hls::stream < uint_8_side_channel >& outStream,
                   unsigned char                        xMin,
                   unsigned char                        xMax);
