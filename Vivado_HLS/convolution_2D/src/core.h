#ifndef __CORE_H__
#define __CORE_H__

#include <hls_video.h>
#include "define.h"

// Use the axi stream side-channel (TLAST,TKEEP,TUSR,TID)
#include <ap_axi_sdata.h>
typedef ap_axiu < 8, 2, 5, 6 > uint_8_side_channel;
typedef ap_axis < 8, 2, 5, 6 > int_8_side_channel;

// Reference functions
short convolve2d(hls::Window < KERNEL_DIM,
                 KERNEL_DIM,
                 char >       *window,
                 char          kernel[KERNEL_DIM * KERNEL_DIM]);

// Our IP core
void doImgProc(hls::stream < uint_8_side_channel >& inStream,
               hls::stream < int_8_side_channel > & outStream,
               char                                 kernel[KERNEL_DIM * KERNEL_DIM],
               int                                  operation);
short sumWindow(hls::Window < KERNEL_DIM,
                KERNEL_DIM,
                short >      *window);
short minWindow(hls::Window < KERNEL_DIM,
                KERNEL_DIM,
                short >      *window);
short maxWindow(hls::Window < KERNEL_DIM,
                KERNEL_DIM,
                short >      *window);

#endif /* ifndef __CORE_H__ */
