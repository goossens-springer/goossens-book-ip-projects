# rv32i_npp_bram_ip

How to run the "rv32i_npp_bram_ip" IP.

(1) create a "workspace" folder in the "2024.1/rv32i_npp_bram_ip" one.

(2) copy the "hls_component" folder in the "workspace"

(3) launch "Vitis IDE" (see the main "README.md" file in the "2024.1" folder) and open the workspace.

Optionally, you can simulate the IP: "C SIMULATION/Run"

Optionally, you can build the Vivado IP and generate its bitstream: "C SYNTHESIS/Run", "PACKAGE/Run", build the IP under Vivado, generate the bitstream, export it

To run the IP on the board:

(4) in "Vitis IDE", create a "platform" and select the "rv32i_npp_bram_ip/design_1_wrapper.xsa" file as the "Hardware Design"

(5) create a "hello_world" template associated to the just created platform, update the "helloworld.c" source file with the content of the "rv32i_npp_bram_ip/helloworld.c" file, copy the "rv32i_npp_bram_ip/test_mem_0_text.hex" file to the "workspace/hello_world/src" folder, build "hello_world"

(6) plug the board and launch a "putty"

(7) run "hello_world"
