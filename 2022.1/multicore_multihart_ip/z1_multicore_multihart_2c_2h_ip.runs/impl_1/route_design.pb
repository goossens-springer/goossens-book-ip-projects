
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
B
-Phase 1 Build RT Design | Checksum: 8334800e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:33 ; elapsed = 00:00:21 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 5038 ; free virtual = 122682default:defaulth px? 
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
M
8Phase 2.1 Fix Topology Constraints | Checksum: 8334800e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:33 ; elapsed = 00:00:21 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 5006 ; free virtual = 122362default:defaulth px? 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.2 Pre Route Cleanup | Checksum: 8334800e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:33 ; elapsed = 00:00:21 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 5006 ; free virtual = 122362default:defaulth px? 
p

Phase %s%s
101*constraints2
2.3 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.3 Update Timing | Checksum: 11560da99
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:49 ; elapsed = 00:00:27 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 4957 ; free virtual = 122052default:defaulth px? 
?
Intermediate Timing Summary %s164*route2N
:| WNS=-4.760 | TNS=-35848.061| WHS=-0.195 | THS=-148.924|
2default:defaultZ35-416h px? 
H
3Phase 2 Router Initialization | Checksum: 89124d3a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:57 ; elapsed = 00:00:29 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 4957 ; free virtual = 122012default:defaulth px? 
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
C
.Phase 3.1 Global Routing | Checksum: 89124d3a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:57 ; elapsed = 00:00:29 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 4957 ; free virtual = 122012default:defaulth px? 
B
-Phase 3 Initial Routing | Checksum: 663b1bd4
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:23 ; elapsed = 00:00:35 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 4961 ; free virtual = 121972default:defaulth px? 
?
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
2032default:default2?
?The top 5 pins with tight setup and hold constraints:

+====================+===================+==================================================================================================================================================+
| Launch Setup Clock | Launch Hold Clock | Pin                                                                                                                                              |
+====================+===================+==================================================================================================================================================+
| clk_fpga_0         | clk_fpga_0        | design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/is_reg_computed_1_25_0_fu_1262_reg[0]/D                   |
| clk_fpga_0         | clk_fpga_0        | design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/is_reg_computed_1_19_0_fu_1238_reg[0]/D                   |
| clk_fpga_0         | clk_fpga_0        | design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter1_d_state_d_i_type_V_reg_2265_reg[2]/D |
| clk_fpga_0         | clk_fpga_0        | design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/is_reg_computed_0_9_0_fu_1070_reg[0]/D                    |
| clk_fpga_0         | clk_fpga_0        | design_1_2c_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_197_1_fu_167/ap_phi_reg_pp0_iter1_d_state_d_i_type_V_reg_2265_reg[0]/D |
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
Intermediate Timing Summary %s164*route2M
9| WNS=-6.488 | TNS=-60516.089| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 4.1 Global Iteration 0 | Checksum: e089565d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:30 ; elapsed = 00:01:51 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 4952 ; free virtual = 121872default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-6.348 | TNS=-59442.904| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 2598d2eab
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:26 ; elapsed = 00:02:58 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 4771 ; free virtual = 120792default:defaulth px? 
u

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px? 
G
2Phase 4.3 Global Iteration 2 | Checksum: abf1a69b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:30 ; elapsed = 00:03:02 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 4775 ; free virtual = 120842default:defaulth px? 
E
0Phase 4 Rip-up And Reroute | Checksum: abf1a69b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:30 ; elapsed = 00:03:02 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 4775 ; free virtual = 120842default:defaulth px? 
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
0Phase 5.1.1 Update Timing | Checksum: 16734fc34
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:34 ; elapsed = 00:03:03 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 4794 ; free virtual = 120872default:defaulth px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-6.334 | TNS=-58015.856| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 20c046ba1
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:35 ; elapsed = 00:03:03 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 4787 ; free virtual = 120842default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 20c046ba1
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:35 ; elapsed = 00:03:03 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 4786 ; free virtual = 120842default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 20c046ba1
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:35 ; elapsed = 00:03:03 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 4786 ; free virtual = 120842default:defaulth px? 
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
E
0Phase 6.1.1 Update Timing | Checksum: 2bef1c943
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:40 ; elapsed = 00:03:05 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 4785 ; free virtual = 120872default:defaulth px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-6.334 | TNS=-58014.921| WHS=0.024  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 25786c410
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:40 ; elapsed = 00:03:05 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 4785 ; free virtual = 120872default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 25786c410
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:40 ; elapsed = 00:03:05 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 4785 ; free virtual = 120872default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 1cdebc26c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:41 ; elapsed = 00:03:05 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 4785 ; free virtual = 120892default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 1cdebc26c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:41 ; elapsed = 00:03:06 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 4788 ; free virtual = 120882default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 14f30647f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:44 ; elapsed = 00:03:08 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 4784 ; free virtual = 120862default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2M
9| WNS=-6.334 | TNS=-58014.921| WHS=0.024  | THS=0.000  |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
G
2Phase 10 Post Router Timing | Checksum: 14f30647f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:48 ; elapsed = 00:03:09 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 4784 ; free virtual = 120852default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:48 ; elapsed = 00:03:09 . Memory (MB): peak = 4002.812 ; gain = 0.000 ; free physical = 4845 ; free virtual = 121472default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
6102default:default2
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
00:06:052default:default2
00:03:142default:default2
4002.8122default:default2
0.0002default:default2
48452default:default2
121472default:defaultZ17-722h px? 
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
4002.8122default:default2
0.0002default:default2
47942default:default2
121452default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multihart_ip/z1_multicore_multihart_2c_2h_ip.runs/impl_1/design_1_2c_2h_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:102default:default2
00:00:052default:default2
4002.8122default:default2
0.0002default:default2
48232default:default2
121362default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_drc -file design_1_2c_2h_wrapper_drc_routed.rpt -pb design_1_2c_2h_wrapper_drc_routed.pb -rpx design_1_2c_2h_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_drc -file design_1_2c_2h_wrapper_drc_routed.rpt -pb design_1_2c_2h_wrapper_drc_routed.pb -rpx design_1_2c_2h_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multihart_ip/z1_multicore_multihart_2c_2h_ip.runs/impl_1/design_1_2c_2h_wrapper_drc_routed.rpt?/home/goossens/book-2022.1/new_book_ip/multicore_multihart_ip/z1_multicore_multihart_2c_2h_ip.runs/impl_1/design_1_2c_2h_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
report_drc: 2default:default2
00:00:192default:default2
00:00:062default:default2
4002.8122default:default2
0.0002default:default2
47992default:default2
121102default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file design_1_2c_2h_wrapper_methodology_drc_routed.rpt -pb design_1_2c_2h_wrapper_methodology_drc_routed.pb -rpx design_1_2c_2h_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file design_1_2c_2h_wrapper_methodology_drc_routed.rpt -pb design_1_2c_2h_wrapper_methodology_drc_routed.pb -rpx design_1_2c_2h_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
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
?/home/goossens/book-2022.1/new_book_ip/multicore_multihart_ip/z1_multicore_multihart_2c_2h_ip.runs/impl_1/design_1_2c_2h_wrapper_methodology_drc_routed.rpt?/home/goossens/book-2022.1/new_book_ip/multicore_multihart_ip/z1_multicore_multihart_2c_2h_ip.runs/impl_1/design_1_2c_2h_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_power -file design_1_2c_2h_wrapper_power_routed.rpt -pb design_1_2c_2h_wrapper_power_summary_routed.pb -rpx design_1_2c_2h_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file design_1_2c_2h_wrapper_power_routed.rpt -pb design_1_2c_2h_wrapper_power_summary_routed.pb -rpx design_1_2c_2h_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
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
6222default:default2
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
00:00:212default:default2
00:00:092default:default2
4037.1252default:default2
34.3122default:default2
47152default:default2
120902default:defaultZ17-722h px? 
?
%s4*runtcl2?
yExecuting : report_route_status -file design_1_2c_2h_wrapper_route_status.rpt -pb design_1_2c_2h_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -report_unconstrained -file design_1_2c_2h_wrapper_timing_summary_routed.rpt -pb design_1_2c_2h_wrapper_timing_summary_routed.pb -rpx design_1_2c_2h_wrapper_timing_summary_routed.rpx -warn_on_violation 
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
_Executing : report_incremental_reuse -file design_1_2c_2h_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2s
_Executing : report_clock_utilization -file design_1_2c_2h_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file design_1_2c_2h_wrapper_bus_skew_routed.rpt -pb design_1_2c_2h_wrapper_bus_skew_routed.pb -rpx design_1_2c_2h_wrapper_bus_skew_routed.rpx
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