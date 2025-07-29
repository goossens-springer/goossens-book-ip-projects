# goossens-springer-book
The resources to run the experimentations presented in the springer book on Risc-V processors in HLS.

These are the updates for the VITIS 2025.1 version.

How to implement an HLS project up to the run on a development board.

Example for chapter 2 "adder_ip" project (for other projects you will find a "README.md" file in each project folder, e.g. "2025.1/chapter_2", explaining how to set up the experiments):

(1) Create a "workspace" folder (for example for chapter 2 experiment, in the "2025.1/chapter_2" folder).

(2) Launch the "Vitis IDE" application (cd /opt/Xilinx/Vitis/2025.1 ; source settings64.sh ; vitis).

(3) In the "HLS Development" tab of the "Vitis IDE" window, "Create Component", "Next", "Configuration File", "Existing file", browse along the path "chapter_2/hls_config.cfg" and open, update the paths to the source and testbench files, "Next", "Next", part xc7z020clg400-1", "Next", "Next", "Finish".

(4) In the "Flow" tab, "C SIMULATION", click on "Run" (the run prints "10000 + 20000 is 30000").

(5) "C SYNTHESIS", click on "Run" (the run should print "Synthesis finished successfully").

(6) "PACKAGE", click on "Run" (this is to export the RTL as a Vivado IP ; "Package finished successfully").

To run the "my_adder_ip" on the development board, first the design should be built in Vivado (same procedure as the one described in the book).

(7) in Vivado, build the Vivado IP and generate its bitstream, generate the bitstream, export it.

(8) in "Vitis", create a "platform" and select the "project_1/design_1_wrapper.xsa" file as the "Hardware Design".

(9) create a "hello_world" template associated to the just created platform, update the "helloworld.c" source file with the content of the "chapter_2/helloworld.c" file, build "hello_world".

(10) plug the board and launch a "putty".

(11) run "hello_world" ("10000 + 20000 is 30000" should be printed on the "putty" terminal).

If the run sets the "invalid command name ps7_init" error message, update the "workspace/hello_world/_ide/launch.json" file by replacing the occurrence of "my_adder_ip.tcl" with "ps7_init.tcl".

