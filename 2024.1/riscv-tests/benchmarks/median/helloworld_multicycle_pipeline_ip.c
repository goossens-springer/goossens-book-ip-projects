#include <stdio.h>
#include "xmulticycle_pipeline_ip.h"
#include "xparameters.h"
#define LOG_CODE_RAM_SIZE 16
//size in words
#define CODE_RAM_SIZE     (1<<LOG_CODE_RAM_SIZE)
#define LOG_DATA_RAM_SIZE 16
//size in words
#define DATA_RAM_SIZE     (1<<LOG_DATA_RAM_SIZE)
#define DATA_SIZE 2700
#define RESULT    0x5460/4
XMulticycle_pipeline_ip_Config *cfg_ptr;
XMulticycle_pipeline_ip         ip;
word_type data_ram[DATA_RAM_SIZE]={
#include "median_no_print_0_data.hex"
};
word_type code_ram[CODE_RAM_SIZE]={
#include "median_no_print_0_text.hex"
};
int main(){
  unsigned int nbi, nbc;
  int          i, j;
  word_type    w;
  cfg_ptr = XMulticycle_pipeline_ip_LookupConfig
    (XPAR_XMULTICYCLE_PIPELINE_IP_0_DEVICE_ID);
  XMulticycle_pipeline_ip_CfgInitialize(&ip, cfg_ptr);
  XMulticycle_pipeline_ip_Set_start_pc(&ip, 0);
  XMulticycle_pipeline_ip_Write_code_ram_Words
    (&ip, 0, code_ram, CODE_RAM_SIZE);
  XMulticycle_pipeline_ip_Write_data_ram_Words
    (&ip, 0, data_ram, DATA_RAM_SIZE);
  XMulticycle_pipeline_ip_Start(&ip);
  while (!XMulticycle_pipeline_ip_IsDone(&ip));
  printf("result\n");
  for (i=0; i<DATA_SIZE/20; i++){
    for (j=0; j<20; j++){
      XMulticycle_pipeline_ip_Read_data_ram_Words(&ip, i*20+j+RESULT, &w, 1);
      printf("%3d ", (int)w);
    }
    printf("\n");
  }
  nbi = (unsigned int)XMulticycle_pipeline_ip_Get_nb_instruction(&ip);
  nbc = (unsigned int)XMulticycle_pipeline_ip_Get_nb_cycle(&ip);
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  return 0;
}
