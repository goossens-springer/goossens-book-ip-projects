
>
Refreshing IP repositories
234*coregenZ19-234h px? 
?
 Loaded user IP repository '%s'.
1135*coregen2J
6/home/bernard/book/new_book_ip/multicore_multicycle_ip2default:defaultZ19-1700h px? 
?
 Loaded user IP repository '%s'.
1135*coregen2E
1/home/bernard/Xilinx/Vivado/2021.2/vivado-library2default:defaultZ19-1700h px? 
?
"Loaded Vivado IP repository '%s'.
1332*coregen2>
*/home/bernard/Xilinx/Vivado/2021.2/data/ip2default:defaultZ19-2313h px? 
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental /home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.srcs/utils_1/imports/synth_1/design_1_multicore_multicycle_wrapper.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.srcs/utils_1/imports/synth_1/design_1_multicore_multicycle_wrapper.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
?
Command: %s
53*	vivadotcl2a
Msynth_design -top design_1_multicore_multicycle_wrapper -part xc7z020clg400-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7z020clg400-12default:defaultZ21-403h px? 
?
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
305802default:defaultZ8-7075h px? 
?
%s*synth2?
?Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2779.715 ; gain = 0.000 ; free physical = 5952 ; free virtual = 46644
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys29
%design_1_multicore_multicycle_wrapper2default:default2
 2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/hdl/design_1_multicore_multicycle_wrapper.v2default:default2
122default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys21
design_1_multicore_multicycle2default:default2
 2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
132default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2C
/design_1_multicore_multicycle_axi_bram_ctrl_0_02default:default2
 2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/.Xil/Vivado-30539-bernard-Precision-5530/realtime/design_1_multicore_multicycle_axi_bram_ctrl_0_0_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2C
/design_1_multicore_multicycle_axi_bram_ctrl_0_02default:default2
 2default:default2
12default:default2
12default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/.Xil/Vivado-30539-bernard-Precision-5530/realtime/design_1_multicore_multicycle_axi_bram_ctrl_0_0_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:default2
 2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
6402default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2+
m00_couplers_imp_HVYB1Y2default:default2
 2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
16812default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m00_couplers_imp_HVYB1Y2default:default2
 2default:default2
22default:default2
12default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
16812default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
m01_couplers_imp_45S6HR2default:default2
 2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
18132default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m01_couplers_imp_45S6HR2default:default2
 2default:default2
32default:default2
12default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
18132default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
m02_couplers_imp_1PFHBMS2default:default2
 2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
19592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m02_couplers_imp_1PFHBMS2default:default2
 2default:default2
42default:default2
12default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
19592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
m03_couplers_imp_151KZ2L2default:default2
 2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
20912default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m03_couplers_imp_151KZ2L2default:default2
 2default:default2
52default:default2
12default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
20912default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
s00_couplers_imp_BOMAG72default:default2
 2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
22232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2;
'design_1_multicore_multicycle_auto_pc_02default:default2
 2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/.Xil/Vivado-30539-bernard-Precision-5530/realtime/design_1_multicore_multicycle_auto_pc_0_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2;
'design_1_multicore_multicycle_auto_pc_02default:default2
 2default:default2
62default:default2
12default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/.Xil/Vivado-30539-bernard-Precision-5530/realtime/design_1_multicore_multicycle_auto_pc_0_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
s00_couplers_imp_BOMAG72default:default2
 2default:default2
72default:default2
12default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
22232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
s01_couplers_imp_RWOQTQ2default:default2
 2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
25132default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2;
'design_1_multicore_multicycle_auto_pc_12default:default2
 2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/.Xil/Vivado-30539-bernard-Precision-5530/realtime/design_1_multicore_multicycle_auto_pc_1_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2;
'design_1_multicore_multicycle_auto_pc_12default:default2
 2default:default2
82default:default2
12default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/.Xil/Vivado-30539-bernard-Precision-5530/realtime/design_1_multicore_multicycle_auto_pc_1_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
s01_couplers_imp_RWOQTQ2default:default2
 2default:default2
92default:default2
12default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
25132default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys28
$design_1_multicore_multicycle_xbar_02default:default2
 2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/.Xil/Vivado-30539-bernard-Precision-5530/realtime/design_1_multicore_multicycle_xbar_0_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys28
$design_1_multicore_multicycle_xbar_02default:default2
 2default:default2
102default:default2
12default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/.Xil/Vivado-30539-bernard-Precision-5530/realtime/design_1_multicore_multicycle_xbar_0_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
62default:default2 
m_axi_arprot2default:default2
122default:default28
$design_1_multicore_multicycle_xbar_02default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
16422default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
62default:default2 
m_axi_awprot2default:default2
122default:default28
$design_1_multicore_multicycle_xbar_02default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
16462default:default8@Z8-689h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:default2
 2default:default2
112default:default2
12default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
6402default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2A
-design_1_multicore_multicycle_blk_mem_gen_0_02default:default2
 2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/.Xil/Vivado-30539-bernard-Precision-5530/realtime/design_1_multicore_multicycle_blk_mem_gen_0_0_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-design_1_multicore_multicycle_blk_mem_gen_0_02default:default2
 2default:default2
122default:default2
12default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/.Xil/Vivado-30539-bernard-Precision-5530/realtime/design_1_multicore_multicycle_blk_mem_gen_0_0_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rsta_busy2default:default2A
-design_1_multicore_multicycle_blk_mem_gen_0_02default:default2!
blk_mem_gen_02default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
4442default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rstb_busy2default:default2A
-design_1_multicore_multicycle_blk_mem_gen_0_02default:default2!
blk_mem_gen_02default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
4442default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2!
blk_mem_gen_02default:default2A
-design_1_multicore_multicycle_blk_mem_gen_0_02default:default2
162default:default2
142default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
4442default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2>
*design_1_multicore_multicycle_axi_gpio_0_02default:default2
 2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/.Xil/Vivado-30539-bernard-Precision-5530/realtime/design_1_multicore_multicycle_axi_gpio_0_0_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2>
*design_1_multicore_multicycle_axi_gpio_0_02default:default2
 2default:default2
132default:default2
12default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/.Xil/Vivado-30539-bernard-Precision-5530/realtime/design_1_multicore_multicycle_axi_gpio_0_0_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2>
*design_1_multicore_multicycle_axi_gpio_0_12default:default2
 2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/.Xil/Vivado-30539-bernard-Precision-5530/realtime/design_1_multicore_multicycle_axi_gpio_0_1_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2>
*design_1_multicore_multicycle_axi_gpio_0_12default:default2
 2default:default2
142default:default2
12default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/.Xil/Vivado-30539-bernard-Precision-5530/realtime/design_1_multicore_multicycle_axi_gpio_0_1_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2I
5design_1_multicore_multicycle_multicycle_pipeline_0_12default:default2
 2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/.Xil/Vivado-30539-bernard-Precision-5530/realtime/design_1_multicore_multicycle_multicycle_pipeline_0_1_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2I
5design_1_multicore_multicycle_multicycle_pipeline_0_12default:default2
 2default:default2
152default:default2
12default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/.Xil/Vivado-30539-bernard-Precision-5530/realtime/design_1_multicore_multicycle_multicycle_pipeline_0_1_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2"
ap_local_block2default:default2I
5design_1_multicore_multicycle_multicycle_pipeline_0_12default:default2)
multicycle_pipeline_02default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
5032default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	interrupt2default:default2I
5design_1_multicore_multicycle_multicycle_pipeline_0_12default:default2)
multicycle_pipeline_02default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
5032default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2)
multicycle_pipeline_02default:default2I
5design_1_multicore_multicycle_multicycle_pipeline_0_12default:default2
632default:default2
612default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
5032default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2H
4design_1_multicore_multicycle_processing_system7_0_02default:default2
 2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/.Xil/Vivado-30539-bernard-Precision-5530/realtime/design_1_multicore_multicycle_processing_system7_0_0_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2H
4design_1_multicore_multicycle_processing_system7_0_02default:default2
 2default:default2
162default:default2
12default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/.Xil/Vivado-30539-bernard-Precision-5530/realtime/design_1_multicore_multicycle_processing_system7_0_0_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
USB0_PORT_INDCTL2default:default2H
4design_1_multicore_multicycle_processing_system7_0_02default:default2(
processing_system7_02default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
5672default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2'
USB0_VBUS_PWRSELECT2default:default2H
4design_1_multicore_multicycle_processing_system7_0_02default:default2(
processing_system7_02default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
5672default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2(
processing_system7_02default:default2H
4design_1_multicore_multicycle_processing_system7_0_02default:default2
652default:default2
632default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
5672default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2B
.design_1_multicore_multicycle_rst_ps7_0_100M_02default:default2
 2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/.Xil/Vivado-30539-bernard-Precision-5530/realtime/design_1_multicore_multicycle_rst_ps7_0_100M_0_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2B
.design_1_multicore_multicycle_rst_ps7_0_100M_02default:default2
 2default:default2
172default:default2
12default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/.Xil/Vivado-30539-bernard-Precision-5530/realtime/design_1_multicore_multicycle_rst_ps7_0_100M_0_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
mb_reset2default:default2B
.design_1_multicore_multicycle_rst_ps7_0_100M_02default:default2"
rst_ps7_0_100M2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
6312default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
bus_struct_reset2default:default2B
.design_1_multicore_multicycle_rst_ps7_0_100M_02default:default2"
rst_ps7_0_100M2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
6312default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
peripheral_reset2default:default2B
.design_1_multicore_multicycle_rst_ps7_0_100M_02default:default2"
rst_ps7_0_100M2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
6312default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2(
interconnect_aresetn2default:default2B
.design_1_multicore_multicycle_rst_ps7_0_100M_02default:default2"
rst_ps7_0_100M2default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
6312default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2"
rst_ps7_0_100M2default:default2B
.design_1_multicore_multicycle_rst_ps7_0_100M_02default:default2
102default:default2
62default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
6312default:default8@Z8-7023h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
design_1_multicore_multicycle2default:default2
 2default:default2
182default:default2
12default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/synth/design_1_multicore_multicycle.v2default:default2
132default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
IOBUF2default:default2
 2default:default2V
@/home/bernard/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
597352default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IOBUF2default:default2
 2default:default2
192default:default2
12default:default2V
@/home/bernard/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
597352default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys29
%design_1_multicore_multicycle_wrapper2default:default2
 2default:default2
202default:default2
12default:default2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/hdl/design_1_multicore_multicycle_wrapper.v2default:default2
122default:default8@Z8-6155h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
s01_couplers_imp_RWOQTQ2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
s01_couplers_imp_RWOQTQ2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
s00_couplers_imp_BOMAG72default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
s00_couplers_imp_BOMAG72default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_arlock[1]2default:default2+
s00_couplers_imp_BOMAG72default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_awlock[1]2default:default2+
s00_couplers_imp_BOMAG72default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
m03_couplers_imp_151KZ2L2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
m03_couplers_imp_151KZ2L2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
m03_couplers_imp_151KZ2L2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
m03_couplers_imp_151KZ2L2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
m02_couplers_imp_1PFHBMS2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
m02_couplers_imp_1PFHBMS2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
m02_couplers_imp_1PFHBMS2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
m02_couplers_imp_1PFHBMS2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
m01_couplers_imp_45S6HR2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
m01_couplers_imp_45S6HR2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
m01_couplers_imp_45S6HR2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
m01_couplers_imp_45S6HR2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
m00_couplers_imp_HVYB1Y2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
m00_couplers_imp_HVYB1Y2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
m00_couplers_imp_HVYB1Y2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
m00_couplers_imp_HVYB1Y2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ACLK2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ARESETN2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M01_ACLK2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M01_ARESETN2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M02_ACLK2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M02_ARESETN2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M03_ACLK2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M03_ARESETN2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S00_ACLK2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S00_ARESETN2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S01_ACLK2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S01_ARESETN2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
%s*synth2?
?Finished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2779.715 ; gain = 0.000 ; free physical = 5760 ; free virtual = 46452
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 2779.715 ; gain = 0.000 ; free physical = 6631 ; free virtual = 47323
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 2779.715 ; gain = 0.000 ; free physical = 6630 ; free virtual = 47323
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.022default:default2
00:00:00.022default:default2
2779.7152default:default2
0.0002default:default2
66472default:default2
473402default:defaultZ17-722h px? 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
42default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_processing_system7_0_0/design_1_multicore_multicycle_processing_system7_0_0/design_1_multicore_multicycle_processing_system7_0_0_in_context.xdc2default:default2J
4design_1_multicore_multicycle_i/processing_system7_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_processing_system7_0_0/design_1_multicore_multicycle_processing_system7_0_0/design_1_multicore_multicycle_processing_system7_0_0_in_context.xdc2default:default2J
4design_1_multicore_multicycle_i/processing_system7_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_axi_gpio_0_0/design_1_multicore_multicycle_axi_gpio_0_0/design_1_multicore_multicycle_axi_gpio_0_0_in_context.xdc2default:default2=
'design_1_multicore_multicycle_i/buttons	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_axi_gpio_0_0/design_1_multicore_multicycle_axi_gpio_0_0/design_1_multicore_multicycle_axi_gpio_0_0_in_context.xdc2default:default2=
'design_1_multicore_multicycle_i/buttons	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_axi_gpio_0_1/design_1_multicore_multicycle_axi_gpio_0_1/design_1_multicore_multicycle_axi_gpio_0_1_in_context.xdc2default:default2:
$design_1_multicore_multicycle_i/leds	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_axi_gpio_0_1/design_1_multicore_multicycle_axi_gpio_0_1/design_1_multicore_multicycle_axi_gpio_0_1_in_context.xdc2default:default2:
$design_1_multicore_multicycle_i/leds	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_axi_bram_ctrl_0_0/design_1_multicore_multicycle_axi_bram_ctrl_0_0/design_1_2c_axi_bram_ctrl_0_1_in_context.xdc2default:default2E
/design_1_multicore_multicycle_i/axi_bram_ctrl_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_axi_bram_ctrl_0_0/design_1_multicore_multicycle_axi_bram_ctrl_0_0/design_1_2c_axi_bram_ctrl_0_1_in_context.xdc2default:default2E
/design_1_multicore_multicycle_i/axi_bram_ctrl_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_xbar_0/design_1_multicore_multicycle_xbar_0/design_1_multicore_multicycle_xbar_0_in_context.xdc2default:default2M
7design_1_multicore_multicycle_i/axi_interconnect_0/xbar	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_xbar_0/design_1_multicore_multicycle_xbar_0/design_1_multicore_multicycle_xbar_0_in_context.xdc2default:default2M
7design_1_multicore_multicycle_i/axi_interconnect_0/xbar	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_auto_pc_0/design_1_multicore_multicycle_auto_pc_0/design_1_multicore_multicycle_auto_pc_0_in_context.xdc2default:default2]
Gdesign_1_multicore_multicycle_i/axi_interconnect_0/s00_couplers/auto_pc	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_auto_pc_0/design_1_multicore_multicycle_auto_pc_0/design_1_multicore_multicycle_auto_pc_0_in_context.xdc2default:default2]
Gdesign_1_multicore_multicycle_i/axi_interconnect_0/s00_couplers/auto_pc	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_auto_pc_1/design_1_multicore_multicycle_auto_pc_1/design_1_multicore_multicycle_auto_pc_1_in_context.xdc2default:default2]
Gdesign_1_multicore_multicycle_i/axi_interconnect_0/s01_couplers/auto_pc	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_auto_pc_1/design_1_multicore_multicycle_auto_pc_1/design_1_multicore_multicycle_auto_pc_1_in_context.xdc2default:default2]
Gdesign_1_multicore_multicycle_i/axi_interconnect_0/s01_couplers/auto_pc	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_blk_mem_gen_0_0/design_1_multicore_multicycle_blk_mem_gen_0_0/design_1_2c_blk_mem_gen_0_1_in_context.xdc2default:default2C
-design_1_multicore_multicycle_i/blk_mem_gen_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_blk_mem_gen_0_0/design_1_multicore_multicycle_blk_mem_gen_0_0/design_1_2c_blk_mem_gen_0_1_in_context.xdc2default:default2C
-design_1_multicore_multicycle_i/blk_mem_gen_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_rst_ps7_0_100M_0/design_1_multicore_multicycle_rst_ps7_0_100M_0/design_1_multicore_multicycle_rst_ps7_0_100M_0_in_context.xdc2default:default2D
.design_1_multicore_multicycle_i/rst_ps7_0_100M	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_rst_ps7_0_100M_0/design_1_multicore_multicycle_rst_ps7_0_100M_0/design_1_multicore_multicycle_rst_ps7_0_100M_0_in_context.xdc2default:default2D
.design_1_multicore_multicycle_i/rst_ps7_0_100M	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_1/design_1_multicore_multicycle_multicycle_pipeline_0_1/design_1_multicore_multicycle_multicycle_pipeline_0_1_in_context.xdc2default:default2K
5design_1_multicore_multicycle_i/multicycle_pipeline_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.gen/sources_1/bd/design_1_multicore_multicycle/ip/design_1_multicore_multicycle_multicycle_pipeline_0_1/design_1_multicore_multicycle_multicycle_pipeline_0_1/design_1_multicore_multicycle_multicycle_pipeline_0_1_in_context.xdc2default:default2K
5design_1_multicore_multicycle_i/multicycle_pipeline_0	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2r
\/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2r
\/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2843.6092default:default2
0.0002default:default2
65972default:default2
472892default:defaultZ17-722h px? 
?
!Unisim Transformation Summary:
%s111*project2k
W  A total of 4 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 4 instances
2default:defaultZ1-111h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2
00:00:002default:default2
2843.6092default:default2
0.0002default:default2
65972default:default2
472892default:defaultZ17-722h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2A
-design_1_multicore_multicycle_i/blk_mem_gen_02default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Constraint Validation : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 2843.609 ; gain = 63.895 ; free physical = 6668 ; free virtual = 47360
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7z020clg400-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 2843.609 ; gain = 63.895 ; free physical = 6668 ; free virtual = 47360
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 2843.609 ; gain = 63.895 ; free physical = 6671 ; free virtual = 47363
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 2843.609 ; gain = 63.895 ; free physical = 6668 ; free virtual = 47361
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ACLK2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ARESETN2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M01_ACLK2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M01_ARESETN2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M02_ACLK2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M02_ARESETN2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M03_ACLK2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M03_ARESETN2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S00_ACLK2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S00_ARESETN2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2%
S00_AXI_arlock[1]2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2%
S00_AXI_awlock[1]2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S01_ACLK2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S01_ARESETN2default:default2F
2design_1_multicore_multicycle_axi_interconnect_0_02default:defaultZ8-7129h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 2843.609 ; gain = 63.895 ; free physical = 6657 ; free virtual = 47353
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 2843.609 ; gain = 63.895 ; free physical = 6531 ; free virtual = 47228
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Timing Optimization : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 2843.609 ; gain = 63.895 ; free physical = 6531 ; free virtual = 47228
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Technology Mapping : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 2843.609 ; gain = 63.895 ; free physical = 6531 ; free virtual = 47228
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished IO Insertion : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 2843.609 ; gain = 63.895 ; free physical = 6532 ; free virtual = 47229
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 2843.609 ; gain = 63.895 ; free physical = 6532 ; free virtual = 47229
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 2843.609 ; gain = 63.895 ; free physical = 6532 ; free virtual = 47229
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 2843.609 ; gain = 63.895 ; free physical = 6532 ; free virtual = 47229
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 2843.609 ; gain = 63.895 ; free physical = 6532 ; free virtual = 47229
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 2843.609 ; gain = 63.895 ; free physical = 6532 ; free virtual = 47229
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
w
%s
*synth2_
K+------+------------------------------------------------------+----------+
2default:defaulth p
x
? 
w
%s
*synth2_
K|      |BlackBox name                                         |Instances |
2default:defaulth p
x
? 
w
%s
*synth2_
K+------+------------------------------------------------------+----------+
2default:defaulth p
x
? 
w
%s
*synth2_
K|1     |design_1_multicore_multicycle_xbar_0                  |         1|
2default:defaulth p
x
? 
w
%s
*synth2_
K|2     |design_1_multicore_multicycle_auto_pc_0               |         1|
2default:defaulth p
x
? 
w
%s
*synth2_
K|3     |design_1_multicore_multicycle_auto_pc_1               |         1|
2default:defaulth p
x
? 
w
%s
*synth2_
K|4     |design_1_multicore_multicycle_axi_bram_ctrl_0_0       |         1|
2default:defaulth p
x
? 
w
%s
*synth2_
K|5     |design_1_multicore_multicycle_blk_mem_gen_0_0         |         1|
2default:defaulth p
x
? 
w
%s
*synth2_
K|6     |design_1_multicore_multicycle_axi_gpio_0_0            |         1|
2default:defaulth p
x
? 
w
%s
*synth2_
K|7     |design_1_multicore_multicycle_axi_gpio_0_1            |         1|
2default:defaulth p
x
? 
w
%s
*synth2_
K|8     |design_1_multicore_multicycle_multicycle_pipeline_0_1 |         1|
2default:defaulth p
x
? 
w
%s
*synth2_
K|9     |design_1_multicore_multicycle_processing_system7_0_0  |         1|
2default:defaulth p
x
? 
w
%s
*synth2_
K|10    |design_1_multicore_multicycle_rst_ps7_0_100M_0        |         1|
2default:defaulth p
x
? 
w
%s
*synth2_
K+------+------------------------------------------------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
q
%s*synth2Y
E+------+----------------------------------------------------+------+
2default:defaulth px? 
q
%s*synth2Y
E|      |Cell                                                |Count |
2default:defaulth px? 
q
%s*synth2Y
E+------+----------------------------------------------------+------+
2default:defaulth px? 
q
%s*synth2Y
E|1     |design_1_multicore_multicycle_auto_pc               |     2|
2default:defaulth px? 
q
%s*synth2Y
E|3     |design_1_multicore_multicycle_axi_bram_ctrl_0       |     1|
2default:defaulth px? 
q
%s*synth2Y
E|4     |design_1_multicore_multicycle_axi_gpio_0            |     2|
2default:defaulth px? 
q
%s*synth2Y
E|6     |design_1_multicore_multicycle_blk_mem_gen_0         |     1|
2default:defaulth px? 
q
%s*synth2Y
E|7     |design_1_multicore_multicycle_multicycle_pipeline_0 |     1|
2default:defaulth px? 
q
%s*synth2Y
E|8     |design_1_multicore_multicycle_processing_system7_0  |     1|
2default:defaulth px? 
q
%s*synth2Y
E|9     |design_1_multicore_multicycle_rst_ps7_0_100M        |     1|
2default:defaulth px? 
q
%s*synth2Y
E|10    |design_1_multicore_multicycle_xbar                  |     1|
2default:defaulth px? 
q
%s*synth2Y
E|11    |IBUF                                                |     4|
2default:defaulth px? 
q
%s*synth2Y
E|12    |IOBUF                                               |     4|
2default:defaulth px? 
q
%s*synth2Y
E+------+----------------------------------------------------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 2843.609 ; gain = 63.895 ; free physical = 6532 ; free virtual = 47229
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 15 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 2843.609 ; gain = 0.000 ; free physical = 6591 ; free virtual = 47288
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 2843.609 ; gain = 63.895 ; free physical = 6591 ; free virtual = 47288
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
2843.6092default:default2
0.0002default:default2
66812default:default2
473782default:defaultZ17-722h px? 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
42default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2843.6092default:default2
0.0002default:default2
66112default:default2
473092default:defaultZ17-722h px? 
?
!Unisim Transformation Summary:
%s111*project2k
W  A total of 4 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 4 instances
2default:defaultZ1-111h px? 
f
$Synth Design complete, checksum: %s
562*	vivadotcl2
e678b982default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
642default:default2
682default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:252default:default2
00:00:222default:default2
2843.6092default:default2
64.0312default:default2
68032default:default2
475002default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
w/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/synth_1/design_1_multicore_multicycle_wrapper.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_utilization -file design_1_multicore_multicycle_wrapper_utilization_synth.rpt -pb design_1_multicore_multicycle_wrapper_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Feb 27 08:04:11 20222default:defaultZ17-206h px? 


End Record