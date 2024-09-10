#include <stdio.h>
#include "multicycle_pipeline_ip.h"
#define LINE_X                         64
#define COLUMN_X                       96
#define LINE_Y                   COLUMN_X
#define COLUMN_Y                       48
#define LINE_Z                     LINE_X
#define COLUMN_Z                 COLUMN_Y
#define SIZE_X          ((LINE_X*COLUMN_X)/NB_IP)
#define SIZE_XY  (SIZE_X+(LINE_Y*COLUMN_Y)/NB_IP)
unsigned int code_ram[IP_CODE_RAM_SIZE]={
#include "mulmat_text.hex"
};
int data_ram[NB_IP][IP_DATA_RAM_SIZE];
int main(){
  unsigned int nbi[NB_IP];
  unsigned int nbc[NB_IP];
  int          w;
  for (int i=0; i<NB_IP; i++)
    for (int j=0; j<LINE_X/NB_IP; j++)
      for (int k=0; k<COLUMN_X; k++)
        data_ram[i][j*COLUMN_X+k]=1;
  for (int i=0; i<NB_IP; i++)
    for (int j=0; j<LINE_Y/NB_IP; j++)
      for (int k=0; k<COLUMN_Y; k++)
        data_ram[i][SIZE_X+j*COLUMN_Y+k]=1;
  for (int i=0; i<NB_IP; i++)
    multicycle_pipeline_ip(i, 0, code_ram, &data_ram[i][0],
                           data_ram, &nbi[i], &nbc[i]);
  printf("matrix Z:\n");
  for (int i=0; i<NB_IP; i++){
    for (int j=0; j<LINE_Z/NB_IP; j++){
      for (int k=0; k<COLUMN_Z; k++)
        printf("%d ",((int*)data_ram)[i*IP_DATA_RAM_SIZE+SIZE_XY+j*COLUMN_Z+k]);
      printf("\n");
    }
  }
  for (int i=0; i<NB_IP; i++){
    printf("core %d: %d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", i, nbi[i], nbc[i],
      ((float)nbi[i])/nbc[i]);
  }
  return 0;
}
