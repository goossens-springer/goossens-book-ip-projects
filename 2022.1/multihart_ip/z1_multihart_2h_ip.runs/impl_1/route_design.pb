
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
-Phase 1 Build RT Design | Checksum: ff38eeb5
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:23 ; elapsed = 00:00:18 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 1975 ; free virtual = 154132default:defaulth px? 
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
8Phase 2.1 Fix Topology Constraints | Checksum: ff38eeb5
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:23 ; elapsed = 00:00:18 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 1942 ; free virtual = 153802default:defaulth px? 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.2 Pre Route Cleanup | Checksum: ff38eeb5
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:23 ; elapsed = 00:00:18 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 1942 ; free virtual = 153802default:defaulth px? 
p

Phase %s%s
101*constraints2
2.3 2default:default2!
Update Timing2default:defaultZ18-101h px? 
B
-Phase 2.3 Update Timing | Checksum: db741e60
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:29 ; elapsed = 00:00:20 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 1926 ; free virtual = 153632default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.082 | TNS=-0.366 | WHS=-0.239 | THS=-58.479|
2default:defaultZ35-416h px? 
H
3Phase 2 Router Initialization | Checksum: f4dcb703
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:31 ; elapsed = 00:00:21 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 1923 ; free virtual = 153602default:defaulth px? 
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
.Phase 3.1 Global Routing | Checksum: f4dcb703
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:31 ; elapsed = 00:00:21 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 1923 ; free virtual = 153602default:defaulth px? 
C
.Phase 3 Initial Routing | Checksum: 1c7616c03
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:44 ; elapsed = 00:00:35 . Memory (MB): peak = 3937.250 ; gain = 192.457 ; free physical = 1925 ; free virtual = 153632default:defaulth px? 
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
Intermediate Timing Summary %s164*route2J
6| WNS=-0.498 | TNS=-4.495 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1d86009c1
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:28 ; elapsed = 00:01:05 . Memory (MB): peak = 3937.250 ; gain = 192.457 ; free physical = 1920 ; free virtual = 153492default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.338 | TNS=-2.232 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 12e5396e6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:34 ; elapsed = 00:01:10 . Memory (MB): peak = 3937.250 ; gain = 192.457 ; free physical = 1921 ; free virtual = 153462default:defaulth px? 
u

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.491 | TNS=-3.932 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.3 Global Iteration 2 | Checksum: 194300a7a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:38 ; elapsed = 00:01:13 . Memory (MB): peak = 3937.250 ; gain = 192.457 ; free physical = 1921 ; free virtual = 153462default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 194300a7a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:38 ; elapsed = 00:01:13 . Memory (MB): peak = 3937.250 ; gain = 192.457 ; free physical = 1921 ; free virtual = 153462default:defaulth px? 
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
0Phase 5.1.1 Update Timing | Checksum: 138f82021
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:40 ; elapsed = 00:01:14 . Memory (MB): peak = 3937.250 ; gain = 192.457 ; free physical = 1921 ; free virtual = 153462default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.250 | TNS=-1.556 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 259d6f4ba
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:41 ; elapsed = 00:01:14 . Memory (MB): peak = 3937.250 ; gain = 192.457 ; free physical = 1921 ; free virtual = 153462default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 259d6f4ba
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:41 ; elapsed = 00:01:14 . Memory (MB): peak = 3937.250 ; gain = 192.457 ; free physical = 1921 ; free virtual = 153462default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 259d6f4ba
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:41 ; elapsed = 00:01:14 . Memory (MB): peak = 3937.250 ; gain = 192.457 ; free physical = 1921 ; free virtual = 153462default:defaulth px? 
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
0Phase 6.1.1 Update Timing | Checksum: 1f32f0863
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:43 ; elapsed = 00:01:15 . Memory (MB): peak = 3937.250 ; gain = 192.457 ; free physical = 1921 ; free virtual = 153462default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.184 | TNS=-0.934 | WHS=0.042  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 286b6c1b6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:43 ; elapsed = 00:01:15 . Memory (MB): peak = 3937.250 ; gain = 192.457 ; free physical = 1921 ; free virtual = 153462default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 286b6c1b6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:43 ; elapsed = 00:01:15 . Memory (MB): peak = 3937.250 ; gain = 192.457 ; free physical = 1921 ; free virtual = 153462default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 2b3edc8d3
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:43 ; elapsed = 00:01:15 . Memory (MB): peak = 3937.250 ; gain = 192.457 ; free physical = 1921 ; free virtual = 153462default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 2b3edc8d3
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:43 ; elapsed = 00:01:15 . Memory (MB): peak = 3937.250 ; gain = 192.457 ; free physical = 1921 ; free virtual = 153462default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 22ce786a1
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:44 ; elapsed = 00:01:16 . Memory (MB): peak = 3953.258 ; gain = 208.465 ; free physical = 1919 ; free virtual = 153442default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=-0.184 | TNS=-0.934 | WHS=0.042  | THS=0.000  |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
G
2Phase 10 Post Router Timing | Checksum: 22ce786a1
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:45 ; elapsed = 00:01:16 . Memory (MB): peak = 3953.258 ; gain = 208.465 ; free physical = 1919 ; free virtual = 153442default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:45 ; elapsed = 00:01:16 . Memory (MB): peak = 3953.258 ; gain = 208.465 ; free physical = 1979 ; free virtual = 154042default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
5292default:default2
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
00:02:512default:default2
00:01:182default:default2
3953.2582default:default2
208.4652default:default2
19792default:default2
154042default:defaultZ17-722h px? 
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
00:00:022default:default2
00:00:00.642default:default2
3953.2582default:default2
0.0002default:default2
19532default:default2
154002default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
q/home/goossens/book-2022.1/new_book_ip/multihart_ip/z1_multihart_2h_ip.runs/impl_1/design_1_2h_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_drc -file design_1_2h_wrapper_drc_routed.rpt -pb design_1_2h_wrapper_drc_routed.pb -rpx design_1_2h_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_drc -file design_1_2h_wrapper_drc_routed.rpt -pb design_1_2h_wrapper_drc_routed.pb -rpx design_1_2h_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
u/home/goossens/book-2022.1/new_book_ip/multihart_ip/z1_multihart_2h_ip.runs/impl_1/design_1_2h_wrapper_drc_routed.rptu/home/goossens/book-2022.1/new_book_ip/multihart_ip/z1_multihart_2h_ip.runs/impl_1/design_1_2h_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file design_1_2h_wrapper_methodology_drc_routed.rpt -pb design_1_2h_wrapper_methodology_drc_routed.pb -rpx design_1_2h_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file design_1_2h_wrapper_methodology_drc_routed.rpt -pb design_1_2h_wrapper_methodology_drc_routed.pb -rpx design_1_2h_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
82default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
609*	vivadotcl2?
?/home/goossens/book-2022.1/new_book_ip/multihart_ip/z1_multihart_2h_ip.runs/impl_1/design_1_2h_wrapper_methodology_drc_routed.rpt?/home/goossens/book-2022.1/new_book_ip/multihart_ip/z1_multihart_2h_ip.runs/impl_1/design_1_2h_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_power -file design_1_2h_wrapper_power_routed.rpt -pb design_1_2h_wrapper_power_summary_routed.pb -rpx design_1_2h_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file design_1_2h_wrapper_power_routed.rpt -pb design_1_2h_wrapper_power_summary_routed.pb -rpx design_1_2h_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
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
5412default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2?
sExecuting : report_route_status -file design_1_2h_wrapper_route_status.rpt -pb design_1_2h_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -report_unconstrained -file design_1_2h_wrapper_timing_summary_routed.rpt -pb design_1_2h_wrapper_timing_summary_routed.pb -rpx design_1_2h_wrapper_timing_summary_routed.rpx -warn_on_violation 
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
\Executing : report_incremental_reuse -file design_1_2h_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2p
\Executing : report_clock_utilization -file design_1_2h_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file design_1_2h_wrapper_bus_skew_routed.rpt -pb design_1_2h_wrapper_bus_skew_routed.pb -rpx design_1_2h_wrapper_bus_skew_routed.rpx
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