# fetching_ip
An IP to fetch RISC-V code (runnable on a Xilinx FPGA, e.g. as on the Pynq-Z1 development board).

This IP is intended to serve as a first example to go though all the steps of an IP design to be run on a Xilinx FPGA.

The code files are structured as in a vitis_hls (Xilinx High Level Synthesis) project.

The "fetching_ip.cpp" file contains the IP main function "fetching_ip()".

The "testbench_fetching_ip.cpp" file contains the "main" function to test the IP within the vitis_hls tool.

The "helloworld.c" file contains another "main" function to run the IP on a FPGA based development board.

The "test_op_imm.h" file contains the hexadecimal encoding of a basic RISC-V program to serve as a data for the "fetching_ip" IP.

The "vitis_hls.txt" file contains the print after the run of the IP on the "test_op_imm.h" example in the vitis_hls tool (print of the "main" function in the "testbench_fetching_ip.cpp" file).

The "pynq_z1.txt" file contains the print after the run of the IP on the "test_op_imm.h" example on a Pynq-Z1 development board (print of the "main" function in the "helloworld.c" file).

Complementary informations are available in the book "A RISC-V processor with High Level Synthesis ; a Do-It-Yourself approach", Bernard Goossens.

The IP is composed of a two-step non-pipelined instruction processing: fetch, execute.

The fetch step reads a RISC-V instruction in a code memory The execute step computes the next PC.
