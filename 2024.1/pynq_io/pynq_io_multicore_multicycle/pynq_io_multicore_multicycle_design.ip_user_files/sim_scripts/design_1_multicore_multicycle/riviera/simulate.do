transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+design_1_multicore_multicycle  -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xil_defaultlib -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_3 -L interrupt_control_v3_1_5 -L axi_gpio_v2_0_33 -L axi_bram_ctrl_v4_1_10 -L blk_mem_gen_v8_4_8 -L proc_sys_reset_v5_0_15 -L generic_baseblocks_v2_1_2 -L axi_register_slice_v2_1_31 -L fifo_generator_v13_2_10 -L axi_data_fifo_v2_1_30 -L axi_crossbar_v2_1_32 -L axi_protocol_converter_v2_1_31 -L axi_mmu_v2_1_29 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_1_multicore_multicycle xil_defaultlib.glbl

do {design_1_multicore_multicycle.udo}

run 1000ns

endsim

quit -force
