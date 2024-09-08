// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XFETCHING_DECODING_IP_H
#define XFETCHING_DECODING_IP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xfetching_decoding_ip_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XFetching_decoding_ip_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XFetching_decoding_ip;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XFetching_decoding_ip_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XFetching_decoding_ip_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XFetching_decoding_ip_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XFetching_decoding_ip_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XFetching_decoding_ip_Initialize(XFetching_decoding_ip *InstancePtr, u16 DeviceId);
XFetching_decoding_ip_Config* XFetching_decoding_ip_LookupConfig(u16 DeviceId);
int XFetching_decoding_ip_CfgInitialize(XFetching_decoding_ip *InstancePtr, XFetching_decoding_ip_Config *ConfigPtr);
#else
int XFetching_decoding_ip_Initialize(XFetching_decoding_ip *InstancePtr, const char* InstanceName);
int XFetching_decoding_ip_Release(XFetching_decoding_ip *InstancePtr);
#endif

void XFetching_decoding_ip_Start(XFetching_decoding_ip *InstancePtr);
u32 XFetching_decoding_ip_IsDone(XFetching_decoding_ip *InstancePtr);
u32 XFetching_decoding_ip_IsIdle(XFetching_decoding_ip *InstancePtr);
u32 XFetching_decoding_ip_IsReady(XFetching_decoding_ip *InstancePtr);
void XFetching_decoding_ip_EnableAutoRestart(XFetching_decoding_ip *InstancePtr);
void XFetching_decoding_ip_DisableAutoRestart(XFetching_decoding_ip *InstancePtr);

void XFetching_decoding_ip_Set_start_pc(XFetching_decoding_ip *InstancePtr, u32 Data);
u32 XFetching_decoding_ip_Get_start_pc(XFetching_decoding_ip *InstancePtr);
u32 XFetching_decoding_ip_Get_nb_instruction(XFetching_decoding_ip *InstancePtr);
u32 XFetching_decoding_ip_Get_nb_instruction_vld(XFetching_decoding_ip *InstancePtr);
u32 XFetching_decoding_ip_Get_code_ram_BaseAddress(XFetching_decoding_ip *InstancePtr);
u32 XFetching_decoding_ip_Get_code_ram_HighAddress(XFetching_decoding_ip *InstancePtr);
u32 XFetching_decoding_ip_Get_code_ram_TotalBytes(XFetching_decoding_ip *InstancePtr);
u32 XFetching_decoding_ip_Get_code_ram_BitWidth(XFetching_decoding_ip *InstancePtr);
u32 XFetching_decoding_ip_Get_code_ram_Depth(XFetching_decoding_ip *InstancePtr);
u32 XFetching_decoding_ip_Write_code_ram_Words(XFetching_decoding_ip *InstancePtr, int offset, word_type *data, int length);
u32 XFetching_decoding_ip_Read_code_ram_Words(XFetching_decoding_ip *InstancePtr, int offset, word_type *data, int length);
u32 XFetching_decoding_ip_Write_code_ram_Bytes(XFetching_decoding_ip *InstancePtr, int offset, char *data, int length);
u32 XFetching_decoding_ip_Read_code_ram_Bytes(XFetching_decoding_ip *InstancePtr, int offset, char *data, int length);

void XFetching_decoding_ip_InterruptGlobalEnable(XFetching_decoding_ip *InstancePtr);
void XFetching_decoding_ip_InterruptGlobalDisable(XFetching_decoding_ip *InstancePtr);
void XFetching_decoding_ip_InterruptEnable(XFetching_decoding_ip *InstancePtr, u32 Mask);
void XFetching_decoding_ip_InterruptDisable(XFetching_decoding_ip *InstancePtr, u32 Mask);
void XFetching_decoding_ip_InterruptClear(XFetching_decoding_ip *InstancePtr, u32 Mask);
u32 XFetching_decoding_ip_InterruptGetEnabled(XFetching_decoding_ip *InstancePtr);
u32 XFetching_decoding_ip_InterruptGetStatus(XFetching_decoding_ip *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
