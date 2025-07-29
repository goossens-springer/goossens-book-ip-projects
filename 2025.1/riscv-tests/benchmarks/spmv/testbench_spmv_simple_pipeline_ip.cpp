#include <stdio.h>
#include "../../../simple_pipeline_ip/simple_pipeline_ip.h"
#define R 300
#define Y 0x5788/4
unsigned int data_ram[DATA_RAM_SIZE]={
#include "spmv_no_print_0_data.hex"
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "spmv_no_print_0_text.hex"
};
int main(){
  unsigned int nbi;
  int          i, j;
  double       d;
  simple_pipeline_ip(0, (instruction_t*)code_ram, (int*)data_ram, &nbi);
  printf("result\n");
  for (i=0; i<R/10; i++){
    for (j=0; j<20; j+=2){
      memcpy(&d,&data_ram[Y+20*i+j],sizeof(double));
      printf("%8d ", (int)d);
    }
    printf("\n");
  }
  printf("%d fetched, decoded and run instructions\n", nbi);
  return 0;
}
