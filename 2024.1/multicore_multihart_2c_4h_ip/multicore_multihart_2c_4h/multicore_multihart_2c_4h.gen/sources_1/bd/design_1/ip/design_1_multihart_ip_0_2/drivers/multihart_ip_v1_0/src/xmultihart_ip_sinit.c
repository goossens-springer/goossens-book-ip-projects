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
#include "xmultihart_ip.h"

extern XMultihart_ip_Config XMultihart_ip_ConfigTable[];

#ifdef SDT
XMultihart_ip_Config *XMultihart_ip_LookupConfig(UINTPTR BaseAddress) {
	XMultihart_ip_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMultihart_ip_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMultihart_ip_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMultihart_ip_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMultihart_ip_Initialize(XMultihart_ip *InstancePtr, UINTPTR BaseAddress) {
	XMultihart_ip_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMultihart_ip_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMultihart_ip_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMultihart_ip_Config *XMultihart_ip_LookupConfig(u16 DeviceId) {
	XMultihart_ip_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMULTIHART_IP_NUM_INSTANCES; Index++) {
		if (XMultihart_ip_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMultihart_ip_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMultihart_ip_Initialize(XMultihart_ip *InstancePtr, u16 DeviceId) {
	XMultihart_ip_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMultihart_ip_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMultihart_ip_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

