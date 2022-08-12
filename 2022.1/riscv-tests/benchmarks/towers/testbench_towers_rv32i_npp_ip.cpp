#include <stdio.h>
#include "../../../rv32i_npp_ip/rv32i_npp_ip.h"
#define NUM_DISCS 13
#define NUM_MOVES ((1<<NUM_DISCS)-1)
#define RESULT    0x74
unsigned int data_ram[DATA_RAM_SIZE]={
#include "towers_no_print_0_data.hex"
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "towers_no_print_0_text.hex"
};
int main(){
  unsigned int nbi;
  int          i;
  rv32i_npp_ip(0, (instruction_t*)code_ram, (int*)data_ram, &nbi);
  printf("result\n");
  for (i=0; i<2*NUM_MOVES; i+=2)
    printf("top disc moves from %c to %c\n",
      ((char*)data_ram)[RESULT+i], ((char*)data_ram)[RESULT+i+1]);
  printf("%d fetched, decoded and run instructions\n", nbi);
  return 0;
}
