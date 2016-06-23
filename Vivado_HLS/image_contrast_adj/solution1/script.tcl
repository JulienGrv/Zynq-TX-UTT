############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project image_contrast_adj
set_top doHistStretch
add_files image_contrast_adj/src/core.cpp
add_files image_contrast_adj/src/core.h
add_files image_contrast_adj/src/define.h
add_files -tb image_contrast_adj/src/test_core.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./image_contrast_adj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -evaluate vhdl -format ip_catalog -description "Image normalization" -vendor "utt.fr"
