# goossens-springer-book
The resources to run the experimentations presented in the springer book on Risc-V processors in HLS.

Erratum for Basys3 implementation (i.e. Artix-7 based boards needing the use of a microblaze): the microblaze should have at least 32KB of ram (run block automation/Local Memory: set at 32KB, Debug Module: set at Debug and UART).

Moreover, the size of the code and data ram should not exceed 8KB (instead of 64KB as stated in the book). E.g. in the "fetching_ip", line 4 of the "fetching_ip.h" file should be updated as "#define LOG_CODE_RAM_SIZE 11" (instead of 16 for a Pynq-Z1 or Pynq-Z2 board). The microblaze IP uses some of the available BRAM blocks. In the multi_core_multi_ram_ip (chapter 11), set LOG_RAM_SIZE as 11 in the multi_core_multi_ram_ip.h file. Set the axi_bram_ctrl_0 Master Base Address as c000_0000, Range 4K, axi_bram_ctrl_1 Master Base Address as c000_1000, Range 4K, microblaze_0_local_memory Range 32K. In the driver (file helloworld.c), set BASE_RAM as c000_0000 and define ram0 and ram1 as :
int *ram0 = (int *)(BASE_RAM + 0);
int *ram1 = (int *)(BASE_RAM + 0x1000);
I have also successfully tested on the Basys3 the experiments in chapter 12 (multicore_multicycle_ip) for 2 cores and the experiments in chapter 13 (multicore_multihart_ip) with 2 cores and 2 harts. The code and data ram sizes should be set as 2K words (LOG_CODE_RAM_SIZE 11, LOG_DATA_RAM_SIZE 11) in the multihart_ip.h file and the Vivado address map should start at C000_0000 with a range of 4KB (ending at C000_0FFF for the first core, starting at C000_1000 for the second core). In the helloworld.c Vitis_IDE driver, DATA_RAM should be set as 0xc0000000 and the ram sizes should be set like in the multihart_ip.h file.

For the riscv toolchain and tools, here are the hash value I used to do my builts (riscv32-unknown-elf-gcc version 12.2.0, spike and pk)

The hash value for riscv-gnu-toolchain is:

409b951ba6621f2f115aebddfb15ce2dd78ec24f

For riscv-pk, the hash value is:

2efabd3e6604b8a9e8f70baf52f57696680c7855

And for riscv-isa-sim (spike):

ac466a21df442c59962589ba296c702631e041b5

For example, to install the same riscv-tool-chain as the one used in the book:

git clone https://github.com/riscv/riscv-gnu-toolchain

cd riscv-gnu-toolchain

git reset --hard 409b951ba6621f2f115aebddfb15ce2dd78ec24f

./configure --prefix=/opt/riscv --enable-multilib --with-arch=rv32i

sudo make
