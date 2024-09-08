# goossens-springer-book
The resources to run the experimentations presented in the springer book on Risc-V processors in HLS.

The experiments have been successfully tested on the Basys3, Vitis 2022.2, Windows 10, thanks to M. Wanlong Liu from the university of Jiangnan, but there are a few elements to be corrected from what is given in the book for the Pynq boards.

For Basys3 implementation (i.e. Artix-7 based boards needing the use of a microblaze): the microblaze should have at least 32KB of ram (run block automation/Local Memory: set at 32KB, Debug Module: set at Debug and UART).

Moreover, the size of the code and data ram should not exceed 8KB (instead of 64KB as stated in the book). E.g. in the "fetching_ip", line 4 of the "fetching_ip.h" file should be updated as "#define LOG_CODE_RAM_SIZE 11" (instead of 16 for a Pynq-Z1 or Pynq-Z2 board). The microblaze IP uses some of the available BRAM blocks. In the multi_core_multi_ram_ip (chapter 11), set LOG_RAM_SIZE as 11 in the multi_core_multi_ram_ip.h file. Set the axi_bram_ctrl_0 Master Base Address as c000_0000, Range 4K, axi_bram_ctrl_1 Master Base Address as c000_1000, Range 4K, microblaze_0_local_memory Range 32K. In the driver (file helloworld.c), set BASE_RAM as c000_0000 and define ram0 and ram1 as :
int *ram0 = (int *)(BASE_RAM + 0);
int *ram1 = (int *)(BASE_RAM + 0x1000);

Still for Basys3, updates are needed for the experiments in chapter 12 (multicore_multicycle_ip) for 2 cores and for the experiments in chapter 13 (multicore_multihart_ip) with 2 cores and 2 harts. The code and data ram sizes should be set as 2K words (LOG_CODE_RAM_SIZE 11, LOG_DATA_RAM_SIZE 11) in the multihart_ip.h file and the Vivado address map should start at C000_0000 with a range of 4KB (ending at C000_0FFF for the first core, starting at C000_1000 for the second core). In the helloworld.c Vitis_IDE driver, DATA_RAM should be set as 0xc0000000 and the ram sizes should be set like in the multihart_ip.h file.

For chapter 14, the buttons should be replaced by the Basys3 board switches (16 switches and 16 leds). The first experiment is a direct access to the switches and leds from the microblaze.

In Vivado, the design to be built is the following :

![Capture d’écran du 2023-07-19 21-18-08](https://github.com/goossens-springer/goossens-book-ip-projects/assets/111120027/2c41a2a7-3412-4eab-9d5d-47de678ed4b8)

The addresses should be set as :

![Capture d’écran du 2023-07-19 21-21-38](https://github.com/goossens-springer/goossens-book-ip-projects/assets/111120027/759e5d71-1ad5-40ec-a296-290070ace12c)

The driver to be used in Vitis_IDE is :

<pre><code>
#include "xparameters.h"
#include "xgpio.h"
#define LED_CHANNEL 1 //AXI_GPIO can be configured with 1 or 2 channels
#define SWT_CHANNEL 2 //Channel 1 is for leds, channel 2 is for switches
int main() {
  XGpio_Config *cfg_ptr;
  XGpio gpio_device;
  u32 data;
  cfg_ptr = XGpio_LookupConfig(XPAR_AXI_GPIO_0_DEVICE_ID);
  XGpio_CfgInitialize(&gpio_device, cfg_ptr, cfg_ptr->BaseAddress);
  while (1){
    //data is the bitmap of the 16 switches with 0/pressed, 1/unpressed
    data = XGpio_DiscreteRead(&gpio_device, SWT_CHANNEL);
    XGpio_DiscreteWrite(&gpio_device, LED_CHANNEL, data);
  }
}
</code></pre>

The second experiment uses the "multicycle_pipeline_ip" defined in the "multicore_multicycle_ip" project.

The Vivado design is :

![Capture d’écran du 2023-07-19 21-30-22](https://github.com/goossens-springer/goossens-book-ip-projects/assets/111120027/937b23ba-bc82-4203-ad44-6ee1393371c8)

The addresses :

![Capture d’écran du 2023-07-19 21-32-04](https://github.com/goossens-springer/goossens-book-ip-projects/assets/111120027/75dfbb57-546e-4d1b-8ab9-ff37de33494c)

The Vitid_IDE driver:

<pre><code>
#include "xmulticycle_pipeline_ip.h"
#include "xparameters.h"
#define LOG_NB_IP              1
#define NB_IP                 (1 << LOG_NB_IP)
#define LOG_IP_CODE_RAM_SIZE  (11-LOG_NB_IP)//in word
#define IP_CODE_RAM_SIZE      (1 << LOG_IP_CODE_RAM_SIZE)
#define LOG_IP_DATA_RAM_SIZE  (11-LOG_NB_IP)//in words
#define IP_DATA_RAM_SIZE      (1 << LOG_IP_DATA_RAM_SIZE)
#define DATA_RAM               0xC0000000
int *data_ram = (int*)DATA_RAM;
XMulticycle_pipeline_ip_Config *cfg_ptr;
XMulticycle_pipeline_ip ip;
int       data    [IP_DATA_RAM_SIZE]={
  #include "button_led_data.hex"
};
word_type code_ram[IP_CODE_RAM_SIZE]={
  #include "button_led_text.hex"
};
int main(){
  cfg_ptr = XMulticycle_pipeline_ip_LookupConfig(XPAR_AXI_GPIO_0_DEVICE_ID);
  XMulticycle_pipeline_ip_CfgInitialize(&ip, cfg_ptr);
  XMulticycle_pipeline_ip_Set_ip_num   (&ip, 0);
  XMulticycle_pipeline_ip_Set_start_pc (&ip, 0);
  XMulticycle_pipeline_ip_Write_ip_code_ram_Words(&ip, 0, code_ram, IP_CODE_RAM_SIZE);
  XMulticycle_pipeline_ip_Set_data_ram (&ip, DATA_RAM);
  for (int i=0; i < IP_DATA_RAM_SIZE; i++) data_ram[i] = data[i];
  XMulticycle_pipeline_ip_Start(&ip);
  while (!XMulticycle_pipeline_ip_IsDone(&ip));
  return 0;
}
</code></pre>

To build the "hex" files, you should update the "gpio_utils/xparameters.h" by copying the "xparameters.h" file
found in the Vitis_IDE tool

The "hex" files should be buid with the following commands:

<pre><code>
riscv32-unknown-elf-gcc -S -O3 button_led.c gpio_utils/xgpio.c gpio_utils/xgpio_g.c gpio_utils/xgpio_extra.c gpio_utils/xgpio_sinit.c
riscv32-unknown-elf-gcc -static -nostartfiles -T linker.lds -Wl,-no-check-sections -o button_led.elf button_led.s  xgpio_extra.s  xgpio_g.s  xgpio.s  xgpio_sinit.s
riscv32-unknown-elf-objcopy -O binary --only-section=.text button_led.elf button_led_text.bin
riscv32-unknown-elf-objcopy -O binary --only-section=.data button_led.elf button_led_data.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' button_led_text.bin > button_led_text.hex
hexdump -v -e '"0x" /4 "%08x" ",\n"' button_led_data.bin > button_led_data.hex
</code></pre>

For the riscv toolchain and tools, here are the hash value I used to do my builts (riscv32-unknown-elf-gcc version 12.2.0, spike and pk)

The hash value for riscv-gnu-toolchain is:

409b951ba6621f2f115aebddfb15ce2dd78ec24f

For riscv-pk, the hash value is:

2efabd3e6604b8a9e8f70baf52f57696680c7855

And for riscv-isa-sim (spike):

ac466a21df442c59962589ba296c702631e041b5

For example, to install the same riscv-tool-chain as the one used in the book:

git clone https://github.com/riscv/riscv-gnu-toolchain

cd riscv-gnu-toolchain

git reset --hard 409b951ba6621f2f115aebddfb15ce2dd78ec24f

./configure --prefix=/opt/riscv --enable-multilib --with-arch=rv32i

sudo make

In the book, there are a few misprinted figures or mistakes:

Fig 1.3 (chapter 1): the second line of the table should be "1  0" (instead of "space 0")

Fig 1.4 (chapter 1): the second line of the "propagate" LUT should be "1  0" (instead of "space 0")

Page 29, the print should be "10000 + 20000 is 30000" and not "10,000 + 20,000 is 30,000"

Page 131, "ap_\<size\>" should be replaced by "ap_uint\<size\>" (two incorrect occurrences)

Page 277, "multicycle_pipeline_ip.cpp" should be replaced by "multicycle_pipeline_ip.h"
