
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
.Phase 1 Build RT Design | Checksum: 16f614039
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:20 ; elapsed = 00:00:16 . Memory (MB): peak = 3619.605 ; gain = 0.000 ; free physical = 5938 ; free virtual = 466772default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
B
-Phase 2.1 Create Timer | Checksum: 16f614039
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:20 ; elapsed = 00:00:16 . Memory (MB): peak = 3619.605 ; gain = 0.000 ; free physical = 5939 ; free virtual = 466782default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 16f614039
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:20 ; elapsed = 00:00:16 . Memory (MB): peak = 3619.605 ; gain = 0.000 ; free physical = 5904 ; free virtual = 466442default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 16f614039
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:20 ; elapsed = 00:00:16 . Memory (MB): peak = 3619.605 ; gain = 0.000 ; free physical = 5905 ; free virtual = 466442default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 1a3174174
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:26 ; elapsed = 00:00:18 . Memory (MB): peak = 3620.398 ; gain = 0.793 ; free physical = 5901 ; free virtual = 466402default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.404 | TNS=-14.802| WHS=-0.160 | THS=-59.979|
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 10a016fff
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:19 . Memory (MB): peak = 3620.398 ; gain = 0.793 ; free physical = 5897 ; free virtual = 466362default:defaulth px? 
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
/Phase 3.1 Global Routing | Checksum: 10a016fff
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:19 . Memory (MB): peak = 3620.398 ; gain = 0.793 ; free physical = 5897 ; free virtual = 466362default:defaulth px? 
C
.Phase 3 Initial Routing | Checksum: 1b86dba1d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:39 ; elapsed = 00:00:21 . Memory (MB): peak = 3690.414 ; gain = 70.809 ; free physical = 5914 ; free virtual = 466372default:defaulth px? 
?
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
242default:default2?
?
The top 5 pins with tight setup and hold constraints:

+==============+===============+============================================================================================================+
| Launch Clock | Capture Clock | Pin                                                                                                        |
+==============+===============+============================================================================================================+
| clk_fpga_0   | clk_fpga_0    | design_1_multicore_multicycle_i/multicycle_pipeline_0/inst/gmem_m_axi_U/bus_read/rs_rreq/data_p1_reg[58]/D |
| clk_fpga_0   | clk_fpga_0    | design_1_multicore_multicycle_i/multicycle_pipeline_0/inst/gmem_m_axi_U/bus_read/rs_rreq/data_p1_reg[60]/D |
| clk_fpga_0   | clk_fpga_0    | design_1_multicore_multicycle_i/multicycle_pipeline_0/inst/gmem_m_axi_U/bus_read/rs_rreq/data_p1_reg[55]/D |
| clk_fpga_0   | clk_fpga_0    | design_1_multicore_multicycle_i/multicycle_pipeline_0/inst/gmem_m_axi_U/bus_read/rs_rreq/data_p1_reg[61]/D |
| clk_fpga_0   | clk_fpga_0    | design_1_multicore_multicycle_i/multicycle_pipeline_0/inst/gmem_m_axi_U/bus_read/rs_rreq/data_p1_reg[54]/D |
+--------------+---------------+------------------------------------------------------------------------------------------------------------+

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
Intermediate Timing Summary %s164*route2L
8| WNS=-1.669 | TNS=-2386.227| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 4.1 Global Iteration 0 | Checksum: 9a4f5191
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:33 ; elapsed = 00:00:43 . Memory (MB): peak = 3690.414 ; gain = 70.809 ; free physical = 5850 ; free virtual = 465982default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-1.905 | TNS=-3228.436| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 4.2 Global Iteration 1 | Checksum: ca63bf89
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:55 ; elapsed = 00:00:55 . Memory (MB): peak = 3690.414 ; gain = 70.809 ; free physical = 5859 ; free virtual = 466122default:defaulth px? 
E
0Phase 4 Rip-up And Reroute | Checksum: ca63bf89
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:55 ; elapsed = 00:00:55 . Memory (MB): peak = 3690.414 ; gain = 70.809 ; free physical = 5859 ; free virtual = 466122default:defaulth px? 
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
/Phase 5.1.1 Update Timing | Checksum: 853fa05e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:57 ; elapsed = 00:00:55 . Memory (MB): peak = 3690.414 ; gain = 70.809 ; free physical = 5864 ; free virtual = 466132default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-1.656 | TNS=-2200.024| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 17aca7cb2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:58 ; elapsed = 00:00:55 . Memory (MB): peak = 3690.414 ; gain = 70.809 ; free physical = 5854 ; free virtual = 466042default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 17aca7cb2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:58 ; elapsed = 00:00:55 . Memory (MB): peak = 3690.414 ; gain = 70.809 ; free physical = 5854 ; free virtual = 466042default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 17aca7cb2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:58 ; elapsed = 00:00:56 . Memory (MB): peak = 3690.414 ; gain = 70.809 ; free physical = 5854 ; free virtual = 466042default:defaulth px? 
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
0Phase 6.1.1 Update Timing | Checksum: 1763e2247
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:59 ; elapsed = 00:00:56 . Memory (MB): peak = 3690.414 ; gain = 70.809 ; free physical = 5855 ; free virtual = 466072default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-1.622 | TNS=-2141.142| WHS=0.002  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 16d46b306
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:59 ; elapsed = 00:00:56 . Memory (MB): peak = 3690.414 ; gain = 70.809 ; free physical = 5855 ; free virtual = 466072default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 16d46b306
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:59 ; elapsed = 00:00:56 . Memory (MB): peak = 3690.414 ; gain = 70.809 ; free physical = 5855 ; free virtual = 466072default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 22a650a55
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:59 ; elapsed = 00:00:56 . Memory (MB): peak = 3690.414 ; gain = 70.809 ; free physical = 5855 ; free virtual = 466072default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 22a650a55
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:00 ; elapsed = 00:00:56 . Memory (MB): peak = 3690.414 ; gain = 70.809 ; free physical = 5854 ; free virtual = 466062default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 225e2d33c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:01 ; elapsed = 00:00:57 . Memory (MB): peak = 3738.438 ; gain = 118.832 ; free physical = 5851 ; free virtual = 466042default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2L
8| WNS=-1.622 | TNS=-2141.142| WHS=0.002  | THS=0.000  |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
G
2Phase 10 Post Router Timing | Checksum: 225e2d33c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:02 ; elapsed = 00:00:57 . Memory (MB): peak = 3738.438 ; gain = 118.832 ; free physical = 5848 ; free virtual = 466032default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:02 ; elapsed = 00:00:57 . Memory (MB): peak = 3738.438 ; gain = 118.832 ; free physical = 5898 ; free virtual = 466542default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
5872default:default2
12default:default2
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
00:02:082default:default2
00:00:592default:default2
3738.4382default:default2
118.8322default:default2
58982default:default2
466542default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
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
3738.4382default:default2
0.0002default:default2
58622default:default2
466432default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
}/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/impl_1/design_1_multicore_multicycle_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_drc -file design_1_multicore_multicycle_wrapper_drc_routed.rpt -pb design_1_multicore_multicycle_wrapper_drc_routed.pb -rpx design_1_multicore_multicycle_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_drc -file design_1_multicore_multicycle_wrapper_drc_routed.rpt -pb design_1_multicore_multicycle_wrapper_drc_routed.pb -rpx design_1_multicore_multicycle_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/impl_1/design_1_multicore_multicycle_wrapper_drc_routed.rpt?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/impl_1/design_1_multicore_multicycle_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file design_1_multicore_multicycle_wrapper_methodology_drc_routed.rpt -pb design_1_multicore_multicycle_wrapper_methodology_drc_routed.pb -rpx design_1_multicore_multicycle_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file design_1_multicore_multicycle_wrapper_methodology_drc_routed.rpt -pb design_1_multicore_multicycle_wrapper_methodology_drc_routed.pb -rpx design_1_multicore_multicycle_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
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
?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/impl_1/design_1_multicore_multicycle_wrapper_methodology_drc_routed.rpt?/home/bernard/book-2/pynq_io/pynq_io_multicore_multicycle_design.runs/impl_1/design_1_multicore_multicycle_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_power -file design_1_multicore_multicycle_wrapper_power_routed.rpt -pb design_1_multicore_multicycle_wrapper_power_summary_routed.pb -rpx design_1_multicore_multicycle_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file design_1_multicore_multicycle_wrapper_power_routed.rpt -pb design_1_multicore_multicycle_wrapper_power_summary_routed.pb -rpx design_1_multicore_multicycle_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
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
5992default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_route_status -file design_1_multicore_multicycle_wrapper_route_status.rpt -pb design_1_multicore_multicycle_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -report_unconstrained -file design_1_multicore_multicycle_wrapper_timing_summary_routed.rpt -pb design_1_multicore_multicycle_wrapper_timing_summary_routed.pb -rpx design_1_multicore_multicycle_wrapper_timing_summary_routed.rpx -warn_on_violation 
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
%s4*runtcl2?
nExecuting : report_incremental_reuse -file design_1_multicore_multicycle_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2?
nExecuting : report_clock_utilization -file design_1_multicore_multicycle_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file design_1_multicore_multicycle_wrapper_bus_skew_routed.rpt -pb design_1_multicore_multicycle_wrapper_bus_skew_routed.pb -rpx design_1_multicore_multicycle_wrapper_bus_skew_routed.rpx
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