riscv32-unknown-elf-gcc -static -O3 -nostartfiles -o search_large_no_print.elf -T linker.lds -Wl,-no-check-sections search_large_no_print.c
riscv32-unknown-elf-objcopy -O binary --only-section=.text search_large_no_print.elf search_large_no_print_0_text.bin
riscv32-unknown-elf-objcopy -O binary --only-section=.data search_large_no_print.elf search_large_no_print_0_data.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' search_large_no_print_0_text.bin > search_large_no_print_0_text.hex
hexdump -v -e '"0x" /4 "%08x" ",\n"' search_large_no_print_0_data.bin > search_large_no_print_0_data.hex

