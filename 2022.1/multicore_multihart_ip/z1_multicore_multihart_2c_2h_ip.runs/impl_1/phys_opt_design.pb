
T
Command: %s
53*	vivadotcl2#
phys_opt_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
?
^PhysOpt_Tcl_Interface Runtime Before Starting Physical Synthesis Task | CPU: %ss |  WALL: %ss
566*	vivadotcl2
12.082default:default2
3.072default:defaultZ4-1435h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
4002.8122default:default2
0.0002default:default2
52942default:default2
124932default:defaultZ17-722h px? 
a

Starting %s Task
103*constraints2&
Physical Synthesis2default:defaultZ18-103h px? 
?

Phase %s%s
101*constraints2
1 2default:default25
!Physical Synthesis Initialization2default:defaultZ18-101h px? 
?
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
82default:defaultZ32-721h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.4052default:default2

-42610.0412default:defaultZ32-619h px? 
U
@Phase 1 Physical Synthesis Initialization | Checksum: 14799b525
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:06 ; elapsed = 00:00:03 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 5279 ; free virtual = 124782default:defaulth px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.4052default:default2

-42610.0412default:defaultZ32-619h px? 
z

Phase %s%s
101*constraints2
2 2default:default2-
DSP Register Optimization2default:defaultZ18-101h px? 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
M
8Phase 2 DSP Register Optimization | Checksum: 14799b525
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:06 ; elapsed = 00:00:03 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 5279 ; free virtual = 124782default:defaulth px? 
{

Phase %s%s
101*constraints2
3 2default:default2.
Critical Path Optimization2default:defaultZ18-101h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.4052default:default2

-42610.0412default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/doutb[0]?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
Adesign_1_2c_2h_i/processing_system7_0/inst/FCLK_CLK_unbuffered[0]Adesign_1_2c_2h_i/processing_system7_0/inst/FCLK_CLK_unbuffered[0]2default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg_0?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg_02default:default2?
?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/DEVICE_7SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.TDP_SP36_NO_ECC_ATTR.ram_i_1_comp	?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/DEVICE_7SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.TDP_SP36_NO_ECC_ATTR.ram_i_1_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.4022default:default2

-42608.2812default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[12].ram.r/prim_noinit.ram/doutb[0]?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[12].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg_1?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg_12default:default2?
?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/DEVICE_7SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.TDP_SP36_NO_ECC_ATTR.ram_i_1__0_comp	?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/DEVICE_7SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.TDP_SP36_NO_ECC_ATTR.ram_i_1__0_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.3772default:default2

-42604.2722default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[29].ram.r/prim_noinit.ram/doutb[0]?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[29].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg_2?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg_22default:default2?
?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/DEVICE_7SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.TDP_SP36_NO_ECC_ATTR.ram_i_1__1_comp	?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/DEVICE_7SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.TDP_SP36_NO_ECC_ATTR.ram_i_1__1_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.3252default:default2

-42602.5332default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
hdesign_1_2c_2h_i/multihart_ip_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][60]_srl4_n_0hdesign_1_2c_2h_i/multihart_ip_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][60]_srl4_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][55]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][55]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][51]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][51]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][47]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][47]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][43]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][43]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][39]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][39]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][35]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][35]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][31]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][31]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][27]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][27]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][23]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][23]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][19]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][19]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][15]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][15]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_4_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_4_n_02default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_4_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_4_n_02default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_4_comp	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_4_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[14]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[14]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.2982default:default2

-42601.1872default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_3__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_3__0_n_02default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[15]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[15]2default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[15]_i_1	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[15]_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[15]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[15]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.2892default:default2

-42596.3882default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
pdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[56]pdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[56]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[54]_i_1_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[54]_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[50]_i_1_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[50]_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[46]_i_1_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[46]_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[42]_i_1_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[42]_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[38]_i_1_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[38]_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[34]_i_1_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[34]_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[30]_i_1_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[30]_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[26]_i_1_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[26]_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[22]_i_1_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[22]_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[18]_i_1_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[18]_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[14]_i_1_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745_reg[14]_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745[14]_i_5_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745[14]_i_5_n_02default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745[14]_i_5_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745[14]_i_5_n_02default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745[14]_i_5_comp	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745[14]_i_5_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[13]?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[13]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.2862default:default2

-42596.1122default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745[14]_i_4_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745[14]_i_4_n_02default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[14]?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[14]2default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[14]_i_1	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[14]_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[14]?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[14]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.2672default:default2

-42578.6672default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[27].ram.r/prim_noinit.ram/doutb[0]?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[27].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_1_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_1_n_02default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_1	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_1_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_1_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.2662default:default2

-42578.3662default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
hdesign_1_2c_2h_i/multihart_ip_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][56]_srl4_n_0hdesign_1_2c_2h_i/multihart_ip_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][56]_srl4_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][51]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][51]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][47]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][47]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][43]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][43]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][39]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][39]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][35]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][35]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][31]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][31]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][27]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][27]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][23]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][23]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][19]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][19]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][15]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][15]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_2__0_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_2__0_n_02default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[12]?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[12]2default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[12]_i_1	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[12]_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[12]?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[12]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.2602default:default2

-42570.3042default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_5_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_5_n_02default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[13]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[13]2default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[13]_i_1	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[13]_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[13]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[13]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.2532default:default2

-42566.8912default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/doutb[0]?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_4_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_4_n_02default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_4	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_42default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_4_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_4_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.2512default:default2

-42566.6042default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[28].ram.r/prim_noinit.ram/doutb[0]?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[28].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg_2?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg_22default:default2?
?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/DEVICE_7SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.TDP_SP36_NO_ECC_ATTR.ram_i_1__1_comp	?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/DEVICE_7SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.TDP_SP36_NO_ECC_ATTR.ram_i_1__1_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.2472default:default2

-42563.5632default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387[13]|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387[13]2default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387_reg[13]	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387_reg[13]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387[13]|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387[13]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.2472default:default2

-42563.0282default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387[26]|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387[26]2default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_phi_reg_pp0_iter3_w_6_reg_2387[31]_i_3_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_phi_reg_pp0_iter3_w_6_reg_2387[31]_i_3_n_02default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_phi_reg_pp0_iter3_w_6_reg_2387[31]_i_3	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_phi_reg_pp0_iter3_w_6_reg_2387[31]_i_32default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_phi_reg_pp0_iter3_w_6_reg_2387[31]_i_3_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_phi_reg_pp0_iter3_w_6_reg_2387[31]_i_3_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.2382default:default2

-42553.4602default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[22].ram.r/prim_noinit.ram/doutb[0]?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[22].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[2]_INST_0_i_1_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[2]_INST_0_i_1_n_02default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[2]_INST_0_i_1	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[2]_INST_0_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[2]_INST_0_i_1_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[2]_INST_0_i_1_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.2312default:default2

-42552.2992default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_5_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_5_n_02default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_5	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_52default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_5_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_5_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.2292default:default2

-42551.1102default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_2_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_2_n_02default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_2_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_2_n_02default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_2_comp	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_2_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/p_1474_in?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/p_1474_in2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.2262default:default2

-42557.0072default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_5_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_5_n_02default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[13]?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[13]2default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[13]_i_1	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[13]_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[13]?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[13]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.2212default:default2

-42556.6032default:defaultZ32-619h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_5_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_5_n_02default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_5_comp	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_5_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[13]?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[13]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.2172default:default2

-42553.5442default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_3_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_3_n_02default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_3_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_3_n_02default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_3_comp	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_3_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/p_1474_in?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/p_1474_in2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.2132default:default2

-42557.6622default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[58]pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[58]2default:default2?
tdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717_reg[58]	tdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717_reg[58]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[58]pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[58]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.2092default:default2

-42557.3712default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[17].ram.r/prim_noinit.ram/doutb[0]?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[17].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[2]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[2]2default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[2]_INST_0_comp	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[2]_INST_0_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_2_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_2_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1982default:default2

-42554.9882default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[14].ram.r/prim_noinit.ram/doutb[0]?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[14].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
5Processed net %s. Rewiring did not optimize the net.
134*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A2default:default8Z32-134h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A2default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A2default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_comp_1	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_comp_12default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_1_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_1_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1932default:default2

-42553.8422default:defaultZ32-619h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg_2?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg_22default:default2?
?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/DEVICE_7SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.TDP_SP36_NO_ECC_ATTR.ram_i_1__1_comp_1	?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/DEVICE_7SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.TDP_SP36_NO_ECC_ATTR.ram_i_1__1_comp_12default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_3_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_3_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1922default:default2

-42553.9182default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
|design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[23]|design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[23]2default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397_reg[23]	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397_reg[23]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
|design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[23]|design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[23]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1922default:default2

-42552.6272default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
|design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[31]|design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[31]2default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_phi_reg_pp0_iter3_w_7_reg_2397[31]_i_3_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_phi_reg_pp0_iter3_w_7_reg_2397[31]_i_3_n_02default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_phi_reg_pp0_iter3_w_7_reg_2397[31]_i_3	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_phi_reg_pp0_iter3_w_7_reg_2397[31]_i_32default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_phi_reg_pp0_iter3_w_7_reg_2397[31]_i_3_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_phi_reg_pp0_iter3_w_7_reg_2397[31]_i_3_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1842default:default2

-42544.3692default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_5_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_5_n_02default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[9]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[9]2default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[9]_i_1	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[9]_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[9]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[9]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1812default:default2

-42543.6882default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[15]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[15]2default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[15]_i_1	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[15]_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[15]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[15]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1792default:default2

-42544.1032default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[55]pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[55]2default:default2?
tdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717_reg[55]	tdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717_reg[55]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[55]pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[55]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1732default:default2

-42543.7392default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][15]_srl4_i_2_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][15]_srl4_i_2_n_02default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_V_fu_3689_p4?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_V_fu_3689_p42default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_V_reg_17672[0]_i_1	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_V_reg_17672[0]_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_V_fu_3689_p4?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_V_fu_3689_p42default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1722default:default2

-42543.5572default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_4_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_4_n_02default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_4	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_42default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_4_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_4_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1712default:default2

-42542.9032default:defaultZ32-619h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_3__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_3__0_n_02default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_3__0_comp	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_3__0_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[15]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[15]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1662default:default2

-42541.5892default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_1_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_1_n_02default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_1_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_1_n_02default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_1_comp	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_1_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/p_1474_in?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/p_1474_in2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1652default:default2

-42541.0222default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[54]pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[54]2default:default2?
tdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717_reg[54]	tdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717_reg[54]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[54]pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[54]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1612default:default2

-42540.8072default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_4_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_4_n_02default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_4	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_42default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_4_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_4_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1572default:default2

-42540.0252default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
zdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/m_from_e_load_reg_17626[13]_i_1_n_0zdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/m_from_e_load_reg_17626[13]_i_1_n_02default:default2?
vdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/m_from_e_load_reg_17626[13]_i_1	vdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/m_from_e_load_reg_17626[13]_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
zdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/m_from_e_load_reg_17626[13]_i_1_n_0zdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/m_from_e_load_reg_17626[13]_i_1_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1532default:default2

-42535.0592default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[57]pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[57]2default:default2?
tdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717_reg[57]	tdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717_reg[57]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[57]pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[57]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1502default:default2

-42534.7352default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[31]|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[31]2default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397_reg[31]	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397_reg[31]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[31]|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[31]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1472default:default2

-42534.4112default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_2__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_2__0_n_02default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_2__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_2__0_n_02default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_2__0_comp	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_2__0_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[12]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[12]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1462default:default2

-42533.1272default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[30].ram.r/prim_noinit.ram/doutb[0]?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[30].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg2default:default2?
?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/DEVICE_7SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.TDP_SP36_NO_ECC_ATTR.ram_i_1__2_comp	?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/DEVICE_7SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.TDP_SP36_NO_ECC_ATTR.ram_i_1__2_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1452default:default2

-42532.6292default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[60]pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[60]2default:default2?
tdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717_reg[60]	tdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717_reg[60]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[60]pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[60]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1422default:default2

-42532.5202default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
|design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387[23]|design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387[23]2default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387_reg[23]	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387_reg[23]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
|design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387[23]|design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387[23]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1422default:default2

-42531.0282default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
|design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387[28]|design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387[28]2default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387_reg[28]	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387_reg[28]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
|design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387[28]|design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387[28]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1422default:default2

-42530.0312default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
|design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387[31]|design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387[31]2default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387_reg[31]	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387_reg[31]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
|design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387[31]|design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_6_reg_2387[31]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1362default:default2

-42529.0602default:defaultZ32-619h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg_2?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg_22default:default2?
?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/DEVICE_7SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.TDP_SP36_NO_ECC_ATTR.ram_i_1__1_comp	?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/DEVICE_7SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.TDP_SP36_NO_ECC_ATTR.ram_i_1__1_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_1_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_1_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1352default:default2

-42528.7982default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[52]pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[52]2default:default2?
tdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717_reg[52]	tdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717_reg[52]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[52]pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[52]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1352default:default2

-42528.4632default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[14].ram.r/prim_noinit.ram/doutb[0]?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[14].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
Adesign_1_2c_2h_i/processing_system7_0/inst/FCLK_CLK_unbuffered[0]Adesign_1_2c_2h_i/processing_system7_0/inst/FCLK_CLK_unbuffered[0]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_3_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_3_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/p_1474_in?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/p_1474_in2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/f_from_d_hart_V_fu_706[0]_i_3_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/f_from_d_hart_V_fu_706[0]_i_3_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/f_from_d_hart_V_fu_706[0]_i_8_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/f_from_d_hart_V_fu_706[0]_i_8_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
xdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_to_m_address_V_1_fu_9398_p3[17]xdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_to_m_address_V_1_fu_9398_p3[17]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
odesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/result_41_fu_9310_p2[17]odesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/result_41_fu_9310_p2[17]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
ndesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_21_32_1_1_U73/D[14]ndesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_21_32_1_1_U73/D[14]2default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
}design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[14]}design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[14]2default:default2?
zdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_load_reg_18543[14]_i_1	zdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_load_reg_18543[14]_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
}design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[14]}design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[14]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1282default:default2

-42447.3732default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[28].ram.r/prim_noinit.ram/doutb[0]?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[28].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_2_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_2_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/p_1474_in?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/p_1474_in2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/f_from_d_hart_V_fu_706[0]_i_3_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/f_from_d_hart_V_fu_706[0]_i_3_n_02default:default8Z32-702h px? 
?
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12default:default2
net2default:default2
282default:default2
pins2default:defaultZ32-608h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/f_from_d_hart_V_fu_706[0]_i_8_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/f_from_d_hart_V_fu_706[0]_i_8_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1222default:default2

-42229.5672default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
hdesign_1_2c_2h_i/multihart_ip_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][60]_srl4_n_0hdesign_1_2c_2h_i/multihart_ip_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][60]_srl4_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_4_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_4_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[10]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[10]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
zdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/m_from_e_load_reg_17626[10]_i_1_n_0zdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/m_from_e_load_reg_17626[10]_i_1_n_02default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
xdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_to_m_address_V_1_fu_9398_p3[10]xdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_to_m_address_V_1_fu_9398_p3[10]2default:default2?
xdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/m_from_e_address_V_fu_850[10]_i_1	xdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/m_from_e_address_V_fu_850[10]_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
xdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_to_m_address_V_1_fu_9398_p3[10]xdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_to_m_address_V_1_fu_9398_p3[10]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1222default:default2

-42228.7922default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
}design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[14]}design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[14]2default:default8Z32-702h px? 
?
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12default:default2
net2default:default2
52default:default2
pins2default:defaultZ32-608h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
sdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/i_to_e_rv1_1_fu_13323_p3[14]sdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/i_to_e_rv1_1_fu_13323_p3[14]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1202default:default2

-42216.3182default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
mdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_21_32_1_1_U73/D[3]mdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_21_32_1_1_U73/D[3]2default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[3]|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[3]2default:default2?
ydesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_load_reg_18543[3]_i_1	ydesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_load_reg_18543[3]_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[3]|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[3]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1152default:default2

-42172.5202default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_3__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_3__0_n_02default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[11]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[11]2default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[11]_i_1	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[11]_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[11]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[11]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1152default:default2

-42168.8932default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
mdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_21_32_1_1_U73/D[9]mdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_21_32_1_1_U73/D[9]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[9]|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[9]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
rdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/i_to_e_rv1_1_fu_13323_p3[9]rdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/i_to_e_rv1_1_fu_13323_p3[9]2default:default8Z32-702h px? 
?
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12default:default2
net2default:default2
232default:default2
pins2default:defaultZ32-608h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U99/tmp_20_fu_13023_p34[9]?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U99/tmp_20_fu_13023_p34[9]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1082default:default2

-42118.4632default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
ndesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_21_32_1_1_U73/D[16]ndesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_21_32_1_1_U73/D[16]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
}design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[16]}design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[16]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
sdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/i_to_e_rv1_1_fu_13323_p3[16]sdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/i_to_e_rv1_1_fu_13323_p3[16]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U100/tmp_21_fu_13092_p34[16]?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U100/tmp_21_fu_13092_p34[16]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
ydesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U100/mux_3_3__8[16]ydesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U100/mux_3_3__8[16]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
zdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U100/mux_1_14__0[16]zdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U100/mux_1_14__0[16]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
wdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_fu_838[31]_i_47_n_0wdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_fu_838[31]_i_47_n_02default:default8Z32-702h px? 
?
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12default:default2
net2default:default2
192default:default2
pins2default:defaultZ32-608h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
xdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_fu_838[31]_i_109_n_0xdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_fu_838[31]_i_109_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.1002default:default2

-42061.4742default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
zdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U100/mux_1_15__0[16]zdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U100/mux_1_15__0[16]2default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
wdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_fu_838[31]_i_44_n_0wdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_fu_838[31]_i_44_n_02default:default2?
sdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_fu_838[31]_i_44	sdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_fu_838[31]_i_442default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
wdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_fu_838[31]_i_44_n_0wdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_fu_838[31]_i_44_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0952default:default2

-42029.3952default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U99/tmp_20_fu_13023_p34[16]?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U99/tmp_20_fu_13023_p34[16]2default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U99/e_from_i_rv1_fu_838[16]_i_3	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U99/e_from_i_rv1_fu_838[16]_i_32default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U99/tmp_20_fu_13023_p34[16]?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U99/tmp_20_fu_13023_p34[16]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0942default:default2

-41804.8732default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/f_from_d_hart_V_fu_706[0]_i_6_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/f_from_d_hart_V_fu_706[0]_i_6_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
xdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_to_m_address_V_1_fu_9398_p3[17]xdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_to_m_address_V_1_fu_9398_p3[17]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
odesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/result_41_fu_9310_p2[17]odesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/result_41_fu_9310_p2[17]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
mdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_21_32_1_1_U73/D[9]mdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_21_32_1_1_U73/D[9]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
|design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[9]|design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[9]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
rdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/i_to_e_rv1_1_fu_13323_p3[9]rdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/i_to_e_rv1_1_fu_13323_p3[9]2default:default8Z32-702h px? 
?
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12default:default2
net2default:default2
282default:default2
pins2default:defaultZ32-608h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U99/tmp_20_fu_13023_p34[9]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U99/tmp_20_fu_13023_p34[9]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0792default:default2

-41708.0342default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
ndesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_21_32_1_1_U73/D[11]ndesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_21_32_1_1_U73/D[11]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
}design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[11]}design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[11]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
sdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/i_to_e_rv1_1_fu_13323_p3[11]sdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/i_to_e_rv1_1_fu_13323_p3[11]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U99/tmp_20_fu_13023_p34[11]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U99/tmp_20_fu_13023_p34[11]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
xdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U99/mux_3_3__7[11]xdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U99/mux_3_3__7[11]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
vdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U99/mux_1_15[11]vdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U99/mux_1_15[11]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
wdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_fu_838[31]_i_77_n_0wdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_fu_838[31]_i_77_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
vdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/reg_file_19_fu_1354[31]_i_8_n_0vdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/reg_file_19_fu_1354[31]_i_8_n_02default:default8Z32-702h px? 
?
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12default:default2
net2default:default2
222default:default2
pins2default:defaultZ32-608h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0752default:default2

-41706.1712default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/doutb[0]?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_4_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_4_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_7_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_7_n_02default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[0]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[0]2default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[0]_INST_0	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[0]_INST_02default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[0]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[0]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0642default:default2

-41706.2912default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/doutb[0]?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_5_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_5_n_02default:default8Z32-702h px? 
?
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12default:default2
net2default:default2
272default:default2
pins2default:defaultZ32-608h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg_0?design_1_2c_2h_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0602default:default2

-41705.3022default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
vdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/reg_file_19_fu_1354[31]_i_8_n_0vdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/reg_file_19_fu_1354[31]_i_8_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg_1?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg_12default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
ndesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_enable_reg_pp0_iter3ndesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_enable_reg_pp0_iter32default:default8Z32-702h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0602default:default2

-41705.3022default:defaultZ32-619h px? 
N
9Phase 3 Critical Path Optimization | Checksum: 14799b525
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:20 ; elapsed = 00:00:22 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 5256 ; free virtual = 124732default:defaulth px? 
{

Phase %s%s
101*constraints2
4 2default:default2.
Critical Path Optimization2default:defaultZ18-101h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0602default:default2

-41705.3022default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[14].ram.r/prim_noinit.ram/doutb[0]?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[14].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
Adesign_1_2c_2h_i/processing_system7_0/inst/FCLK_CLK_unbuffered[0]Adesign_1_2c_2h_i/processing_system7_0/inst/FCLK_CLK_unbuffered[0]2default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg_1?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg_12default:default2?
?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/DEVICE_7SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.TDP_SP36_NO_ECC_ATTR.ram_i_1__0_comp	?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/DEVICE_7SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.TDP_SP36_NO_ECC_ATTR.ram_i_1__0_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0552default:default2

-41702.9992default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_3_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_3_n_02default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_3_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_3_n_02default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_3_comp	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_WEN_A[3]_INST_0_i_3_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/p_1474_in?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/p_1474_in2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0542default:default2

-41706.2112default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
hdesign_1_2c_2h_i/multihart_ip_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][60]_srl4_n_0hdesign_1_2c_2h_i/multihart_ip_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][60]_srl4_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][55]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][55]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][51]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][51]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][47]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][47]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][43]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][43]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][39]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][39]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][35]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][35]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][31]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][31]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][27]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][27]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][23]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][23]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][19]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][19]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][15]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][15]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][11]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_4_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_4_n_02default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_4_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_4_n_02default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_4_comp	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][7]_srl4_i_4_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[10]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[10]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0492default:default2

-41705.5532default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[51]pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[51]2default:default2?
tdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717_reg[51]	tdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717_reg[51]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[51]pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[51]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0442default:default2

-41705.1822default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[30].ram.r/prim_noinit.ram/doutb[0]?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[30].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
5Processed net %s. Rewiring did not optimize the net.
134*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A2default:default8Z32-134h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A2default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A2default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_comp_3	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_comp_32default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_3_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_3_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0442default:default2

-41711.7302default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[29].ram.r/prim_noinit.ram/doutb[0]?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[29].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg_2?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg_22default:default2?
?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/DEVICE_7SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.TDP_SP36_NO_ECC_ATTR.ram_i_1__1_comp_2	?design_1_2c_2h_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[31].ram.r/prim_noinit.ram/DEVICE_7SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.TDP_SP36_NO_ECC_ATTR.ram_i_1__1_comp_22default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_2_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_data_ram_EN_A_INST_0_i_2_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0412default:default2

-41711.4792default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][3]_srl4_i_1__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][3]_srl4_i_1__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][0]_srl4_i_2__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][0]_srl4_i_2__0_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][0]_srl4_i_5__0_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][0]_srl4_i_5__0_n_02default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[2]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[2]2default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[2]_i_1	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[2]_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[2]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[2]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0392default:default2

-41709.9252default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[10]|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[10]2default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397_reg[10]	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397_reg[10]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[10]|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[10]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0392default:default2

-41709.7472default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[11]|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[11]2default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397_reg[11]	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397_reg[11]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[11]|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[11]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0392default:default2

-41709.5692default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[13]|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[13]2default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397_reg[13]	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397_reg[13]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[13]|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[13]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0392default:default2

-41709.3912default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
{design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[9]{design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[9]2default:default2?
design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397_reg[9]	design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397_reg[9]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
{design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[9]{design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[9]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0372default:default2

-41709.2122default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[10]|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter3_w_7_reg_2397[10]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
Adesign_1_2c_2h_i/processing_system7_0/inst/FCLK_CLK_unbuffered[0]Adesign_1_2c_2h_i/processing_system7_0/inst/FCLK_CLK_unbuffered[0]2default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_phi_reg_pp0_iter3_w_7_reg_2397[31]_i_3_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_phi_reg_pp0_iter3_w_7_reg_2397[31]_i_3_n_02default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_phi_reg_pp0_iter3_w_7_reg_2397[31]_i_3	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_phi_reg_pp0_iter3_w_7_reg_2397[31]_i_32default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_phi_reg_pp0_iter3_w_7_reg_2397[31]_i_3_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_phi_reg_pp0_iter3_w_7_reg_2397[31]_i_3_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0372default:default2

-41701.0232default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[50]pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[50]2default:default2?
tdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717_reg[50]	tdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717_reg[50]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[50]pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[50]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0352default:default2

-41700.9722default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
hdesign_1_2c_2h_i/multihart_ip_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][60]_srl4_n_0hdesign_1_2c_2h_i/multihart_ip_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][60]_srl4_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][15]_srl4_i_2_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg[3][15]_srl4_i_2_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_V_fu_3689_p4?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_V_fu_3689_p42default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_V_fu_3689_p2?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ip_V_fu_3689_p22default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
hdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/tmp_42_fu_3361_p3hdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/tmp_42_fu_3361_p32default:default2?
vdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/m_from_e_load_reg_17626[16]_i_1	vdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/m_from_e_load_reg_17626[16]_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
hdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/tmp_42_fu_3361_p3hdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/tmp_42_fu_3361_p32default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0322default:default2

-41699.4302default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
Kdesign_1_2c_2h_i/multihart_ip_0/inst/control_s_axi_U/int_ip_code_ram/q0[29]Kdesign_1_2c_2h_i/multihart_ip_0/inst/control_s_axi_U/int_ip_code_ram/q0[29]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/f_from_d_hart_V_fu_706[0]_i_3_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/f_from_d_hart_V_fu_706[0]_i_3_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/f_from_d_hart_V_fu_706[0]_i_8_n_0?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/f_from_d_hart_V_fu_706[0]_i_8_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
xdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_to_m_address_V_1_fu_9398_p3[17]xdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_to_m_address_V_1_fu_9398_p3[17]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
odesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/result_41_fu_9310_p2[17]odesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/result_41_fu_9310_p2[17]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
ndesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_21_32_1_1_U73/D[16]ndesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_21_32_1_1_U73/D[16]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
}design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[16]}design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[16]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
sdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/i_to_e_rv1_1_fu_13323_p3[16]sdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/i_to_e_rv1_1_fu_13323_p3[16]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U100/tmp_21_fu_13092_p34[16]?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U100/tmp_21_fu_13092_p34[16]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
ydesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U100/mux_3_3__8[16]ydesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U100/mux_3_3__8[16]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
zdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U100/mux_1_14__0[16]zdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U100/mux_1_14__0[16]2default:default8Z32-702h px? 
?
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12default:default2
net2default:default2
202default:default2
pins2default:defaultZ32-608h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
wdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_fu_838[31]_i_47_n_0wdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_fu_838[31]_i_47_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0272default:default2

-41667.3542default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
mdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_21_32_1_1_U73/D[1]mdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_21_32_1_1_U73/D[1]2default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[1]|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[1]2default:default2?
ydesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_load_reg_18543[1]_i_1	ydesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_load_reg_18543[1]_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[1]|design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[1]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0262default:default2

-41651.2782default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
ndesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_21_32_1_1_U73/D[15]ndesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_21_32_1_1_U73/D[15]2default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
}design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[15]}design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[15]2default:default2?
zdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_load_reg_18543[15]_i_1	zdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_load_reg_18543[15]_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
}design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[15]}design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_sig_allocacmp_e_from_i_rv1_load[15]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0252default:default2

-41644.7442default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[53]pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[53]2default:default2?
tdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717_reg[53]	tdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717_reg[53]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[53]pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[53]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0252default:default2

-41644.5692default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
zdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U100/mux_1_15__0[16]zdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/mux_325_32_1_1_U100/mux_1_15__0[16]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
wdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_fu_838[31]_i_45_n_0wdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/e_from_i_rv1_fu_838[31]_i_45_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
vdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/reg_file_19_fu_1354[31]_i_8_n_0vdesign_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/reg_file_19_fu_1354[31]_i_8_n_02default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_enable_reg_pp0_iter1_reg_3?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_enable_reg_pp0_iter1_reg_32default:default2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg_3_0_5_i_2	?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/mem_reg_3_0_5_i_22default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_enable_reg_pp0_iter1_reg_3?design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/ap_enable_reg_pp0_iter1_reg_32default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0212default:default2

-41644.2272default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[60]pdesign_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/gmem_addr_7_reg_18717[60]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745[14]_i_3_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745[14]_i_3_n_02default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[15]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[15]2default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[15]_i_1	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[15]_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[15]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[15]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0202default:default2

-41643.8742default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745[14]_i_4_n_0?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/gmem_addr_4_reg_18745[14]_i_4_n_02default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[14]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[14]2default:default2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[14]_i_1	?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/a_reg_17720[14]_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[14]?design_1_2c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/flow_control_loop_pipe_sequential_init_U/m_state_address_0_0882_fu_978_reg[14]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0202default:default2

-41644.8382default:defaultZ32-619h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.0202default:default2

-41644.8382default:defaultZ32-619h px? 
N
9Phase 4 Critical Path Optimization | Checksum: 14799b525
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:49 ; elapsed = 00:00:29 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 5227 ; free virtual = 124332default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.092default:default2
00:00:00.082default:default2
4002.8122default:default2
0.0002default:default2
52272default:default2
124332default:defaultZ17-722h px? 
?
>Post Physical Optimization Timing Summary | WNS=%s | TNS=%s |
318*physynth2
-5.0202default:default2

-41644.8382default:defaultZ32-603h px? 
B
-
Summary of Physical Synthesis Optimizations
*commonh px? 
B
-============================================
*commonh px? 


*commonh px? 


*commonh px? 
?
?-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization   |  WNS Gain (ns)  |  TNS Gain (ns)  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  DSP Register   |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Critical Path  |          0.385  |        965.203  |            0  |              0  |                    81  |           0  |           2  |  00:00:27  |
|  Total          |          0.385  |        965.203  |            0  |              0  |                    81  |           0  |           3  |  00:00:27  |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
4002.8122default:default2
0.0002default:default2
52272default:default2
124332default:defaultZ17-722h px? 
J
5Ending Physical Synthesis Task | Checksum: 1c90faa94
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:49 ; elapsed = 00:00:30 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 5218 ; free virtual = 124232default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
5912default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
phys_opt_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2%
phys_opt_design: 2default:default2
00:02:012default:default2
00:00:332default:default2
4002.8122default:default2
0.0002default:default2
52342default:default2
124392default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:042default:default2
00:00:022default:default2
4002.8122default:default2
0.0002default:default2
51832default:default2
124432default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multihart_ip/z1_multicore_multihart_2c_2h_ip.runs/impl_1/design_1_2c_2h_wrapper_physopt.dcp2default:defaultZ17-1381h px? 


End Record