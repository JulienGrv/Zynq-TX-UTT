#include <stdio.h>
#include <opencv2/core/core.hpp>
#include <hls_opencv.h>
#include "core.h"

// variables
char outImage[IMG_WIDTH][IMG_HEIGHT];
int  histo[PIXEL_RANGE];
int  lutMult[PIXEL_RANGE];

void saveImage(const std::string path, cv::InputArray inArr)
{
  double min;
  double max;

  cv::minMaxIdx(inArr, &min, &max);
  cv::Mat adjMap;
  cv::convertScaleAbs(inArr, adjMap, (PIXEL_RANGE - 1) / max);
  cv::imwrite(path, adjMap);
}

void saveHistogram(const char *filename, int *histPointer, int min, int max)
{
  // Open file to compare later...
  FILE *pFile;

  pFile = fopen(filename, "w");

  if (pFile != NULL) {
    fprintf(pFile, "Min=%d\nMax=%d\n\n", min, max);

    for (int idx = 0; idx < PIXEL_RANGE; idx++) {
      fprintf(pFile, "Bin[%d]=%d\n", idx, histPointer[idx]);
    }
  }
}

int main() {
  // Read input image
  printf("Load image %s\n", OUTPUT_IMG_FILE);
  cv::Mat imageSrc;
  imageSrc = cv::imread(OUTPUT_IMG_FILE);

  // Convert to grayscale
  cv::cvtColor(imageSrc, imageSrc, CV_BGR2GRAY);
  printf("Image Rows:%d Cols:%d\n", imageSrc.rows, imageSrc.cols);

  // Define streams for input and output
  hls::stream<uint_8_side_channel> inputStream;

  // Iterate on all elements of the image (calculate histogram)
  // Populate the input stream with the image bytes
  for (int idxRow = 0; idxRow < imageSrc.rows; idxRow++) {
    for (int idxCol = 0; idxCol < imageSrc.cols; idxCol++) {
      uint_8_side_channel valIn;
      valIn.data = imageSrc.at<unsigned char>(idxRow, idxCol);
      valIn.keep = 1; valIn.strb = 1; valIn.user = 1; valIn.id = 0;
      valIn.dest = 0;
      inputStream << valIn;
    }
  }
  doHist(inputStream, histo);

  // Find min and max value
  int min = 255;
  int max = 0;

  for (int pixelvalue = 0; pixelvalue < PIXEL_RANGE; pixelvalue++) {
    if (histo[pixelvalue] != 0) { min = pixelvalue; break; }
  }

  for (int pixelvalue = PIXEL_RANGE - 1; pixelvalue != 0; pixelvalue--) {
    if (histo[pixelvalue] != 0) { max = pixelvalue; break; }
  }

  // Save histogram to a file
  saveHistogram(OUTPUT_HIST_FILE, histo, min, max);
  return 0;
}
