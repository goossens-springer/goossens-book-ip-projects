# goossens-springer-book
The resources to run the experimentations presented in the springer book on Risc-V processors in HLS.

Erratum for Basys3 implementation: the size of the code and data ram should not exceed 8KB (instead as 64KB as stated in the book). E.g. in the "fetching_ip", line 4 of the "fetching_ip.h" file should be updated as "#define LOG_CODE_RAM_SIZE 11" (instead of 16 for a Pynq-Z1 or Pynq-Z2 board).

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
