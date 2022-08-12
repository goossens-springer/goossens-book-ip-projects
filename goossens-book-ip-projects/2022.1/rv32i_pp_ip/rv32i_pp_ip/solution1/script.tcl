############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project rv32i_pp_ip
set_top rv32i_pp_ip
add_files compute.cpp
add_files decode.cpp
add_files disassemble.cpp
add_files emulate.cpp
add_files execute.cpp
add_files fetch.cpp
add_files fetch_decode.cpp
add_files immediate.cpp
add_files mem.cpp
add_files print.cpp
add_files rv32i_pp_ip.cpp
add_files type.cpp
add_files wb.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./rv32i_pp_ip/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
