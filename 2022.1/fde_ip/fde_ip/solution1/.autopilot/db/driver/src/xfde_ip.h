// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XFDE_IP_H
#define XFDE_IP_H

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
#include "xfde_ip_hw.h"

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
} XFde_ip_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XFde_ip;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XFde_ip_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XFde_ip_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XFde_ip_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XFde_ip_ReadReg(BaseAddress, RegOffset) \
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
int XFde_ip_Initialize(XFde_ip *InstancePtr, u16 DeviceId);
XFde_ip_Config* XFde_ip_LookupConfig(u16 DeviceId);
int XFde_ip_CfgInitialize(XFde_ip *InstancePtr, XFde_ip_Config *ConfigPtr);
#else
int XFde_ip_Initialize(XFde_ip *InstancePtr, const char* InstanceName);
int XFde_ip_Release(XFde_ip *InstancePtr);
#endif

void XFde_ip_Start(XFde_ip *InstancePtr);
u32 XFde_ip_IsDone(XFde_ip *InstancePtr);
u32 XFde_ip_IsIdle(XFde_ip *InstancePtr);
u32 XFde_ip_IsReady(XFde_ip *InstancePtr);
void XFde_ip_EnableAutoRestart(XFde_ip *InstancePtr);
void XFde_ip_DisableAutoRestart(XFde_ip *InstancePtr);

void XFde_ip_Set_start_pc(XFde_ip *InstancePtr, u32 Data);
u32 XFde_ip_Get_start_pc(XFde_ip *InstancePtr);
u32 XFde_ip_Get_nb_instruction(XFde_ip *InstancePtr);
u32 XFde_ip_Get_nb_instruction_vld(XFde_ip *InstancePtr);
u32 XFde_ip_Get_code_ram_BaseAddress(XFde_ip *InstancePtr);
u32 XFde_ip_Get_code_ram_HighAddress(XFde_ip *InstancePtr);
u32 XFde_ip_Get_code_ram_TotalBytes(XFde_ip *InstancePtr);
u32 XFde_ip_Get_code_ram_BitWidth(XFde_ip *InstancePtr);
u32 XFde_ip_Get_code_ram_Depth(XFde_ip *InstancePtr);
u32 XFde_ip_Write_code_ram_Words(XFde_ip *InstancePtr, int offset, word_type *data, int length);
u32 XFde_ip_Read_code_ram_Words(XFde_ip *InstancePtr, int offset, word_type *data, int length);
u32 XFde_ip_Write_code_ram_Bytes(XFde_ip *InstancePtr, int offset, char *data, int length);
u32 XFde_ip_Read_code_ram_Bytes(XFde_ip *InstancePtr, int offset, char *data, int length);

void XFde_ip_InterruptGlobalEnable(XFde_ip *InstancePtr);
void XFde_ip_InterruptGlobalDisable(XFde_ip *InstancePtr);
void XFde_ip_InterruptEnable(XFde_ip *InstancePtr, u32 Mask);
void XFde_ip_InterruptDisable(XFde_ip *InstancePtr, u32 Mask);
void XFde_ip_InterruptClear(XFde_ip *InstancePtr, u32 Mask);
u32 XFde_ip_InterruptGetEnabled(XFde_ip *InstancePtr);
u32 XFde_ip_InterruptGetStatus(XFde_ip *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
