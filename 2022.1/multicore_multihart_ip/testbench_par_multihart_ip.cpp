#include <stdio.h>
#include "multihart_ip.h"
#define OTHER_HART_START 0x78/4
unsigned int code_ram_0[IP_CODE_RAM_SIZE]={
#include "test_mem_par_ip0_text.hex"
};
unsigned int code_ram  [IP_CODE_RAM_SIZE]={
#include "test_mem_par_otherip_text.hex"
};
int data_ram[NB_IP][NB_HART][HART_DATA_RAM_SIZE];
unsigned int start_pc  [NB_HART]={0};
unsigned int start_pc_0[NB_HART];
int main(){
  unsigned int nbi[NB_IP];
  unsigned int nbc[NB_IP];
  int          w;
  start_pc_0[0] = 0;
  for (int i=1; i<NB_HART; i++)
    start_pc_0[i] = OTHER_HART_START;
  for (int i=1; i<NB_IP; i++)
    multihart_ip(i, (1<<NB_HART)-1, start_pc, code_ram,
     &data_ram[i][0], data_ram, &nbi[i], &nbc[i]);
  multihart_ip(0, (1<<NB_HART)-1, start_pc_0, code_ram_0,
   &data_ram[0][0], data_ram, &nbi[0], &nbc[0]);
  for (int i=0; i<NB_IP; i++){
    printf("core %d: %d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", i, nbi[i], nbc[i],
    ((float)nbi[i])/nbc[i]);
    for (int h=0; h<NB_HART; h++){
      printf("hart %d: data memory dump (non null words)\n", h);
      for (int j=0; j<HART_DATA_RAM_SIZE; j++){
        w = data_ram[i][h][j];
        if (w != 0)
          printf("m[%5x] = %16d (%8x)\n",
            4*((i<<LOG_IP_DATA_RAM_SIZE)   +
               (h<<LOG_HART_DATA_RAM_SIZE) + j),
            w, (unsigned int)w);
      }
    }
  }
  return 0;
}
