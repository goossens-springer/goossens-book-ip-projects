
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
-Phase 1 Build RT Design | Checksum: 7e43a963
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:19 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4573 ; free virtual = 135152default:defaulth px? 
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
8Phase 2.1 Fix Topology Constraints | Checksum: 7e43a963
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:19 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4541 ; free virtual = 134822default:defaulth px? 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.2 Pre Route Cleanup | Checksum: 7e43a963
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:19 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4541 ; free virtual = 134822default:defaulth px? 
p

Phase %s%s
101*constraints2
2.3 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.3 Update Timing | Checksum: 15247a2e2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:38 ; elapsed = 00:00:23 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4515 ; free virtual = 134562default:defaulth px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-1.430 | TNS=-2709.694| WHS=-0.178 | THS=-122.408|
2default:defaultZ35-416h px? 
H
3Phase 2 Router Initialization | Checksum: b6d51b84
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:43 ; elapsed = 00:00:25 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4508 ; free virtual = 134502default:defaulth px? 
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
.Phase 3.1 Global Routing | Checksum: b6d51b84
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:43 ; elapsed = 00:00:25 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4511 ; free virtual = 134522default:defaulth px? 
C
.Phase 3 Initial Routing | Checksum: 2a57aa03a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:02 ; elapsed = 00:00:29 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4498 ; free virtual = 134402default:defaulth px? 
?

>Design has %s pins with tight setup and hold constraints.

%s
244*route2
1172default:default2?	
?	The top 5 pins with tight setup and hold constraints:

+====================+===================+=================================================================================+
| Launch Setup Clock | Launch Hold Clock | Pin                                                                             |
+====================+===================+=================================================================================+
| clk_fpga_0         | clk_fpga_0        | design_1_2c_i/multicycle_pipeline_1/inst/is_reg_computed_30_7_reg_7813_reg[0]/D |
| clk_fpga_0         | clk_fpga_0        | design_1_2c_i/multicycle_pipeline_1/inst/is_reg_computed_23_7_reg_8576_reg[0]/D |
| clk_fpga_0         | clk_fpga_0        | design_1_2c_i/multicycle_pipeline_1/inst/is_reg_computed_31_7_reg_7704_reg[0]/D |
| clk_fpga_0         | clk_fpga_0        | design_1_2c_i/multicycle_pipeline_1/inst/is_reg_computed_27_7_reg_8140_reg[0]/D |
| clk_fpga_0         | clk_fpga_0        | design_1_2c_i/multicycle_pipeline_1/inst/is_reg_computed_22_7_reg_8685_reg[0]/D |
+--------------------+-------------------+---------------------------------------------------------------------------------+

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
9| WNS=-2.848 | TNS=-10308.465| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1850e6c78
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:18 ; elapsed = 00:00:59 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4511 ; free virtual = 134532default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-2.691 | TNS=-10026.333| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 18784dc6e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:22 ; elapsed = 00:01:36 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4497 ; free virtual = 134392default:defaulth px? 
u

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px? 
H
3Phase 4.3 Global Iteration 2 | Checksum: 160c31c48
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:30 ; elapsed = 00:01:41 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4502 ; free virtual = 134442default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 160c31c48
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:30 ; elapsed = 00:01:41 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4502 ; free virtual = 134442default:defaulth px? 
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
0Phase 5.1.1 Update Timing | Checksum: 1a7371100
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:33 ; elapsed = 00:01:41 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4502 ; free virtual = 134442default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-2.576 | TNS=-9617.374| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 1224e9f40
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:34 ; elapsed = 00:01:42 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4497 ; free virtual = 134392default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 1224e9f40
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:34 ; elapsed = 00:01:42 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4497 ; free virtual = 134392default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 1224e9f40
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:34 ; elapsed = 00:01:42 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4497 ; free virtual = 134392default:defaulth px? 
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
/Phase 6.1.1 Update Timing | Checksum: d1428d42
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:37 ; elapsed = 00:01:43 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4496 ; free virtual = 134382default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-2.576 | TNS=-9331.196| WHS=0.016  | THS=0.000  |
2default:defaultZ35-416h px? 
B
-Phase 6.1 Hold Fix Iter | Checksum: d652b24c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:37 ; elapsed = 00:01:43 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4496 ; free virtual = 134382default:defaulth px? 
@
+Phase 6 Post Hold Fix | Checksum: d652b24c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:37 ; elapsed = 00:01:43 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4496 ; free virtual = 134382default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 10a541bf1
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:37 ; elapsed = 00:01:43 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4496 ; free virtual = 134382default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 10a541bf1
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:37 ; elapsed = 00:01:43 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4493 ; free virtual = 134352default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
D
/Phase 9 Depositing Routes | Checksum: 7a358c9c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:39 ; elapsed = 00:01:45 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4491 ; free virtual = 134332default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2L
8| WNS=-2.576 | TNS=-9331.196| WHS=0.016  | THS=0.000  |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
F
1Phase 10 Post Router Timing | Checksum: 7a358c9c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:42 ; elapsed = 00:01:45 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4491 ; free virtual = 134332default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:42 ; elapsed = 00:01:45 . Memory (MB): peak = 3904.719 ; gain = 0.000 ; free physical = 4548 ; free virtual = 134902default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
4542default:default2
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
00:03:522default:default2
00:01:482default:default2
3904.7192default:default2
0.0002default:default2
45482default:default2
134902default:defaultZ17-722h px? 
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
00:00:032default:default2
00:00:012default:default2
3904.7192default:default2
0.0002default:default2
45112default:default2
134922default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_2c_ip.runs/impl_1/design_1_2c_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_drc -file design_1_2c_wrapper_drc_routed.rpt -pb design_1_2c_wrapper_drc_routed.pb -rpx design_1_2c_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_drc -file design_1_2c_wrapper_drc_routed.rpt -pb design_1_2c_wrapper_drc_routed.pb -rpx design_1_2c_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_2c_ip.runs/impl_1/design_1_2c_wrapper_drc_routed.rpt?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_2c_ip.runs/impl_1/design_1_2c_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file design_1_2c_wrapper_methodology_drc_routed.rpt -pb design_1_2c_wrapper_methodology_drc_routed.pb -rpx design_1_2c_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file design_1_2c_wrapper_methodology_drc_routed.rpt -pb design_1_2c_wrapper_methodology_drc_routed.pb -rpx design_1_2c_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
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
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_2c_ip.runs/impl_1/design_1_2c_wrapper_methodology_drc_routed.rpt?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_2c_ip.runs/impl_1/design_1_2c_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_power -file design_1_2c_wrapper_power_routed.rpt -pb design_1_2c_wrapper_power_summary_routed.pb -rpx design_1_2c_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file design_1_2c_wrapper_power_routed.rpt -pb design_1_2c_wrapper_power_summary_routed.pb -rpx design_1_2c_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
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
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
4662default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2?
sExecuting : report_route_status -file design_1_2c_wrapper_route_status.rpt -pb design_1_2c_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -report_unconstrained -file design_1_2c_wrapper_timing_summary_routed.rpt -pb design_1_2c_wrapper_timing_summary_routed.pb -rpx design_1_2c_wrapper_timing_summary_routed.rpx -warn_on_violation 
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
%s4*runtcl2p
\Executing : report_incremental_reuse -file design_1_2c_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2p
\Executing : report_clock_utilization -file design_1_2c_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file design_1_2c_wrapper_bus_skew_routed.rpt -pb design_1_2c_wrapper_bus_skew_routed.pb -rpx design_1_2c_wrapper_bus_skew_routed.rpx
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