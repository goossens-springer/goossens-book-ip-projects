riscv32-unknown-elf-gcc -static -O3 -nostartfiles -o median_no_print.elf -T linker.lds -Wl,-no-check-sections median_main_no_print.c median.c
riscv32-unknown-elf-objcopy -O binary --only-section=.text median_no_print.elf median_no_print_0_text.bin
riscv32-unknown-elf-objcopy -O binary --only-section=.data median_no_print.elf median_no_print_0_data.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' median_no_print_0_text.bin > median_no_print_0_text.hex
hexdump -v -e '"0x" /4 "%08x" ",\n"' median_no_print_0_data.bin > median_no_print_0_data.hex

