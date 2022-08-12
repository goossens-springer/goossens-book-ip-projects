#include <stdio.h>
#include "../../../../multihart_ip/multihart_ip.h"
#define RESULT 0xa68
#define FUNCS  7
unsigned int data_ram[NB_HART][HART_DATA_RAM_SIZE]={
{
#include "bitcnts_no_print_0_data.hex"
},
{
#include "bitcnts_no_print_0_data.hex"
}
#if (NB_HART>2)
,{
#include "bitcnts_no_print_0_data.hex"
},
{
#include "bitcnts_no_print_0_data.hex"
}
#endif
#if (NB_HART>4)
,{
#include "bitcnts_no_print_0_data.hex"
},
{
#include "bitcnts_no_print_0_data.hex"
},
{
#include "bitcnts_no_print_0_data.hex"
},
{
#include "bitcnts_no_print_0_data.hex"
}
#endif
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "bitcnts_no_print_0_text.hex"
};
unsigned int start_pc[NB_HART];
int main(){
  unsigned int nbi, nbc;
  int          i, n;
  multihart_ip((1<<NB_HART)-1,//start all harts
               start_pc, code_ram, (int (*)[HART_DATA_RAM_SIZE])data_ram, &nbi, &nbc);
  for (int h=0; h<NB_HART; h++){
    printf("hart %d\n", (int)h);
    for (i=0; i<FUNCS; i++){
      memcpy(&n, &data_ram[h][RESULT/4+i], sizeof(int));
      printf("Bits: %ld\n", n);
    }
  }
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  return 0;
}
