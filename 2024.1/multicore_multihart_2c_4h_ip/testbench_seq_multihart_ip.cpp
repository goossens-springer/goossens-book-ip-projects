#include <stdio.h>
#include "multihart_ip.h"
unsigned int code_ram[IP_CODE_RAM_SIZE]={
#include "test_mem_text.hex"
};
int          data_ram[NB_IP][NB_HART][HART_DATA_RAM_SIZE];
unsigned int start_pc[NB_HART];
int main() {
  unsigned int nbi[NB_IP];
  unsigned int nbc[NB_IP];
  int          w;
  for (int h=0; h<NB_HART; h++) start_pc[h] = 0;
  for (int i=0; i<NB_IP; i++){
    multihart_ip(i, (1<<NB_HART)-1, start_pc, code_ram,
     &data_ram[i][0], &data_ram[0], &nbi[i], &nbc[i]);
  }
  for (int i=0; i<NB_IP; i++){
    printf("core %d: %d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", i, nbi[i], nbc[i],
    ((float)nbi[i])/nbc[i]);
    for (int h=0; h<NB_HART; h++){
      printf("hart: %d data memory dump (non null words)\n", h);
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
