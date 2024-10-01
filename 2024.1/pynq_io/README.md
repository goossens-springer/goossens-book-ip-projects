# The pynq_io IP and the pynq_io_multicore_multicycle IP

How to run the pynq_io IP:

(1) create a "workspace_pynq_io" folder in the "2024.1/pynq_io" one

(2) launch "Vitis IDE" (see the main "README.md" file in the "2024.1" folder) and open the workspace

(3) create a "platform" and select the "2024.1/pynq_io/pynq_io/design_1_wrapper.xsa" file as the "Hardware Design"

(4) create a "hello_world" template associated to the just created platform, update the "helloworld.c" source with the content of the "2024.1/pynq_io/helloworld_button_led.c" file, build "hello_world"

(5) plug the board

(6) run "hello_world" and play with the buttons to light the leds

How to run the "pynq_io_multicore_multicycle" IP:

(7) create a "workspace_pynq_io_multicore_multicycle" folder in the "2024.1/pynq_io" one

(8) launch "Vitis IDE" (see the main "README.md" file in the "2024.1" folder) and open the workspace

(9) in "HLS Development", "Create Component", "Next", "Generate from Vitis HLS Project", browse along the path "2024.1/multicore_multicycle_2c_ip/multicore_multicyle_ip/hls_app" and open, "Next", "part xc7z020clg400-1", "Next", "Next", "Finish"

(10) create a "platform" and select the "2024.1/pynq_io/pynq_io_multicore_multicycle/design_1_multicore_multicycle_wrapper.xsa" file as the "Hardware Design", "Next", "Next", "Finish"

(11) run the "2024.1/pynq_io/build.sh" script

(12) create a "hello_world" template associated to the just created platform, update the "helloworld.c" source with the content of the "2024.1/pynq_io/helloworld_button_led_multicore_multicycle.c" file, copy the "button_led_text.hex" and the "button_led_data.hex" files from the "2024.1/pynq_io" folder to the "workspace_pynq_io_multicore_multicycle/hello_world/src" folder, copy the "design_1_multicore_multicycle_wrapper.bit" file from the "2024.1/pynq_io" folder to the "workspace_pynq_io_multicore_multicycle/hello_world/_ide/bitstream" folder (the former file should be replaced), build "hello_world"

(13) plug the board

(14) run "hello_world" and play with the buttons to light the leds

