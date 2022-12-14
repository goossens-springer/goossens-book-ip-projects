// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmulti_core_multi_ram_ip.h"

extern XMulti_core_multi_ram_ip_Config XMulti_core_multi_ram_ip_ConfigTable[];

XMulti_core_multi_ram_ip_Config *XMulti_core_multi_ram_ip_LookupConfig(u16 DeviceId) {
	XMulti_core_multi_ram_ip_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMULTI_CORE_MULTI_RAM_IP_NUM_INSTANCES; Index++) {
		if (XMulti_core_multi_ram_ip_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMulti_core_multi_ram_ip_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMulti_core_multi_ram_ip_Initialize(XMulti_core_multi_ram_ip *InstancePtr, u16 DeviceId) {
	XMulti_core_multi_ram_ip_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMulti_core_multi_ram_ip_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMulti_core_multi_ram_ip_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

