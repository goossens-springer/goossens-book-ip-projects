// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xfetching_ip.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFetching_ip_CfgInitialize(XFetching_ip *InstancePtr, XFetching_ip_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFetching_ip_Start(XFetching_ip *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFetching_ip_ReadReg(InstancePtr->Control_BaseAddress, XFETCHING_IP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XFetching_ip_WriteReg(InstancePtr->Control_BaseAddress, XFETCHING_IP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFetching_ip_IsDone(XFetching_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFetching_ip_ReadReg(InstancePtr->Control_BaseAddress, XFETCHING_IP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFetching_ip_IsIdle(XFetching_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFetching_ip_ReadReg(InstancePtr->Control_BaseAddress, XFETCHING_IP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFetching_ip_IsReady(XFetching_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFetching_ip_ReadReg(InstancePtr->Control_BaseAddress, XFETCHING_IP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFetching_ip_EnableAutoRestart(XFetching_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFetching_ip_WriteReg(InstancePtr->Control_BaseAddress, XFETCHING_IP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XFetching_ip_DisableAutoRestart(XFetching_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFetching_ip_WriteReg(InstancePtr->Control_BaseAddress, XFETCHING_IP_CONTROL_ADDR_AP_CTRL, 0);
}

void XFetching_ip_Set_start_pc(XFetching_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFetching_ip_WriteReg(InstancePtr->Control_BaseAddress, XFETCHING_IP_CONTROL_ADDR_START_PC_DATA, Data);
}

u32 XFetching_ip_Get_start_pc(XFetching_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFetching_ip_ReadReg(InstancePtr->Control_BaseAddress, XFETCHING_IP_CONTROL_ADDR_START_PC_DATA);
    return Data;
}

u32 XFetching_ip_Get_code_ram_BaseAddress(XFetching_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XFETCHING_IP_CONTROL_ADDR_CODE_RAM_BASE);
}

u32 XFetching_ip_Get_code_ram_HighAddress(XFetching_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XFETCHING_IP_CONTROL_ADDR_CODE_RAM_HIGH);
}

u32 XFetching_ip_Get_code_ram_TotalBytes(XFetching_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XFETCHING_IP_CONTROL_ADDR_CODE_RAM_HIGH - XFETCHING_IP_CONTROL_ADDR_CODE_RAM_BASE + 1);
}

u32 XFetching_ip_Get_code_ram_BitWidth(XFetching_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFETCHING_IP_CONTROL_WIDTH_CODE_RAM;
}

u32 XFetching_ip_Get_code_ram_Depth(XFetching_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFETCHING_IP_CONTROL_DEPTH_CODE_RAM;
}

u32 XFetching_ip_Write_code_ram_Words(XFetching_ip *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XFETCHING_IP_CONTROL_ADDR_CODE_RAM_HIGH - XFETCHING_IP_CONTROL_ADDR_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XFETCHING_IP_CONTROL_ADDR_CODE_RAM_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XFetching_ip_Read_code_ram_Words(XFetching_ip *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XFETCHING_IP_CONTROL_ADDR_CODE_RAM_HIGH - XFETCHING_IP_CONTROL_ADDR_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XFETCHING_IP_CONTROL_ADDR_CODE_RAM_BASE + (offset + i)*4);
    }
    return length;
}

u32 XFetching_ip_Write_code_ram_Bytes(XFetching_ip *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XFETCHING_IP_CONTROL_ADDR_CODE_RAM_HIGH - XFETCHING_IP_CONTROL_ADDR_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XFETCHING_IP_CONTROL_ADDR_CODE_RAM_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XFetching_ip_Read_code_ram_Bytes(XFetching_ip *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XFETCHING_IP_CONTROL_ADDR_CODE_RAM_HIGH - XFETCHING_IP_CONTROL_ADDR_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XFETCHING_IP_CONTROL_ADDR_CODE_RAM_BASE + offset + i);
    }
    return length;
}

void XFetching_ip_InterruptGlobalEnable(XFetching_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFetching_ip_WriteReg(InstancePtr->Control_BaseAddress, XFETCHING_IP_CONTROL_ADDR_GIE, 1);
}

void XFetching_ip_InterruptGlobalDisable(XFetching_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFetching_ip_WriteReg(InstancePtr->Control_BaseAddress, XFETCHING_IP_CONTROL_ADDR_GIE, 0);
}

void XFetching_ip_InterruptEnable(XFetching_ip *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFetching_ip_ReadReg(InstancePtr->Control_BaseAddress, XFETCHING_IP_CONTROL_ADDR_IER);
    XFetching_ip_WriteReg(InstancePtr->Control_BaseAddress, XFETCHING_IP_CONTROL_ADDR_IER, Register | Mask);
}

void XFetching_ip_InterruptDisable(XFetching_ip *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFetching_ip_ReadReg(InstancePtr->Control_BaseAddress, XFETCHING_IP_CONTROL_ADDR_IER);
    XFetching_ip_WriteReg(InstancePtr->Control_BaseAddress, XFETCHING_IP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XFetching_ip_InterruptClear(XFetching_ip *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XFetching_ip_WriteReg(InstancePtr->Control_BaseAddress, XFETCHING_IP_CONTROL_ADDR_ISR, Mask);
}

u32 XFetching_ip_InterruptGetEnabled(XFetching_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFetching_ip_ReadReg(InstancePtr->Control_BaseAddress, XFETCHING_IP_CONTROL_ADDR_IER);
}

u32 XFetching_ip_InterruptGetStatus(XFetching_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XFetching_ip_ReadReg(InstancePtr->Control_BaseAddress, XFETCHING_IP_CONTROL_ADDR_ISR);
}

