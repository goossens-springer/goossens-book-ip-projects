riscv32-unknown-elf-gcc -static -O3 -nostartfiles -o qsort_no_print.elf -T linker.lds -Wl,-no-check-sections qsort_main_no_print.c
riscv32-unknown-elf-objcopy -O binary --only-section=.text qsort_no_print.elf qsort_no_print_0_text.bin
riscv32-unknown-elf-objcopy -O binary --only-section=.data qsort_no_print.elf qsort_no_print_0_data.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' qsort_no_print_0_text.bin > qsort_no_print_0_text.hex
hexdump -v -e '"0x" /4 "%08x" ",\n"' qsort_no_print_0_data.bin > qsort_no_print_0_data.hex

