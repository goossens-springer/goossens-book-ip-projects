riscv32-unknown-elf-gcc -static -O3 -nostartfiles -o mm_no_print.elf -T linker.lds -Wl,-no-check-sections mm_main_no_print.c mm.c -lm
riscv32-unknown-elf-objcopy -O binary --only-section=.text mm_no_print.elf mm_no_print_0_text.bin
riscv32-unknown-elf-objcopy -O binary --only-section=.data mm_no_print.elf mm_no_print_0_data.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' mm_no_print_0_text.bin > mm_no_print_0_text.hex
hexdump -v -e '"0x" /4 "%08x" ",\n"' mm_no_print_0_data.bin > mm_no_print_0_data.hex

