// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XFETCHING_IP_H
#define XFETCHING_IP_H

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
#include "xfetching_ip_hw.h"

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
} XFetching_ip_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XFetching_ip;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XFetching_ip_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XFetching_ip_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XFetching_ip_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XFetching_ip_ReadReg(BaseAddress, RegOffset) \
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
int XFetching_ip_Initialize(XFetching_ip *InstancePtr, u16 DeviceId);
XFetching_ip_Config* XFetching_ip_LookupConfig(u16 DeviceId);
int XFetching_ip_CfgInitialize(XFetching_ip *InstancePtr, XFetching_ip_Config *ConfigPtr);
#else
int XFetching_ip_Initialize(XFetching_ip *InstancePtr, const char* InstanceName);
int XFetching_ip_Release(XFetching_ip *InstancePtr);
#endif

void XFetching_ip_Start(XFetching_ip *InstancePtr);
u32 XFetching_ip_IsDone(XFetching_ip *InstancePtr);
u32 XFetching_ip_IsIdle(XFetching_ip *InstancePtr);
u32 XFetching_ip_IsReady(XFetching_ip *InstancePtr);
void XFetching_ip_EnableAutoRestart(XFetching_ip *InstancePtr);
void XFetching_ip_DisableAutoRestart(XFetching_ip *InstancePtr);

void XFetching_ip_Set_start_pc(XFetching_ip *InstancePtr, u32 Data);
u32 XFetching_ip_Get_start_pc(XFetching_ip *InstancePtr);
u32 XFetching_ip_Get_code_ram_BaseAddress(XFetching_ip *InstancePtr);
u32 XFetching_ip_Get_code_ram_HighAddress(XFetching_ip *InstancePtr);
u32 XFetching_ip_Get_code_ram_TotalBytes(XFetching_ip *InstancePtr);
u32 XFetching_ip_Get_code_ram_BitWidth(XFetching_ip *InstancePtr);
u32 XFetching_ip_Get_code_ram_Depth(XFetching_ip *InstancePtr);
u32 XFetching_ip_Write_code_ram_Words(XFetching_ip *InstancePtr, int offset, word_type *data, int length);
u32 XFetching_ip_Read_code_ram_Words(XFetching_ip *InstancePtr, int offset, word_type *data, int length);
u32 XFetching_ip_Write_code_ram_Bytes(XFetching_ip *InstancePtr, int offset, char *data, int length);
u32 XFetching_ip_Read_code_ram_Bytes(XFetching_ip *InstancePtr, int offset, char *data, int length);

void XFetching_ip_InterruptGlobalEnable(XFetching_ip *InstancePtr);
void XFetching_ip_InterruptGlobalDisable(XFetching_ip *InstancePtr);
void XFetching_ip_InterruptEnable(XFetching_ip *InstancePtr, u32 Mask);
void XFetching_ip_InterruptDisable(XFetching_ip *InstancePtr, u32 Mask);
void XFetching_ip_InterruptClear(XFetching_ip *InstancePtr, u32 Mask);
u32 XFetching_ip_InterruptGetEnabled(XFetching_ip *InstancePtr);
u32 XFetching_ip_InterruptGetStatus(XFetching_ip *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
