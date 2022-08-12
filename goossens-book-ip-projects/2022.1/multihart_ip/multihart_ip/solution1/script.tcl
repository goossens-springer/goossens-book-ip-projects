############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project multihart_ip
set_top multihart_ip
add_files compute.cpp
add_files decode.cpp
add_files disassemble.cpp
add_files emulate.cpp
add_files execute.cpp
add_files fetch.cpp
add_files immediate.cpp
add_files issue.cpp
add_files mem.cpp
add_files mem_access.cpp
add_files multihart_ip.cpp
add_files new_cycle.cpp
add_files print.cpp
add_files type.cpp
add_files wb.cpp
add_files -tb testbench_seq_multihart_ip.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./multihart_ip/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
