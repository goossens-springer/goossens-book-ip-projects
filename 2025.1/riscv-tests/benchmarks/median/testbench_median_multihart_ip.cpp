#include <stdio.h>
#include "../../../multihart_ip/multihart_ip.h"
#define DATA_SIZE 2700
#define RESULT    0x5460/4
unsigned int data_ram[NB_HART][HART_DATA_RAM_SIZE]={
{
#include "median_no_print_0_data.hex"
},
{
#include "median_no_print_0_data.hex"
}
#if (NB_HART>2)
,{
#include "median_no_print_0_data.hex"
},
{
#include "median_no_print_0_data.hex"
}
#endif
#if (NB_HART>4)
,{
#include "median_no_print_0_data.hex"
},
{
#include "median_no_print_0_data.hex"
},
{
#include "median_no_print_0_data.hex"
},
{
#include "median_no_print_0_data.hex"
}
#endif
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "median_no_print_0_text.hex"
};
unsigned int start_pc[NB_HART];
int main(){
  unsigned int nbi, nbc;
  int          i, j;
  multihart_ip((1<<NB_HART)-1,//start all harts
               start_pc, code_ram, (int (*)[HART_DATA_RAM_SIZE])data_ram, &nbi, &nbc);
  for (int h=0; h<NB_HART; h++){
    printf("hart %d\n", (int)h);
    printf("result\n");
    for (i=0; i<DATA_SIZE/20; i++){
      for (j=0; j<20; j++)
        printf("%3d ", data_ram[h][RESULT+i*20+j]);
      printf("\n");
    }
  }
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  return 0;
}
