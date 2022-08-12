riscv32-unknown-elf-gcc -static -O3 -nostartfiles -o vvadd_no_print.elf -T linker.lds -Wl,-no-check-sections vvadd_main_no_print.c
riscv32-unknown-elf-objcopy -O binary --only-section=.text vvadd_no_print.elf vvadd_no_print_0_text.bin
riscv32-unknown-elf-objcopy -O binary --only-section=.data vvadd_no_print.elf vvadd_no_print_0_data.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' vvadd_no_print_0_text.bin > vvadd_no_print_0_text.hex
hexdump -v -e '"0x" /4 "%08x" ",\n"' vvadd_no_print_0_data.bin > vvadd_no_print_0_data.hex

