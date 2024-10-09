riscv32-unknown-elf-gcc -nostartfiles -Ttext 0 -Tdata 0 -o $1.elf $1.s
riscv32-unknown-elf-objcopy -O binary --only-section=.text $1.elf $1_text.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' $1_text.bin > $1_text.hex
