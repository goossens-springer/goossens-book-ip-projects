#include <stdio.h>
#include <string.h>
#include "../../../../rv32i_pp_ip/rv32i_pp_ip.h"
#define CRC     0x7934
#define CHARCNT 0x7930
unsigned int data_ram[DATA_RAM_SIZE]={
#include "crc_32_no_print_0_data.hex"
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "crc_32_no_print_0_text.hex"
};
int main(){
  unsigned int nbi, nbc;
  rv32i_pp_ip(0, (instruction_t*)code_ram, (int*)data_ram, &nbi, &nbc);
  printf("%08lX %7ld\n", data_ram[CRC/4], data_ram[CHARCNT/4]);
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  return 0;
}
