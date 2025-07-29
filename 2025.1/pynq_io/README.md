# The pynq_io IP and the pynq_io_multicore_multicycle IP

How to run the pynq_io IP:

(1) create a "workspace_pynq_io" folder in the "2025.1/pynq_io" one.

(2) launch "Vitis IDE" (see the main "README.md" file in the "2025.1" folder) and open the workspace.

(3) create a "pynq_io" folder in the "2025.1/pynq_io" one.

(4) build the Vivado IP in the "2025.1/pynq_io/pynq_io" folder according to the design given in the book, chapter 14 section 1, generate its bitstream and export it.

(5) create a "platform" and select the "design_1_wrapper.xsa" file as the "Hardware Design".

(6) create a "hello_world" template associated to the just created platform, update the "helloworld.c" source with the content of the "2025.1/pynq_io/helloworld_button_led.c" file, build "hello_world".

(7) plug the board.

(8) run "hello_world" and play with the buttons to light the leds.

How to run the "pynq_io_multicore_multicycle" IP:

(9) create a "workspace_pynq_io_multicore_multicycle" folder in the "2025.1/pynq_io" one.

(10) launch "Vitis IDE" (see the main "README.md" file in the "2025.1" folder) and open the workspace.

(11) create a "pynq_io_multicore_multicycle" folder in the "2025.1/pynq_io" one.

(12) in "HLS Development", "Create Component", "Next", "Configuration File", "Existing file", browse along the path "multicore_multicycle_2c_ip/hls_config.cfg" and open, update the paths to the source and testbench files, "Next", "Next", part xc7z020clg400-1", "Next", "Next", "Finish".

(13) simulate the IP "C SIMULATION/Run".

(14) synthesize the IP "C SYNTHESIS/Run".

(15) add the IP to the library "PACKAGE/Run".

(16) build the Vivado IP in the "2025.1/pynq_io/pynq_io_multicore_multicycle" folder according to the design shown in the book, chapter 14, section 2. Fix the addresses in the address editor according to the settings given in the book in chapter 14 section 2, generate the bitstream, export it.

(17) create a "platform" and select the "design_1_wrapper.xsa" file as the "Hardware Design".

(18) create a "hello_world" template associated to the just created platform, update the "helloworld.c" source with the content of the "2025.1/pynq_io/helloworld_button_led_multicore_multicycle.c" file, copy the "button_led_text.hex" and the "button_led_data.hex" files from the "2025.1/pynq_io" folder to the "workspace_pynq_io_multicore_multicycle/hello_world/src" folder, build "hello_world".

(19) plug the board and launch a "putty".

(20) run "hello_world" and play with the buttons to light the leds.

If the run sets the "invalid command name ps7_init" error message, update the "workspace_pynq_io_multicore_multicycle/hello_world/_ide/launch.json" file by replacing the occurrence of "multicore_multicycle_2c_ip.tcl" with "ps7_init.tcl".
