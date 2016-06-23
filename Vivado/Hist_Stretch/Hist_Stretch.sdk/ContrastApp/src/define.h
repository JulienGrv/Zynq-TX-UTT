/*
 * LenaOnCode.h
 *
 *  Created on: 20 juin 2016
 *      Author: root
 */

#ifndef SRC_DEFINE_H_
#define SRC_DEFINE_H_

// Array size
#define IMG_WIDTH 512
#define IMG_HEIGHT 512

// Memory used by DMA
#define MEM_BASE_ADDR   0x01000000
#define TX_BUFFER_BASE  (MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE  (MEM_BASE_ADDR + 0x00300000)

// Pixel value range
#define PIXEL_RANGE 256

#endif /* SRC_DEFINE_H_ */
