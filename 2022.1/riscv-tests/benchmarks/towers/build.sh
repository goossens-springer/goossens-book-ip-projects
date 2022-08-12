riscv32-unknown-elf-gcc -static -O3 -nostartfiles -o towers_no_print.elf -T linker.lds -Wl,-no-check-sections towers_main_no_print.c
riscv32-unknown-elf-objcopy -O binary --only-section=.text towers_no_print.elf towers_no_print_0_text.bin
riscv32-unknown-elf-objcopy -O binary --only-section=.data towers_no_print.elf towers_no_print_0_data.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' towers_no_print_0_text.bin > towers_no_print_0_text.hex
hexdump -v -e '"0x" /4 "%08x" ",\n"' towers_no_print_0_data.bin > towers_no_print_0_data.hex

