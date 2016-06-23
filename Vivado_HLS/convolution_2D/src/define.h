#ifndef __DEFINE_H__
#define __DEFINE_H__

// File path
#define INPUT_IMAGE_FILE \
  "/home/darkin/Workspace/Vivado_HLS/img/lena_std.tif"

/*#define OUTPUT_HIST_FILE \
   "/home/darkin/Workspace/Vivado_HLS/output/histogram.txt"*/
#define OUTPUT_IMAGE_FILE \
  "/home/darkin/Workspace/Vivado_HLS/output/lena_std_output.tif"
#define OUTPUT_IMAGE_REF \
  "/home/darkin/Workspace/Vivado_HLS/output/lena_std_output_ref.tif"

// Image size
#define IMG_WIDTH 512
#define IMG_HEIGHT 512

// 3x3 kernel
#define KERNEL_DIM 3

// Pixel range
#define PIXEL_RANGE 256

#endif /* ifndef __DEFINE_H__ */
