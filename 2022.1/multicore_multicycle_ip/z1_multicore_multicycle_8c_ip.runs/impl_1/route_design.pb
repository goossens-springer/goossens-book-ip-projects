
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
-Phase 1 Build RT Design | Checksum: fc499a58
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:47 ; elapsed = 00:00:23 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 6028 ; free virtual = 104652default:defaulth px? 
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
8Phase 2.1 Fix Topology Constraints | Checksum: fc499a58
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:47 ; elapsed = 00:00:24 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5988 ; free virtual = 104262default:defaulth px? 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.2 Pre Route Cleanup | Checksum: fc499a58
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:48 ; elapsed = 00:00:24 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5988 ; free virtual = 104272default:defaulth px? 
p

Phase %s%s
101*constraints2
2.3 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.3 Update Timing | Checksum: 1656c8a3b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:24 ; elapsed = 00:00:37 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5938 ; free virtual = 103852default:defaulth px? 
?
Intermediate Timing Summary %s164*route2N
:| WNS=-3.346 | TNS=-53554.060| WHS=-0.219 | THS=-422.221|
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 194d428df
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:44 ; elapsed = 00:00:42 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5917 ; free virtual = 103642default:defaulth px? 
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
/Phase 3.1 Global Routing | Checksum: 194d428df
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:44 ; elapsed = 00:00:42 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5917 ; free virtual = 103642default:defaulth px? 
B
-Phase 3 Initial Routing | Checksum: cbfa166b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:24 ; elapsed = 00:00:50 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5913 ; free virtual = 103562default:defaulth px? 
?

>Design has %s pins with tight setup and hold constraints.

%s
244*route2
8752default:default2?	
?	The top 5 pins with tight setup and hold constraints:

+====================+===================+=================================================================================+
| Launch Setup Clock | Launch Hold Clock | Pin                                                                             |
+====================+===================+=================================================================================+
| clk_fpga_0         | clk_fpga_0        | design_1_8c_i/multicycle_pipeline_1/inst/control_s_axi_U/int_auto_restart_reg/D |
| clk_fpga_0         | clk_fpga_0        | design_1_8c_i/multicycle_pipeline_1/inst/control_s_axi_U/int_ap_start_reg/D     |
| clk_fpga_0         | clk_fpga_0        | design_1_8c_i/multicycle_pipeline_7/inst/is_reg_computed_21_7_reg_8798_reg[0]/D |
| clk_fpga_0         | clk_fpga_0        | design_1_8c_i/multicycle_pipeline_2/inst/is_reg_computed_20_7_reg_8907_reg[0]/D |
| clk_fpga_0         | clk_fpga_0        | design_1_8c_i/multicycle_pipeline_7/inst/is_reg_computed_20_7_reg_8907_reg[0]/D |
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
9| WNS=-4.094 | TNS=-69609.589| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 218ff808d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:50 ; elapsed = 00:02:32 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5923 ; free virtual = 103422default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-3.885 | TNS=-67498.411| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 15072a89f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:27 ; elapsed = 00:03:51 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5970 ; free virtual = 103482default:defaulth px? 
u

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px? 
G
2Phase 4.3 Global Iteration 2 | Checksum: c07023bf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:33 ; elapsed = 00:03:57 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5973 ; free virtual = 103502default:defaulth px? 
E
0Phase 4 Rip-up And Reroute | Checksum: c07023bf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:33 ; elapsed = 00:03:57 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5973 ; free virtual = 103502default:defaulth px? 
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
D
/Phase 5.1.1 Update Timing | Checksum: 720b558f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:42 ; elapsed = 00:04:00 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5974 ; free virtual = 103512default:defaulth px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-3.758 | TNS=-64224.689| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
B
-Phase 5.1 Delay CleanUp | Checksum: eb10b120
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:43 ; elapsed = 00:04:00 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5979 ; free virtual = 103572default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
L
7Phase 5.2 Clock Skew Optimization | Checksum: eb10b120
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:43 ; elapsed = 00:04:00 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5979 ; free virtual = 103572default:defaulth px? 
N
9Phase 5 Delay and Skew Optimization | Checksum: eb10b120
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:43 ; elapsed = 00:04:00 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5979 ; free virtual = 103572default:defaulth px? 
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
0Phase 6.1.1 Update Timing | Checksum: 14a76e903
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:53 ; elapsed = 00:04:04 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5977 ; free virtual = 103552default:defaulth px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-3.758 | TNS=-63885.585| WHS=0.016  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 1e685fac2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:53 ; elapsed = 00:04:04 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5977 ; free virtual = 103542default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 1e685fac2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:53 ; elapsed = 00:04:04 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5977 ; free virtual = 103542default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
A
,Phase 7 Route finalize | Checksum: f53b73e0
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:54 ; elapsed = 00:04:04 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5963 ; free virtual = 103412default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
H
3Phase 8 Verifying routed nets | Checksum: f53b73e0
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:54 ; elapsed = 00:04:05 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5962 ; free virtual = 103402default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 13427ec20
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:09:01 ; elapsed = 00:04:09 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5973 ; free virtual = 103512default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2M
9| WNS=-3.758 | TNS=-63885.585| WHS=0.016  | THS=0.000  |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
G
2Phase 10 Post Router Timing | Checksum: 13427ec20
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:09:09 ; elapsed = 00:04:11 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 5973 ; free virtual = 103502default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:09:09 ; elapsed = 00:04:11 . Memory (MB): peak = 4341.535 ; gain = 0.000 ; free physical = 6046 ; free virtual = 104242default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
4172default:default2
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
00:09:442default:default2
00:04:202default:default2
4341.5352default:default2
0.0002default:default2
60462default:default2
104242default:defaultZ17-722h px? 
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
00:00:112default:default2
00:00:042default:default2
4341.5352default:default2
0.0002default:default2
59052default:default2
104062default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/impl_1/design_1_8c_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:222default:default2
00:00:112default:default2
4341.5352default:default2
0.0002default:default2
59852default:default2
103972default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_drc -file design_1_8c_wrapper_drc_routed.rpt -pb design_1_8c_wrapper_drc_routed.pb -rpx design_1_8c_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_drc -file design_1_8c_wrapper_drc_routed.rpt -pb design_1_8c_wrapper_drc_routed.pb -rpx design_1_8c_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/impl_1/design_1_8c_wrapper_drc_routed.rpt?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/impl_1/design_1_8c_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
report_drc: 2default:default2
00:00:372default:default2
00:00:112default:default2
4349.8632default:default2
8.3282default:default2
59402default:default2
103532default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file design_1_8c_wrapper_methodology_drc_routed.rpt -pb design_1_8c_wrapper_methodology_drc_routed.pb -rpx design_1_8c_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file design_1_8c_wrapper_methodology_drc_routed.rpt -pb design_1_8c_wrapper_methodology_drc_routed.pb -rpx design_1_8c_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
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
?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/impl_1/design_1_8c_wrapper_methodology_drc_routed.rpt?/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.runs/impl_1/design_1_8c_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2(
report_methodology: 2default:default2
00:00:442default:default2
00:00:092default:default2
4361.7382default:default2
11.8752default:default2
59492default:default2
103632default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_power -file design_1_8c_wrapper_power_routed.rpt -pb design_1_8c_wrapper_power_summary_routed.pb -rpx design_1_8c_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file design_1_8c_wrapper_power_routed.rpt -pb design_1_8c_wrapper_power_summary_routed.pb -rpx design_1_8c_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
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
4292default:default2
22default:default2
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
00:00:122default:default2
4433.7972default:default2
72.0592default:default2
58932default:default2
103172default:defaultZ17-722h px? 
?
%s4*runtcl2?
sExecuting : report_route_status -file design_1_8c_wrapper_route_status.rpt -pb design_1_8c_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -report_unconstrained -file design_1_8c_wrapper_timing_summary_routed.rpt -pb design_1_8c_wrapper_timing_summary_routed.pb -rpx design_1_8c_wrapper_timing_summary_routed.rpx -warn_on_violation 
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
\Executing : report_incremental_reuse -file design_1_8c_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2p
\Executing : report_clock_utilization -file design_1_8c_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file design_1_8c_wrapper_bus_skew_routed.rpt -pb design_1_8c_wrapper_bus_skew_routed.pb -rpx design_1_8c_wrapper_bus_skew_routed.rpx
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