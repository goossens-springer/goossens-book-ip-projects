#include <stdio.h>
#include <string.h>
#include "../../../../simple_pipeline_ip/simple_pipeline_ip.h"
#define CRC     0x7934
#define CHARCNT 0x7930
unsigned int data_ram[DATA_RAM_SIZE]={
#include "crc_32_no_print_0_data.hex"
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "crc_32_no_print_0_text.hex"
};
int main(){
  unsigned int nbi;
  simple_pipeline_ip(0, (instruction_t*)code_ram, (int*)data_ram, &nbi);
  printf("%08lX %7ld\n", data_ram[CRC/4], data_ram[CHARCNT/4]);
  printf("%d fetched, decoded and run instructions\n", nbi);
  return 0;
}
