
>
Refreshing IP repositories
234*coregenZ19-234h px? 
?
 Loaded user IP repository '%s'.
1135*coregen2R
>/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip2default:defaultZ19-1700h px? 
?
?If you move the project, the path for repository '%s' may become invalid. A better location for the repostory would be in a path adjacent to the project. (Current project location is '%s'.)1680*coregen2R
>/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip2default:default2}
i/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_12default:defaultZ19-3656h px? 
~
"Loaded Vivado IP repository '%s'.
1332*coregen25
!/opt/Xilinx/Vivado/2022.1/data/ip2default:defaultZ19-2313h px? 
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental /home/goossens/book/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.srcs/utils_1/imports/synth_1/design_1_8c_wrapper.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2?
?/home/goossens/book/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.srcs/utils_1/imports/synth_1/design_1_8c_wrapper.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
?
Command: %s
53*	vivadotcl2O
;synth_design -top design_1_8c_wrapper -part xc7z020clg400-12default:defaultZ4-113h px? 
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

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
b
#Helper process launched with PID %s4824*oasys2
13863652default:defaultZ8-7075h px? 
?
%s*synth2?
?Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 2909.859 ; gain = 0.000 ; free physical = 6327 ; free virtual = 10596
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2'
design_1_8c_wrapper2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/hdl/design_1_8c_wrapper.v2default:default2
122default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
design_1_8c2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
122default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys21
design_1_8c_axi_bram_ctrl_0_02default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_axi_bram_ctrl_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
design_1_8c_axi_bram_ctrl_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_axi_bram_ctrl_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
design_1_8c_axi_bram_ctrl_0_12default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_axi_bram_ctrl_0_1_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
design_1_8c_axi_bram_ctrl_0_12default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_axi_bram_ctrl_0_1_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
design_1_8c_axi_bram_ctrl_0_22default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_axi_bram_ctrl_0_2_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
design_1_8c_axi_bram_ctrl_0_22default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_axi_bram_ctrl_0_2_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
design_1_8c_axi_bram_ctrl_0_32default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_axi_bram_ctrl_0_3_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
design_1_8c_axi_bram_ctrl_0_32default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_axi_bram_ctrl_0_3_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
design_1_8c_axi_bram_ctrl_0_42default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_axi_bram_ctrl_0_4_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
design_1_8c_axi_bram_ctrl_0_42default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_axi_bram_ctrl_0_4_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
design_1_8c_axi_bram_ctrl_0_52default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_axi_bram_ctrl_0_5_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
design_1_8c_axi_bram_ctrl_0_52default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_axi_bram_ctrl_0_5_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
design_1_8c_axi_bram_ctrl_0_62default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_axi_bram_ctrl_0_6_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
design_1_8c_axi_bram_ctrl_0_62default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_axi_bram_ctrl_0_6_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
design_1_8c_axi_bram_ctrl_0_72default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_axi_bram_ctrl_0_7_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
design_1_8c_axi_bram_ctrl_0_72default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_axi_bram_ctrl_0_7_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys24
 design_1_8c_axi_interconnect_0_12default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
23982default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2+
m00_couplers_imp_LXNC4N2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
66272default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m00_couplers_imp_LXNC4N2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
66272default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
m01_couplers_imp_1LY1ZUH2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
67592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m01_couplers_imp_1LY1ZUH2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
67592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
m02_couplers_imp_1BNY2CA2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
69052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m02_couplers_imp_1BNY2CA2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
69052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
m03_couplers_imp_EG60N82default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
70372default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m03_couplers_imp_EG60N82default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
70372default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
m04_couplers_imp_Q2I5JW2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
71832default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m04_couplers_imp_Q2I5JW2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
71832default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
m05_couplers_imp_1HVMB5U2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
73152default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m05_couplers_imp_1HVMB5U2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
73152default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
m06_couplers_imp_1FDTHPD2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
74612default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m06_couplers_imp_1FDTHPD2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
74612default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
m07_couplers_imp_ASPQ4F2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
75932default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m07_couplers_imp_ASPQ4F2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
75932default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
m08_couplers_imp_TOSCPD2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
77392default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m08_couplers_imp_TOSCPD2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
77392default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
m09_couplers_imp_1W0OZBJ2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
78712default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m09_couplers_imp_1W0OZBJ2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
78712default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
m10_couplers_imp_OGH8TJ2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
80172default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m10_couplers_imp_OGH8TJ2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
80172default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
m11_couplers_imp_1JHPOJD2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
81492default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m11_couplers_imp_1JHPOJD2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
81492default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
m12_couplers_imp_1GEOPZU2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
82952default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m12_couplers_imp_1GEOPZU2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
82952default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
m13_couplers_imp_9RWY6C2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
84272default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m13_couplers_imp_9RWY6C2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
84272default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
m14_couplers_imp_KRRYHO2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
85732default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m14_couplers_imp_KRRYHO2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
85732default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
m15_couplers_imp_1N3U7R62default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
87052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m15_couplers_imp_1N3U7R62default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
87052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
s00_couplers_imp_198N86V2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
88512default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2)
design_1_8c_auto_pc_02default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_auto_pc_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_8c_auto_pc_02default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_auto_pc_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
s00_couplers_imp_198N86V2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
88512default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
s01_couplers_imp_GVPI212default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
91412default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2)
design_1_8c_auto_pc_12default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_auto_pc_1_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_8c_auto_pc_12default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_auto_pc_1_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
s01_couplers_imp_GVPI212default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
91412default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
s02_couplers_imp_JX0NKA2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
94312default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2)
design_1_8c_auto_pc_22default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_auto_pc_2_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_8c_auto_pc_22default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_auto_pc_2_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
s02_couplers_imp_JX0NKA2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
94312default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
s03_couplers_imp_1NYAUOK2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
97212default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2)
design_1_8c_auto_pc_32default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_auto_pc_3_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_8c_auto_pc_32default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_auto_pc_3_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
s03_couplers_imp_1NYAUOK2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
97212default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
s04_couplers_imp_1DDKT582default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
100112default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2)
design_1_8c_auto_pc_42default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_auto_pc_4_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_8c_auto_pc_42default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_auto_pc_4_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
s04_couplers_imp_1DDKT582default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
100112default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
s05_couplers_imp_CTCKYA2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
103012default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2)
design_1_8c_auto_pc_52default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_auto_pc_5_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_8c_auto_pc_52default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_auto_pc_5_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
s05_couplers_imp_CTCKYA2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
103012default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
s06_couplers_imp_NMYUI92default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
105912default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2)
design_1_8c_auto_pc_62default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_auto_pc_6_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_8c_auto_pc_62default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_auto_pc_6_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
s06_couplers_imp_NMYUI92default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
105912default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
s07_couplers_imp_1KAXBOV2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
108812default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2)
design_1_8c_auto_pc_72default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_auto_pc_7_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_8c_auto_pc_72default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_auto_pc_7_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
s07_couplers_imp_1KAXBOV2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
108812default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
s08_couplers_imp_11GEYWX2default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
111712default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2)
design_1_8c_auto_pc_82default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_auto_pc_8_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_8c_auto_pc_82default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_auto_pc_8_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
s08_couplers_imp_11GEYWX2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
111712default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2&
design_1_8c_xbar_12default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_xbar_1_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
design_1_8c_xbar_12default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_xbar_1_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 design_1_8c_axi_interconnect_0_12default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
23982default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2/
design_1_8c_blk_mem_gen_0_02default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_blk_mem_gen_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
design_1_8c_blk_mem_gen_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_blk_mem_gen_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rsta_busy2default:default2/
design_1_8c_blk_mem_gen_0_02default:default2!
blk_mem_gen_02default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17072default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rstb_busy2default:default2/
design_1_8c_blk_mem_gen_0_02default:default2!
blk_mem_gen_02default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17072default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2!
blk_mem_gen_02default:default2/
design_1_8c_blk_mem_gen_0_02default:default2
162default:default2
142default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17072default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2/
design_1_8c_blk_mem_gen_0_12default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_blk_mem_gen_0_1_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
design_1_8c_blk_mem_gen_0_12default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_blk_mem_gen_0_1_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rsta_busy2default:default2/
design_1_8c_blk_mem_gen_0_12default:default2!
blk_mem_gen_12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17222default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rstb_busy2default:default2/
design_1_8c_blk_mem_gen_0_12default:default2!
blk_mem_gen_12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17222default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2!
blk_mem_gen_12default:default2/
design_1_8c_blk_mem_gen_0_12default:default2
162default:default2
142default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17222default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2/
design_1_8c_blk_mem_gen_0_22default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_blk_mem_gen_0_2_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
design_1_8c_blk_mem_gen_0_22default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_blk_mem_gen_0_2_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rsta_busy2default:default2/
design_1_8c_blk_mem_gen_0_22default:default2!
blk_mem_gen_22default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17372default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rstb_busy2default:default2/
design_1_8c_blk_mem_gen_0_22default:default2!
blk_mem_gen_22default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17372default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2!
blk_mem_gen_22default:default2/
design_1_8c_blk_mem_gen_0_22default:default2
162default:default2
142default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17372default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2/
design_1_8c_blk_mem_gen_0_32default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_blk_mem_gen_0_3_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
design_1_8c_blk_mem_gen_0_32default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_blk_mem_gen_0_3_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rsta_busy2default:default2/
design_1_8c_blk_mem_gen_0_32default:default2!
blk_mem_gen_32default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17522default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rstb_busy2default:default2/
design_1_8c_blk_mem_gen_0_32default:default2!
blk_mem_gen_32default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17522default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2!
blk_mem_gen_32default:default2/
design_1_8c_blk_mem_gen_0_32default:default2
162default:default2
142default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17522default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2/
design_1_8c_blk_mem_gen_0_42default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_blk_mem_gen_0_4_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
design_1_8c_blk_mem_gen_0_42default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_blk_mem_gen_0_4_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rsta_busy2default:default2/
design_1_8c_blk_mem_gen_0_42default:default2!
blk_mem_gen_42default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17672default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rstb_busy2default:default2/
design_1_8c_blk_mem_gen_0_42default:default2!
blk_mem_gen_42default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17672default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2!
blk_mem_gen_42default:default2/
design_1_8c_blk_mem_gen_0_42default:default2
162default:default2
142default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17672default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2/
design_1_8c_blk_mem_gen_0_52default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_blk_mem_gen_0_5_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
design_1_8c_blk_mem_gen_0_52default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_blk_mem_gen_0_5_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rsta_busy2default:default2/
design_1_8c_blk_mem_gen_0_52default:default2!
blk_mem_gen_52default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rstb_busy2default:default2/
design_1_8c_blk_mem_gen_0_52default:default2!
blk_mem_gen_52default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17822default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2!
blk_mem_gen_52default:default2/
design_1_8c_blk_mem_gen_0_52default:default2
162default:default2
142default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17822default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2/
design_1_8c_blk_mem_gen_0_62default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_blk_mem_gen_0_6_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
design_1_8c_blk_mem_gen_0_62default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_blk_mem_gen_0_6_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rsta_busy2default:default2/
design_1_8c_blk_mem_gen_0_62default:default2!
blk_mem_gen_62default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17972default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rstb_busy2default:default2/
design_1_8c_blk_mem_gen_0_62default:default2!
blk_mem_gen_62default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17972default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2!
blk_mem_gen_62default:default2/
design_1_8c_blk_mem_gen_0_62default:default2
162default:default2
142default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
17972default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2/
design_1_8c_blk_mem_gen_0_72default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_blk_mem_gen_0_7_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
design_1_8c_blk_mem_gen_0_72default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_blk_mem_gen_0_7_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rsta_busy2default:default2/
design_1_8c_blk_mem_gen_0_72default:default2!
blk_mem_gen_72default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
18122default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rstb_busy2default:default2/
design_1_8c_blk_mem_gen_0_72default:default2!
blk_mem_gen_72default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
18122default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2!
blk_mem_gen_72default:default2/
design_1_8c_blk_mem_gen_0_72default:default2
162default:default2
142default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
18122default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys28
$design_1_8c_multicycle_pipeline_0_402default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_multicycle_pipeline_0_40_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys28
$design_1_8c_multicycle_pipeline_0_402default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_multicycle_pipeline_0_40_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	interrupt2default:default28
$design_1_8c_multicycle_pipeline_0_402default:default2)
multicycle_pipeline_02default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
18272default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2)
multicycle_pipeline_02default:default28
$design_1_8c_multicycle_pipeline_0_402default:default2
622default:default2
612default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
18272default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys28
$design_1_8c_multicycle_pipeline_0_412default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_multicycle_pipeline_0_41_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys28
$design_1_8c_multicycle_pipeline_0_412default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_multicycle_pipeline_0_41_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	interrupt2default:default28
$design_1_8c_multicycle_pipeline_0_412default:default2)
multicycle_pipeline_12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
18892default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2)
multicycle_pipeline_12default:default28
$design_1_8c_multicycle_pipeline_0_412default:default2
622default:default2
612default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
18892default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys28
$design_1_8c_multicycle_pipeline_0_422default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_multicycle_pipeline_0_42_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys28
$design_1_8c_multicycle_pipeline_0_422default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_multicycle_pipeline_0_42_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	interrupt2default:default28
$design_1_8c_multicycle_pipeline_0_422default:default2)
multicycle_pipeline_22default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
19512default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2)
multicycle_pipeline_22default:default28
$design_1_8c_multicycle_pipeline_0_422default:default2
622default:default2
612default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
19512default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys28
$design_1_8c_multicycle_pipeline_0_432default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_multicycle_pipeline_0_43_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys28
$design_1_8c_multicycle_pipeline_0_432default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_multicycle_pipeline_0_43_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	interrupt2default:default28
$design_1_8c_multicycle_pipeline_0_432default:default2)
multicycle_pipeline_32default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
20132default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2)
multicycle_pipeline_32default:default28
$design_1_8c_multicycle_pipeline_0_432default:default2
622default:default2
612default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
20132default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys28
$design_1_8c_multicycle_pipeline_0_442default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_multicycle_pipeline_0_44_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys28
$design_1_8c_multicycle_pipeline_0_442default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_multicycle_pipeline_0_44_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	interrupt2default:default28
$design_1_8c_multicycle_pipeline_0_442default:default2)
multicycle_pipeline_42default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
20752default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2)
multicycle_pipeline_42default:default28
$design_1_8c_multicycle_pipeline_0_442default:default2
622default:default2
612default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
20752default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys28
$design_1_8c_multicycle_pipeline_0_452default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_multicycle_pipeline_0_45_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys28
$design_1_8c_multicycle_pipeline_0_452default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_multicycle_pipeline_0_45_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	interrupt2default:default28
$design_1_8c_multicycle_pipeline_0_452default:default2)
multicycle_pipeline_52default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
21372default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2)
multicycle_pipeline_52default:default28
$design_1_8c_multicycle_pipeline_0_452default:default2
622default:default2
612default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
21372default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys28
$design_1_8c_multicycle_pipeline_0_462default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_multicycle_pipeline_0_46_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys28
$design_1_8c_multicycle_pipeline_0_462default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_multicycle_pipeline_0_46_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	interrupt2default:default28
$design_1_8c_multicycle_pipeline_0_462default:default2)
multicycle_pipeline_62default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
21992default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2)
multicycle_pipeline_62default:default28
$design_1_8c_multicycle_pipeline_0_462default:default2
622default:default2
612default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
21992default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys28
$design_1_8c_multicycle_pipeline_0_472default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_multicycle_pipeline_0_47_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys28
$design_1_8c_multicycle_pipeline_0_472default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_multicycle_pipeline_0_47_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	interrupt2default:default28
$design_1_8c_multicycle_pipeline_0_472default:default2)
multicycle_pipeline_72default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
22612default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2)
multicycle_pipeline_72default:default28
$design_1_8c_multicycle_pipeline_0_472default:default2
622default:default2
612default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
22612default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys26
"design_1_8c_processing_system7_0_02default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_processing_system7_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys26
"design_1_8c_processing_system7_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_processing_system7_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
USB0_PORT_INDCTL2default:default26
"design_1_8c_processing_system7_0_02default:default2(
processing_system7_02default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
23252default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2'
USB0_VBUS_PWRSELECT2default:default26
"design_1_8c_processing_system7_0_02default:default2(
processing_system7_02default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
23252default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2(
processing_system7_02default:default26
"design_1_8c_processing_system7_0_02default:default2
652default:default2
632default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
23252default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys20
design_1_8c_rst_ps7_0_100M_02default:default2
 2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_rst_ps7_0_100M_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
design_1_8c_rst_ps7_0_100M_02default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/.Xil/Vivado-1386304-goossens-Precision-5530/realtime/design_1_8c_rst_ps7_0_100M_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
mb_reset2default:default20
design_1_8c_rst_ps7_0_100M_02default:default2"
rst_ps7_0_100M2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
23892default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
bus_struct_reset2default:default20
design_1_8c_rst_ps7_0_100M_02default:default2"
rst_ps7_0_100M2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
23892default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
peripheral_reset2default:default20
design_1_8c_rst_ps7_0_100M_02default:default2"
rst_ps7_0_100M2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
23892default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2(
interconnect_aresetn2default:default20
design_1_8c_rst_ps7_0_100M_02default:default2"
rst_ps7_0_100M2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
23892default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2"
rst_ps7_0_100M2default:default20
design_1_8c_rst_ps7_0_100M_02default:default2
102default:default2
62default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
23892default:default8@Z8-7023h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
design_1_8c2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/synth/design_1_8c.v2default:default2
122default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
design_1_8c_wrapper2default:default2
 2default:default2
02default:default2
12default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/hdl/design_1_8c_wrapper.v2default:default2
122default:default8@Z8-6155h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
s08_couplers_imp_11GEYWX2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
s08_couplers_imp_11GEYWX2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
s07_couplers_imp_1KAXBOV2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
s07_couplers_imp_1KAXBOV2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_arlock[1]2default:default2,
s07_couplers_imp_1KAXBOV2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_awlock[1]2default:default2,
s07_couplers_imp_1KAXBOV2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
s06_couplers_imp_NMYUI92default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
s06_couplers_imp_NMYUI92default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_arlock[1]2default:default2+
s06_couplers_imp_NMYUI92default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_awlock[1]2default:default2+
s06_couplers_imp_NMYUI92default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
s05_couplers_imp_CTCKYA2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
s05_couplers_imp_CTCKYA2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_arlock[1]2default:default2+
s05_couplers_imp_CTCKYA2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_awlock[1]2default:default2+
s05_couplers_imp_CTCKYA2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
s04_couplers_imp_1DDKT582default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
s04_couplers_imp_1DDKT582default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_arlock[1]2default:default2,
s04_couplers_imp_1DDKT582default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_awlock[1]2default:default2,
s04_couplers_imp_1DDKT582default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
s03_couplers_imp_1NYAUOK2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
s03_couplers_imp_1NYAUOK2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_arlock[1]2default:default2,
s03_couplers_imp_1NYAUOK2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_awlock[1]2default:default2,
s03_couplers_imp_1NYAUOK2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
s02_couplers_imp_JX0NKA2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
s02_couplers_imp_JX0NKA2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_arlock[1]2default:default2+
s02_couplers_imp_JX0NKA2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_awlock[1]2default:default2+
s02_couplers_imp_JX0NKA2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
s01_couplers_imp_GVPI212default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
s01_couplers_imp_GVPI212default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_arlock[1]2default:default2+
s01_couplers_imp_GVPI212default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_awlock[1]2default:default2+
s01_couplers_imp_GVPI212default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
s00_couplers_imp_198N86V2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
s00_couplers_imp_198N86V2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_arlock[1]2default:default2,
s00_couplers_imp_198N86V2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_awlock[1]2default:default2,
s00_couplers_imp_198N86V2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
m15_couplers_imp_1N3U7R62default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
m15_couplers_imp_1N3U7R62default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
m15_couplers_imp_1N3U7R62default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
m15_couplers_imp_1N3U7R62default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
m14_couplers_imp_KRRYHO2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
m14_couplers_imp_KRRYHO2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
m14_couplers_imp_KRRYHO2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
m14_couplers_imp_KRRYHO2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
m13_couplers_imp_9RWY6C2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
m13_couplers_imp_9RWY6C2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
m13_couplers_imp_9RWY6C2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
m13_couplers_imp_9RWY6C2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
m12_couplers_imp_1GEOPZU2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
m12_couplers_imp_1GEOPZU2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
m12_couplers_imp_1GEOPZU2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
m12_couplers_imp_1GEOPZU2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
m11_couplers_imp_1JHPOJD2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
m11_couplers_imp_1JHPOJD2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
m11_couplers_imp_1JHPOJD2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
m11_couplers_imp_1JHPOJD2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
m10_couplers_imp_OGH8TJ2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
m10_couplers_imp_OGH8TJ2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
m10_couplers_imp_OGH8TJ2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
m10_couplers_imp_OGH8TJ2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
m09_couplers_imp_1W0OZBJ2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
m09_couplers_imp_1W0OZBJ2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
m09_couplers_imp_1W0OZBJ2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
m09_couplers_imp_1W0OZBJ2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
m08_couplers_imp_TOSCPD2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
m08_couplers_imp_TOSCPD2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
m08_couplers_imp_TOSCPD2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
m08_couplers_imp_TOSCPD2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
m07_couplers_imp_ASPQ4F2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
m07_couplers_imp_ASPQ4F2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
m07_couplers_imp_ASPQ4F2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
m07_couplers_imp_ASPQ4F2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
m06_couplers_imp_1FDTHPD2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
m06_couplers_imp_1FDTHPD2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
m06_couplers_imp_1FDTHPD2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
m06_couplers_imp_1FDTHPD2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
m05_couplers_imp_1HVMB5U2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
m05_couplers_imp_1HVMB5U2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
m05_couplers_imp_1HVMB5U2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
m05_couplers_imp_1HVMB5U2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
m04_couplers_imp_Q2I5JW2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
m04_couplers_imp_Q2I5JW2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
m04_couplers_imp_Q2I5JW2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
m04_couplers_imp_Q2I5JW2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
m03_couplers_imp_EG60N82default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
m03_couplers_imp_EG60N82default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
m03_couplers_imp_EG60N82default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
m03_couplers_imp_EG60N82default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
m02_couplers_imp_1BNY2CA2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
m02_couplers_imp_1BNY2CA2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
m02_couplers_imp_1BNY2CA2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
m02_couplers_imp_1BNY2CA2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
m01_couplers_imp_1LY1ZUH2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
m01_couplers_imp_1LY1ZUH2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
m01_couplers_imp_1LY1ZUH2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
m01_couplers_imp_1LY1ZUH2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
m00_couplers_imp_LXNC4N2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
m00_couplers_imp_LXNC4N2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
m00_couplers_imp_LXNC4N2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
m00_couplers_imp_LXNC4N2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ACLK2default:default24
 design_1_8c_axi_interconnect_0_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ARESETN2default:default24
 design_1_8c_axi_interconnect_0_12default:defaultZ8-7129h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px? 
?
%s*synth2?
?Finished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2909.859 ; gain = 0.000 ; free physical = 7408 ; free virtual = 11686
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2909.859 ; gain = 0.000 ; free physical = 7408 ; free virtual = 11687
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2909.859 ; gain = 0.000 ; free physical = 7408 ; free virtual = 11687
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
00:00:00.072default:default2
00:00:00.072default:default2
2909.8592default:default2
0.0002default:default2
73872default:default2
116652default:defaultZ17-722h px? 
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
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_processing_system7_0_0/design_1_8c_processing_system7_0_0/design_1_processing_system7_0_0_in_context.xdc2default:default28
"design_1_8c_i/processing_system7_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_processing_system7_0_0/design_1_8c_processing_system7_0_0/design_1_processing_system7_0_0_in_context.xdc2default:default28
"design_1_8c_i/processing_system7_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_axi_bram_ctrl_0_0/design_1_8c_axi_bram_ctrl_0_0/design_1_8c_axi_bram_ctrl_0_6_in_context.xdc2default:default23
design_1_8c_i/axi_bram_ctrl_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_axi_bram_ctrl_0_0/design_1_8c_axi_bram_ctrl_0_0/design_1_8c_axi_bram_ctrl_0_6_in_context.xdc2default:default23
design_1_8c_i/axi_bram_ctrl_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_axi_bram_ctrl_0_1/design_1_8c_axi_bram_ctrl_0_1/design_1_8c_axi_bram_ctrl_0_6_in_context.xdc2default:default23
design_1_8c_i/axi_bram_ctrl_1	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_axi_bram_ctrl_0_1/design_1_8c_axi_bram_ctrl_0_1/design_1_8c_axi_bram_ctrl_0_6_in_context.xdc2default:default23
design_1_8c_i/axi_bram_ctrl_1	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_axi_bram_ctrl_0_2/design_1_8c_axi_bram_ctrl_0_2/design_1_8c_axi_bram_ctrl_0_6_in_context.xdc2default:default23
design_1_8c_i/axi_bram_ctrl_2	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_axi_bram_ctrl_0_2/design_1_8c_axi_bram_ctrl_0_2/design_1_8c_axi_bram_ctrl_0_6_in_context.xdc2default:default23
design_1_8c_i/axi_bram_ctrl_2	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_axi_bram_ctrl_0_3/design_1_8c_axi_bram_ctrl_0_3/design_1_8c_axi_bram_ctrl_0_6_in_context.xdc2default:default23
design_1_8c_i/axi_bram_ctrl_3	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_axi_bram_ctrl_0_3/design_1_8c_axi_bram_ctrl_0_3/design_1_8c_axi_bram_ctrl_0_6_in_context.xdc2default:default23
design_1_8c_i/axi_bram_ctrl_3	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_axi_bram_ctrl_0_4/design_1_8c_axi_bram_ctrl_0_4/design_1_8c_axi_bram_ctrl_0_6_in_context.xdc2default:default23
design_1_8c_i/axi_bram_ctrl_4	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_axi_bram_ctrl_0_4/design_1_8c_axi_bram_ctrl_0_4/design_1_8c_axi_bram_ctrl_0_6_in_context.xdc2default:default23
design_1_8c_i/axi_bram_ctrl_4	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_axi_bram_ctrl_0_5/design_1_8c_axi_bram_ctrl_0_5/design_1_8c_axi_bram_ctrl_0_6_in_context.xdc2default:default23
design_1_8c_i/axi_bram_ctrl_5	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_axi_bram_ctrl_0_5/design_1_8c_axi_bram_ctrl_0_5/design_1_8c_axi_bram_ctrl_0_6_in_context.xdc2default:default23
design_1_8c_i/axi_bram_ctrl_5	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_axi_bram_ctrl_0_6/design_1_8c_axi_bram_ctrl_0_6/design_1_8c_axi_bram_ctrl_0_6_in_context.xdc2default:default23
design_1_8c_i/axi_bram_ctrl_6	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_axi_bram_ctrl_0_6/design_1_8c_axi_bram_ctrl_0_6/design_1_8c_axi_bram_ctrl_0_6_in_context.xdc2default:default23
design_1_8c_i/axi_bram_ctrl_6	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_axi_bram_ctrl_0_7/design_1_8c_axi_bram_ctrl_0_7/design_1_8c_axi_bram_ctrl_0_6_in_context.xdc2default:default23
design_1_8c_i/axi_bram_ctrl_7	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_axi_bram_ctrl_0_7/design_1_8c_axi_bram_ctrl_0_7/design_1_8c_axi_bram_ctrl_0_6_in_context.xdc2default:default23
design_1_8c_i/axi_bram_ctrl_7	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_blk_mem_gen_0_0/design_1_8c_blk_mem_gen_0_0/design_1_8c_blk_mem_gen_0_7_in_context.xdc2default:default21
design_1_8c_i/blk_mem_gen_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_blk_mem_gen_0_0/design_1_8c_blk_mem_gen_0_0/design_1_8c_blk_mem_gen_0_7_in_context.xdc2default:default21
design_1_8c_i/blk_mem_gen_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_blk_mem_gen_0_1/design_1_8c_blk_mem_gen_0_1/design_1_8c_blk_mem_gen_0_7_in_context.xdc2default:default21
design_1_8c_i/blk_mem_gen_1	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_blk_mem_gen_0_1/design_1_8c_blk_mem_gen_0_1/design_1_8c_blk_mem_gen_0_7_in_context.xdc2default:default21
design_1_8c_i/blk_mem_gen_1	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_blk_mem_gen_0_2/design_1_8c_blk_mem_gen_0_2/design_1_8c_blk_mem_gen_0_7_in_context.xdc2default:default21
design_1_8c_i/blk_mem_gen_2	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_blk_mem_gen_0_2/design_1_8c_blk_mem_gen_0_2/design_1_8c_blk_mem_gen_0_7_in_context.xdc2default:default21
design_1_8c_i/blk_mem_gen_2	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_blk_mem_gen_0_3/design_1_8c_blk_mem_gen_0_3/design_1_8c_blk_mem_gen_0_7_in_context.xdc2default:default21
design_1_8c_i/blk_mem_gen_3	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_blk_mem_gen_0_3/design_1_8c_blk_mem_gen_0_3/design_1_8c_blk_mem_gen_0_7_in_context.xdc2default:default21
design_1_8c_i/blk_mem_gen_3	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_blk_mem_gen_0_4/design_1_8c_blk_mem_gen_0_4/design_1_8c_blk_mem_gen_0_7_in_context.xdc2default:default21
design_1_8c_i/blk_mem_gen_4	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_blk_mem_gen_0_4/design_1_8c_blk_mem_gen_0_4/design_1_8c_blk_mem_gen_0_7_in_context.xdc2default:default21
design_1_8c_i/blk_mem_gen_4	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_blk_mem_gen_0_5/design_1_8c_blk_mem_gen_0_5/design_1_8c_blk_mem_gen_0_7_in_context.xdc2default:default21
design_1_8c_i/blk_mem_gen_5	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_blk_mem_gen_0_5/design_1_8c_blk_mem_gen_0_5/design_1_8c_blk_mem_gen_0_7_in_context.xdc2default:default21
design_1_8c_i/blk_mem_gen_5	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_blk_mem_gen_0_6/design_1_8c_blk_mem_gen_0_6/design_1_8c_blk_mem_gen_0_7_in_context.xdc2default:default21
design_1_8c_i/blk_mem_gen_6	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_blk_mem_gen_0_6/design_1_8c_blk_mem_gen_0_6/design_1_8c_blk_mem_gen_0_7_in_context.xdc2default:default21
design_1_8c_i/blk_mem_gen_6	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_blk_mem_gen_0_7/design_1_8c_blk_mem_gen_0_7/design_1_8c_blk_mem_gen_0_7_in_context.xdc2default:default21
design_1_8c_i/blk_mem_gen_7	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_blk_mem_gen_0_7/design_1_8c_blk_mem_gen_0_7/design_1_8c_blk_mem_gen_0_7_in_context.xdc2default:default21
design_1_8c_i/blk_mem_gen_7	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_rst_ps7_0_100M_0/design_1_8c_rst_ps7_0_100M_0/design_1_rst_ps7_0_100M_0_in_context.xdc2default:default22
design_1_8c_i/rst_ps7_0_100M	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_rst_ps7_0_100M_0/design_1_8c_rst_ps7_0_100M_0/design_1_rst_ps7_0_100M_0_in_context.xdc2default:default22
design_1_8c_i/rst_ps7_0_100M	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_xbar_1/design_1_8c_xbar_1/design_1_8c_xbar_1_in_context.xdc2default:default2;
%design_1_8c_i/axi_interconnect_0/xbar	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_xbar_1/design_1_8c_xbar_1/design_1_8c_xbar_1_in_context.xdc2default:default2;
%design_1_8c_i/axi_interconnect_0/xbar	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_auto_pc_0/design_1_8c_auto_pc_0/design_1_8c_auto_pc_14_in_context.xdc2default:default2K
5design_1_8c_i/axi_interconnect_0/s00_couplers/auto_pc	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_auto_pc_0/design_1_8c_auto_pc_0/design_1_8c_auto_pc_14_in_context.xdc2default:default2K
5design_1_8c_i/axi_interconnect_0/s00_couplers/auto_pc	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_auto_pc_1/design_1_8c_auto_pc_1/design_1_8c_auto_pc_14_in_context.xdc2default:default2K
5design_1_8c_i/axi_interconnect_0/s01_couplers/auto_pc	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_auto_pc_1/design_1_8c_auto_pc_1/design_1_8c_auto_pc_14_in_context.xdc2default:default2K
5design_1_8c_i/axi_interconnect_0/s01_couplers/auto_pc	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_auto_pc_2/design_1_8c_auto_pc_2/design_1_8c_auto_pc_14_in_context.xdc2default:default2K
5design_1_8c_i/axi_interconnect_0/s02_couplers/auto_pc	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_auto_pc_2/design_1_8c_auto_pc_2/design_1_8c_auto_pc_14_in_context.xdc2default:default2K
5design_1_8c_i/axi_interconnect_0/s02_couplers/auto_pc	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_auto_pc_3/design_1_8c_auto_pc_3/design_1_8c_auto_pc_14_in_context.xdc2default:default2K
5design_1_8c_i/axi_interconnect_0/s03_couplers/auto_pc	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_auto_pc_3/design_1_8c_auto_pc_3/design_1_8c_auto_pc_14_in_context.xdc2default:default2K
5design_1_8c_i/axi_interconnect_0/s03_couplers/auto_pc	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_auto_pc_4/design_1_8c_auto_pc_4/design_1_8c_auto_pc_14_in_context.xdc2default:default2K
5design_1_8c_i/axi_interconnect_0/s04_couplers/auto_pc	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_auto_pc_4/design_1_8c_auto_pc_4/design_1_8c_auto_pc_14_in_context.xdc2default:default2K
5design_1_8c_i/axi_interconnect_0/s04_couplers/auto_pc	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_auto_pc_5/design_1_8c_auto_pc_5/design_1_8c_auto_pc_14_in_context.xdc2default:default2K
5design_1_8c_i/axi_interconnect_0/s05_couplers/auto_pc	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_auto_pc_5/design_1_8c_auto_pc_5/design_1_8c_auto_pc_14_in_context.xdc2default:default2K
5design_1_8c_i/axi_interconnect_0/s05_couplers/auto_pc	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_auto_pc_6/design_1_8c_auto_pc_6/design_1_8c_auto_pc_14_in_context.xdc2default:default2K
5design_1_8c_i/axi_interconnect_0/s06_couplers/auto_pc	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_auto_pc_6/design_1_8c_auto_pc_6/design_1_8c_auto_pc_14_in_context.xdc2default:default2K
5design_1_8c_i/axi_interconnect_0/s06_couplers/auto_pc	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_auto_pc_7/design_1_8c_auto_pc_7/design_1_8c_auto_pc_14_in_context.xdc2default:default2K
5design_1_8c_i/axi_interconnect_0/s07_couplers/auto_pc	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_auto_pc_7/design_1_8c_auto_pc_7/design_1_8c_auto_pc_14_in_context.xdc2default:default2K
5design_1_8c_i/axi_interconnect_0/s07_couplers/auto_pc	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_auto_pc_8/design_1_8c_auto_pc_8/design_1_8c_auto_pc_17_in_context.xdc2default:default2K
5design_1_8c_i/axi_interconnect_0/s08_couplers/auto_pc	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_auto_pc_8/design_1_8c_auto_pc_8/design_1_8c_auto_pc_17_in_context.xdc2default:default2K
5design_1_8c_i/axi_interconnect_0/s08_couplers/auto_pc	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_multicycle_pipeline_0_40/design_1_8c_multicycle_pipeline_0_40/design_1_8c_multicycle_pipeline_0_44_in_context.xdc2default:default29
#design_1_8c_i/multicycle_pipeline_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_multicycle_pipeline_0_40/design_1_8c_multicycle_pipeline_0_40/design_1_8c_multicycle_pipeline_0_44_in_context.xdc2default:default29
#design_1_8c_i/multicycle_pipeline_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_multicycle_pipeline_0_41/design_1_8c_multicycle_pipeline_0_41/design_1_8c_multicycle_pipeline_0_44_in_context.xdc2default:default29
#design_1_8c_i/multicycle_pipeline_1	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_multicycle_pipeline_0_41/design_1_8c_multicycle_pipeline_0_41/design_1_8c_multicycle_pipeline_0_44_in_context.xdc2default:default29
#design_1_8c_i/multicycle_pipeline_1	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_multicycle_pipeline_0_42/design_1_8c_multicycle_pipeline_0_42/design_1_8c_multicycle_pipeline_0_44_in_context.xdc2default:default29
#design_1_8c_i/multicycle_pipeline_2	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_multicycle_pipeline_0_42/design_1_8c_multicycle_pipeline_0_42/design_1_8c_multicycle_pipeline_0_44_in_context.xdc2default:default29
#design_1_8c_i/multicycle_pipeline_2	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_multicycle_pipeline_0_43/design_1_8c_multicycle_pipeline_0_43/design_1_8c_multicycle_pipeline_0_44_in_context.xdc2default:default29
#design_1_8c_i/multicycle_pipeline_3	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_multicycle_pipeline_0_43/design_1_8c_multicycle_pipeline_0_43/design_1_8c_multicycle_pipeline_0_44_in_context.xdc2default:default29
#design_1_8c_i/multicycle_pipeline_3	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_multicycle_pipeline_0_44/design_1_8c_multicycle_pipeline_0_44/design_1_8c_multicycle_pipeline_0_44_in_context.xdc2default:default29
#design_1_8c_i/multicycle_pipeline_4	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_multicycle_pipeline_0_44/design_1_8c_multicycle_pipeline_0_44/design_1_8c_multicycle_pipeline_0_44_in_context.xdc2default:default29
#design_1_8c_i/multicycle_pipeline_4	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_multicycle_pipeline_0_45/design_1_8c_multicycle_pipeline_0_45/design_1_8c_multicycle_pipeline_0_44_in_context.xdc2default:default29
#design_1_8c_i/multicycle_pipeline_5	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_multicycle_pipeline_0_45/design_1_8c_multicycle_pipeline_0_45/design_1_8c_multicycle_pipeline_0_44_in_context.xdc2default:default29
#design_1_8c_i/multicycle_pipeline_5	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_multicycle_pipeline_0_46/design_1_8c_multicycle_pipeline_0_46/design_1_8c_multicycle_pipeline_0_44_in_context.xdc2default:default29
#design_1_8c_i/multicycle_pipeline_6	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_multicycle_pipeline_0_46/design_1_8c_multicycle_pipeline_0_46/design_1_8c_multicycle_pipeline_0_44_in_context.xdc2default:default29
#design_1_8c_i/multicycle_pipeline_6	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_multicycle_pipeline_0_47/design_1_8c_multicycle_pipeline_0_47/design_1_8c_multicycle_pipeline_0_44_in_context.xdc2default:default29
#design_1_8c_i/multicycle_pipeline_7	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_multicycle_pipeline_0_47/design_1_8c_multicycle_pipeline_0_47/design_1_8c_multicycle_pipeline_0_44_in_context.xdc2default:default29
#design_1_8c_i/multicycle_pipeline_7	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2?
x/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2?
x/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2973.8912default:default2
0.0002default:default2
72972default:default2
115902default:defaultZ17-722h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2
00:00:00.012default:default2
2973.8912default:default2
0.0002default:default2
72972default:default2
115902default:defaultZ17-722h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2/
design_1_8c_i/blk_mem_gen_02default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2/
design_1_8c_i/blk_mem_gen_12default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2/
design_1_8c_i/blk_mem_gen_22default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2/
design_1_8c_i/blk_mem_gen_32default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2/
design_1_8c_i/blk_mem_gen_42default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2/
design_1_8c_i/blk_mem_gen_52default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2/
design_1_8c_i/blk_mem_gen_62default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2/
design_1_8c_i/blk_mem_gen_72default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
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
?Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 2973.891 ; gain = 64.031 ; free physical = 7359 ; free virtual = 11649
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 2973.891 ; gain = 64.031 ; free physical = 7359 ; free virtual = 11649
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 2973.891 ; gain = 64.031 ; free physical = 7360 ; free virtual = 11651
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
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 2973.891 ; gain = 64.031 ; free physical = 7360 ; free virtual = 11652
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 2973.891 ; gain = 64.031 ; free physical = 7346 ; free virtual = 11648
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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 2973.891 ; gain = 64.031 ; free physical = 7215 ; free virtual = 11540
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
?Finished Timing Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 2973.891 ; gain = 64.031 ; free physical = 7214 ; free virtual = 11539
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
?Finished Technology Mapping : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 2973.891 ; gain = 64.031 ; free physical = 7209 ; free virtual = 11534
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
?Finished IO Insertion : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 2973.891 ; gain = 64.031 ; free physical = 7208 ; free virtual = 11538
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 2973.891 ; gain = 64.031 ; free physical = 7208 ; free virtual = 11538
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 2973.891 ; gain = 64.031 ; free physical = 7210 ; free virtual = 11537
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 2973.891 ; gain = 64.031 ; free physical = 7209 ; free virtual = 11537
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 2973.891 ; gain = 64.031 ; free physical = 7209 ; free virtual = 11537
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 2973.891 ; gain = 64.031 ; free physical = 7209 ; free virtual = 11537
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
f
%s
*synth2N
:+------+-------------------------------------+----------+
2default:defaulth p
x
? 
f
%s
*synth2N
:|      |BlackBox name                        |Instances |
2default:defaulth p
x
? 
f
%s
*synth2N
:+------+-------------------------------------+----------+
2default:defaulth p
x
? 
f
%s
*synth2N
:|1     |design_1_8c_xbar_1                   |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|2     |design_1_8c_auto_pc_0                |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|3     |design_1_8c_auto_pc_1                |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|4     |design_1_8c_auto_pc_2                |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|5     |design_1_8c_auto_pc_3                |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|6     |design_1_8c_auto_pc_4                |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|7     |design_1_8c_auto_pc_5                |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|8     |design_1_8c_auto_pc_6                |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|9     |design_1_8c_auto_pc_7                |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|10    |design_1_8c_auto_pc_8                |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|11    |design_1_8c_axi_bram_ctrl_0_0        |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|12    |design_1_8c_axi_bram_ctrl_0_1        |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|13    |design_1_8c_axi_bram_ctrl_0_2        |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|14    |design_1_8c_axi_bram_ctrl_0_3        |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|15    |design_1_8c_axi_bram_ctrl_0_4        |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|16    |design_1_8c_axi_bram_ctrl_0_5        |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|17    |design_1_8c_axi_bram_ctrl_0_6        |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|18    |design_1_8c_axi_bram_ctrl_0_7        |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|19    |design_1_8c_blk_mem_gen_0_0          |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|20    |design_1_8c_blk_mem_gen_0_1          |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|21    |design_1_8c_blk_mem_gen_0_2          |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|22    |design_1_8c_blk_mem_gen_0_3          |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|23    |design_1_8c_blk_mem_gen_0_4          |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|24    |design_1_8c_blk_mem_gen_0_5          |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|25    |design_1_8c_blk_mem_gen_0_6          |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|26    |design_1_8c_blk_mem_gen_0_7          |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|27    |design_1_8c_multicycle_pipeline_0_40 |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|28    |design_1_8c_multicycle_pipeline_0_41 |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|29    |design_1_8c_multicycle_pipeline_0_42 |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|30    |design_1_8c_multicycle_pipeline_0_43 |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|31    |design_1_8c_multicycle_pipeline_0_44 |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|32    |design_1_8c_multicycle_pipeline_0_45 |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|33    |design_1_8c_multicycle_pipeline_0_46 |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|34    |design_1_8c_multicycle_pipeline_0_47 |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|35    |design_1_8c_processing_system7_0_0   |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|36    |design_1_8c_rst_ps7_0_100M_0         |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:+------+-------------------------------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
_
%s*synth2G
3+------+----------------------------------+------+
2default:defaulth px? 
_
%s*synth2G
3|      |Cell                              |Count |
2default:defaulth px? 
_
%s*synth2G
3+------+----------------------------------+------+
2default:defaulth px? 
_
%s*synth2G
3|1     |design_1_8c_auto_pc               |     9|
2default:defaulth px? 
_
%s*synth2G
3|10    |design_1_8c_axi_bram_ctrl_0       |     8|
2default:defaulth px? 
_
%s*synth2G
3|18    |design_1_8c_blk_mem_gen_0         |     8|
2default:defaulth px? 
_
%s*synth2G
3|26    |design_1_8c_multicycle_pipeline_0 |     8|
2default:defaulth px? 
_
%s*synth2G
3|34    |design_1_8c_processing_system7_0  |     1|
2default:defaulth px? 
_
%s*synth2G
3|35    |design_1_8c_rst_ps7_0_100M        |     1|
2default:defaulth px? 
_
%s*synth2G
3|36    |design_1_8c_xbar                  |     1|
2default:defaulth px? 
_
%s*synth2G
3+------+----------------------------------+------+
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 2973.891 ; gain = 64.031 ; free physical = 7209 ; free virtual = 11537
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
GSynthesis finished with 0 errors, 0 critical warnings and 67 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 2973.891 ; gain = 0.000 ; free physical = 7256 ; free virtual = 11584
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:22 ; elapsed = 00:00:22 . Memory (MB): peak = 2973.891 ; gain = 64.031 ; free physical = 7256 ; free virtual = 11584
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
00:00:00.052default:default2
00:00:00.052default:default2
2973.8912default:default2
0.0002default:default2
73512default:default2
116792default:defaultZ17-722h px? 
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
2973.8912default:default2
0.0002default:default2
72802default:default2
116082default:defaultZ17-722h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
8f53d1bc2default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1502default:default2
1582default:default2
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
00:00:302default:default2
00:00:272default:default2
2973.8912default:default2
64.0312default:default2
74802default:default2
118082default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/synth_1/design_1_8c_wrapper.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
|Executing : report_utilization -file design_1_8c_wrapper_utilization_synth.rpt -pb design_1_8c_wrapper_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Jul 11 21:16:19 20222default:defaultZ17-206h px? 


End Record