riscv32-unknown-elf-gcc -O1 -S mulmat_4c_2h.c
riscv32-unknown-elf-gcc -static -nostartfiles -T linker_mulmat.lds -Wl,-no-check-sections -o mulmat_4c_2h.elf mulmat_4c_2h.s
riscv32-unknown-elf-objcopy -O binary --only-section=.text mulmat_4c_2h.elf mulmat_4c_2h_text.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' mulmat_4c_2h_text.bin > mulmat_4c_2h_text.hex
