riscv32-unknown-elf-gcc -O3 -S mulmat.c
riscv32-unknown-elf-gcc -static -nostartfiles -Ttext 0 -Tdata 0 -Wl,-no-check-sections -o mulmat.elf mulmat.s
riscv32-unknown-elf-objcopy -O binary --only-section=.text mulmat.elf mulmat_0_text.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' mulmat_0_text.bin > mulmat_0_text.hex
