-- ==============================================================
-- Generated by Vitis HLS v2024.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity multihart_ip is
generic (
    C_S_AXI_CONTROL_ADDR_WIDTH : INTEGER := 19;
    C_S_AXI_CONTROL_DATA_WIDTH : INTEGER := 32 );
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    s_axi_control_AWVALID : IN STD_LOGIC;
    s_axi_control_AWREADY : OUT STD_LOGIC;
    s_axi_control_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_ADDR_WIDTH-1 downto 0);
    s_axi_control_WVALID : IN STD_LOGIC;
    s_axi_control_WREADY : OUT STD_LOGIC;
    s_axi_control_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH-1 downto 0);
    s_axi_control_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH/8-1 downto 0);
    s_axi_control_ARVALID : IN STD_LOGIC;
    s_axi_control_ARREADY : OUT STD_LOGIC;
    s_axi_control_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_ADDR_WIDTH-1 downto 0);
    s_axi_control_RVALID : OUT STD_LOGIC;
    s_axi_control_RREADY : IN STD_LOGIC;
    s_axi_control_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH-1 downto 0);
    s_axi_control_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_control_BVALID : OUT STD_LOGIC;
    s_axi_control_BREADY : IN STD_LOGIC;
    s_axi_control_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    interrupt : OUT STD_LOGIC );
end;


architecture behav of multihart_ip is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "multihart_ip_multihart_ip,hls_ip_2024_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=10.971750,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=128,HLS_SYN_DSP=0,HLS_SYN_FF=4698,HLS_SYN_LUT=8675,HLS_VERSION=2024_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant C_S_AXI_DATA_WIDTH : INTEGER := 32;
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_start : STD_LOGIC;
    signal ap_done : STD_LOGIC;
    signal ap_idle : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_ready : STD_LOGIC;
    signal running_hart_set : STD_LOGIC_VECTOR (31 downto 0);
    signal start_pc_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal code_ram_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_ram_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal nb_instruction_ap_vld : STD_LOGIC;
    signal nb_cycle_ap_vld : STD_LOGIC;
    signal f_state_fetch_pc_fu_139_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal f_state_fetch_pc_reg_201 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal h_running_fu_143_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal h_running_reg_211 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal has_exited_fu_148_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal has_exited_reg_216 : STD_LOGIC_VECTOR (0 downto 0);
    signal h_running_2_fu_155_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal h_running_2_reg_221 : STD_LOGIC_VECTOR (0 downto 0);
    signal has_exited_6_fu_164_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal has_exited_6_reg_226 : STD_LOGIC_VECTOR (0 downto 0);
    signal f_state_fetch_pc_12_fu_171_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal f_state_fetch_pc_12_reg_231 : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_ap_start : STD_LOGIC;
    signal grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_ap_done : STD_LOGIC;
    signal grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_ap_idle : STD_LOGIC;
    signal grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_ap_ready : STD_LOGIC;
    signal grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_code_ram_address0 : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_code_ram_ce0 : STD_LOGIC;
    signal grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_data_ram_address0 : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_data_ram_ce0 : STD_LOGIC;
    signal grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_data_ram_we0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_data_ram_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_c_nbi_out : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_c_nbi_out_ap_vld : STD_LOGIC;
    signal grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_c_nbc_out : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_c_nbc_out_ap_vld : STD_LOGIC;
    signal grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal c_nbi_loc_fu_76 : STD_LOGIC_VECTOR (31 downto 0);
    signal c_nbc_loc_fu_72 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal start_pc_ce0_local : STD_LOGIC;
    signal start_pc_address0_local : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component multihart_ip_multihart_ip_Pipeline_VITIS_LOOP_193_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        has_exited_1 : IN STD_LOGIC_VECTOR (0 downto 0);
        has_exited : IN STD_LOGIC_VECTOR (0 downto 0);
        empty_14 : IN STD_LOGIC_VECTOR (14 downto 0);
        empty_15 : IN STD_LOGIC_VECTOR (14 downto 0);
        empty_16 : IN STD_LOGIC_VECTOR (0 downto 0);
        empty : IN STD_LOGIC_VECTOR (0 downto 0);
        code_ram_address0 : OUT STD_LOGIC_VECTOR (14 downto 0);
        code_ram_ce0 : OUT STD_LOGIC;
        code_ram_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        data_ram_address0 : OUT STD_LOGIC_VECTOR (14 downto 0);
        data_ram_ce0 : OUT STD_LOGIC;
        data_ram_we0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        data_ram_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        data_ram_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        c_nbi_out : OUT STD_LOGIC_VECTOR (31 downto 0);
        c_nbi_out_ap_vld : OUT STD_LOGIC;
        c_nbc_out : OUT STD_LOGIC_VECTOR (31 downto 0);
        c_nbc_out_ap_vld : OUT STD_LOGIC );
    end component;


    component multihart_ip_control_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        running_hart_set : OUT STD_LOGIC_VECTOR (31 downto 0);
        start_pc_address0 : IN STD_LOGIC_VECTOR (0 downto 0);
        start_pc_ce0 : IN STD_LOGIC;
        start_pc_q0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        nb_instruction : IN STD_LOGIC_VECTOR (31 downto 0);
        nb_instruction_ap_vld : IN STD_LOGIC;
        nb_cycle : IN STD_LOGIC_VECTOR (31 downto 0);
        nb_cycle_ap_vld : IN STD_LOGIC;
        code_ram_address0 : IN STD_LOGIC_VECTOR (14 downto 0);
        code_ram_ce0 : IN STD_LOGIC;
        code_ram_q0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        data_ram_address0 : IN STD_LOGIC_VECTOR (14 downto 0);
        data_ram_ce0 : IN STD_LOGIC;
        data_ram_we0 : IN STD_LOGIC_VECTOR (3 downto 0);
        data_ram_d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        data_ram_q0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_start : OUT STD_LOGIC;
        interrupt : OUT STD_LOGIC;
        ap_ready : IN STD_LOGIC;
        ap_done : IN STD_LOGIC;
        ap_idle : IN STD_LOGIC );
    end component;



begin
    grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123 : component multihart_ip_multihart_ip_Pipeline_VITIS_LOOP_193_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_ap_start,
        ap_done => grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_ap_done,
        ap_idle => grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_ap_idle,
        ap_ready => grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_ap_ready,
        has_exited_1 => has_exited_6_reg_226,
        has_exited => has_exited_reg_216,
        empty_14 => f_state_fetch_pc_12_reg_231,
        empty_15 => f_state_fetch_pc_reg_201,
        empty_16 => h_running_2_reg_221,
        empty => h_running_reg_211,
        code_ram_address0 => grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_code_ram_address0,
        code_ram_ce0 => grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_code_ram_ce0,
        code_ram_q0 => code_ram_q0,
        data_ram_address0 => grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_data_ram_address0,
        data_ram_ce0 => grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_data_ram_ce0,
        data_ram_we0 => grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_data_ram_we0,
        data_ram_d0 => grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_data_ram_d0,
        data_ram_q0 => data_ram_q0,
        c_nbi_out => grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_c_nbi_out,
        c_nbi_out_ap_vld => grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_c_nbi_out_ap_vld,
        c_nbc_out => grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_c_nbc_out,
        c_nbc_out_ap_vld => grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_c_nbc_out_ap_vld);

    control_s_axi_U : component multihart_ip_control_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_CONTROL_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_CONTROL_DATA_WIDTH)
    port map (
        AWVALID => s_axi_control_AWVALID,
        AWREADY => s_axi_control_AWREADY,
        AWADDR => s_axi_control_AWADDR,
        WVALID => s_axi_control_WVALID,
        WREADY => s_axi_control_WREADY,
        WDATA => s_axi_control_WDATA,
        WSTRB => s_axi_control_WSTRB,
        ARVALID => s_axi_control_ARVALID,
        ARREADY => s_axi_control_ARREADY,
        ARADDR => s_axi_control_ARADDR,
        RVALID => s_axi_control_RVALID,
        RREADY => s_axi_control_RREADY,
        RDATA => s_axi_control_RDATA,
        RRESP => s_axi_control_RRESP,
        BVALID => s_axi_control_BVALID,
        BREADY => s_axi_control_BREADY,
        BRESP => s_axi_control_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        running_hart_set => running_hart_set,
        start_pc_address0 => start_pc_address0_local,
        start_pc_ce0 => start_pc_ce0_local,
        start_pc_q0 => start_pc_q0,
        nb_instruction => c_nbi_loc_fu_76,
        nb_instruction_ap_vld => nb_instruction_ap_vld,
        nb_cycle => c_nbc_loc_fu_72,
        nb_cycle_ap_vld => nb_cycle_ap_vld,
        code_ram_address0 => grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_code_ram_address0,
        code_ram_ce0 => grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_code_ram_ce0,
        code_ram_q0 => code_ram_q0,
        data_ram_address0 => grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_data_ram_address0,
        data_ram_ce0 => grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_data_ram_ce0,
        data_ram_we0 => grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_data_ram_we0,
        data_ram_d0 => grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_data_ram_d0,
        data_ram_q0 => data_ram_q0,
        ap_start => ap_start,
        interrupt => interrupt,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_idle => ap_idle);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_ap_ready = ap_const_logic_1)) then 
                    grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_c_nbc_out_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                c_nbc_loc_fu_72 <= grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_c_nbc_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_c_nbi_out_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                c_nbi_loc_fu_76 <= grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_c_nbi_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                f_state_fetch_pc_12_reg_231 <= f_state_fetch_pc_12_fu_171_p1;
                h_running_2_reg_221 <= running_hart_set(1 downto 1);
                h_running_reg_211 <= h_running_fu_143_p1;
                has_exited_6_reg_226 <= has_exited_6_fu_164_p2;
                has_exited_reg_216 <= has_exited_fu_148_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                f_state_fetch_pc_reg_201 <= f_state_fetch_pc_fu_139_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_ap_done, ap_CS_fsm_state4)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;

    ap_ST_fsm_state4_blk_assign_proc : process(grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_ap_done)
    begin
        if ((grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state4_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state4_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state5_blk <= ap_const_logic_0;

    ap_done_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    f_state_fetch_pc_12_fu_171_p1 <= start_pc_q0(15 - 1 downto 0);
    f_state_fetch_pc_fu_139_p1 <= start_pc_q0(15 - 1 downto 0);
    grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_ap_start <= grp_multihart_ip_Pipeline_VITIS_LOOP_193_1_fu_123_ap_start_reg;
    h_running_2_fu_155_p3 <= running_hart_set(1 downto 1);
    h_running_fu_143_p1 <= running_hart_set(1 - 1 downto 0);
    has_exited_6_fu_164_p2 <= (h_running_2_fu_155_p3 xor ap_const_lv1_1);
    has_exited_fu_148_p2 <= (h_running_fu_143_p1 xor ap_const_lv1_1);

    nb_cycle_ap_vld_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            nb_cycle_ap_vld <= ap_const_logic_1;
        else 
            nb_cycle_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    nb_instruction_ap_vld_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            nb_instruction_ap_vld <= ap_const_logic_1;
        else 
            nb_instruction_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    start_pc_address0_local_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            start_pc_address0_local <= ap_const_lv64_1(1 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            start_pc_address0_local <= ap_const_lv64_0(1 - 1 downto 0);
        else 
            start_pc_address0_local <= "X";
        end if; 
    end process;


    start_pc_ce0_local_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
            start_pc_ce0_local <= ap_const_logic_1;
        else 
            start_pc_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

end behav;