#include <stdio.h>
#include "multihart_ip.h"
#define OTHER_HART_START 0x74/4
int          data_ram[NB_HART][HART_DATA_RAM_SIZE];
unsigned int code_ram[CODE_RAM_SIZE]={
#include "test_mem_par_2h_text.hex"
};
unsigned int start_pc[NB_HART];
int main() {
  unsigned int nbi;
  unsigned int nbc;
  int          w;
  start_pc[0] = 0;
  for (int i=1; i<NB_HART; i++)
    start_pc[i] = OTHER_HART_START;
  multihart_ip((1<<NB_HART)-1,//start all harts
               start_pc, (unsigned int*)code_ram, data_ram,
              &nbi, &nbc);
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  for (int h=0; h<NB_HART; h++){
    printf("hart %d: data memory dump (non null words)\n", h);
    for (int i=0; i<HART_DATA_RAM_SIZE; i++){
      w = data_ram[h][i];
      if (w != 0)
        printf("m[%5x] = %16d (%8x)\n",
        (int)(4*(i+(((w_data_address_t)h)<<
              LOG_HART_DATA_RAM_SIZE))), w, (unsigned int)w);
    }
  }
  return 0;
}
