
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
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
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
82default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
C
.Phase 1 Build RT Design | Checksum: 141d2a5b3
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:41 ; elapsed = 00:00:22 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10744 ; free virtual = 178952default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
2.1 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 2.1 Fix Topology Constraints | Checksum: 141d2a5b3
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:41 ; elapsed = 00:00:22 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10711 ; free virtual = 178622default:defaulth px? 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 2.2 Pre Route Cleanup | Checksum: 141d2a5b3
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:42 ; elapsed = 00:00:22 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10708 ; free virtual = 178602default:defaulth px? 
p

Phase %s%s
101*constraints2
2.3 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.3 Update Timing | Checksum: 18076c0ee
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:10 ; elapsed = 00:00:33 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10642 ; free virtual = 177932default:defaulth px? 
?
Intermediate Timing Summary %s164*route2N
:| WNS=-5.376 | TNS=-96964.701| WHS=-0.238 | THS=-282.943|
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 1193a8d30
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:26 ; elapsed = 00:00:37 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10657 ; free virtual = 178072default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px? 
D
/Phase 3.1 Global Routing | Checksum: 1193a8d30
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:27 ; elapsed = 00:00:37 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10657 ; free virtual = 178072default:defaulth px? 
C
.Phase 3 Initial Routing | Checksum: 2027ff16f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:06 ; elapsed = 00:00:46 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10631 ; free virtual = 177812default:defaulth px? 
?
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
5102default:default2?
?The top 5 pins with tight setup and hold constraints:

+====================+===================+==================================================================================================================================================+
| Launch Setup Clock | Launch Hold Clock | Pin                                                                                                                                              |
+====================+===================+==================================================================================================================================================+
| clk_fpga_0         | clk_fpga_0        | design_1_4c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_169/ap_phi_reg_pp0_iter1_d_state_d_i_type_V_reg_2269_reg[0]/D |
| clk_fpga_0         | clk_fpga_0        | design_1_4c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_169/ap_phi_reg_pp0_iter1_d_state_d_i_type_V_reg_2269_reg[2]/D |
| clk_fpga_0         | clk_fpga_0        | design_1_4c_2h_i/multihart_ip_2/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_169/ap_phi_reg_pp0_iter1_d_state_d_i_type_V_reg_2269_reg[1]/D |
| clk_fpga_0         | clk_fpga_0        | design_1_4c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_169/ap_phi_reg_pp0_iter1_d_to_i_is_valid_V_reg_2351_reg[0]/D  |
| clk_fpga_0         | clk_fpga_0        | design_1_4c_2h_i/multihart_ip_1/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_169/is_reg_computed_0_4_0_fu_1054_reg[0]/D                    |
+--------------------+-------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
2default:defaultZ35-580h px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2N
:| WNS=-6.689 | TNS=-145293.816| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 4.1 Global Iteration 0 | Checksum: e8a91cbb
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:09 ; elapsed = 00:02:36 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10643 ; free virtual = 177882default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2N
:| WNS=-6.690 | TNS=-147364.815| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 150d670d8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:06 ; elapsed = 00:04:22 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10636 ; free virtual = 177772default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 150d670d8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:06 ; elapsed = 00:04:22 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10636 ; free virtual = 177772default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 5.1.1 Update Timing | Checksum: 18d852822
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:13 ; elapsed = 00:04:24 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10635 ; free virtual = 177762default:defaulth px? 
?
Intermediate Timing Summary %s164*route2N
:| WNS=-6.689 | TNS=-142274.206| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 1011b048c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:14 ; elapsed = 00:04:24 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10628 ; free virtual = 177702default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 1011b048c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:14 ; elapsed = 00:04:25 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10628 ; free virtual = 177702default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 1011b048c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:15 ; elapsed = 00:04:25 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10628 ; free virtual = 177702default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 6.1.1 Update Timing | Checksum: 84f47c5f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:22 ; elapsed = 00:04:27 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10628 ; free virtual = 177692default:defaulth px? 
?
Intermediate Timing Summary %s164*route2N
:| WNS=-6.647 | TNS=-142148.565| WHS=-0.024 | THS=-0.045 |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 12a983ff0
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:23 ; elapsed = 00:04:28 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10628 ; free virtual = 177692default:defaulth px? 
@
+Phase 6 Post Hold Fix | Checksum: a957fbec
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:23 ; elapsed = 00:04:28 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10628 ; free virtual = 177692default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 159b82b66
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:23 ; elapsed = 00:04:28 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10628 ; free virtual = 177692default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 159b82b66
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:24 ; elapsed = 00:04:28 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10628 ; free virtual = 177692default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 20125224d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:29 ; elapsed = 00:04:32 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10621 ; free virtual = 177612default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
10.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 10.1 Update Timing | Checksum: 1d6d86a91
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:37 ; elapsed = 00:04:34 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10636 ; free virtual = 177762default:defaulth px? 
?
Estimated Timing Summary %s
57*route2N
:| WNS=-6.647 | TNS=-142148.565| WHS=0.050  | THS=0.000  |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
G
2Phase 10 Post Router Timing | Checksum: 1d6d86a91
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:37 ; elapsed = 00:04:35 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10636 ; free virtual = 177762default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:37 ; elapsed = 00:04:35 . Memory (MB): peak = 4207.816 ; gain = 0.000 ; free physical = 10710 ; free virtual = 178502default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
9322default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:09:052default:default2
00:04:422default:default2
4207.8162default:default2
0.0002default:default2
107102default:default2
178502default:defaultZ17-722h px? 
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
00:00:082default:default2
00:00:032default:default2
4207.8162default:default2
0.0002default:default2
105882default:default2
178452default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multihart_ip/z1_multicore_multihart_4c_2h_ip.runs/impl_1/design_1_4c_2h_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:172default:default2
00:00:082default:default2
4207.8162default:default2
0.0002default:default2
106582default:default2
178262default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_drc -file design_1_4c_2h_wrapper_drc_routed.rpt -pb design_1_4c_2h_wrapper_drc_routed.pb -rpx design_1_4c_2h_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_drc -file design_1_4c_2h_wrapper_drc_routed.rpt -pb design_1_4c_2h_wrapper_drc_routed.pb -rpx design_1_4c_2h_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multihart_ip/z1_multicore_multihart_4c_2h_ip.runs/impl_1/design_1_4c_2h_wrapper_drc_routed.rpt?/home/goossens/book-2022.1/new_book_ip/multicore_multihart_ip/z1_multicore_multihart_4c_2h_ip.runs/impl_1/design_1_4c_2h_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
report_drc: 2default:default2
00:00:292default:default2
00:00:092default:default2
4207.8162default:default2
0.0002default:default2
106152default:default2
177832default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file design_1_4c_2h_wrapper_methodology_drc_routed.rpt -pb design_1_4c_2h_wrapper_methodology_drc_routed.pb -rpx design_1_4c_2h_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file design_1_4c_2h_wrapper_methodology_drc_routed.rpt -pb design_1_4c_2h_wrapper_methodology_drc_routed.pb -rpx design_1_4c_2h_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
82default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
609*	vivadotcl2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multihart_ip/z1_multicore_multihart_4c_2h_ip.runs/impl_1/design_1_4c_2h_wrapper_methodology_drc_routed.rpt?/home/goossens/book-2022.1/new_book_ip/multicore_multihart_ip/z1_multicore_multihart_4c_2h_ip.runs/impl_1/design_1_4c_2h_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2(
report_methodology: 2default:default2
00:00:382default:default2
00:00:082default:default2
4207.8162default:default2
0.0002default:default2
105542default:default2
177692default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_power -file design_1_4c_2h_wrapper_power_routed.rpt -pb design_1_4c_2h_wrapper_power_summary_routed.pb -rpx design_1_4c_2h_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file design_1_4c_2h_wrapper_power_routed.rpt -pb design_1_4c_2h_wrapper_power_summary_routed.pb -rpx design_1_4c_2h_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
?Detected over-assertion of set/reset/preset/clear net with high fanouts, power estimation might not be accurate. Please run Tool - Power Constraint Wizard to set proper switching activities for control signals.282*powerZ33-332h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
9442default:default2
32default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
report_power: 2default:default2
00:00:372default:default2
00:00:152default:default2
4232.8282default:default2
25.0122default:default2
103582default:default2
176452default:defaultZ17-722h px? 
?
%s4*runtcl2?
yExecuting : report_route_status -file design_1_4c_2h_wrapper_route_status.rpt -pb design_1_4c_2h_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -report_unconstrained -file design_1_4c_2h_wrapper_timing_summary_routed.rpt -pb design_1_4c_2h_wrapper_timing_summary_routed.pb -rpx design_1_4c_2h_wrapper_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px? 
?
%s4*runtcl2s
_Executing : report_incremental_reuse -file design_1_4c_2h_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2s
_Executing : report_clock_utilization -file design_1_4c_2h_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file design_1_4c_2h_wrapper_bus_skew_routed.rpt -pb design_1_4c_2h_wrapper_bus_skew_routed.pb -rpx design_1_4c_2h_wrapper_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 


End Record