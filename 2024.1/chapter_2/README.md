# goossens-springer-book
The resources to run the experimentations presented in the springer book on Risc-V processors in HLS.

These are the updates for the VITIS 2024.1 version.

How to implement an HLS project up to the run on a development board.

Example for chapter 2 "adder_ip" project (for other projects you will find a "README.md" file in each project folder, e.g. "2024.1/chapter_2", explaining how to set up the experiments):

(1) Create a "workspace" folder (for example for chapter 2 experiment, in the "2024.1/chapter_2" folder)

(2) Launch the "Vitis IDE" application (cd /opt/Xilinx/Vitis/2024.1 ; source settings64.sh ; vitis)

(3) In the "HLS Development" tab of the "Vitis IDE" window, "Create Component", "Next", "Next", set the "Top Function" as "my_adder_ip", "Next", part "xc7z020clg400-1", "Next", "Next", "Finish"

(4) Expand "hls_component" in the "WORKSPACE" tab, "Sources", right-click, "Add Source File", navigate up to "chapter_2" folder, open "my_adder_ip.cpp", "Test Bench", right-click, "Add Test Bench File", open "testbench_my_adder_ip.cpp"

(5) In the "Flow" tab, "C SIMULATION", click on "Run" (the run prints "10000 + 20000 is 30000")

(6) "C SYNTHESIS", click on "Run" (the run should print "Synthesis finished successfully")

(7) "PACKAGE", click on "Run" (this is to export the RTL as a Vivado IP ; "Package finished successfully")

To run the "my_adder_ip" on the development board, first the design should be built in Vivado (same procedure as the one described in the book). When the bitstream has been built and exported, it can be used in the "Vitis IDE" application. A pre-built project is available, with a "xsa" file containing the bitstream to be loaded on the board. It is located in the "chapter_2" folder, in the "design_1_wrapper.xsa" file.

(8) In the top menu, "File", "New Component", "Platform", "Next", select the "Hardware Design" (move up to the "chapter_2" folder and open file "design_1_wrapper.xsa"), "Next", "Next", "Finish" (the creation prints "Generated platform metadata for creating application(s) based on platform platform")

(9) In the leftmost set of icons, click on the "Examples" one, "Hello World", "Create Application Component from Template", "Next", select "platform", "Next", "Next", "Finish"

(10) In the "WORKSPACE" tab, expand "hello_world" and "Sources", open file "hello_world.c", replace the code with the one taken from file "helloworld.c" in the "chapter_2" folder

(11) Plug the board, start a "putty" (terminal to display the run result) as explained in the book

(12) In the "Flow" tab, click on "Build" (Component "hello_world" should be selected), "OK" (the build should print "Build Finished successfully"), click on "Run" (the run should print "10000 + 20000 is 30000" on the putty window)

If the run sets the "invalid command name ps7_init" error message, update the "workspace/hello_world/_ide/.theia/launch.json" file by replacing the occurrence of "my_adder_ip.tcl" with "ps7_init.tcl"

