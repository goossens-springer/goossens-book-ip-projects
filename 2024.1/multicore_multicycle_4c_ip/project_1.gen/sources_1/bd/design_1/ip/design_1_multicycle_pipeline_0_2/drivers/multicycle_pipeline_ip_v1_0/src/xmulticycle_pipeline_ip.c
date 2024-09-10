// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmulticycle_pipeline_ip.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMulticycle_pipeline_ip_CfgInitialize(XMulticycle_pipeline_ip *InstancePtr, XMulticycle_pipeline_ip_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMulticycle_pipeline_ip_Start(XMulticycle_pipeline_ip *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulticycle_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMulticycle_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMulticycle_pipeline_ip_IsDone(XMulticycle_pipeline_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulticycle_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMulticycle_pipeline_ip_IsIdle(XMulticycle_pipeline_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulticycle_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMulticycle_pipeline_ip_IsReady(XMulticycle_pipeline_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulticycle_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMulticycle_pipeline_ip_EnableAutoRestart(XMulticycle_pipeline_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMulticycle_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMulticycle_pipeline_ip_DisableAutoRestart(XMulticycle_pipeline_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMulticycle_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_AP_CTRL, 0);
}

void XMulticycle_pipeline_ip_Set_ip_num(XMulticycle_pipeline_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMulticycle_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_NUM_DATA, Data);
}

u32 XMulticycle_pipeline_ip_Get_ip_num(XMulticycle_pipeline_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulticycle_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_NUM_DATA);
    return Data;
}

void XMulticycle_pipeline_ip_Set_start_pc(XMulticycle_pipeline_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMulticycle_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_START_PC_DATA, Data);
}

u32 XMulticycle_pipeline_ip_Get_start_pc(XMulticycle_pipeline_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulticycle_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_START_PC_DATA);
    return Data;
}

void XMulticycle_pipeline_ip_Set_data_ram(XMulticycle_pipeline_ip *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMulticycle_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_DATA, (u32)(Data));
    XMulticycle_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_DATA + 4, (u32)(Data >> 32));
}

u64 XMulticycle_pipeline_ip_Get_data_ram(XMulticycle_pipeline_ip *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulticycle_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_DATA);
    Data += (u64)XMulticycle_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_DATA + 4) << 32;
    return Data;
}

u32 XMulticycle_pipeline_ip_Get_nb_instruction(XMulticycle_pipeline_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulticycle_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_NB_INSTRUCTION_DATA);
    return Data;
}

u32 XMulticycle_pipeline_ip_Get_nb_instruction_vld(XMulticycle_pipeline_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulticycle_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_NB_INSTRUCTION_CTRL);
    return Data & 0x1;
}

u32 XMulticycle_pipeline_ip_Get_nb_cycle(XMulticycle_pipeline_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulticycle_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_NB_CYCLE_DATA);
    return Data;
}

u32 XMulticycle_pipeline_ip_Get_nb_cycle_vld(XMulticycle_pipeline_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulticycle_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_NB_CYCLE_CTRL);
    return Data & 0x1;
}

u32 XMulticycle_pipeline_ip_Get_ip_code_ram_BaseAddress(XMulticycle_pipeline_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_CODE_RAM_BASE);
}

u32 XMulticycle_pipeline_ip_Get_ip_code_ram_HighAddress(XMulticycle_pipeline_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_CODE_RAM_HIGH);
}

u32 XMulticycle_pipeline_ip_Get_ip_code_ram_TotalBytes(XMulticycle_pipeline_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_CODE_RAM_HIGH - XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_CODE_RAM_BASE + 1);
}

u32 XMulticycle_pipeline_ip_Get_ip_code_ram_BitWidth(XMulticycle_pipeline_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMULTICYCLE_PIPELINE_IP_CONTROL_WIDTH_IP_CODE_RAM;
}

u32 XMulticycle_pipeline_ip_Get_ip_code_ram_Depth(XMulticycle_pipeline_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMULTICYCLE_PIPELINE_IP_CONTROL_DEPTH_IP_CODE_RAM;
}

u32 XMulticycle_pipeline_ip_Write_ip_code_ram_Words(XMulticycle_pipeline_ip *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_CODE_RAM_HIGH - XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_CODE_RAM_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XMulticycle_pipeline_ip_Read_ip_code_ram_Words(XMulticycle_pipeline_ip *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_CODE_RAM_HIGH - XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_CODE_RAM_BASE + (offset + i)*4);
    }
    return length;
}

u32 XMulticycle_pipeline_ip_Write_ip_code_ram_Bytes(XMulticycle_pipeline_ip *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_CODE_RAM_HIGH - XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_CODE_RAM_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XMulticycle_pipeline_ip_Read_ip_code_ram_Bytes(XMulticycle_pipeline_ip *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_CODE_RAM_HIGH - XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_CODE_RAM_BASE + offset + i);
    }
    return length;
}

void XMulticycle_pipeline_ip_InterruptGlobalEnable(XMulticycle_pipeline_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMulticycle_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_GIE, 1);
}

void XMulticycle_pipeline_ip_InterruptGlobalDisable(XMulticycle_pipeline_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMulticycle_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_GIE, 0);
}

void XMulticycle_pipeline_ip_InterruptEnable(XMulticycle_pipeline_ip *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMulticycle_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IER);
    XMulticycle_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IER, Register | Mask);
}

void XMulticycle_pipeline_ip_InterruptDisable(XMulticycle_pipeline_ip *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMulticycle_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IER);
    XMulticycle_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMulticycle_pipeline_ip_InterruptClear(XMulticycle_pipeline_ip *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMulticycle_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_ISR, Mask);
}

u32 XMulticycle_pipeline_ip_InterruptGetEnabled(XMulticycle_pipeline_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMulticycle_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IER);
}

u32 XMulticycle_pipeline_ip_InterruptGetStatus(XMulticycle_pipeline_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMulticycle_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_ISR);
}

