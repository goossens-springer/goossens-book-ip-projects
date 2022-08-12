#include <stdio.h>
#include "multicycle_pipeline_ip.h"
int          data_ram[DATA_RAM_SIZE];
unsigned int code_ram[CODE_RAM_SIZE]={
#include "mulmat_0_text.hex"
};
#define LINE_X                         64
#define COLUMN_X                       96
#define LINE_Y                   COLUMN_X
#define COLUMN_Y                       48
#define LINE_Z                     LINE_X
#define COLUMN_Z                 COLUMN_Y
#define SIZE_X   (LINE_X*COLUMN_X)
#define SIZE_XY  (LINE_Y*COLUMN_Y + SIZE_X)
int main() {
  unsigned int  nbi;
  unsigned int  nbc;
  for (int i=0; i<LINE_X; i++)
    for (int j=0; j<COLUMN_X; j++)
      data_ram[i*COLUMN_X+j] = 1;
  for (int i=0; i<LINE_Y; i++)
    for (int j=0; j<COLUMN_Y; j++)
      data_ram[SIZE_X+i*COLUMN_Y+j] = 1;
  printf("matrix X:\n");
  for (int i=0; i<LINE_X; i++){
    for (int j=0; j<COLUMN_X; j++)
      printf("%2d ", data_ram[i*COLUMN_X+j]);
    printf("\n");
  }
  printf("matrix Y:\n");
  for (int i=0; i<LINE_Y; i++){
    for (int j=0; j<COLUMN_Y; j++)
      printf("%2d ", data_ram[SIZE_X+i*COLUMN_Y+j]);
    printf("\n");
  }
  multicycle_pipeline_ip(0, code_ram, data_ram, &nbi, &nbc);
  printf("matrix Z:\n");
  for (int i=0; i<LINE_Z; i++){
    for (int j=0; j<COLUMN_Z; j++)
      printf("%2d ", data_ram[SIZE_XY+i*COLUMN_Z+j]);
    printf("\n");
  }
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  return 0;
}
