# simple_pipeline_ip

How to run the "simple_pipeline_ip" IP.

(1) create a "workspace" folder in the "2024.1/simple_pipeline_ip" one.

(2) copy the "hls_component" folder into the "workspace"

(3) launch "Vitis IDE" (see the main "README.md" file in the "2024.1" folder) and open the workspace.

Optionally, you can simulate the IP: "C SIMULATION/Run"

Optionally, you can build the Vivado IP and generate its bitstream: "C SYNTHESIS/Run", "PACKAGE/Run", build the IP under Vivado, generate the bitstream, export it. However, the "xsa" file built does not work with "Vitis 2024.1". A "design_1_wrapper.xsa" file built with "Vitis 2024.1" is provided, which works with "Vitis 2024.1"

To run the IP on the board:

(4) in "Vitis IDE", create a "platform" and select the "simple_pipeline_ip/design_1_wrapper.xsa" file as the "Hardware Design"

(5) create a "hello_world" template associated to the just created platform, update the "helloworld.c" source file with the content of the "simple_pipeline_ip/helloworld.c" file, copy the "simple_pipeline_ip/test_mem_0_text.hex" file to the "workspace/hello_world/src" folder, build "hello_world"

(6) plug the board and launch a "putty"

(7) run "hello_world"
