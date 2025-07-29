riscv32-unknown-elf-gcc -nostartfiles -Ttext 0 -Tdata 0 -o test_mem_par_4h.elf test_mem_par_4h.s
riscv32-unknown-elf-objcopy -O binary --only-section=.text test_mem_par_4h.elf test_mem_par_4h_text.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' test_mem_par_4h_text.bin > test_mem_par_4h_text.hex
