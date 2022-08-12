#include <stdio.h>
#include "../../../../rv32i_npp_ip/rv32i_npp_ip.h"
#define RESULT 0x1e88
unsigned int data_ram[DATA_RAM_SIZE]={
#include "search_large_no_print_0_data.hex"
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "search_large_no_print_0_text.hex"
};
int main(){
  unsigned int nbi;
  rv32i_npp_ip(0, (instruction_t*)code_ram, (int*)data_ram, &nbi);
  printf("%s",((char*)data_ram)+RESULT);
  printf("%d fetched, decoded and run instructions\n", nbi);
  return 0;
}
