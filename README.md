# goossens-springer-book
The 2022.1 folder corresponds to the original version presented in the book "Guide to Computer Processor Architecture", Bernard Goossens, Springer 2023.

The 2024.1 folder corresponds to an update to be used with the Vitis 2024.1 version.

The 2023.1 and 2023.2 versions are not recommended. Either install Vitis 2022.1 or 2024.1.

New !!! The Vitis 2025.1 version is now supported. Find all the experiments in the book adapted to the Vitis 2025.1 version.

New !!! I have added a "fir" folder in which you will find the HLS implementation of a fir filter. The source code is given in the folder. A readme.md file is also available. It can be implemented in whatever Vitis version, following the recipes given in the other folders, e.g. for Vitis 2025.1, implement an hls_component, a platform and a hello_world driver as explained in the 2025.1 folder.

A configure command to build a bare-metal riscv toolchain adapted to the 2.2 ISA (no fence, no csrr* or csrw* in the generated elf, runnable with spike, no adapted pk though) :

./configure --prefix=/opt/riscv-book --with-multilib-generator="rv32i-ilp32--" --with-isa-spec=2.2
sudo make

Once you're done with make, prepare a link.ld and a start.s files.

You need a link.ld and a start.s files to build a standalone executable.

Here is a minimal start.s file :

<pre>
  .section .init
  .globl _start
_start:
  la sp, _stack_top
  call main
1:
  j 1b
</pre>

Here is a minimal link.ld file :

<pre>
ENTRY(_start)
SECTIONS {
  . = 0x80000000;
  .text : {
    *(.init)
    *(.text*) 
  }
  .rodata : { *(.rodata*) }
  .data : { *(.data*) }
  .bss : { *(.bss*) *(COMMON) }
  . = ALIGN(16);
  .stack : {
    _stack_bottom = .;
    . += 4K;
    _stack_top = .; 
  } 
}
</pre>

Now, compile (test_op_imm.s is in the fetching_ip folder) :

/opt/riscv-book/bin/riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -nostdlib -T link.ld -static -o test_op_imm test_op_imm.s start.s

Check that your executable is 32 bits (elf32-littleriscv, rv32) :

/opt/riscv-book/bin/riscv64-unknown-elf-objdump -f test_op_imm

Have a look at the dump to check that no fence nor csr instructions have been added :

/opt/riscv-book/bin/riscv64-unknown-elf-objdump -d test_op_imm

Run with spike (spike can be installed the normal way) :

spike -d --isa=RV32I test_op_imm

You get the spike prompt and you can apply the spike commands as presented in the book, chapter 3 (full run, step by step run, connect with gdb).

You can build the toolchain I used in my book (compiler, spike and pk for the rv32i isa). I used the following versions, as stated in the readme file of the 2022.1 folder :

For the riscv toolchain and tools, here are the hash value I used to do my builts (riscv32-unknown-elf-gcc version 12.2.0, spike and pk)

The hash value for riscv-gnu-toolchain is:

409b951ba6621f2f115aebddfb15ce2dd78ec24f

For riscv-pk, the hash value is:

2efabd3e6604b8a9e8f70baf52f57696680c7855

And for riscv-isa-sim (spike):

ac466a21df442c59962589ba296c702631e041b5
