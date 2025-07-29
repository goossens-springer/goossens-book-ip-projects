riscv32-unknown-elf-gcc -static -O3 -nostartfiles -o basicmath_small_no_print.elf -T linker.lds -Wl,-no-check-sections basicmath_small_no_print.c rad2deg.c cubic.c isqrt.c -lm
riscv32-unknown-elf-objcopy -O binary --only-section=.text basicmath_small_no_print.elf basicmath_small_no_print_0_text.bin
riscv32-unknown-elf-objcopy -O binary --only-section=.data basicmath_small_no_print.elf basicmath_small_no_print_0_data.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' basicmath_small_no_print_0_text.bin > basicmath_small_no_print_0_text.hex
hexdump -v -e '"0x" /4 "%08x" ",\n"' basicmath_small_no_print_0_data.bin > basicmath_small_no_print_0_data.hex
