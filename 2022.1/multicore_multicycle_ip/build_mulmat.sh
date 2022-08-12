riscv32-unknown-elf-gcc -O1 -S mulmat.c
riscv32-unknown-elf-gcc -static -nostartfiles -T linker_mulmat.lds -Wl,-no-check-sections -o mulmat.elf mulmat.s
riscv32-unknown-elf-objcopy -O binary --only-section=.text mulmat.elf mulmat_text.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' mulmat_text.bin > mulmat_text.hex
