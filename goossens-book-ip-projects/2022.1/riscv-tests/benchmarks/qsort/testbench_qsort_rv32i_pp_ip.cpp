#include <stdio.h>
#include "../../../rv32i_pp_ip/rv32i_pp_ip.h"
#define DATA_SIZE 4096
unsigned int data_ram[DATA_RAM_SIZE]={
#include "qsort_no_print_0_data.hex"
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "qsort_no_print_0_text.hex"
};
int main(){
  unsigned int nbi, nbc;
  int          i;
  rv32i_pp_ip(0, (instruction_t*)code_ram, (int*)data_ram, &nbi, &nbc);
  printf("result\n");
  for (i=0; i<DATA_SIZE; i++)
    printf("%8d\n", data_ram[i]);
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  return 0;
}
