/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "xmulticycle_pipeline_ip.h"
#include "xparameters.h"
#define LOG_NB_IP              3
#define NB_IP                 (1<<LOG_NB_IP)
#define LOG_IP_CODE_RAM_SIZE  (15-LOG_NB_IP)//in word
#define IP_CODE_RAM_SIZE      (1<<LOG_IP_CODE_RAM_SIZE)
#define LOG_IP_DATA_RAM_SIZE  (15-LOG_NB_IP)//in words
#define IP_DATA_RAM_SIZE      (1<<LOG_IP_DATA_RAM_SIZE)
#define DATA_RAM               XPAR_AXI_BRAM_CTRL_0_BASEADDR
#define IP_RAM_SIZE           (XPAR_MULTICYCLE_PIPELINE_1_BASEADDR-XPAR_MULTICYCLE_PIPELINE_0_BASEADDR)
int *data_ram = (int*)DATA_RAM;
XMulticycle_pipeline_ip_Config *cfg_ptr[NB_IP];
XMulticycle_pipeline_ip ip[NB_IP];
word_type code_ram[IP_CODE_RAM_SIZE]={
#include "test_mem_text.hex"
};
int main(){
  unsigned int nbi[NB_IP];
  unsigned int nbc[NB_IP];
  int          w;
  for (int i=0; i<NB_IP; i++){
    cfg_ptr[i] = XMulticycle_pipeline_ip_LookupConfig(XPAR_MULTICYCLE_PIPELINE_0_BASEADDR+i*IP_RAM_SIZE);
    XMulticycle_pipeline_ip_CfgInitialize(&ip[i], cfg_ptr[i]);
    XMulticycle_pipeline_ip_Set_ip_num   (&ip[i], i);
    XMulticycle_pipeline_ip_Set_start_pc (&ip[i], 0);
    XMulticycle_pipeline_ip_Write_ip_code_ram_Words(&ip[i], 0, code_ram, IP_CODE_RAM_SIZE);
    XMulticycle_pipeline_ip_Set_data_ram (&ip[i], DATA_RAM);
  }
  for (int i=0; i<NB_IP; i++)
    XMulticycle_pipeline_ip_Start(&ip[i]);
  for (int i=NB_IP-1; i>=0; i--)
    while (!XMulticycle_pipeline_ip_IsDone(&ip[i]));
  for (int i=0; i<NB_IP; i++){
    nbc[i] = (int)XMulticycle_pipeline_ip_Get_nb_cycle
                  (&ip[i]);
    nbi[i] = (int)XMulticycle_pipeline_ip_Get_nb_instruction
                  (&ip[i]);
    printf("core %d: %d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", i, nbi[i], nbc[i],
      ((float)nbi[i])/nbc[i]);
    printf("data memory dump (non null words)\n");
    for (int j=0; j<IP_DATA_RAM_SIZE; j++){
      w = data_ram[i*IP_DATA_RAM_SIZE + j];
      if (w != 0)
        printf("m[%5x] = %16d (%8x)\n",
          (i*IP_DATA_RAM_SIZE + j)*4, w, (unsigned int)w);
    }
  }
  return 0;
}
