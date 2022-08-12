riscv32-unknown-elf-gcc -static -O3 -nostartfiles -o rawcaudio_no_print.elf -T linker.lds -Wl,-no-check-sections rawcaudio_no_print.c adpcm.c
riscv32-unknown-elf-objcopy -O binary --only-section=.text rawcaudio_no_print.elf rawcaudio_no_print_0_text.bin
riscv32-unknown-elf-objcopy -O binary --only-section=.data rawcaudio_no_print.elf rawcaudio_no_print_0_data.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' rawcaudio_no_print_0_text.bin > rawcaudio_no_print_0_text.hex
hexdump -v -e '"0x" /4 "%08x" ",\n"' rawcaudio_no_print_0_data.bin > rawcaudio_no_print_0_data.hex

riscv32-unknown-elf-gcc -static -O3 -nostartfiles -o rawdaudio_no_print.elf -T linker.lds -Wl,-no-check-sections rawdaudio_no_print.c adpcm.c
riscv32-unknown-elf-objcopy -O binary --only-section=.text rawdaudio_no_print.elf rawdaudio_no_print_0_text.bin
riscv32-unknown-elf-objcopy -O binary --only-section=.data rawdaudio_no_print.elf rawdaudio_no_print_0_data.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' rawdaudio_no_print_0_text.bin > rawdaudio_no_print_0_text.hex
hexdump -v -e '"0x" /4 "%08x" ",\n"' rawdaudio_no_print_0_data.bin > rawdaudio_no_print_0_data.hex
