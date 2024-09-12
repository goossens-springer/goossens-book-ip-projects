riscv32-unknown-elf-gcc -static -O3 -nostartfiles -o multiply_no_print.elf -T linker.lds -Wl,-no-check-sections multiply_main_no_print.c multiply.c
riscv32-unknown-elf-objcopy -O binary --only-section=.text multiply_no_print.elf multiply_no_print_0_text.bin
riscv32-unknown-elf-objcopy -O binary --only-section=.data multiply_no_print.elf multiply_no_print_0_data.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' multiply_no_print_0_text.bin > multiply_no_print_0_text.hex
hexdump -v -e '"0x" /4 "%08x" ",\n"' multiply_no_print_0_data.bin > multiply_no_print_0_data.hex

