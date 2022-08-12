// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmultihart_ip.h"

extern XMultihart_ip_Config XMultihart_ip_ConfigTable[];

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

