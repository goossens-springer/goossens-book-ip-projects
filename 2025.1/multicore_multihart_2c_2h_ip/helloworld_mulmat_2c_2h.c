#include <stdio.h>
#include "xmultihart_ip.h"
#include "xparameters.h"
#define LOG_NB_IP               1
#define NB_IP                  (1<<LOG_NB_IP)
#define LOG_NB_HART             1
#define NB_HART                (1<<LOG_NB_HART)
#define LOG_CODE_RAM_SIZE      16
#define LOG_DATA_RAM_SIZE      16
#define LOG_IP_CODE_RAM_SIZE   (LOG_CODE_RAM_SIZE-LOG_NB_IP)//in word
#define IP_CODE_RAM_SIZE       (1<<LOG_IP_CODE_RAM_SIZE)
#define LOG_IP_DATA_RAM_SIZE   (LOG_DATA_RAM_SIZE-LOG_NB_IP)//in words
#define IP_DATA_RAM_SIZE       (1<<LOG_IP_DATA_RAM_SIZE)
#define LOG_HART_DATA_RAM_SIZE (LOG_IP_DATA_RAM_SIZE-LOG_NB_HART)
#define HART_DATA_RAM_SIZE     (1<<LOG_HART_DATA_RAM_SIZE)
#define LINE_X                 64
#define COLUMN_X               96
#define LINE_Y                 COLUMN_X
#define COLUMN_Y               48
#define LINE_Z                 LINE_X
#define COLUMN_Z               COLUMN_Y
#define SIZE_X          ((LINE_X*COLUMN_X)/(NB_IP*NB_HART))
#define SIZE_XY  (SIZE_X+(LINE_Y*COLUMN_Y)/(NB_IP*NB_HART))
#define DATA_RAM               XPAR_AXI_BRAM_CTRL_0_BASEADDR
#define IP_RAM_SIZE           (XPAR_MULTIHART_IP_1_BASEADDR-XPAR_MULTIHART_IP_0_BASEADDR)
int *data_ram = (int*)DATA_RAM;
XMultihart_ip_Config *cfg_ptr[NB_IP];
XMultihart_ip ip[NB_IP];
word_type code_ram[IP_CODE_RAM_SIZE]={
#include "mulmat_2c_2h_text.hex"
};
word_type start_pc[NB_HART]={0};
int main(){
  unsigned int nbi[NB_IP];
  unsigned int nbc[NB_IP];
  for (int i=0; i<NB_IP; i++)
    for (int h=0; h<NB_HART; h++)
      for (int j=0; j<LINE_X/(NB_IP*NB_HART); j++)
        for (int k=0; k<COLUMN_X; k++)
          data_ram[i*IP_DATA_RAM_SIZE+h*HART_DATA_RAM_SIZE+j*COLUMN_X+k]=1;
  for (int i=0; i<NB_IP; i++)
    for (int h=0; h<NB_HART; h++)
      for (int j=0; j<LINE_Y/(NB_IP*NB_HART); j++)
        for (int k=0; k<COLUMN_Y; k++)
          data_ram[i*IP_DATA_RAM_SIZE+h*HART_DATA_RAM_SIZE+SIZE_X+j*COLUMN_Y+k]=1;
  printf("matrix X\n");
  for (int i=0; i<NB_IP; i++)
    for (int h=0; h<NB_HART; h++)
      for (int j=0; j<LINE_X/(NB_IP*NB_HART); j++){
        for (int k=0; k<COLUMN_X; k++)
          printf("%d ",data_ram[i*IP_DATA_RAM_SIZE+h*HART_DATA_RAM_SIZE+j*COLUMN_X+k]);
        printf("\n");
      }
  printf("matrix Y\n");
  for (int i=0; i<NB_IP; i++)
    for (int h=0; h<NB_HART; h++)
      for (int j=0; j<LINE_Y/(NB_IP*NB_HART); j++){
        for (int k=0; k<COLUMN_Y; k++)
          printf("%d ",data_ram[i*IP_DATA_RAM_SIZE+h*HART_DATA_RAM_SIZE+SIZE_X+j*COLUMN_Y+k]);
        printf("\n");
      }
  for (int i=0; i<NB_IP; i++){
    cfg_ptr[i] = XMultihart_ip_LookupConfig(XPAR_MULTIHART_IP_0_BASEADDR+i*IP_RAM_SIZE);
    XMultihart_ip_CfgInitialize
      (&ip[i], cfg_ptr[i]);
    XMultihart_ip_Set_ip_num(&ip[i], i);
    XMultihart_ip_Set_running_hart_set
      (&ip[i], (1<<NB_HART)-1);
    XMultihart_ip_Write_start_pc_Words
      (&ip[i], 0, start_pc, NB_HART);
    XMultihart_ip_Write_ip_code_ram_Words
      (&ip[i], 0, code_ram, IP_CODE_RAM_SIZE);
    XMultihart_ip_Set_data_ram(&(ip[i]), DATA_RAM);
  }
  for (int i=0; i<NB_IP; i++) XMultihart_ip_Start(&ip[i]);
  for (int i=NB_IP-1; i>=0; i--)
    while (!XMultihart_ip_IsDone(&ip[i]));
  for (int i=0; i<NB_IP; i++){
    nbc[i] = (int)XMultihart_ip_Get_nb_cycle(&ip[i]);
    nbi[i] = (int)XMultihart_ip_Get_nb_instruction(&ip[i]);
  }
  printf("matrix Z:\n");
  for (int i=0; i<NB_IP; i++){
    for (int h=0; h<NB_HART; h++){
      for (int j=0; j<LINE_Z/(NB_IP*NB_HART); j++){
        for (int k=0; k<COLUMN_Z; k++)
          printf("%d ",data_ram[i*IP_DATA_RAM_SIZE+h*HART_DATA_RAM_SIZE+SIZE_XY+j*COLUMN_Z+k]);
        printf("\n");
      }
    }
  }
  for (int i=0; i<NB_IP; i++){
    printf("core %d: %d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", i, nbi[i], nbc[i],
      ((float)nbi[i])/nbc[i]);
  }
}

