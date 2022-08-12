riscv32-unknown-elf-gcc -O1 -S mulmat_2c_8h.c
riscv32-unknown-elf-gcc -static -nostartfiles -T linker_mulmat.lds -Wl,-no-check-sections -o mulmat_2c_8h.elf mulmat_2c_8h.s
riscv32-unknown-elf-objcopy -O binary --only-section=.text mulmat_2c_8h.elf mulmat_2c_8h_text.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' mulmat_2c_8h_text.bin > mulmat_2c_8h_text.hex
