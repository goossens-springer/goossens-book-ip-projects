riscv32-unknown-elf-gcc -static -O3 -nostartfiles -o crc_32_no_print.elf -T linker.lds -Wl,-no-check-sections crc_32_no_print.c
riscv32-unknown-elf-objcopy -O binary --only-section=.text crc_32_no_print.elf crc_32_no_print_0_text.bin
riscv32-unknown-elf-objcopy -O binary --only-section=.data crc_32_no_print.elf crc_32_no_print_0_data.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' crc_32_no_print_0_text.bin > crc_32_no_print_0_text.hex
hexdump -v -e '"0x" /4 "%08x" ",\n"' crc_32_no_print_0_data.bin > crc_32_no_print_0_data.hex

