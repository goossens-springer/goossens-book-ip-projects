// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fetching_ip_execute (
        ap_ready,
        pc,
        ap_return
);


output   ap_ready;
input  [15:0] pc;
output  [15:0] ap_return;

assign ap_ready = 1'b1;

assign ap_return = (pc + 16'd1);

endmodule //fetching_ip_execute