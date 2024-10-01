transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_17
vlib riviera/processing_system7_vip_v1_0_19
vlib riviera/xil_defaultlib
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_cdc_v1_0_3
vlib riviera/interrupt_control_v3_1_5
vlib riviera/axi_gpio_v2_0_33
vlib riviera/axi_bram_ctrl_v4_1_10
vlib riviera/blk_mem_gen_v8_4_8
vlib riviera/proc_sys_reset_v5_0_15
vlib riviera/generic_baseblocks_v2_1_2
vlib riviera/axi_register_slice_v2_1_31
vlib riviera/fifo_generator_v13_2_10
vlib riviera/axi_data_fifo_v2_1_30
vlib riviera/axi_crossbar_v2_1_32
vlib riviera/axi_protocol_converter_v2_1_31
vlib riviera/axi_mmu_v2_1_29

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 riviera/axi_vip_v1_1_17
vmap processing_system7_vip_v1_0_19 riviera/processing_system7_vip_v1_0_19
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap interrupt_control_v3_1_5 riviera/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_33 riviera/axi_gpio_v2_0_33
vmap axi_bram_ctrl_v4_1_10 riviera/axi_bram_ctrl_v4_1_10
vmap blk_mem_gen_v8_4_8 riviera/blk_mem_gen_v8_4_8
vmap proc_sys_reset_v5_0_15 riviera/proc_sys_reset_v5_0_15
vmap generic_baseblocks_v2_1_2 riviera/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_31 riviera/axi_register_slice_v2_1_31
vmap fifo_generator_v13_2_10 riviera/fifo_generator_v13_2_10
vmap axi_data_fifo_v2_1_30 riviera/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 riviera/axi_crossbar_v2_1_32
vmap axi_protocol_converter_v2_1_31 riviera/axi_protocol_converter_v2_1_31
vmap axi_mmu_v2_1_29 riviera/axi_mmu_v2_1_29

vlog -work xilinx_vip  -incr "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -incr "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_19  -incr "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_processing_system7_0_0/sim/design_1_multicore_multicycle_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -93  -incr \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_33 -93  -incr \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/4208/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_axi_gpio_0_0/sim/design_1_multicore_multicycle_axi_gpio_0_0.vhd" \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_axi_gpio_0_1/sim/design_1_multicore_multicycle_axi_gpio_0_1.vhd" \

vcom -work axi_bram_ctrl_v4_1_10 -93  -incr \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/14fa/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_axi_bram_ctrl_0_0/sim/design_1_multicore_multicycle_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_blk_mem_gen_0_0/sim/design_1_multicore_multicycle_blk_mem_gen_0_0.v" \

vcom -work proc_sys_reset_v5_0_15 -93  -incr \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_rst_ps7_0_100M_0/sim/design_1_multicore_multicycle_rst_ps7_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_2  -incr -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -incr -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -93  -incr \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -incr -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32  -incr -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
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

vlog -work axi_protocol_converter_v2_1_31  -incr -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_auto_pc_0/sim/design_1_multicore_multicycle_auto_pc_0.v" \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_auto_pc_1/sim/design_1_multicore_multicycle_auto_pc_1.v" \

vlog -work axi_mmu_v2_1_29  -incr -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b562/hdl/axi_mmu_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/ec67/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ipshared/b28c/hdl" "+incdir+../../../../pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_2/drivers/multicycle_pipeline_ip_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_s00_mmu_0/sim/design_1_multicore_multicycle_s00_mmu_0.v" \
"../../../bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_s01_mmu_0/sim/design_1_multicore_multicycle_s01_mmu_0.v" \
"../../../bd/design_1_multicore_multicycle/sim/design_1_multicore_multicycle.v" \

vlog -work xil_defaultlib \
"glbl.v"

