#include <stdio.h>
#include "multihart_ip.h"
#define START 0x60
unsigned int code_ram[IP_CODE_RAM_SIZE]={
#if (NB_IP==2)
#if (NB_HART == 2)
#include "test_fork_join_2c_2h_text.hex"
#endif
#if (NB_HART == 4)
#include "test_fork_join_2c_4h_text.hex"
#endif
#endif
#if (NB_IP==4)
#if (NB_HART == 2)
#include "test_fork_join_4c_2h_text.hex"
#endif
#if (NB_HART == 4)
#include "test_fork_join_4c_4h_text.hex"
#endif
#endif
};
int data_ram[NB_IP][NB_HART][HART_DATA_RAM_SIZE];
int main(){
  unsigned int nbi[NB_IP];
  unsigned int nbc[NB_IP];
  int          w;
  data_ram[0][0][0] = 1;
  data_ram[0][0][1] = START;
  for (int i=0; i<NB_IP; i++){
    printf("fork ip %d\n", (int)i);
    multihart_ip(i, code_ram, &data_ram[i][0], data_ram, &nbi[i], &nbc[i]);
  }
  for (int i=NB_IP-2; i>=0; i--){
    printf("join ip %d\n", (int)i);
    multihart_ip(i, code_ram, &data_ram[i][0], data_ram, &nbi[i], &nbc[i]);
  }
  for (int i=0; i<NB_IP; i++){
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
  printf("%d cycles\n", nbc[0]);
  return 0;
}
