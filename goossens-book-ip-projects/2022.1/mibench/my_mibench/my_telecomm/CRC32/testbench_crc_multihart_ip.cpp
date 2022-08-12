#include <stdio.h>
#include <string.h>
#include "../../../../multihart_ip/multihart_ip.h"
#define CRC     0x7934
#define CHARCNT 0x7930
unsigned int data_ram[NB_HART][HART_DATA_RAM_SIZE]={
{
#include "crc_32_no_print_0_data.hex"
},
{
#include "crc_32_no_print_0_data.hex"
}
#if (NB_HART>2)
,{
#include "crc_32_no_print_0_data.hex"
},
{
#include "crc_32_no_print_0_data.hex"
}
#endif
#if (NB_HART>4)
,{
#include "crc_32_no_print_0_data.hex"
},
{
#include "crc_32_no_print_0_data.hex"
},
{
#include "crc_32_no_print_0_data.hex"
},
{
#include "crc_32_no_print_0_data.hex"
}
#endif
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "crc_32_no_print_0_text.hex"
};
unsigned int start_pc[NB_HART];
int main(){
  unsigned int nbi, nbc;
  multihart_ip((1<<NB_HART)-1,//start all harts
               start_pc, code_ram, (int (*)[HART_DATA_RAM_SIZE])data_ram, &nbi, &nbc);
  for (int h=0; h<NB_HART; h++){
    printf("hart %d\n", h);
    printf("%08lX %7ld\n", data_ram[h][CRC/4], data_ram[h][CHARCNT/4]);
  }
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  return 0;
}
