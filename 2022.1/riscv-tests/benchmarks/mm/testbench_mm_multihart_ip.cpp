#include <stdio.h>
#include <string.h>
#include "../../../multihart_ip/multihart_ip.h"
#define CBM    24
#define CBN    25
#define RESULT 0x140/4
unsigned int data_ram[NB_HART][HART_DATA_RAM_SIZE]={
{
#include "mm_no_print_0_data.hex"
},
{
#include "mm_no_print_0_data.hex"
}
#if (NB_HART>2)
,{
#include "mm_no_print_0_data.hex"
},
{
#include "mm_no_print_0_data.hex"
}
#endif
#if (NB_HART>4)
,{
#include "mm_no_print_0_data.hex"
},
{
#include "mm_no_print_0_data.hex"
},
{
#include "mm_no_print_0_data.hex"
},
{
#include "mm_no_print_0_data.hex"
}
#endif
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "mm_no_print_0_text.hex"
};
unsigned int start_pc[NB_HART];
int main(){
  unsigned int nbi, nbc;
  int          i, j;
  double       d;
  multihart_ip((1<<NB_HART)-1,//start all harts
               start_pc, code_ram, (int (*)[HART_DATA_RAM_SIZE])data_ram, &nbi, &nbc);
  for (int h=0; h<NB_HART; h++){
    printf("hart %d\n", (int)h);
    printf("result\n");
    for (i = 0; i < CBM; i++){
      for (j = 0; j < 2*CBN; j+=2){
        memcpy(&d,&data_ram[h][RESULT+2*i*CBN+j],sizeof(double));
        printf("%e ", d);
      }
      printf("\n");
    }
  }
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  return 0;
}
