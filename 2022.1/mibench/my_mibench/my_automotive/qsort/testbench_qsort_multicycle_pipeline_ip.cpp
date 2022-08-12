#include <stdio.h>
#include "../../../../multicycle_pipeline_ip/multicycle_pipeline_ip.h"
#define ARRAYSIZE 1200
unsigned int data_ram[DATA_RAM_SIZE]={
#include "qsort_large_no_print_0_data.hex"
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "qsort_large_no_print_0_text.hex"
};
int main(){
  unsigned int nbi, nbc;
  int          i;
  multicycle_pipeline_ip(0, (instruction_t*)code_ram, (int*)data_ram, &nbi, &nbc);
  for (i=0; i<6*ARRAYSIZE; i+=6)
    printf("%d %d %d\n", data_ram[i], data_ram[i+1], data_ram[i+2]);
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  return 0;
}
