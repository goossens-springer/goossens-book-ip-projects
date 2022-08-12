#include <stdio.h>
#include "../../../multicycle_pipeline_ip/multicycle_pipeline_ip.h"
#define DATA_SIZE 2700
#define RESULT    0x5460/4
unsigned int data_ram[DATA_RAM_SIZE]={
#include "median_no_print_0_data.hex"
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "median_no_print_0_text.hex"
};
int main(){
  unsigned int nbi, nbc;
  int          i, j;
  multicycle_pipeline_ip(0, (instruction_t*)code_ram, (int*)data_ram, &nbi, &nbc);
  printf("result\n");
  for (i=0; i<DATA_SIZE/20; i++){
    for (j=0; j<20; j++)
      printf("%3d ", data_ram[RESULT+i*20+j]);
    printf("\n");
  }
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  return 0;
}
