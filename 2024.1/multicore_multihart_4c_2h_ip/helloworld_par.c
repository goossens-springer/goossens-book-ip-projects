#include <stdio.h>
#include "xmultihart_ip.h"
#include "xparameters.h"
#define LOG_NB_IP               2
#define NB_IP                  (1<<LOG_NB_IP)
#define LOG_NB_HART             1
#define NB_HART                (1<<LOG_NB_HART)
#define LOG_CODE_RAM_SIZE      16
#define LOG_DATA_RAM_SIZE      16
#define LOG_IP_CODE_RAM_SIZE   (LOG_CODE_RAM_SIZE-LOG_NB_IP)//in word
#define IP_CODE_RAM_SIZE       (1<<LOG_IP_CODE_RAM_SIZE)
#define LOG_IP_DATA_RAM_SIZE   (LOG_DATA_RAM_SIZE-LOG_NB_IP)//in words
#define LOG_HART_DATA_RAM_SIZE (LOG_IP_DATA_RAM_SIZE-LOG_NB_HART)
#define HART_DATA_RAM_SIZE     (1<<LOG_HART_DATA_RAM_SIZE)
#define DATA_RAM               XPAR_AXI_BRAM_CTRL_0_BASEADDR
#define IP_RAM_SIZE           (XPAR_MULTIHART_IP_1_BASEADDR-XPAR_MULTIHART_IP_0_BASEADDR)
#define OTHER_HART_START       0x78/4
int *data_ram = (int*)DATA_RAM;
XMultihart_ip_Config *cfg_ptr[NB_IP];
XMultihart_ip ip[NB_IP];
word_type code_ram_0[IP_CODE_RAM_SIZE]={
#include "test_mem_par_ip0_text.hex"
};
word_type code_ram[IP_CODE_RAM_SIZE]={
#include "test_mem_par_otherip_text.hex"
};
word_type start_pc[NB_HART];
int main(){
  unsigned int nbi[NB_IP];
  unsigned int nbc[NB_IP];
  word_type    w;
  for (int h=0; h<NB_HART; h++)
    start_pc[h] = 0;
  for (int i=0; i<NB_IP; i++){
    cfg_ptr[i] = XMultihart_ip_LookupConfig(XPAR_MULTIHART_IP_0_BASEADDR+i*IP_RAM_SIZE);
    XMultihart_ip_CfgInitialize(&ip[i], cfg_ptr[i]);
    XMultihart_ip_Set_ip_num(&ip[i], i);
    XMultihart_ip_Set_running_hart_set(&ip[i], (1<<NB_HART)-1);
    XMultihart_ip_Set_data_ram(&(ip[i]), DATA_RAM);
  }
  for (int i=1; i<NB_IP; i++){
    XMultihart_ip_Write_start_pc_Words(&ip[i], 0, start_pc, NB_HART);
    XMultihart_ip_Write_ip_code_ram_Words(&ip[i], 0, code_ram, IP_CODE_RAM_SIZE);
  }
  for (int h=1; h<NB_HART; h++)
    start_pc[h]=OTHER_HART_START;
  XMultihart_ip_Write_start_pc_Words(&ip[0], 0, start_pc, NB_HART);
  XMultihart_ip_Write_ip_code_ram_Words(&ip[0], 0, code_ram_0, IP_CODE_RAM_SIZE);
  for (int i=0; i<NB_IP; i++) XMultihart_ip_Start(&ip[i]);
  for (int i=NB_IP-1; i>=0; i--)
    while (!XMultihart_ip_IsDone(&ip[i]));
  for (int i=0; i<NB_IP; i++){
    nbc[i] = (int)XMultihart_ip_Get_nb_cycle(&ip[i]);
    nbi[i] = (int)XMultihart_ip_Get_nb_instruction(&ip[i]);
  }
  for (int i=0; i<NB_IP; i++){
    printf("core %d: %d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", i, nbi[i], nbc[i], ((float)nbi[i])/nbc[i]);
    for (int h=0; h<NB_HART; h++){
      printf("hart %d data memory dump (non null words)\n", h);
      for (int j=0; j<HART_DATA_RAM_SIZE; j++){
        w = data_ram[(i<<LOG_IP_DATA_RAM_SIZE)   +
                     (h<<LOG_HART_DATA_RAM_SIZE) + j];
        if (w != 0)
          printf("m[%5x] = %16d (%8x)\n",
            4*((i<<LOG_IP_DATA_RAM_SIZE)   +
               (h<<LOG_HART_DATA_RAM_SIZE) + j), (int)w, (unsigned int)w);
      }
    }
  }
}
