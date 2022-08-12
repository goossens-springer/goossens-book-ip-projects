#include <stdio.h>
#include <string.h>
#include "../../../../multihart_ip/multihart_ip.h"
#define OUTPUT 0x6158
#define LENGTH 0x76d4
#define STATE  0x76d8
unsigned int data_ram[NB_HART][HART_DATA_RAM_SIZE]={
{
#include "rawcaudio_no_print_0_data.hex"
},
{
#include "rawcaudio_no_print_0_data.hex"
}
#if (NB_HART>2)
,{
#include "rawcaudio_no_print_0_data.hex"
},
{
#include "rawcaudio_no_print_0_data.hex"
}
#endif
#if (NB_HART>4)
,{
#include "rawcaudio_no_print_0_data.hex"
},
{
#include "rawcaudio_no_print_0_data.hex"
},
{
#include "rawcaudio_no_print_0_data.hex"
},
{
#include "rawcaudio_no_print_0_data.hex"
}
#endif
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "rawcaudio_no_print_0_text.hex"
};
unsigned int start_pc[NB_HART];
int main(){
  unsigned int nbi, nbc, length, i, j;
  struct state_s{short valprev; char index;} state;
  multihart_ip((1<<NB_HART)-1,//start all harts
               start_pc, code_ram, (int (*)[HART_DATA_RAM_SIZE])data_ram, &nbi, &nbc);
  for (int h=0; h<NB_HART; h++){
    printf("hart %d\n", h);
    state  = ((struct state_s*)data_ram[h])[STATE/4];
    length = data_ram[h][LENGTH/4];
    printf("Final valprev=%d, index=%d\n",
            state.valprev, state.index);
    for (i=0; i<length/20; i++){
      for (j=0; j<20; j++)
        printf("%3d ", ((unsigned char*)data_ram[h])[OUTPUT+i*20+j]);
      printf("\n");
    }
    for (j=0; j<length%20; j++)
      printf("%3d ", ((unsigned char*)data_ram[h])[OUTPUT+i*20+j]);
    printf("\n");
  }
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  return 0;
}
