// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xfde_ip.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFde_ip_CfgInitialize(XFde_ip *InstancePtr, XFde_ip_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFde_ip_Start(XFde_ip *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFde_ip_ReadReg(InstancePtr->Control_BaseAddress, XFDE_IP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XFde_ip_WriteReg(InstancePtr->Control_BaseAddress, XFDE_IP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFde_ip_IsDone(XFde_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFde_ip_ReadReg(InstancePtr->Control_BaseAddress, XFDE_IP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFde_ip_IsIdle(XFde_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFde_ip_ReadReg(InstancePtr->Control_BaseAddress, XFDE_IP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFde_ip_IsReady(XFde_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFde_ip_ReadReg(InstancePtr->Control_BaseAddress, XFDE_IP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFde_ip_EnableAutoRestart(XFde_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFde_ip_WriteReg(InstancePtr->Control_BaseAddress, XFDE_IP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XFde_ip_DisableAutoRestart(XFde_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFde_ip_WriteReg(InstancePtr->Control_BaseAddress, XFDE_IP_CONTROL_ADDR_AP_CTRL, 0);
}

void XFde_ip_Set_start_pc(XFde_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFde_ip_WriteReg(InstancePtr->Control_BaseAddress, XFDE_IP_CONTROL_ADDR_START_PC_DATA, Data);
}

u32 XFde_ip_Get_start_pc(XFde_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFde_ip_ReadReg(InstancePtr->Control_BaseAddress, XFDE_IP_CONTROL_ADDR_START_PC_DATA);
    return Data;
}

u32 XFde_ip_Get_nb_instruction(XFde_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFde_ip_ReadReg(InstancePtr->Control_BaseAddress, XFDE_IP_CONTROL_ADDR_NB_INSTRUCTION_DATA);
    return Data;
}

u32 XFde_ip_Get_nb_instruction_vld(XFde_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFde_ip_ReadReg(InstancePtr->Control_BaseAddress, XFDE_IP_CONTROL_ADDR_NB_INSTRUCTION_CTRL);
    return Data & 0x1;
}

u32 XFde_ip_Get_code_ram_BaseAddress(XFde_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XFDE_IP_CONTROL_ADDR_CODE_RAM_BASE);
}

u32 XFde_ip_Get_code_ram_HighAddress(XFde_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XFDE_IP_CONTROL_ADDR_CODE_RAM_HIGH);
}

u32 XFde_ip_Get_code_ram_TotalBytes(XFde_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XFDE_IP_CONTROL_ADDR_CODE_RAM_HIGH - XFDE_IP_CONTROL_ADDR_CODE_RAM_BASE + 1);
}

u32 XFde_ip_Get_code_ram_BitWidth(XFde_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFDE_IP_CONTROL_WIDTH_CODE_RAM;
}

u32 XFde_ip_Get_code_ram_Depth(XFde_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFDE_IP_CONTROL_DEPTH_CODE_RAM;
}

u32 XFde_ip_Write_code_ram_Words(XFde_ip *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XFDE_IP_CONTROL_ADDR_CODE_RAM_HIGH - XFDE_IP_CONTROL_ADDR_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XFDE_IP_CONTROL_ADDR_CODE_RAM_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XFde_ip_Read_code_ram_Words(XFde_ip *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XFDE_IP_CONTROL_ADDR_CODE_RAM_HIGH - XFDE_IP_CONTROL_ADDR_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XFDE_IP_CONTROL_ADDR_CODE_RAM_BASE + (offset + i)*4);
    }
    return length;
}

u32 XFde_ip_Write_code_ram_Bytes(XFde_ip *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XFDE_IP_CONTROL_ADDR_CODE_RAM_HIGH - XFDE_IP_CONTROL_ADDR_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XFDE_IP_CONTROL_ADDR_CODE_RAM_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XFde_ip_Read_code_ram_Bytes(XFde_ip *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XFDE_IP_CONTROL_ADDR_CODE_RAM_HIGH - XFDE_IP_CONTROL_ADDR_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XFDE_IP_CONTROL_ADDR_CODE_RAM_BASE + offset + i);
    }
    return length;
}

void XFde_ip_InterruptGlobalEnable(XFde_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFde_ip_WriteReg(InstancePtr->Control_BaseAddress, XFDE_IP_CONTROL_ADDR_GIE, 1);
}

void XFde_ip_InterruptGlobalDisable(XFde_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFde_ip_WriteReg(InstancePtr->Control_BaseAddress, XFDE_IP_CONTROL_ADDR_GIE, 0);
}

void XFde_ip_InterruptEnable(XFde_ip *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFde_ip_ReadReg(InstancePtr->Control_BaseAddress, XFDE_IP_CONTROL_ADDR_IER);
    XFde_ip_WriteReg(InstancePtr->Control_BaseAddress, XFDE_IP_CONTROL_ADDR_IER, Register | Mask);
}

void XFde_ip_InterruptDisable(XFde_ip *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFde_ip_ReadReg(InstancePtr->Control_BaseAddress, XFDE_IP_CONTROL_ADDR_IER);
    XFde_ip_WriteReg(InstancePtr->Control_BaseAddress, XFDE_IP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XFde_ip_InterruptClear(XFde_ip *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XFde_ip_WriteReg(InstancePtr->Control_BaseAddress, XFDE_IP_CONTROL_ADDR_ISR, Mask);
}

u32 XFde_ip_InterruptGetEnabled(XFde_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFde_ip_ReadReg(InstancePtr->Control_BaseAddress, XFDE_IP_CONTROL_ADDR_IER);
}

u32 XFde_ip_InterruptGetStatus(XFde_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XFde_ip_ReadReg(InstancePtr->Control_BaseAddress, XFDE_IP_CONTROL_ADDR_ISR);
}

