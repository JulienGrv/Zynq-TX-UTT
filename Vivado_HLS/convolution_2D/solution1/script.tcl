############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project convolution_2D
set_top doImgProc
add_files convolution_2D/src/define.h
add_files convolution_2D/src/core.h
add_files convolution_2D/src/core.cpp
add_files -tb convolution_2D/src/test_core.cpp
add_files -tb convolution_2D/src/TestUtils.h
add_files -tb convolution_2D/src/TestUtils.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./convolution_2D/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -evaluate vhdl -format ip_catalog -description "convolution of an image" -vendor "utt.fr" -library "hls_video"
