// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xfetching_decoding_ip.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFetching_decoding_ip_CfgInitialize(XFetching_decoding_ip *InstancePtr, XFetching_decoding_ip_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFetching_decoding_ip_Start(XFetching_decoding_ip *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFetching_decoding_ip_ReadReg(InstancePtr->Control_BaseAddress, XFETCHING_DECODING_IP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XFetching_decoding_ip_WriteReg(InstancePtr->Control_BaseAddress, XFETCHING_DECODING_IP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFetching_decoding_ip_IsDone(XFetching_decoding_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFetching_decoding_ip_ReadReg(InstancePtr->Control_BaseAddress, XFETCHING_DECODING_IP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFetching_decoding_ip_IsIdle(XFetching_decoding_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFetching_decoding_ip_ReadReg(InstancePtr->Control_BaseAddress, XFETCHING_DECODING_IP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFetching_decoding_ip_IsReady(XFetching_decoding_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFetching_decoding_ip_ReadReg(InstancePtr->Control_BaseAddress, XFETCHING_DECODING_IP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFetching_decoding_ip_EnableAutoRestart(XFetching_decoding_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFetching_decoding_ip_WriteReg(InstancePtr->Control_BaseAddress, XFETCHING_DECODING_IP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XFetching_decoding_ip_DisableAutoRestart(XFetching_decoding_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFetching_decoding_ip_WriteReg(InstancePtr->Control_BaseAddress, XFETCHING_DECODING_IP_CONTROL_ADDR_AP_CTRL, 0);
}

void XFetching_decoding_ip_Set_start_pc(XFetching_decoding_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFetching_decoding_ip_WriteReg(InstancePtr->Control_BaseAddress, XFETCHING_DECODING_IP_CONTROL_ADDR_START_PC_DATA, Data);
}

u32 XFetching_decoding_ip_Get_start_pc(XFetching_decoding_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFetching_decoding_ip_ReadReg(InstancePtr->Control_BaseAddress, XFETCHING_DECODING_IP_CONTROL_ADDR_START_PC_DATA);
    return Data;
}

u32 XFetching_decoding_ip_Get_nb_instruction(XFetching_decoding_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFetching_decoding_ip_ReadReg(InstancePtr->Control_BaseAddress, XFETCHING_DECODING_IP_CONTROL_ADDR_NB_INSTRUCTION_DATA);
    return Data;
}

u32 XFetching_decoding_ip_Get_nb_instruction_vld(XFetching_decoding_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFetching_decoding_ip_ReadReg(InstancePtr->Control_BaseAddress, XFETCHING_DECODING_IP_CONTROL_ADDR_NB_INSTRUCTION_CTRL);
    return Data & 0x1;
}

u32 XFetching_decoding_ip_Get_code_ram_BaseAddress(XFetching_decoding_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XFETCHING_DECODING_IP_CONTROL_ADDR_CODE_RAM_BASE);
}

u32 XFetching_decoding_ip_Get_code_ram_HighAddress(XFetching_decoding_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XFETCHING_DECODING_IP_CONTROL_ADDR_CODE_RAM_HIGH);
}

u32 XFetching_decoding_ip_Get_code_ram_TotalBytes(XFetching_decoding_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XFETCHING_DECODING_IP_CONTROL_ADDR_CODE_RAM_HIGH - XFETCHING_DECODING_IP_CONTROL_ADDR_CODE_RAM_BASE + 1);
}

u32 XFetching_decoding_ip_Get_code_ram_BitWidth(XFetching_decoding_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFETCHING_DECODING_IP_CONTROL_WIDTH_CODE_RAM;
}

u32 XFetching_decoding_ip_Get_code_ram_Depth(XFetching_decoding_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFETCHING_DECODING_IP_CONTROL_DEPTH_CODE_RAM;
}

u32 XFetching_decoding_ip_Write_code_ram_Words(XFetching_decoding_ip *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XFETCHING_DECODING_IP_CONTROL_ADDR_CODE_RAM_HIGH - XFETCHING_DECODING_IP_CONTROL_ADDR_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XFETCHING_DECODING_IP_CONTROL_ADDR_CODE_RAM_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XFetching_decoding_ip_Read_code_ram_Words(XFetching_decoding_ip *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XFETCHING_DECODING_IP_CONTROL_ADDR_CODE_RAM_HIGH - XFETCHING_DECODING_IP_CONTROL_ADDR_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XFETCHING_DECODING_IP_CONTROL_ADDR_CODE_RAM_BASE + (offset + i)*4);
    }
    return length;
}

u32 XFetching_decoding_ip_Write_code_ram_Bytes(XFetching_decoding_ip *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XFETCHING_DECODING_IP_CONTROL_ADDR_CODE_RAM_HIGH - XFETCHING_DECODING_IP_CONTROL_ADDR_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XFETCHING_DECODING_IP_CONTROL_ADDR_CODE_RAM_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XFetching_decoding_ip_Read_code_ram_Bytes(XFetching_decoding_ip *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XFETCHING_DECODING_IP_CONTROL_ADDR_CODE_RAM_HIGH - XFETCHING_DECODING_IP_CONTROL_ADDR_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XFETCHING_DECODING_IP_CONTROL_ADDR_CODE_RAM_BASE + offset + i);
    }
    return length;
}

void XFetching_decoding_ip_InterruptGlobalEnable(XFetching_decoding_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFetching_decoding_ip_WriteReg(InstancePtr->Control_BaseAddress, XFETCHING_DECODING_IP_CONTROL_ADDR_GIE, 1);
}

void XFetching_decoding_ip_InterruptGlobalDisable(XFetching_decoding_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFetching_decoding_ip_WriteReg(InstancePtr->Control_BaseAddress, XFETCHING_DECODING_IP_CONTROL_ADDR_GIE, 0);
}

void XFetching_decoding_ip_InterruptEnable(XFetching_decoding_ip *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFetching_decoding_ip_ReadReg(InstancePtr->Control_BaseAddress, XFETCHING_DECODING_IP_CONTROL_ADDR_IER);
    XFetching_decoding_ip_WriteReg(InstancePtr->Control_BaseAddress, XFETCHING_DECODING_IP_CONTROL_ADDR_IER, Register | Mask);
}

void XFetching_decoding_ip_InterruptDisable(XFetching_decoding_ip *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFetching_decoding_ip_ReadReg(InstancePtr->Control_BaseAddress, XFETCHING_DECODING_IP_CONTROL_ADDR_IER);
    XFetching_decoding_ip_WriteReg(InstancePtr->Control_BaseAddress, XFETCHING_DECODING_IP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XFetching_decoding_ip_InterruptClear(XFetching_decoding_ip *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFetching_decoding_ip_WriteReg(InstancePtr->Control_BaseAddress, XFETCHING_DECODING_IP_CONTROL_ADDR_ISR, Mask);
}

u32 XFetching_decoding_ip_InterruptGetEnabled(XFetching_decoding_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFetching_decoding_ip_ReadReg(InstancePtr->Control_BaseAddress, XFETCHING_DECODING_IP_CONTROL_ADDR_IER);
}

u32 XFetching_decoding_ip_InterruptGetStatus(XFetching_decoding_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFetching_decoding_ip_ReadReg(InstancePtr->Control_BaseAddress, XFETCHING_DECODING_IP_CONTROL_ADDR_ISR);
}

