# rv32i_pp_ip
An IP to implement a 4-stage pipeline to run the RV32I ISA (runnable on a Xilinx FPGA, e.g. as on the Pynq-Z1 development board).

The implemented processor is pipelined. The pipeline has four stages: fetch+decode, execute, memory access, write back.

The code files are structured as in a vitis_hls (Xilinx High Level Synthesis) project.

The "rv32i_pp_ip.cpp" file contains the IP main function "rv32i_pp_ip()".

The "testbench_rv32i_pp_ip.cpp" file contains the "main" function to test the IP within the vitis_hls tool.

The "helloworld.c" file contains another "main" function to run the IP on a FPGA based development board.

The "test_....h" files contain the hexadecimal encoding of a set of RISC-V programs to serve as data for the "rv32i_pp_ip" IP.

The "vitis_hls.txt" file contains the prints after the runs of the IP on the "test_....h" examples in the vitis_hls tool (print of the "main" function in the "testbench_rv32i_pp_ip.cpp" file).

The "pynq_z1.txt" file contains the print after the run of the IP on the "test_mem.h" example on a Pynq-Z1 development board (print of the "main" function in the "helloworld.c" file).

Complementary informations are available in the book "A RISC-V processor with High Level Synthesis ; a Do-It-Yourself approach", Bernard Goossens.

The IP is composed of four units, each implementing a stage of the pipeline.

