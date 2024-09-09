#include <stdio.h>
#include "multicycle_pipeline_ip.h"
unsigned int code_ram[IP_CODE_RAM_SIZE]={
#include "test_mem_text.hex"
};
int          data_ram[NB_IP][IP_DATA_RAM_SIZE];
int main(){
  unsigned int nbi[NB_IP];
  unsigned int nbc[NB_IP];
  int          w;
  for (int i=0; i<NB_IP; i++)
    multicycle_pipeline_ip(i, 0, code_ram, &data_ram[i][0],
                           data_ram, &nbi[i], &nbc[i]);
  for (int i=0; i<NB_IP; i++){
    printf("core %d: %d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", i, nbi[i], nbc[i],
      ((float)nbi[i])/nbc[i]);
    printf("data memory dump (non null words)\n");
    for (int j=0; j<IP_DATA_RAM_SIZE; j++){
      w = data_ram[i][j];
      if (w != 0)
        printf("m[%5x] = %16d (%8x)\n",
          (i*IP_DATA_RAM_SIZE + j)*4, w, (unsigned int)w);
    }
  }
  return 0;
}
