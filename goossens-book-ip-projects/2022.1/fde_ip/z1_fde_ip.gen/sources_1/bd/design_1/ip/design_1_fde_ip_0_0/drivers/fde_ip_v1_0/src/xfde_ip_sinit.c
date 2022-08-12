// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xfde_ip.h"

extern XFde_ip_Config XFde_ip_ConfigTable[];

XFde_ip_Config *XFde_ip_LookupConfig(u16 DeviceId) {
	XFde_ip_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFDE_IP_NUM_INSTANCES; Index++) {
		if (XFde_ip_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFde_ip_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFde_ip_Initialize(XFde_ip *InstancePtr, u16 DeviceId) {
	XFde_ip_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFde_ip_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFde_ip_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

