# multicore_multihart_2c_4h_ip

How to run the "multicore_multihar_2c_4h_ip" IP.

(1) create a "workspace" folder in the "2025.1/multicore_multichart_2c_4h_ip" one.

(2) launch "Vitis IDE" (see the main "README.md" file in the "2025.1" folder) and open the workspace.

(3) in "HLS Development", "Create Component", "Next", "Configuration File", "Existing file", browse along the path "multicore_multihart_2c_4h_ip/hls_config.cfg" and open, update the paths to the source and testbench files, "Next", "Next", part xc7z020clg400-1", "Next", "Next", "Finish".

(4) simulate the IP "C SIMULATION/Run".

(5) synthesize the IP "C SYNTHESIS/Run".

(6) add the IP to the library "PACKAGE/Run".

(7) in Vivado, build the Vivado IP and generate its bitstream: fix the addresses in the address editor: range 128K for the data ram, 256K for the code ram, generate the bitstream, export it.

To run the IP on the board:

(8) in "Vitis IDE", create a "platform" and select the "project_1/design_1_wrapper.xsa" file as the "Hardware Design".

(9) create a "hello_world" template associated to the just created platform, update the "helloworld.c" source file with the content of the "multicore_multihart_2c_4h_ip/helloworld.c" file, copy the "multicore_multihart_2c_4h_ip/test_mem_text.hex" file to the "workspace/hello_world/src" folder, build "hello_world".

(10) plug the board and launch a "putty".

(11) run "hello_world".

If the run sets the "invalid command name ps7_init" error message, update the "workspace/hello_world/_ide/launch.json" file by replacing the occurrence of "multicore_multihart_2c_4h_ip.tcl" with "ps7_init.tcl".
