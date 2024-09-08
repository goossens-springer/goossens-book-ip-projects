// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmultihart_ip.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMultihart_ip_CfgInitialize(XMultihart_ip *InstancePtr, XMultihart_ip_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMultihart_ip_Start(XMultihart_ip *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultihart_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMultihart_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMultihart_ip_IsDone(XMultihart_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultihart_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMultihart_ip_IsIdle(XMultihart_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultihart_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMultihart_ip_IsReady(XMultihart_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultihart_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMultihart_ip_EnableAutoRestart(XMultihart_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultihart_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMultihart_ip_DisableAutoRestart(XMultihart_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultihart_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_AP_CTRL, 0);
}

void XMultihart_ip_Set_running_hart_set(XMultihart_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultihart_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_RUNNING_HART_SET_DATA, Data);
}

u32 XMultihart_ip_Get_running_hart_set(XMultihart_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultihart_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_RUNNING_HART_SET_DATA);
    return Data;
}

u32 XMultihart_ip_Get_nb_instruction(XMultihart_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultihart_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_NB_INSTRUCTION_DATA);
    return Data;
}

u32 XMultihart_ip_Get_nb_instruction_vld(XMultihart_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultihart_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_NB_INSTRUCTION_CTRL);
    return Data & 0x1;
}

u32 XMultihart_ip_Get_nb_cycle(XMultihart_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultihart_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_NB_CYCLE_DATA);
    return Data;
}

u32 XMultihart_ip_Get_nb_cycle_vld(XMultihart_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultihart_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_NB_CYCLE_CTRL);
    return Data & 0x1;
}

u32 XMultihart_ip_Get_start_pc_BaseAddress(XMultihart_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XMULTIHART_IP_CONTROL_ADDR_START_PC_BASE);
}

u32 XMultihart_ip_Get_start_pc_HighAddress(XMultihart_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XMULTIHART_IP_CONTROL_ADDR_START_PC_HIGH);
}

u32 XMultihart_ip_Get_start_pc_TotalBytes(XMultihart_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XMULTIHART_IP_CONTROL_ADDR_START_PC_HIGH - XMULTIHART_IP_CONTROL_ADDR_START_PC_BASE + 1);
}

u32 XMultihart_ip_Get_start_pc_BitWidth(XMultihart_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMULTIHART_IP_CONTROL_WIDTH_START_PC;
}

u32 XMultihart_ip_Get_start_pc_Depth(XMultihart_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMULTIHART_IP_CONTROL_DEPTH_START_PC;
}

u32 XMultihart_ip_Write_start_pc_Words(XMultihart_ip *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XMULTIHART_IP_CONTROL_ADDR_START_PC_HIGH - XMULTIHART_IP_CONTROL_ADDR_START_PC_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XMULTIHART_IP_CONTROL_ADDR_START_PC_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XMultihart_ip_Read_start_pc_Words(XMultihart_ip *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XMULTIHART_IP_CONTROL_ADDR_START_PC_HIGH - XMULTIHART_IP_CONTROL_ADDR_START_PC_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XMULTIHART_IP_CONTROL_ADDR_START_PC_BASE + (offset + i)*4);
    }
    return length;
}

u32 XMultihart_ip_Write_start_pc_Bytes(XMultihart_ip *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XMULTIHART_IP_CONTROL_ADDR_START_PC_HIGH - XMULTIHART_IP_CONTROL_ADDR_START_PC_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XMULTIHART_IP_CONTROL_ADDR_START_PC_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XMultihart_ip_Read_start_pc_Bytes(XMultihart_ip *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XMULTIHART_IP_CONTROL_ADDR_START_PC_HIGH - XMULTIHART_IP_CONTROL_ADDR_START_PC_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XMULTIHART_IP_CONTROL_ADDR_START_PC_BASE + offset + i);
    }
    return length;
}

u32 XMultihart_ip_Get_code_ram_BaseAddress(XMultihart_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XMULTIHART_IP_CONTROL_ADDR_CODE_RAM_BASE);
}

u32 XMultihart_ip_Get_code_ram_HighAddress(XMultihart_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XMULTIHART_IP_CONTROL_ADDR_CODE_RAM_HIGH);
}

u32 XMultihart_ip_Get_code_ram_TotalBytes(XMultihart_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XMULTIHART_IP_CONTROL_ADDR_CODE_RAM_HIGH - XMULTIHART_IP_CONTROL_ADDR_CODE_RAM_BASE + 1);
}

u32 XMultihart_ip_Get_code_ram_BitWidth(XMultihart_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMULTIHART_IP_CONTROL_WIDTH_CODE_RAM;
}

u32 XMultihart_ip_Get_code_ram_Depth(XMultihart_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMULTIHART_IP_CONTROL_DEPTH_CODE_RAM;
}

u32 XMultihart_ip_Write_code_ram_Words(XMultihart_ip *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XMULTIHART_IP_CONTROL_ADDR_CODE_RAM_HIGH - XMULTIHART_IP_CONTROL_ADDR_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XMULTIHART_IP_CONTROL_ADDR_CODE_RAM_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XMultihart_ip_Read_code_ram_Words(XMultihart_ip *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XMULTIHART_IP_CONTROL_ADDR_CODE_RAM_HIGH - XMULTIHART_IP_CONTROL_ADDR_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XMULTIHART_IP_CONTROL_ADDR_CODE_RAM_BASE + (offset + i)*4);
    }
    return length;
}

u32 XMultihart_ip_Write_code_ram_Bytes(XMultihart_ip *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XMULTIHART_IP_CONTROL_ADDR_CODE_RAM_HIGH - XMULTIHART_IP_CONTROL_ADDR_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XMULTIHART_IP_CONTROL_ADDR_CODE_RAM_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XMultihart_ip_Read_code_ram_Bytes(XMultihart_ip *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XMULTIHART_IP_CONTROL_ADDR_CODE_RAM_HIGH - XMULTIHART_IP_CONTROL_ADDR_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XMULTIHART_IP_CONTROL_ADDR_CODE_RAM_BASE + offset + i);
    }
    return length;
}

u32 XMultihart_ip_Get_data_ram_BaseAddress(XMultihart_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XMULTIHART_IP_CONTROL_ADDR_DATA_RAM_BASE);
}

u32 XMultihart_ip_Get_data_ram_HighAddress(XMultihart_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XMULTIHART_IP_CONTROL_ADDR_DATA_RAM_HIGH);
}

u32 XMultihart_ip_Get_data_ram_TotalBytes(XMultihart_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XMULTIHART_IP_CONTROL_ADDR_DATA_RAM_HIGH - XMULTIHART_IP_CONTROL_ADDR_DATA_RAM_BASE + 1);
}

u32 XMultihart_ip_Get_data_ram_BitWidth(XMultihart_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMULTIHART_IP_CONTROL_WIDTH_DATA_RAM;
}

u32 XMultihart_ip_Get_data_ram_Depth(XMultihart_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMULTIHART_IP_CONTROL_DEPTH_DATA_RAM;
}

u32 XMultihart_ip_Write_data_ram_Words(XMultihart_ip *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XMULTIHART_IP_CONTROL_ADDR_DATA_RAM_HIGH - XMULTIHART_IP_CONTROL_ADDR_DATA_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XMULTIHART_IP_CONTROL_ADDR_DATA_RAM_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XMultihart_ip_Read_data_ram_Words(XMultihart_ip *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XMULTIHART_IP_CONTROL_ADDR_DATA_RAM_HIGH - XMULTIHART_IP_CONTROL_ADDR_DATA_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XMULTIHART_IP_CONTROL_ADDR_DATA_RAM_BASE + (offset + i)*4);
    }
    return length;
}

u32 XMultihart_ip_Write_data_ram_Bytes(XMultihart_ip *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XMULTIHART_IP_CONTROL_ADDR_DATA_RAM_HIGH - XMULTIHART_IP_CONTROL_ADDR_DATA_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XMULTIHART_IP_CONTROL_ADDR_DATA_RAM_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XMultihart_ip_Read_data_ram_Bytes(XMultihart_ip *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XMULTIHART_IP_CONTROL_ADDR_DATA_RAM_HIGH - XMULTIHART_IP_CONTROL_ADDR_DATA_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XMULTIHART_IP_CONTROL_ADDR_DATA_RAM_BASE + offset + i);
    }
    return length;
}

void XMultihart_ip_InterruptGlobalEnable(XMultihart_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultihart_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_GIE, 1);
}

void XMultihart_ip_InterruptGlobalDisable(XMultihart_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultihart_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_GIE, 0);
}

void XMultihart_ip_InterruptEnable(XMultihart_ip *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMultihart_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_IER);
    XMultihart_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_IER, Register | Mask);
}

void XMultihart_ip_InterruptDisable(XMultihart_ip *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMultihart_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_IER);
    XMultihart_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMultihart_ip_InterruptClear(XMultihart_ip *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultihart_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_ISR, Mask);
}

u32 XMultihart_ip_InterruptGetEnabled(XMultihart_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMultihart_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_IER);
}

u32 XMultihart_ip_InterruptGetStatus(XMultihart_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMultihart_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTIHART_IP_CONTROL_ADDR_ISR);
}

