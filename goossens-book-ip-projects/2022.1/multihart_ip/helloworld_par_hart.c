#include <stdio.h>
#include "xmultihart_ip.h"
#include "xparameters.h"
#define LOG_NB_HART             1
#define NB_HART                (1<<LOG_NB_HART)
#define LOG_CODE_RAM_SIZE      16
//size in words
#define CODE_RAM_SIZE          (1<<LOG_CODE_RAM_SIZE)
#define LOG_DATA_RAM_SIZE      16
//size in words
#define DATA_RAM_SIZE          (1<<LOG_DATA_RAM_SIZE)
#define LOG_HART_DATA_RAM_SIZE (LOG_DATA_RAM_SIZE-LOG_NB_HART)
#define HART_DATA_RAM_SIZE     (1<<LOG_HART_DATA_RAM_SIZE)
#define OTHER_HART_START       0x74/4
XMultihart_ip_Config *cfg_ptr;
XMultihart_ip         ip;
unsigned int code_ram[CODE_RAM_SIZE]={
#include "test_mem_par_2h_text.hex"
};
word_type start_pc[NB_HART];
int main(){
  unsigned int nbi;
  unsigned int nbc;
  word_type    w;
  cfg_ptr = XMultihart_ip_LookupConfig(XPAR_XMULTIHART_IP_0_DEVICE_ID);
  XMultihart_ip_CfgInitialize(&ip, cfg_ptr);
  XMultihart_ip_Set_running_hart_set(&ip, (1<<NB_HART)-1);
  for (int h=1; h<NB_HART; h++)
    start_pc[h]=OTHER_HART_START;
  start_pc[0] = 0;
  XMultihart_ip_Write_start_pc_Words(&ip, 0, start_pc, NB_HART);
  XMultihart_ip_Write_code_ram_Words(&ip, 0, code_ram, CODE_RAM_SIZE);
  XMultihart_ip_Start(&ip);
  while (!XMultihart_ip_IsDone(&ip));
  nbi = XMultihart_ip_Get_nb_instruction(&ip);
  nbc = XMultihart_ip_Get_nb_cycle(&ip);
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  for (int h=0; h<NB_HART; h++){
    printf("hart %d data memory dump (non null words)\n", h);
    for (int i=0; i<HART_DATA_RAM_SIZE; i++){
      XMultihart_ip_Read_data_ram_Words
        (&ip, i+(((int)h)<<LOG_HART_DATA_RAM_SIZE), &w, 1);
      if (w != 0)
        printf("m[%5x] = %16d (%8x)\n",
                4*(i+(((int)h)<<LOG_HART_DATA_RAM_SIZE)),
                (int)w, (unsigned int)w);
    }
  }
}

