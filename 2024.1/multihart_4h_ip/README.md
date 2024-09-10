# multihart_4h_ip

How to run the "multihart_4h_ip" IP.

(1) create a "workspace" folder in the "2024.1/multihart_4h_ip" one.

(2) copy the "hls_component" folder into the "workspace"

(3) launch "Vitis IDE" (see the main "README.md" file in the "2024.1" folder) and open the workspace.

Optionally, you can simulate the IP: "C SIMULATION/Run", with the two provided testbench files: "testbench_seq_multihart_ip.cpp" and "testbench_par_multihart_ip.cpp" 

Optionally, you can build the Vivado IP and generate its bitstream: "C SYNTHESIS/Run", "PACKAGE/Run", build the IP under Vivado, generate the bitstream, export it. However, the "xsa" file built does not work with "Vitis 2024.1". A "design_1_wrapper.xsa" file built with "Vitis 2024.1" is provided, which works with "Vitis 2024.1"

To run the IP on the board:

(4) in "Vitis IDE", create a "platform" and select the "multihart_4h_ip/design_1_wrapper.xsa" file as the "Hardware Design"

(5) create a "hello_world" template associated to the just created platform, update the "helloworld.c" source file with the content of the "multihart_4h_ip/helloworld_seq.c" file, copy the "multihart_4h_ip/test_mem_text.hex" file to the "workspace/hello_world/src" folder, build "hello_world"

(6) plug the board and launch a "putty"

(7) run "hello_world"

(8) update the "helloworld.c" source file with the content of the "multihart_4h_ip/helloworld_par.c" file, copy the "multihart_4h_ip/test_mem_par_4h_text.hex" file to the "workspace/hello_world/src" folder, build "hello_world"

(9) run "hello_world"
