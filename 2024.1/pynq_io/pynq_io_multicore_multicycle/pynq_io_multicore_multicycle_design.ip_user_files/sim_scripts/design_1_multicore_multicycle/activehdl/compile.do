transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_17
vlib activehdl/processing_system7_vip_v1_0_19
vlib activehdl/xil_defaultlib
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/interrupt_control_v3_1_5
vlib activehdl/axi_gpio_v2_0_33
vlib activehdl/axi_bram_ctrl_v4_1_10
vlib activehdl/blk_mem_gen_v8_4_8
vlib activehdl/proc_sys_reset_v5_0_15
vlib activehdl/generic_baseblocks_v2_1_2
vlib activehdl/axi_register_slice_v2_1_31
vlib activehdl/fifo_generator_v13_2_10
vlib activehdl/axi_data_fifo_v2_1_30
vlib activehdl/axi_crossbar_v2_1_32
vlib activehdl/axi_protocol_converter_v2_1_31
vlib activehdl/axi_mmu_v2_1_29

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 activehdl/axi_vip_v1_1_17
vmap processing_system7_vip_v1_0_19 activehdl/processing_system7_vip_v1_0_19
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap interrupt_control_v3_1_5 activehdl/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_33 activehdl/axi_gpio_v2_0_33
vmap axi_bram_ctrl_v4_1_10 activehdl/axi_bram_ctrl_v4_1_10
vmap blk_mem_gen_v8_4_8 activehdl/blk_mem_gen_v8_4_8
vmap proc_sys_reset_v5_0_15 activehdl/proc_sys_reset_v5_0_15
vmap generic_baseblocks_v2_1_2 activehdl/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_31 activehdl/axi_register_slice_v2_1_31
vmap fifo_generator_v13_2_10 activehdl/fifo_generator_v13_2_10
vmap axi_data_fifo_v2_1_30 activehdl/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 activehdl/axi_crossbar_v2_1_32
vmap axi_protocol_converter_v2_1_31 activehdl/axi_protocol_converter_v2_1_31
vmap axi_mmu_v2_1_29 activehdl/axi_mmu_v2_1_29

vlog -work xilinx_vip  -sv2k12 "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -  \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -sv2k12 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_19  -sv2k12 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_processing_system7_0_0/sim/design_1_multicore_multicycle_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -  \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_3 -  \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -  \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_33 -  \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/4208/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_axi_gpio_0_0/sim/design_1_multicore_multicycle_axi_gpio_0_0.vhd" \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_axi_gpio_0_1/sim/design_1_multicore_multicycle_axi_gpio_0_1.vhd" \

vcom -work axi_bram_ctrl_v4_1_10 -  \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/14fa/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_axi_bram_ctrl_0_0/sim/design_1_multicore_multicycle_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_8  -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_blk_mem_gen_0_0/sim/design_1_multicore_multicycle_blk_mem_gen_0_0.v" \

vcom -work proc_sys_reset_v5_0_15 -  \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_rst_ps7_0_100M_0/sim/design_1_multicore_multicycle_rst_ps7_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_2  -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_10  -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -  \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32  -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_xbar_0/sim/design_1_multicore_multicycle_xbar_0.v" \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/2eb1/hdl/verilog/multicycle_pipeline_ip_control_s_axi.v" \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/2eb1/hdl/verilog/multicycle_pipeline_ip_flow_control_loop_delay_pipe.v" \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/2eb1/hdl/verilog/multicycle_pipeline_ip_gmem_m_axi.v" \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/2eb1/hdl/verilog/multicycle_pipeline_ip_sparsemux_7_2_8_1_1.v" \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/2eb1/hdl/verilog/multicycle_pipeline_ip_sparsemux_13_5_32_1_1.v" \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/2eb1/hdl/verilog/multicycle_pipeline_ip_sparsemux_15_6_1_1_1.v" \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/2eb1/hdl/verilog/multicycle_pipeline_ip_sparsemux_17_7_32_1_1.v" \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/2eb1/hdl/verilog/multicycle_pipeline_ip_sparsemux_65_5_1_1_1.v" \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/2eb1/hdl/verilog/multicycle_pipeline_ip_sparsemux_65_5_32_1_1.v" \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/2eb1/hdl/verilog/multicycle_pipeline_ip.v" \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/sim/design_1_multicore_multicycle_multicycle_pipeline_0_2.v" \

vlog -work axi_protocol_converter_v2_1_31  -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_auto_pc_0/sim/design_1_multicore_multicycle_auto_pc_0.v" \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_auto_pc_1/sim/design_1_multicore_multicycle_auto_pc_1.v" \

vlog -work axi_mmu_v2_1_29  -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b562/hdl/axi_mmu_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_s00_mmu_0/sim/design_1_multicore_multicycle_s00_mmu_0.v" \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_s01_mmu_0/sim/design_1_multicore_multicycle_s01_mmu_0.v" \
"../../../bd/design_1_multicore_multicycle/sim/design_1_multicore_multicycle.v" \

vlog -work xil_defaultlib \
"glbl.v"

