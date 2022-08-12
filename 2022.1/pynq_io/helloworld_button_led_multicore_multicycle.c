#include <stdio.h>
#include "xmulticycle_pipeline_ip.h"
#include "xparameters.h"
#define LOG_NB_IP              1
#define NB_IP                 (1<<LOG_NB_IP)
#define LOG_IP_CODE_RAM_SIZE  (16-LOG_NB_IP)//in word
#define IP_CODE_RAM_SIZE      (1<<LOG_IP_CODE_RAM_SIZE)
#define LOG_IP_DATA_RAM_SIZE  (16-LOG_NB_IP)//in words
#define IP_DATA_RAM_SIZE      (1<<LOG_IP_DATA_RAM_SIZE)
#define DATA_RAM               0x40000000
int *data_ram = (int*)DATA_RAM;
XMulticycle_pipeline_ip_Config *cfg_ptr;
XMulticycle_pipeline_ip ip;
int       data    [IP_DATA_RAM_SIZE]={
#include "button_led_data.hex"
};
word_type code_ram[IP_CODE_RAM_SIZE]={
#include "button_led_text.hex"
};
int main(){
  cfg_ptr = XMulticycle_pipeline_ip_LookupConfig(0);
  XMulticycle_pipeline_ip_CfgInitialize(&ip, cfg_ptr);
  XMulticycle_pipeline_ip_Set_ip_num   (&ip, 0);
  XMulticycle_pipeline_ip_Set_start_pc (&ip, 0);
  XMulticycle_pipeline_ip_Write_ip_code_ram_Words(&ip, 0, code_ram, IP_CODE_RAM_SIZE);
  XMulticycle_pipeline_ip_Set_data_ram (&ip, DATA_RAM);
  for (int i=0; i<IP_DATA_RAM_SIZE; i++) data_ram[i] = data[i];
  XMulticycle_pipeline_ip_Start(&ip);
  while (!XMulticycle_pipeline_ip_IsDone(&ip));
  return 0;
}
