# goossens-springer-book
The resources to run the experimentations presented in the springer book on Risc-V processors in HLS.

These are the updates fo the VITIS 2025.1 version.

How to implement an HLS project up to the run on a development board.

For each project you will find a "readme.md" file in the project folder, e.g. "2025.1/fetching_ip", explaining how to set up the experiments until the ip is run on the pynq-z1 board.

Everything should be redone (hls_component, platform and hello_world code) as the 2025.1 version file organization has changed. Only the hls_component can be rebuilt from the hls_config file provided in the folder. (this is a shortcut to avoid reselecting the source and testbench files). However, the hls_config file contains absolute file paths which are given as my own paths. You should update these paths to your own file sytem tree.

