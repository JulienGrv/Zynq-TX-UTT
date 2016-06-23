#include <stdio.h>
#include <opencv2/core/core.hpp>
#include <hls_opencv.h>
#include "core.h"

// Variables
char outImage[IMG_WIDTH][IMG_HEIGHT];

void saveImage(const std::string path, cv::InputArray inArr)
{
  double min;
  double max;

  cv::minMaxIdx(inArr, &min, &max);
  cv::Mat adjMap;
  cv::convertScaleAbs(inArr, adjMap, (PIXEL_RANGE - 1) / max);
  cv::imwrite(path, adjMap);
}

int main()
{
  // Read input image
  printf("Load image %s\n", INPUT_IMG_FILE);
  cv::Mat imageSrc;
  imageSrc = cv::imread(INPUT_IMG_FILE);

  // Convert to grayscale
  cv::cvtColor(imageSrc, imageSrc, CV_BGR2GRAY);
  printf("Image Rows:%d Cols:%d\n", imageSrc.rows, imageSrc.cols);

  // Define streams for input and output
  hls::stream<uint_8_side_channel> inputStream;
  hls::stream<uint_8_side_channel> outputStream;

  // OpenCV mat that point to a array (cv::Size(Width, Height))
  cv::Mat imgCvOut(cv::Size(imageSrc.cols,
                            imageSrc.rows), CV_8UC1, outImage,
                   cv::Mat::AUTO_STEP);

  // Populate the input stream with the image bytes
  for (int idxRows = 0; idxRows < imageSrc.rows; idxRows++)
  {
    for (int idxCols = 0; idxCols < imageSrc.cols; idxCols++)
    {
      uint_8_side_channel valIn;
      valIn.data = imageSrc.at<unsigned char>(idxRows, idxCols);
      valIn.keep = 1; valIn.strb = 1; valIn.user = 1; valIn.id = 0;
      valIn.dest = 0;
      inputStream << valIn;
    }
  }

  // Min and max of the input image were calculated in matlab
  doHistStretch(inputStream, outputStream, 92, 255);

  // Take data from the output stream to our array outImage (Pointed in opencv)
  for (int idxRow = 0; idxRow < imageSrc.rows; idxRow++)
  {
    for (int idxCol = 0; idxCol < imageSrc.cols; idxCol++)
    {
      uint_8_side_channel valOut;
      outputStream.read(valOut);
      outImage[idxRow][idxCol] = valOut.data;
    }
  }

  // Save image out file
  saveImage(std::string(OUTPUT_IMG_FILE), imgCvOut);
  return 0;
}
