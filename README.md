# goossens-springer-book
The 2022.1 folder corresponds to the original version presented in the book "Guide to Computer Processor Architecture", Bernard Goossens, Springer 2023.

The 2024.1 folder corresponds to an update to be used with the Vitis 2024.1 version.

The 2023.1 and 2023.2 versions are not recommended. Either install Vitis 2022.1 or 2024.1.

New !!! The Vitis 2025.1 version is now supported. Find all the experiments in the book adapted to the Vitis 2025.1 version.

New !!! I have added a "fir" folder in which you will find the HLS implementation of a fir filter. The source code is given in the folder. A readme.md file is also available. It can be implemented in whatever Vitis version, following the recipes given in the other folders, e.g. for Vitis 2025.1, implement an hls_component, a platform and a hello_world driver as explained in the 2025.1 folder.

Reminder : To build the toolchain I used in my book (compiler, spike and pk for the rv32i isa), I used the following versions, as stated in the readme file of the 2022.1 folder :

For the riscv toolchain and tools, here are the hash value I used to do my builts (riscv32-unknown-elf-gcc version 12.2.0, spike and pk)

The hash value for riscv-gnu-toolchain is:

409b951ba6621f2f115aebddfb15ce2dd78ec24f

For riscv-pk, the hash value is:

2efabd3e6604b8a9e8f70baf52f57696680c7855

And for riscv-isa-sim (spike):

ac466a21df442c59962589ba296c702631e041b5
