#include <stdio.h>
#include "../../../simple_pipeline_ip/simple_pipeline_ip.h"
#define DATA_SIZE 2700
#define RESULT    0x5460/4
unsigned int data_ram[DATA_RAM_SIZE]={
#include "median_no_print_0_data.hex"
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "median_no_print_0_text.hex"
};
int main(){
  unsigned int nbi;
  int          i, j;
  simple_pipeline_ip(0, (instruction_t*)code_ram, (int*)data_ram, &nbi);
  printf("result\n");
  for (i=0; i<DATA_SIZE/20; i++){
    for (j=0; j<20; j++)
      printf("%3d ", data_ram[RESULT+i*20+j]);
    printf("\n");
  }
  printf("%d fetched, decoded and run instructions\n", nbi);
  return 0;
}
