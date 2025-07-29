#include <stdio.h>
#include "../../../../rv32i_npp_ip/rv32i_npp_ip.h"
#define RESULT 0xa68
#define FUNCS     7
unsigned int data_ram[DATA_RAM_SIZE]={
#include "bitcnts_no_print_0_data.hex"
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "bitcnts_no_print_0_text.hex"
};
int main(){
  unsigned int nbi;
  int          i, n;
  rv32i_npp_ip(0, (instruction_t*)code_ram, (int*)data_ram, &nbi);
  for (i=0; i<FUNCS; i++){
    memcpy(&n, &data_ram[RESULT/4+i], sizeof(int));
    printf("Bits: %ld\n", n);
  }
  printf("%d fetched, decoded and run instructions\n",nbi);
  return 0;
}
