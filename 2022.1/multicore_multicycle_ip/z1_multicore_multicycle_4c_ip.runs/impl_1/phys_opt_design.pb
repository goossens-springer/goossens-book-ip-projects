
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
13.282default:default2
3.472default:defaultZ4-1435h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
4064.4962default:default2
0.0002default:default2
27202default:default2
112882default:defaultZ17-722h px? 
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
-2.5562default:default2

-16159.1452default:defaultZ32-619h px? 
U
@Phase 1 Physical Synthesis Initialization | Checksum: 14b70df41
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:06 ; elapsed = 00:00:03 . Memory (MB): peak = 4064.496 ; gain = 0.000 ; free physical = 2657 ; free virtual = 112352default:defaulth px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.5562default:default2

-16159.1452default:defaultZ32-619h px? 
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
8Phase 2 DSP Register Optimization | Checksum: 14b70df41
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:06 ; elapsed = 00:00:03 . Memory (MB): peak = 4064.496 ; gain = 0.000 ; free physical = 2657 ; free virtual = 112352default:defaulth px? 
{

Phase %s%s
101*constraints2
3 2default:default2.
Critical Path Optimization2default:defaultZ18-101h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.5562default:default2

-16159.1452default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_4c_i/blk_mem_gen_3/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[3].ram.r/prim_noinit.ram/doutb[0]?design_1_4c_i/blk_mem_gen_3/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[3].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
>design_1_4c_i/processing_system7_0/inst/FCLK_CLK_unbuffered[0]>design_1_4c_i/processing_system7_0/inst/FCLK_CLK_unbuffered[0]2default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
^design_1_4c_i/multicycle_pipeline_3/inst/gmem_m_axi_U/load_unit/fifo_rreq/ip_data_ram_WEN_A[0]^design_1_4c_i/multicycle_pipeline_3/inst/gmem_m_axi_U/load_unit/fifo_rreq/ip_data_ram_WEN_A[0]2default:default2?
jdesign_1_4c_i/multicycle_pipeline_3/inst/gmem_m_axi_U/load_unit/fifo_rreq/ip_data_ram_WEN_A[0]_INST_0_comp	jdesign_1_4c_i/multicycle_pipeline_3/inst/gmem_m_axi_U/load_unit/fifo_rreq/ip_data_ram_WEN_A[0]_INST_0_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
mdesign_1_4c_i/multicycle_pipeline_3/inst/gmem_m_axi_U/load_unit/fifo_rreq/ip_data_ram_WEN_A[3]_INST_0_i_1_n_0mdesign_1_4c_i/multicycle_pipeline_3/inst/gmem_m_axi_U/load_unit/fifo_rreq/ip_data_ram_WEN_A[3]_INST_0_i_1_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.5372default:default2

-16158.0232default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
ldesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][60]_srl4_n_0ldesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][60]_srl4_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][55]_srl4_i_1_n_0pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][55]_srl4_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][51]_srl4_i_1_n_0pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][51]_srl4_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][47]_srl4_i_1_n_0pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][47]_srl4_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][43]_srl4_i_1_n_0pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][43]_srl4_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][39]_srl4_i_1_n_0pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][39]_srl4_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][35]_srl4_i_1_n_0pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][35]_srl4_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][31]_srl4_i_1_n_0pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][31]_srl4_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][27]_srl4_i_1_n_0pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][27]_srl4_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][23]_srl4_i_1_n_0pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][23]_srl4_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][19]_srl4_i_1_n_0pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][19]_srl4_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][15]_srl4_i_1_n_0pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][15]_srl4_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][15]_srl4_i_2_n_0pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][15]_srl4_i_2_n_02default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][15]_srl4_i_2_n_0pdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][15]_srl4_i_2_n_02default:default2?
qdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][15]_srl4_i_2_comp	qdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/mem_reg[3][15]_srl4_i_2_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
qdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/accessed_ip_V_fu_11496_p2[0]qdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/accessed_ip_V_fu_11496_p2[0]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.5182default:default2

-16157.9862default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
vdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/accessed_ip_V_fu_11496_p2[0]_repNvdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/accessed_ip_V_fu_11496_p2[0]_repN2default:default2?
xdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/accessed_ip_V_reg_18885[1]_i_2_comp	xdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/accessed_ip_V_reg_18885[1]_i_2_comp2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
vdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/accessed_ip_V_fu_11496_p2[0]_repNvdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/U_fifo_srl/accessed_ip_V_fu_11496_p2[0]_repN2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.5062default:default2

-16152.2712default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
Fdesign_1_4c_i/multicycle_pipeline_0/inst/is_reg_computed_24_7_reg_8469Fdesign_1_4c_i/multicycle_pipeline_0/inst/is_reg_computed_24_7_reg_84692default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
sdesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/store_unit/fifo_wreq/is_reg_computed_24_7_reg_8469[0]_i_3_n_0sdesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/store_unit/fifo_wreq/is_reg_computed_24_7_reg_8469[0]_i_3_n_02default:default2?
odesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/store_unit/fifo_wreq/is_reg_computed_24_7_reg_8469[0]_i_3	odesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/store_unit/fifo_wreq/is_reg_computed_24_7_reg_8469[0]_i_32default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
sdesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/store_unit/fifo_wreq/is_reg_computed_24_7_reg_8469[0]_i_3_n_0sdesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/store_unit/fifo_wreq/is_reg_computed_24_7_reg_8469[0]_i_3_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.5022default:default2

-16152.0292default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[13]Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[13]2default:default2?
Idesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428_reg[13]	Idesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428_reg[13]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[13]Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[13]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4932default:default2

-16151.7092default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_27_fu_444[2]Ddesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_27_fu_444[2]2default:default2?
Hdesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_27_fu_444_reg[2]	Hdesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_27_fu_444_reg[2]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_27_fu_444[2]Ddesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_27_fu_444[2]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4912default:default2

-16151.3092default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[3]Ddesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[3]2default:default2?
Hdesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428_reg[3]	Hdesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428_reg[3]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[3]Ddesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[3]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4872default:default2

-16151.1872default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_27_fu_444[3]Ddesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_27_fu_444[3]2default:default2?
Hdesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_27_fu_444_reg[3]	Hdesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_27_fu_444_reg[3]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_27_fu_444[3]Ddesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_27_fu_444[3]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4862default:default2

-16150.8312default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[22]Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[22]2default:default2?
Idesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428_reg[22]	Idesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428_reg[22]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[22]Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[22]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4862default:default2

-16150.6542default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[18]Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[18]2default:default2?
Idesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428_reg[18]	Idesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428_reg[18]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[18]Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[18]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4802default:default2

-16150.4182default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Edesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_15_fu_396[24]Edesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_15_fu_396[24]2default:default2?
Idesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_15_fu_396_reg[24]	Idesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_15_fu_396_reg[24]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Edesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_15_fu_396[24]Edesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_15_fu_396[24]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4792default:default2

-16150.2322default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[2]Ddesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[2]2default:default2?
Hdesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428_reg[2]	Hdesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428_reg[2]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[2]Ddesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[2]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4762default:default2

-16150.0302default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_25_fu_436[2]Ddesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_25_fu_436[2]2default:default2?
Hdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_25_fu_436_reg[2]	Hdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_25_fu_436_reg[2]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_25_fu_436[2]Ddesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_25_fu_436[2]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4752default:default2

-16149.1702default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_25_fu_436[27]Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_25_fu_436[27]2default:default2?
Idesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_25_fu_436_reg[27]	Idesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_25_fu_436_reg[27]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_25_fu_436[27]Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_25_fu_436[27]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4722default:default2

-16148.9842default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[6]Ddesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_23_fu_428[6]2default:default8Z32-702h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
ndesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/w_from_m_value_23_fu_428[31]_i_3_n_0ndesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/w_from_m_value_23_fu_428[31]_i_3_n_02default:default2
12default:default8Z32-81h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
ndesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/w_from_m_value_23_fu_428[31]_i_3_n_0ndesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/w_from_m_value_23_fu_428[31]_i_3_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4702default:default2

-16143.9822default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_29_fu_452[3]Ddesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_29_fu_452[3]2default:default2?
Hdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_29_fu_452_reg[3]	Hdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_29_fu_452_reg[3]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_29_fu_452[3]Ddesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_29_fu_452[3]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4702default:default2

-16143.5752default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_29_fu_452[6]Ddesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_29_fu_452[6]2default:default2?
Hdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_29_fu_452_reg[6]	Hdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_29_fu_452_reg[6]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_29_fu_452[6]Ddesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_29_fu_452[6]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4692default:default2

-16143.2042default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_31_fu_460[7]Ddesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_31_fu_460[7]2default:default2?
Hdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_31_fu_460_reg[7]	Hdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_31_fu_460_reg[7]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_31_fu_460[7]Ddesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_31_fu_460[7]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4692default:default2

-16143.1512default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_4c_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[15].ram.r/prim_noinit.ram/doutb[0]?design_1_4c_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[15].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
>design_1_4c_i/processing_system7_0/inst/FCLK_CLK_unbuffered[0]>design_1_4c_i/processing_system7_0/inst/FCLK_CLK_unbuffered[0]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
mdesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/ip_data_ram_WEN_A[3]_INST_0_i_1_n_0mdesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/ip_data_ram_WEN_A[3]_INST_0_i_1_n_02default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
kdesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/m_to_w_is_load_V_reg_18864_reg[0]kdesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/m_to_w_is_load_V_reg_18864_reg[0]2default:default2?
adesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/r_V_9_reg_19262[13]_i_1	adesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/r_V_9_reg_19262[13]_i_12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
kdesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/m_to_w_is_load_V_reg_18864_reg[0]kdesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/m_to_w_is_load_V_reg_18864_reg[0]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4682default:default2

-16135.3672default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_27_fu_444[6]Ddesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_27_fu_444[6]2default:default2?
Hdesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_27_fu_444_reg[6]	Hdesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_27_fu_444_reg[6]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_27_fu_444[6]Ddesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_27_fu_444[6]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4682default:default2

-16134.7982default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Cdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_7_fu_364[6]Cdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_7_fu_364[6]2default:default2?
Gdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_7_fu_364_reg[6]	Gdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_7_fu_364_reg[6]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Cdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_7_fu_364[6]Cdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_7_fu_364[6]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4652default:default2

-16134.0182default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Bdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336[10]Bdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336[10]2default:default2?
Fdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336_reg[10]	Fdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336_reg[10]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Bdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336[10]Bdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336[10]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4652default:default2

-16133.1462default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Bdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336[11]Bdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336[11]2default:default2?
Fdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336_reg[11]	Fdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336_reg[11]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Bdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336[11]Bdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336[11]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4642default:default2

-16132.6592default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Adesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336[2]Adesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336[2]2default:default2?
Edesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336_reg[2]	Edesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336_reg[2]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Adesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336[2]Adesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336[2]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4632default:default2

-16131.9882default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Adesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336[3]Adesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336[3]2default:default2?
Edesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336_reg[3]	Edesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336_reg[3]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Adesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336[3]Adesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336[3]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4632default:default2

-16131.9222default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_17_fu_404[18]Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_17_fu_404[18]2default:default2?
Idesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_17_fu_404_reg[18]	Idesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_17_fu_404_reg[18]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_17_fu_404[18]Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_17_fu_404[18]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4572default:default2

-16131.7732default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Edesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_31_fu_460[22]Edesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_31_fu_460[22]2default:default2?
Idesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_31_fu_460_reg[22]	Idesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_31_fu_460_reg[22]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Edesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_31_fu_460[22]Edesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_31_fu_460[22]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4552default:default2

-16131.6202default:defaultZ32-619h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4552default:default2

-16131.6202default:defaultZ32-619h px? 
N
9Phase 3 Critical Path Optimization | Checksum: 14b70df41
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:16 ; elapsed = 00:00:05 . Memory (MB): peak = 4064.496 ; gain = 0.000 ; free physical = 2655 ; free virtual = 112302default:defaulth px? 
{

Phase %s%s
101*constraints2
4 2default:default2.
Critical Path Optimization2default:defaultZ18-101h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4552default:default2

-16131.6202default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Edesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_13_fu_388[26]Edesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_13_fu_388[26]2default:default2?
Idesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_13_fu_388_reg[26]	Idesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_13_fu_388_reg[26]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Edesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_13_fu_388[26]Edesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_13_fu_388[26]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4552default:default2

-16131.2912default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_25_fu_436[18]Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_25_fu_436[18]2default:default2?
Idesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_25_fu_436_reg[18]	Idesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_25_fu_436_reg[18]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_25_fu_436[18]Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_25_fu_436[18]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4552default:default2

-16131.2802default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_25_fu_436[20]Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_25_fu_436[20]2default:default2?
Idesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_25_fu_436_reg[20]	Idesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_25_fu_436_reg[20]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_25_fu_436[20]Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_25_fu_436[20]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4502default:default2

-16130.7342default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Edesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_27_fu_444[26]Edesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_27_fu_444[26]2default:default2?
Idesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_27_fu_444_reg[26]	Idesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_27_fu_444_reg[26]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Edesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_27_fu_444[26]Edesign_1_4c_i/multicycle_pipeline_2/inst/w_from_m_value_27_fu_444[26]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4462default:default2

-16130.3582default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
Adesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336[3]Adesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_fu_336[3]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
>design_1_4c_i/processing_system7_0/inst/FCLK_CLK_unbuffered[0]>design_1_4c_i/processing_system7_0/inst/FCLK_CLK_unbuffered[0]2default:default8Z32-702h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
kdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/w_from_m_value_fu_336[31]_i_3_n_0kdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/w_from_m_value_fu_336[31]_i_3_n_02default:default2
12default:default8Z32-81h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
kdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/w_from_m_value_fu_336[31]_i_3_n_0kdesign_1_4c_i/multicycle_pipeline_1/inst/gmem_m_axi_U/load_unit/fifo_rreq/w_from_m_value_fu_336[31]_i_3_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4442default:default2

-16118.1002default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_25_fu_436[25]Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_25_fu_436[25]2default:default8Z32-702h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
ndesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/w_from_m_value_25_fu_436[31]_i_3_n_0ndesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/w_from_m_value_25_fu_436[31]_i_3_n_02default:default2
12default:default8Z32-81h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
ndesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/w_from_m_value_25_fu_436[31]_i_3_n_0ndesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/w_from_m_value_25_fu_436[31]_i_3_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4442default:default2

-16115.8102default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_4c_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[15].ram.r/prim_noinit.ram/doutb[0]?design_1_4c_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[15].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
^design_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/ip_data_ram_WEN_A[3]^design_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/ip_data_ram_WEN_A[3]2default:default2?
jdesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/ip_data_ram_WEN_A[3]_INST_0_comp	jdesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/ip_data_ram_WEN_A[3]_INST_0_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
mdesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/ip_data_ram_WEN_A[3]_INST_0_i_1_n_0mdesign_1_4c_i/multicycle_pipeline_0/inst/gmem_m_axi_U/load_unit/fifo_rreq/ip_data_ram_WEN_A[3]_INST_0_i_1_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4422default:default2

-16114.6512default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Cdesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_9_fu_372[5]Cdesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_9_fu_372[5]2default:default2?
Gdesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_9_fu_372_reg[5]	Gdesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_9_fu_372_reg[5]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Cdesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_9_fu_372[5]Cdesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_9_fu_372[5]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4382default:default2

-16114.0942default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Edesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_17_fu_404[26]Edesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_17_fu_404[26]2default:default2?
Idesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_17_fu_404_reg[26]	Idesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_17_fu_404_reg[26]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Edesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_17_fu_404[26]Edesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_17_fu_404[26]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4372default:default2

-16113.6582default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Edesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_17_fu_404[27]Edesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_17_fu_404[27]2default:default2?
Idesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_17_fu_404_reg[27]	Idesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_17_fu_404_reg[27]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Edesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_17_fu_404[27]Edesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_17_fu_404[27]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4362default:default2

-16113.2342default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Cdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_7_fu_364[3]Cdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_7_fu_364[3]2default:default2?
Gdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_7_fu_364_reg[3]	Gdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_7_fu_364_reg[3]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Cdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_7_fu_364[3]Cdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_7_fu_364[3]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4362default:default2

-16113.1302default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Cdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_7_fu_364[9]Cdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_7_fu_364[9]2default:default2?
Gdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_7_fu_364_reg[9]	Gdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_7_fu_364_reg[9]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Cdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_7_fu_364[9]Cdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_7_fu_364[9]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4352default:default2

-16113.0882default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Cdesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_9_fu_372[1]Cdesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_9_fu_372[1]2default:default2?
Gdesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_9_fu_372_reg[1]	Gdesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_9_fu_372_reg[1]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Cdesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_9_fu_372[1]Cdesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_9_fu_372[1]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4302default:default2

-16112.3552default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_31_fu_460[22]Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_31_fu_460[22]2default:default2?
Idesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_31_fu_460_reg[22]	Idesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_31_fu_460_reg[22]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_31_fu_460[22]Edesign_1_4c_i/multicycle_pipeline_0/inst/w_from_m_value_31_fu_460[22]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4302default:default2

-16112.4522default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Edesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_13_fu_388[21]Edesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_13_fu_388[21]2default:default2?
Idesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_13_fu_388_reg[21]	Idesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_13_fu_388_reg[21]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Edesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_13_fu_388[21]Edesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_13_fu_388[21]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4302default:default2

-16112.0192default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Edesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_13_fu_388[30]Edesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_13_fu_388[30]2default:default2?
Idesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_13_fu_388_reg[30]	Idesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_13_fu_388_reg[30]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Edesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_13_fu_388[30]Edesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_13_fu_388[30]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4272default:default2

-16111.6442default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Cdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_5_fu_356[6]Cdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_5_fu_356[6]2default:default2?
Gdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_5_fu_356_reg[6]	Gdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_5_fu_356_reg[6]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Cdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_5_fu_356[6]Cdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_5_fu_356[6]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4242default:default2

-16111.4642default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_27_fu_444[3]Ddesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_27_fu_444[3]2default:default2?
Hdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_27_fu_444_reg[3]	Hdesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_27_fu_444_reg[3]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_27_fu_444[3]Ddesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_27_fu_444[3]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4232default:default2

-16111.5552default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
Ddesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_31_fu_460[2]Ddesign_1_4c_i/multicycle_pipeline_3/inst/w_from_m_value_31_fu_460[2]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
>design_1_4c_i/processing_system7_0/inst/FCLK_CLK_unbuffered[0]>design_1_4c_i/processing_system7_0/inst/FCLK_CLK_unbuffered[0]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
ndesign_1_4c_i/multicycle_pipeline_3/inst/gmem_m_axi_U/load_unit/fifo_rreq/w_from_m_value_31_fu_460[31]_i_3_n_0ndesign_1_4c_i/multicycle_pipeline_3/inst/gmem_m_axi_U/load_unit/fifo_rreq/w_from_m_value_31_fu_460[31]_i_3_n_02default:default8Z32-702h px? 
?
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12default:default2
net2default:default2
212default:default2
pins2default:defaultZ32-608h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
ndesign_1_4c_i/multicycle_pipeline_3/inst/gmem_m_axi_U/load_unit/fifo_rreq/w_from_m_value_19_fu_412[31]_i_3_n_0ndesign_1_4c_i/multicycle_pipeline_3/inst/gmem_m_axi_U/load_unit/fifo_rreq/w_from_m_value_19_fu_412[31]_i_3_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4222default:default2

-15924.3552default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
Edesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_27_fu_444[11]Edesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_27_fu_444[11]2default:default2?
Idesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_27_fu_444_reg[11]	Idesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_27_fu_444_reg[11]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
Edesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_27_fu_444[11]Edesign_1_4c_i/multicycle_pipeline_1/inst/w_from_m_value_27_fu_444[11]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4222default:default2

-15923.5842default:defaultZ32-619h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.4222default:default2

-15923.5842default:defaultZ32-619h px? 
N
9Phase 4 Critical Path Optimization | Checksum: 14b70df41
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:24 ; elapsed = 00:00:07 . Memory (MB): peak = 4064.496 ; gain = 0.000 ; free physical = 2652 ; free virtual = 112262default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.022default:default2
00:00:00.022default:default2
4064.4962default:default2
0.0002default:default2
26532default:default2
112272default:defaultZ17-722h px? 
?
>Post Physical Optimization Timing Summary | WNS=%s | TNS=%s |
318*physynth2
-2.4222default:default2

-15923.5842default:defaultZ32-603h px? 
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
|  Critical Path  |          0.134  |        235.561  |            3  |              0  |                    47  |           0  |           2  |  00:00:05  |
|  Total          |          0.134  |        235.561  |            3  |              0  |                    47  |           0  |           3  |  00:00:05  |
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
00:00:002default:default2
00:00:00.012default:default2
4064.4962default:default2
0.0002default:default2
26532default:default2
112282default:defaultZ17-722h px? 
J
5Ending Physical Synthesis Task | Checksum: 12b70ef82
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:24 ; elapsed = 00:00:08 . Memory (MB): peak = 4064.496 ; gain = 0.000 ; free physical = 2655 ; free virtual = 112292default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
3032default:default2
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
00:00:372default:default2
00:00:112default:default2
4064.4962default:default2
0.0002default:default2
26762default:default2
112512default:defaultZ17-722h px? 
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
00:00:052default:default2
00:00:022default:default2
4064.4962default:default2
0.0002default:default2
26252default:default2
112602default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_4c_ip.runs/impl_1/design_1_4c_wrapper_physopt.dcp2default:defaultZ17-1381h px? 


End Record