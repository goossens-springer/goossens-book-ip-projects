// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XSIMPLE_PIPELINE_IP_H
#define XSIMPLE_PIPELINE_IP_H

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
#include "xsimple_pipeline_ip_hw.h"

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
} XSimple_pipeline_ip_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XSimple_pipeline_ip;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSimple_pipeline_ip_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSimple_pipeline_ip_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSimple_pipeline_ip_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSimple_pipeline_ip_ReadReg(BaseAddress, RegOffset) \
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
int XSimple_pipeline_ip_Initialize(XSimple_pipeline_ip *InstancePtr, UINTPTR BaseAddress);
XSimple_pipeline_ip_Config* XSimple_pipeline_ip_LookupConfig(UINTPTR BaseAddress);
#else
int XSimple_pipeline_ip_Initialize(XSimple_pipeline_ip *InstancePtr, u16 DeviceId);
XSimple_pipeline_ip_Config* XSimple_pipeline_ip_LookupConfig(u16 DeviceId);
#endif
int XSimple_pipeline_ip_CfgInitialize(XSimple_pipeline_ip *InstancePtr, XSimple_pipeline_ip_Config *ConfigPtr);
#else
int XSimple_pipeline_ip_Initialize(XSimple_pipeline_ip *InstancePtr, const char* InstanceName);
int XSimple_pipeline_ip_Release(XSimple_pipeline_ip *InstancePtr);
#endif

void XSimple_pipeline_ip_Start(XSimple_pipeline_ip *InstancePtr);
u32 XSimple_pipeline_ip_IsDone(XSimple_pipeline_ip *InstancePtr);
u32 XSimple_pipeline_ip_IsIdle(XSimple_pipeline_ip *InstancePtr);
u32 XSimple_pipeline_ip_IsReady(XSimple_pipeline_ip *InstancePtr);
void XSimple_pipeline_ip_EnableAutoRestart(XSimple_pipeline_ip *InstancePtr);
void XSimple_pipeline_ip_DisableAutoRestart(XSimple_pipeline_ip *InstancePtr);

void XSimple_pipeline_ip_Set_start_pc(XSimple_pipeline_ip *InstancePtr, u32 Data);
u32 XSimple_pipeline_ip_Get_start_pc(XSimple_pipeline_ip *InstancePtr);
u32 XSimple_pipeline_ip_Get_nb_instruction(XSimple_pipeline_ip *InstancePtr);
u32 XSimple_pipeline_ip_Get_nb_instruction_vld(XSimple_pipeline_ip *InstancePtr);
u32 XSimple_pipeline_ip_Get_code_ram_BaseAddress(XSimple_pipeline_ip *InstancePtr);
u32 XSimple_pipeline_ip_Get_code_ram_HighAddress(XSimple_pipeline_ip *InstancePtr);
u32 XSimple_pipeline_ip_Get_code_ram_TotalBytes(XSimple_pipeline_ip *InstancePtr);
u32 XSimple_pipeline_ip_Get_code_ram_BitWidth(XSimple_pipeline_ip *InstancePtr);
u32 XSimple_pipeline_ip_Get_code_ram_Depth(XSimple_pipeline_ip *InstancePtr);
u32 XSimple_pipeline_ip_Write_code_ram_Words(XSimple_pipeline_ip *InstancePtr, int offset, word_type *data, int length);
u32 XSimple_pipeline_ip_Read_code_ram_Words(XSimple_pipeline_ip *InstancePtr, int offset, word_type *data, int length);
u32 XSimple_pipeline_ip_Write_code_ram_Bytes(XSimple_pipeline_ip *InstancePtr, int offset, char *data, int length);
u32 XSimple_pipeline_ip_Read_code_ram_Bytes(XSimple_pipeline_ip *InstancePtr, int offset, char *data, int length);
u32 XSimple_pipeline_ip_Get_data_ram_BaseAddress(XSimple_pipeline_ip *InstancePtr);
u32 XSimple_pipeline_ip_Get_data_ram_HighAddress(XSimple_pipeline_ip *InstancePtr);
u32 XSimple_pipeline_ip_Get_data_ram_TotalBytes(XSimple_pipeline_ip *InstancePtr);
u32 XSimple_pipeline_ip_Get_data_ram_BitWidth(XSimple_pipeline_ip *InstancePtr);
u32 XSimple_pipeline_ip_Get_data_ram_Depth(XSimple_pipeline_ip *InstancePtr);
u32 XSimple_pipeline_ip_Write_data_ram_Words(XSimple_pipeline_ip *InstancePtr, int offset, word_type *data, int length);
u32 XSimple_pipeline_ip_Read_data_ram_Words(XSimple_pipeline_ip *InstancePtr, int offset, word_type *data, int length);
u32 XSimple_pipeline_ip_Write_data_ram_Bytes(XSimple_pipeline_ip *InstancePtr, int offset, char *data, int length);
u32 XSimple_pipeline_ip_Read_data_ram_Bytes(XSimple_pipeline_ip *InstancePtr, int offset, char *data, int length);

void XSimple_pipeline_ip_InterruptGlobalEnable(XSimple_pipeline_ip *InstancePtr);
void XSimple_pipeline_ip_InterruptGlobalDisable(XSimple_pipeline_ip *InstancePtr);
void XSimple_pipeline_ip_InterruptEnable(XSimple_pipeline_ip *InstancePtr, u32 Mask);
void XSimple_pipeline_ip_InterruptDisable(XSimple_pipeline_ip *InstancePtr, u32 Mask);
void XSimple_pipeline_ip_InterruptClear(XSimple_pipeline_ip *InstancePtr, u32 Mask);
u32 XSimple_pipeline_ip_InterruptGetEnabled(XSimple_pipeline_ip *InstancePtr);
u32 XSimple_pipeline_ip_InterruptGetStatus(XSimple_pipeline_ip *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
