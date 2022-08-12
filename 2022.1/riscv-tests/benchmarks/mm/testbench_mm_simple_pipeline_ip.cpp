#include <stdio.h>
#include "../../../simple_pipeline_ip/simple_pipeline_ip.h"
#define CBM    24
#define CBN    25
#define RESULT 0x140/4
unsigned int data_ram[DATA_RAM_SIZE]={
#include "mm_no_print_0_data.hex"
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "mm_no_print_0_text.hex"
};
int main(){
  unsigned int nbi;
  int          i, j;
  double       d;
  simple_pipeline_ip(0, (instruction_t*)code_ram, (int*)data_ram, &nbi);
  printf("result\n");
  for (i = 0; i < CBM; i++){
    for (j = 0; j < 2*CBN; j+=2){
      memcpy(&d,&data_ram[RESULT+2*i*CBN+j],sizeof(double));
      printf("%e ", d);
    }
    printf("\n");
  }
  printf("%d fetched, decoded and run instructions\n", nbi);
  return 0;
}
