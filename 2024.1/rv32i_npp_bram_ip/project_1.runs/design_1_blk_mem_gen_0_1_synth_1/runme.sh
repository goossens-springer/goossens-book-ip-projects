#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/opt/Xilinx/Vitis/2024.1/bin:/opt/Xilinx/Vivado/2024.1/ids_lite/ISE/bin/lin64:/opt/Xilinx/Vivado/2024.1/bin
else
  PATH=/opt/Xilinx/Vitis/2024.1/bin:/opt/Xilinx/Vivado/2024.1/ids_lite/ISE/bin/lin64:/opt/Xilinx/Vivado/2024.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/goossens/goossens-book-ip-projects/2024.1/rv32i_npp_bram_ip/project_1.runs/design_1_blk_mem_gen_0_1_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log design_1_blk_mem_gen_0_1.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source design_1_blk_mem_gen_0_1.tcl