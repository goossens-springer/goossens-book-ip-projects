riscv32-unknown-elf-gcc -static -O3 -nostartfiles -o spmv_no_print.elf -T linker.lds -Wl,-no-check-sections spmv_main_no_print.c
riscv32-unknown-elf-objcopy -O binary --only-section=.text spmv_no_print.elf spmv_no_print_0_text.bin
riscv32-unknown-elf-objcopy -O binary --only-section=.data spmv_no_print.elf spmv_no_print_0_data.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' spmv_no_print_0_text.bin > spmv_no_print_0_text.hex
hexdump -v -e '"0x" /4 "%08x" ",\n"' spmv_no_print_0_data.bin > spmv_no_print_0_data.hex

