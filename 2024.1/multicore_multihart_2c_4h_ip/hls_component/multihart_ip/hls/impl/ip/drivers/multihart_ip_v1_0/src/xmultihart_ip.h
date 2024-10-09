// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XMULTIHART_IP_H
#define XMULTIHART_IP_H

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
#include "xmultihart_ip_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XMultihart_ip_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMultihart_ip;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMultihart_ip_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMultihart_ip_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMultihart_ip_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMultihart_ip_ReadReg(BaseAddress, RegOffset) \
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
#ifdef SDT
int XMultihart_ip_Initialize(XMultihart_ip *InstancePtr, UINTPTR BaseAddress);
XMultihart_ip_Config* XMultihart_ip_LookupConfig(UINTPTR BaseAddress);
#else
int XMultihart_ip_Initialize(XMultihart_ip *InstancePtr, u16 DeviceId);
XMultihart_ip_Config* XMultihart_ip_LookupConfig(u16 DeviceId);
#endif
int XMultihart_ip_CfgInitialize(XMultihart_ip *InstancePtr, XMultihart_ip_Config *ConfigPtr);
#else
int XMultihart_ip_Initialize(XMultihart_ip *InstancePtr, const char* InstanceName);
int XMultihart_ip_Release(XMultihart_ip *InstancePtr);
#endif

void XMultihart_ip_Start(XMultihart_ip *InstancePtr);
u32 XMultihart_ip_IsDone(XMultihart_ip *InstancePtr);
u32 XMultihart_ip_IsIdle(XMultihart_ip *InstancePtr);
u32 XMultihart_ip_IsReady(XMultihart_ip *InstancePtr);
void XMultihart_ip_EnableAutoRestart(XMultihart_ip *InstancePtr);
void XMultihart_ip_DisableAutoRestart(XMultihart_ip *InstancePtr);

void XMultihart_ip_Set_ip_num(XMultihart_ip *InstancePtr, u32 Data);
u32 XMultihart_ip_Get_ip_num(XMultihart_ip *InstancePtr);
void XMultihart_ip_Set_running_hart_set(XMultihart_ip *InstancePtr, u32 Data);
u32 XMultihart_ip_Get_running_hart_set(XMultihart_ip *InstancePtr);
void XMultihart_ip_Set_data_ram(XMultihart_ip *InstancePtr, u64 Data);
u64 XMultihart_ip_Get_data_ram(XMultihart_ip *InstancePtr);
u32 XMultihart_ip_Get_nb_instruction(XMultihart_ip *InstancePtr);
u32 XMultihart_ip_Get_nb_instruction_vld(XMultihart_ip *InstancePtr);
u32 XMultihart_ip_Get_nb_cycle(XMultihart_ip *InstancePtr);
u32 XMultihart_ip_Get_nb_cycle_vld(XMultihart_ip *InstancePtr);
u32 XMultihart_ip_Get_start_pc_BaseAddress(XMultihart_ip *InstancePtr);
u32 XMultihart_ip_Get_start_pc_HighAddress(XMultihart_ip *InstancePtr);
u32 XMultihart_ip_Get_start_pc_TotalBytes(XMultihart_ip *InstancePtr);
u32 XMultihart_ip_Get_start_pc_BitWidth(XMultihart_ip *InstancePtr);
u32 XMultihart_ip_Get_start_pc_Depth(XMultihart_ip *InstancePtr);
u32 XMultihart_ip_Write_start_pc_Words(XMultihart_ip *InstancePtr, int offset, word_type *data, int length);
u32 XMultihart_ip_Read_start_pc_Words(XMultihart_ip *InstancePtr, int offset, word_type *data, int length);
u32 XMultihart_ip_Write_start_pc_Bytes(XMultihart_ip *InstancePtr, int offset, char *data, int length);
u32 XMultihart_ip_Read_start_pc_Bytes(XMultihart_ip *InstancePtr, int offset, char *data, int length);
u32 XMultihart_ip_Get_ip_code_ram_BaseAddress(XMultihart_ip *InstancePtr);
u32 XMultihart_ip_Get_ip_code_ram_HighAddress(XMultihart_ip *InstancePtr);
u32 XMultihart_ip_Get_ip_code_ram_TotalBytes(XMultihart_ip *InstancePtr);
u32 XMultihart_ip_Get_ip_code_ram_BitWidth(XMultihart_ip *InstancePtr);
u32 XMultihart_ip_Get_ip_code_ram_Depth(XMultihart_ip *InstancePtr);
u32 XMultihart_ip_Write_ip_code_ram_Words(XMultihart_ip *InstancePtr, int offset, word_type *data, int length);
u32 XMultihart_ip_Read_ip_code_ram_Words(XMultihart_ip *InstancePtr, int offset, word_type *data, int length);
u32 XMultihart_ip_Write_ip_code_ram_Bytes(XMultihart_ip *InstancePtr, int offset, char *data, int length);
u32 XMultihart_ip_Read_ip_code_ram_Bytes(XMultihart_ip *InstancePtr, int offset, char *data, int length);

void XMultihart_ip_InterruptGlobalEnable(XMultihart_ip *InstancePtr);
void XMultihart_ip_InterruptGlobalDisable(XMultihart_ip *InstancePtr);
void XMultihart_ip_InterruptEnable(XMultihart_ip *InstancePtr, u32 Mask);
void XMultihart_ip_InterruptDisable(XMultihart_ip *InstancePtr, u32 Mask);
void XMultihart_ip_InterruptClear(XMultihart_ip *InstancePtr, u32 Mask);
u32 XMultihart_ip_InterruptGetEnabled(XMultihart_ip *InstancePtr);
u32 XMultihart_ip_InterruptGetStatus(XMultihart_ip *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
