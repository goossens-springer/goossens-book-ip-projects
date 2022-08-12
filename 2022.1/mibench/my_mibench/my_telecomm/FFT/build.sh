riscv32-unknown-elf-gcc -static -O3 -nostartfiles -o fft_no_print.elf -T linker.lds -Wl,-no-check-sections main_no_print.c fourierf.c fftmisc.c -lm
riscv32-unknown-elf-objcopy -O binary --only-section=.text fft_no_print.elf fft_no_print_0_text.bin
riscv32-unknown-elf-objcopy -O binary --only-section=.data fft_no_print.elf fft_no_print_0_data.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' fft_no_print_0_text.bin > fft_no_print_0_text.hex
hexdump -v -e '"0x" /4 "%08x" ",\n"' fft_no_print_0_data.bin > fft_no_print_0_data.hex

riscv32-unknown-elf-gcc -static -O3 -nostartfiles -o fft_inv_no_print.elf -T linker.lds -Wl,-no-check-sections main_inv_no_print.c fourierf.c fftmisc.c -lm
riscv32-unknown-elf-objcopy -O binary --only-section=.text fft_inv_no_print.elf fft_inv_no_print_0_text.bin
riscv32-unknown-elf-objcopy -O binary --only-section=.data fft_inv_no_print.elf fft_inv_no_print_0_data.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' fft_inv_no_print_0_text.bin > fft_inv_no_print_0_text.hex
hexdump -v -e '"0x" /4 "%08x" ",\n"' fft_inv_no_print_0_data.bin > fft_inv_no_print_0_data.hex
