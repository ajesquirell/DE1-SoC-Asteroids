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

-- VHDL created from i_sfc_logic_c1_wt_entry_altera_rand_gen_fn_c1_enter_altera_rand_gen_fn13
-- VHDL created on Sat May 04 08:37:47 2019


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

entity i_sfc_logic_c1_wt_entry_altera_rand_gen_fn_c1_enter_altera_rand_gen_fn13 is
    port (
        in_c1_eni1_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni1_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi1_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi1_1 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c1_wt_entry_altera_rand_gen_fn_c1_enter_altera_rand_gen_fn13;

architecture normal of i_sfc_logic_c1_wt_entry_altera_rand_gen_fn_c1_enter_altera_rand_gen_fn13 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pop_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_pop8_altera_rand_gen_fn15 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_8 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_pop7_altera_rand_gen_fn22 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_pop6_altera_rand_gen_fn29 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_6 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_pop5_altera_rand_gen_fn36 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_pop4_altera_rand_gen_fn43 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_pop3_altera_rand_gen_fn51 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_push8_altera_rand_gen_fn20 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_8 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_push7_altera_rand_gen_fn27 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_push6_altera_rand_gen_fn34 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_push5_altera_rand_gen_fn41 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_push4_altera_rand_gen_fn49 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_push3_altera_rand_gen_fn56 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_shl_i1_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_10_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_11_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_12_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_13_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_14_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_15_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_16_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_17_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_18_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_19_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_1_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_20_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_21_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_22_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_23_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_24_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_25_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_26_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_27_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_28_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_29_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_2_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_30_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_3_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_4_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_5_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_6_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_7_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_8_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_9_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_altera_rand_gen_fn_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_vec_1_join_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_xor12_i2037_compressed_altera_rand_gen_fn_altera_rand_gen_fn48_xor12_i2037_shuffle_join_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_vec_1_join_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_xor12_i34_compressed_altera_rand_gen_fn_altera_rand_gen_fn26_xor12_i34_shuffle_join_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_vec_1_join_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_xor21_i2938_compressed_altera_rand_gen_fn_altera_rand_gen_fn55_xor21_i2938_shuffle_join_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_vec_1_join_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_xor21_i35_compressed_altera_rand_gen_fn_altera_rand_gen_fn33_xor21_i35_shuffle_join_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_vec_1_join_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_xor3_i1136_compressed_altera_rand_gen_fn_altera_rand_gen_fn40_xor3_i1136_shuffle_join_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_vec_1_join_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_xor3_i33_compressed_altera_rand_gen_fn_altera_rand_gen_fn19_xor3_i33_shuffle_join_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1023_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1048575_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1073741823_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_127_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_131071_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_134217727_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_15_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_16383_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_16777215_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_2047_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_2097151_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_255_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_262143_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_268435455_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_31_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_32767_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_33554431_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_3gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_4095_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_4194303_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_511_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_524287_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_536870911_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_63_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_65535_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_67108863_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_68997765_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_68997766_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_68997767_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_68997768_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_68997769_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_68997770_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_788529152_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_7gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_8191_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_8388607_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_pop8_altera_rand_gen_fn_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_pop8_altera_rand_gen_fn_out_feedback_stall_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_pop7_altera_rand_gen_fn_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_pop7_altera_rand_gen_fn_out_feedback_stall_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_pop6_altera_rand_gen_fn_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_pop6_altera_rand_gen_fn_out_feedback_stall_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_pop5_altera_rand_gen_fn_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_pop5_altera_rand_gen_fn_out_feedback_stall_out_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_pop4_altera_rand_gen_fn_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_pop4_altera_rand_gen_fn_out_feedback_stall_out_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_pop3_altera_rand_gen_fn_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_pop3_altera_rand_gen_fn_out_feedback_stall_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_push8_altera_rand_gen_fn_out_feedback_out_8 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_push8_altera_rand_gen_fn_out_feedback_valid_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_push7_altera_rand_gen_fn_out_feedback_out_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_push7_altera_rand_gen_fn_out_feedback_valid_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_push6_altera_rand_gen_fn_out_feedback_out_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_push6_altera_rand_gen_fn_out_feedback_valid_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_push5_altera_rand_gen_fn_out_feedback_out_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_push5_altera_rand_gen_fn_out_feedback_valid_out_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_push4_altera_rand_gen_fn_out_feedback_out_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_push4_altera_rand_gen_fn_out_feedback_valid_out_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_push3_altera_rand_gen_fn_out_feedback_out_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_push3_altera_rand_gen_fn_out_feedback_valid_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add_i_altera_rand_gen_fn_vt_const_22_q : STD_LOGIC_VECTOR (22 downto 0);
    signal i_add_i_altera_rand_gen_fn_vt_const_31_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_add_i_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add_i_altera_rand_gen_fn_vt_select_28_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_and9_i17_altera_rand_gen_fn_vt_const_3_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_and9_i17_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and9_i17_altera_rand_gen_fn_vt_select_31_b : STD_LOGIC_VECTOR (27 downto 0);
    signal i_cmp1_i_i_10_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_10_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_10_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_10_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_11_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_11_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_11_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_11_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_12_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_12_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_12_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_12_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_13_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_13_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_13_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_13_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_14_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_14_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_14_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_14_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_15_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_15_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_15_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_15_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_16_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_16_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_16_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_16_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_17_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_17_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_17_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_17_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_18_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_18_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_18_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_18_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_19_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_19_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_19_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_19_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_1_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_1_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_1_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_1_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_20_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_20_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_20_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_20_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_21_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_21_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_21_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_21_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_22_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_22_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_22_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_22_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_23_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_23_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_23_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_23_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_24_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_24_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_24_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_24_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_25_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_25_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_25_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_25_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_26_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_26_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_26_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_26_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_27_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_27_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_27_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_27_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_28_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_28_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_28_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_28_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_29_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_29_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_29_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_29_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_2_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_2_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_2_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_2_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_30_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_30_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_30_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_30_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_3_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_3_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_3_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_3_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_4_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_4_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_4_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_4_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_5_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_5_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_5_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_5_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_6_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_6_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_6_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_6_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_7_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_7_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_7_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_7_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_8_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_8_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_8_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_8_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_9_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_9_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_9_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1_i_i_9_altera_rand_gen_fn_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_altera_rand_gen_fn_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1_i_i_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q : STD_LOGIC_VECTOR (30 downto 0);
    signal i_inc_i_i_10_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_10_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_11_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_11_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_12_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_12_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_13_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_13_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_14_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_14_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_15_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_15_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_16_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_16_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_17_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_17_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_18_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_18_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_19_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_19_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_1_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_1_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_20_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_20_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_21_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_21_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_22_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_22_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_23_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_23_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_24_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_24_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_25_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_25_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_26_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_26_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_27_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_27_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_28_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_28_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_29_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_29_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_2_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_2_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_30_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_30_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_3_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_3_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_4_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_4_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_5_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_5_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_6_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_6_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_7_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_7_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_8_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_8_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_9_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_9_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_i_i_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc_i_i_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_const_31_q : STD_LOGIC_VECTOR (29 downto 0);
    signal i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_const_31_q : STD_LOGIC_VECTOR (28 downto 0);
    signal i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_select_2_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_vt_select_2_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_vt_select_2_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_vt_select_2_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_vt_select_2_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_vt_select_2_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_vt_select_2_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_vt_const_31_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_vt_select_3_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_vt_select_3_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_vt_select_3_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_vt_const_31_q : STD_LOGIC_VECTOR (26 downto 0);
    signal i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_vt_select_4_b : STD_LOGIC_VECTOR (4 downto 0);
    signal i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_vt_select_2_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_vt_select_3_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_vt_select_4_b : STD_LOGIC_VECTOR (4 downto 0);
    signal i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_vt_const_31_q : STD_LOGIC_VECTOR (25 downto 0);
    signal i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_vt_select_5_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_shl14_i22_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl14_i22_altera_rand_gen_fn_vt_select_31_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_shl14_i_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl14_i_altera_rand_gen_fn_vt_select_31_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_shl5_i13_altera_rand_gen_fn_vt_const_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal i_shl5_i13_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl5_i13_altera_rand_gen_fn_vt_select_31_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_shl5_i_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl5_i_altera_rand_gen_fn_vt_select_31_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_shl_i1_altera_rand_gen_fn_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i1_altera_rand_gen_fn_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i1_altera_rand_gen_fn_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i1_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i1_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i1_altera_rand_gen_fn_vt_select_30_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_shl_i4_altera_rand_gen_fn_vt_const_12_q : STD_LOGIC_VECTOR (12 downto 0);
    signal i_shl_i4_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i4_altera_rand_gen_fn_vt_select_31_b : STD_LOGIC_VECTOR (18 downto 0);
    signal i_shl_i_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i_altera_rand_gen_fn_vt_select_31_b : STD_LOGIC_VECTOR (18 downto 0);
    signal i_shr_i2_altera_rand_gen_fn_vt_const_31_q : STD_LOGIC_VECTOR (8 downto 0);
    signal i_shr_i2_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr_i2_altera_rand_gen_fn_vt_select_22_b : STD_LOGIC_VECTOR (22 downto 0);
    signal i_xor15_i23_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_xor15_i_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_xor23_i31_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_xor23_i_altera_rand_gen_fn_qi : STD_LOGIC_VECTOR (31 downto 0);
    signal i_xor23_i_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_xor24_i32_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_xor24_i_altera_rand_gen_fn_qi : STD_LOGIC_VECTOR (31 downto 0);
    signal i_xor24_i_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_xor24_i_lobit_altera_rand_gen_fn_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_xor24_i_lobit_altera_rand_gen_fn_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor6_i14_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_xor6_i_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_xor_i5_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_xor_i_altera_rand_gen_fn_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Pad16_uid934_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid935_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid935_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid936_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid938_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid938_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid940_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid940_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid941_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid943_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid943_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid945_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid945_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid946_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid948_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid948_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng1_uid950_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1Rng1_uid950_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1_uid951_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid953_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid953_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng4_uid959_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid959_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid960_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid962_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid962_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng2_uid968_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1Rng2_uid968_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1_uid969_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid971_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid971_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid973_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid973_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid974_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid976_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid976_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng2_uid982_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1Rng2_uid982_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1_uid983_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid985_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid985_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid987_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid987_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid988_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid990_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid990_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng2_uid996_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1Rng2_uid996_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1_uid997_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid999_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid999_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng2_uid1005_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1Rng2_uid1005_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1_uid1006_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1008_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1008_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Pad8_uid1013_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1014_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1014_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid1015_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1017_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1017_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1019_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1019_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid1020_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1022_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1022_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1024_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1024_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid1025_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1027_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1027_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1033_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1033_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid1034_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1036_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1036_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1038_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1038_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid1039_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1041_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1041_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1043_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1043_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid1044_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1046_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1046_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng8_uid1051_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx1_uid1053_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1055_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1055_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng1_uid1056_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage1Idx1_uid1058_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1060_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1060_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1065_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1067_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1069_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1069_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1070_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1072_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1074_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1074_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1075_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1077_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1079_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1079_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1080_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1082_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1084_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1084_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1085_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1087_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1089_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1089_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_xor_i339_altera_rand_gen_fn_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_xor_i339_altera_rand_gen_fn_BitSelect_for_b_b : STD_LOGIC_VECTOR (22 downto 0);
    signal i_xor_i339_altera_rand_gen_fn_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in : STD_LOGIC_VECTOR (59 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_f : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_g : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_h : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_i : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_j : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_k : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_l : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_m : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_o : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_p : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_r : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_t : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_u : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_v : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_w : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_x : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_y : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_z : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_bb : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_cc : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_dd : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_ee : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_ff : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_gg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in : STD_LOGIC_VECTOR (59 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_f : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_g : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_h : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_i : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_j : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_k : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_l : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_m : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_o : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_p : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_r : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_t : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_u : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_v : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_w : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_x : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_y : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_z : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_bb : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_cc : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_dd : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_ee : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_ff : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_gg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in : STD_LOGIC_VECTOR (46 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_f : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_g : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_h : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_i : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_j : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_k : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_l : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_m : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_o : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_p : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_r : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_t : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_u : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_v : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_w : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_x : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_y : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_z : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_bb : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_cc : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_dd : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_ee : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_ff : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_gg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in : STD_LOGIC_VECTOR (46 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_f : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_g : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_h : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_i : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_j : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_k : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_l : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_m : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_o : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_p : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_r : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_t : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_u : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_v : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_w : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_x : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_y : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_z : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_bb : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_cc : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_dd : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_ee : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_ff : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_gg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in : STD_LOGIC_VECTOR (51 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_f : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_g : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_h : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_i : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_j : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_k : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_l : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_m : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_o : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_p : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_r : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_t : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_u : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_v : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_w : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_x : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_y : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_z : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_bb : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_cc : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_dd : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_ee : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_ff : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_gg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in : STD_LOGIC_VECTOR (51 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_f : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_g : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_h : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_i : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_j : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_k : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_l : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_m : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_o : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_p : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_r : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_t : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_u : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_v : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_w : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_x : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_y : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_z : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_bb : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_cc : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_dd : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_ee : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_ff : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_gg : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_d_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_e_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_f_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_g_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_h_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_i_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_j_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_k_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_l_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_m_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_n_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_o_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_p_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_r_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_s_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_t_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_u_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_v_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_w_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_x_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_y_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_z_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_aa_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist26_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_bb_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_cc_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_dd_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_ee_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist30_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_ff_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_gg_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_d_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_e_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_f_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist37_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_g_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_h_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist39_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_i_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist40_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_j_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist41_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_k_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist42_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_l_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist43_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_m_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist44_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_n_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist45_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_o_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist46_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_p_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist47_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist48_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_r_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist49_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_s_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist50_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_t_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist51_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_u_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist52_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_v_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist53_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_w_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist54_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_x_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist55_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_y_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist56_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_z_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_aa_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist58_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_bb_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist59_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_cc_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist60_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_dd_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist61_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_ee_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist62_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_ff_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_gg_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_i_xor24_i_lobit_altera_rand_gen_fn_vt_select_0_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist65_i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_vt_select_1_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist66_i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_vt_select_1_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist67_i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_vt_select_1_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist68_i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_vt_select_1_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist69_i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_vt_select_1_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist70_i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_vt_select_1_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist71_i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_vt_select_1_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist72_i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_vt_select_1_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist73_i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_vt_select_4_b_1_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist74_i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_vt_select_3_b_1_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist75_i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_vt_select_2_b_1_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist76_i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_vt_select_1_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist77_i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_vt_select_4_b_1_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist78_i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_vt_select_3_b_1_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist79_i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_vt_select_3_b_1_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist80_i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_vt_select_3_b_1_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist81_i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_vt_select_2_b_1_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist82_i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_vt_select_2_b_1_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist83_i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_vt_select_1_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist84_i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_vt_select_2_b_1_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist85_i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_vt_select_2_b_1_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist86_i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_vt_select_2_b_1_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist87_i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_vt_select_2_b_1_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist88_i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_select_2_b_1_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist89_i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_vt_select_1_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist90_i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_vt_select_1_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist91_i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_vt_select_1_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist92_i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_vt_select_1_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist93_i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_vt_select_1_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist94_i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_select_1_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist95_i_inc_i_i_9_altera_rand_gen_fn_vt_select_0_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist96_i_inc_i_i_8_altera_rand_gen_fn_vt_select_0_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist97_i_inc_i_i_6_altera_rand_gen_fn_vt_select_0_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist98_i_inc_i_i_4_altera_rand_gen_fn_vt_select_0_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist99_i_inc_i_i_30_altera_rand_gen_fn_vt_select_0_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist100_i_inc_i_i_2_altera_rand_gen_fn_vt_select_0_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist101_i_inc_i_i_28_altera_rand_gen_fn_vt_select_0_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist102_i_inc_i_i_26_altera_rand_gen_fn_vt_select_0_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist103_i_inc_i_i_24_altera_rand_gen_fn_vt_select_0_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist104_i_inc_i_i_22_altera_rand_gen_fn_vt_select_0_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist105_i_inc_i_i_20_altera_rand_gen_fn_vt_select_0_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist106_i_inc_i_i_18_altera_rand_gen_fn_vt_select_0_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist107_i_inc_i_i_16_altera_rand_gen_fn_vt_select_0_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist108_i_inc_i_i_14_altera_rand_gen_fn_vt_select_0_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist109_i_cmp1_i_i_altera_rand_gen_fn_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist110_i_and9_i17_altera_rand_gen_fn_vt_select_31_b_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist111_i_add_i_altera_rand_gen_fn_vt_select_28_b_1_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist112_i_acl_pop_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_pop8_altera_rand_gen_fn_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist113_sync_in_aunroll_x_in_c1_eni1_1_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist114_sync_in_aunroll_x_in_c1_eni1_1_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist115_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist116_sync_in_aunroll_x_in_i_valid_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist117_sync_in_aunroll_x_in_i_valid_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist118_i_xor21_i35_compressed_altera_rand_gen_fn_altera_rand_gen_fn33_xor21_i35_shuffle_join_x_q_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist119_i_xor12_i34_compressed_altera_rand_gen_fn_altera_rand_gen_fn26_xor12_i34_shuffle_join_x_q_1_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist115_sync_in_aunroll_x_in_i_valid_1(DELAY,1277)
    redist115_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist115_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist116_sync_in_aunroll_x_in_i_valid_8(DELAY,1278)
    redist116_sync_in_aunroll_x_in_i_valid_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist115_sync_in_aunroll_x_in_i_valid_1_q, xout => redist116_sync_in_aunroll_x_in_i_valid_8_q, clk => clock, aclr => resetn );

    -- redist117_sync_in_aunroll_x_in_i_valid_9(DELAY,1279)
    redist117_sync_in_aunroll_x_in_i_valid_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist116_sync_in_aunroll_x_in_i_valid_8_q, xout => redist117_sync_in_aunroll_x_in_i_valid_9_q, clk => clock, aclr => resetn );

    -- c_i32_788529152(CONSTANT,584)
    c_i32_788529152_q <= "00101111000000000000000000000000";

    -- i_add_i_altera_rand_gen_fn_vt_const_31(CONSTANT,602)
    i_add_i_altera_rand_gen_fn_vt_const_31_q <= "000";

    -- leftShiftStage3Idx1Rng1_uid950_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x(BITSELECT,949)@9
    leftShiftStage3Idx1Rng1_uid950_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_in <= leftShiftStage2_uid948_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q(30 downto 0);
    leftShiftStage3Idx1Rng1_uid950_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_b <= leftShiftStage3Idx1Rng1_uid950_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_in(30 downto 0);

    -- leftShiftStage3Idx1_uid951_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x(BITJOIN,950)@9
    leftShiftStage3Idx1_uid951_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q <= leftShiftStage3Idx1Rng1_uid950_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_b & GND_q;

    -- leftShiftStage2Idx1Rng2_uid945_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x(BITSELECT,944)@9
    leftShiftStage2Idx1Rng2_uid945_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_in <= leftShiftStage1_uid943_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid945_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_b <= leftShiftStage2Idx1Rng2_uid945_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_in(29 downto 0);

    -- i_shl5_i13_altera_rand_gen_fn_vt_const_1(CONSTANT,893)
    i_shl5_i13_altera_rand_gen_fn_vt_const_1_q <= "00";

    -- leftShiftStage2Idx1_uid946_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x(BITJOIN,945)@9
    leftShiftStage2Idx1_uid946_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q <= leftShiftStage2Idx1Rng2_uid945_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_b & i_shl5_i13_altera_rand_gen_fn_vt_const_1_q;

    -- leftShiftStage1Idx1Rng4_uid940_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x(BITSELECT,939)@9
    leftShiftStage1Idx1Rng4_uid940_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_in <= leftShiftStage0_uid938_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid940_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_b <= leftShiftStage1Idx1Rng4_uid940_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_in(27 downto 0);

    -- i_and9_i17_altera_rand_gen_fn_vt_const_3(CONSTANT,605)
    i_and9_i17_altera_rand_gen_fn_vt_const_3_q <= "0000";

    -- leftShiftStage1Idx1_uid941_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x(BITJOIN,940)@9
    leftShiftStage1Idx1_uid941_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q <= leftShiftStage1Idx1Rng4_uid940_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_b & i_and9_i17_altera_rand_gen_fn_vt_const_3_q;

    -- leftShiftStage0Idx1Rng16_uid935_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x(BITSELECT,934)@9
    leftShiftStage0Idx1Rng16_uid935_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_in <= i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_vt_join_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid935_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_b <= leftShiftStage0Idx1Rng16_uid935_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1Pad16_uid934_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x(CONSTANT,933)
    leftShiftStage0Idx1Pad16_uid934_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q <= "0000000000000000";

    -- leftShiftStage0Idx1_uid936_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x(BITJOIN,935)@9
    leftShiftStage0Idx1_uid936_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q <= leftShiftStage0Idx1Rng16_uid935_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_b & leftShiftStage0Idx1Pad16_uid934_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q;

    -- i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_vt_const_31(CONSTANT,856)
    i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_vt_const_31_q <= "00000000000000000000000000";

    -- i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_vt_const_31(CONSTANT,832)
    i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_vt_const_31_q <= "000000000000000000000000000";

    -- i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_vt_const_31(CONSTANT,820)
    i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_vt_const_31_q <= "0000000000000000000000000000";

    -- i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_const_31(CONSTANT,788)
    i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_const_31_q <= "00000000000000000000000000000";

    -- i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_const_31(CONSTANT,764)
    i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_const_31_q <= "000000000000000000000000000000";

    -- i_inc_i_i_10_altera_rand_gen_fn_vt_const_31(CONSTANT,640)
    i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q <= "0000000000000000000000000000000";

    -- i_acl_push_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_push6_altera_rand_gen_fn(BLACKBOX,597)@2
    -- out out_feedback_out_6@20000000
    -- out out_feedback_valid_out_6@20000000
    thei_acl_push_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_push6_altera_rand_gen_fn : i_acl_push_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_push6_altera_rand_gen_fn34
    PORT MAP (
        in_data_in => i_xor21_i35_compressed_altera_rand_gen_fn_altera_rand_gen_fn33_xor21_i35_shuffle_join_x_q,
        in_feedback_stall_in_6 => i_acl_pop_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_pop6_altera_rand_gen_fn_out_feedback_stall_out_6,
        in_stall_in => GND_q,
        in_valid_in => redist115_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_6 => i_acl_push_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_push6_altera_rand_gen_fn_out_feedback_out_6,
        out_feedback_valid_out_6 => i_acl_push_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_push6_altera_rand_gen_fn_out_feedback_valid_out_6,
        clock => clock,
        resetn => resetn
    );

    -- redist113_sync_in_aunroll_x_in_c1_eni1_1_1(DELAY,1275)
    redist113_sync_in_aunroll_x_in_c1_eni1_1_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c1_eni1_1, xout => redist113_sync_in_aunroll_x_in_c1_eni1_1_1_q, clk => clock, aclr => resetn );

    -- c_i32_68997767(CONSTANT,580)
    c_i32_68997767_q <= "00000100000111001101001010000111";

    -- i_acl_pop_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_pop6_altera_rand_gen_fn(BLACKBOX,591)@2
    -- out out_feedback_stall_out_6@20000000
    thei_acl_pop_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_pop6_altera_rand_gen_fn : i_acl_pop_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_pop6_altera_rand_gen_fn29
    PORT MAP (
        in_data_in => c_i32_68997767_q,
        in_dir => redist113_sync_in_aunroll_x_in_c1_eni1_1_1_q,
        in_feedback_in_6 => i_acl_push_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_push6_altera_rand_gen_fn_out_feedback_out_6,
        in_feedback_valid_in_6 => i_acl_push_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_push6_altera_rand_gen_fn_out_feedback_valid_out_6,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist115_sync_in_aunroll_x_in_i_valid_1_q,
        out_data_out => i_acl_pop_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_pop6_altera_rand_gen_fn_out_data_out,
        out_feedback_stall_out_6 => i_acl_pop_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_pop6_altera_rand_gen_fn_out_feedback_stall_out_6,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage1Idx1Rng1_uid987_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x(BITSELECT,986)@2
    leftShiftStage1Idx1Rng1_uid987_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_in <= leftShiftStage0_uid985_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid987_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_b <= leftShiftStage1Idx1Rng1_uid987_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid988_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x(BITJOIN,987)@2
    leftShiftStage1Idx1_uid988_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_q <= leftShiftStage1Idx1Rng1_uid987_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_b & GND_q;

    -- leftShiftStage0Idx1Rng2_uid982_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x(BITSELECT,981)@2
    leftShiftStage0Idx1Rng2_uid982_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_in <= i_acl_pop_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_pop6_altera_rand_gen_fn_out_data_out(29 downto 0);
    leftShiftStage0Idx1Rng2_uid982_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_b <= leftShiftStage0Idx1Rng2_uid982_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_in(29 downto 0);

    -- leftShiftStage0Idx1_uid983_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x(BITJOIN,982)@2
    leftShiftStage0Idx1_uid983_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_q <= leftShiftStage0Idx1Rng2_uid982_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_b & i_shl5_i13_altera_rand_gen_fn_vt_const_1_q;

    -- leftShiftStage0_uid985_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x(MUX,984)@2
    leftShiftStage0_uid985_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_s <= VCC_q;
    leftShiftStage0_uid985_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_combproc: PROCESS (leftShiftStage0_uid985_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_s, i_acl_pop_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_pop6_altera_rand_gen_fn_out_data_out, leftShiftStage0Idx1_uid983_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid985_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid985_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_q <= i_acl_pop_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_pop6_altera_rand_gen_fn_out_data_out;
            WHEN "1" => leftShiftStage0_uid985_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_q <= leftShiftStage0Idx1_uid983_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid985_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid990_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x(MUX,989)@2
    leftShiftStage1_uid990_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_s <= VCC_q;
    leftShiftStage1_uid990_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_combproc: PROCESS (leftShiftStage1_uid990_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_s, leftShiftStage0_uid985_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_q, leftShiftStage1Idx1_uid988_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid990_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid990_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_q <= leftShiftStage0_uid985_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_q;
            WHEN "1" => leftShiftStage1_uid990_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_q <= leftShiftStage1Idx1_uid988_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid990_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shl14_i_altera_rand_gen_fn_vt_select_31(BITSELECT,892)@2
    i_shl14_i_altera_rand_gen_fn_vt_select_31_b <= leftShiftStage1_uid990_i_shl14_i_altera_rand_gen_fn_altera_rand_gen_fn31_shift_x_q(31 downto 3);

    -- i_shl14_i_altera_rand_gen_fn_vt_join(BITJOIN,891)@2
    i_shl14_i_altera_rand_gen_fn_vt_join_q <= i_shl14_i_altera_rand_gen_fn_vt_select_31_b & i_add_i_altera_rand_gen_fn_vt_const_31_q;

    -- i_xor15_i_altera_rand_gen_fn(LOGICAL,915)@2
    i_xor15_i_altera_rand_gen_fn_q <= i_shl14_i_altera_rand_gen_fn_vt_join_q xor i_acl_pop_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_pop6_altera_rand_gen_fn_out_data_out;

    -- i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_vec_1_join_x(BITJOIN,374)@2
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_vec_1_join_x_q <= i_acl_pop_i32_e0_s3_altera_rand_gen_fn_4ia_addr_0_pop6_altera_rand_gen_fn_out_data_out & i_xor15_i_altera_rand_gen_fn_q;

    -- i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select(BITSELECT,1159)@2
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_vec_1_join_x_q(46 downto 0);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_b <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(11 downto 11);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_c <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(12 downto 12);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_d <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(13 downto 13);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_e <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(14 downto 14);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_f <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(15 downto 15);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_g <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(16 downto 16);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_h <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(17 downto 17);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_i <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(18 downto 18);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_j <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(19 downto 19);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_k <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(20 downto 20);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_l <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(21 downto 21);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_m <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(22 downto 22);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_n <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(23 downto 23);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_o <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(24 downto 24);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_p <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(25 downto 25);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_q <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(26 downto 26);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_r <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(27 downto 27);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_s <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(28 downto 28);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_t <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(29 downto 29);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_u <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(30 downto 30);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_v <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(31 downto 31);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_w <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(36 downto 36);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_x <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(37 downto 37);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_y <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(38 downto 38);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_z <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(39 downto 39);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_aa <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(40 downto 40);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_bb <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(41 downto 41);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_cc <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(42 downto 42);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_dd <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(43 downto 43);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_ee <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(44 downto 44);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_ff <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(45 downto 45);
    i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_gg <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_in(46 downto 46);

    -- i_xor21_i35_compressed_altera_rand_gen_fn_altera_rand_gen_fn33_xor21_i35_shuffle_join_x(BITJOIN,375)@2
    i_xor21_i35_compressed_altera_rand_gen_fn_altera_rand_gen_fn33_xor21_i35_shuffle_join_x_q <= i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_gg & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_ff & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_ee & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_dd & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_cc & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_bb & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_aa & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_z & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_y & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_x & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_w & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_v & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_u & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_t & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_s & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_r & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_q & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_p & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_o & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_n & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_m & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_l & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_k & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_j & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_i & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_h & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_g & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_f & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_e & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_d & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_c & i_xor21_i35_bitvec_altera_rand_gen_fn_altera_rand_gen_fn32_xor21_i35_bitvec_select_11_x_merged_bit_select_b;

    -- redist118_i_xor21_i35_compressed_altera_rand_gen_fn_altera_rand_gen_fn33_xor21_i35_shuffle_join_x_q_1(DELAY,1280)
    redist118_i_xor21_i35_compressed_altera_rand_gen_fn_altera_rand_gen_fn33_xor21_i35_shuffle_join_x_q_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i35_compressed_altera_rand_gen_fn_altera_rand_gen_fn33_xor21_i35_shuffle_join_x_q, xout => redist118_i_xor21_i35_compressed_altera_rand_gen_fn_altera_rand_gen_fn33_xor21_i35_shuffle_join_x_q_1_q, clk => clock, aclr => resetn );

    -- i_acl_push_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_push8_altera_rand_gen_fn(BLACKBOX,595)@2
    -- out out_feedback_out_8@20000000
    -- out out_feedback_valid_out_8@20000000
    thei_acl_push_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_push8_altera_rand_gen_fn : i_acl_push_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_push8_altera_rand_gen_fn20
    PORT MAP (
        in_data_in => i_xor3_i33_compressed_altera_rand_gen_fn_altera_rand_gen_fn19_xor3_i33_shuffle_join_x_q,
        in_feedback_stall_in_8 => i_acl_pop_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_pop8_altera_rand_gen_fn_out_feedback_stall_out_8,
        in_stall_in => GND_q,
        in_valid_in => redist115_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_8 => i_acl_push_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_push8_altera_rand_gen_fn_out_feedback_out_8,
        out_feedback_valid_out_8 => i_acl_push_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_push8_altera_rand_gen_fn_out_feedback_valid_out_8,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_68997765(CONSTANT,578)
    c_i32_68997765_q <= "00000100000111001101001010000101";

    -- i_acl_pop_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_pop8_altera_rand_gen_fn(BLACKBOX,589)@1
    -- out out_feedback_stall_out_8@20000000
    thei_acl_pop_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_pop8_altera_rand_gen_fn : i_acl_pop_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_pop8_altera_rand_gen_fn15
    PORT MAP (
        in_data_in => c_i32_68997765_q,
        in_dir => in_c1_eni1_1,
        in_feedback_in_8 => i_acl_push_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_push8_altera_rand_gen_fn_out_feedback_out_8,
        in_feedback_valid_in_8 => i_acl_push_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_push8_altera_rand_gen_fn_out_feedback_valid_out_8,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_pop8_altera_rand_gen_fn_out_data_out,
        out_feedback_stall_out_8 => i_acl_pop_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_pop8_altera_rand_gen_fn_out_feedback_stall_out_8,
        clock => clock,
        resetn => resetn
    );

    -- redist112_i_acl_pop_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_pop8_altera_rand_gen_fn_out_data_out_1(DELAY,1274)
    redist112_i_acl_pop_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_pop8_altera_rand_gen_fn_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_pop8_altera_rand_gen_fn_out_data_out, xout => redist112_i_acl_pop_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_pop8_altera_rand_gen_fn_out_data_out_1_q, clk => clock, aclr => resetn );

    -- leftShiftStage2Idx1Rng1_uid1043_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x(BITSELECT,1042)@2
    leftShiftStage2Idx1Rng1_uid1043_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_in <= leftShiftStage1_uid1041_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid1043_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_b <= leftShiftStage2Idx1Rng1_uid1043_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid1044_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x(BITJOIN,1043)@2
    leftShiftStage2Idx1_uid1044_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q <= leftShiftStage2Idx1Rng1_uid1043_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_b & GND_q;

    -- leftShiftStage1Idx1Rng4_uid1038_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x(BITSELECT,1037)@2
    leftShiftStage1Idx1Rng4_uid1038_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_in <= leftShiftStage0_uid1036_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid1038_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_b <= leftShiftStage1Idx1Rng4_uid1038_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid1039_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x(BITJOIN,1038)@2
    leftShiftStage1Idx1_uid1039_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q <= leftShiftStage1Idx1Rng4_uid1038_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_b & i_and9_i17_altera_rand_gen_fn_vt_const_3_q;

    -- leftShiftStage0Idx1Rng8_uid1033_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x(BITSELECT,1032)@2
    leftShiftStage0Idx1Rng8_uid1033_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_in <= redist112_i_acl_pop_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_pop8_altera_rand_gen_fn_out_data_out_1_q(23 downto 0);
    leftShiftStage0Idx1Rng8_uid1033_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_b <= leftShiftStage0Idx1Rng8_uid1033_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1Pad8_uid1013_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x(CONSTANT,1012)
    leftShiftStage0Idx1Pad8_uid1013_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q <= "00000000";

    -- leftShiftStage0Idx1_uid1034_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x(BITJOIN,1033)@2
    leftShiftStage0Idx1_uid1034_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q <= leftShiftStage0Idx1Rng8_uid1033_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_b & leftShiftStage0Idx1Pad8_uid1013_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q;

    -- leftShiftStage0_uid1036_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x(MUX,1035)@2
    leftShiftStage0_uid1036_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_s <= VCC_q;
    leftShiftStage0_uid1036_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_combproc: PROCESS (leftShiftStage0_uid1036_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_s, redist112_i_acl_pop_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_pop8_altera_rand_gen_fn_out_data_out_1_q, leftShiftStage0Idx1_uid1034_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1036_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1036_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q <= redist112_i_acl_pop_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_pop8_altera_rand_gen_fn_out_data_out_1_q;
            WHEN "1" => leftShiftStage0_uid1036_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q <= leftShiftStage0Idx1_uid1034_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1036_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1041_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x(MUX,1040)@2
    leftShiftStage1_uid1041_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_s <= VCC_q;
    leftShiftStage1_uid1041_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_combproc: PROCESS (leftShiftStage1_uid1041_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_s, leftShiftStage0_uid1036_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q, leftShiftStage1Idx1_uid1039_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1041_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1041_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q <= leftShiftStage0_uid1036_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1041_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q <= leftShiftStage1Idx1_uid1039_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1041_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1046_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x(MUX,1045)@2
    leftShiftStage2_uid1046_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_s <= VCC_q;
    leftShiftStage2_uid1046_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_combproc: PROCESS (leftShiftStage2_uid1046_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_s, leftShiftStage1_uid1041_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q, leftShiftStage2Idx1_uid1044_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1046_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1046_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q <= leftShiftStage1_uid1041_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1046_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q <= leftShiftStage2Idx1_uid1044_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1046_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shl_i_altera_rand_gen_fn_vt_select_31(BITSELECT,909)@2
    i_shl_i_altera_rand_gen_fn_vt_select_31_b <= leftShiftStage2_uid1046_i_shl_i_altera_rand_gen_fn_altera_rand_gen_fn17_shift_x_q(31 downto 13);

    -- i_shl_i4_altera_rand_gen_fn_vt_const_12(CONSTANT,904)
    i_shl_i4_altera_rand_gen_fn_vt_const_12_q <= "0000000000000";

    -- i_shl_i_altera_rand_gen_fn_vt_join(BITJOIN,908)@2
    i_shl_i_altera_rand_gen_fn_vt_join_q <= i_shl_i_altera_rand_gen_fn_vt_select_31_b & i_shl_i4_altera_rand_gen_fn_vt_const_12_q;

    -- i_xor_i_altera_rand_gen_fn(LOGICAL,927)@2
    i_xor_i_altera_rand_gen_fn_q <= i_shl_i_altera_rand_gen_fn_vt_join_q xor redist112_i_acl_pop_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_pop8_altera_rand_gen_fn_out_data_out_1_q;

    -- i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_vec_1_join_x(BITJOIN,510)@2
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_vec_1_join_x_q <= redist112_i_acl_pop_i32_e0_s1_altera_rand_gen_fn_4ia_addr_0_pop8_altera_rand_gen_fn_out_data_out_1_q & i_xor_i_altera_rand_gen_fn_q;

    -- i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select(BITSELECT,1161)@2
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_vec_1_join_x_q(51 downto 0);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_b <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(19 downto 19);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_c <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(20 downto 20);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_d <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(21 downto 21);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_e <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(22 downto 22);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_f <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(23 downto 23);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_g <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(24 downto 24);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_h <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(25 downto 25);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_i <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(26 downto 26);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_j <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(27 downto 27);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_k <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(28 downto 28);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_l <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(29 downto 29);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_m <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(30 downto 30);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_n <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(31 downto 31);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_o <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(33 downto 33);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_p <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(34 downto 34);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_q <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(35 downto 35);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_r <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(36 downto 36);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_s <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(37 downto 37);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_t <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(38 downto 38);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_u <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(39 downto 39);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_v <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(40 downto 40);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_w <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(41 downto 41);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_x <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(42 downto 42);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_y <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(43 downto 43);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_z <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(44 downto 44);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_aa <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(45 downto 45);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_bb <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(46 downto 46);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_cc <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(47 downto 47);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_dd <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(48 downto 48);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_ee <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(49 downto 49);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_ff <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(50 downto 50);
    i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_gg <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_in(51 downto 51);

    -- i_xor3_i33_compressed_altera_rand_gen_fn_altera_rand_gen_fn19_xor3_i33_shuffle_join_x(BITJOIN,511)@2
    i_xor3_i33_compressed_altera_rand_gen_fn_altera_rand_gen_fn19_xor3_i33_shuffle_join_x_q <= i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_gg & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_ff & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_ee & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_dd & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_cc & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_bb & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_aa & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_z & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_y & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_x & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_w & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_v & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_u & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_t & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_s & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_r & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_q & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_p & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_o & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_n & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_m & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_l & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_k & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_j & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_i & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_h & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_g & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_f & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_e & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_d & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_c & i_xor3_i33_bitvec_altera_rand_gen_fn_altera_rand_gen_fn18_xor3_i33_bitvec_select_19_x_merged_bit_select_b;

    -- i_acl_push_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_push7_altera_rand_gen_fn(BLACKBOX,596)@1
    -- out out_feedback_out_7@20000000
    -- out out_feedback_valid_out_7@20000000
    thei_acl_push_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_push7_altera_rand_gen_fn : i_acl_push_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_push7_altera_rand_gen_fn27
    PORT MAP (
        in_data_in => i_xor12_i34_compressed_altera_rand_gen_fn_altera_rand_gen_fn26_xor12_i34_shuffle_join_x_q,
        in_feedback_stall_in_7 => i_acl_pop_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_pop7_altera_rand_gen_fn_out_feedback_stall_out_7,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_7 => i_acl_push_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_push7_altera_rand_gen_fn_out_feedback_out_7,
        out_feedback_valid_out_7 => i_acl_push_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_push7_altera_rand_gen_fn_out_feedback_valid_out_7,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_68997766(CONSTANT,579)
    c_i32_68997766_q <= "00000100000111001101001010000110";

    -- i_acl_pop_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_pop7_altera_rand_gen_fn(BLACKBOX,590)@1
    -- out out_feedback_stall_out_7@20000000
    thei_acl_pop_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_pop7_altera_rand_gen_fn : i_acl_pop_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_pop7_altera_rand_gen_fn22
    PORT MAP (
        in_data_in => c_i32_68997766_q,
        in_dir => in_c1_eni1_1,
        in_feedback_in_7 => i_acl_push_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_push7_altera_rand_gen_fn_out_feedback_out_7,
        in_feedback_valid_in_7 => i_acl_push_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_push7_altera_rand_gen_fn_out_feedback_valid_out_7,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_pop7_altera_rand_gen_fn_out_data_out,
        out_feedback_stall_out_7 => i_acl_pop_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_pop7_altera_rand_gen_fn_out_feedback_stall_out_7,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0Idx1Rng2_uid1005_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x(BITSELECT,1004)@1
    leftShiftStage0Idx1Rng2_uid1005_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x_in <= i_acl_pop_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_pop7_altera_rand_gen_fn_out_data_out(29 downto 0);
    leftShiftStage0Idx1Rng2_uid1005_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x_b <= leftShiftStage0Idx1Rng2_uid1005_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x_in(29 downto 0);

    -- leftShiftStage0Idx1_uid1006_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x(BITJOIN,1005)@1
    leftShiftStage0Idx1_uid1006_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x_q <= leftShiftStage0Idx1Rng2_uid1005_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x_b & i_shl5_i13_altera_rand_gen_fn_vt_const_1_q;

    -- leftShiftStage0_uid1008_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x(MUX,1007)@1
    leftShiftStage0_uid1008_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x_s <= VCC_q;
    leftShiftStage0_uid1008_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x_combproc: PROCESS (leftShiftStage0_uid1008_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x_s, i_acl_pop_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_pop7_altera_rand_gen_fn_out_data_out, leftShiftStage0Idx1_uid1006_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1008_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1008_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x_q <= i_acl_pop_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_pop7_altera_rand_gen_fn_out_data_out;
            WHEN "1" => leftShiftStage0_uid1008_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x_q <= leftShiftStage0Idx1_uid1006_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1008_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shl5_i_altera_rand_gen_fn_vt_select_31(BITSELECT,898)@1
    i_shl5_i_altera_rand_gen_fn_vt_select_31_b <= leftShiftStage0_uid1008_i_shl5_i_altera_rand_gen_fn_altera_rand_gen_fn24_shift_x_q(31 downto 2);

    -- i_shl5_i_altera_rand_gen_fn_vt_join(BITJOIN,897)@1
    i_shl5_i_altera_rand_gen_fn_vt_join_q <= i_shl5_i_altera_rand_gen_fn_vt_select_31_b & i_shl5_i13_altera_rand_gen_fn_vt_const_1_q;

    -- i_xor6_i_altera_rand_gen_fn(LOGICAL,924)@1
    i_xor6_i_altera_rand_gen_fn_q <= i_shl5_i_altera_rand_gen_fn_vt_join_q xor i_acl_pop_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_pop7_altera_rand_gen_fn_out_data_out;

    -- i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_vec_1_join_x(BITJOIN,242)@1
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_vec_1_join_x_q <= i_acl_pop_i32_e0_s2_altera_rand_gen_fn_4ia_addr_0_pop7_altera_rand_gen_fn_out_data_out & i_xor6_i_altera_rand_gen_fn_q;

    -- i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select(BITSELECT,1157)@1
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_vec_1_join_x_q(59 downto 0);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_b <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(25 downto 25);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_c <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(26 downto 26);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_d <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(27 downto 27);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_e <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(28 downto 28);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_f <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(29 downto 29);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_g <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(30 downto 30);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_h <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(31 downto 31);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_i <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(35 downto 35);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_j <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(36 downto 36);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_k <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(37 downto 37);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_l <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(38 downto 38);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_m <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(39 downto 39);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_n <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(40 downto 40);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_o <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(41 downto 41);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_p <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(42 downto 42);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_q <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(43 downto 43);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_r <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(44 downto 44);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_s <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(45 downto 45);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_t <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(46 downto 46);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_u <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(47 downto 47);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_v <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(48 downto 48);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_w <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(49 downto 49);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_x <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(50 downto 50);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_y <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(51 downto 51);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_z <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(52 downto 52);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_aa <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(53 downto 53);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_bb <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(54 downto 54);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_cc <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(55 downto 55);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_dd <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(56 downto 56);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_ee <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(57 downto 57);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_ff <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(58 downto 58);
    i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_gg <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_in(59 downto 59);

    -- i_xor12_i34_compressed_altera_rand_gen_fn_altera_rand_gen_fn26_xor12_i34_shuffle_join_x(BITJOIN,243)@1
    i_xor12_i34_compressed_altera_rand_gen_fn_altera_rand_gen_fn26_xor12_i34_shuffle_join_x_q <= i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_gg & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_ff & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_ee & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_dd & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_cc & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_bb & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_aa & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_z & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_y & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_x & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_w & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_v & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_u & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_t & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_s & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_r & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_q & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_p & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_o & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_n & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_m & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_l & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_k & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_j & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_i & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_h & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_g & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_f & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_e & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_d & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_c & i_xor12_i34_bitvec_altera_rand_gen_fn_altera_rand_gen_fn25_xor12_i34_bitvec_select_25_x_merged_bit_select_b;

    -- redist119_i_xor12_i34_compressed_altera_rand_gen_fn_altera_rand_gen_fn26_xor12_i34_shuffle_join_x_q_1(DELAY,1281)
    redist119_i_xor12_i34_compressed_altera_rand_gen_fn_altera_rand_gen_fn26_xor12_i34_shuffle_join_x_q_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor12_i34_compressed_altera_rand_gen_fn_altera_rand_gen_fn26_xor12_i34_shuffle_join_x_q, xout => redist119_i_xor12_i34_compressed_altera_rand_gen_fn_altera_rand_gen_fn26_xor12_i34_shuffle_join_x_q_1_q, clk => clock, aclr => resetn );

    -- i_xor23_i_altera_rand_gen_fn(LOGICAL,917)@2 + 1
    i_xor23_i_altera_rand_gen_fn_qi <= redist119_i_xor12_i34_compressed_altera_rand_gen_fn_altera_rand_gen_fn26_xor12_i34_shuffle_join_x_q_1_q xor i_xor3_i33_compressed_altera_rand_gen_fn_altera_rand_gen_fn19_xor3_i33_shuffle_join_x_q;
    i_xor23_i_altera_rand_gen_fn_delay : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor23_i_altera_rand_gen_fn_qi, xout => i_xor23_i_altera_rand_gen_fn_q, clk => clock, aclr => resetn );

    -- i_cmp1_i_i_altera_rand_gen_fn(LOGICAL,638)@3 + 1
    i_cmp1_i_i_altera_rand_gen_fn_qi <= "1" WHEN i_xor23_i_altera_rand_gen_fn_q /= redist118_i_xor21_i35_compressed_altera_rand_gen_fn_altera_rand_gen_fn33_xor21_i35_shuffle_join_x_q_1_q ELSE "0";
    i_cmp1_i_i_altera_rand_gen_fn_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp1_i_i_altera_rand_gen_fn_qi, xout => i_cmp1_i_i_altera_rand_gen_fn_q, clk => clock, aclr => resetn );

    -- redist109_i_cmp1_i_i_altera_rand_gen_fn_q_2(DELAY,1271)
    redist109_i_cmp1_i_i_altera_rand_gen_fn_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp1_i_i_altera_rand_gen_fn_q, xout => redist109_i_cmp1_i_i_altera_rand_gen_fn_q_2_q, clk => clock, aclr => resetn );

    -- i_inc_i_i_altera_rand_gen_fn_sel_x(BITSELECT,83)@5
    i_inc_i_i_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(redist109_i_cmp1_i_i_altera_rand_gen_fn_q_2_q(0 downto 0)), 32));

    -- i_inc_i_i_altera_rand_gen_fn_vt_select_0(BITSELECT,762)@5
    i_inc_i_i_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- i_inc_i_i_altera_rand_gen_fn_vt_join(BITJOIN,761)@5
    i_inc_i_i_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & i_inc_i_i_altera_rand_gen_fn_vt_select_0_b;

    -- rightShiftStage4Idx1Rng1_uid1085_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x(BITSELECT,1084)@4
    rightShiftStage4Idx1Rng1_uid1085_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_b <= rightShiftStage3_uid1084_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1087_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x(BITJOIN,1086)@4
    rightShiftStage4Idx1_uid1087_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q <= GND_q & rightShiftStage4Idx1Rng1_uid1085_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_b;

    -- rightShiftStage3Idx1Rng2_uid1080_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x(BITSELECT,1079)@4
    rightShiftStage3Idx1Rng2_uid1080_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_b <= rightShiftStage2_uid1079_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1082_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x(BITJOIN,1081)@4
    rightShiftStage3Idx1_uid1082_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q <= i_shl5_i13_altera_rand_gen_fn_vt_const_1_q & rightShiftStage3Idx1Rng2_uid1080_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_b;

    -- rightShiftStage2Idx1Rng4_uid1075_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x(BITSELECT,1074)@4
    rightShiftStage2Idx1Rng4_uid1075_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_b <= rightShiftStage1_uid1074_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1077_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x(BITJOIN,1076)@4
    rightShiftStage2Idx1_uid1077_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q <= i_and9_i17_altera_rand_gen_fn_vt_const_3_q & rightShiftStage2Idx1Rng4_uid1075_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_b;

    -- rightShiftStage1Idx1Rng8_uid1070_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x(BITSELECT,1069)@4
    rightShiftStage1Idx1Rng8_uid1070_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_b <= rightShiftStage0_uid1069_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1072_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x(BITJOIN,1071)@4
    rightShiftStage1Idx1_uid1072_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q <= leftShiftStage0Idx1Pad8_uid1013_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q & rightShiftStage1Idx1Rng8_uid1070_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_b;

    -- rightShiftStage0Idx1Rng16_uid1065_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x(BITSELECT,1064)@4
    rightShiftStage0Idx1Rng16_uid1065_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_b <= i_xor24_i_altera_rand_gen_fn_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1067_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x(BITJOIN,1066)@4
    rightShiftStage0Idx1_uid1067_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q <= leftShiftStage0Idx1Pad16_uid934_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q & rightShiftStage0Idx1Rng16_uid1065_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_b;

    -- i_xor24_i_altera_rand_gen_fn(LOGICAL,919)@3 + 1
    i_xor24_i_altera_rand_gen_fn_qi <= i_xor23_i_altera_rand_gen_fn_q xor redist118_i_xor21_i35_compressed_altera_rand_gen_fn_altera_rand_gen_fn33_xor21_i35_shuffle_join_x_q_1_q;
    i_xor24_i_altera_rand_gen_fn_delay : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor24_i_altera_rand_gen_fn_qi, xout => i_xor24_i_altera_rand_gen_fn_q, clk => clock, aclr => resetn );

    -- rightShiftStage0_uid1069_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x(MUX,1068)@4
    rightShiftStage0_uid1069_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_s <= VCC_q;
    rightShiftStage0_uid1069_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_combproc: PROCESS (rightShiftStage0_uid1069_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_s, i_xor24_i_altera_rand_gen_fn_q, rightShiftStage0Idx1_uid1067_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1069_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1069_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q <= i_xor24_i_altera_rand_gen_fn_q;
            WHEN "1" => rightShiftStage0_uid1069_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q <= rightShiftStage0Idx1_uid1067_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1069_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1074_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x(MUX,1073)@4
    rightShiftStage1_uid1074_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_s <= VCC_q;
    rightShiftStage1_uid1074_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_combproc: PROCESS (rightShiftStage1_uid1074_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_s, rightShiftStage0_uid1069_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q, rightShiftStage1Idx1_uid1072_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1074_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1074_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q <= rightShiftStage0_uid1069_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1074_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q <= rightShiftStage1Idx1_uid1072_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1074_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1079_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x(MUX,1078)@4
    rightShiftStage2_uid1079_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_s <= VCC_q;
    rightShiftStage2_uid1079_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_combproc: PROCESS (rightShiftStage2_uid1079_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_s, rightShiftStage1_uid1074_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q, rightShiftStage2Idx1_uid1077_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1079_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1079_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q <= rightShiftStage1_uid1074_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1079_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q <= rightShiftStage2Idx1_uid1077_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1079_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1084_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x(MUX,1083)@4
    rightShiftStage3_uid1084_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_s <= VCC_q;
    rightShiftStage3_uid1084_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_combproc: PROCESS (rightShiftStage3_uid1084_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_s, rightShiftStage2_uid1079_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q, rightShiftStage3Idx1_uid1082_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1084_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1084_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q <= rightShiftStage2_uid1079_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1084_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q <= rightShiftStage3Idx1_uid1082_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1084_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1089_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x(MUX,1088)@4
    rightShiftStage4_uid1089_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_s <= VCC_q;
    rightShiftStage4_uid1089_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_combproc: PROCESS (rightShiftStage4_uid1089_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_s, rightShiftStage3_uid1084_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q, rightShiftStage4Idx1_uid1087_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1089_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1089_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q <= rightShiftStage3_uid1084_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1089_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q <= rightShiftStage4Idx1_uid1087_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1089_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_xor24_i_lobit_altera_rand_gen_fn_vt_select_0(BITSELECT,922)@4
    i_xor24_i_lobit_altera_rand_gen_fn_vt_select_0_b <= rightShiftStage4_uid1089_i_xor24_i_lobit_altera_rand_gen_fn_altera_rand_gen_fn59_shift_x_q(0 downto 0);

    -- redist64_i_xor24_i_lobit_altera_rand_gen_fn_vt_select_0_b_1(DELAY,1226)
    redist64_i_xor24_i_lobit_altera_rand_gen_fn_vt_select_0_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor24_i_lobit_altera_rand_gen_fn_vt_select_0_b, xout => redist64_i_xor24_i_lobit_altera_rand_gen_fn_vt_select_0_b_1_q, clk => clock, aclr => resetn );

    -- i_xor24_i_lobit_altera_rand_gen_fn_vt_join(BITJOIN,921)@5
    i_xor24_i_lobit_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & redist64_i_xor24_i_lobit_altera_rand_gen_fn_vt_select_0_b_1_q;

    -- i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn(ADD,835)@5
    i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_xor24_i_lobit_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_inc_i_i_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_sel_x(BITSELECT,20)@5
    bgTrunc_i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_vt_select_1(BITSELECT,838)@5
    i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_vt_select_1_b <= bgTrunc_i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_sel_x_b(1 downto 0);

    -- redist76_i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_vt_select_1_b_1(DELAY,1238)
    redist76_i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_vt_select_1_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_vt_select_1_b, xout => redist76_i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_vt_select_1_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_vt_join(BITJOIN,837)@6
    i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_const_31_q & redist76_i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_vt_select_1_b_1_q;

    -- c_i32_1gr(CONSTANT,557)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- i_cmp1_i_i_1_altera_rand_gen_fn(COMPARE,618)@4 + 1
    i_cmp1_i_i_1_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_1gr_q);
    i_cmp1_i_i_1_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_1_altera_rand_gen_fn_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp1_i_i_1_altera_rand_gen_fn_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp1_i_i_1_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_1_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_1_altera_rand_gen_fn_b));
        END IF;
    END PROCESS;
    i_cmp1_i_i_1_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_1_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_1_altera_rand_gen_fn_sel_x(BITSELECT,63)@5
    i_inc_i_i_1_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_1_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_1_altera_rand_gen_fn_vt_select_0(BITSELECT,682)@5
    i_inc_i_i_1_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_1_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- i_inc_i_i_1_altera_rand_gen_fn_vt_join(BITJOIN,681)@5
    i_inc_i_i_1_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & i_inc_i_i_1_altera_rand_gen_fn_vt_select_0_b;

    -- c_i32_3gr(CONSTANT,568)
    c_i32_3gr_q <= "00000000000000000000000000000011";

    -- i_cmp1_i_i_2_altera_rand_gen_fn(COMPARE,629)@4
    i_cmp1_i_i_2_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_3gr_q);
    i_cmp1_i_i_2_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_2_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_2_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_2_altera_rand_gen_fn_b));
    i_cmp1_i_i_2_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_2_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_2_altera_rand_gen_fn_sel_x(BITSELECT,74)@4
    i_inc_i_i_2_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_2_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_2_altera_rand_gen_fn_vt_select_0(BITSELECT,726)@4
    i_inc_i_i_2_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_2_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- redist100_i_inc_i_i_2_altera_rand_gen_fn_vt_select_0_b_1(DELAY,1262)
    redist100_i_inc_i_i_2_altera_rand_gen_fn_vt_select_0_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_inc_i_i_2_altera_rand_gen_fn_vt_select_0_b, xout => redist100_i_inc_i_i_2_altera_rand_gen_fn_vt_select_0_b_1_q, clk => clock, aclr => resetn );

    -- i_inc_i_i_2_altera_rand_gen_fn_vt_join(BITJOIN,725)@5
    i_inc_i_i_2_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & redist100_i_inc_i_i_2_altera_rand_gen_fn_vt_select_0_b_1_q;

    -- i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn(ADD,783)@5
    i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_inc_i_i_2_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_inc_i_i_1_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_sel_x(BITSELECT,7)@5
    bgTrunc_i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_vt_select_1(BITSELECT,786)@5
    i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_vt_select_1_b <= bgTrunc_i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_sel_x_b(1 downto 0);

    -- redist89_i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_vt_select_1_b_1(DELAY,1251)
    redist89_i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_vt_select_1_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_vt_select_1_b, xout => redist89_i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_vt_select_1_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_vt_join(BITJOIN,785)@6
    i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_const_31_q & redist89_i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_vt_select_1_b_1_q;

    -- i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn(ADD,839)@6
    i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_14_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_26_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_sel_x(BITSELECT,21)@6
    bgTrunc_i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_vt_select_2(BITSELECT,842)@6
    i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_vt_select_2_b <= bgTrunc_i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_sel_x_b(2 downto 0);

    -- redist75_i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_vt_select_2_b_1(DELAY,1237)
    redist75_i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_vt_select_2_b_1 : dspba_delay
    GENERIC MAP ( width => 3, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_vt_select_2_b, xout => redist75_i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_vt_select_2_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_vt_join(BITJOIN,841)@7
    i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_const_31_q & redist75_i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_vt_select_2_b_1_q;

    -- c_i32_7gr(CONSTANT,585)
    c_i32_7gr_q <= "00000000000000000000000000000111";

    -- i_cmp1_i_i_3_altera_rand_gen_fn(COMPARE,631)@4 + 1
    i_cmp1_i_i_3_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_7gr_q);
    i_cmp1_i_i_3_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_3_altera_rand_gen_fn_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp1_i_i_3_altera_rand_gen_fn_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp1_i_i_3_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_3_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_3_altera_rand_gen_fn_b));
        END IF;
    END PROCESS;
    i_cmp1_i_i_3_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_3_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_3_altera_rand_gen_fn_sel_x(BITSELECT,76)@5
    i_inc_i_i_3_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_3_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_3_altera_rand_gen_fn_vt_select_0(BITSELECT,734)@5
    i_inc_i_i_3_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_3_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- i_inc_i_i_3_altera_rand_gen_fn_vt_join(BITJOIN,733)@5
    i_inc_i_i_3_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & i_inc_i_i_3_altera_rand_gen_fn_vt_select_0_b;

    -- c_i32_15(CONSTANT,554)
    c_i32_15_q <= "00000000000000000000000000001111";

    -- i_cmp1_i_i_4_altera_rand_gen_fn(COMPARE,632)@4
    i_cmp1_i_i_4_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_15_q);
    i_cmp1_i_i_4_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_4_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_4_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_4_altera_rand_gen_fn_b));
    i_cmp1_i_i_4_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_4_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_4_altera_rand_gen_fn_sel_x(BITSELECT,77)@4
    i_inc_i_i_4_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_4_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_4_altera_rand_gen_fn_vt_select_0(BITSELECT,738)@4
    i_inc_i_i_4_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_4_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- redist98_i_inc_i_i_4_altera_rand_gen_fn_vt_select_0_b_1(DELAY,1260)
    redist98_i_inc_i_i_4_altera_rand_gen_fn_vt_select_0_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_inc_i_i_4_altera_rand_gen_fn_vt_select_0_b, xout => redist98_i_inc_i_i_4_altera_rand_gen_fn_vt_select_0_b_1_q, clk => clock, aclr => resetn );

    -- i_inc_i_i_4_altera_rand_gen_fn_vt_join(BITJOIN,737)@5
    i_inc_i_i_4_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & redist98_i_inc_i_i_4_altera_rand_gen_fn_vt_select_0_b_1_q;

    -- i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn(ADD,779)@5
    i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_inc_i_i_4_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_inc_i_i_3_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_sel_x(BITSELECT,6)@5
    bgTrunc_i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_vt_select_1(BITSELECT,782)@5
    i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_vt_select_1_b <= bgTrunc_i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_sel_x_b(1 downto 0);

    -- redist90_i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_vt_select_1_b_1(DELAY,1252)
    redist90_i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_vt_select_1_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_vt_select_1_b, xout => redist90_i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_vt_select_1_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_vt_join(BITJOIN,781)@6
    i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_const_31_q & redist90_i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_vt_select_1_b_1_q;

    -- c_i32_31(CONSTANT,565)
    c_i32_31_q <= "00000000000000000000000000011111";

    -- i_cmp1_i_i_5_altera_rand_gen_fn(COMPARE,633)@4 + 1
    i_cmp1_i_i_5_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_31_q);
    i_cmp1_i_i_5_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_5_altera_rand_gen_fn_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp1_i_i_5_altera_rand_gen_fn_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp1_i_i_5_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_5_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_5_altera_rand_gen_fn_b));
        END IF;
    END PROCESS;
    i_cmp1_i_i_5_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_5_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_5_altera_rand_gen_fn_sel_x(BITSELECT,78)@5
    i_inc_i_i_5_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_5_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_5_altera_rand_gen_fn_vt_select_0(BITSELECT,742)@5
    i_inc_i_i_5_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_5_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- i_inc_i_i_5_altera_rand_gen_fn_vt_join(BITJOIN,741)@5
    i_inc_i_i_5_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & i_inc_i_i_5_altera_rand_gen_fn_vt_select_0_b;

    -- c_i32_63(CONSTANT,575)
    c_i32_63_q <= "00000000000000000000000000111111";

    -- i_cmp1_i_i_6_altera_rand_gen_fn(COMPARE,634)@4
    i_cmp1_i_i_6_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_63_q);
    i_cmp1_i_i_6_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_6_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_6_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_6_altera_rand_gen_fn_b));
    i_cmp1_i_i_6_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_6_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_6_altera_rand_gen_fn_sel_x(BITSELECT,79)@4
    i_inc_i_i_6_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_6_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_6_altera_rand_gen_fn_vt_select_0(BITSELECT,746)@4
    i_inc_i_i_6_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_6_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- redist97_i_inc_i_i_6_altera_rand_gen_fn_vt_select_0_b_1(DELAY,1259)
    redist97_i_inc_i_i_6_altera_rand_gen_fn_vt_select_0_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_inc_i_i_6_altera_rand_gen_fn_vt_select_0_b, xout => redist97_i_inc_i_i_6_altera_rand_gen_fn_vt_select_0_b_1_q, clk => clock, aclr => resetn );

    -- i_inc_i_i_6_altera_rand_gen_fn_vt_join(BITJOIN,745)@5
    i_inc_i_i_6_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & redist97_i_inc_i_i_6_altera_rand_gen_fn_vt_select_0_b_1_q;

    -- i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn(ADD,775)@5
    i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_inc_i_i_6_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_inc_i_i_5_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_sel_x(BITSELECT,5)@5
    bgTrunc_i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_vt_select_1(BITSELECT,778)@5
    i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_vt_select_1_b <= bgTrunc_i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_sel_x_b(1 downto 0);

    -- redist91_i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_vt_select_1_b_1(DELAY,1253)
    redist91_i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_vt_select_1_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_vt_select_1_b, xout => redist91_i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_vt_select_1_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_vt_join(BITJOIN,777)@6
    i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_const_31_q & redist91_i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_vt_select_1_b_1_q;

    -- i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn(ADD,815)@6
    i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_12_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_13_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_sel_x(BITSELECT,15)@6
    bgTrunc_i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_vt_select_2(BITSELECT,818)@6
    i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_vt_select_2_b <= bgTrunc_i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_sel_x_b(2 downto 0);

    -- redist81_i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_vt_select_2_b_1(DELAY,1243)
    redist81_i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_vt_select_2_b_1 : dspba_delay
    GENERIC MAP ( width => 3, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_vt_select_2_b, xout => redist81_i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_vt_select_2_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_vt_join(BITJOIN,817)@7
    i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_const_31_q & redist81_i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_vt_select_2_b_1_q;

    -- i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn(ADD,843)@7
    i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_21_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_27_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_sel_x(BITSELECT,22)@7
    bgTrunc_i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_vt_select_3(BITSELECT,846)@7
    i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_vt_select_3_b <= bgTrunc_i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_sel_x_b(3 downto 0);

    -- redist74_i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_vt_select_3_b_1(DELAY,1236)
    redist74_i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_vt_select_3_b_1 : dspba_delay
    GENERIC MAP ( width => 4, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_vt_select_3_b, xout => redist74_i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_vt_select_3_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_vt_join(BITJOIN,845)@8
    i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_vt_const_31_q & redist74_i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_vt_select_3_b_1_q;

    -- c_i32_127(CONSTANT,550)
    c_i32_127_q <= "00000000000000000000000001111111";

    -- i_cmp1_i_i_7_altera_rand_gen_fn(COMPARE,635)@4 + 1
    i_cmp1_i_i_7_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_127_q);
    i_cmp1_i_i_7_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_7_altera_rand_gen_fn_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp1_i_i_7_altera_rand_gen_fn_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp1_i_i_7_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_7_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_7_altera_rand_gen_fn_b));
        END IF;
    END PROCESS;
    i_cmp1_i_i_7_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_7_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_7_altera_rand_gen_fn_sel_x(BITSELECT,80)@5
    i_inc_i_i_7_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_7_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_7_altera_rand_gen_fn_vt_select_0(BITSELECT,750)@5
    i_inc_i_i_7_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_7_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- i_inc_i_i_7_altera_rand_gen_fn_vt_join(BITJOIN,749)@5
    i_inc_i_i_7_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & i_inc_i_i_7_altera_rand_gen_fn_vt_select_0_b;

    -- c_i32_255(CONSTANT,561)
    c_i32_255_q <= "00000000000000000000000011111111";

    -- i_cmp1_i_i_8_altera_rand_gen_fn(COMPARE,636)@4
    i_cmp1_i_i_8_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_255_q);
    i_cmp1_i_i_8_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_8_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_8_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_8_altera_rand_gen_fn_b));
    i_cmp1_i_i_8_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_8_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_8_altera_rand_gen_fn_sel_x(BITSELECT,81)@4
    i_inc_i_i_8_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_8_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_8_altera_rand_gen_fn_vt_select_0(BITSELECT,754)@4
    i_inc_i_i_8_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_8_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- redist96_i_inc_i_i_8_altera_rand_gen_fn_vt_select_0_b_1(DELAY,1258)
    redist96_i_inc_i_i_8_altera_rand_gen_fn_vt_select_0_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_inc_i_i_8_altera_rand_gen_fn_vt_select_0_b, xout => redist96_i_inc_i_i_8_altera_rand_gen_fn_vt_select_0_b_1_q, clk => clock, aclr => resetn );

    -- i_inc_i_i_8_altera_rand_gen_fn_vt_join(BITJOIN,753)@5
    i_inc_i_i_8_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & redist96_i_inc_i_i_8_altera_rand_gen_fn_vt_select_0_b_1_q;

    -- i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn(ADD,771)@5
    i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_inc_i_i_8_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_inc_i_i_7_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_sel_x(BITSELECT,4)@5
    bgTrunc_i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_vt_select_1(BITSELECT,774)@5
    i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_vt_select_1_b <= bgTrunc_i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_sel_x_b(1 downto 0);

    -- redist92_i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_vt_select_1_b_1(DELAY,1254)
    redist92_i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_vt_select_1_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_vt_select_1_b, xout => redist92_i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_vt_select_1_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_vt_join(BITJOIN,773)@6
    i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_const_31_q & redist92_i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_vt_select_1_b_1_q;

    -- c_i32_511(CONSTANT,572)
    c_i32_511_q <= "00000000000000000000000111111111";

    -- i_cmp1_i_i_9_altera_rand_gen_fn(COMPARE,637)@4
    i_cmp1_i_i_9_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_511_q);
    i_cmp1_i_i_9_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_9_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_9_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_9_altera_rand_gen_fn_b));
    i_cmp1_i_i_9_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_9_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_9_altera_rand_gen_fn_sel_x(BITSELECT,82)@4
    i_inc_i_i_9_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_9_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_9_altera_rand_gen_fn_vt_select_0(BITSELECT,758)@4
    i_inc_i_i_9_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_9_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- redist95_i_inc_i_i_9_altera_rand_gen_fn_vt_select_0_b_1(DELAY,1257)
    redist95_i_inc_i_i_9_altera_rand_gen_fn_vt_select_0_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_inc_i_i_9_altera_rand_gen_fn_vt_select_0_b, xout => redist95_i_inc_i_i_9_altera_rand_gen_fn_vt_select_0_b_1_q, clk => clock, aclr => resetn );

    -- i_inc_i_i_9_altera_rand_gen_fn_vt_join(BITJOIN,757)@5
    i_inc_i_i_9_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & redist95_i_inc_i_i_9_altera_rand_gen_fn_vt_select_0_b_1_q;

    -- c_i32_1023(CONSTANT,547)
    c_i32_1023_q <= "00000000000000000000001111111111";

    -- i_cmp1_i_i_10_altera_rand_gen_fn(COMPARE,608)@4 + 1
    i_cmp1_i_i_10_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_1023_q);
    i_cmp1_i_i_10_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_10_altera_rand_gen_fn_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp1_i_i_10_altera_rand_gen_fn_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp1_i_i_10_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_10_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_10_altera_rand_gen_fn_b));
        END IF;
    END PROCESS;
    i_cmp1_i_i_10_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_10_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_10_altera_rand_gen_fn_sel_x(BITSELECT,53)@5
    i_inc_i_i_10_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_10_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_10_altera_rand_gen_fn_vt_select_0(BITSELECT,642)@5
    i_inc_i_i_10_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_10_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- i_inc_i_i_10_altera_rand_gen_fn_vt_join(BITJOIN,641)@5
    i_inc_i_i_10_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & i_inc_i_i_10_altera_rand_gen_fn_vt_select_0_b;

    -- i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn(ADD,767)@5
    i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_inc_i_i_10_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_inc_i_i_9_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_sel_x(BITSELECT,3)@5
    bgTrunc_i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_vt_select_1(BITSELECT,770)@5
    i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_vt_select_1_b <= bgTrunc_i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_sel_x_b(1 downto 0);

    -- redist93_i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_vt_select_1_b_1(DELAY,1255)
    redist93_i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_vt_select_1_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_vt_select_1_b, xout => redist93_i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_vt_select_1_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_vt_join(BITJOIN,769)@6
    i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_const_31_q & redist93_i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_vt_select_1_b_1_q;

    -- i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn(ADD,811)@6
    i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_10_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_11_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_sel_x(BITSELECT,14)@6
    bgTrunc_i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_vt_select_2(BITSELECT,814)@6
    i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_vt_select_2_b <= bgTrunc_i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_sel_x_b(2 downto 0);

    -- redist82_i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_vt_select_2_b_1(DELAY,1244)
    redist82_i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_vt_select_2_b_1 : dspba_delay
    GENERIC MAP ( width => 3, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_vt_select_2_b, xout => redist82_i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_vt_select_2_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_vt_join(BITJOIN,813)@7
    i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_const_31_q & redist82_i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_vt_select_2_b_1_q;

    -- c_i32_2047(CONSTANT,558)
    c_i32_2047_q <= "00000000000000000000011111111111";

    -- i_cmp1_i_i_11_altera_rand_gen_fn(COMPARE,609)@4 + 1
    i_cmp1_i_i_11_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_2047_q);
    i_cmp1_i_i_11_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_11_altera_rand_gen_fn_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp1_i_i_11_altera_rand_gen_fn_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp1_i_i_11_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_11_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_11_altera_rand_gen_fn_b));
        END IF;
    END PROCESS;
    i_cmp1_i_i_11_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_11_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_11_altera_rand_gen_fn_sel_x(BITSELECT,54)@5
    i_inc_i_i_11_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_11_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_11_altera_rand_gen_fn_vt_select_0(BITSELECT,646)@5
    i_inc_i_i_11_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_11_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- i_inc_i_i_11_altera_rand_gen_fn_vt_join(BITJOIN,645)@5
    i_inc_i_i_11_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & i_inc_i_i_11_altera_rand_gen_fn_vt_select_0_b;

    -- c_i32_4095(CONSTANT,569)
    c_i32_4095_q <= "00000000000000000000111111111111";

    -- i_cmp1_i_i_12_altera_rand_gen_fn(COMPARE,610)@4 + 1
    i_cmp1_i_i_12_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_4095_q);
    i_cmp1_i_i_12_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_12_altera_rand_gen_fn_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp1_i_i_12_altera_rand_gen_fn_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp1_i_i_12_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_12_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_12_altera_rand_gen_fn_b));
        END IF;
    END PROCESS;
    i_cmp1_i_i_12_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_12_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_12_altera_rand_gen_fn_sel_x(BITSELECT,55)@5
    i_inc_i_i_12_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_12_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_12_altera_rand_gen_fn_vt_select_0(BITSELECT,650)@5
    i_inc_i_i_12_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_12_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- i_inc_i_i_12_altera_rand_gen_fn_vt_join(BITJOIN,649)@5
    i_inc_i_i_12_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & i_inc_i_i_12_altera_rand_gen_fn_vt_select_0_b;

    -- i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn(ADD,883)@5
    i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_inc_i_i_12_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_inc_i_i_11_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_sel_x(BITSELECT,32)@5
    bgTrunc_i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_vt_select_1(BITSELECT,886)@5
    i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_vt_select_1_b <= bgTrunc_i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_sel_x_b(1 downto 0);

    -- redist65_i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_vt_select_1_b_1(DELAY,1227)
    redist65_i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_vt_select_1_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_vt_select_1_b, xout => redist65_i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_vt_select_1_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_vt_join(BITJOIN,885)@6
    i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_const_31_q & redist65_i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_vt_select_1_b_1_q;

    -- c_i32_8191(CONSTANT,586)
    c_i32_8191_q <= "00000000000000000001111111111111";

    -- i_cmp1_i_i_13_altera_rand_gen_fn(COMPARE,611)@4 + 1
    i_cmp1_i_i_13_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_8191_q);
    i_cmp1_i_i_13_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_13_altera_rand_gen_fn_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp1_i_i_13_altera_rand_gen_fn_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp1_i_i_13_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_13_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_13_altera_rand_gen_fn_b));
        END IF;
    END PROCESS;
    i_cmp1_i_i_13_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_13_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_13_altera_rand_gen_fn_sel_x(BITSELECT,56)@5
    i_inc_i_i_13_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_13_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_13_altera_rand_gen_fn_vt_select_0(BITSELECT,654)@5
    i_inc_i_i_13_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_13_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- i_inc_i_i_13_altera_rand_gen_fn_vt_join(BITJOIN,653)@5
    i_inc_i_i_13_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & i_inc_i_i_13_altera_rand_gen_fn_vt_select_0_b;

    -- c_i32_16383(CONSTANT,555)
    c_i32_16383_q <= "00000000000000000011111111111111";

    -- i_cmp1_i_i_14_altera_rand_gen_fn(COMPARE,612)@4
    i_cmp1_i_i_14_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_16383_q);
    i_cmp1_i_i_14_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_14_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_14_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_14_altera_rand_gen_fn_b));
    i_cmp1_i_i_14_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_14_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_14_altera_rand_gen_fn_sel_x(BITSELECT,57)@4
    i_inc_i_i_14_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_14_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_14_altera_rand_gen_fn_vt_select_0(BITSELECT,658)@4
    i_inc_i_i_14_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_14_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- redist108_i_inc_i_i_14_altera_rand_gen_fn_vt_select_0_b_1(DELAY,1270)
    redist108_i_inc_i_i_14_altera_rand_gen_fn_vt_select_0_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_inc_i_i_14_altera_rand_gen_fn_vt_select_0_b, xout => redist108_i_inc_i_i_14_altera_rand_gen_fn_vt_select_0_b_1_q, clk => clock, aclr => resetn );

    -- i_inc_i_i_14_altera_rand_gen_fn_vt_join(BITJOIN,657)@5
    i_inc_i_i_14_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & redist108_i_inc_i_i_14_altera_rand_gen_fn_vt_select_0_b_1_q;

    -- i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn(ADD,879)@5
    i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_inc_i_i_14_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_inc_i_i_13_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_sel_x(BITSELECT,31)@5
    bgTrunc_i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_vt_select_1(BITSELECT,882)@5
    i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_vt_select_1_b <= bgTrunc_i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_sel_x_b(1 downto 0);

    -- redist66_i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_vt_select_1_b_1(DELAY,1228)
    redist66_i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_vt_select_1_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_vt_select_1_b, xout => redist66_i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_vt_select_1_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_vt_join(BITJOIN,881)@6
    i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_const_31_q & redist66_i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_vt_select_1_b_1_q;

    -- i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn(ADD,803)@6
    i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_8_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_9_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_sel_x(BITSELECT,12)@6
    bgTrunc_i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_vt_select_2(BITSELECT,806)@6
    i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_vt_select_2_b <= bgTrunc_i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_sel_x_b(2 downto 0);

    -- redist84_i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_vt_select_2_b_1(DELAY,1246)
    redist84_i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_vt_select_2_b_1 : dspba_delay
    GENERIC MAP ( width => 3, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_vt_select_2_b, xout => redist84_i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_vt_select_2_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_vt_join(BITJOIN,805)@7
    i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_const_31_q & redist84_i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_vt_select_2_b_1_q;

    -- i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn(ADD,827)@7
    i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_19_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_20_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_sel_x(BITSELECT,18)@7
    bgTrunc_i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_vt_select_3(BITSELECT,830)@7
    i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_vt_select_3_b <= bgTrunc_i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_sel_x_b(3 downto 0);

    -- redist78_i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_vt_select_3_b_1(DELAY,1240)
    redist78_i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_vt_select_3_b_1 : dspba_delay
    GENERIC MAP ( width => 4, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_vt_select_3_b, xout => redist78_i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_vt_select_3_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_vt_join(BITJOIN,829)@8
    i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_vt_const_31_q & redist78_i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_vt_select_3_b_1_q;

    -- i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn(ADD,847)@8
    i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_24_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_28_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_sel_x(BITSELECT,23)@8
    bgTrunc_i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_vt_select_4(BITSELECT,850)@8
    i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_vt_select_4_b <= bgTrunc_i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_sel_x_b(4 downto 0);

    -- redist73_i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_vt_select_4_b_1(DELAY,1235)
    redist73_i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_vt_select_4_b_1 : dspba_delay
    GENERIC MAP ( width => 5, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_vt_select_4_b, xout => redist73_i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_vt_select_4_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_vt_join(BITJOIN,849)@9
    i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_vt_const_31_q & redist73_i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_vt_select_4_b_1_q;

    -- c_i32_32767(CONSTANT,566)
    c_i32_32767_q <= "00000000000000000111111111111111";

    -- i_cmp1_i_i_15_altera_rand_gen_fn(COMPARE,613)@4 + 1
    i_cmp1_i_i_15_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_32767_q);
    i_cmp1_i_i_15_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_15_altera_rand_gen_fn_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp1_i_i_15_altera_rand_gen_fn_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp1_i_i_15_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_15_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_15_altera_rand_gen_fn_b));
        END IF;
    END PROCESS;
    i_cmp1_i_i_15_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_15_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_15_altera_rand_gen_fn_sel_x(BITSELECT,58)@5
    i_inc_i_i_15_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_15_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_15_altera_rand_gen_fn_vt_select_0(BITSELECT,662)@5
    i_inc_i_i_15_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_15_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- i_inc_i_i_15_altera_rand_gen_fn_vt_join(BITJOIN,661)@5
    i_inc_i_i_15_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & i_inc_i_i_15_altera_rand_gen_fn_vt_select_0_b;

    -- c_i32_65535(CONSTANT,576)
    c_i32_65535_q <= "00000000000000001111111111111111";

    -- i_cmp1_i_i_16_altera_rand_gen_fn(COMPARE,614)@4
    i_cmp1_i_i_16_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_65535_q);
    i_cmp1_i_i_16_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_16_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_16_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_16_altera_rand_gen_fn_b));
    i_cmp1_i_i_16_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_16_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_16_altera_rand_gen_fn_sel_x(BITSELECT,59)@4
    i_inc_i_i_16_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_16_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_16_altera_rand_gen_fn_vt_select_0(BITSELECT,666)@4
    i_inc_i_i_16_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_16_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- redist107_i_inc_i_i_16_altera_rand_gen_fn_vt_select_0_b_1(DELAY,1269)
    redist107_i_inc_i_i_16_altera_rand_gen_fn_vt_select_0_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_inc_i_i_16_altera_rand_gen_fn_vt_select_0_b, xout => redist107_i_inc_i_i_16_altera_rand_gen_fn_vt_select_0_b_1_q, clk => clock, aclr => resetn );

    -- i_inc_i_i_16_altera_rand_gen_fn_vt_join(BITJOIN,665)@5
    i_inc_i_i_16_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & redist107_i_inc_i_i_16_altera_rand_gen_fn_vt_select_0_b_1_q;

    -- i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn(ADD,875)@5
    i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_inc_i_i_16_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_inc_i_i_15_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_sel_x(BITSELECT,30)@5
    bgTrunc_i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_vt_select_1(BITSELECT,878)@5
    i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_vt_select_1_b <= bgTrunc_i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_sel_x_b(1 downto 0);

    -- redist67_i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_vt_select_1_b_1(DELAY,1229)
    redist67_i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_vt_select_1_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_vt_select_1_b, xout => redist67_i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_vt_select_1_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_vt_join(BITJOIN,877)@6
    i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_const_31_q & redist67_i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_vt_select_1_b_1_q;

    -- c_i32_131071(CONSTANT,552)
    c_i32_131071_q <= "00000000000000011111111111111111";

    -- i_cmp1_i_i_17_altera_rand_gen_fn(COMPARE,615)@4 + 1
    i_cmp1_i_i_17_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_131071_q);
    i_cmp1_i_i_17_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_17_altera_rand_gen_fn_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp1_i_i_17_altera_rand_gen_fn_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp1_i_i_17_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_17_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_17_altera_rand_gen_fn_b));
        END IF;
    END PROCESS;
    i_cmp1_i_i_17_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_17_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_17_altera_rand_gen_fn_sel_x(BITSELECT,60)@5
    i_inc_i_i_17_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_17_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_17_altera_rand_gen_fn_vt_select_0(BITSELECT,670)@5
    i_inc_i_i_17_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_17_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- i_inc_i_i_17_altera_rand_gen_fn_vt_join(BITJOIN,669)@5
    i_inc_i_i_17_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & i_inc_i_i_17_altera_rand_gen_fn_vt_select_0_b;

    -- c_i32_262143(CONSTANT,562)
    c_i32_262143_q <= "00000000000000111111111111111111";

    -- i_cmp1_i_i_18_altera_rand_gen_fn(COMPARE,616)@4
    i_cmp1_i_i_18_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_262143_q);
    i_cmp1_i_i_18_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_18_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_18_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_18_altera_rand_gen_fn_b));
    i_cmp1_i_i_18_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_18_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_18_altera_rand_gen_fn_sel_x(BITSELECT,61)@4
    i_inc_i_i_18_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_18_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_18_altera_rand_gen_fn_vt_select_0(BITSELECT,674)@4
    i_inc_i_i_18_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_18_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- redist106_i_inc_i_i_18_altera_rand_gen_fn_vt_select_0_b_1(DELAY,1268)
    redist106_i_inc_i_i_18_altera_rand_gen_fn_vt_select_0_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_inc_i_i_18_altera_rand_gen_fn_vt_select_0_b, xout => redist106_i_inc_i_i_18_altera_rand_gen_fn_vt_select_0_b_1_q, clk => clock, aclr => resetn );

    -- i_inc_i_i_18_altera_rand_gen_fn_vt_join(BITJOIN,673)@5
    i_inc_i_i_18_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & redist106_i_inc_i_i_18_altera_rand_gen_fn_vt_select_0_b_1_q;

    -- i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn(ADD,871)@5
    i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_inc_i_i_18_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_inc_i_i_17_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_sel_x(BITSELECT,29)@5
    bgTrunc_i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_vt_select_1(BITSELECT,874)@5
    i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_vt_select_1_b <= bgTrunc_i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_sel_x_b(1 downto 0);

    -- redist68_i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_vt_select_1_b_1(DELAY,1230)
    redist68_i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_vt_select_1_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_vt_select_1_b, xout => redist68_i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_vt_select_1_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_vt_join(BITJOIN,873)@6
    i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_const_31_q & redist68_i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_vt_select_1_b_1_q;

    -- i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn(ADD,799)@6
    i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_6_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_7_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_sel_x(BITSELECT,11)@6
    bgTrunc_i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_vt_select_2(BITSELECT,802)@6
    i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_vt_select_2_b <= bgTrunc_i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_sel_x_b(2 downto 0);

    -- redist85_i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_vt_select_2_b_1(DELAY,1247)
    redist85_i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_vt_select_2_b_1 : dspba_delay
    GENERIC MAP ( width => 3, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_vt_select_2_b, xout => redist85_i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_vt_select_2_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_vt_join(BITJOIN,801)@7
    i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_const_31_q & redist85_i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_vt_select_2_b_1_q;

    -- c_i32_524287(CONSTANT,573)
    c_i32_524287_q <= "00000000000001111111111111111111";

    -- i_cmp1_i_i_19_altera_rand_gen_fn(COMPARE,617)@4 + 1
    i_cmp1_i_i_19_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_524287_q);
    i_cmp1_i_i_19_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_19_altera_rand_gen_fn_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp1_i_i_19_altera_rand_gen_fn_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp1_i_i_19_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_19_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_19_altera_rand_gen_fn_b));
        END IF;
    END PROCESS;
    i_cmp1_i_i_19_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_19_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_19_altera_rand_gen_fn_sel_x(BITSELECT,62)@5
    i_inc_i_i_19_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_19_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_19_altera_rand_gen_fn_vt_select_0(BITSELECT,678)@5
    i_inc_i_i_19_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_19_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- i_inc_i_i_19_altera_rand_gen_fn_vt_join(BITJOIN,677)@5
    i_inc_i_i_19_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & i_inc_i_i_19_altera_rand_gen_fn_vt_select_0_b;

    -- c_i32_1048575(CONSTANT,548)
    c_i32_1048575_q <= "00000000000011111111111111111111";

    -- i_cmp1_i_i_20_altera_rand_gen_fn(COMPARE,619)@4
    i_cmp1_i_i_20_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_1048575_q);
    i_cmp1_i_i_20_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_20_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_20_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_20_altera_rand_gen_fn_b));
    i_cmp1_i_i_20_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_20_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_20_altera_rand_gen_fn_sel_x(BITSELECT,64)@4
    i_inc_i_i_20_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_20_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_20_altera_rand_gen_fn_vt_select_0(BITSELECT,686)@4
    i_inc_i_i_20_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_20_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- redist105_i_inc_i_i_20_altera_rand_gen_fn_vt_select_0_b_1(DELAY,1267)
    redist105_i_inc_i_i_20_altera_rand_gen_fn_vt_select_0_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_inc_i_i_20_altera_rand_gen_fn_vt_select_0_b, xout => redist105_i_inc_i_i_20_altera_rand_gen_fn_vt_select_0_b_1_q, clk => clock, aclr => resetn );

    -- i_inc_i_i_20_altera_rand_gen_fn_vt_join(BITJOIN,685)@5
    i_inc_i_i_20_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & redist105_i_inc_i_i_20_altera_rand_gen_fn_vt_select_0_b_1_q;

    -- i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn(ADD,867)@5
    i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_inc_i_i_20_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_inc_i_i_19_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_sel_x(BITSELECT,28)@5
    bgTrunc_i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_vt_select_1(BITSELECT,870)@5
    i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_vt_select_1_b <= bgTrunc_i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_sel_x_b(1 downto 0);

    -- redist69_i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_vt_select_1_b_1(DELAY,1231)
    redist69_i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_vt_select_1_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_vt_select_1_b, xout => redist69_i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_vt_select_1_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_vt_join(BITJOIN,869)@6
    i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_const_31_q & redist69_i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_vt_select_1_b_1_q;

    -- c_i32_2097151(CONSTANT,559)
    c_i32_2097151_q <= "00000000000111111111111111111111";

    -- i_cmp1_i_i_21_altera_rand_gen_fn(COMPARE,620)@4 + 1
    i_cmp1_i_i_21_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_2097151_q);
    i_cmp1_i_i_21_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_21_altera_rand_gen_fn_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp1_i_i_21_altera_rand_gen_fn_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp1_i_i_21_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_21_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_21_altera_rand_gen_fn_b));
        END IF;
    END PROCESS;
    i_cmp1_i_i_21_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_21_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_21_altera_rand_gen_fn_sel_x(BITSELECT,65)@5
    i_inc_i_i_21_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_21_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_21_altera_rand_gen_fn_vt_select_0(BITSELECT,690)@5
    i_inc_i_i_21_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_21_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- i_inc_i_i_21_altera_rand_gen_fn_vt_join(BITJOIN,689)@5
    i_inc_i_i_21_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & i_inc_i_i_21_altera_rand_gen_fn_vt_select_0_b;

    -- c_i32_4194303(CONSTANT,570)
    c_i32_4194303_q <= "00000000001111111111111111111111";

    -- i_cmp1_i_i_22_altera_rand_gen_fn(COMPARE,621)@4
    i_cmp1_i_i_22_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_4194303_q);
    i_cmp1_i_i_22_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_22_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_22_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_22_altera_rand_gen_fn_b));
    i_cmp1_i_i_22_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_22_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_22_altera_rand_gen_fn_sel_x(BITSELECT,66)@4
    i_inc_i_i_22_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_22_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_22_altera_rand_gen_fn_vt_select_0(BITSELECT,694)@4
    i_inc_i_i_22_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_22_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- redist104_i_inc_i_i_22_altera_rand_gen_fn_vt_select_0_b_1(DELAY,1266)
    redist104_i_inc_i_i_22_altera_rand_gen_fn_vt_select_0_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_inc_i_i_22_altera_rand_gen_fn_vt_select_0_b, xout => redist104_i_inc_i_i_22_altera_rand_gen_fn_vt_select_0_b_1_q, clk => clock, aclr => resetn );

    -- i_inc_i_i_22_altera_rand_gen_fn_vt_join(BITJOIN,693)@5
    i_inc_i_i_22_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & redist104_i_inc_i_i_22_altera_rand_gen_fn_vt_select_0_b_1_q;

    -- i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn(ADD,863)@5
    i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_inc_i_i_22_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_inc_i_i_21_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_sel_x(BITSELECT,27)@5
    bgTrunc_i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_vt_select_1(BITSELECT,866)@5
    i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_vt_select_1_b <= bgTrunc_i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_sel_x_b(1 downto 0);

    -- redist70_i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_vt_select_1_b_1(DELAY,1232)
    redist70_i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_vt_select_1_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_vt_select_1_b, xout => redist70_i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_vt_select_1_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_vt_join(BITJOIN,865)@6
    i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_const_31_q & redist70_i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_vt_select_1_b_1_q;

    -- i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn(ADD,795)@6
    i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_4_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_5_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_sel_x(BITSELECT,10)@6
    bgTrunc_i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_vt_select_2(BITSELECT,798)@6
    i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_vt_select_2_b <= bgTrunc_i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_sel_x_b(2 downto 0);

    -- redist86_i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_vt_select_2_b_1(DELAY,1248)
    redist86_i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_vt_select_2_b_1 : dspba_delay
    GENERIC MAP ( width => 3, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_vt_select_2_b, xout => redist86_i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_vt_select_2_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_vt_join(BITJOIN,797)@7
    i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_const_31_q & redist86_i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_vt_select_2_b_1_q;

    -- i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn(ADD,823)@7
    i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_17_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_18_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_sel_x(BITSELECT,17)@7
    bgTrunc_i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_vt_select_3(BITSELECT,826)@7
    i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_vt_select_3_b <= bgTrunc_i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_sel_x_b(3 downto 0);

    -- redist79_i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_vt_select_3_b_1(DELAY,1241)
    redist79_i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_vt_select_3_b_1 : dspba_delay
    GENERIC MAP ( width => 4, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_vt_select_3_b, xout => redist79_i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_vt_select_3_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_vt_join(BITJOIN,825)@8
    i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_vt_const_31_q & redist79_i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_vt_select_3_b_1_q;

    -- c_i32_8388607(CONSTANT,587)
    c_i32_8388607_q <= "00000000011111111111111111111111";

    -- i_cmp1_i_i_23_altera_rand_gen_fn(COMPARE,622)@4 + 1
    i_cmp1_i_i_23_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_8388607_q);
    i_cmp1_i_i_23_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_23_altera_rand_gen_fn_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp1_i_i_23_altera_rand_gen_fn_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp1_i_i_23_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_23_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_23_altera_rand_gen_fn_b));
        END IF;
    END PROCESS;
    i_cmp1_i_i_23_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_23_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_23_altera_rand_gen_fn_sel_x(BITSELECT,67)@5
    i_inc_i_i_23_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_23_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_23_altera_rand_gen_fn_vt_select_0(BITSELECT,698)@5
    i_inc_i_i_23_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_23_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- i_inc_i_i_23_altera_rand_gen_fn_vt_join(BITJOIN,697)@5
    i_inc_i_i_23_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & i_inc_i_i_23_altera_rand_gen_fn_vt_select_0_b;

    -- c_i32_16777215(CONSTANT,556)
    c_i32_16777215_q <= "00000000111111111111111111111111";

    -- i_cmp1_i_i_24_altera_rand_gen_fn(COMPARE,623)@4
    i_cmp1_i_i_24_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_16777215_q);
    i_cmp1_i_i_24_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_24_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_24_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_24_altera_rand_gen_fn_b));
    i_cmp1_i_i_24_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_24_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_24_altera_rand_gen_fn_sel_x(BITSELECT,68)@4
    i_inc_i_i_24_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_24_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_24_altera_rand_gen_fn_vt_select_0(BITSELECT,702)@4
    i_inc_i_i_24_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_24_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- redist103_i_inc_i_i_24_altera_rand_gen_fn_vt_select_0_b_1(DELAY,1265)
    redist103_i_inc_i_i_24_altera_rand_gen_fn_vt_select_0_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_inc_i_i_24_altera_rand_gen_fn_vt_select_0_b, xout => redist103_i_inc_i_i_24_altera_rand_gen_fn_vt_select_0_b_1_q, clk => clock, aclr => resetn );

    -- i_inc_i_i_24_altera_rand_gen_fn_vt_join(BITJOIN,701)@5
    i_inc_i_i_24_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & redist103_i_inc_i_i_24_altera_rand_gen_fn_vt_select_0_b_1_q;

    -- i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn(ADD,859)@5
    i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_inc_i_i_24_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_inc_i_i_23_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_sel_x(BITSELECT,26)@5
    bgTrunc_i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_vt_select_1(BITSELECT,862)@5
    i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_vt_select_1_b <= bgTrunc_i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_sel_x_b(1 downto 0);

    -- redist71_i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_vt_select_1_b_1(DELAY,1233)
    redist71_i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_vt_select_1_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_vt_select_1_b, xout => redist71_i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_vt_select_1_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_vt_join(BITJOIN,861)@6
    i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_const_31_q & redist71_i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_vt_select_1_b_1_q;

    -- c_i32_33554431(CONSTANT,567)
    c_i32_33554431_q <= "00000001111111111111111111111111";

    -- i_cmp1_i_i_25_altera_rand_gen_fn(COMPARE,624)@4 + 1
    i_cmp1_i_i_25_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_33554431_q);
    i_cmp1_i_i_25_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_25_altera_rand_gen_fn_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp1_i_i_25_altera_rand_gen_fn_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp1_i_i_25_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_25_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_25_altera_rand_gen_fn_b));
        END IF;
    END PROCESS;
    i_cmp1_i_i_25_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_25_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_25_altera_rand_gen_fn_sel_x(BITSELECT,69)@5
    i_inc_i_i_25_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_25_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_25_altera_rand_gen_fn_vt_select_0(BITSELECT,706)@5
    i_inc_i_i_25_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_25_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- i_inc_i_i_25_altera_rand_gen_fn_vt_join(BITJOIN,705)@5
    i_inc_i_i_25_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & i_inc_i_i_25_altera_rand_gen_fn_vt_select_0_b;

    -- c_i32_67108863(CONSTANT,577)
    c_i32_67108863_q <= "00000011111111111111111111111111";

    -- i_cmp1_i_i_26_altera_rand_gen_fn(COMPARE,625)@4
    i_cmp1_i_i_26_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_67108863_q);
    i_cmp1_i_i_26_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_26_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_26_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_26_altera_rand_gen_fn_b));
    i_cmp1_i_i_26_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_26_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_26_altera_rand_gen_fn_sel_x(BITSELECT,70)@4
    i_inc_i_i_26_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_26_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_26_altera_rand_gen_fn_vt_select_0(BITSELECT,710)@4
    i_inc_i_i_26_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_26_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- redist102_i_inc_i_i_26_altera_rand_gen_fn_vt_select_0_b_1(DELAY,1264)
    redist102_i_inc_i_i_26_altera_rand_gen_fn_vt_select_0_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_inc_i_i_26_altera_rand_gen_fn_vt_select_0_b, xout => redist102_i_inc_i_i_26_altera_rand_gen_fn_vt_select_0_b_1_q, clk => clock, aclr => resetn );

    -- i_inc_i_i_26_altera_rand_gen_fn_vt_join(BITJOIN,709)@5
    i_inc_i_i_26_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & redist102_i_inc_i_i_26_altera_rand_gen_fn_vt_select_0_b_1_q;

    -- i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn(ADD,851)@5
    i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_inc_i_i_26_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_inc_i_i_25_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_sel_x(BITSELECT,24)@5
    bgTrunc_i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_vt_select_1(BITSELECT,854)@5
    i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_vt_select_1_b <= bgTrunc_i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_sel_x_b(1 downto 0);

    -- redist72_i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_vt_select_1_b_1(DELAY,1234)
    redist72_i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_vt_select_1_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_vt_select_1_b, xout => redist72_i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_vt_select_1_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_vt_join(BITJOIN,853)@6
    i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_const_31_q & redist72_i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_vt_select_1_b_1_q;

    -- i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn(ADD,791)@6
    i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_2_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_3_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_sel_x(BITSELECT,9)@6
    bgTrunc_i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_vt_select_2(BITSELECT,794)@6
    i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_vt_select_2_b <= bgTrunc_i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_sel_x_b(2 downto 0);

    -- redist87_i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_vt_select_2_b_1(DELAY,1249)
    redist87_i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_vt_select_2_b_1 : dspba_delay
    GENERIC MAP ( width => 3, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_vt_select_2_b, xout => redist87_i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_vt_select_2_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_vt_join(BITJOIN,793)@7
    i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_const_31_q & redist87_i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_vt_select_2_b_1_q;

    -- c_i32_134217727(CONSTANT,553)
    c_i32_134217727_q <= "00000111111111111111111111111111";

    -- i_cmp1_i_i_27_altera_rand_gen_fn(COMPARE,626)@4 + 1
    i_cmp1_i_i_27_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_134217727_q);
    i_cmp1_i_i_27_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_27_altera_rand_gen_fn_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp1_i_i_27_altera_rand_gen_fn_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp1_i_i_27_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_27_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_27_altera_rand_gen_fn_b));
        END IF;
    END PROCESS;
    i_cmp1_i_i_27_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_27_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_27_altera_rand_gen_fn_sel_x(BITSELECT,71)@5
    i_inc_i_i_27_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_27_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_27_altera_rand_gen_fn_vt_select_0(BITSELECT,714)@5
    i_inc_i_i_27_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_27_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- i_inc_i_i_27_altera_rand_gen_fn_vt_join(BITJOIN,713)@5
    i_inc_i_i_27_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & i_inc_i_i_27_altera_rand_gen_fn_vt_select_0_b;

    -- c_i32_268435455(CONSTANT,563)
    c_i32_268435455_q <= "00001111111111111111111111111111";

    -- i_cmp1_i_i_28_altera_rand_gen_fn(COMPARE,627)@4
    i_cmp1_i_i_28_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_268435455_q);
    i_cmp1_i_i_28_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_28_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_28_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_28_altera_rand_gen_fn_b));
    i_cmp1_i_i_28_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_28_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_28_altera_rand_gen_fn_sel_x(BITSELECT,72)@4
    i_inc_i_i_28_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_28_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_28_altera_rand_gen_fn_vt_select_0(BITSELECT,718)@4
    i_inc_i_i_28_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_28_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- redist101_i_inc_i_i_28_altera_rand_gen_fn_vt_select_0_b_1(DELAY,1263)
    redist101_i_inc_i_i_28_altera_rand_gen_fn_vt_select_0_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_inc_i_i_28_altera_rand_gen_fn_vt_select_0_b, xout => redist101_i_inc_i_i_28_altera_rand_gen_fn_vt_select_0_b_1_q, clk => clock, aclr => resetn );

    -- i_inc_i_i_28_altera_rand_gen_fn_vt_join(BITJOIN,717)@5
    i_inc_i_i_28_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & redist101_i_inc_i_i_28_altera_rand_gen_fn_vt_select_0_b_1_q;

    -- i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn(ADD,807)@5
    i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_inc_i_i_28_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_inc_i_i_27_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_sel_x(BITSELECT,13)@5
    bgTrunc_i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_vt_select_1(BITSELECT,810)@5
    i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_vt_select_1_b <= bgTrunc_i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_sel_x_b(1 downto 0);

    -- redist83_i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_vt_select_1_b_1(DELAY,1245)
    redist83_i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_vt_select_1_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_vt_select_1_b, xout => redist83_i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_vt_select_1_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_vt_join(BITJOIN,809)@6
    i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_const_31_q & redist83_i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_vt_select_1_b_1_q;

    -- c_i32_536870911(CONSTANT,574)
    c_i32_536870911_q <= "00011111111111111111111111111111";

    -- i_cmp1_i_i_29_altera_rand_gen_fn(COMPARE,628)@4 + 1
    i_cmp1_i_i_29_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_536870911_q);
    i_cmp1_i_i_29_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_29_altera_rand_gen_fn_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp1_i_i_29_altera_rand_gen_fn_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp1_i_i_29_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_29_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_29_altera_rand_gen_fn_b));
        END IF;
    END PROCESS;
    i_cmp1_i_i_29_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_29_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_29_altera_rand_gen_fn_sel_x(BITSELECT,73)@5
    i_inc_i_i_29_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_29_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_29_altera_rand_gen_fn_vt_select_0(BITSELECT,722)@5
    i_inc_i_i_29_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_29_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- i_inc_i_i_29_altera_rand_gen_fn_vt_join(BITJOIN,721)@5
    i_inc_i_i_29_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & i_inc_i_i_29_altera_rand_gen_fn_vt_select_0_b;

    -- c_i32_1073741823(CONSTANT,549)
    c_i32_1073741823_q <= "00111111111111111111111111111111";

    -- i_cmp1_i_i_30_altera_rand_gen_fn(COMPARE,630)@4
    i_cmp1_i_i_30_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("00" & c_i32_1073741823_q);
    i_cmp1_i_i_30_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("00" & i_xor24_i_altera_rand_gen_fn_q);
    i_cmp1_i_i_30_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp1_i_i_30_altera_rand_gen_fn_a) - UNSIGNED(i_cmp1_i_i_30_altera_rand_gen_fn_b));
    i_cmp1_i_i_30_altera_rand_gen_fn_c(0) <= i_cmp1_i_i_30_altera_rand_gen_fn_o(33);

    -- i_inc_i_i_30_altera_rand_gen_fn_sel_x(BITSELECT,75)@4
    i_inc_i_i_30_altera_rand_gen_fn_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp1_i_i_30_altera_rand_gen_fn_c(0 downto 0)), 32));

    -- i_inc_i_i_30_altera_rand_gen_fn_vt_select_0(BITSELECT,730)@4
    i_inc_i_i_30_altera_rand_gen_fn_vt_select_0_b <= i_inc_i_i_30_altera_rand_gen_fn_sel_x_b(0 downto 0);

    -- redist99_i_inc_i_i_30_altera_rand_gen_fn_vt_select_0_b_1(DELAY,1261)
    redist99_i_inc_i_i_30_altera_rand_gen_fn_vt_select_0_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_inc_i_i_30_altera_rand_gen_fn_vt_select_0_b, xout => redist99_i_inc_i_i_30_altera_rand_gen_fn_vt_select_0_b_1_q, clk => clock, aclr => resetn );

    -- i_inc_i_i_30_altera_rand_gen_fn_vt_join(BITJOIN,729)@5
    i_inc_i_i_30_altera_rand_gen_fn_vt_join_q <= i_inc_i_i_10_altera_rand_gen_fn_vt_const_31_q & redist99_i_inc_i_i_30_altera_rand_gen_fn_vt_select_0_b_1_q;

    -- i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn(ADD,763)@5
    i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_inc_i_i_30_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_inc_i_i_29_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_sel_x(BITSELECT,2)@5
    bgTrunc_i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_select_1(BITSELECT,766)@5
    i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_select_1_b <= bgTrunc_i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_sel_x_b(1 downto 0);

    -- redist94_i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_select_1_b_1(DELAY,1256)
    redist94_i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_select_1_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_select_1_b, xout => redist94_i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_select_1_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_join(BITJOIN,765)@6
    i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_const_31_q & redist94_i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_select_1_b_1_q;

    -- i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn(ADD,787)@6
    i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_0_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_1_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_sel_x(BITSELECT,8)@6
    bgTrunc_i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_select_2(BITSELECT,790)@6
    i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_select_2_b <= bgTrunc_i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_sel_x_b(2 downto 0);

    -- redist88_i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_select_2_b_1(DELAY,1250)
    redist88_i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_select_2_b_1 : dspba_delay
    GENERIC MAP ( width => 3, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_select_2_b, xout => redist88_i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_select_2_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_join(BITJOIN,789)@7
    i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_const_31_q & redist88_i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_select_2_b_1_q;

    -- i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn(ADD,819)@7
    i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_15_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_16_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_sel_x(BITSELECT,16)@7
    bgTrunc_i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_vt_select_3(BITSELECT,822)@7
    i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_vt_select_3_b <= bgTrunc_i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_sel_x_b(3 downto 0);

    -- redist80_i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_vt_select_3_b_1(DELAY,1242)
    redist80_i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_vt_select_3_b_1 : dspba_delay
    GENERIC MAP ( width => 4, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_vt_select_3_b, xout => redist80_i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_vt_select_3_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_vt_join(BITJOIN,821)@8
    i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_vt_const_31_q & redist80_i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_vt_select_3_b_1_q;

    -- i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn(ADD,831)@8
    i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_22_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_23_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_sel_x(BITSELECT,19)@8
    bgTrunc_i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_vt_select_4(BITSELECT,834)@8
    i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_vt_select_4_b <= bgTrunc_i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_sel_x_b(4 downto 0);

    -- redist77_i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_vt_select_4_b_1(DELAY,1239)
    redist77_i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_vt_select_4_b_1 : dspba_delay
    GENERIC MAP ( width => 5, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_vt_select_4_b, xout => redist77_i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_vt_select_4_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_vt_join(BITJOIN,833)@9
    i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_vt_const_31_q & redist77_i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_vt_select_4_b_1_q;

    -- i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn(ADD,855)@9
    i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_25_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & i_reduction_altera_rand_gen_fn_29_altera_rand_gen_fn_vt_join_q);
    i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_a) + UNSIGNED(i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_b));
    i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_q <= i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_sel_x(BITSELECT,25)@9
    bgTrunc_i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_sel_x_b <= i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_q(31 downto 0);

    -- i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_vt_select_5(BITSELECT,858)@9
    i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_vt_select_5_b <= bgTrunc_i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_sel_x_b(5 downto 0);

    -- i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_vt_join(BITJOIN,857)@9
    i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_vt_join_q <= i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_vt_const_31_q & i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_vt_select_5_b;

    -- leftShiftStage0_uid938_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x(MUX,937)@9
    leftShiftStage0_uid938_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_s <= VCC_q;
    leftShiftStage0_uid938_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_combproc: PROCESS (leftShiftStage0_uid938_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_s, i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_vt_join_q, leftShiftStage0Idx1_uid936_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid938_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid938_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q <= i_reduction_altera_rand_gen_fn_30_altera_rand_gen_fn_vt_join_q;
            WHEN "1" => leftShiftStage0_uid938_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q <= leftShiftStage0Idx1_uid936_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid938_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid943_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x(MUX,942)@9
    leftShiftStage1_uid943_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_s <= VCC_q;
    leftShiftStage1_uid943_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_combproc: PROCESS (leftShiftStage1_uid943_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_s, leftShiftStage0_uid938_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q, leftShiftStage1Idx1_uid941_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid943_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid943_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q <= leftShiftStage0_uid938_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q;
            WHEN "1" => leftShiftStage1_uid943_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q <= leftShiftStage1Idx1_uid941_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid943_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid948_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x(MUX,947)@9
    leftShiftStage2_uid948_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_s <= VCC_q;
    leftShiftStage2_uid948_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_combproc: PROCESS (leftShiftStage2_uid948_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_s, leftShiftStage1_uid943_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q, leftShiftStage2Idx1_uid946_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid948_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid948_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q <= leftShiftStage1_uid943_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q;
            WHEN "1" => leftShiftStage2_uid948_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q <= leftShiftStage2Idx1_uid946_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid948_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid953_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x(MUX,952)@9
    leftShiftStage3_uid953_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_s <= VCC_q;
    leftShiftStage3_uid953_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_combproc: PROCESS (leftShiftStage3_uid953_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_s, leftShiftStage2_uid948_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q, leftShiftStage3Idx1_uid951_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid953_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid953_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q <= leftShiftStage2_uid948_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q;
            WHEN "1" => leftShiftStage3_uid953_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q <= leftShiftStage3Idx1_uid951_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid953_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_add_i_altera_rand_gen_fn_vt_select_28(BITSELECT,604)@9
    i_add_i_altera_rand_gen_fn_vt_select_28_b <= leftShiftStage3_uid953_i_add_i_altera_rand_gen_fn_altera_rand_gen_fn60_shift_x_q(28 downto 23);

    -- redist111_i_add_i_altera_rand_gen_fn_vt_select_28_b_1(DELAY,1273)
    redist111_i_add_i_altera_rand_gen_fn_vt_select_28_b_1 : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_add_i_altera_rand_gen_fn_vt_select_28_b, xout => redist111_i_add_i_altera_rand_gen_fn_vt_select_28_b_1_q, clk => clock, aclr => resetn );

    -- i_add_i_altera_rand_gen_fn_vt_join(BITJOIN,603)@10
    i_add_i_altera_rand_gen_fn_vt_join_q <= i_add_i_altera_rand_gen_fn_vt_const_31_q & redist111_i_add_i_altera_rand_gen_fn_vt_select_28_b_1_q & i_add_i_altera_rand_gen_fn_vt_const_22_q;

    -- i_shl_i1_altera_rand_gen_fn(ADD,899)@10
    i_shl_i1_altera_rand_gen_fn_a <= STD_LOGIC_VECTOR("0" & i_add_i_altera_rand_gen_fn_vt_join_q);
    i_shl_i1_altera_rand_gen_fn_b <= STD_LOGIC_VECTOR("0" & c_i32_788529152_q);
    i_shl_i1_altera_rand_gen_fn_o <= STD_LOGIC_VECTOR(UNSIGNED(i_shl_i1_altera_rand_gen_fn_a) + UNSIGNED(i_shl_i1_altera_rand_gen_fn_b));
    i_shl_i1_altera_rand_gen_fn_q <= i_shl_i1_altera_rand_gen_fn_o(32 downto 0);

    -- bgTrunc_i_shl_i1_altera_rand_gen_fn_sel_x(BITSELECT,33)@10
    bgTrunc_i_shl_i1_altera_rand_gen_fn_sel_x_b <= i_shl_i1_altera_rand_gen_fn_q(31 downto 0);

    -- i_shl_i1_altera_rand_gen_fn_vt_select_30(BITSELECT,903)@10
    i_shl_i1_altera_rand_gen_fn_vt_select_30_b <= bgTrunc_i_shl_i1_altera_rand_gen_fn_sel_x_b(30 downto 23);

    -- i_add_i_altera_rand_gen_fn_vt_const_22(CONSTANT,601)
    i_add_i_altera_rand_gen_fn_vt_const_22_q <= "00000000000000000000000";

    -- i_shl_i1_altera_rand_gen_fn_vt_join(BITJOIN,902)@10
    i_shl_i1_altera_rand_gen_fn_vt_join_q <= GND_q & i_shl_i1_altera_rand_gen_fn_vt_select_30_b & i_add_i_altera_rand_gen_fn_vt_const_22_q;

    -- i_xor_i339_altera_rand_gen_fn_BitSelect_for_a(BITSELECT,1153)@10
    i_xor_i339_altera_rand_gen_fn_BitSelect_for_a_b <= i_shl_i1_altera_rand_gen_fn_vt_join_q(30 downto 23);

    -- i_shr_i2_altera_rand_gen_fn_vt_const_31(CONSTANT,910)
    i_shr_i2_altera_rand_gen_fn_vt_const_31_q <= "000000000";

    -- rightShiftStage1Idx1Rng1_uid1056_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x(BITSELECT,1055)@10
    rightShiftStage1Idx1Rng1_uid1056_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_b <= rightShiftStage0_uid1055_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_q(31 downto 1);

    -- rightShiftStage1Idx1_uid1058_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x(BITJOIN,1057)@10
    rightShiftStage1Idx1_uid1058_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_q <= GND_q & rightShiftStage1Idx1Rng1_uid1056_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_b;

    -- rightShiftStage0Idx1Rng8_uid1051_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x(BITSELECT,1050)@10
    rightShiftStage0Idx1Rng8_uid1051_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_b <= i_xor24_i32_altera_rand_gen_fn_q(31 downto 8);

    -- rightShiftStage0Idx1_uid1053_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x(BITJOIN,1052)@10
    rightShiftStage0Idx1_uid1053_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_q <= leftShiftStage0Idx1Pad8_uid1013_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q & rightShiftStage0Idx1Rng8_uid1051_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_b;

    -- i_acl_push_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_push3_altera_rand_gen_fn(BLACKBOX,600)@10
    -- out out_feedback_out_3@20000000
    -- out out_feedback_valid_out_3@20000000
    thei_acl_push_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_push3_altera_rand_gen_fn : i_acl_push_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_push3_altera_rand_gen_fn56
    PORT MAP (
        in_data_in => i_xor21_i2938_compressed_altera_rand_gen_fn_altera_rand_gen_fn55_xor21_i2938_shuffle_join_x_q,
        in_feedback_stall_in_3 => i_acl_pop_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_pop3_altera_rand_gen_fn_out_feedback_stall_out_3,
        in_stall_in => GND_q,
        in_valid_in => redist117_sync_in_aunroll_x_in_i_valid_9_q,
        out_feedback_out_3 => i_acl_push_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_push3_altera_rand_gen_fn_out_feedback_out_3,
        out_feedback_valid_out_3 => i_acl_push_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_push3_altera_rand_gen_fn_out_feedback_valid_out_3,
        clock => clock,
        resetn => resetn
    );

    -- redist114_sync_in_aunroll_x_in_c1_eni1_1_8(DELAY,1276)
    redist114_sync_in_aunroll_x_in_c1_eni1_1_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist113_sync_in_aunroll_x_in_c1_eni1_1_1_q, xout => redist114_sync_in_aunroll_x_in_c1_eni1_1_8_q, clk => clock, aclr => resetn );

    -- c_i32_68997770(CONSTANT,583)
    c_i32_68997770_q <= "00000100000111001101001010001010";

    -- i_acl_pop_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_pop3_altera_rand_gen_fn(BLACKBOX,594)@9
    -- out out_feedback_stall_out_3@20000000
    thei_acl_pop_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_pop3_altera_rand_gen_fn : i_acl_pop_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_pop3_altera_rand_gen_fn51
    PORT MAP (
        in_data_in => c_i32_68997770_q,
        in_dir => redist114_sync_in_aunroll_x_in_c1_eni1_1_8_q,
        in_feedback_in_3 => i_acl_push_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_push3_altera_rand_gen_fn_out_feedback_out_3,
        in_feedback_valid_in_3 => i_acl_push_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_push3_altera_rand_gen_fn_out_feedback_valid_out_3,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist116_sync_in_aunroll_x_in_i_valid_8_q,
        out_data_out => i_acl_pop_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_pop3_altera_rand_gen_fn_out_data_out,
        out_feedback_stall_out_3 => i_acl_pop_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_pop3_altera_rand_gen_fn_out_feedback_stall_out_3,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage1Idx1Rng1_uid973_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x(BITSELECT,972)@9
    leftShiftStage1Idx1Rng1_uid973_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_in <= leftShiftStage0_uid971_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid973_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_b <= leftShiftStage1Idx1Rng1_uid973_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid974_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x(BITJOIN,973)@9
    leftShiftStage1Idx1_uid974_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_q <= leftShiftStage1Idx1Rng1_uid973_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_b & GND_q;

    -- leftShiftStage0Idx1Rng2_uid968_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x(BITSELECT,967)@9
    leftShiftStage0Idx1Rng2_uid968_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_in <= i_acl_pop_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_pop3_altera_rand_gen_fn_out_data_out(29 downto 0);
    leftShiftStage0Idx1Rng2_uid968_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_b <= leftShiftStage0Idx1Rng2_uid968_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_in(29 downto 0);

    -- leftShiftStage0Idx1_uid969_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x(BITJOIN,968)@9
    leftShiftStage0Idx1_uid969_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_q <= leftShiftStage0Idx1Rng2_uid968_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_b & i_shl5_i13_altera_rand_gen_fn_vt_const_1_q;

    -- leftShiftStage0_uid971_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x(MUX,970)@9
    leftShiftStage0_uid971_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_s <= VCC_q;
    leftShiftStage0_uid971_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_combproc: PROCESS (leftShiftStage0_uid971_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_s, i_acl_pop_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_pop3_altera_rand_gen_fn_out_data_out, leftShiftStage0Idx1_uid969_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid971_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid971_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_q <= i_acl_pop_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_pop3_altera_rand_gen_fn_out_data_out;
            WHEN "1" => leftShiftStage0_uid971_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_q <= leftShiftStage0Idx1_uid969_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid971_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid976_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x(MUX,975)@9
    leftShiftStage1_uid976_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_s <= VCC_q;
    leftShiftStage1_uid976_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_combproc: PROCESS (leftShiftStage1_uid976_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_s, leftShiftStage0_uid971_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_q, leftShiftStage1Idx1_uid974_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid976_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid976_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_q <= leftShiftStage0_uid971_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_q;
            WHEN "1" => leftShiftStage1_uid976_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_q <= leftShiftStage1Idx1_uid974_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid976_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shl14_i22_altera_rand_gen_fn_vt_select_31(BITSELECT,889)@9
    i_shl14_i22_altera_rand_gen_fn_vt_select_31_b <= leftShiftStage1_uid976_i_shl14_i22_altera_rand_gen_fn_altera_rand_gen_fn53_shift_x_q(31 downto 3);

    -- i_shl14_i22_altera_rand_gen_fn_vt_join(BITJOIN,888)@9
    i_shl14_i22_altera_rand_gen_fn_vt_join_q <= i_shl14_i22_altera_rand_gen_fn_vt_select_31_b & i_add_i_altera_rand_gen_fn_vt_const_31_q;

    -- i_xor15_i23_altera_rand_gen_fn(LOGICAL,914)@9
    i_xor15_i23_altera_rand_gen_fn_q <= i_shl14_i22_altera_rand_gen_fn_vt_join_q xor i_acl_pop_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_pop3_altera_rand_gen_fn_out_data_out;

    -- i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_vec_1_join_x(BITJOIN,308)@9
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_vec_1_join_x_q <= i_acl_pop_i32_m0_s3_altera_rand_gen_fn_4ia_addr_0_pop3_altera_rand_gen_fn_out_data_out & i_xor15_i23_altera_rand_gen_fn_q;

    -- i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select(BITSELECT,1158)@9
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_vec_1_join_x_q(46 downto 0);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_b <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(11 downto 11);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_c <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(12 downto 12);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_d <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(13 downto 13);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_e <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(14 downto 14);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_f <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(15 downto 15);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_g <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(16 downto 16);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_h <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(17 downto 17);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_i <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(18 downto 18);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_j <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(19 downto 19);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_k <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(20 downto 20);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_l <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(21 downto 21);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_m <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(22 downto 22);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_n <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(23 downto 23);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_o <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(24 downto 24);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_p <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(25 downto 25);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_q <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(26 downto 26);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_r <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(27 downto 27);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_s <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(28 downto 28);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_t <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(29 downto 29);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_u <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(30 downto 30);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_v <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(31 downto 31);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_w <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(36 downto 36);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_x <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(37 downto 37);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_y <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(38 downto 38);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_z <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(39 downto 39);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_aa <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(40 downto 40);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_bb <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(41 downto 41);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_cc <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(42 downto 42);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_dd <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(43 downto 43);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_ee <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(44 downto 44);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_ff <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(45 downto 45);
    i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_gg <= i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_in(46 downto 46);

    -- redist63_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_gg_1(DELAY,1225)
    redist63_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_gg_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_gg, xout => redist63_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_gg_1_q, clk => clock, aclr => resetn );

    -- redist62_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_ff_1(DELAY,1224)
    redist62_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_ff_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_ff, xout => redist62_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_ff_1_q, clk => clock, aclr => resetn );

    -- redist61_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_ee_1(DELAY,1223)
    redist61_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_ee_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_ee, xout => redist61_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_ee_1_q, clk => clock, aclr => resetn );

    -- redist60_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_dd_1(DELAY,1222)
    redist60_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_dd_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_dd, xout => redist60_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_dd_1_q, clk => clock, aclr => resetn );

    -- redist59_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_cc_1(DELAY,1221)
    redist59_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_cc_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_cc, xout => redist59_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_cc_1_q, clk => clock, aclr => resetn );

    -- redist58_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_bb_1(DELAY,1220)
    redist58_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_bb_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_bb, xout => redist58_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_bb_1_q, clk => clock, aclr => resetn );

    -- redist57_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_aa_1(DELAY,1219)
    redist57_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_aa_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_aa, xout => redist57_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_aa_1_q, clk => clock, aclr => resetn );

    -- redist56_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_z_1(DELAY,1218)
    redist56_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_z_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_z, xout => redist56_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_z_1_q, clk => clock, aclr => resetn );

    -- redist55_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_y_1(DELAY,1217)
    redist55_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_y_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_y, xout => redist55_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_y_1_q, clk => clock, aclr => resetn );

    -- redist54_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_x_1(DELAY,1216)
    redist54_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_x_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_x, xout => redist54_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_x_1_q, clk => clock, aclr => resetn );

    -- redist53_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_w_1(DELAY,1215)
    redist53_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_w_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_w, xout => redist53_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_w_1_q, clk => clock, aclr => resetn );

    -- redist52_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_v_1(DELAY,1214)
    redist52_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_v_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_v, xout => redist52_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_v_1_q, clk => clock, aclr => resetn );

    -- redist51_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_u_1(DELAY,1213)
    redist51_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_u_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_u, xout => redist51_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_u_1_q, clk => clock, aclr => resetn );

    -- redist50_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_t_1(DELAY,1212)
    redist50_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_t_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_t, xout => redist50_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_t_1_q, clk => clock, aclr => resetn );

    -- redist49_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_s_1(DELAY,1211)
    redist49_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_s_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_s, xout => redist49_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_s_1_q, clk => clock, aclr => resetn );

    -- redist48_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_r_1(DELAY,1210)
    redist48_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_r_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_r, xout => redist48_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_r_1_q, clk => clock, aclr => resetn );

    -- redist47_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_q_1(DELAY,1209)
    redist47_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_q, xout => redist47_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_q_1_q, clk => clock, aclr => resetn );

    -- redist46_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_p_1(DELAY,1208)
    redist46_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_p_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_p, xout => redist46_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_p_1_q, clk => clock, aclr => resetn );

    -- redist45_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_o_1(DELAY,1207)
    redist45_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_o_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_o, xout => redist45_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_o_1_q, clk => clock, aclr => resetn );

    -- redist44_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_n_1(DELAY,1206)
    redist44_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_n_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_n, xout => redist44_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_n_1_q, clk => clock, aclr => resetn );

    -- redist43_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_m_1(DELAY,1205)
    redist43_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_m_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_m, xout => redist43_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_m_1_q, clk => clock, aclr => resetn );

    -- redist42_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_l_1(DELAY,1204)
    redist42_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_l_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_l, xout => redist42_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_l_1_q, clk => clock, aclr => resetn );

    -- redist41_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_k_1(DELAY,1203)
    redist41_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_k_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_k, xout => redist41_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_k_1_q, clk => clock, aclr => resetn );

    -- redist40_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_j_1(DELAY,1202)
    redist40_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_j_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_j, xout => redist40_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_j_1_q, clk => clock, aclr => resetn );

    -- redist39_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_i_1(DELAY,1201)
    redist39_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_i_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_i, xout => redist39_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_i_1_q, clk => clock, aclr => resetn );

    -- redist38_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_h_1(DELAY,1200)
    redist38_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_h_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_h, xout => redist38_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_h_1_q, clk => clock, aclr => resetn );

    -- redist37_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_g_1(DELAY,1199)
    redist37_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_g_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_g, xout => redist37_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_g_1_q, clk => clock, aclr => resetn );

    -- redist36_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_f_1(DELAY,1198)
    redist36_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_f_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_f, xout => redist36_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_f_1_q, clk => clock, aclr => resetn );

    -- redist35_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_e_1(DELAY,1197)
    redist35_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_e_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_e, xout => redist35_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_e_1_q, clk => clock, aclr => resetn );

    -- redist34_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_d_1(DELAY,1196)
    redist34_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_d_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_d, xout => redist34_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_d_1_q, clk => clock, aclr => resetn );

    -- redist33_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_c_1(DELAY,1195)
    redist33_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_c, xout => redist33_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- redist32_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_b_1(DELAY,1194)
    redist32_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_b, xout => redist32_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_b_1_q, clk => clock, aclr => resetn );

    -- i_xor21_i2938_compressed_altera_rand_gen_fn_altera_rand_gen_fn55_xor21_i2938_shuffle_join_x(BITJOIN,309)@10
    i_xor21_i2938_compressed_altera_rand_gen_fn_altera_rand_gen_fn55_xor21_i2938_shuffle_join_x_q <= redist63_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_gg_1_q & redist62_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_ff_1_q & redist61_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_ee_1_q & redist60_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_dd_1_q & redist59_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_cc_1_q & redist58_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_bb_1_q & redist57_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_aa_1_q & redist56_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_z_1_q & redist55_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_y_1_q & redist54_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_x_1_q & redist53_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_w_1_q & redist52_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_v_1_q & redist51_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_u_1_q & redist50_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_t_1_q & redist49_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_s_1_q & redist48_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_r_1_q & redist47_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_q_1_q & redist46_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_p_1_q & redist45_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_o_1_q & redist44_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_n_1_q & redist43_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_m_1_q & redist42_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_l_1_q & redist41_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_k_1_q & redist40_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_j_1_q & redist39_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_i_1_q & redist38_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_h_1_q & redist37_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_g_1_q & redist36_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_f_1_q & redist35_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_e_1_q & redist34_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_d_1_q & redist33_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_c_1_q & redist32_i_xor21_i2938_bitvec_altera_rand_gen_fn_altera_rand_gen_fn54_xor21_i2938_bitvec_select_11_x_merged_bit_select_b_1_q;

    -- i_acl_push_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_push5_altera_rand_gen_fn(BLACKBOX,598)@10
    -- out out_feedback_out_5@20000000
    -- out out_feedback_valid_out_5@20000000
    thei_acl_push_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_push5_altera_rand_gen_fn : i_acl_push_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_push5_altera_rand_gen_fn41
    PORT MAP (
        in_data_in => i_xor3_i1136_compressed_altera_rand_gen_fn_altera_rand_gen_fn40_xor3_i1136_shuffle_join_x_q,
        in_feedback_stall_in_5 => i_acl_pop_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_pop5_altera_rand_gen_fn_out_feedback_stall_out_5,
        in_stall_in => GND_q,
        in_valid_in => redist117_sync_in_aunroll_x_in_i_valid_9_q,
        out_feedback_out_5 => i_acl_push_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_push5_altera_rand_gen_fn_out_feedback_out_5,
        out_feedback_valid_out_5 => i_acl_push_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_push5_altera_rand_gen_fn_out_feedback_valid_out_5,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_68997768(CONSTANT,581)
    c_i32_68997768_q <= "00000100000111001101001010001000";

    -- i_acl_pop_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_pop5_altera_rand_gen_fn(BLACKBOX,592)@9
    -- out out_feedback_stall_out_5@20000000
    thei_acl_pop_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_pop5_altera_rand_gen_fn : i_acl_pop_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_pop5_altera_rand_gen_fn36
    PORT MAP (
        in_data_in => c_i32_68997768_q,
        in_dir => redist114_sync_in_aunroll_x_in_c1_eni1_1_8_q,
        in_feedback_in_5 => i_acl_push_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_push5_altera_rand_gen_fn_out_feedback_out_5,
        in_feedback_valid_in_5 => i_acl_push_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_push5_altera_rand_gen_fn_out_feedback_valid_out_5,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist116_sync_in_aunroll_x_in_i_valid_8_q,
        out_data_out => i_acl_pop_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_pop5_altera_rand_gen_fn_out_data_out,
        out_feedback_stall_out_5 => i_acl_pop_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_pop5_altera_rand_gen_fn_out_feedback_stall_out_5,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage2Idx1Rng1_uid1024_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x(BITSELECT,1023)@9
    leftShiftStage2Idx1Rng1_uid1024_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_in <= leftShiftStage1_uid1022_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid1024_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_b <= leftShiftStage2Idx1Rng1_uid1024_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid1025_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x(BITJOIN,1024)@9
    leftShiftStage2Idx1_uid1025_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q <= leftShiftStage2Idx1Rng1_uid1024_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_b & GND_q;

    -- leftShiftStage1Idx1Rng4_uid1019_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x(BITSELECT,1018)@9
    leftShiftStage1Idx1Rng4_uid1019_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_in <= leftShiftStage0_uid1017_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid1019_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_b <= leftShiftStage1Idx1Rng4_uid1019_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid1020_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x(BITJOIN,1019)@9
    leftShiftStage1Idx1_uid1020_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q <= leftShiftStage1Idx1Rng4_uid1019_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_b & i_and9_i17_altera_rand_gen_fn_vt_const_3_q;

    -- leftShiftStage0Idx1Rng8_uid1014_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x(BITSELECT,1013)@9
    leftShiftStage0Idx1Rng8_uid1014_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_in <= i_acl_pop_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_pop5_altera_rand_gen_fn_out_data_out(23 downto 0);
    leftShiftStage0Idx1Rng8_uid1014_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_b <= leftShiftStage0Idx1Rng8_uid1014_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid1015_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x(BITJOIN,1014)@9
    leftShiftStage0Idx1_uid1015_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q <= leftShiftStage0Idx1Rng8_uid1014_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_b & leftShiftStage0Idx1Pad8_uid1013_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q;

    -- leftShiftStage0_uid1017_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x(MUX,1016)@9
    leftShiftStage0_uid1017_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_s <= VCC_q;
    leftShiftStage0_uid1017_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_combproc: PROCESS (leftShiftStage0_uid1017_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_s, i_acl_pop_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_pop5_altera_rand_gen_fn_out_data_out, leftShiftStage0Idx1_uid1015_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1017_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1017_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q <= i_acl_pop_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_pop5_altera_rand_gen_fn_out_data_out;
            WHEN "1" => leftShiftStage0_uid1017_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q <= leftShiftStage0Idx1_uid1015_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1017_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1022_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x(MUX,1021)@9
    leftShiftStage1_uid1022_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_s <= VCC_q;
    leftShiftStage1_uid1022_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_combproc: PROCESS (leftShiftStage1_uid1022_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_s, leftShiftStage0_uid1017_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q, leftShiftStage1Idx1_uid1020_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1022_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1022_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q <= leftShiftStage0_uid1017_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1022_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q <= leftShiftStage1Idx1_uid1020_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1022_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1027_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x(MUX,1026)@9
    leftShiftStage2_uid1027_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_s <= VCC_q;
    leftShiftStage2_uid1027_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_combproc: PROCESS (leftShiftStage2_uid1027_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_s, leftShiftStage1_uid1022_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q, leftShiftStage2Idx1_uid1025_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1027_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1027_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q <= leftShiftStage1_uid1022_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1027_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q <= leftShiftStage2Idx1_uid1025_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1027_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shl_i4_altera_rand_gen_fn_vt_select_31(BITSELECT,906)@9
    i_shl_i4_altera_rand_gen_fn_vt_select_31_b <= leftShiftStage2_uid1027_i_shl_i4_altera_rand_gen_fn_altera_rand_gen_fn38_shift_x_q(31 downto 13);

    -- i_shl_i4_altera_rand_gen_fn_vt_join(BITJOIN,905)@9
    i_shl_i4_altera_rand_gen_fn_vt_join_q <= i_shl_i4_altera_rand_gen_fn_vt_select_31_b & i_shl_i4_altera_rand_gen_fn_vt_const_12_q;

    -- i_xor_i5_altera_rand_gen_fn(LOGICAL,926)@9
    i_xor_i5_altera_rand_gen_fn_q <= i_shl_i4_altera_rand_gen_fn_vt_join_q xor i_acl_pop_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_pop5_altera_rand_gen_fn_out_data_out;

    -- i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_vec_1_join_x(BITJOIN,444)@9
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_vec_1_join_x_q <= i_acl_pop_i32_m0_s1_altera_rand_gen_fn_4ia_addr_0_pop5_altera_rand_gen_fn_out_data_out & i_xor_i5_altera_rand_gen_fn_q;

    -- i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select(BITSELECT,1160)@9
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_vec_1_join_x_q(51 downto 0);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_b <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(19 downto 19);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_c <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(20 downto 20);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_d <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(21 downto 21);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_e <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(22 downto 22);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_f <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(23 downto 23);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_g <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(24 downto 24);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_h <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(25 downto 25);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_i <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(26 downto 26);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_j <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(27 downto 27);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_k <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(28 downto 28);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_l <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(29 downto 29);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_m <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(30 downto 30);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_n <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(31 downto 31);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_o <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(33 downto 33);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_p <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(34 downto 34);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_q <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(35 downto 35);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_r <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(36 downto 36);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_s <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(37 downto 37);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_t <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(38 downto 38);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_u <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(39 downto 39);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_v <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(40 downto 40);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_w <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(41 downto 41);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_x <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(42 downto 42);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_y <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(43 downto 43);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_z <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(44 downto 44);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_aa <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(45 downto 45);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_bb <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(46 downto 46);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_cc <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(47 downto 47);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_dd <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(48 downto 48);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_ee <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(49 downto 49);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_ff <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(50 downto 50);
    i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_gg <= i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_in(51 downto 51);

    -- redist31_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_gg_1(DELAY,1193)
    redist31_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_gg_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_gg, xout => redist31_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_gg_1_q, clk => clock, aclr => resetn );

    -- redist30_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_ff_1(DELAY,1192)
    redist30_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_ff_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_ff, xout => redist30_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_ff_1_q, clk => clock, aclr => resetn );

    -- redist29_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_ee_1(DELAY,1191)
    redist29_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_ee_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_ee, xout => redist29_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_ee_1_q, clk => clock, aclr => resetn );

    -- redist28_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_dd_1(DELAY,1190)
    redist28_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_dd_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_dd, xout => redist28_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_dd_1_q, clk => clock, aclr => resetn );

    -- redist27_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_cc_1(DELAY,1189)
    redist27_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_cc_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_cc, xout => redist27_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_cc_1_q, clk => clock, aclr => resetn );

    -- redist26_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_bb_1(DELAY,1188)
    redist26_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_bb_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_bb, xout => redist26_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_bb_1_q, clk => clock, aclr => resetn );

    -- redist25_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_aa_1(DELAY,1187)
    redist25_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_aa_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_aa, xout => redist25_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_aa_1_q, clk => clock, aclr => resetn );

    -- redist24_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_z_1(DELAY,1186)
    redist24_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_z_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_z, xout => redist24_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_z_1_q, clk => clock, aclr => resetn );

    -- redist23_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_y_1(DELAY,1185)
    redist23_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_y_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_y, xout => redist23_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_y_1_q, clk => clock, aclr => resetn );

    -- redist22_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_x_1(DELAY,1184)
    redist22_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_x_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_x, xout => redist22_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_x_1_q, clk => clock, aclr => resetn );

    -- redist21_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_w_1(DELAY,1183)
    redist21_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_w_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_w, xout => redist21_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_w_1_q, clk => clock, aclr => resetn );

    -- redist20_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_v_1(DELAY,1182)
    redist20_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_v_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_v, xout => redist20_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_v_1_q, clk => clock, aclr => resetn );

    -- redist19_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_u_1(DELAY,1181)
    redist19_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_u_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_u, xout => redist19_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_u_1_q, clk => clock, aclr => resetn );

    -- redist18_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_t_1(DELAY,1180)
    redist18_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_t_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_t, xout => redist18_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_t_1_q, clk => clock, aclr => resetn );

    -- redist17_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_s_1(DELAY,1179)
    redist17_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_s_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_s, xout => redist17_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_s_1_q, clk => clock, aclr => resetn );

    -- redist16_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_r_1(DELAY,1178)
    redist16_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_r_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_r, xout => redist16_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_r_1_q, clk => clock, aclr => resetn );

    -- redist15_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_q_1(DELAY,1177)
    redist15_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_q, xout => redist15_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_q_1_q, clk => clock, aclr => resetn );

    -- redist14_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_p_1(DELAY,1176)
    redist14_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_p_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_p, xout => redist14_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_p_1_q, clk => clock, aclr => resetn );

    -- redist13_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_o_1(DELAY,1175)
    redist13_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_o_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_o, xout => redist13_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_o_1_q, clk => clock, aclr => resetn );

    -- redist12_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_n_1(DELAY,1174)
    redist12_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_n_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_n, xout => redist12_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_n_1_q, clk => clock, aclr => resetn );

    -- redist11_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_m_1(DELAY,1173)
    redist11_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_m_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_m, xout => redist11_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_m_1_q, clk => clock, aclr => resetn );

    -- redist10_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_l_1(DELAY,1172)
    redist10_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_l_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_l, xout => redist10_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_l_1_q, clk => clock, aclr => resetn );

    -- redist9_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_k_1(DELAY,1171)
    redist9_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_k_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_k, xout => redist9_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_k_1_q, clk => clock, aclr => resetn );

    -- redist8_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_j_1(DELAY,1170)
    redist8_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_j_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_j, xout => redist8_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_j_1_q, clk => clock, aclr => resetn );

    -- redist7_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_i_1(DELAY,1169)
    redist7_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_i_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_i, xout => redist7_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_i_1_q, clk => clock, aclr => resetn );

    -- redist6_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_h_1(DELAY,1168)
    redist6_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_h_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_h, xout => redist6_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_h_1_q, clk => clock, aclr => resetn );

    -- redist5_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_g_1(DELAY,1167)
    redist5_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_g_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_g, xout => redist5_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_g_1_q, clk => clock, aclr => resetn );

    -- redist4_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_f_1(DELAY,1166)
    redist4_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_f_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_f, xout => redist4_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_f_1_q, clk => clock, aclr => resetn );

    -- redist3_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_e_1(DELAY,1165)
    redist3_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_e_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_e, xout => redist3_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_e_1_q, clk => clock, aclr => resetn );

    -- redist2_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_d_1(DELAY,1164)
    redist2_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_d_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_d, xout => redist2_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_d_1_q, clk => clock, aclr => resetn );

    -- redist1_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_c_1(DELAY,1163)
    redist1_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_c, xout => redist1_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- redist0_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_b_1(DELAY,1162)
    redist0_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_b, xout => redist0_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_b_1_q, clk => clock, aclr => resetn );

    -- i_xor3_i1136_compressed_altera_rand_gen_fn_altera_rand_gen_fn40_xor3_i1136_shuffle_join_x(BITJOIN,445)@10
    i_xor3_i1136_compressed_altera_rand_gen_fn_altera_rand_gen_fn40_xor3_i1136_shuffle_join_x_q <= redist31_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_gg_1_q & redist30_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_ff_1_q & redist29_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_ee_1_q & redist28_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_dd_1_q & redist27_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_cc_1_q & redist26_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_bb_1_q & redist25_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_aa_1_q & redist24_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_z_1_q & redist23_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_y_1_q & redist22_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_x_1_q & redist21_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_w_1_q & redist20_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_v_1_q & redist19_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_u_1_q & redist18_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_t_1_q & redist17_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_s_1_q & redist16_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_r_1_q & redist15_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_q_1_q & redist14_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_p_1_q & redist13_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_o_1_q & redist12_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_n_1_q & redist11_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_m_1_q & redist10_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_l_1_q & redist9_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_k_1_q & redist8_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_j_1_q & redist7_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_i_1_q & redist6_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_h_1_q & redist5_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_g_1_q & redist4_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_f_1_q & redist3_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_e_1_q & redist2_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_d_1_q & redist1_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_c_1_q & redist0_i_xor3_i1136_bitvec_altera_rand_gen_fn_altera_rand_gen_fn39_xor3_i1136_bitvec_select_19_x_merged_bit_select_b_1_q;

    -- leftShiftStage0Idx1Rng4_uid959_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x(BITSELECT,958)@9
    leftShiftStage0Idx1Rng4_uid959_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x_in <= i_acl_pop_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_pop4_altera_rand_gen_fn_out_data_out(27 downto 0);
    leftShiftStage0Idx1Rng4_uid959_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x_b <= leftShiftStage0Idx1Rng4_uid959_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid960_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x(BITJOIN,959)@9
    leftShiftStage0Idx1_uid960_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x_q <= leftShiftStage0Idx1Rng4_uid959_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x_b & i_and9_i17_altera_rand_gen_fn_vt_const_3_q;

    -- leftShiftStage0Idx1Rng2_uid996_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x(BITSELECT,995)@9
    leftShiftStage0Idx1Rng2_uid996_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x_in <= i_acl_pop_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_pop4_altera_rand_gen_fn_out_data_out(29 downto 0);
    leftShiftStage0Idx1Rng2_uid996_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x_b <= leftShiftStage0Idx1Rng2_uid996_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x_in(29 downto 0);

    -- leftShiftStage0Idx1_uid997_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x(BITJOIN,996)@9
    leftShiftStage0Idx1_uid997_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x_q <= leftShiftStage0Idx1Rng2_uid996_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x_b & i_shl5_i13_altera_rand_gen_fn_vt_const_1_q;

    -- leftShiftStage0_uid999_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x(MUX,998)@9
    leftShiftStage0_uid999_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x_s <= VCC_q;
    leftShiftStage0_uid999_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x_combproc: PROCESS (leftShiftStage0_uid999_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x_s, i_acl_pop_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_pop4_altera_rand_gen_fn_out_data_out, leftShiftStage0Idx1_uid997_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid999_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid999_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x_q <= i_acl_pop_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_pop4_altera_rand_gen_fn_out_data_out;
            WHEN "1" => leftShiftStage0_uid999_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x_q <= leftShiftStage0Idx1_uid997_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid999_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shl5_i13_altera_rand_gen_fn_vt_select_31(BITSELECT,895)@9
    i_shl5_i13_altera_rand_gen_fn_vt_select_31_b <= leftShiftStage0_uid999_i_shl5_i13_altera_rand_gen_fn_altera_rand_gen_fn45_shift_x_q(31 downto 2);

    -- i_shl5_i13_altera_rand_gen_fn_vt_join(BITJOIN,894)@9
    i_shl5_i13_altera_rand_gen_fn_vt_join_q <= i_shl5_i13_altera_rand_gen_fn_vt_select_31_b & i_shl5_i13_altera_rand_gen_fn_vt_const_1_q;

    -- i_xor6_i14_altera_rand_gen_fn(LOGICAL,923)@9
    i_xor6_i14_altera_rand_gen_fn_q <= i_shl5_i13_altera_rand_gen_fn_vt_join_q xor i_acl_pop_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_pop4_altera_rand_gen_fn_out_data_out;

    -- i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_vec_1_join_x(BITJOIN,176)@9
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_vec_1_join_x_q <= i_acl_pop_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_pop4_altera_rand_gen_fn_out_data_out & i_xor6_i14_altera_rand_gen_fn_q;

    -- i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select(BITSELECT,1156)@9
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_vec_1_join_x_q(59 downto 0);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_b <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(25 downto 25);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_c <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(26 downto 26);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_d <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(27 downto 27);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_e <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(28 downto 28);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_f <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(29 downto 29);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_g <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(30 downto 30);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_h <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(31 downto 31);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_i <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(35 downto 35);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_j <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(36 downto 36);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_k <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(37 downto 37);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_l <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(38 downto 38);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_m <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(39 downto 39);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_n <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(40 downto 40);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_o <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(41 downto 41);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_p <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(42 downto 42);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_q <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(43 downto 43);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_r <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(44 downto 44);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_s <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(45 downto 45);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_t <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(46 downto 46);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_u <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(47 downto 47);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_v <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(48 downto 48);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_w <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(49 downto 49);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_x <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(50 downto 50);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_y <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(51 downto 51);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_z <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(52 downto 52);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_aa <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(53 downto 53);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_bb <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(54 downto 54);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_cc <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(55 downto 55);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_dd <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(56 downto 56);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_ee <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(57 downto 57);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_ff <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(58 downto 58);
    i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_gg <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_in(59 downto 59);

    -- i_xor12_i2037_compressed_altera_rand_gen_fn_altera_rand_gen_fn48_xor12_i2037_shuffle_join_x(BITJOIN,177)@9
    i_xor12_i2037_compressed_altera_rand_gen_fn_altera_rand_gen_fn48_xor12_i2037_shuffle_join_x_q <= i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_gg & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_ff & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_ee & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_dd & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_cc & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_bb & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_aa & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_z & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_y & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_x & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_w & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_v & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_u & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_t & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_s & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_r & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_q & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_p & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_o & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_n & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_m & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_l & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_k & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_j & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_i & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_h & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_g & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_f & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_e & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_d & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_c & i_xor12_i2037_bitvec_altera_rand_gen_fn_altera_rand_gen_fn47_xor12_i2037_bitvec_select_25_x_merged_bit_select_b;

    -- i_acl_push_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_push4_altera_rand_gen_fn(BLACKBOX,599)@9
    -- out out_feedback_out_4@20000000
    -- out out_feedback_valid_out_4@20000000
    thei_acl_push_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_push4_altera_rand_gen_fn : i_acl_push_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_push4_altera_rand_gen_fn49
    PORT MAP (
        in_data_in => i_xor12_i2037_compressed_altera_rand_gen_fn_altera_rand_gen_fn48_xor12_i2037_shuffle_join_x_q,
        in_feedback_stall_in_4 => i_acl_pop_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_pop4_altera_rand_gen_fn_out_feedback_stall_out_4,
        in_stall_in => GND_q,
        in_valid_in => redist116_sync_in_aunroll_x_in_i_valid_8_q,
        out_feedback_out_4 => i_acl_push_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_push4_altera_rand_gen_fn_out_feedback_out_4,
        out_feedback_valid_out_4 => i_acl_push_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_push4_altera_rand_gen_fn_out_feedback_valid_out_4,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_68997769(CONSTANT,582)
    c_i32_68997769_q <= "00000100000111001101001010001001";

    -- i_acl_pop_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_pop4_altera_rand_gen_fn(BLACKBOX,593)@9
    -- out out_feedback_stall_out_4@20000000
    thei_acl_pop_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_pop4_altera_rand_gen_fn : i_acl_pop_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_pop4_altera_rand_gen_fn43
    PORT MAP (
        in_data_in => c_i32_68997769_q,
        in_dir => redist114_sync_in_aunroll_x_in_c1_eni1_1_8_q,
        in_feedback_in_4 => i_acl_push_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_push4_altera_rand_gen_fn_out_feedback_out_4,
        in_feedback_valid_in_4 => i_acl_push_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_push4_altera_rand_gen_fn_out_feedback_valid_out_4,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist116_sync_in_aunroll_x_in_i_valid_8_q,
        out_data_out => i_acl_pop_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_pop4_altera_rand_gen_fn_out_data_out,
        out_feedback_stall_out_4 => i_acl_pop_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_pop4_altera_rand_gen_fn_out_feedback_stall_out_4,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid962_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x(MUX,961)@9
    leftShiftStage0_uid962_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x_s <= VCC_q;
    leftShiftStage0_uid962_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x_combproc: PROCESS (leftShiftStage0_uid962_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x_s, i_acl_pop_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_pop4_altera_rand_gen_fn_out_data_out, leftShiftStage0Idx1_uid960_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid962_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid962_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x_q <= i_acl_pop_i32_m0_s2_altera_rand_gen_fn_4ia_addr_0_pop4_altera_rand_gen_fn_out_data_out;
            WHEN "1" => leftShiftStage0_uid962_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x_q <= leftShiftStage0Idx1_uid960_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid962_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and9_i17_altera_rand_gen_fn_vt_select_31(BITSELECT,607)@9
    i_and9_i17_altera_rand_gen_fn_vt_select_31_b <= leftShiftStage0_uid962_i_and9_i17_altera_rand_gen_fn_altera_rand_gen_fn46_shift_x_q(31 downto 4);

    -- redist110_i_and9_i17_altera_rand_gen_fn_vt_select_31_b_1(DELAY,1272)
    redist110_i_and9_i17_altera_rand_gen_fn_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_and9_i17_altera_rand_gen_fn_vt_select_31_b, xout => redist110_i_and9_i17_altera_rand_gen_fn_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_and9_i17_altera_rand_gen_fn_vt_join(BITJOIN,606)@10
    i_and9_i17_altera_rand_gen_fn_vt_join_q <= redist110_i_and9_i17_altera_rand_gen_fn_vt_select_31_b_1_q & i_and9_i17_altera_rand_gen_fn_vt_const_3_q;

    -- i_xor23_i31_altera_rand_gen_fn(LOGICAL,916)@10
    i_xor23_i31_altera_rand_gen_fn_q <= i_and9_i17_altera_rand_gen_fn_vt_join_q xor i_xor3_i1136_compressed_altera_rand_gen_fn_altera_rand_gen_fn40_xor3_i1136_shuffle_join_x_q;

    -- i_xor24_i32_altera_rand_gen_fn(LOGICAL,918)@10
    i_xor24_i32_altera_rand_gen_fn_q <= i_xor23_i31_altera_rand_gen_fn_q xor i_xor21_i2938_compressed_altera_rand_gen_fn_altera_rand_gen_fn55_xor21_i2938_shuffle_join_x_q;

    -- rightShiftStage0_uid1055_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x(MUX,1054)@10
    rightShiftStage0_uid1055_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_s <= VCC_q;
    rightShiftStage0_uid1055_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_combproc: PROCESS (rightShiftStage0_uid1055_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_s, i_xor24_i32_altera_rand_gen_fn_q, rightShiftStage0Idx1_uid1053_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1055_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1055_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_q <= i_xor24_i32_altera_rand_gen_fn_q;
            WHEN "1" => rightShiftStage0_uid1055_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_q <= rightShiftStage0Idx1_uid1053_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1055_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1060_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x(MUX,1059)@10
    rightShiftStage1_uid1060_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_s <= VCC_q;
    rightShiftStage1_uid1060_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_combproc: PROCESS (rightShiftStage1_uid1060_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_s, rightShiftStage0_uid1055_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_q, rightShiftStage1Idx1_uid1058_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1060_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1060_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_q <= rightShiftStage0_uid1055_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1060_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_q <= rightShiftStage1Idx1_uid1058_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1060_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr_i2_altera_rand_gen_fn_vt_select_22(BITSELECT,912)@10
    i_shr_i2_altera_rand_gen_fn_vt_select_22_b <= rightShiftStage1_uid1060_i_shr_i2_altera_rand_gen_fn_altera_rand_gen_fn61_shift_x_q(22 downto 0);

    -- i_shr_i2_altera_rand_gen_fn_vt_join(BITJOIN,911)@10
    i_shr_i2_altera_rand_gen_fn_vt_join_q <= i_shr_i2_altera_rand_gen_fn_vt_const_31_q & i_shr_i2_altera_rand_gen_fn_vt_select_22_b;

    -- i_xor_i339_altera_rand_gen_fn_BitSelect_for_b(BITSELECT,1154)@10
    i_xor_i339_altera_rand_gen_fn_BitSelect_for_b_b <= i_shr_i2_altera_rand_gen_fn_vt_join_q(22 downto 0);

    -- i_xor_i339_altera_rand_gen_fn_join(BITJOIN,1155)@10
    i_xor_i339_altera_rand_gen_fn_join_q <= GND_q & i_xor_i339_altera_rand_gen_fn_BitSelect_for_a_b & i_xor_i339_altera_rand_gen_fn_BitSelect_for_b_b;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,513)@10
    out_c1_exi1_0 <= GND_q;
    out_c1_exi1_1 <= i_xor_i339_altera_rand_gen_fn_join_q;
    out_o_valid <= redist117_sync_in_aunroll_x_in_i_valid_9_q;

END normal;
