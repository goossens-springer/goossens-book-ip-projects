/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
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

#include "xparameters.h"
#include "xfir.h"
#include <stdio.h>
#include <stdlib.h>
#define SAMPLES 600
#define MASK 0xfff00000
#define SIGN(v) (v&0x00080000)
int input[SAMPLES] = {
    #include "input.dat"
};
int golden[SAMPLES] = {
    #include "out.gold.dat"
};
int output[SAMPLES];
int convert(u32 v){
  if (SIGN(v)) return v|MASK;
  else return v;
}
int main(){
  XFir_Config *cfg_ptr;
  XFir         ip;
  cfg_ptr = XFir_LookupConfig(XPAR_FIR_0_BASEADDR);
  XFir_CfgInitialize(&ip, cfg_ptr);
  int signal;
  printf("Starting FIR processing...\n");
  for (int i = 0; i < SAMPLES; i++){
    signal = input[i];
    XFir_Set_x(&ip, (int8_t) signal);
    XFir_Start(&ip);
    while (!XFir_IsDone(&ip));
    output[i] = convert(XFir_Get_y(&ip));
  }
  printf("Comparing with golden output...\n");
  for (unsigned int i = 0; i < SAMPLES; i++){
    if (output[i] != golden[i]){
      printf("FAIL: Output DOES NOT match golden output\n");
      return 1;
    }
    else{
      printf("PASS: Output matches golden output\r\n");
      return 0;
    }
  }
}
