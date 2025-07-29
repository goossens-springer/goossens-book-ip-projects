riscv32-unknown-elf-gcc -S -O3 button_led.c gpio_utils/*.c
riscv32-unknown-elf-gcc -static -nostartfiles -T linker.lds -Wl,-no-check-sections -o button_led.elf *.s
riscv32-unknown-elf-objcopy -O binary --only-section=.text button_led.elf button_led_text.bin
riscv32-unknown-elf-objcopy -O binary --only-section=.data button_led.elf button_led_data.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' button_led_text.bin > button_led_text.hex
hexdump -v -e '"0x" /4 "%08x" ",\n"' button_led_data.bin > button_led_data.hex
