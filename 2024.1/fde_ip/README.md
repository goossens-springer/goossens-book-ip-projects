# fde_ip

How to run the "fde_ip" IP.

(1) create a "workspace" folder in the "2024.1/fde_ip" one.

(2) launch "Vitis IDE" (see the main "README.md" file in the "2024.1" folder) and open the workspace.

(3) in "HLS Development", "Create Component", "Next", "Generate from Vitis HLS Project", browse along the path "../fde_ip/hls_app" and open, "Next", "solution 1" (any of the two proposed one), "Next", "Next", part xc7z020clg400-1", "Next", "Next", "Finish"

Optionally, you can simulate the IP: "C SIMULATION/Run" (it should print "14 fetched and decoded instructions")

Optionally, you can build the Vivado IP and generate its bitstream: "C SYNTHESIS/Run", "PACKAGE/Run", build the IP under Vivado, generate the bitstream, export it

To run the IP on the board:

(4) in "Vitis IDE", create a "platform" and select the "fde_ip/design_1_wrapper.xsa" file as the "Hardware Design"

(5) create a "hello_world" template associated to the just created platform, update the "helloworld.c" source file with the content of the "fde_ip/helloworld.c" file, copy the "fde_ip/test_op_imm_0_text.hex" file to the "workspace/hello_world/src" folder, build "hello_world"

(6) plug the board and launch a "putty"

(7) run "hello_world" ("14 fetched and decoded instructions" should be printed on the "putty" terminal)
