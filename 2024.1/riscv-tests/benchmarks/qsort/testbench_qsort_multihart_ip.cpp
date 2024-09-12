#include <stdio.h>
#include "../../../multihart_ip/multihart_ip.h"
#define DATA_SIZE 4096
unsigned int data_ram[NB_HART][HART_DATA_RAM_SIZE]={
{
#include "qsort_no_print_0_data.hex"
},
{
#include "qsort_no_print_0_data.hex"
}
#if (NB_HART>2)
,{
#include "qsort_no_print_0_data.hex"
},
{
#include "qsort_no_print_0_data.hex"
}
#endif
#if (NB_HART>4)
,{
#include "qsort_no_print_0_data.hex"
},
{
#include "qsort_no_print_0_data.hex"
},
{
#include "qsort_no_print_0_data.hex"
},
{
#include "qsort_no_print_0_data.hex"
}
#endif
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "qsort_no_print_0_text.hex"
};
unsigned int start_pc[NB_HART];
int main(){
  unsigned int nbi, nbc;
  int          i;
  multihart_ip((1<<NB_HART)-1,//start all harts
               start_pc, code_ram, (int (*)[HART_DATA_RAM_SIZE])data_ram, &nbi, &nbc);
  for (int h=0; h<NB_HART; h++){
    printf("hart %d\n", (int)h);
    printf("result\n");
    for (i=0; i<DATA_SIZE; i++)
      printf("%8d\n", data_ram[h][i]);
  }
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  return 0;
}
