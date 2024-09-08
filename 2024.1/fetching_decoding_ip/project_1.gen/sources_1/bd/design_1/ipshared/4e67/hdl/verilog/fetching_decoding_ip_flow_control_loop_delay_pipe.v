// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps

module fetching_decoding_ip_flow_control_loop_delay_pipe(
        ap_clk,
        ap_rst,
        ap_start,
        ap_ready,
        ap_done,
        ap_continue,
        ap_start_int,
        ap_ready_int,
        ap_done_int,
        ap_continue_int,
        ap_loop_init,
        ap_loop_exit_ready,
        ap_loop_exit_ready_delayed,
        ap_loop_exit_done
);

input   ap_clk;
input   ap_rst;

//Block level handshake with outside loop
input   ap_start;
output  ap_ready;
output  ap_done;
input   ap_continue;

//Block level handshake with loop body
output  ap_start_int;
reg ap_start_int;
input   ap_ready_int;
input   ap_done_int;
output  ap_continue_int;

//Init live in variables
output   ap_loop_init;
reg ap_loop_init;

//Exit signal from loop body
input   ap_loop_exit_ready;
input   ap_loop_exit_ready_delayed;
input   ap_loop_exit_done;


//Record the delay between ap_loop_exit_ready
//and ap_loop_exit_ready_delayed
reg    rewind_ap_ready_reg;

// power-on initialization
initial begin
#0 ap_loop_init = 1'b1;
#0 rewind_ap_ready_reg = 1'b0;
end

assign ap_continue_int = ap_continue;

assign ap_done = ap_loop_exit_done;

assign ap_ready = ap_loop_exit_ready_delayed;

//ap_loop_init is valid for the first II
//of the first loop run so as to enable
//the init block ops which are pushed into
//the first state of the pipeline region
always @ (posedge ap_clk)
begin
    if (ap_rst == 1'b1) begin
        ap_loop_init <= 1'b1;
    end else if(ap_loop_exit_ready == 1'b1) begin
        ap_loop_init <= 1'b1;
    end else if(ap_ready_int == 1'b1) begin
        ap_loop_init <= 1'b0;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        rewind_ap_ready_reg <= 1'b0;
    end else if ((ap_ready == 1'b0) & (ap_start == 1'b1) & ap_loop_exit_ready == 1'b1) begin
        rewind_ap_ready_reg <= 1'b1;
    end else if ((ap_ready == 1'b1) & (ap_start == 1'b1)) begin
        rewind_ap_ready_reg <= 1'b0;
    end
end

always @ (*) begin
    if ((rewind_ap_ready_reg == 1'b0) & (ap_start == 1'b1)) begin
        ap_start_int = 1'b1;
    end else begin
        ap_start_int = 1'b0;
    end
end

endmodule
        
