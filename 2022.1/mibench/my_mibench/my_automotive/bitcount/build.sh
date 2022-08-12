riscv32-unknown-elf-gcc -static -O3 -nostartfiles -o bitcnts_no_print.elf -T linker.lds -Wl,-no-check-sections bitcnts_no_print.c bitarray.c bitcnt_1.c bitcnt_2.c bitcnt_3.c bitcnt_4.c
riscv32-unknown-elf-objcopy -O binary --only-section=.text bitcnts_no_print.elf bitcnts_no_print_0_text.bin
riscv32-unknown-elf-objcopy -O binary --only-section=.data bitcnts_no_print.elf bitcnts_no_print_0_data.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' bitcnts_no_print_0_text.bin > bitcnts_no_print_0_text.hex
hexdump -v -e '"0x" /4 "%08x" ",\n"' bitcnts_no_print_0_data.bin > bitcnts_no_print_0_data.hex

