############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project image_histogram
set_top doHist
add_files image_histogram/src/core.cpp
add_files image_histogram/src/core.h
add_files image_histogram/src/define.h
add_files -tb image_histogram/src/test_core.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./image_histogram/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -evaluate vhdl -format ip_catalog -description "Histogram calculation" -vendor "utt.fr"
