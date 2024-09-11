# multi_core_multi_ram_ip

How to run the "multi_core_multi_ram_ip" IP.

(1) create a "workspace" folder in the "2024.1/multi_core_multi_ram_ip" one. 

(2) copy the "hls_component" folder into the "workspace".

(3) launch "Vitis IDE" (see the main "README.md" file in the "2024.1" folder) and open the workspace.

Optionally, you can simulate the IP: "C SIMULATION/Run"

Optionally, you can build the Vivado IP and generate its bitstream: "C SYNTHESIS/Run", "PACKAGE/Run", build the IP under Vivado, generate the bitstream, export it

To run the IP on the board:

(4) in "Vitis IDE", create a "platform" and select the "multi_core_multi_ram_ip/design_1_wrapper.xsa" file as the "Hardware Design"

(5) create a "hello_world" template associated to the just created platform, update the "helloworld.c" source file with the content of the "multi_core_multi_ram_ip/helloworld.c" file

(6) plug the board and launch a "putty"

(7) run "hello_world"
