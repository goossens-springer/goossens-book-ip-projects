#include <stdio.h>
#include "../../../../multihart_ip/multihart_ip.h"
#define ARRAYSIZE 1200
unsigned int data_ram[NB_HART][HART_DATA_RAM_SIZE]={
{
#include "qsort_large_no_print_0_data.hex"
},
{
#include "qsort_large_no_print_0_data.hex"
}
#if (NB_HART>2)
,{
#include "qsort_large_no_print_0_data.hex"
},
{
#include "qsort_large_no_print_0_data.hex"
}
#endif
#if (NB_HART>4)
,{
#include "qsort_large_no_print_0_data.hex"
},
{
#include "qsort_large_no_print_0_data.hex"
},
{
#include "qsort_large_no_print_0_data.hex"
},
{
#include "qsort_large_no_print_0_data.hex"
}
#endif
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "qsort_large_no_print_0_text.hex"
};
unsigned int start_pc[NB_HART];
int main(){
  unsigned int nbi, nbc;
  int          i;
  multihart_ip((1<<NB_HART)-1,//start all harts
               start_pc, code_ram, (int (*)[HART_DATA_RAM_SIZE])data_ram, &nbi, &nbc);
  for (int h=0; h<NB_HART; h++){
    printf("hart %d\n", (int)h);
    for (i=0; i<6*ARRAYSIZE; i+=6)
      printf("%d %d %d\n", data_ram[h][i], data_ram[h][i+1], data_ram[h][i+2]);
  }
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  return 0;
}
