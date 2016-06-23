#ifndef __TESTUTILS_H__
#define __TESTUTILS_H__

#include <stdio.h>
#include <opencv2/core/core.hpp>
#include <hls_opencv.h>
#include "core.h"

short processWindowAndKernel(short *kernel,
                             char  *window,
                             short  numKernelElements);
void  conv2dByHand(cv::InputArray imageIn,
                   char           imageOut[IMG_WIDTH][IMG_HEIGHT],
                   char           kernel[KERNEL_DIM * KERNEL_DIM],
                   int            kSize);
void printSmallMatrixCVShort(char          *title,
                             cv::InputArray inArr);
void printSmallMatrixCVChar(char          *title,
                            cv::InputArray inArr);
void saveImage(const std::string path,
               cv::InputArray    inArr);

#endif /* ifndef __TESTUTILS_H__ */
