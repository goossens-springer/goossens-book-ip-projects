#include <stdio.h>
#include "multihart_ip.h"
#define LINE_X                         64
#define COLUMN_X                       96
#define LINE_Y                   COLUMN_X
#define COLUMN_Y                       48
#define LINE_Z                     LINE_X
#define COLUMN_Z                 COLUMN_Y
#define SIZE_X          ((LINE_X*COLUMN_X)/(NB_IP*NB_HART))
#define SIZE_XY  (SIZE_X+(LINE_Y*COLUMN_Y)/(NB_IP*NB_HART))
unsigned int code_ram[IP_CODE_RAM_SIZE]={
#if (NB_IP==2)
#if (NB_HART==2)
#include "mulmat_2c_2h_text.hex"
#endif
#if (NB_HART==4)
#include "mulmat_2c_4h_text.hex"
#endif
#if (NB_HART==8)
#include "mulmat_2c_8h_text.hex"
#endif
#endif
#if (NB_IP==4)
#if (NB_HART==2)
#include "mulmat_4c_2h_text.hex"
#endif
#if (NB_HART==4)
#include "mulmat_4c_4h_text.hex"
#endif
#endif
#if (NB_IP==8)
#if (NB_HART==2)
#include "mulmat_8c_2h_text.hex"
#endif
#endif
};
int data_ram[NB_IP][NB_HART][HART_DATA_RAM_SIZE];
unsigned int start_pc[NB_HART]={0};
int main(){
  unsigned int nbi[NB_IP];
  unsigned int nbc[NB_IP];
  for (int i=0; i<NB_IP; i++)
    for (int h=0; h<NB_HART; h++)
      for (int j=0; j<LINE_X/(NB_IP*NB_HART); j++)
        for (int k=0; k<COLUMN_X; k++)
          data_ram[i][h][j*COLUMN_X+k]=1;
  for (int i=0; i<NB_IP; i++)
    for (int h=0; h<NB_HART; h++)
      for (int j=0; j<LINE_Y/(NB_IP*NB_HART); j++)
        for (int k=0; k<COLUMN_Y; k++)
          data_ram[i][h][SIZE_X+j*COLUMN_Y+k]=1;
  for (int i=0; i<NB_IP; i++)
    multihart_ip(i, (1<<NB_HART)-1, start_pc, code_ram,
                &data_ram[i][0], data_ram, &nbi[i], &nbc[i]);
  printf("matrix Z:\n");
  for (int i=0; i<NB_IP; i++){
    for (int h=0; h<NB_HART; h++){
      for (int j=0; j<LINE_Z/(NB_IP*NB_HART); j++){
        for (int k=0; k<COLUMN_Z; k++)
          printf("%d ",((int*)data_ram)[i*IP_DATA_RAM_SIZE+h*HART_DATA_RAM_SIZE+SIZE_XY+j*COLUMN_Z+k]);
        printf("\n");
      }
    }
  }
  for (int i=0; i<NB_IP; i++){
    printf("core %d: %d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", i, nbi[i], nbc[i],
      ((float)nbi[i])/nbc[i]);
  }
  return 0;
}
