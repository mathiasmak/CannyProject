############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project TestPorject
set_top greyScale
add_files TestPorject/dataflow.c
open_solution "solution1"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./TestPorject/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -flow syn -rtl vhdl -format ip_catalog -version "1.1"
