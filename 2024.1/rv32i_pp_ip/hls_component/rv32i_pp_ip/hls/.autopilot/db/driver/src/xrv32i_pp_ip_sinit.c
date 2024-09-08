// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xrv32i_pp_ip.h"

extern XRv32i_pp_ip_Config XRv32i_pp_ip_ConfigTable[];

#ifdef SDT
XRv32i_pp_ip_Config *XRv32i_pp_ip_LookupConfig(UINTPTR BaseAddress) {
	XRv32i_pp_ip_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XRv32i_pp_ip_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XRv32i_pp_ip_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XRv32i_pp_ip_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XRv32i_pp_ip_Initialize(XRv32i_pp_ip *InstancePtr, UINTPTR BaseAddress) {
	XRv32i_pp_ip_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XRv32i_pp_ip_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XRv32i_pp_ip_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XRv32i_pp_ip_Config *XRv32i_pp_ip_LookupConfig(u16 DeviceId) {
	XRv32i_pp_ip_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XRV32I_PP_IP_NUM_INSTANCES; Index++) {
		if (XRv32i_pp_ip_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XRv32i_pp_ip_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XRv32i_pp_ip_Initialize(XRv32i_pp_ip *InstancePtr, u16 DeviceId) {
	XRv32i_pp_ip_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XRv32i_pp_ip_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XRv32i_pp_ip_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

