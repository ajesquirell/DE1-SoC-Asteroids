-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 18.0 (Release Build #614)
-- 
-- Legal Notice: Copyright 2018 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn36
-- VHDL created on Wed May 01 18:10:22 2019


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn36 is
    port (
        in_data_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_dec_pipelined_thread : in std_logic_vector(0 downto 0);  -- ufix1
        in_inc_pipelined_thread : in std_logic_vector(0 downto 0);  -- ufix1
        in_input_accepted : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_mask : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_entry : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn36;

architecture normal of i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn36 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component acl_enable_sink is
        generic (
            PIPELINE_DEPTH : INTEGER;
            SCHEDULEII : INTEGER;
            DATA_WIDTH : INTEGER := 64;
            IP_PIPELINE_LATENCY_PLUS1 : INTEGER := 1
        );
        port (
            data_in : in std_logic_vector(63 downto 0);
            dec_pipelined_thread : in std_logic;
            inc_pipelined_thread : in std_logic;
            input_accepted : in std_logic;
            stall_in : in std_logic;
            valid_in : in std_logic;
            data_out : out std_logic_vector(63 downto 0);
            enable : out std_logic;
            stall_entry : out std_logic;
            valid_mask : out std_logic;
            valid_out : out std_logic;
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal adapt_scalar_trunc_in : STD_LOGIC_VECTOR (0 downto 0);
    signal adapt_scalar_trunc_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c_i24_0gr_q : STD_LOGIC_VECTOR (23 downto 0);
    signal c_i7_0gr_q : STD_LOGIC_VECTOR (6 downto 0);
    signal dsdk_ip_adapt_bitjoin_q : STD_LOGIC_VECTOR (63 downto 0);
    signal element_extension_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_dec_pipelined_thread : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_dec_pipelined_thread_bitsignaltemp : std_logic;
    signal i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_inc_pipelined_thread : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_inc_pipelined_thread_bitsignaltemp : std_logic;
    signal i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_input_accepted : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_input_accepted_bitsignaltemp : std_logic;
    signal i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_stall_in_bitsignaltemp : std_logic;
    signal i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_valid_in_bitsignaltemp : std_logic;
    signal i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_enable_bitsignaltemp : std_logic;
    signal i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_stall_entry : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_stall_entry_bitsignaltemp : std_logic;
    signal i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_valid_mask : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_valid_mask_bitsignaltemp : std_logic;
    signal i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_valid_out_bitsignaltemp : std_logic;
    signal ip_dsdk_adapt_bitselect_b : STD_LOGIC_VECTOR (0 downto 0);
    signal ip_dsdk_adapt_cast_b : STD_LOGIC_VECTOR (31 downto 0);
    signal not_keep_going_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- not_keep_going(LOGICAL,13)
    not_keep_going_q <= not (in_dec_pipelined_thread);

    -- c_i24_0gr(CONSTANT,6)
    c_i24_0gr_q <= "000000000000000000000000";

    -- c_i7_0gr(CONSTANT,7)
    c_i7_0gr_q <= "0000000";

    -- element_extension(BITJOIN,9)
    element_extension_q <= c_i7_0gr_q & in_data_in_0;

    -- dsdk_ip_adapt_bitjoin(BITJOIN,8)
    dsdk_ip_adapt_bitjoin_q <= in_data_in_1 & c_i24_0gr_q & element_extension_q;

    -- i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37(EXTIFACE,10)
    i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_data_in <= dsdk_ip_adapt_bitjoin_q;
    i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_dec_pipelined_thread <= not_keep_going_q;
    i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_inc_pipelined_thread <= in_inc_pipelined_thread;
    i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_input_accepted <= in_input_accepted;
    i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_stall_in <= in_stall_in;
    i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_valid_in <= in_valid_in;
    i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_dec_pipelined_thread_bitsignaltemp <= i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_dec_pipelined_thread(0);
    i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_inc_pipelined_thread_bitsignaltemp <= i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_inc_pipelined_thread(0);
    i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_input_accepted_bitsignaltemp <= i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_input_accepted(0);
    i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_stall_in_bitsignaltemp <= i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_stall_in(0);
    i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_valid_in_bitsignaltemp <= i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_valid_in(0);
    i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_enable(0) <= i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_enable_bitsignaltemp;
    i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_stall_entry(0) <= i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_stall_entry_bitsignaltemp;
    i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_valid_mask(0) <= i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_valid_mask_bitsignaltemp;
    i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_valid_out(0) <= i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_valid_out_bitsignaltemp;
    thei_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37 : acl_enable_sink
    GENERIC MAP (
        PIPELINE_DEPTH => 1,
        SCHEDULEII => 1,
        DATA_WIDTH => 64,
        IP_PIPELINE_LATENCY_PLUS1 => 1
    )
    PORT MAP (
        data_in => dsdk_ip_adapt_bitjoin_q,
        dec_pipelined_thread => i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_dec_pipelined_thread_bitsignaltemp,
        inc_pipelined_thread => i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_inc_pipelined_thread_bitsignaltemp,
        input_accepted => i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_input_accepted_bitsignaltemp,
        stall_in => i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_stall_in_bitsignaltemp,
        valid_in => i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_valid_in_bitsignaltemp,
        data_out => i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_data_out,
        enable => i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_enable_bitsignaltemp,
        stall_entry => i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_stall_entry_bitsignaltemp,
        valid_mask => i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_valid_mask_bitsignaltemp,
        valid_out => i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_valid_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ip_dsdk_adapt_bitselect_x(BITSELECT,4)
    dupName_0_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_data_out(63 downto 32);

    -- ip_dsdk_adapt_cast(BITSELECT,12)
    ip_dsdk_adapt_cast_b <= dupName_0_ip_dsdk_adapt_bitselect_x_b(31 downto 0);

    -- ip_dsdk_adapt_bitselect(BITSELECT,11)
    ip_dsdk_adapt_bitselect_b <= i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_data_out(0 downto 0);

    -- adapt_scalar_trunc(ROUND,5)
    adapt_scalar_trunc_in <= ip_dsdk_adapt_bitselect_b;
    adapt_scalar_trunc_q <= adapt_scalar_trunc_in(0 downto 0);

    -- dupName_0_sync_out_aunroll_x(GPOUT,3)@20000000
    out_data_out_0 <= adapt_scalar_trunc_q;
    out_data_out_1 <= ip_dsdk_adapt_cast_b;
    out_enable <= i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_enable;
    out_valid_mask <= i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_valid_mask;
    out_valid_out <= i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_valid_out;

    -- sync_out(GPOUT,15)@20000000
    out_stall_entry <= i_acl_sfc_exit_c1_wt_entry_altera_rand_gen_fn_c1_exit_altera_rand_gen_fn37_stall_entry;

END normal;
