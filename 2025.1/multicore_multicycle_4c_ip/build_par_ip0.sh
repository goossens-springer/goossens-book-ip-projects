riscv32-unknown-elf-gcc -nostartfiles -Ttext 0 -Tdata 0 -o test_mem_par_ip0.elf test_mem_par_ip0.s
riscv32-unknown-elf-objcopy -O binary --only-section=.text test_mem_par_ip0.elf test_mem_par_ip0_text.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' test_mem_par_ip0_text.bin > test_mem_par_ip0_text.hex
