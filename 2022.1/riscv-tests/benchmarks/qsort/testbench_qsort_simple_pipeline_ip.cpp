#include <stdio.h>
#include "../../../simple_pipeline_ip/simple_pipeline_ip.h"
#define DATA_SIZE 4096
unsigned int data_ram[DATA_RAM_SIZE]={
#include "qsort_no_print_0_data.hex"
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "qsort_no_print_0_text.hex"
};
int main(){
  unsigned int nbi;
  int          i;
  simple_pipeline_ip(0, (instruction_t*)code_ram, (int*)data_ram, &nbi);
  printf("result\n");
  for (i=0; i<DATA_SIZE; i++)
    printf("%8d\n", data_ram[i]);
  printf("%d fetched, decoded and run instructions\n", nbi);
  return 0;
}
