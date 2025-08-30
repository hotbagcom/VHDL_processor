-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Mar 19 11:28:36 2025
-- Host        : Arif running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/arify/WorkSpace/VHDL_processor/t02_word_RiscV_processor_V3_w_tb/t02_word_RiscV_processor_V3_w_tb.sim/sim_1/impl/func/xsim/t02_Word_tb_func_impl.vhd
-- Design      : t02_Word_top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity debounce_module is
  port (
    LED_top_OBUF : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \input_circle_status_reg[7]_0\ : out STD_LOGIC;
    \input_circle_status_reg[2]_0\ : out STD_LOGIC;
    \input_circle_status_reg[3]_0\ : out STD_LOGIC;
    \input_circle_status_reg[1]_0\ : out STD_LOGIC;
    \input_circle_status_reg[7]_1\ : out STD_LOGIC;
    \input_circle_status_reg[0]_0\ : out STD_LOGIC;
    \input_circle_status_reg[3]_1\ : out STD_LOGIC;
    \input_circle_status_reg[7]_2\ : out STD_LOGIC;
    \input_circle_status_reg[7]_3\ : out STD_LOGIC;
    \input_circle_status_reg[1]_1\ : out STD_LOGIC;
    \input_circle_status_reg[1]_2\ : out STD_LOGIC;
    \input_circle_status_reg[2]_1\ : out STD_LOGIC;
    \input_circle_status_reg[7]_4\ : out STD_LOGIC;
    \input_circle_status_reg[2]_2\ : out STD_LOGIC;
    \input_circle_status_reg[1]_3\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    userbutton_updown : out STD_LOGIC_VECTOR ( 1 downto 0 );
    userbutton_msblsb : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_f7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \SEGMENT7_top[7]_i_15_0\ : in STD_LOGIC;
    \LED_top_OBUF[0]_inst_i_36_0\ : in STD_LOGIC;
    \LED_top_OBUF[0]_inst_i_36_1\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_23_0\ : in STD_LOGIC;
    \LED_top_OBUF[0]_inst_i_1_0\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_23_1\ : in STD_LOGIC;
    \LED_top_OBUF[0]_inst_i_2_0\ : in STD_LOGIC;
    \LED_top_OBUF[0]_inst_i_2_1\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_11_0\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_11_1\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_9_0\ : in STD_LOGIC;
    \LED_top_OBUF[2]_inst_i_2_0\ : in STD_LOGIC;
    \LED_top_OBUF[2]_inst_i_2_1\ : in STD_LOGIC;
    \LED_top_OBUF[2]_inst_i_10_0\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_8_0\ : in STD_LOGIC;
    \LED_top_OBUF[3]_inst_i_2_0\ : in STD_LOGIC;
    \LED_top_OBUF[3]_inst_i_2_1\ : in STD_LOGIC;
    \LED_top_OBUF[3]_inst_i_9_0\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_13_0\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_1_0\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_28_0\ : in STD_LOGIC;
    \LED_top_OBUF[5]_inst_i_14_0\ : in STD_LOGIC;
    \LED_top_OBUF[5]_inst_i_4_0\ : in STD_LOGIC;
    \LED_top_OBUF[5]_inst_i_5_0\ : in STD_LOGIC;
    \LED_top_OBUF[6]_inst_i_5_0\ : in STD_LOGIC;
    \LED_top_OBUF[6]_inst_i_4_0\ : in STD_LOGIC;
    \LED_top_OBUF[7]_inst_i_1_0\ : in STD_LOGIC;
    \LED_top_OBUF[7]_inst_i_5_0\ : in STD_LOGIC;
    \LED_top_OBUF[7]_inst_i_4_0\ : in STD_LOGIC;
    \LED_top_OBUF[8]_inst_i_1_0\ : in STD_LOGIC;
    \LED_top_OBUF[8]_inst_i_2_0\ : in STD_LOGIC;
    \LED_top_OBUF[8]_inst_i_4_0\ : in STD_LOGIC;
    \LED_top_OBUF[9]_inst_i_1_0\ : in STD_LOGIC;
    \LED_top_OBUF[9]_inst_i_2_0\ : in STD_LOGIC;
    \LED_top_OBUF[9]_inst_i_4_0\ : in STD_LOGIC;
    \LED_top_OBUF[10]_inst_i_1_0\ : in STD_LOGIC;
    \LED_top_OBUF[10]_inst_i_2_0\ : in STD_LOGIC;
    \LED_top_OBUF[10]_inst_i_4_0\ : in STD_LOGIC;
    \LED_top_OBUF[11]_inst_i_1_0\ : in STD_LOGIC;
    \LED_top_OBUF[11]_inst_i_2_0\ : in STD_LOGIC;
    \LED_top_OBUF[11]_inst_i_4_0\ : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_1_0\ : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_4_0\ : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_3_0\ : in STD_LOGIC;
    \LED_top_OBUF[13]_inst_i_1_0\ : in STD_LOGIC;
    \LED_top_OBUF[13]_inst_i_4_0\ : in STD_LOGIC;
    \LED_top_OBUF[13]_inst_i_5_0\ : in STD_LOGIC;
    \LED_top_OBUF[14]_inst_i_1_0\ : in STD_LOGIC;
    \LED_top_OBUF[14]_inst_i_5_0\ : in STD_LOGIC;
    \LED_top_OBUF[14]_inst_i_4_0\ : in STD_LOGIC;
    \LED_top_OBUF[15]_inst_i_6_0\ : in STD_LOGIC;
    \LED_top_OBUF[15]_inst_i_5_0\ : in STD_LOGIC;
    S_alu_data_in1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    n_0_1058_BUFG_inst_n_1 : in STD_LOGIC;
    \LED_top_OBUF[0]_inst_i_2_2\ : in STD_LOGIC;
    \LED_top_OBUF[0]_inst_i_2_3\ : in STD_LOGIC;
    S_cnrtl_alu_data_srce_slkt : in STD_LOGIC;
    S_f3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \LED_top_OBUF[8]_inst_i_5_0\ : in STD_LOGIC;
    \LED_top_OBUF[8]_inst_i_5_1\ : in STD_LOGIC;
    \LED_top_OBUF[8]_inst_i_2_1\ : in STD_LOGIC;
    \LED_top_OBUF[9]_inst_i_5_0\ : in STD_LOGIC;
    \LED_top_OBUF[9]_inst_i_2_1\ : in STD_LOGIC;
    \LED_top_OBUF[9]_inst_i_5_1\ : in STD_LOGIC;
    \LED_top_OBUF[10]_inst_i_3_0\ : in STD_LOGIC;
    \LED_top_OBUF[10]_inst_i_2_1\ : in STD_LOGIC;
    \LED_top_OBUF[10]_inst_i_5_0\ : in STD_LOGIC;
    reg_source0_out0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \LED_top_OBUF[10]_inst_i_4_1\ : in STD_LOGIC;
    \LED_top_OBUF[11]_inst_i_5_0\ : in STD_LOGIC;
    \LED_top_OBUF[11]_inst_i_3_0\ : in STD_LOGIC;
    \LED_top_OBUF[11]_inst_i_2_1\ : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_4_1\ : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_2_0\ : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_2_1\ : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_2_2\ : in STD_LOGIC;
    \LED_top_OBUF[13]_inst_i_5_1\ : in STD_LOGIC;
    \LED_top_OBUF[13]_inst_i_3_0\ : in STD_LOGIC;
    \LED_top_OBUF[13]_inst_i_5_2\ : in STD_LOGIC;
    \LED_top_OBUF[13]_inst_i_1_1\ : in STD_LOGIC;
    \LED_top_OBUF[14]_inst_i_5_1\ : in STD_LOGIC;
    \LED_top_OBUF[14]_inst_i_3_0\ : in STD_LOGIC;
    \LED_top_OBUF[14]_inst_i_5_2\ : in STD_LOGIC;
    \LED_top_OBUF[14]_inst_i_1_1\ : in STD_LOGIC;
    \LED_top_OBUF[15]_inst_i_3_0\ : in STD_LOGIC;
    \LED_top_OBUF[15]_inst_i_6_1\ : in STD_LOGIC;
    \LED_top_OBUF[15]_inst_i_1_0\ : in STD_LOGIC;
    \LED_top_OBUF[15]_inst_i_1_1\ : in STD_LOGIC;
    \LED_top_OBUF[7]_inst_i_2_0\ : in STD_LOGIC;
    \LED_top_OBUF[7]_inst_i_3_0\ : in STD_LOGIC;
    \LED_top_OBUF[6]_inst_i_3_0\ : in STD_LOGIC;
    \LED_top_OBUF[6]_inst_i_1_0\ : in STD_LOGIC;
    \LED_top_OBUF[6]_inst_i_2_0\ : in STD_LOGIC;
    \LED_top_OBUF[5]_inst_i_5_1\ : in STD_LOGIC;
    \LED_top_OBUF[5]_inst_i_2_0\ : in STD_LOGIC;
    \LED_top_OBUF[5]_inst_i_1_0\ : in STD_LOGIC;
    \LED_top_OBUF[5]_inst_i_3_0\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_13_0\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_4_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \LED_top_OBUF[4]_inst_i_2_0\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_6_0\ : in STD_LOGIC;
    \LED_top_OBUF[3]_inst_i_8_0\ : in STD_LOGIC;
    \LED_top_OBUF[3]_inst_i_2_2\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_8_1\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_26_0\ : in STD_LOGIC;
    \LED_top_OBUF[3]_inst_i_2_3\ : in STD_LOGIC;
    \LED_top_OBUF[2]_inst_i_8_0\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_17_0\ : in STD_LOGIC;
    \LED_top_OBUF[2]_inst_i_24_0\ : in STD_LOGIC;
    \LED_top_OBUF[2]_inst_i_2_2\ : in STD_LOGIC;
    \LED_top_OBUF[1]_inst_i_7_0\ : in STD_LOGIC;
    \LED_top_OBUF[1]_inst_i_8_0\ : in STD_LOGIC;
    \LED_top_OBUF[1]_inst_i_20_0\ : in STD_LOGIC;
    \LED_top_OBUF[1]_inst_i_23_0\ : in STD_LOGIC;
    \LED_top_OBUF[1]_inst_i_8_1\ : in STD_LOGIC;
    \LED_top_OBUF[0]_inst_i_3_0\ : in STD_LOGIC;
    \LED_top_OBUF[0]_inst_i_31_0\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_22_0\ : in STD_LOGIC;
    \LED_top_OBUF[1]_inst_i_20_1\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_43_0\ : in STD_LOGIC;
    \LED_top_OBUF[0]_inst_i_2_4\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_47_0\ : in STD_LOGIC;
    S_imm_20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_RST : in STD_LOGIC;
    \LED_top_OBUF[0]_inst_i_37_0\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_3_0\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_13_1\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_26_1\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_26_2\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_13_2\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_4_1\ : in STD_LOGIC;
    \LED_top_OBUF[5]_inst_i_11_0\ : in STD_LOGIC;
    \LED_top_OBUF[6]_inst_i_10_0\ : in STD_LOGIC;
    \LED_top_OBUF[5]_inst_i_1_1\ : in STD_LOGIC;
    \LED_top_OBUF[6]_inst_i_1_1\ : in STD_LOGIC;
    alubrnch_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \LED_top_OBUF[2]_inst_i_1_0\ : in STD_LOGIC;
    \LED_top_OBUF[3]_inst_i_1_0\ : in STD_LOGIC;
    \LED_top_OBUF[7]_inst_i_1_1\ : in STD_LOGIC;
    \LED_top_OBUF[8]_inst_i_1_1\ : in STD_LOGIC;
    \LED_top_OBUF[9]_inst_i_1_1\ : in STD_LOGIC;
    \LED_top_OBUF[11]_inst_i_1_1\ : in STD_LOGIC;
    upordown : in STD_LOGIC;
    \LED_top_OBUF[13]_inst_i_1_2\ : in STD_LOGIC;
    \LED_top_OBUF[14]_inst_i_1_2\ : in STD_LOGIC;
    \LED_top_OBUF[15]_inst_i_1_2\ : in STD_LOGIC;
    \LED_top_OBUF[3]_inst_i_10_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \LED_top_OBUF[8]_inst_i_8_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \SEGMENT7_top[7]_i_25_0\ : in STD_LOGIC;
    \LED_top_OBUF[7]_inst_i_2_1\ : in STD_LOGIC;
    \LED_top_OBUF[9]_inst_i_2_2\ : in STD_LOGIC;
    \LED_top_OBUF[13]_inst_i_3_1\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_26_3\ : in STD_LOGIC;
    \LED_top_OBUF[3]_inst_i_10_1\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_29_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \LED_top_OBUF[2]_inst_i_10_1\ : in STD_LOGIC;
    \LED_top_OBUF[3]_inst_i_9_1\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_29_1\ : in STD_LOGIC;
    \LED_top_OBUF[5]_inst_i_4_1\ : in STD_LOGIC;
    \LED_top_OBUF[6]_inst_i_4_1\ : in STD_LOGIC;
    \LED_top_OBUF[7]_inst_i_4_1\ : in STD_LOGIC;
    \LED_top_OBUF[8]_inst_i_4_1\ : in STD_LOGIC;
    \LED_top_OBUF[9]_inst_i_4_1\ : in STD_LOGIC;
    \LED_top_OBUF[10]_inst_i_4_2\ : in STD_LOGIC;
    \LED_top_OBUF[11]_inst_i_4_1\ : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_3_1\ : in STD_LOGIC;
    \LED_top_OBUF[13]_inst_i_4_1\ : in STD_LOGIC;
    \LED_top_OBUF[14]_inst_i_4_1\ : in STD_LOGIC;
    \LED_top_OBUF[15]_inst_i_5_1\ : in STD_LOGIC;
    \LED_top_OBUF[5]_inst_i_14_1\ : in STD_LOGIC;
    \LED_top_OBUF[2]_inst_i_2_3\ : in STD_LOGIC;
    \LED_top_OBUF[15]_inst_i_6_2\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \LED_top_OBUF[3]_inst_i_10_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \LED_top_OBUF[2]_inst_i_9_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \LED_top_OBUF[0]_inst_i_3_1\ : in STD_LOGIC;
    \LED_top_OBUF[0]_inst_i_31_1\ : in STD_LOGIC;
    reg_source1_out : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_alu_flag : in STD_LOGIC_VECTOR ( 0 to 0 );
    \LED_top_OBUF[0]_inst_i_2_5\ : in STD_LOGIC;
    \LED_top_OBUF[1]_inst_i_4_0\ : in STD_LOGIC;
    \LED_top_OBUF[2]_inst_i_4_0\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_14_0\ : in STD_LOGIC;
    \LED_top_OBUF[7]_inst_i_5_1\ : in STD_LOGIC;
    \LED_top_OBUF[9]_inst_i_5_2\ : in STD_LOGIC;
    \LED_top_OBUF[9]_inst_i_5_3\ : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_4_2\ : in STD_LOGIC;
    sevenouter4index_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \LED_top_OBUF[0]_inst_i_5_0\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_13_3\ : in STD_LOGIC;
    \LED_top_OBUF[8]_inst_i_1_2\ : in STD_LOGIC;
    \LED_top_OBUF[8]_inst_i_5_2\ : in STD_LOGIC;
    \LED_top_OBUF[9]_inst_i_1_2\ : in STD_LOGIC;
    \LED_top_OBUF[10]_inst_i_5_1\ : in STD_LOGIC;
    \LED_top_OBUF[11]_inst_i_5_1\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_6_1\ : in STD_LOGIC;
    \LED_top_OBUF[5]_inst_i_3_1\ : in STD_LOGIC;
    \LED_top_OBUF[6]_inst_i_2_1\ : in STD_LOGIC;
    \LED_top_OBUF[8]_inst_i_2_2\ : in STD_LOGIC;
    \LED_top_OBUF[10]_inst_i_2_2\ : in STD_LOGIC;
    \LED_top_OBUF[11]_inst_i_2_2\ : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_2_3\ : in STD_LOGIC;
    \LED_top_OBUF[14]_inst_i_3_1\ : in STD_LOGIC;
    \LED_top_OBUF[15]_inst_i_3_1\ : in STD_LOGIC;
    \LED_top_OBUF[8]_inst_i_5_3\ : in STD_LOGIC;
    \LED_top_OBUF[10]_inst_i_5_2\ : in STD_LOGIC;
    \LED_top_OBUF[11]_inst_i_5_2\ : in STD_LOGIC;
    \LED_top_OBUF[3]_inst_i_8_1\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_2_1\ : in STD_LOGIC;
    \LED_top_OBUF[5]_inst_i_2_1\ : in STD_LOGIC;
    \LED_top_OBUF[6]_inst_i_3_1\ : in STD_LOGIC;
    \LED_top_OBUF[7]_inst_i_3_1\ : in STD_LOGIC;
    \LED_top_OBUF[8]_inst_i_3_0\ : in STD_LOGIC;
    \LED_top_OBUF[9]_inst_i_3_0\ : in STD_LOGIC;
    \LED_top_OBUF[10]_inst_i_3_1\ : in STD_LOGIC;
    \LED_top_OBUF[11]_inst_i_3_1\ : in STD_LOGIC;
    \LED_top_OBUF[13]_inst_i_2_0\ : in STD_LOGIC;
    \LED_top_OBUF[14]_inst_i_2_0\ : in STD_LOGIC;
    \LED_top_OBUF[15]_inst_i_4_0\ : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_5_0\ : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_5_1\ : in STD_LOGIC;
    BTN_top_IBUF : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK_top_IBUF_BUFG : in STD_LOGIC;
    SW_top_IBUF : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end debounce_module;

architecture STRUCTURE of debounce_module is
  signal \^led_top_obuf\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \LED_top_OBUF[0]_inst_i_10_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_11_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_14_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_15_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_16_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_17_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_24_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_25_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_26_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_27_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_2_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_31_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_32_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_33_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_35_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_36_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_37_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_38_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_39_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_3_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_40_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_45_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_46_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_47_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_48_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_4_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_50_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_51_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_52_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_53_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_54_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_55_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_56_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_57_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_5_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_6_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_7_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_8_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_9_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[10]_inst_i_10_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[10]_inst_i_12_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[10]_inst_i_13_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[10]_inst_i_14_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[10]_inst_i_15_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[10]_inst_i_16_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[10]_inst_i_18_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[10]_inst_i_23_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[10]_inst_i_26_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[10]_inst_i_2_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[10]_inst_i_3_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[10]_inst_i_4_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[10]_inst_i_5_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[10]_inst_i_6_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[10]_inst_i_7_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[10]_inst_i_8_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[10]_inst_i_9_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[11]_inst_i_10_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[11]_inst_i_12_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[11]_inst_i_14_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[11]_inst_i_15_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[11]_inst_i_17_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[11]_inst_i_18_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[11]_inst_i_19_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[11]_inst_i_24_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[11]_inst_i_2_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[11]_inst_i_3_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[11]_inst_i_4_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[11]_inst_i_5_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[11]_inst_i_6_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[11]_inst_i_7_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[11]_inst_i_8_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[11]_inst_i_9_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[12]_inst_i_10_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[12]_inst_i_11_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[12]_inst_i_13_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[12]_inst_i_14_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[12]_inst_i_16_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[12]_inst_i_18_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[12]_inst_i_22_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[12]_inst_i_2_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[12]_inst_i_32_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[12]_inst_i_33_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[12]_inst_i_3_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[12]_inst_i_4_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[12]_inst_i_5_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[12]_inst_i_6_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[12]_inst_i_7_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[13]_inst_i_10_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[13]_inst_i_11_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[13]_inst_i_12_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[13]_inst_i_13_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[13]_inst_i_16_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[13]_inst_i_17_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[13]_inst_i_2_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[13]_inst_i_3_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[13]_inst_i_4_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[13]_inst_i_5_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[13]_inst_i_8_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[13]_inst_i_9_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[14]_inst_i_10_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[14]_inst_i_11_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[14]_inst_i_13_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[14]_inst_i_14_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[14]_inst_i_16_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[14]_inst_i_17_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[14]_inst_i_2_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[14]_inst_i_3_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[14]_inst_i_4_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[14]_inst_i_5_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[14]_inst_i_8_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[14]_inst_i_9_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_10_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_14_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_15_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_16_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_18_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_19_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_20_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_21_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_22_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_23_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_24_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_27_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_2_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_30_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_33_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_38_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_39_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_3_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_41_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_44_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_45_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_46_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_47_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_48_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_4_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_5_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_6_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_7_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_8_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[15]_inst_i_9_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_10_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_11_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_12_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_15_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_16_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_17_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_18_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_19_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_20_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_22_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_23_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_24_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_27_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_28_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_2_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_35_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_37_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_3_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_4_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_5_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_6_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_7_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_8_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_9_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_10_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_12_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_13_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_14_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_15_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_23_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_24_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_25_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_26_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_27_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_28_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_29_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_2_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_31_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_34_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_35_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_36_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_37_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_38_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_3_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_4_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_5_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_6_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_7_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_8_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[2]_inst_i_9_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_10_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_12_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_13_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_14_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_15_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_16_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_24_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_25_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_26_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_27_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_28_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_29_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_2_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_30_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_32_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_33_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_35_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_3_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_4_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_5_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_6_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_7_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_8_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[3]_inst_i_9_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[4]_inst_i_12_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[4]_inst_i_13_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[4]_inst_i_14_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[4]_inst_i_15_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[4]_inst_i_16_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[4]_inst_i_19_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[4]_inst_i_20_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[4]_inst_i_24_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[4]_inst_i_26_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[4]_inst_i_27_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[4]_inst_i_28_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[4]_inst_i_2_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[4]_inst_i_35_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[4]_inst_i_36_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[4]_inst_i_3_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[4]_inst_i_4_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[4]_inst_i_5_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[4]_inst_i_6_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[4]_inst_i_7_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[4]_inst_i_8_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[5]_inst_i_10_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[5]_inst_i_11_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[5]_inst_i_12_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[5]_inst_i_14_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[5]_inst_i_15_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[5]_inst_i_16_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[5]_inst_i_17_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[5]_inst_i_25_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[5]_inst_i_2_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[5]_inst_i_3_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[5]_inst_i_4_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[5]_inst_i_5_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[5]_inst_i_7_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[5]_inst_i_8_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[5]_inst_i_9_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_10_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_11_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_12_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_13_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_15_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_16_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_17_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_18_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_19_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_20_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_21_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_27_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_28_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_2_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_31_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_33_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_34_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_35_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_36_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_37_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_3_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_40_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_41_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_42_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_4_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_5_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_6_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_7_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[6]_inst_i_8_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[7]_inst_i_10_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[7]_inst_i_12_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[7]_inst_i_14_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[7]_inst_i_15_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[7]_inst_i_17_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[7]_inst_i_18_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[7]_inst_i_26_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[7]_inst_i_2_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[7]_inst_i_3_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[7]_inst_i_4_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[7]_inst_i_5_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[7]_inst_i_6_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[7]_inst_i_7_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[7]_inst_i_8_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[7]_inst_i_9_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[8]_inst_i_12_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[8]_inst_i_14_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[8]_inst_i_15_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[8]_inst_i_17_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[8]_inst_i_2_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[8]_inst_i_3_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[8]_inst_i_4_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[8]_inst_i_5_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[8]_inst_i_6_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[8]_inst_i_7_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[8]_inst_i_8_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[8]_inst_i_9_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_12_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_13_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_15_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_17_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_19_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_21_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_29_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_2_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_30_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_31_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_32_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_33_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_34_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_35_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_3_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_4_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_5_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_6_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_7_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_8_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[9]_inst_i_9_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[1]_i_4_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[1]_i_5_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[1]_i_6_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[1]_i_7_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[2]_i_4_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[2]_i_5_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[2]_i_6_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[2]_i_7_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[3]_i_4_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[3]_i_5_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[3]_i_6_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[3]_i_7_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[4]_i_4_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[4]_i_5_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[4]_i_6_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[4]_i_7_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[5]_i_4_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[5]_i_5_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[5]_i_6_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[5]_i_7_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[6]_i_4_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[6]_i_5_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[6]_i_6_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[6]_i_7_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_10_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_11_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_12_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_13_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_14_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_15_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_16_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_17_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_18_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_19_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_20_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_21_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_22_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_23_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_24_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_25_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_26_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_27_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_28_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_29_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_30_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_31_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_32_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_34_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_35_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_36_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_38_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_39_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_40_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_41_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_42_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_43_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_44_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_45_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_46_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_47_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_48_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_49_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_4_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_51_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_57_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_59_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_5_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_60_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_61_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_62_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_63_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_65_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_6_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_7_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_8_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_9_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top_reg[1]_i_2_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top_reg[1]_i_3_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top_reg[2]_i_2_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top_reg[2]_i_3_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top_reg[3]_i_3_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top_reg[4]_i_3_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top_reg[5]_i_2_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top_reg[5]_i_3_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top_reg[6]_i_2_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top_reg[6]_i_3_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top_reg[7]_i_3_n_1\ : STD_LOGIC;
  signal \cycle_counter[0]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_counter[4]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_counter[4]_i_2_n_1\ : STD_LOGIC;
  signal cycle_counter_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \debounce_cntr[0]_i_1_n_1\ : STD_LOGIC;
  signal \debounce_cntr[0]_i_3_n_1\ : STD_LOGIC;
  signal \debounce_cntr[0]_i_4_n_1\ : STD_LOGIC;
  signal \debounce_cntr[0]_i_5_n_1\ : STD_LOGIC;
  signal \debounce_cntr[0]_i_6_n_1\ : STD_LOGIC;
  signal \debounce_cntr[12]_i_2_n_1\ : STD_LOGIC;
  signal \debounce_cntr[12]_i_3_n_1\ : STD_LOGIC;
  signal \debounce_cntr[12]_i_4_n_1\ : STD_LOGIC;
  signal \debounce_cntr[12]_i_5_n_1\ : STD_LOGIC;
  signal \debounce_cntr[16]_i_2_n_1\ : STD_LOGIC;
  signal \debounce_cntr[16]_i_3_n_1\ : STD_LOGIC;
  signal \debounce_cntr[16]_i_4_n_1\ : STD_LOGIC;
  signal \debounce_cntr[16]_i_5_n_1\ : STD_LOGIC;
  signal \debounce_cntr[4]_i_2_n_1\ : STD_LOGIC;
  signal \debounce_cntr[4]_i_3_n_1\ : STD_LOGIC;
  signal \debounce_cntr[4]_i_4_n_1\ : STD_LOGIC;
  signal \debounce_cntr[4]_i_5_n_1\ : STD_LOGIC;
  signal \debounce_cntr[8]_i_2_n_1\ : STD_LOGIC;
  signal \debounce_cntr[8]_i_3_n_1\ : STD_LOGIC;
  signal \debounce_cntr[8]_i_4_n_1\ : STD_LOGIC;
  signal \debounce_cntr[8]_i_5_n_1\ : STD_LOGIC;
  signal debounce_cntr_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \debounce_cntr_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \debounce_cntr_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \debounce_cntr_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \debounce_cntr_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \debounce_cntr_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \debounce_cntr_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \debounce_cntr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \debounce_cntr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \debounce_cntr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \debounce_cntr_reg[12]_i_1_n_8\ : STD_LOGIC;
  signal \debounce_cntr_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \debounce_cntr_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \debounce_cntr_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \debounce_cntr_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \debounce_cntr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \debounce_cntr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \debounce_cntr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \debounce_cntr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \debounce_cntr_reg[4]_i_1_n_8\ : STD_LOGIC;
  signal \debounce_cntr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \debounce_cntr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \debounce_cntr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \debounce_cntr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \debounce_cntr_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal input_circle_status1 : STD_LOGIC;
  signal \input_circle_status[0]_i_1_n_1\ : STD_LOGIC;
  signal \input_circle_status[10]_i_1_n_1\ : STD_LOGIC;
  signal \input_circle_status[11]_i_1_n_1\ : STD_LOGIC;
  signal \input_circle_status[11]_i_2_n_1\ : STD_LOGIC;
  signal \input_circle_status[12]_i_1_n_1\ : STD_LOGIC;
  signal \input_circle_status[12]_i_2_n_1\ : STD_LOGIC;
  signal \input_circle_status[13]_i_1_n_1\ : STD_LOGIC;
  signal \input_circle_status[13]_i_2_n_1\ : STD_LOGIC;
  signal \input_circle_status[14]_i_1_n_1\ : STD_LOGIC;
  signal \input_circle_status[14]_i_2_n_1\ : STD_LOGIC;
  signal \input_circle_status[14]_i_3_n_1\ : STD_LOGIC;
  signal \input_circle_status[15]_i_1_n_1\ : STD_LOGIC;
  signal \input_circle_status[15]_i_2_n_1\ : STD_LOGIC;
  signal \input_circle_status[17]_i_1_n_1\ : STD_LOGIC;
  signal \input_circle_status[17]_i_2_n_1\ : STD_LOGIC;
  signal \input_circle_status[18]_i_10_n_1\ : STD_LOGIC;
  signal \input_circle_status[18]_i_11_n_1\ : STD_LOGIC;
  signal \input_circle_status[18]_i_12_n_1\ : STD_LOGIC;
  signal \input_circle_status[18]_i_1_n_1\ : STD_LOGIC;
  signal \input_circle_status[18]_i_3_n_1\ : STD_LOGIC;
  signal \input_circle_status[18]_i_4_n_1\ : STD_LOGIC;
  signal \input_circle_status[18]_i_5_n_1\ : STD_LOGIC;
  signal \input_circle_status[18]_i_9_n_1\ : STD_LOGIC;
  signal \input_circle_status[1]_i_1_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_10_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_12_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_13_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_14_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_15_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_16_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_17_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_18_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_19_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_1_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_21_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_22_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_23_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_24_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_25_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_26_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_27_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_28_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_29_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_30_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_31_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_32_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_33_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_34_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_5_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_6_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_7_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_8_n_1\ : STD_LOGIC;
  signal \input_circle_status[20]_i_9_n_1\ : STD_LOGIC;
  signal \input_circle_status[2]_i_1_n_1\ : STD_LOGIC;
  signal \input_circle_status[3]_i_1_n_1\ : STD_LOGIC;
  signal \input_circle_status[4]_i_1_n_1\ : STD_LOGIC;
  signal \input_circle_status[5]_i_1_n_1\ : STD_LOGIC;
  signal \input_circle_status[6]_i_1_n_1\ : STD_LOGIC;
  signal \input_circle_status[7]_i_1_n_1\ : STD_LOGIC;
  signal \input_circle_status[7]_i_2_n_1\ : STD_LOGIC;
  signal \input_circle_status[8]_i_1_n_1\ : STD_LOGIC;
  signal \input_circle_status[8]_i_2_n_1\ : STD_LOGIC;
  signal \input_circle_status[9]_i_1_n_1\ : STD_LOGIC;
  signal \^input_circle_status_reg[0]_0\ : STD_LOGIC;
  signal \input_circle_status_reg[18]_i_6_n_1\ : STD_LOGIC;
  signal \input_circle_status_reg[18]_i_7_n_1\ : STD_LOGIC;
  signal \input_circle_status_reg[18]_i_8_n_1\ : STD_LOGIC;
  signal \^input_circle_status_reg[1]_0\ : STD_LOGIC;
  signal \^input_circle_status_reg[1]_1\ : STD_LOGIC;
  signal \^input_circle_status_reg[1]_2\ : STD_LOGIC;
  signal \^input_circle_status_reg[1]_3\ : STD_LOGIC;
  signal \input_circle_status_reg[20]_i_11_n_1\ : STD_LOGIC;
  signal \input_circle_status_reg[20]_i_20_n_1\ : STD_LOGIC;
  signal \input_circle_status_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \input_circle_status_reg[20]_i_3_n_3\ : STD_LOGIC;
  signal \input_circle_status_reg[20]_i_4_n_1\ : STD_LOGIC;
  signal \^input_circle_status_reg[2]_0\ : STD_LOGIC;
  signal \^input_circle_status_reg[2]_1\ : STD_LOGIC;
  signal \^input_circle_status_reg[2]_2\ : STD_LOGIC;
  signal \^input_circle_status_reg[3]_0\ : STD_LOGIC;
  signal \^input_circle_status_reg[3]_1\ : STD_LOGIC;
  signal \^input_circle_status_reg[7]_0\ : STD_LOGIC;
  signal \^input_circle_status_reg[7]_1\ : STD_LOGIC;
  signal \^input_circle_status_reg[7]_2\ : STD_LOGIC;
  signal \^input_circle_status_reg[7]_3\ : STD_LOGIC;
  signal \^input_circle_status_reg[7]_4\ : STD_LOGIC;
  signal \input_circle_status_reg_n_1_[4]\ : STD_LOGIC;
  signal \input_circle_status_reg_n_1_[5]\ : STD_LOGIC;
  signal \input_circle_status_reg_n_1_[6]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^userbutton_msblsb\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^userbutton_updown\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal usersw_msb : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_debounce_cntr_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_debounce_cntr_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_debounce_cntr_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_debounce_cntr_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_debounce_cntr_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_input_circle_status_reg[20]_i_11_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_input_circle_status_reg[20]_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_input_circle_status_reg[20]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_input_circle_status_reg[20]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_input_circle_status_reg[20]_i_20_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_input_circle_status_reg[20]_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_input_circle_status_reg[20]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_input_circle_status_reg[20]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_input_circle_status_reg[20]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_input_circle_status_reg[20]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute \PinAttr:I0:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I0:HOLD_DETOUR\ of \LED_top_OBUF[6]_inst_i_17\ : label is 192;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cycle_counter[2]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \cycle_counter[3]_i_1\ : label is "soft_lutpair111";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \debounce_cntr_reg[0]_i_2\ : label is 11;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \debounce_cntr_reg[0]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \debounce_cntr_reg[12]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \debounce_cntr_reg[12]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \debounce_cntr_reg[16]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \debounce_cntr_reg[16]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \debounce_cntr_reg[4]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \debounce_cntr_reg[4]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \debounce_cntr_reg[8]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \debounce_cntr_reg[8]_i_1\ : label is "SWEEP";
  attribute \PinAttr:I3:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I3:HOLD_DETOUR\ of \input_circle_status[10]_i_1\ : label is 192;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \input_circle_status_reg[20]_i_11\ : label is 11;
  attribute OPT_MODIFIED of \input_circle_status_reg[20]_i_11\ : label is "SWEEP";
  attribute OPT_MODIFIED of \input_circle_status_reg[20]_i_2\ : label is "SWEEP";
  attribute COMPARATOR_THRESHOLD of \input_circle_status_reg[20]_i_20\ : label is 11;
  attribute OPT_MODIFIED of \input_circle_status_reg[20]_i_20\ : label is "SWEEP";
  attribute COMPARATOR_THRESHOLD of \input_circle_status_reg[20]_i_3\ : label is 11;
  attribute OPT_MODIFIED of \input_circle_status_reg[20]_i_3\ : label is "SWEEP";
  attribute OPT_MODIFIED of \input_circle_status_reg[20]_i_4\ : label is "SWEEP";
begin
  LED_top_OBUF(15 downto 0) <= \^led_top_obuf\(15 downto 0);
  \input_circle_status_reg[0]_0\ <= \^input_circle_status_reg[0]_0\;
  \input_circle_status_reg[1]_0\ <= \^input_circle_status_reg[1]_0\;
  \input_circle_status_reg[1]_1\ <= \^input_circle_status_reg[1]_1\;
  \input_circle_status_reg[1]_2\ <= \^input_circle_status_reg[1]_2\;
  \input_circle_status_reg[1]_3\ <= \^input_circle_status_reg[1]_3\;
  \input_circle_status_reg[2]_0\ <= \^input_circle_status_reg[2]_0\;
  \input_circle_status_reg[2]_1\ <= \^input_circle_status_reg[2]_1\;
  \input_circle_status_reg[2]_2\ <= \^input_circle_status_reg[2]_2\;
  \input_circle_status_reg[3]_0\ <= \^input_circle_status_reg[3]_0\;
  \input_circle_status_reg[3]_1\ <= \^input_circle_status_reg[3]_1\;
  \input_circle_status_reg[7]_0\ <= \^input_circle_status_reg[7]_0\;
  \input_circle_status_reg[7]_1\ <= \^input_circle_status_reg[7]_1\;
  \input_circle_status_reg[7]_2\ <= \^input_circle_status_reg[7]_2\;
  \input_circle_status_reg[7]_3\ <= \^input_circle_status_reg[7]_3\;
  \input_circle_status_reg[7]_4\ <= \^input_circle_status_reg[7]_4\;
  userbutton_msblsb(0) <= \^userbutton_msblsb\(0);
  userbutton_updown(1 downto 0) <= \^userbutton_updown\(1 downto 0);
\LED_top_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00202222AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => usersw_msb(3),
      I2 => \LED_top_OBUF[0]_inst_i_2_n_1\,
      I3 => \LED_top_OBUF[0]_inst_i_3_n_1\,
      I4 => \LED_top_OBUF[0]_inst_i_4_n_1\,
      I5 => \LED_top_OBUF[0]_inst_i_5_n_1\,
      O => \^led_top_obuf\(0)
    );
\LED_top_OBUF[0]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7C7F7F7C4C4C4C4"
    )
        port map (
      I0 => \LED_top_OBUF[0]_inst_i_3_0\,
      I1 => \^input_circle_status_reg[2]_0\,
      I2 => \^input_circle_status_reg[1]_0\,
      I3 => \LED_top_OBUF[0]_inst_i_31_0\,
      I4 => \^input_circle_status_reg[0]_0\,
      I5 => \LED_top_OBUF[1]_inst_i_12_n_1\,
      O => \LED_top_OBUF[0]_inst_i_10_n_1\
    );
\LED_top_OBUF[0]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBFFFBFFFB"
    )
        port map (
      I0 => \LED_top_OBUF[0]_inst_i_3_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \^input_circle_status_reg[2]_0\,
      I3 => \^input_circle_status_reg[3]_0\,
      I4 => \^input_circle_status_reg[1]_0\,
      I5 => \^input_circle_status_reg[0]_0\,
      O => \LED_top_OBUF[0]_inst_i_11_n_1\
    );
\LED_top_OBUF[0]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554FFFFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[0]_inst_i_31_n_1\,
      I1 => \LED_top_OBUF[0]_inst_i_32_n_1\,
      I2 => \LED_top_OBUF[0]_inst_i_33_n_1\,
      I3 => \^input_circle_status_reg[3]_0\,
      I4 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[0]_inst_i_14_n_1\
    );
\LED_top_OBUF[0]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FF47FF47FF0000"
    )
        port map (
      I0 => S_alu_data_in1(1),
      I1 => \SEGMENT7_top[7]_i_15_0\,
      I2 => S_alu_data_in1(0),
      I3 => \^input_circle_status_reg[1]_1\,
      I4 => \LED_top_OBUF[0]_inst_i_35_n_1\,
      I5 => \^input_circle_status_reg[7]_0\,
      O => \LED_top_OBUF[0]_inst_i_15_n_1\
    );
\LED_top_OBUF[0]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBABBBABA"
    )
        port map (
      I0 => usersw_msb(0),
      I1 => \LED_top_OBUF[0]_inst_i_36_n_1\,
      I2 => \LED_top_OBUF[0]_inst_i_37_n_1\,
      I3 => \^input_circle_status_reg[7]_0\,
      I4 => \^input_circle_status_reg[2]_0\,
      I5 => \LED_top_OBUF[0]_inst_i_38_n_1\,
      O => \LED_top_OBUF[0]_inst_i_16_n_1\
    );
\LED_top_OBUF[0]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44454545FFFFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[0]_inst_i_39_n_1\,
      I1 => usersw_msb(0),
      I2 => \LED_top_OBUF[0]_inst_i_40_n_1\,
      I3 => \^input_circle_status_reg[1]_1\,
      I4 => \LED_top_OBUF[0]_inst_i_5_0\,
      I5 => \LED_top_OBUF[6]_inst_i_21_n_1\,
      O => \LED_top_OBUF[0]_inst_i_17_n_1\
    );
\LED_top_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4540"
    )
        port map (
      I0 => usersw_msb(0),
      I1 => \LED_top_OBUF[0]_inst_i_6_n_1\,
      I2 => \LED_top_OBUF[15]_inst_i_8_n_1\,
      I3 => \LED_top_OBUF[0]_inst_i_7_n_1\,
      I4 => \LED_top_OBUF[0]_inst_i_8_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[0]_inst_i_2_n_1\
    );
\LED_top_OBUF[0]_inst_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \^input_circle_status_reg[3]_0\,
      I1 => \input_circle_status_reg_n_1_[5]\,
      I2 => \input_circle_status_reg_n_1_[4]\,
      I3 => \input_circle_status_reg_n_1_[6]\,
      I4 => usersw_msb(0),
      O => \LED_top_OBUF[0]_inst_i_24_n_1\
    );
\LED_top_OBUF[0]_inst_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => \^input_circle_status_reg[7]_0\,
      I1 => \^input_circle_status_reg[1]_0\,
      I2 => \^input_circle_status_reg[2]_0\,
      O => \LED_top_OBUF[0]_inst_i_25_n_1\
    );
\LED_top_OBUF[0]_inst_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000D000D0D0D0D0"
    )
        port map (
      I0 => \^input_circle_status_reg[2]_0\,
      I1 => \LED_top_OBUF[0]_inst_i_2_2\,
      I2 => \^input_circle_status_reg[0]_0\,
      I3 => S_f3(0),
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => \^input_circle_status_reg[1]_0\,
      O => \LED_top_OBUF[0]_inst_i_26_n_1\
    );
\LED_top_OBUF[0]_inst_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444000"
    )
        port map (
      I0 => \^input_circle_status_reg[0]_0\,
      I1 => \^input_circle_status_reg[2]_0\,
      I2 => \LED_top_OBUF[15]_inst_i_6_2\(7),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => \LED_top_OBUF[15]_inst_i_6_2\(0),
      O => \LED_top_OBUF[0]_inst_i_27_n_1\
    );
\LED_top_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55454444FFFFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[0]_inst_i_9_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I2 => \LED_top_OBUF[6]_inst_i_11_n_1\,
      I3 => \LED_top_OBUF[0]_inst_i_10_n_1\,
      I4 => \LED_top_OBUF[0]_inst_i_11_n_1\,
      I5 => usersw_msb(2),
      O => \LED_top_OBUF[0]_inst_i_3_n_1\
    );
\LED_top_OBUF[0]_inst_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020002222"
    )
        port map (
      I0 => \LED_top_OBUF[0]_inst_i_45_n_1\,
      I1 => \LED_top_OBUF[0]_inst_i_46_n_1\,
      I2 => \LED_top_OBUF[9]_inst_i_31_n_1\,
      I3 => \SEGMENT7_top[7]_i_23_0\,
      I4 => \LED_top_OBUF[6]_inst_i_11_n_1\,
      I5 => \LED_top_OBUF[0]_inst_i_47_n_1\,
      O => \LED_top_OBUF[0]_inst_i_31_n_1\
    );
\LED_top_OBUF[0]_inst_i_32\: unisim.vcomponents.MUXF7
     port map (
      I0 => \LED_top_OBUF[0]_inst_i_48_n_1\,
      I1 => \SEGMENT7_top[7]_i_23_1\,
      O => \LED_top_OBUF[0]_inst_i_32_n_1\,
      S => \^input_circle_status_reg[0]_0\
    );
\LED_top_OBUF[0]_inst_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF53FF0000F0"
    )
        port map (
      I0 => alubrnch_out(16),
      I1 => alubrnch_out(0),
      I2 => \SEGMENT7_top[7]_i_15_0\,
      I3 => \^input_circle_status_reg[1]_0\,
      I4 => \^input_circle_status_reg[2]_0\,
      I5 => \^input_circle_status_reg[7]_0\,
      O => \LED_top_OBUF[0]_inst_i_33_n_1\
    );
\LED_top_OBUF[0]_inst_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BB0FFFFFBB0FFF"
    )
        port map (
      I0 => \SEGMENT7_top[7]_i_15_0\,
      I1 => n_0_1058_BUFG_inst_n_1,
      I2 => \LED_top_OBUF[0]_inst_i_2_2\,
      I3 => \^input_circle_status_reg[1]_0\,
      I4 => \^input_circle_status_reg[0]_0\,
      I5 => \LED_top_OBUF[0]_inst_i_2_3\,
      O => \LED_top_OBUF[0]_inst_i_35_n_1\
    );
\LED_top_OBUF[0]_inst_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEE00E0"
    )
        port map (
      I0 => \LED_top_OBUF[0]_inst_i_50_n_1\,
      I1 => \LED_top_OBUF[0]_inst_i_51_n_1\,
      I2 => S_f7(0),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => \^input_circle_status_reg[7]_0\,
      I5 => \LED_top_OBUF[15]_inst_i_45_n_1\,
      O => \LED_top_OBUF[0]_inst_i_36_n_1\
    );
\LED_top_OBUF[0]_inst_i_37\: unisim.vcomponents.MUXF7
     port map (
      I0 => \LED_top_OBUF[0]_inst_i_52_n_1\,
      I1 => \LED_top_OBUF[0]_inst_i_53_n_1\,
      O => \LED_top_OBUF[0]_inst_i_37_n_1\,
      S => \^input_circle_status_reg[1]_0\
    );
\LED_top_OBUF[0]_inst_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \input_circle_status_reg_n_1_[4]\,
      I1 => \input_circle_status_reg_n_1_[5]\,
      I2 => \input_circle_status_reg_n_1_[6]\,
      I3 => \^input_circle_status_reg[0]_0\,
      I4 => \^input_circle_status_reg[3]_0\,
      O => \LED_top_OBUF[0]_inst_i_38_n_1\
    );
\LED_top_OBUF[0]_inst_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAAAEAAAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[0]_inst_i_54_n_1\,
      I1 => usersw_msb(0),
      I2 => alubrnch_out(0),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => alubrnch_out(16),
      I5 => \LED_top_OBUF[15]_inst_i_41_n_1\,
      O => \LED_top_OBUF[0]_inst_i_39_n_1\
    );
\LED_top_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABFBAAAAAAAA"
    )
        port map (
      I0 => usersw_msb(2),
      I1 => \SEGMENT7_top[7]_i_23_0\,
      I2 => \^input_circle_status_reg[7]_1\,
      I3 => \LED_top_OBUF[0]_inst_i_1_0\,
      I4 => \LED_top_OBUF[6]_inst_i_15_n_1\,
      I5 => \LED_top_OBUF[0]_inst_i_14_n_1\,
      O => \LED_top_OBUF[0]_inst_i_4_n_1\
    );
\LED_top_OBUF[0]_inst_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \SEGMENT7_top[7]_i_15_0\,
      I1 => n_0_1058_BUFG_inst_n_1,
      I2 => \^input_circle_status_reg[0]_0\,
      I3 => \^input_circle_status_reg[1]_0\,
      I4 => \^input_circle_status_reg[7]_0\,
      O => \LED_top_OBUF[0]_inst_i_40_n_1\
    );
\LED_top_OBUF[0]_inst_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888808888888"
    )
        port map (
      I0 => \LED_top_OBUF[0]_inst_i_55_n_1\,
      I1 => \LED_top_OBUF[10]_inst_i_26_n_1\,
      I2 => \SEGMENT7_top[7]_i_43_0\,
      I3 => \LED_top_OBUF[9]_inst_i_31_n_1\,
      I4 => \^input_circle_status_reg[7]_0\,
      I5 => \^input_circle_status_reg[3]_0\,
      O => \LED_top_OBUF[0]_inst_i_45_n_1\
    );
\LED_top_OBUF[0]_inst_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA22AAA2AA2AAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[0]_inst_i_56_n_1\,
      I1 => \^input_circle_status_reg[1]_0\,
      I2 => \^input_circle_status_reg[2]_0\,
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => \LED_top_OBUF[3]_inst_i_10_2\(0),
      I5 => S_f7(0),
      O => \LED_top_OBUF[0]_inst_i_46_n_1\
    );
\LED_top_OBUF[0]_inst_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0B0A0F0F0B00"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \LED_top_OBUF[0]_inst_i_31_1\,
      I2 => \LED_top_OBUF[0]_inst_i_57_n_1\,
      I3 => \^input_circle_status_reg[2]_0\,
      I4 => \^input_circle_status_reg[3]_0\,
      I5 => \LED_top_OBUF[0]_inst_i_31_0\,
      O => \LED_top_OBUF[0]_inst_i_47_n_1\
    );
\LED_top_OBUF[0]_inst_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF07070FFF7777"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => S_alu_flag(0),
      I2 => \^input_circle_status_reg[2]_0\,
      I3 => \SEGMENT7_top[7]_i_29_0\(4),
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => \SEGMENT7_top[7]_i_29_0\(0),
      O => \LED_top_OBUF[0]_inst_i_48_n_1\
    );
\LED_top_OBUF[0]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEEEEAAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[6]_inst_i_17_n_1\,
      I1 => usersw_msb(1),
      I2 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      I3 => \LED_top_OBUF[0]_inst_i_15_n_1\,
      I4 => \LED_top_OBUF[0]_inst_i_16_n_1\,
      I5 => \LED_top_OBUF[0]_inst_i_17_n_1\,
      O => \LED_top_OBUF[0]_inst_i_5_n_1\
    );
\LED_top_OBUF[0]_inst_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000C008080"
    )
        port map (
      I0 => \LED_top_OBUF[0]_inst_i_36_0\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \^input_circle_status_reg[3]_0\,
      I3 => \LED_top_OBUF[0]_inst_i_36_1\,
      I4 => \^input_circle_status_reg[2]_0\,
      I5 => \^input_circle_status_reg[1]_0\,
      O => \LED_top_OBUF[0]_inst_i_50_n_1\
    );
\LED_top_OBUF[0]_inst_i_51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00830000"
    )
        port map (
      I0 => \LED_top_OBUF[0]_inst_i_36_0\,
      I1 => \^input_circle_status_reg[2]_0\,
      I2 => \^input_circle_status_reg[7]_0\,
      I3 => \^input_circle_status_reg[3]_0\,
      I4 => \^input_circle_status_reg[1]_0\,
      O => \LED_top_OBUF[0]_inst_i_51_n_1\
    );
\LED_top_OBUF[0]_inst_i_52\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \^input_circle_status_reg[7]_0\,
      I1 => \SEGMENT7_top[7]_i_15_0\,
      I2 => S_RST,
      I3 => \LED_top_OBUF[0]_inst_i_37_0\,
      O => \LED_top_OBUF[0]_inst_i_52_n_1\
    );
\LED_top_OBUF[0]_inst_i_53\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40FF7F"
    )
        port map (
      I0 => S_cnrtl_alu_data_srce_slkt,
      I1 => \^input_circle_status_reg[2]_0\,
      I2 => \^input_circle_status_reg[7]_0\,
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => S_f3(0),
      O => \LED_top_OBUF[0]_inst_i_53_n_1\
    );
\LED_top_OBUF[0]_inst_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044400000000000"
    )
        port map (
      I0 => \^input_circle_status_reg[7]_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \LED_top_OBUF[15]_inst_i_6_2\(7),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => \LED_top_OBUF[15]_inst_i_6_2\(0),
      I5 => \^input_circle_status_reg[1]_0\,
      O => \LED_top_OBUF[0]_inst_i_54_n_1\
    );
\LED_top_OBUF[0]_inst_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000400FFFFFFFF"
    )
        port map (
      I0 => \^input_circle_status_reg[2]_0\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \^input_circle_status_reg[1]_0\,
      I3 => S_imm_20(0),
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => \^input_circle_status_reg[3]_0\,
      O => \LED_top_OBUF[0]_inst_i_55_n_1\
    );
\LED_top_OBUF[0]_inst_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111011111"
    )
        port map (
      I0 => \^input_circle_status_reg[3]_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \LED_top_OBUF[2]_inst_i_9_0\(0),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => \^input_circle_status_reg[2]_0\,
      I5 => \^input_circle_status_reg[1]_0\,
      O => \LED_top_OBUF[0]_inst_i_56_n_1\
    );
\LED_top_OBUF[0]_inst_i_57\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4000FFFF"
    )
        port map (
      I0 => \SEGMENT7_top[7]_i_15_0\,
      I1 => \LED_top_OBUF[8]_inst_i_8_0\(0),
      I2 => \^input_circle_status_reg[2]_0\,
      I3 => \^input_circle_status_reg[1]_0\,
      I4 => \^input_circle_status_reg[0]_0\,
      O => \LED_top_OBUF[0]_inst_i_57_n_1\
    );
\LED_top_OBUF[0]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \LED_top_OBUF[0]_inst_i_2_0\,
      I1 => \LED_top_OBUF[0]_inst_i_2_1\,
      O => \LED_top_OBUF[0]_inst_i_6_n_1\,
      S => \LED_top_OBUF[15]_inst_i_27_n_1\
    );
\LED_top_OBUF[0]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \LED_top_OBUF[0]_inst_i_2_5\,
      I1 => \^input_circle_status_reg[7]_2\,
      I2 => \LED_top_OBUF[0]_inst_i_2_2\,
      I3 => \^input_circle_status_reg[3]_1\,
      I4 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      O => \LED_top_OBUF[0]_inst_i_7_n_1\
    );
\LED_top_OBUF[0]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20AA2020AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      I1 => \LED_top_OBUF[0]_inst_i_2_4\,
      I2 => \^input_circle_status_reg[7]_4\,
      I3 => \LED_top_OBUF[15]_inst_i_33_n_1\,
      I4 => \LED_top_OBUF[0]_inst_i_2_3\,
      I5 => \LED_top_OBUF[1]_inst_i_27_n_1\,
      O => \LED_top_OBUF[0]_inst_i_8_n_1\
    );
\LED_top_OBUF[0]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1110FFFF"
    )
        port map (
      I0 => \LED_top_OBUF[0]_inst_i_24_n_1\,
      I1 => \LED_top_OBUF[0]_inst_i_25_n_1\,
      I2 => \LED_top_OBUF[0]_inst_i_26_n_1\,
      I3 => \LED_top_OBUF[0]_inst_i_27_n_1\,
      I4 => usersw_msb(1),
      O => \LED_top_OBUF[0]_inst_i_9_n_1\
    );
\LED_top_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00202222AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => usersw_msb(3),
      I2 => \LED_top_OBUF[10]_inst_i_2_n_1\,
      I3 => \LED_top_OBUF[10]_inst_i_3_n_1\,
      I4 => \LED_top_OBUF[10]_inst_i_4_n_1\,
      I5 => \LED_top_OBUF[10]_inst_i_5_n_1\,
      O => \^led_top_obuf\(10)
    );
\LED_top_OBUF[10]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBB888B8"
    )
        port map (
      I0 => \LED_top_OBUF[10]_inst_i_3_0\,
      I1 => \^input_circle_status_reg[1]_2\,
      I2 => reg_source0_out0(3),
      I3 => \LED_top_OBUF[10]_inst_i_4_1\,
      I4 => reg_source0_out0(9),
      I5 => \^input_circle_status_reg[2]_1\,
      O => \LED_top_OBUF[10]_inst_i_10_n_1\
    );
\LED_top_OBUF[10]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \LED_top_OBUF[10]_inst_i_4_0\,
      I1 => \^input_circle_status_reg[7]_1\,
      I2 => alubrnch_out(10),
      I3 => \LED_top_OBUF[10]_inst_i_4_1\,
      I4 => alubrnch_out(26),
      I5 => \LED_top_OBUF[6]_inst_i_15_n_1\,
      O => \LED_top_OBUF[10]_inst_i_12_n_1\
    );
\LED_top_OBUF[10]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A00020000000280"
    )
        port map (
      I0 => \LED_top_OBUF[10]_inst_i_26_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \^input_circle_status_reg[3]_0\,
      I3 => \^input_circle_status_reg[0]_0\,
      I4 => \^input_circle_status_reg[1]_0\,
      I5 => \^input_circle_status_reg[2]_0\,
      O => \LED_top_OBUF[10]_inst_i_13_n_1\
    );
\LED_top_OBUF[10]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F7F2F7AAAAFFFF"
    )
        port map (
      I0 => \^input_circle_status_reg[2]_0\,
      I1 => \LED_top_OBUF[8]_inst_i_8_0\(5),
      I2 => \LED_top_OBUF[10]_inst_i_4_1\,
      I3 => S_imm_20(0),
      I4 => \LED_top_OBUF[10]_inst_i_4_0\,
      I5 => \^input_circle_status_reg[7]_0\,
      O => \LED_top_OBUF[10]_inst_i_14_n_1\
    );
\LED_top_OBUF[10]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAEEEAE"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_39_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => alubrnch_out(10),
      I3 => \LED_top_OBUF[10]_inst_i_4_1\,
      I4 => alubrnch_out(26),
      I5 => \LED_top_OBUF[10]_inst_i_4_2\,
      O => \LED_top_OBUF[10]_inst_i_15_n_1\
    );
\LED_top_OBUF[10]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F70FF73FF7CFF7FF"
    )
        port map (
      I0 => \LED_top_OBUF[10]_inst_i_3_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \^input_circle_status_reg[1]_0\,
      I3 => \^input_circle_status_reg[7]_0\,
      I4 => \LED_top_OBUF[10]_inst_i_2_1\,
      I5 => \LED_top_OBUF[10]_inst_i_5_0\,
      O => \LED_top_OBUF[10]_inst_i_16_n_1\
    );
\LED_top_OBUF[10]_inst_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7770FFFF"
    )
        port map (
      I0 => \^input_circle_status_reg[7]_3\,
      I1 => \LED_top_OBUF[10]_inst_i_5_1\,
      I2 => usersw_msb(0),
      I3 => \LED_top_OBUF[10]_inst_i_5_2\,
      I4 => usersw_msb(1),
      O => \LED_top_OBUF[10]_inst_i_18_n_1\
    );
\LED_top_OBUF[10]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0047"
    )
        port map (
      I0 => \LED_top_OBUF[10]_inst_i_6_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_8_n_1\,
      I2 => \LED_top_OBUF[10]_inst_i_7_n_1\,
      I3 => usersw_msb(0),
      I4 => \LED_top_OBUF[10]_inst_i_8_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[10]_inst_i_2_n_1\
    );
\LED_top_OBUF[10]_inst_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDDDFFFFFFDFF"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \^input_circle_status_reg[0]_0\,
      I3 => \LED_top_OBUF[8]_inst_i_8_0\(5),
      I4 => \LED_top_OBUF[10]_inst_i_4_1\,
      I5 => S_imm_20(0),
      O => \LED_top_OBUF[10]_inst_i_23_n_1\
    );
\LED_top_OBUF[10]_inst_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => usersw_msb(0),
      I1 => \input_circle_status_reg_n_1_[4]\,
      I2 => \input_circle_status_reg_n_1_[5]\,
      I3 => \input_circle_status_reg_n_1_[6]\,
      O => \LED_top_OBUF[10]_inst_i_26_n_1\
    );
\LED_top_OBUF[10]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44454545FFFFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[10]_inst_i_9_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I2 => \LED_top_OBUF[10]_inst_i_10_n_1\,
      I3 => \^input_circle_status_reg[2]_2\,
      I4 => \LED_top_OBUF[10]_inst_i_5_1\,
      I5 => usersw_msb(2),
      O => \LED_top_OBUF[10]_inst_i_3_n_1\
    );
\LED_top_OBUF[10]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABAAAABBBBBBBB"
    )
        port map (
      I0 => usersw_msb(2),
      I1 => \LED_top_OBUF[10]_inst_i_12_n_1\,
      I2 => \LED_top_OBUF[10]_inst_i_13_n_1\,
      I3 => \LED_top_OBUF[10]_inst_i_14_n_1\,
      I4 => \LED_top_OBUF[10]_inst_i_15_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[10]_inst_i_4_n_1\
    );
\LED_top_OBUF[10]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEFEFAAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_22_n_1\,
      I1 => \LED_top_OBUF[10]_inst_i_16_n_1\,
      I2 => \LED_top_OBUF[11]_inst_i_18_n_1\,
      I3 => \LED_top_OBUF[14]_inst_i_14_n_1\,
      I4 => \LED_top_OBUF[10]_inst_i_1_0\,
      I5 => \LED_top_OBUF[10]_inst_i_18_n_1\,
      O => \LED_top_OBUF[10]_inst_i_5_n_1\
    );
\LED_top_OBUF[10]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFFFF0DFDFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[10]_inst_i_2_0\,
      I1 => \LED_top_OBUF[15]_inst_i_24_n_1\,
      I2 => \^input_circle_status_reg[7]_2\,
      I3 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I4 => \^input_circle_status_reg[3]_1\,
      I5 => \LED_top_OBUF[10]_inst_i_4_0\,
      O => \LED_top_OBUF[10]_inst_i_6_n_1\
    );
\LED_top_OBUF[10]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFDFFFD"
    )
        port map (
      I0 => \LED_top_OBUF[10]_inst_i_2_2\,
      I1 => \^input_circle_status_reg[3]_1\,
      I2 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I3 => \^input_circle_status_reg[7]_2\,
      I4 => \LED_top_OBUF[10]_inst_i_2_1\,
      O => \LED_top_OBUF[10]_inst_i_7_n_1\
    );
\LED_top_OBUF[10]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A808AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      I1 => Q(8),
      I2 => \LED_top_OBUF[10]_inst_i_4_1\,
      I3 => Q(11),
      I4 => \LED_top_OBUF[15]_inst_i_33_n_1\,
      I5 => \LED_top_OBUF[10]_inst_i_23_n_1\,
      O => \LED_top_OBUF[10]_inst_i_8_n_1\
    );
\LED_top_OBUF[10]_inst_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_38_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \LED_top_OBUF[10]_inst_i_3_1\,
      I3 => usersw_msb(1),
      O => \LED_top_OBUF[10]_inst_i_9_n_1\
    );
\LED_top_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00202222AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => usersw_msb(3),
      I2 => \LED_top_OBUF[11]_inst_i_2_n_1\,
      I3 => \LED_top_OBUF[11]_inst_i_3_n_1\,
      I4 => \LED_top_OBUF[11]_inst_i_4_n_1\,
      I5 => \LED_top_OBUF[11]_inst_i_5_n_1\,
      O => \^led_top_obuf\(11)
    );
\LED_top_OBUF[11]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBB888B8"
    )
        port map (
      I0 => \LED_top_OBUF[11]_inst_i_3_0\,
      I1 => \^input_circle_status_reg[1]_2\,
      I2 => reg_source0_out0(4),
      I3 => \LED_top_OBUF[10]_inst_i_4_1\,
      I4 => reg_source0_out0(10),
      I5 => \^input_circle_status_reg[2]_1\,
      O => \LED_top_OBUF[11]_inst_i_10_n_1\
    );
\LED_top_OBUF[11]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \LED_top_OBUF[11]_inst_i_4_0\,
      I1 => \^input_circle_status_reg[7]_1\,
      I2 => alubrnch_out(11),
      I3 => \LED_top_OBUF[10]_inst_i_4_1\,
      I4 => alubrnch_out(27),
      I5 => \LED_top_OBUF[6]_inst_i_15_n_1\,
      O => \LED_top_OBUF[11]_inst_i_12_n_1\
    );
\LED_top_OBUF[11]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE4CEE6EFFFFFFFF"
    )
        port map (
      I0 => \^input_circle_status_reg[7]_0\,
      I1 => \^input_circle_status_reg[2]_0\,
      I2 => \LED_top_OBUF[8]_inst_i_8_0\(6),
      I3 => \LED_top_OBUF[10]_inst_i_4_1\,
      I4 => S_imm_20(0),
      I5 => \LED_top_OBUF[10]_inst_i_13_n_1\,
      O => \LED_top_OBUF[11]_inst_i_14_n_1\
    );
\LED_top_OBUF[11]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAEEEAE"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_39_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => alubrnch_out(11),
      I3 => \LED_top_OBUF[10]_inst_i_4_1\,
      I4 => alubrnch_out(27),
      I5 => \LED_top_OBUF[11]_inst_i_4_1\,
      O => \LED_top_OBUF[11]_inst_i_15_n_1\
    );
\LED_top_OBUF[11]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DC3FDCFFDF3FDFFF"
    )
        port map (
      I0 => \LED_top_OBUF[11]_inst_i_5_0\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \^input_circle_status_reg[0]_0\,
      I3 => \^input_circle_status_reg[1]_0\,
      I4 => \LED_top_OBUF[11]_inst_i_3_0\,
      I5 => \LED_top_OBUF[11]_inst_i_2_1\,
      O => \LED_top_OBUF[11]_inst_i_17_n_1\
    );
\LED_top_OBUF[11]_inst_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => usersw_msb(0),
      I1 => usersw_msb(1),
      O => \LED_top_OBUF[11]_inst_i_18_n_1\
    );
\LED_top_OBUF[11]_inst_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7770FFFF"
    )
        port map (
      I0 => \^input_circle_status_reg[7]_3\,
      I1 => \LED_top_OBUF[11]_inst_i_5_1\,
      I2 => usersw_msb(0),
      I3 => \LED_top_OBUF[11]_inst_i_5_2\,
      I4 => usersw_msb(1),
      O => \LED_top_OBUF[11]_inst_i_19_n_1\
    );
\LED_top_OBUF[11]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0047"
    )
        port map (
      I0 => \LED_top_OBUF[11]_inst_i_6_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_8_n_1\,
      I2 => \LED_top_OBUF[11]_inst_i_7_n_1\,
      I3 => usersw_msb(0),
      I4 => \LED_top_OBUF[11]_inst_i_8_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[11]_inst_i_2_n_1\
    );
\LED_top_OBUF[11]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCFFFFFFFDDFF"
    )
        port map (
      I0 => \LED_top_OBUF[8]_inst_i_8_0\(6),
      I1 => \LED_top_OBUF[10]_inst_i_4_1\,
      I2 => S_imm_20(0),
      I3 => \^input_circle_status_reg[1]_0\,
      I4 => \^input_circle_status_reg[7]_0\,
      I5 => \^input_circle_status_reg[0]_0\,
      O => \LED_top_OBUF[11]_inst_i_24_n_1\
    );
\LED_top_OBUF[11]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44454545FFFFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[11]_inst_i_9_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I2 => \LED_top_OBUF[11]_inst_i_10_n_1\,
      I3 => \^input_circle_status_reg[2]_2\,
      I4 => \LED_top_OBUF[11]_inst_i_5_1\,
      I5 => usersw_msb(2),
      O => \LED_top_OBUF[11]_inst_i_3_n_1\
    );
\LED_top_OBUF[11]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABAAAABBBBBBBB"
    )
        port map (
      I0 => usersw_msb(2),
      I1 => \LED_top_OBUF[11]_inst_i_12_n_1\,
      I2 => \LED_top_OBUF[11]_inst_i_1_1\,
      I3 => \LED_top_OBUF[11]_inst_i_14_n_1\,
      I4 => \LED_top_OBUF[11]_inst_i_15_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[11]_inst_i_4_n_1\
    );
\LED_top_OBUF[11]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEFEFAAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_22_n_1\,
      I1 => \LED_top_OBUF[14]_inst_i_14_n_1\,
      I2 => \LED_top_OBUF[11]_inst_i_1_0\,
      I3 => \LED_top_OBUF[11]_inst_i_17_n_1\,
      I4 => \LED_top_OBUF[11]_inst_i_18_n_1\,
      I5 => \LED_top_OBUF[11]_inst_i_19_n_1\,
      O => \LED_top_OBUF[11]_inst_i_5_n_1\
    );
\LED_top_OBUF[11]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFFFF0DFDFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[11]_inst_i_2_0\,
      I1 => \LED_top_OBUF[15]_inst_i_24_n_1\,
      I2 => \^input_circle_status_reg[7]_2\,
      I3 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I4 => \^input_circle_status_reg[3]_1\,
      I5 => \LED_top_OBUF[11]_inst_i_4_0\,
      O => \LED_top_OBUF[11]_inst_i_6_n_1\
    );
\LED_top_OBUF[11]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFDFFFD"
    )
        port map (
      I0 => \LED_top_OBUF[11]_inst_i_2_2\,
      I1 => \^input_circle_status_reg[3]_1\,
      I2 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I3 => \^input_circle_status_reg[7]_2\,
      I4 => \LED_top_OBUF[11]_inst_i_2_1\,
      O => \LED_top_OBUF[11]_inst_i_7_n_1\
    );
\LED_top_OBUF[11]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A808AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      I1 => Q(9),
      I2 => \LED_top_OBUF[10]_inst_i_4_1\,
      I3 => Q(11),
      I4 => \LED_top_OBUF[15]_inst_i_33_n_1\,
      I5 => \LED_top_OBUF[11]_inst_i_24_n_1\,
      O => \LED_top_OBUF[11]_inst_i_8_n_1\
    );
\LED_top_OBUF[11]_inst_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_38_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \LED_top_OBUF[11]_inst_i_3_1\,
      I3 => usersw_msb(1),
      O => \LED_top_OBUF[11]_inst_i_9_n_1\
    );
\LED_top_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A2AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => usersw_msb(2),
      I2 => \LED_top_OBUF[12]_inst_i_2_n_1\,
      I3 => \LED_top_OBUF[12]_inst_i_3_n_1\,
      I4 => usersw_msb(3),
      I5 => \LED_top_OBUF[12]_inst_i_4_n_1\,
      O => \^led_top_obuf\(12)
    );
\LED_top_OBUF[12]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055511151"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_39_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => alubrnch_out(12),
      I3 => upordown,
      I4 => alubrnch_out(28),
      I5 => \LED_top_OBUF[12]_inst_i_3_1\,
      O => \LED_top_OBUF[12]_inst_i_10_n_1\
    );
\LED_top_OBUF[12]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \LED_top_OBUF[12]_inst_i_3_0\,
      I1 => \^input_circle_status_reg[7]_1\,
      I2 => alubrnch_out(12),
      I3 => upordown,
      I4 => alubrnch_out(28),
      I5 => \LED_top_OBUF[6]_inst_i_15_n_1\,
      O => \LED_top_OBUF[12]_inst_i_11_n_1\
    );
\LED_top_OBUF[12]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \LED_top_OBUF[11]_inst_i_18_n_1\,
      I1 => \LED_top_OBUF[12]_inst_i_4_1\,
      I2 => \^input_circle_status_reg[1]_1\,
      I3 => \LED_top_OBUF[12]_inst_i_2_0\,
      I4 => \^input_circle_status_reg[7]_4\,
      I5 => \LED_top_OBUF[15]_inst_i_44_n_1\,
      O => \LED_top_OBUF[12]_inst_i_13_n_1\
    );
\LED_top_OBUF[12]_inst_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F7F7F7"
    )
        port map (
      I0 => \LED_top_OBUF[12]_inst_i_4_0\,
      I1 => \^input_circle_status_reg[1]_1\,
      I2 => usersw_msb(0),
      I3 => \LED_top_OBUF[12]_inst_i_4_2\,
      I4 => \^input_circle_status_reg[7]_3\,
      O => \LED_top_OBUF[12]_inst_i_14_n_1\
    );
\LED_top_OBUF[12]_inst_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => \^input_circle_status_reg[2]_1\,
      I1 => reg_source0_out0(11),
      I2 => upordown,
      I3 => reg_source0_out0(5),
      I4 => \^input_circle_status_reg[1]_2\,
      O => \LED_top_OBUF[12]_inst_i_16_n_1\
    );
\LED_top_OBUF[12]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404000000000000"
    )
        port map (
      I0 => \^input_circle_status_reg[7]_0\,
      I1 => \LED_top_OBUF[12]_inst_i_5_0\,
      I2 => \^input_circle_status_reg[0]_0\,
      I3 => \LED_top_OBUF[12]_inst_i_5_1\,
      I4 => \LED_top_OBUF[12]_inst_i_32_n_1\,
      I5 => \LED_top_OBUF[12]_inst_i_33_n_1\,
      O => \LED_top_OBUF[12]_inst_i_18_n_1\
    );
\LED_top_OBUF[12]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00022202AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[12]_inst_i_5_n_1\,
      I1 => usersw_msb(0),
      I2 => \LED_top_OBUF[12]_inst_i_6_n_1\,
      I3 => \LED_top_OBUF[15]_inst_i_8_n_1\,
      I4 => \LED_top_OBUF[12]_inst_i_7_n_1\,
      I5 => \LED_top_OBUF[15]_inst_i_10_n_1\,
      O => \LED_top_OBUF[12]_inst_i_2_n_1\
    );
\LED_top_OBUF[12]_inst_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^input_circle_status_reg[3]_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      O => \LED_top_OBUF[12]_inst_i_22_n_1\
    );
\LED_top_OBUF[12]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000557F"
    )
        port map (
      I0 => usersw_msb(1),
      I1 => \LED_top_OBUF[12]_inst_i_3_0\,
      I2 => \^input_circle_status_reg[1]_3\,
      I3 => \LED_top_OBUF[12]_inst_i_10_n_1\,
      I4 => \LED_top_OBUF[12]_inst_i_11_n_1\,
      I5 => usersw_msb(2),
      O => \LED_top_OBUF[12]_inst_i_3_n_1\
    );
\LED_top_OBUF[12]_inst_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^input_circle_status_reg[2]_0\,
      I1 => \^input_circle_status_reg[7]_0\,
      O => \LED_top_OBUF[12]_inst_i_32_n_1\
    );
\LED_top_OBUF[12]_inst_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \input_circle_status_reg_n_1_[4]\,
      I1 => \input_circle_status_reg_n_1_[5]\,
      I2 => \^input_circle_status_reg[3]_0\,
      I3 => \input_circle_status_reg_n_1_[6]\,
      I4 => usersw_msb(0),
      I5 => \^input_circle_status_reg[1]_0\,
      O => \LED_top_OBUF[12]_inst_i_33_n_1\
    );
\LED_top_OBUF[12]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFAAAAAAEFAAEF"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_22_n_1\,
      I1 => \LED_top_OBUF[14]_inst_i_14_n_1\,
      I2 => \LED_top_OBUF[12]_inst_i_1_0\,
      I3 => \LED_top_OBUF[12]_inst_i_13_n_1\,
      I4 => \LED_top_OBUF[12]_inst_i_14_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[12]_inst_i_4_n_1\
    );
\LED_top_OBUF[12]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0075FFFF"
    )
        port map (
      I0 => \LED_top_OBUF[12]_inst_i_2_1\,
      I1 => \LED_top_OBUF[12]_inst_i_16_n_1\,
      I2 => \LED_top_OBUF[12]_inst_i_2_2\,
      I3 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I4 => usersw_msb(1),
      I5 => \LED_top_OBUF[12]_inst_i_18_n_1\,
      O => \LED_top_OBUF[12]_inst_i_5_n_1\
    );
\LED_top_OBUF[12]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFDFFFD"
    )
        port map (
      I0 => \LED_top_OBUF[12]_inst_i_2_3\,
      I1 => \^input_circle_status_reg[3]_1\,
      I2 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I3 => \^input_circle_status_reg[7]_2\,
      I4 => \LED_top_OBUF[12]_inst_i_2_0\,
      O => \LED_top_OBUF[12]_inst_i_6_n_1\
    );
\LED_top_OBUF[12]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFFFF0DFDFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[12]_inst_i_4_0\,
      I1 => \LED_top_OBUF[15]_inst_i_24_n_1\,
      I2 => \^input_circle_status_reg[7]_2\,
      I3 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I4 => \^input_circle_status_reg[3]_1\,
      I5 => \LED_top_OBUF[12]_inst_i_3_0\,
      O => \LED_top_OBUF[12]_inst_i_7_n_1\
    );
\LED_top_OBUF[12]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \LED_top_OBUF[12]_inst_i_22_n_1\,
      I2 => \^input_circle_status_reg[2]_0\,
      I3 => \LED_top_OBUF[15]_inst_i_30_n_1\,
      I4 => usersw_msb(0),
      I5 => \^input_circle_status_reg[7]_0\,
      O => \^input_circle_status_reg[1]_3\
    );
\LED_top_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => usersw_msb(2),
      I2 => \LED_top_OBUF[13]_inst_i_2_n_1\,
      I3 => \LED_top_OBUF[13]_inst_i_3_n_1\,
      I4 => \LED_top_OBUF[13]_inst_i_4_n_1\,
      I5 => \LED_top_OBUF[13]_inst_i_5_n_1\,
      O => \^led_top_obuf\(13)
    );
\LED_top_OBUF[13]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBA"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_8_n_1\,
      I1 => \LED_top_OBUF[13]_inst_i_3_0\,
      I2 => \^input_circle_status_reg[7]_2\,
      I3 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I4 => \^input_circle_status_reg[3]_1\,
      O => \LED_top_OBUF[13]_inst_i_10_n_1\
    );
\LED_top_OBUF[13]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7770"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_24_n_1\,
      I1 => \^input_circle_status_reg[3]_1\,
      I2 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I3 => \^input_circle_status_reg[7]_2\,
      I4 => \LED_top_OBUF[13]_inst_i_3_1\,
      O => \LED_top_OBUF[13]_inst_i_11_n_1\
    );
\LED_top_OBUF[13]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \LED_top_OBUF[13]_inst_i_4_0\,
      I1 => \^input_circle_status_reg[7]_1\,
      I2 => alubrnch_out(13),
      I3 => upordown,
      I4 => alubrnch_out(29),
      I5 => \LED_top_OBUF[6]_inst_i_15_n_1\,
      O => \LED_top_OBUF[13]_inst_i_12_n_1\
    );
\LED_top_OBUF[13]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055511151"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_39_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => alubrnch_out(13),
      I3 => upordown,
      I4 => alubrnch_out(29),
      I5 => \LED_top_OBUF[13]_inst_i_4_1\,
      O => \LED_top_OBUF[13]_inst_i_13_n_1\
    );
\LED_top_OBUF[13]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \LED_top_OBUF[11]_inst_i_18_n_1\,
      I1 => \LED_top_OBUF[13]_inst_i_5_1\,
      I2 => \^input_circle_status_reg[1]_1\,
      I3 => \LED_top_OBUF[13]_inst_i_3_0\,
      I4 => \^input_circle_status_reg[7]_4\,
      I5 => \LED_top_OBUF[15]_inst_i_44_n_1\,
      O => \LED_top_OBUF[13]_inst_i_16_n_1\
    );
\LED_top_OBUF[13]_inst_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F7F7F7"
    )
        port map (
      I0 => \LED_top_OBUF[13]_inst_i_5_0\,
      I1 => \^input_circle_status_reg[1]_1\,
      I2 => usersw_msb(0),
      I3 => \LED_top_OBUF[13]_inst_i_5_2\,
      I4 => \^input_circle_status_reg[7]_3\,
      O => \LED_top_OBUF[13]_inst_i_17_n_1\
    );
\LED_top_OBUF[13]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00F8"
    )
        port map (
      I0 => \LED_top_OBUF[13]_inst_i_5_2\,
      I1 => \^input_circle_status_reg[2]_2\,
      I2 => \LED_top_OBUF[13]_inst_i_1_1\,
      I3 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I4 => \LED_top_OBUF[13]_inst_i_8_n_1\,
      O => \LED_top_OBUF[13]_inst_i_2_n_1\
    );
\LED_top_OBUF[13]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA200A2A2"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_10_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_8_n_1\,
      I2 => \LED_top_OBUF[13]_inst_i_9_n_1\,
      I3 => \LED_top_OBUF[13]_inst_i_10_n_1\,
      I4 => \LED_top_OBUF[13]_inst_i_11_n_1\,
      I5 => usersw_msb(0),
      O => \LED_top_OBUF[13]_inst_i_3_n_1\
    );
\LED_top_OBUF[13]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAABABABAB"
    )
        port map (
      I0 => usersw_msb(3),
      I1 => usersw_msb(2),
      I2 => \LED_top_OBUF[13]_inst_i_12_n_1\,
      I3 => \LED_top_OBUF[13]_inst_i_13_n_1\,
      I4 => \LED_top_OBUF[13]_inst_i_1_2\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[13]_inst_i_4_n_1\
    );
\LED_top_OBUF[13]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFAAAAAAEFAAEF"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_22_n_1\,
      I1 => \LED_top_OBUF[14]_inst_i_14_n_1\,
      I2 => \LED_top_OBUF[13]_inst_i_1_0\,
      I3 => \LED_top_OBUF[13]_inst_i_16_n_1\,
      I4 => \LED_top_OBUF[13]_inst_i_17_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[13]_inst_i_5_n_1\
    );
\LED_top_OBUF[13]_inst_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_38_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \LED_top_OBUF[13]_inst_i_2_0\,
      I3 => usersw_msb(1),
      O => \LED_top_OBUF[13]_inst_i_8_n_1\
    );
\LED_top_OBUF[13]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDD0FFFFFDD"
    )
        port map (
      I0 => \LED_top_OBUF[13]_inst_i_4_0\,
      I1 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I2 => \LED_top_OBUF[13]_inst_i_5_0\,
      I3 => \^input_circle_status_reg[7]_2\,
      I4 => \^input_circle_status_reg[3]_1\,
      I5 => \LED_top_OBUF[15]_inst_i_24_n_1\,
      O => \LED_top_OBUF[13]_inst_i_9_n_1\
    );
\LED_top_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => usersw_msb(2),
      I2 => \LED_top_OBUF[14]_inst_i_2_n_1\,
      I3 => \LED_top_OBUF[14]_inst_i_3_n_1\,
      I4 => \LED_top_OBUF[14]_inst_i_4_n_1\,
      I5 => \LED_top_OBUF[14]_inst_i_5_n_1\,
      O => \^led_top_obuf\(14)
    );
\LED_top_OBUF[14]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFDFFFD"
    )
        port map (
      I0 => \LED_top_OBUF[14]_inst_i_3_1\,
      I1 => \^input_circle_status_reg[3]_1\,
      I2 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I3 => \^input_circle_status_reg[7]_2\,
      I4 => \LED_top_OBUF[14]_inst_i_3_0\,
      O => \LED_top_OBUF[14]_inst_i_10_n_1\
    );
\LED_top_OBUF[14]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \LED_top_OBUF[14]_inst_i_4_0\,
      I1 => \^input_circle_status_reg[7]_1\,
      I2 => alubrnch_out(14),
      I3 => upordown,
      I4 => alubrnch_out(30),
      I5 => \LED_top_OBUF[6]_inst_i_15_n_1\,
      O => \LED_top_OBUF[14]_inst_i_11_n_1\
    );
\LED_top_OBUF[14]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAEEEAE"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_39_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => alubrnch_out(14),
      I3 => upordown,
      I4 => alubrnch_out(30),
      I5 => \LED_top_OBUF[14]_inst_i_4_1\,
      O => \LED_top_OBUF[14]_inst_i_13_n_1\
    );
\LED_top_OBUF[14]_inst_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFF7F"
    )
        port map (
      I0 => usersw_msb(0),
      I1 => usersw_msb(1),
      I2 => \^input_circle_status_reg[1]_0\,
      I3 => \^input_circle_status_reg[0]_0\,
      I4 => \^input_circle_status_reg[7]_0\,
      O => \LED_top_OBUF[14]_inst_i_14_n_1\
    );
\LED_top_OBUF[14]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \LED_top_OBUF[11]_inst_i_18_n_1\,
      I1 => \LED_top_OBUF[14]_inst_i_5_1\,
      I2 => \^input_circle_status_reg[1]_1\,
      I3 => \LED_top_OBUF[14]_inst_i_3_0\,
      I4 => \^input_circle_status_reg[7]_4\,
      I5 => \LED_top_OBUF[15]_inst_i_44_n_1\,
      O => \LED_top_OBUF[14]_inst_i_16_n_1\
    );
\LED_top_OBUF[14]_inst_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F7F7F7"
    )
        port map (
      I0 => \LED_top_OBUF[14]_inst_i_5_0\,
      I1 => \^input_circle_status_reg[1]_1\,
      I2 => usersw_msb(0),
      I3 => \LED_top_OBUF[14]_inst_i_5_2\,
      I4 => \^input_circle_status_reg[7]_3\,
      O => \LED_top_OBUF[14]_inst_i_17_n_1\
    );
\LED_top_OBUF[14]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00F8"
    )
        port map (
      I0 => \LED_top_OBUF[14]_inst_i_5_2\,
      I1 => \^input_circle_status_reg[2]_2\,
      I2 => \LED_top_OBUF[14]_inst_i_1_1\,
      I3 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I4 => \LED_top_OBUF[14]_inst_i_8_n_1\,
      O => \LED_top_OBUF[14]_inst_i_2_n_1\
    );
\LED_top_OBUF[14]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8A80"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_10_n_1\,
      I1 => \LED_top_OBUF[14]_inst_i_9_n_1\,
      I2 => \LED_top_OBUF[15]_inst_i_8_n_1\,
      I3 => \LED_top_OBUF[14]_inst_i_10_n_1\,
      I4 => usersw_msb(0),
      O => \LED_top_OBUF[14]_inst_i_3_n_1\
    );
\LED_top_OBUF[14]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAABABABAB"
    )
        port map (
      I0 => usersw_msb(3),
      I1 => usersw_msb(2),
      I2 => \LED_top_OBUF[14]_inst_i_11_n_1\,
      I3 => \LED_top_OBUF[14]_inst_i_1_2\,
      I4 => \LED_top_OBUF[14]_inst_i_13_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[14]_inst_i_4_n_1\
    );
\LED_top_OBUF[14]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFAAAAAAEFAAEF"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_22_n_1\,
      I1 => \LED_top_OBUF[14]_inst_i_14_n_1\,
      I2 => \LED_top_OBUF[14]_inst_i_1_0\,
      I3 => \LED_top_OBUF[14]_inst_i_16_n_1\,
      I4 => \LED_top_OBUF[14]_inst_i_17_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[14]_inst_i_5_n_1\
    );
\LED_top_OBUF[14]_inst_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_38_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \LED_top_OBUF[14]_inst_i_2_0\,
      I3 => usersw_msb(1),
      O => \LED_top_OBUF[14]_inst_i_8_n_1\
    );
\LED_top_OBUF[14]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFFFF0DFDFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[14]_inst_i_5_0\,
      I1 => \LED_top_OBUF[15]_inst_i_24_n_1\,
      I2 => \^input_circle_status_reg[7]_2\,
      I3 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I4 => \^input_circle_status_reg[3]_1\,
      I5 => \LED_top_OBUF[14]_inst_i_4_0\,
      O => \LED_top_OBUF[14]_inst_i_9_n_1\
    );
\LED_top_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => usersw_msb(2),
      I2 => \LED_top_OBUF[15]_inst_i_3_n_1\,
      I3 => \LED_top_OBUF[15]_inst_i_4_n_1\,
      I4 => \LED_top_OBUF[15]_inst_i_5_n_1\,
      I5 => \LED_top_OBUF[15]_inst_i_6_n_1\,
      O => \^led_top_obuf\(15)
    );
\LED_top_OBUF[15]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4445554555555555"
    )
        port map (
      I0 => usersw_msb(1),
      I1 => \LED_top_OBUF[15]_inst_i_33_n_1\,
      I2 => Q(10),
      I3 => upordown,
      I4 => Q(11),
      I5 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      O => \LED_top_OBUF[15]_inst_i_10_n_1\
    );
\LED_top_OBUF[15]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \^input_circle_status_reg[2]_0\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \^input_circle_status_reg[0]_0\,
      I3 => \^input_circle_status_reg[3]_0\,
      I4 => \^input_circle_status_reg[1]_0\,
      O => \^input_circle_status_reg[2]_2\
    );
\LED_top_OBUF[15]_inst_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => usersw_msb(0),
      I1 => \input_circle_status_reg_n_1_[4]\,
      I2 => \input_circle_status_reg_n_1_[5]\,
      I3 => \input_circle_status_reg_n_1_[6]\,
      O => \LED_top_OBUF[15]_inst_i_14_n_1\
    );
\LED_top_OBUF[15]_inst_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_4_0\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \LED_top_OBUF[15]_inst_i_38_n_1\,
      I3 => usersw_msb(1),
      O => \LED_top_OBUF[15]_inst_i_15_n_1\
    );
\LED_top_OBUF[15]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_5_0\,
      I1 => \^input_circle_status_reg[7]_1\,
      I2 => alubrnch_out(15),
      I3 => upordown,
      I4 => alubrnch_out(31),
      I5 => \LED_top_OBUF[6]_inst_i_15_n_1\,
      O => \LED_top_OBUF[15]_inst_i_16_n_1\
    );
\LED_top_OBUF[15]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAEEEAE"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_39_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => alubrnch_out(15),
      I3 => upordown,
      I4 => alubrnch_out(31),
      I5 => \LED_top_OBUF[15]_inst_i_5_1\,
      O => \LED_top_OBUF[15]_inst_i_18_n_1\
    );
\LED_top_OBUF[15]_inst_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800FFFFFFFFFFFF"
    )
        port map (
      I0 => alubrnch_out(31),
      I1 => upordown,
      I2 => alubrnch_out(15),
      I3 => \LED_top_OBUF[15]_inst_i_41_n_1\,
      I4 => usersw_msb(0),
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[15]_inst_i_19_n_1\
    );
\LED_top_OBUF[15]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => usersw_msb(7),
      I1 => usersw_msb(4),
      I2 => usersw_msb(6),
      I3 => usersw_msb(5),
      O => \LED_top_OBUF[15]_inst_i_2_n_1\
    );
\LED_top_OBUF[15]_inst_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_6_0\,
      I1 => \^input_circle_status_reg[1]_1\,
      I2 => usersw_msb(0),
      O => \LED_top_OBUF[15]_inst_i_20_n_1\
    );
\LED_top_OBUF[15]_inst_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF1DFFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_6_2\(6),
      I1 => upordown,
      I2 => \LED_top_OBUF[15]_inst_i_6_2\(13),
      I3 => \^input_circle_status_reg[1]_0\,
      I4 => \^input_circle_status_reg[0]_0\,
      I5 => \^input_circle_status_reg[7]_0\,
      O => \LED_top_OBUF[15]_inst_i_21_n_1\
    );
\LED_top_OBUF[15]_inst_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^input_circle_status_reg[3]_0\,
      I1 => \^input_circle_status_reg[2]_0\,
      I2 => \input_circle_status_reg_n_1_[6]\,
      I3 => \input_circle_status_reg_n_1_[5]\,
      I4 => \input_circle_status_reg_n_1_[4]\,
      I5 => \LED_top_OBUF[6]_inst_i_17_n_1\,
      O => \LED_top_OBUF[15]_inst_i_22_n_1\
    );
\LED_top_OBUF[15]_inst_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA80AA80AA80"
    )
        port map (
      I0 => usersw_msb(0),
      I1 => \LED_top_OBUF[15]_inst_i_3_0\,
      I2 => \^input_circle_status_reg[7]_4\,
      I3 => \LED_top_OBUF[15]_inst_i_44_n_1\,
      I4 => \^input_circle_status_reg[1]_1\,
      I5 => \LED_top_OBUF[15]_inst_i_6_1\,
      O => \LED_top_OBUF[15]_inst_i_23_n_1\
    );
\LED_top_OBUF[15]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFFFEFFFFEF"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_30_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \^input_circle_status_reg[3]_0\,
      I3 => \^input_circle_status_reg[2]_0\,
      I4 => \^input_circle_status_reg[1]_0\,
      I5 => \^input_circle_status_reg[0]_0\,
      O => \LED_top_OBUF[15]_inst_i_24_n_1\
    );
\LED_top_OBUF[15]_inst_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001134"
    )
        port map (
      I0 => \^input_circle_status_reg[7]_0\,
      I1 => \^input_circle_status_reg[3]_0\,
      I2 => \^input_circle_status_reg[1]_0\,
      I3 => \^input_circle_status_reg[2]_0\,
      I4 => \LED_top_OBUF[15]_inst_i_45_n_1\,
      O => \^input_circle_status_reg[7]_2\
    );
\LED_top_OBUF[15]_inst_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010001000010"
    )
        port map (
      I0 => \^input_circle_status_reg[7]_0\,
      I1 => \LED_top_OBUF[15]_inst_i_30_n_1\,
      I2 => \^input_circle_status_reg[3]_0\,
      I3 => \^input_circle_status_reg[2]_0\,
      I4 => \^input_circle_status_reg[1]_0\,
      I5 => \^input_circle_status_reg[0]_0\,
      O => \LED_top_OBUF[15]_inst_i_27_n_1\
    );
\LED_top_OBUF[15]_inst_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFF"
    )
        port map (
      I0 => \^input_circle_status_reg[3]_0\,
      I1 => \LED_top_OBUF[15]_inst_i_46_n_1\,
      I2 => \input_circle_status_reg_n_1_[6]\,
      I3 => \LED_top_OBUF[15]_inst_i_47_n_1\,
      I4 => \^input_circle_status_reg[0]_0\,
      I5 => \^input_circle_status_reg[1]_0\,
      O => \^input_circle_status_reg[3]_1\
    );
\LED_top_OBUF[15]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FFFF"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_7_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_8_n_1\,
      I2 => \LED_top_OBUF[15]_inst_i_9_n_1\,
      I3 => usersw_msb(0),
      I4 => \LED_top_OBUF[15]_inst_i_10_n_1\,
      O => \LED_top_OBUF[15]_inst_i_3_n_1\
    );
\LED_top_OBUF[15]_inst_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \input_circle_status_reg_n_1_[6]\,
      I1 => \input_circle_status_reg_n_1_[5]\,
      I2 => \input_circle_status_reg_n_1_[4]\,
      O => \LED_top_OBUF[15]_inst_i_30_n_1\
    );
\LED_top_OBUF[15]_inst_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^input_circle_status_reg[0]_0\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \^input_circle_status_reg[1]_0\,
      O => \LED_top_OBUF[15]_inst_i_33_n_1\
    );
\LED_top_OBUF[15]_inst_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \^input_circle_status_reg[2]_0\,
      O => \^input_circle_status_reg[1]_2\
    );
\LED_top_OBUF[15]_inst_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \^input_circle_status_reg[2]_0\,
      I1 => \^input_circle_status_reg[3]_0\,
      I2 => \^input_circle_status_reg[1]_0\,
      I3 => \^input_circle_status_reg[7]_0\,
      O => \^input_circle_status_reg[2]_1\
    );
\LED_top_OBUF[15]_inst_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF9FF"
    )
        port map (
      I0 => \^input_circle_status_reg[7]_0\,
      I1 => \^input_circle_status_reg[2]_0\,
      I2 => \^input_circle_status_reg[1]_0\,
      I3 => usersw_msb(0),
      I4 => \input_circle_status_reg_n_1_[6]\,
      I5 => \LED_top_OBUF[15]_inst_i_48_n_1\,
      O => \LED_top_OBUF[15]_inst_i_38_n_1\
    );
\LED_top_OBUF[15]_inst_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFF"
    )
        port map (
      I0 => \^input_circle_status_reg[3]_0\,
      I1 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I2 => \^input_circle_status_reg[1]_0\,
      I3 => \^input_circle_status_reg[7]_0\,
      I4 => \^input_circle_status_reg[2]_0\,
      O => \LED_top_OBUF[15]_inst_i_39_n_1\
    );
\LED_top_OBUF[15]_inst_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF07"
    )
        port map (
      I0 => \^input_circle_status_reg[2]_2\,
      I1 => \LED_top_OBUF[15]_inst_i_1_0\,
      I2 => \LED_top_OBUF[15]_inst_i_1_1\,
      I3 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I4 => \LED_top_OBUF[15]_inst_i_15_n_1\,
      O => \LED_top_OBUF[15]_inst_i_4_n_1\
    );
\LED_top_OBUF[15]_inst_i_41\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => \^input_circle_status_reg[7]_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \^input_circle_status_reg[1]_0\,
      O => \LED_top_OBUF[15]_inst_i_41_n_1\
    );
\LED_top_OBUF[15]_inst_i_42\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \^input_circle_status_reg[7]_0\,
      O => \^input_circle_status_reg[1]_1\
    );
\LED_top_OBUF[15]_inst_i_43\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^input_circle_status_reg[7]_0\,
      I1 => \^input_circle_status_reg[1]_0\,
      I2 => \^input_circle_status_reg[0]_0\,
      O => \^input_circle_status_reg[7]_4\
    );
\LED_top_OBUF[15]_inst_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080000000800"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \^input_circle_status_reg[7]_0\,
      I3 => Q(10),
      I4 => upordown,
      I5 => Q(11),
      O => \LED_top_OBUF[15]_inst_i_44_n_1\
    );
\LED_top_OBUF[15]_inst_i_45\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \input_circle_status_reg_n_1_[5]\,
      I1 => \input_circle_status_reg_n_1_[4]\,
      I2 => \input_circle_status_reg_n_1_[6]\,
      I3 => \^input_circle_status_reg[0]_0\,
      O => \LED_top_OBUF[15]_inst_i_45_n_1\
    );
\LED_top_OBUF[15]_inst_i_46\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \input_circle_status_reg_n_1_[4]\,
      I1 => \input_circle_status_reg_n_1_[5]\,
      O => \LED_top_OBUF[15]_inst_i_46_n_1\
    );
\LED_top_OBUF[15]_inst_i_47\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^input_circle_status_reg[2]_0\,
      I1 => \^input_circle_status_reg[7]_0\,
      O => \LED_top_OBUF[15]_inst_i_47_n_1\
    );
\LED_top_OBUF[15]_inst_i_48\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^input_circle_status_reg[3]_0\,
      I1 => \input_circle_status_reg_n_1_[5]\,
      I2 => \input_circle_status_reg_n_1_[4]\,
      O => \LED_top_OBUF[15]_inst_i_48_n_1\
    );
\LED_top_OBUF[15]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAABABABAB"
    )
        port map (
      I0 => usersw_msb(3),
      I1 => usersw_msb(2),
      I2 => \LED_top_OBUF[15]_inst_i_16_n_1\,
      I3 => \LED_top_OBUF[15]_inst_i_1_2\,
      I4 => \LED_top_OBUF[15]_inst_i_18_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[15]_inst_i_5_n_1\
    );
\LED_top_OBUF[15]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFD0FFD0FFD0FFFF"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_19_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_20_n_1\,
      I2 => \LED_top_OBUF[15]_inst_i_21_n_1\,
      I3 => \LED_top_OBUF[15]_inst_i_22_n_1\,
      I4 => usersw_msb(1),
      I5 => \LED_top_OBUF[15]_inst_i_23_n_1\,
      O => \LED_top_OBUF[15]_inst_i_6_n_1\
    );
\LED_top_OBUF[15]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFF0BFBFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_24_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_6_0\,
      I2 => \^input_circle_status_reg[7]_2\,
      I3 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I4 => \^input_circle_status_reg[3]_1\,
      I5 => \LED_top_OBUF[15]_inst_i_5_0\,
      O => \LED_top_OBUF[15]_inst_i_7_n_1\
    );
\LED_top_OBUF[15]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000003336"
    )
        port map (
      I0 => \^input_circle_status_reg[2]_0\,
      I1 => \^input_circle_status_reg[3]_0\,
      I2 => \^input_circle_status_reg[1]_0\,
      I3 => \^input_circle_status_reg[0]_0\,
      I4 => \LED_top_OBUF[15]_inst_i_30_n_1\,
      I5 => \^input_circle_status_reg[7]_0\,
      O => \LED_top_OBUF[15]_inst_i_8_n_1\
    );
\LED_top_OBUF[15]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFDFFFD"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_3_1\,
      I1 => \^input_circle_status_reg[3]_1\,
      I2 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I3 => \^input_circle_status_reg[7]_2\,
      I4 => \LED_top_OBUF[15]_inst_i_3_0\,
      O => \LED_top_OBUF[15]_inst_i_9_n_1\
    );
\LED_top_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"028A0202028A028A"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => usersw_msb(3),
      I2 => \LED_top_OBUF[1]_inst_i_2_n_1\,
      I3 => usersw_msb(2),
      I4 => \LED_top_OBUF[1]_inst_i_3_n_1\,
      I5 => \LED_top_OBUF[1]_inst_i_4_n_1\,
      O => \^led_top_obuf\(1)
    );
\LED_top_OBUF[1]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \^input_circle_status_reg[3]_0\,
      I1 => \^input_circle_status_reg[2]_0\,
      I2 => \input_circle_status_reg_n_1_[6]\,
      I3 => \input_circle_status_reg_n_1_[5]\,
      I4 => usersw_msb(0),
      I5 => \input_circle_status_reg_n_1_[4]\,
      O => \LED_top_OBUF[1]_inst_i_10_n_1\
    );
\LED_top_OBUF[1]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CD3FCDFFFD3FFDFF"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_8_0\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \^input_circle_status_reg[0]_0\,
      I3 => \^input_circle_status_reg[1]_0\,
      I4 => \LED_top_OBUF[1]_inst_i_7_0\,
      I5 => \LED_top_OBUF[1]_inst_i_20_0\,
      O => \LED_top_OBUF[1]_inst_i_11_n_1\
    );
\LED_top_OBUF[1]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDDDDFCFFFFFF"
    )
        port map (
      I0 => S_f7(0),
      I1 => \SEGMENT7_top[7]_i_15_0\,
      I2 => S_RST,
      I3 => \LED_top_OBUF[0]_inst_i_37_0\,
      I4 => \^input_circle_status_reg[0]_0\,
      I5 => \^input_circle_status_reg[1]_0\,
      O => \LED_top_OBUF[1]_inst_i_12_n_1\
    );
\LED_top_OBUF[1]_inst_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^input_circle_status_reg[7]_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \^input_circle_status_reg[1]_0\,
      O => \^input_circle_status_reg[7]_3\
    );
\LED_top_OBUF[1]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0EEE00000000000"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_1\,
      I1 => \^input_circle_status_reg[7]_4\,
      I2 => alubrnch_out(17),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => alubrnch_out(1),
      I5 => usersw_msb(0),
      O => \LED_top_OBUF[1]_inst_i_15_n_1\
    );
\LED_top_OBUF[1]_inst_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_4_0\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \^input_circle_status_reg[1]_0\,
      I3 => \^input_circle_status_reg[0]_0\,
      O => \LED_top_OBUF[1]_inst_i_16_n_1\
    );
\LED_top_OBUF[1]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F8CCCC0088CCCC"
    )
        port map (
      I0 => \LED_top_OBUF[3]_inst_i_10_0\(0),
      I1 => \LED_top_OBUF[2]_inst_i_35_n_1\,
      I2 => \LED_top_OBUF[8]_inst_i_8_0\(1),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => \^input_circle_status_reg[2]_0\,
      I5 => \LED_top_OBUF[2]_inst_i_36_n_1\,
      O => \LED_top_OBUF[1]_inst_i_17_n_1\
    );
\LED_top_OBUF[1]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0AAA2AAA8AAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[2]_inst_i_37_n_1\,
      I1 => \^input_circle_status_reg[1]_0\,
      I2 => \^input_circle_status_reg[2]_0\,
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => \LED_top_OBUF[2]_inst_i_9_0\(1),
      I5 => \LED_top_OBUF[3]_inst_i_10_2\(1),
      O => \LED_top_OBUF[1]_inst_i_18_n_1\
    );
\LED_top_OBUF[1]_inst_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF31030103"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_20_1\,
      I1 => \^input_circle_status_reg[3]_0\,
      I2 => \^input_circle_status_reg[7]_0\,
      I3 => \LED_top_OBUF[9]_inst_i_31_n_1\,
      I4 => \SEGMENT7_top[7]_i_43_0\,
      I5 => \LED_top_OBUF[2]_inst_i_28_n_1\,
      O => \LED_top_OBUF[1]_inst_i_19_n_1\
    );
\LED_top_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F022F022F022FF22"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_5_n_1\,
      I1 => \LED_top_OBUF[1]_inst_i_6_n_1\,
      I2 => \LED_top_OBUF[1]_inst_i_7_n_1\,
      I3 => usersw_msb(2),
      I4 => \LED_top_OBUF[1]_inst_i_8_n_1\,
      I5 => \LED_top_OBUF[1]_inst_i_9_n_1\,
      O => \LED_top_OBUF[1]_inst_i_2_n_1\
    );
\LED_top_OBUF[1]_inst_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAEEEAE"
    )
        port map (
      I0 => \LED_top_OBUF[3]_inst_i_27_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => alubrnch_out(1),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => alubrnch_out(17),
      I5 => \LED_top_OBUF[1]_inst_i_35_n_1\,
      O => \LED_top_OBUF[1]_inst_i_20_n_1\
    );
\LED_top_OBUF[1]_inst_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DCDFDCDFFFFF0000"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_7_0\,
      I1 => \^input_circle_status_reg[1]_0\,
      I2 => \^input_circle_status_reg[0]_0\,
      I3 => \LED_top_OBUF[1]_inst_i_8_1\,
      I4 => \LED_top_OBUF[1]_inst_i_12_n_1\,
      I5 => \^input_circle_status_reg[2]_0\,
      O => \LED_top_OBUF[1]_inst_i_22_n_1\
    );
\LED_top_OBUF[1]_inst_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \LED_top_OBUF[0]_inst_i_24_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \LED_top_OBUF[1]_inst_i_37_n_1\,
      I3 => usersw_msb(1),
      O => \LED_top_OBUF[1]_inst_i_23_n_1\
    );
\LED_top_OBUF[1]_inst_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_8_1\,
      I1 => \^input_circle_status_reg[7]_2\,
      I2 => \LED_top_OBUF[1]_inst_i_8_0\,
      I3 => \^input_circle_status_reg[3]_1\,
      I4 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      O => \LED_top_OBUF[1]_inst_i_24_n_1\
    );
\LED_top_OBUF[1]_inst_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAFBFFFFFEFFF"
    )
        port map (
      I0 => \^input_circle_status_reg[7]_0\,
      I1 => \^input_circle_status_reg[1]_0\,
      I2 => \^input_circle_status_reg[0]_0\,
      I3 => \SEGMENT7_top[7]_i_47_0\,
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => S_imm_20(0),
      O => \LED_top_OBUF[1]_inst_i_27_n_1\
    );
\LED_top_OBUF[1]_inst_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44FF445044504450"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_33_n_1\,
      I1 => Q(10),
      I2 => Q(1),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => \LED_top_OBUF[8]_inst_i_8_0\(1),
      I5 => \^input_circle_status_reg[7]_4\,
      O => \LED_top_OBUF[1]_inst_i_28_n_1\
    );
\LED_top_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04040455"
    )
        port map (
      I0 => usersw_msb(1),
      I1 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      I2 => \LED_top_OBUF[1]_inst_i_11_n_1\,
      I3 => \LED_top_OBUF[4]_inst_i_15_n_1\,
      I4 => \LED_top_OBUF[1]_inst_i_12_n_1\,
      O => \LED_top_OBUF[1]_inst_i_3_n_1\
    );
\LED_top_OBUF[1]_inst_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D3CFD3FF"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_20_0\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \^input_circle_status_reg[2]_0\,
      I3 => \^input_circle_status_reg[0]_0\,
      I4 => \LED_top_OBUF[1]_inst_i_20_1\,
      O => \LED_top_OBUF[1]_inst_i_35_n_1\
    );
\LED_top_OBUF[1]_inst_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030230000302000"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_8_0\,
      I1 => \^input_circle_status_reg[1]_0\,
      I2 => \^input_circle_status_reg[0]_0\,
      I3 => \^input_circle_status_reg[2]_0\,
      I4 => \^input_circle_status_reg[7]_0\,
      I5 => \LED_top_OBUF[1]_inst_i_23_0\,
      O => \LED_top_OBUF[1]_inst_i_37_n_1\
    );
\LED_top_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07070700FFFFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_23_0\,
      I1 => \^input_circle_status_reg[7]_3\,
      I2 => \LED_top_OBUF[1]_inst_i_15_n_1\,
      I3 => usersw_msb(0),
      I4 => \LED_top_OBUF[1]_inst_i_16_n_1\,
      I5 => \LED_top_OBUF[6]_inst_i_21_n_1\,
      O => \LED_top_OBUF[1]_inst_i_4_n_1\
    );
\LED_top_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF540000FFFFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_17_n_1\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \LED_top_OBUF[1]_inst_i_18_n_1\,
      I3 => \LED_top_OBUF[1]_inst_i_19_n_1\,
      I4 => \LED_top_OBUF[1]_inst_i_20_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[1]_inst_i_5_n_1\
    );
\LED_top_OBUF[1]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_20_1\,
      I1 => \^input_circle_status_reg[7]_1\,
      I2 => alubrnch_out(1),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => alubrnch_out(17),
      I5 => \LED_top_OBUF[6]_inst_i_15_n_1\,
      O => \LED_top_OBUF[1]_inst_i_6_n_1\
    );
\LED_top_OBUF[1]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF7077"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_23_0\,
      I1 => \^input_circle_status_reg[2]_2\,
      I2 => \LED_top_OBUF[1]_inst_i_22_n_1\,
      I3 => \LED_top_OBUF[6]_inst_i_11_n_1\,
      I4 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I5 => \LED_top_OBUF[1]_inst_i_23_n_1\,
      O => \LED_top_OBUF[1]_inst_i_7_n_1\
    );
\LED_top_OBUF[1]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_24_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_8_n_1\,
      I2 => \SEGMENT7_top[7]_i_11_0\,
      I3 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I4 => \SEGMENT7_top[7]_i_11_1\,
      I5 => usersw_msb(0),
      O => \LED_top_OBUF[1]_inst_i_8_n_1\
    );
\LED_top_OBUF[1]_inst_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBAA"
    )
        port map (
      I0 => usersw_msb(1),
      I1 => \LED_top_OBUF[1]_inst_i_27_n_1\,
      I2 => \LED_top_OBUF[1]_inst_i_28_n_1\,
      I3 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      O => \LED_top_OBUF[1]_inst_i_9_n_1\
    );
\LED_top_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A2222200A2"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => usersw_msb(2),
      I2 => \LED_top_OBUF[2]_inst_i_2_n_1\,
      I3 => \LED_top_OBUF[2]_inst_i_3_n_1\,
      I4 => usersw_msb(3),
      I5 => \LED_top_OBUF[2]_inst_i_4_n_1\,
      O => \^led_top_obuf\(2)
    );
\LED_top_OBUF[2]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAA222A2"
    )
        port map (
      I0 => \LED_top_OBUF[2]_inst_i_29_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => alubrnch_out(2),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => alubrnch_out(18),
      I5 => \LED_top_OBUF[3]_inst_i_27_n_1\,
      O => \LED_top_OBUF[2]_inst_i_10_n_1\
    );
\LED_top_OBUF[2]_inst_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => \LED_top_OBUF[2]_inst_i_4_0\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \^input_circle_status_reg[1]_0\,
      I3 => \^input_circle_status_reg[0]_0\,
      O => \LED_top_OBUF[2]_inst_i_12_n_1\
    );
\LED_top_OBUF[2]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA8080000"
    )
        port map (
      I0 => usersw_msb(0),
      I1 => alubrnch_out(2),
      I2 => \SEGMENT7_top[7]_i_15_0\,
      I3 => alubrnch_out(18),
      I4 => \LED_top_OBUF[15]_inst_i_41_n_1\,
      I5 => \LED_top_OBUF[2]_inst_i_31_n_1\,
      O => \LED_top_OBUF[2]_inst_i_13_n_1\
    );
\LED_top_OBUF[2]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2A2A00AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[3]_inst_i_14_n_1\,
      I1 => \LED_top_OBUF[2]_inst_i_8_0\,
      I2 => \^input_circle_status_reg[1]_1\,
      I3 => \SEGMENT7_top[7]_i_17_0\,
      I4 => \^input_circle_status_reg[7]_0\,
      I5 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      O => \LED_top_OBUF[2]_inst_i_14_n_1\
    );
\LED_top_OBUF[2]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDDDFFFFFFDFF"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \^input_circle_status_reg[0]_0\,
      I3 => \LED_top_OBUF[8]_inst_i_8_0\(2),
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => S_imm_20(0),
      O => \LED_top_OBUF[2]_inst_i_15_n_1\
    );
\LED_top_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAFEAE"
    )
        port map (
      I0 => \LED_top_OBUF[2]_inst_i_5_n_1\,
      I1 => \LED_top_OBUF[2]_inst_i_6_n_1\,
      I2 => \LED_top_OBUF[15]_inst_i_8_n_1\,
      I3 => \LED_top_OBUF[2]_inst_i_7_n_1\,
      I4 => usersw_msb(0),
      I5 => \LED_top_OBUF[2]_inst_i_8_n_1\,
      O => \LED_top_OBUF[2]_inst_i_2_n_1\
    );
\LED_top_OBUF[2]_inst_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FFE3E3F3FFEFEF"
    )
        port map (
      I0 => \LED_top_OBUF[4]_inst_i_26_0\,
      I1 => \^input_circle_status_reg[2]_0\,
      I2 => \^input_circle_status_reg[1]_0\,
      I3 => \LED_top_OBUF[2]_inst_i_8_0\,
      I4 => \^input_circle_status_reg[0]_0\,
      I5 => \LED_top_OBUF[2]_inst_i_2_2\,
      O => \LED_top_OBUF[2]_inst_i_23_n_1\
    );
\LED_top_OBUF[2]_inst_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \^input_circle_status_reg[7]_0\,
      I1 => \LED_top_OBUF[0]_inst_i_24_n_1\,
      I2 => \LED_top_OBUF[2]_inst_i_34_n_1\,
      I3 => usersw_msb(1),
      O => \LED_top_OBUF[2]_inst_i_24_n_1\
    );
\LED_top_OBUF[2]_inst_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F8CCCC0088CCCC"
    )
        port map (
      I0 => \LED_top_OBUF[3]_inst_i_10_0\(1),
      I1 => \LED_top_OBUF[2]_inst_i_35_n_1\,
      I2 => \LED_top_OBUF[8]_inst_i_8_0\(2),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => \^input_circle_status_reg[2]_0\,
      I5 => \LED_top_OBUF[2]_inst_i_36_n_1\,
      O => \LED_top_OBUF[2]_inst_i_25_n_1\
    );
\LED_top_OBUF[2]_inst_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0AAA2AAA8AAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[2]_inst_i_37_n_1\,
      I1 => \^input_circle_status_reg[1]_0\,
      I2 => \^input_circle_status_reg[2]_0\,
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => \LED_top_OBUF[2]_inst_i_9_0\(2),
      I5 => \LED_top_OBUF[3]_inst_i_10_2\(2),
      O => \LED_top_OBUF[2]_inst_i_26_n_1\
    );
\LED_top_OBUF[2]_inst_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAA000057F7"
    )
        port map (
      I0 => \LED_top_OBUF[9]_inst_i_31_n_1\,
      I1 => \SEGMENT7_top[7]_i_29_0\(1),
      I2 => \SEGMENT7_top[7]_i_15_0\,
      I3 => \SEGMENT7_top[7]_i_29_0\(5),
      I4 => \^input_circle_status_reg[3]_0\,
      I5 => \^input_circle_status_reg[7]_0\,
      O => \LED_top_OBUF[2]_inst_i_27_n_1\
    );
\LED_top_OBUF[2]_inst_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDDDDDD5DD"
    )
        port map (
      I0 => \LED_top_OBUF[10]_inst_i_26_n_1\,
      I1 => \^input_circle_status_reg[3]_0\,
      I2 => \SEGMENT7_top[7]_i_15_0\,
      I3 => S_imm_20(0),
      I4 => \LED_top_OBUF[2]_inst_i_38_n_1\,
      I5 => \^input_circle_status_reg[2]_0\,
      O => \LED_top_OBUF[2]_inst_i_28_n_1\
    );
\LED_top_OBUF[2]_inst_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2C302C00"
    )
        port map (
      I0 => \LED_top_OBUF[2]_inst_i_10_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \^input_circle_status_reg[2]_0\,
      I3 => \^input_circle_status_reg[0]_0\,
      I4 => \LED_top_OBUF[2]_inst_i_10_0\,
      O => \LED_top_OBUF[2]_inst_i_29_n_1\
    );
\LED_top_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005D5D005D"
    )
        port map (
      I0 => usersw_msb(1),
      I1 => \LED_top_OBUF[2]_inst_i_9_n_1\,
      I2 => \LED_top_OBUF[2]_inst_i_10_n_1\,
      I3 => \LED_top_OBUF[2]_inst_i_1_0\,
      I4 => \LED_top_OBUF[6]_inst_i_15_n_1\,
      I5 => usersw_msb(2),
      O => \LED_top_OBUF[2]_inst_i_3_n_1\
    );
\LED_top_OBUF[2]_inst_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080000000800"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \^input_circle_status_reg[7]_0\,
      I3 => \LED_top_OBUF[15]_inst_i_6_2\(2),
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => \LED_top_OBUF[15]_inst_i_6_2\(9),
      O => \LED_top_OBUF[2]_inst_i_31_n_1\
    );
\LED_top_OBUF[2]_inst_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030230000302000"
    )
        port map (
      I0 => \LED_top_OBUF[2]_inst_i_2_3\,
      I1 => \^input_circle_status_reg[1]_0\,
      I2 => \^input_circle_status_reg[0]_0\,
      I3 => \^input_circle_status_reg[2]_0\,
      I4 => \^input_circle_status_reg[7]_0\,
      I5 => \LED_top_OBUF[2]_inst_i_24_0\,
      O => \LED_top_OBUF[2]_inst_i_34_n_1\
    );
\LED_top_OBUF[2]_inst_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \^input_circle_status_reg[3]_0\,
      O => \LED_top_OBUF[2]_inst_i_35_n_1\
    );
\LED_top_OBUF[2]_inst_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^input_circle_status_reg[0]_0\,
      I1 => \^input_circle_status_reg[1]_0\,
      O => \LED_top_OBUF[2]_inst_i_36_n_1\
    );
\LED_top_OBUF[2]_inst_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55554555"
    )
        port map (
      I0 => \^input_circle_status_reg[3]_0\,
      I1 => \SEGMENT7_top[7]_i_15_0\,
      I2 => S_f7(0),
      I3 => \^input_circle_status_reg[1]_0\,
      I4 => \^input_circle_status_reg[2]_0\,
      O => \LED_top_OBUF[2]_inst_i_37_n_1\
    );
\LED_top_OBUF[2]_inst_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[7]_0\,
      O => \LED_top_OBUF[2]_inst_i_38_n_1\
    );
\LED_top_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FD55FD55FD0000"
    )
        port map (
      I0 => \LED_top_OBUF[6]_inst_i_21_n_1\,
      I1 => \LED_top_OBUF[2]_inst_i_12_n_1\,
      I2 => usersw_msb(0),
      I3 => \LED_top_OBUF[2]_inst_i_13_n_1\,
      I4 => \LED_top_OBUF[2]_inst_i_14_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[2]_inst_i_4_n_1\
    );
\LED_top_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBBAAAA"
    )
        port map (
      I0 => usersw_msb(1),
      I1 => \LED_top_OBUF[2]_inst_i_15_n_1\,
      I2 => \LED_top_OBUF[15]_inst_i_33_n_1\,
      I3 => \LED_top_OBUF[2]_inst_i_10_1\,
      I4 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      O => \LED_top_OBUF[2]_inst_i_5_n_1\
    );
\LED_top_OBUF[2]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \LED_top_OBUF[2]_inst_i_2_2\,
      I1 => \^input_circle_status_reg[7]_2\,
      I2 => \LED_top_OBUF[2]_inst_i_2_3\,
      I3 => \^input_circle_status_reg[3]_1\,
      I4 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      O => \LED_top_OBUF[2]_inst_i_6_n_1\
    );
\LED_top_OBUF[2]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0A0C0A0CFA0C0"
    )
        port map (
      I0 => \LED_top_OBUF[2]_inst_i_2_0\,
      I1 => \LED_top_OBUF[2]_inst_i_2_1\,
      I2 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I3 => \^input_circle_status_reg[3]_1\,
      I4 => \LED_top_OBUF[2]_inst_i_10_0\,
      I5 => \^input_circle_status_reg[7]_2\,
      O => \LED_top_OBUF[2]_inst_i_7_n_1\
    );
\LED_top_OBUF[2]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF7077"
    )
        port map (
      I0 => \LED_top_OBUF[2]_inst_i_24_0\,
      I1 => \^input_circle_status_reg[2]_2\,
      I2 => \LED_top_OBUF[2]_inst_i_23_n_1\,
      I3 => \LED_top_OBUF[6]_inst_i_11_n_1\,
      I4 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I5 => \LED_top_OBUF[2]_inst_i_24_n_1\,
      O => \LED_top_OBUF[2]_inst_i_8_n_1\
    );
\LED_top_OBUF[2]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF54"
    )
        port map (
      I0 => \LED_top_OBUF[2]_inst_i_25_n_1\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \LED_top_OBUF[2]_inst_i_26_n_1\,
      I3 => \LED_top_OBUF[2]_inst_i_27_n_1\,
      I4 => \LED_top_OBUF[2]_inst_i_28_n_1\,
      O => \LED_top_OBUF[2]_inst_i_9_n_1\
    );
\LED_top_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A2222200A2"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => usersw_msb(2),
      I2 => \LED_top_OBUF[3]_inst_i_2_n_1\,
      I3 => \LED_top_OBUF[3]_inst_i_3_n_1\,
      I4 => usersw_msb(3),
      I5 => \LED_top_OBUF[3]_inst_i_4_n_1\,
      O => \^led_top_obuf\(3)
    );
\LED_top_OBUF[3]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AF80"
    )
        port map (
      I0 => \LED_top_OBUF[3]_inst_i_28_n_1\,
      I1 => \LED_top_OBUF[3]_inst_i_9_0\,
      I2 => \^input_circle_status_reg[0]_0\,
      I3 => \^input_circle_status_reg[7]_0\,
      I4 => \LED_top_OBUF[3]_inst_i_29_n_1\,
      I5 => \LED_top_OBUF[3]_inst_i_30_n_1\,
      O => \LED_top_OBUF[3]_inst_i_10_n_1\
    );
\LED_top_OBUF[3]_inst_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => usersw_msb(0),
      I1 => \^input_circle_status_reg[1]_1\,
      I2 => \SEGMENT7_top[7]_i_14_0\,
      O => \LED_top_OBUF[3]_inst_i_12_n_1\
    );
\LED_top_OBUF[3]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA8080000"
    )
        port map (
      I0 => usersw_msb(0),
      I1 => alubrnch_out(3),
      I2 => \SEGMENT7_top[7]_i_15_0\,
      I3 => alubrnch_out(19),
      I4 => \LED_top_OBUF[15]_inst_i_41_n_1\,
      I5 => \LED_top_OBUF[3]_inst_i_32_n_1\,
      O => \LED_top_OBUF[3]_inst_i_13_n_1\
    );
\LED_top_OBUF[3]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFFFF"
    )
        port map (
      I0 => \SEGMENT7_top[7]_i_15_0\,
      I1 => S_f7(0),
      I2 => \LED_top_OBUF[3]_inst_i_33_n_1\,
      I3 => \^input_circle_status_reg[2]_0\,
      I4 => \LED_top_OBUF[6]_inst_i_11_n_1\,
      I5 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      O => \LED_top_OBUF[3]_inst_i_14_n_1\
    );
\LED_top_OBUF[3]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA80AA80AA80"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      I1 => \LED_top_OBUF[3]_inst_i_8_0\,
      I2 => \^input_circle_status_reg[1]_1\,
      I3 => \LED_top_OBUF[3]_inst_i_35_n_1\,
      I4 => \^input_circle_status_reg[7]_4\,
      I5 => \LED_top_OBUF[3]_inst_i_2_2\,
      O => \LED_top_OBUF[3]_inst_i_15_n_1\
    );
\LED_top_OBUF[3]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDDDFFFFFFDFF"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \^input_circle_status_reg[0]_0\,
      I3 => \LED_top_OBUF[8]_inst_i_8_0\(3),
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => S_imm_20(0),
      O => \LED_top_OBUF[3]_inst_i_16_n_1\
    );
\LED_top_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAFEAE"
    )
        port map (
      I0 => \LED_top_OBUF[3]_inst_i_5_n_1\,
      I1 => \LED_top_OBUF[3]_inst_i_6_n_1\,
      I2 => \LED_top_OBUF[15]_inst_i_8_n_1\,
      I3 => \LED_top_OBUF[3]_inst_i_7_n_1\,
      I4 => usersw_msb(0),
      I5 => \LED_top_OBUF[3]_inst_i_8_n_1\,
      O => \LED_top_OBUF[3]_inst_i_2_n_1\
    );
\LED_top_OBUF[3]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FFE3E3F3FFEFEF"
    )
        port map (
      I0 => \LED_top_OBUF[4]_inst_i_26_0\,
      I1 => \^input_circle_status_reg[2]_0\,
      I2 => \^input_circle_status_reg[1]_0\,
      I3 => \LED_top_OBUF[3]_inst_i_8_0\,
      I4 => \^input_circle_status_reg[0]_0\,
      I5 => \LED_top_OBUF[3]_inst_i_2_3\,
      O => \LED_top_OBUF[3]_inst_i_24_n_1\
    );
\LED_top_OBUF[3]_inst_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_38_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \LED_top_OBUF[3]_inst_i_8_1\,
      I3 => usersw_msb(1),
      O => \LED_top_OBUF[3]_inst_i_25_n_1\
    );
\LED_top_OBUF[3]_inst_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D3CFD3FF"
    )
        port map (
      I0 => \LED_top_OBUF[3]_inst_i_9_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \^input_circle_status_reg[2]_0\,
      I3 => \^input_circle_status_reg[0]_0\,
      I4 => \LED_top_OBUF[3]_inst_i_9_0\,
      O => \LED_top_OBUF[3]_inst_i_26_n_1\
    );
\LED_top_OBUF[3]_inst_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => usersw_msb(0),
      I2 => \input_circle_status_reg_n_1_[4]\,
      I3 => \input_circle_status_reg_n_1_[5]\,
      I4 => \input_circle_status_reg_n_1_[6]\,
      I5 => \^input_circle_status_reg[3]_0\,
      O => \LED_top_OBUF[3]_inst_i_27_n_1\
    );
\LED_top_OBUF[3]_inst_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B0008003030303"
    )
        port map (
      I0 => \LED_top_OBUF[8]_inst_i_8_0\(3),
      I1 => \^input_circle_status_reg[1]_0\,
      I2 => \^input_circle_status_reg[2]_0\,
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => \LED_top_OBUF[3]_inst_i_10_0\(2),
      I5 => \^input_circle_status_reg[7]_0\,
      O => \LED_top_OBUF[3]_inst_i_28_n_1\
    );
\LED_top_OBUF[3]_inst_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4400444044044444"
    )
        port map (
      I0 => \^input_circle_status_reg[0]_0\,
      I1 => \^input_circle_status_reg[1]_0\,
      I2 => \^input_circle_status_reg[2]_0\,
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => \LED_top_OBUF[3]_inst_i_10_2\(3),
      I5 => S_f7(0),
      O => \LED_top_OBUF[3]_inst_i_29_n_1\
    );
\LED_top_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005D5D005D"
    )
        port map (
      I0 => usersw_msb(1),
      I1 => \LED_top_OBUF[3]_inst_i_9_n_1\,
      I2 => \LED_top_OBUF[3]_inst_i_10_n_1\,
      I3 => \LED_top_OBUF[3]_inst_i_1_0\,
      I4 => \LED_top_OBUF[6]_inst_i_15_n_1\,
      I5 => usersw_msb(2),
      O => \LED_top_OBUF[3]_inst_i_3_n_1\
    );
\LED_top_OBUF[3]_inst_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00FFBBFF5FFF"
    )
        port map (
      I0 => \^input_circle_status_reg[2]_0\,
      I1 => \LED_top_OBUF[4]_inst_i_26_3\,
      I2 => \LED_top_OBUF[3]_inst_i_10_1\,
      I3 => \LED_top_OBUF[10]_inst_i_26_n_1\,
      I4 => \^input_circle_status_reg[3]_0\,
      I5 => \LED_top_OBUF[9]_inst_i_35_n_1\,
      O => \LED_top_OBUF[3]_inst_i_30_n_1\
    );
\LED_top_OBUF[3]_inst_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080000000800"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \^input_circle_status_reg[7]_0\,
      I3 => \LED_top_OBUF[15]_inst_i_6_2\(3),
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => \LED_top_OBUF[15]_inst_i_6_2\(10),
      O => \LED_top_OBUF[3]_inst_i_32_n_1\
    );
\LED_top_OBUF[3]_inst_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^input_circle_status_reg[0]_0\,
      I1 => \^input_circle_status_reg[1]_0\,
      O => \LED_top_OBUF[3]_inst_i_33_n_1\
    );
\LED_top_OBUF[3]_inst_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080000000800"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \^input_circle_status_reg[7]_0\,
      I3 => Q(2),
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => Q(10),
      O => \LED_top_OBUF[3]_inst_i_35_n_1\
    );
\LED_top_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D5D5D5D00005D00"
    )
        port map (
      I0 => \LED_top_OBUF[6]_inst_i_21_n_1\,
      I1 => \LED_top_OBUF[3]_inst_i_12_n_1\,
      I2 => \LED_top_OBUF[3]_inst_i_13_n_1\,
      I3 => \LED_top_OBUF[3]_inst_i_14_n_1\,
      I4 => \LED_top_OBUF[3]_inst_i_15_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[3]_inst_i_4_n_1\
    );
\LED_top_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBBAAAA"
    )
        port map (
      I0 => usersw_msb(1),
      I1 => \LED_top_OBUF[3]_inst_i_16_n_1\,
      I2 => \LED_top_OBUF[15]_inst_i_33_n_1\,
      I3 => \LED_top_OBUF[3]_inst_i_9_1\,
      I4 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      O => \LED_top_OBUF[3]_inst_i_5_n_1\
    );
\LED_top_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \LED_top_OBUF[3]_inst_i_2_3\,
      I1 => \^input_circle_status_reg[7]_2\,
      I2 => \LED_top_OBUF[3]_inst_i_2_2\,
      I3 => \^input_circle_status_reg[3]_1\,
      I4 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      O => \LED_top_OBUF[3]_inst_i_6_n_1\
    );
\LED_top_OBUF[3]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0A0C0A0CFA0C0"
    )
        port map (
      I0 => \LED_top_OBUF[3]_inst_i_2_0\,
      I1 => \LED_top_OBUF[3]_inst_i_2_1\,
      I2 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I3 => \^input_circle_status_reg[3]_1\,
      I4 => \LED_top_OBUF[3]_inst_i_9_0\,
      I5 => \^input_circle_status_reg[7]_2\,
      O => \LED_top_OBUF[3]_inst_i_7_n_1\
    );
\LED_top_OBUF[3]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF7077"
    )
        port map (
      I0 => \SEGMENT7_top[7]_i_8_1\,
      I1 => \^input_circle_status_reg[2]_2\,
      I2 => \LED_top_OBUF[3]_inst_i_24_n_1\,
      I3 => \LED_top_OBUF[6]_inst_i_11_n_1\,
      I4 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I5 => \LED_top_OBUF[3]_inst_i_25_n_1\,
      O => \LED_top_OBUF[3]_inst_i_8_n_1\
    );
\LED_top_OBUF[3]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAEEEAE"
    )
        port map (
      I0 => \LED_top_OBUF[3]_inst_i_26_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => alubrnch_out(3),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => alubrnch_out(19),
      I5 => \LED_top_OBUF[3]_inst_i_27_n_1\,
      O => \LED_top_OBUF[3]_inst_i_9_n_1\
    );
\LED_top_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202220222022A8AA"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => usersw_msb(3),
      I2 => \LED_top_OBUF[4]_inst_i_2_n_1\,
      I3 => \LED_top_OBUF[4]_inst_i_3_n_1\,
      I4 => usersw_msb(2),
      I5 => \LED_top_OBUF[4]_inst_i_4_n_1\,
      O => \^led_top_obuf\(4)
    );
\LED_top_OBUF[4]_inst_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"13"
    )
        port map (
      I0 => \^input_circle_status_reg[7]_0\,
      I1 => \^input_circle_status_reg[1]_0\,
      I2 => \^input_circle_status_reg[0]_0\,
      O => \^input_circle_status_reg[7]_1\
    );
\LED_top_OBUF[4]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57FF0000FFFFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[4]_inst_i_26_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \LED_top_OBUF[4]_inst_i_3_0\,
      I3 => \LED_top_OBUF[10]_inst_i_26_n_1\,
      I4 => \LED_top_OBUF[4]_inst_i_27_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[4]_inst_i_12_n_1\
    );
\LED_top_OBUF[4]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003FAA3FAA3FAA"
    )
        port map (
      I0 => \LED_top_OBUF[4]_inst_i_28_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_41_n_1\,
      I2 => \LED_top_OBUF[4]_inst_i_1_0\,
      I3 => usersw_msb(0),
      I4 => \^input_circle_status_reg[7]_3\,
      I5 => \SEGMENT7_top[7]_i_28_0\,
      O => \LED_top_OBUF[4]_inst_i_13_n_1\
    );
\LED_top_OBUF[4]_inst_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDDCFFF"
    )
        port map (
      I0 => S_f7(0),
      I1 => \SEGMENT7_top[7]_i_15_0\,
      I2 => \LED_top_OBUF[4]_inst_i_4_1\,
      I3 => \^input_circle_status_reg[0]_0\,
      I4 => \^input_circle_status_reg[1]_0\,
      O => \LED_top_OBUF[4]_inst_i_14_n_1\
    );
\LED_top_OBUF[4]_inst_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I1 => \^input_circle_status_reg[3]_0\,
      I2 => \^input_circle_status_reg[7]_0\,
      I3 => \^input_circle_status_reg[2]_0\,
      O => \LED_top_OBUF[4]_inst_i_15_n_1\
    );
\LED_top_OBUF[4]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8888888A888"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      I1 => \LED_top_OBUF[4]_inst_i_4_0\,
      I2 => \^input_circle_status_reg[7]_3\,
      I3 => Q(3),
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => Q(10),
      O => \LED_top_OBUF[4]_inst_i_16_n_1\
    );
\LED_top_OBUF[4]_inst_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFDFFFD"
    )
        port map (
      I0 => \LED_top_OBUF[4]_inst_i_6_0\,
      I1 => \^input_circle_status_reg[3]_1\,
      I2 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I3 => \^input_circle_status_reg[7]_2\,
      I4 => \LED_top_OBUF[4]_inst_i_6_1\,
      O => \LED_top_OBUF[4]_inst_i_19_n_1\
    );
\LED_top_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E0E0000000E0"
    )
        port map (
      I0 => \LED_top_OBUF[4]_inst_i_5_n_1\,
      I1 => \LED_top_OBUF[4]_inst_i_6_n_1\,
      I2 => usersw_msb(2),
      I3 => \LED_top_OBUF[4]_inst_i_7_n_1\,
      I4 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I5 => \LED_top_OBUF[4]_inst_i_8_n_1\,
      O => \LED_top_OBUF[4]_inst_i_2_n_1\
    );
\LED_top_OBUF[4]_inst_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55DFFFDF"
    )
        port map (
      I0 => \^input_circle_status_reg[3]_1\,
      I1 => \SEGMENT7_top[7]_i_15_0\,
      I2 => S_f7(0),
      I3 => \^input_circle_status_reg[7]_2\,
      I4 => \LED_top_OBUF[4]_inst_i_13_0\,
      O => \LED_top_OBUF[4]_inst_i_20_n_1\
    );
\LED_top_OBUF[4]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888888F"
    )
        port map (
      I0 => \SEGMENT7_top[7]_i_28_0\,
      I1 => \^input_circle_status_reg[2]_2\,
      I2 => \LED_top_OBUF[4]_inst_i_14_n_1\,
      I3 => \^input_circle_status_reg[2]_0\,
      I4 => \^input_circle_status_reg[7]_0\,
      I5 => \^input_circle_status_reg[3]_0\,
      O => \LED_top_OBUF[4]_inst_i_24_n_1\
    );
\LED_top_OBUF[4]_inst_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55750000"
    )
        port map (
      I0 => \^input_circle_status_reg[2]_0\,
      I1 => \^input_circle_status_reg[3]_0\,
      I2 => \^input_circle_status_reg[1]_0\,
      I3 => \LED_top_OBUF[4]_inst_i_26_0\,
      I4 => \LED_top_OBUF[4]_inst_i_35_n_1\,
      I5 => \LED_top_OBUF[4]_inst_i_36_n_1\,
      O => \LED_top_OBUF[4]_inst_i_26_n_1\
    );
\LED_top_OBUF[4]_inst_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAEEEAE"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_39_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => alubrnch_out(4),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => alubrnch_out(20),
      I5 => \SEGMENT7_top[7]_i_29_1\,
      O => \LED_top_OBUF[4]_inst_i_27_n_1\
    );
\LED_top_OBUF[4]_inst_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => \LED_top_OBUF[4]_inst_i_13_0\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \^input_circle_status_reg[1]_0\,
      I3 => \^input_circle_status_reg[0]_0\,
      O => \LED_top_OBUF[4]_inst_i_28_n_1\
    );
\LED_top_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABFBAAAAAAAA"
    )
        port map (
      I0 => usersw_msb(2),
      I1 => \LED_top_OBUF[4]_inst_i_3_0\,
      I2 => \^input_circle_status_reg[7]_1\,
      I3 => \LED_top_OBUF[4]_inst_i_1_0\,
      I4 => \LED_top_OBUF[6]_inst_i_15_n_1\,
      I5 => \LED_top_OBUF[4]_inst_i_12_n_1\,
      O => \LED_top_OBUF[4]_inst_i_3_n_1\
    );
\LED_top_OBUF[4]_inst_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000444000"
    )
        port map (
      I0 => \^input_circle_status_reg[0]_0\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \LED_top_OBUF[4]_inst_i_26_3\,
      I3 => \^input_circle_status_reg[3]_0\,
      I4 => \^input_circle_status_reg[1]_0\,
      I5 => \LED_top_OBUF[4]_inst_i_26_0\,
      O => \LED_top_OBUF[4]_inst_i_35_n_1\
    );
\LED_top_OBUF[4]_inst_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004300030003"
    )
        port map (
      I0 => \LED_top_OBUF[4]_inst_i_26_1\,
      I1 => \^input_circle_status_reg[1]_0\,
      I2 => \^input_circle_status_reg[2]_0\,
      I3 => \LED_top_OBUF[12]_inst_i_22_n_1\,
      I4 => \LED_top_OBUF[4]_inst_i_26_2\,
      I5 => \^input_circle_status_reg[7]_0\,
      O => \LED_top_OBUF[4]_inst_i_36_n_1\
    );
\LED_top_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDD0000DDD0"
    )
        port map (
      I0 => \LED_top_OBUF[6]_inst_i_21_n_1\,
      I1 => \LED_top_OBUF[4]_inst_i_13_n_1\,
      I2 => \LED_top_OBUF[4]_inst_i_14_n_1\,
      I3 => \LED_top_OBUF[4]_inst_i_15_n_1\,
      I4 => \LED_top_OBUF[4]_inst_i_16_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[4]_inst_i_4_n_1\
    );
\LED_top_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEFFAAAAAAAA"
    )
        port map (
      I0 => usersw_msb(1),
      I1 => \SEGMENT7_top[7]_i_13_0\,
      I2 => \LED_top_OBUF[15]_inst_i_33_n_1\,
      I3 => \SEGMENT7_top[7]_i_13_2\,
      I4 => \^input_circle_status_reg[7]_0\,
      I5 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      O => \LED_top_OBUF[4]_inst_i_5_n_1\
    );
\LED_top_OBUF[4]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101015151510151"
    )
        port map (
      I0 => usersw_msb(0),
      I1 => \LED_top_OBUF[4]_inst_i_19_n_1\,
      I2 => \LED_top_OBUF[15]_inst_i_8_n_1\,
      I3 => \LED_top_OBUF[4]_inst_i_20_n_1\,
      I4 => \LED_top_OBUF[15]_inst_i_24_n_1\,
      I5 => \SEGMENT7_top[7]_i_13_3\,
      O => \LED_top_OBUF[4]_inst_i_6_n_1\
    );
\LED_top_OBUF[4]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000ABABFFAB"
    )
        port map (
      I0 => \^input_circle_status_reg[2]_1\,
      I1 => \LED_top_OBUF[4]_inst_i_6_0\,
      I2 => \^input_circle_status_reg[1]_2\,
      I3 => \^input_circle_status_reg[0]_0\,
      I4 => \LED_top_OBUF[4]_inst_i_2_0\,
      I5 => \LED_top_OBUF[4]_inst_i_24_n_1\,
      O => \LED_top_OBUF[4]_inst_i_7_n_1\
    );
\LED_top_OBUF[4]_inst_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_38_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \LED_top_OBUF[4]_inst_i_2_1\,
      I3 => usersw_msb(1),
      O => \LED_top_OBUF[4]_inst_i_8_n_1\
    );
\LED_top_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => usersw_msb(2),
      I2 => \LED_top_OBUF[5]_inst_i_2_n_1\,
      I3 => \LED_top_OBUF[5]_inst_i_3_n_1\,
      I4 => \LED_top_OBUF[5]_inst_i_4_n_1\,
      I5 => \LED_top_OBUF[5]_inst_i_5_n_1\,
      O => \^led_top_obuf\(5)
    );
\LED_top_OBUF[5]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFDFFFD"
    )
        port map (
      I0 => \LED_top_OBUF[5]_inst_i_3_0\,
      I1 => \^input_circle_status_reg[3]_1\,
      I2 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I3 => \^input_circle_status_reg[7]_2\,
      I4 => \LED_top_OBUF[5]_inst_i_3_1\,
      O => \LED_top_OBUF[5]_inst_i_10_n_1\
    );
\LED_top_OBUF[5]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A808AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      I1 => Q(4),
      I2 => \SEGMENT7_top[7]_i_15_0\,
      I3 => Q(10),
      I4 => \LED_top_OBUF[15]_inst_i_33_n_1\,
      I5 => \LED_top_OBUF[6]_inst_i_27_n_1\,
      O => \LED_top_OBUF[5]_inst_i_11_n_1\
    );
\LED_top_OBUF[5]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAA222A2"
    )
        port map (
      I0 => \LED_top_OBUF[6]_inst_i_31_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => alubrnch_out(5),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => alubrnch_out(21),
      I5 => \LED_top_OBUF[5]_inst_i_4_1\,
      O => \LED_top_OBUF[5]_inst_i_12_n_1\
    );
\LED_top_OBUF[5]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777777F7F7F7F7F"
    )
        port map (
      I0 => usersw_msb(0),
      I1 => usersw_msb(1),
      I2 => \LED_top_OBUF[6]_inst_i_33_n_1\,
      I3 => \LED_top_OBUF[5]_inst_i_4_0\,
      I4 => \^input_circle_status_reg[7]_0\,
      I5 => \LED_top_OBUF[6]_inst_i_34_n_1\,
      O => \LED_top_OBUF[5]_inst_i_14_n_1\
    );
\LED_top_OBUF[5]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAAAEAAAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[5]_inst_i_25_n_1\,
      I1 => usersw_msb(0),
      I2 => alubrnch_out(5),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => alubrnch_out(21),
      I5 => \LED_top_OBUF[15]_inst_i_41_n_1\,
      O => \LED_top_OBUF[5]_inst_i_15_n_1\
    );
\LED_top_OBUF[5]_inst_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => usersw_msb(0),
      I1 => \^input_circle_status_reg[1]_1\,
      I2 => \LED_top_OBUF[5]_inst_i_5_0\,
      O => \LED_top_OBUF[5]_inst_i_16_n_1\
    );
\LED_top_OBUF[5]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFBFBFAAAAAAAA"
    )
        port map (
      I0 => usersw_msb(1),
      I1 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      I2 => \LED_top_OBUF[5]_inst_i_5_1\,
      I3 => \^input_circle_status_reg[1]_1\,
      I4 => \LED_top_OBUF[5]_inst_i_2_0\,
      I5 => \LED_top_OBUF[6]_inst_i_35_n_1\,
      O => \LED_top_OBUF[5]_inst_i_17_n_1\
    );
\LED_top_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00008F88"
    )
        port map (
      I0 => \LED_top_OBUF[5]_inst_i_1_0\,
      I1 => \^input_circle_status_reg[2]_2\,
      I2 => \LED_top_OBUF[5]_inst_i_7_n_1\,
      I3 => \LED_top_OBUF[6]_inst_i_11_n_1\,
      I4 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I5 => \LED_top_OBUF[5]_inst_i_8_n_1\,
      O => \LED_top_OBUF[5]_inst_i_2_n_1\
    );
\LED_top_OBUF[5]_inst_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080000000800"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \^input_circle_status_reg[7]_0\,
      I3 => \LED_top_OBUF[15]_inst_i_6_2\(4),
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => \LED_top_OBUF[15]_inst_i_6_2\(11),
      O => \LED_top_OBUF[5]_inst_i_25_n_1\
    );
\LED_top_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFB8"
    )
        port map (
      I0 => \LED_top_OBUF[5]_inst_i_9_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_8_n_1\,
      I2 => \LED_top_OBUF[5]_inst_i_10_n_1\,
      I3 => usersw_msb(0),
      I4 => \LED_top_OBUF[5]_inst_i_11_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[5]_inst_i_3_n_1\
    );
\LED_top_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBABAAAAAAAA"
    )
        port map (
      I0 => usersw_msb(3),
      I1 => \LED_top_OBUF[5]_inst_i_12_n_1\,
      I2 => \LED_top_OBUF[5]_inst_i_1_1\,
      I3 => \LED_top_OBUF[6]_inst_i_15_n_1\,
      I4 => usersw_msb(2),
      I5 => \LED_top_OBUF[5]_inst_i_14_n_1\,
      O => \LED_top_OBUF[5]_inst_i_4_n_1\
    );
\LED_top_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFDFDFDDDDDDDD"
    )
        port map (
      I0 => usersw_msb(3),
      I1 => usersw_msb(2),
      I2 => \LED_top_OBUF[6]_inst_i_21_n_1\,
      I3 => \LED_top_OBUF[5]_inst_i_15_n_1\,
      I4 => \LED_top_OBUF[5]_inst_i_16_n_1\,
      I5 => \LED_top_OBUF[5]_inst_i_17_n_1\,
      O => \LED_top_OBUF[5]_inst_i_5_n_1\
    );
\LED_top_OBUF[5]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2EEE2E2E2EEEEEE"
    )
        port map (
      I0 => \LED_top_OBUF[6]_inst_i_28_n_1\,
      I1 => \^input_circle_status_reg[2]_0\,
      I2 => \^input_circle_status_reg[1]_0\,
      I3 => \LED_top_OBUF[5]_inst_i_2_0\,
      I4 => \^input_circle_status_reg[0]_0\,
      I5 => \LED_top_OBUF[5]_inst_i_3_0\,
      O => \LED_top_OBUF[5]_inst_i_7_n_1\
    );
\LED_top_OBUF[5]_inst_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \LED_top_OBUF[5]_inst_i_2_1\,
      I1 => \LED_top_OBUF[15]_inst_i_38_n_1\,
      I2 => \^input_circle_status_reg[7]_0\,
      I3 => usersw_msb(1),
      O => \LED_top_OBUF[5]_inst_i_8_n_1\
    );
\LED_top_OBUF[5]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFFFFFFFF55FF33"
    )
        port map (
      I0 => \LED_top_OBUF[5]_inst_i_14_0\,
      I1 => \LED_top_OBUF[5]_inst_i_4_0\,
      I2 => \LED_top_OBUF[5]_inst_i_5_0\,
      I3 => \^input_circle_status_reg[7]_2\,
      I4 => \^input_circle_status_reg[3]_1\,
      I5 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      O => \LED_top_OBUF[5]_inst_i_9_n_1\
    );
\LED_top_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => usersw_msb(2),
      I2 => \LED_top_OBUF[6]_inst_i_2_n_1\,
      I3 => \LED_top_OBUF[6]_inst_i_3_n_1\,
      I4 => \LED_top_OBUF[6]_inst_i_4_n_1\,
      I5 => \LED_top_OBUF[6]_inst_i_5_n_1\,
      O => \^led_top_obuf\(6)
    );
\LED_top_OBUF[6]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2EEE2E2E2EEEEEE"
    )
        port map (
      I0 => \LED_top_OBUF[6]_inst_i_28_n_1\,
      I1 => \^input_circle_status_reg[2]_0\,
      I2 => \^input_circle_status_reg[1]_0\,
      I3 => \LED_top_OBUF[6]_inst_i_3_0\,
      I4 => \^input_circle_status_reg[0]_0\,
      I5 => \LED_top_OBUF[6]_inst_i_2_0\,
      O => \LED_top_OBUF[6]_inst_i_10_n_1\
    );
\LED_top_OBUF[6]_inst_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^input_circle_status_reg[3]_0\,
      I1 => \^input_circle_status_reg[7]_0\,
      O => \LED_top_OBUF[6]_inst_i_11_n_1\
    );
\LED_top_OBUF[6]_inst_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_38_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \LED_top_OBUF[6]_inst_i_3_1\,
      I3 => usersw_msb(1),
      O => \LED_top_OBUF[6]_inst_i_12_n_1\
    );
\LED_top_OBUF[6]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAA222A2"
    )
        port map (
      I0 => \LED_top_OBUF[6]_inst_i_31_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => alubrnch_out(6),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => alubrnch_out(22),
      I5 => \LED_top_OBUF[6]_inst_i_4_1\,
      O => \LED_top_OBUF[6]_inst_i_13_n_1\
    );
\LED_top_OBUF[6]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBFFFFFFFF"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \^input_circle_status_reg[3]_0\,
      I3 => \^input_circle_status_reg[2]_0\,
      I4 => \LED_top_OBUF[15]_inst_i_30_n_1\,
      I5 => \LED_top_OBUF[11]_inst_i_18_n_1\,
      O => \LED_top_OBUF[6]_inst_i_15_n_1\
    );
\LED_top_OBUF[6]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777777F7F7F7F7F"
    )
        port map (
      I0 => usersw_msb(0),
      I1 => usersw_msb(1),
      I2 => \LED_top_OBUF[6]_inst_i_33_n_1\,
      I3 => \LED_top_OBUF[6]_inst_i_4_0\,
      I4 => \^input_circle_status_reg[7]_0\,
      I5 => \LED_top_OBUF[6]_inst_i_34_n_1\,
      O => \LED_top_OBUF[6]_inst_i_16_n_1\
    );
\LED_top_OBUF[6]_inst_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => usersw_msb(2),
      I1 => usersw_msb(3),
      O => \LED_top_OBUF[6]_inst_i_17_n_1\
    );
\LED_top_OBUF[6]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000222AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[6]_inst_i_35_n_1\,
      I1 => \LED_top_OBUF[6]_inst_i_36_n_1\,
      I2 => \^input_circle_status_reg[1]_1\,
      I3 => \LED_top_OBUF[6]_inst_i_3_0\,
      I4 => \LED_top_OBUF[7]_inst_i_26_n_1\,
      I5 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      O => \LED_top_OBUF[6]_inst_i_18_n_1\
    );
\LED_top_OBUF[6]_inst_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA8080000"
    )
        port map (
      I0 => usersw_msb(0),
      I1 => alubrnch_out(6),
      I2 => \SEGMENT7_top[7]_i_15_0\,
      I3 => alubrnch_out(22),
      I4 => \LED_top_OBUF[15]_inst_i_41_n_1\,
      I5 => \LED_top_OBUF[6]_inst_i_37_n_1\,
      O => \LED_top_OBUF[6]_inst_i_19_n_1\
    );
\LED_top_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0047"
    )
        port map (
      I0 => \LED_top_OBUF[6]_inst_i_6_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_8_n_1\,
      I2 => \LED_top_OBUF[6]_inst_i_7_n_1\,
      I3 => usersw_msb(0),
      I4 => \LED_top_OBUF[6]_inst_i_8_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[6]_inst_i_2_n_1\
    );
\LED_top_OBUF[6]_inst_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => usersw_msb(0),
      I1 => \^input_circle_status_reg[1]_1\,
      I2 => \LED_top_OBUF[6]_inst_i_5_0\,
      O => \LED_top_OBUF[6]_inst_i_20_n_1\
    );
\LED_top_OBUF[6]_inst_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => usersw_msb(1),
      I1 => \^input_circle_status_reg[3]_0\,
      I2 => \^input_circle_status_reg[2]_0\,
      I3 => \input_circle_status_reg_n_1_[6]\,
      I4 => \input_circle_status_reg_n_1_[5]\,
      I5 => \input_circle_status_reg_n_1_[4]\,
      O => \LED_top_OBUF[6]_inst_i_21_n_1\
    );
\LED_top_OBUF[6]_inst_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CECECACECECECECE"
    )
        port map (
      I0 => \^input_circle_status_reg[7]_0\,
      I1 => \LED_top_OBUF[7]_inst_i_18_n_1\,
      I2 => \^input_circle_status_reg[1]_0\,
      I3 => \^input_circle_status_reg[0]_0\,
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => \LED_top_OBUF[5]_inst_i_11_0\,
      O => \LED_top_OBUF[6]_inst_i_27_n_1\
    );
\LED_top_OBUF[6]_inst_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF55FFCFFFFF"
    )
        port map (
      I0 => S_f7(0),
      I1 => S_RST,
      I2 => \LED_top_OBUF[6]_inst_i_10_0\,
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => \^input_circle_status_reg[0]_0\,
      I5 => \^input_circle_status_reg[1]_0\,
      O => \LED_top_OBUF[6]_inst_i_28_n_1\
    );
\LED_top_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF7077"
    )
        port map (
      I0 => \LED_top_OBUF[6]_inst_i_1_0\,
      I1 => \^input_circle_status_reg[2]_2\,
      I2 => \LED_top_OBUF[6]_inst_i_10_n_1\,
      I3 => \LED_top_OBUF[6]_inst_i_11_n_1\,
      I4 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I5 => \LED_top_OBUF[6]_inst_i_12_n_1\,
      O => \LED_top_OBUF[6]_inst_i_3_n_1\
    );
\LED_top_OBUF[6]_inst_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000028"
    )
        port map (
      I0 => usersw_msb(1),
      I1 => \^input_circle_status_reg[2]_0\,
      I2 => \^input_circle_status_reg[7]_0\,
      I3 => \^input_circle_status_reg[1]_0\,
      I4 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I5 => \^input_circle_status_reg[3]_0\,
      O => \LED_top_OBUF[6]_inst_i_31_n_1\
    );
\LED_top_OBUF[6]_inst_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \LED_top_OBUF[5]_inst_i_14_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \^input_circle_status_reg[0]_0\,
      I3 => \LED_top_OBUF[15]_inst_i_30_n_1\,
      I4 => \^input_circle_status_reg[2]_0\,
      O => \LED_top_OBUF[6]_inst_i_33_n_1\
    );
\LED_top_OBUF[6]_inst_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047444747"
    )
        port map (
      I0 => \LED_top_OBUF[6]_inst_i_40_n_1\,
      I1 => \^input_circle_status_reg[1]_0\,
      I2 => \^input_circle_status_reg[2]_0\,
      I3 => \LED_top_OBUF[5]_inst_i_14_0\,
      I4 => \^input_circle_status_reg[7]_0\,
      I5 => \LED_top_OBUF[0]_inst_i_38_n_1\,
      O => \LED_top_OBUF[6]_inst_i_34_n_1\
    );
\LED_top_OBUF[6]_inst_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF70FFFF"
    )
        port map (
      I0 => \LED_top_OBUF[6]_inst_i_41_n_1\,
      I1 => \LED_top_OBUF[5]_inst_i_14_0\,
      I2 => \LED_top_OBUF[6]_inst_i_42_n_1\,
      I3 => \^input_circle_status_reg[2]_0\,
      I4 => \LED_top_OBUF[6]_inst_i_11_n_1\,
      I5 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      O => \LED_top_OBUF[6]_inst_i_35_n_1\
    );
\LED_top_OBUF[6]_inst_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040000000400"
    )
        port map (
      I0 => \^input_circle_status_reg[0]_0\,
      I1 => \^input_circle_status_reg[1]_0\,
      I2 => \^input_circle_status_reg[7]_0\,
      I3 => reg_source1_out(2),
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => reg_source1_out(5),
      O => \LED_top_OBUF[6]_inst_i_36_n_1\
    );
\LED_top_OBUF[6]_inst_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080000000800"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \^input_circle_status_reg[7]_0\,
      I3 => \LED_top_OBUF[15]_inst_i_6_2\(5),
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => \LED_top_OBUF[15]_inst_i_6_2\(12),
      O => \LED_top_OBUF[6]_inst_i_37_n_1\
    );
\LED_top_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBABAAAAAAAA"
    )
        port map (
      I0 => usersw_msb(3),
      I1 => \LED_top_OBUF[6]_inst_i_13_n_1\,
      I2 => \LED_top_OBUF[6]_inst_i_1_1\,
      I3 => \LED_top_OBUF[6]_inst_i_15_n_1\,
      I4 => usersw_msb(2),
      I5 => \LED_top_OBUF[6]_inst_i_16_n_1\,
      O => \LED_top_OBUF[6]_inst_i_4_n_1\
    );
\LED_top_OBUF[6]_inst_i_40\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \LED_top_OBUF[8]_inst_i_8_0\(4),
      I1 => \SEGMENT7_top[7]_i_15_0\,
      I2 => \^input_circle_status_reg[7]_0\,
      I3 => \^input_circle_status_reg[2]_0\,
      O => \LED_top_OBUF[6]_inst_i_40_n_1\
    );
\LED_top_OBUF[6]_inst_i_41\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^input_circle_status_reg[0]_0\,
      I1 => \^input_circle_status_reg[1]_0\,
      O => \LED_top_OBUF[6]_inst_i_41_n_1\
    );
\LED_top_OBUF[6]_inst_i_42\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => S_f7(0),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      O => \LED_top_OBUF[6]_inst_i_42_n_1\
    );
\LED_top_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFEAAAAFEFEFEFE"
    )
        port map (
      I0 => \LED_top_OBUF[6]_inst_i_17_n_1\,
      I1 => usersw_msb(1),
      I2 => \LED_top_OBUF[6]_inst_i_18_n_1\,
      I3 => \LED_top_OBUF[6]_inst_i_19_n_1\,
      I4 => \LED_top_OBUF[6]_inst_i_20_n_1\,
      I5 => \LED_top_OBUF[6]_inst_i_21_n_1\,
      O => \LED_top_OBUF[6]_inst_i_5_n_1\
    );
\LED_top_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF30FF3F5FFF5FFF"
    )
        port map (
      I0 => \LED_top_OBUF[6]_inst_i_5_0\,
      I1 => \LED_top_OBUF[5]_inst_i_14_0\,
      I2 => \^input_circle_status_reg[3]_1\,
      I3 => \^input_circle_status_reg[7]_2\,
      I4 => \LED_top_OBUF[6]_inst_i_4_0\,
      I5 => \LED_top_OBUF[15]_inst_i_24_n_1\,
      O => \LED_top_OBUF[6]_inst_i_6_n_1\
    );
\LED_top_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFDFFFD"
    )
        port map (
      I0 => \LED_top_OBUF[6]_inst_i_2_0\,
      I1 => \^input_circle_status_reg[3]_1\,
      I2 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I3 => \^input_circle_status_reg[7]_2\,
      I4 => \LED_top_OBUF[6]_inst_i_2_1\,
      O => \LED_top_OBUF[6]_inst_i_7_n_1\
    );
\LED_top_OBUF[6]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A808AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      I1 => Q(5),
      I2 => \SEGMENT7_top[7]_i_15_0\,
      I3 => Q(10),
      I4 => \LED_top_OBUF[15]_inst_i_33_n_1\,
      I5 => \LED_top_OBUF[6]_inst_i_27_n_1\,
      O => \LED_top_OBUF[6]_inst_i_8_n_1\
    );
\LED_top_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00202222AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => usersw_msb(3),
      I2 => \LED_top_OBUF[7]_inst_i_2_n_1\,
      I3 => \LED_top_OBUF[7]_inst_i_3_n_1\,
      I4 => \LED_top_OBUF[7]_inst_i_4_n_1\,
      I5 => \LED_top_OBUF[7]_inst_i_5_n_1\,
      O => \^led_top_obuf\(7)
    );
\LED_top_OBUF[7]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBB888B8"
    )
        port map (
      I0 => \LED_top_OBUF[7]_inst_i_3_0\,
      I1 => \^input_circle_status_reg[1]_2\,
      I2 => reg_source0_out0(2),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => reg_source0_out0(8),
      I5 => \^input_circle_status_reg[2]_1\,
      O => \LED_top_OBUF[7]_inst_i_10_n_1\
    );
\LED_top_OBUF[7]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \LED_top_OBUF[7]_inst_i_4_0\,
      I1 => \^input_circle_status_reg[7]_1\,
      I2 => alubrnch_out(7),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => alubrnch_out(23),
      I5 => \LED_top_OBUF[6]_inst_i_15_n_1\,
      O => \LED_top_OBUF[7]_inst_i_12_n_1\
    );
\LED_top_OBUF[7]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAEEEAE"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_39_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => alubrnch_out(7),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => alubrnch_out(23),
      I5 => \LED_top_OBUF[7]_inst_i_4_1\,
      O => \LED_top_OBUF[7]_inst_i_14_n_1\
    );
\LED_top_OBUF[7]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA80AA80AA80"
    )
        port map (
      I0 => \LED_top_OBUF[11]_inst_i_18_n_1\,
      I1 => \LED_top_OBUF[7]_inst_i_2_0\,
      I2 => \^input_circle_status_reg[7]_4\,
      I3 => \LED_top_OBUF[7]_inst_i_26_n_1\,
      I4 => \^input_circle_status_reg[1]_1\,
      I5 => \LED_top_OBUF[7]_inst_i_3_0\,
      O => \LED_top_OBUF[7]_inst_i_15_n_1\
    );
\LED_top_OBUF[7]_inst_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F7F7F7"
    )
        port map (
      I0 => \LED_top_OBUF[7]_inst_i_5_0\,
      I1 => \^input_circle_status_reg[1]_1\,
      I2 => usersw_msb(0),
      I3 => \LED_top_OBUF[7]_inst_i_5_1\,
      I4 => \^input_circle_status_reg[7]_3\,
      O => \LED_top_OBUF[7]_inst_i_17_n_1\
    );
\LED_top_OBUF[7]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDDDFFFFFFDFF"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \^input_circle_status_reg[0]_0\,
      I3 => \LED_top_OBUF[8]_inst_i_8_0\(4),
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => S_imm_20(0),
      O => \LED_top_OBUF[7]_inst_i_18_n_1\
    );
\LED_top_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEFFFFEEFE"
    )
        port map (
      I0 => \LED_top_OBUF[7]_inst_i_6_n_1\,
      I1 => usersw_msb(1),
      I2 => \LED_top_OBUF[15]_inst_i_8_n_1\,
      I3 => \LED_top_OBUF[7]_inst_i_7_n_1\,
      I4 => \LED_top_OBUF[7]_inst_i_8_n_1\,
      I5 => usersw_msb(0),
      O => \LED_top_OBUF[7]_inst_i_2_n_1\
    );
\LED_top_OBUF[7]_inst_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080000000800"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \^input_circle_status_reg[7]_0\,
      I3 => Q(5),
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => Q(10),
      O => \LED_top_OBUF[7]_inst_i_26_n_1\
    );
\LED_top_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44454545FFFFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[7]_inst_i_9_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I2 => \LED_top_OBUF[7]_inst_i_10_n_1\,
      I3 => \^input_circle_status_reg[2]_2\,
      I4 => \LED_top_OBUF[7]_inst_i_5_1\,
      I5 => usersw_msb(2),
      O => \LED_top_OBUF[7]_inst_i_3_n_1\
    );
\LED_top_OBUF[7]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABAAAABBBBBBBB"
    )
        port map (
      I0 => usersw_msb(2),
      I1 => \LED_top_OBUF[7]_inst_i_12_n_1\,
      I2 => \LED_top_OBUF[10]_inst_i_13_n_1\,
      I3 => \LED_top_OBUF[7]_inst_i_1_1\,
      I4 => \LED_top_OBUF[7]_inst_i_14_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[7]_inst_i_4_n_1\
    );
\LED_top_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBAAAABABBBABB"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_22_n_1\,
      I1 => \LED_top_OBUF[7]_inst_i_15_n_1\,
      I2 => \LED_top_OBUF[14]_inst_i_14_n_1\,
      I3 => \LED_top_OBUF[7]_inst_i_1_0\,
      I4 => \LED_top_OBUF[7]_inst_i_17_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[7]_inst_i_5_n_1\
    );
\LED_top_OBUF[7]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A808AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      I1 => Q(5),
      I2 => \SEGMENT7_top[7]_i_15_0\,
      I3 => Q(10),
      I4 => \LED_top_OBUF[15]_inst_i_33_n_1\,
      I5 => \LED_top_OBUF[7]_inst_i_18_n_1\,
      O => \LED_top_OBUF[7]_inst_i_6_n_1\
    );
\LED_top_OBUF[7]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFFFF0DFDFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[7]_inst_i_5_0\,
      I1 => \LED_top_OBUF[15]_inst_i_24_n_1\,
      I2 => \^input_circle_status_reg[7]_2\,
      I3 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I4 => \^input_circle_status_reg[3]_1\,
      I5 => \LED_top_OBUF[7]_inst_i_4_0\,
      O => \LED_top_OBUF[7]_inst_i_7_n_1\
    );
\LED_top_OBUF[7]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BFAA80AA"
    )
        port map (
      I0 => \LED_top_OBUF[7]_inst_i_2_1\,
      I1 => \LED_top_OBUF[15]_inst_i_24_n_1\,
      I2 => \^input_circle_status_reg[3]_1\,
      I3 => \LED_top_OBUF[9]_inst_i_19_n_1\,
      I4 => \LED_top_OBUF[7]_inst_i_2_0\,
      I5 => \LED_top_OBUF[9]_inst_i_21_n_1\,
      O => \LED_top_OBUF[7]_inst_i_8_n_1\
    );
\LED_top_OBUF[7]_inst_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_38_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \LED_top_OBUF[7]_inst_i_3_1\,
      I3 => usersw_msb(1),
      O => \LED_top_OBUF[7]_inst_i_9_n_1\
    );
\LED_top_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00202222AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => usersw_msb(3),
      I2 => \LED_top_OBUF[8]_inst_i_2_n_1\,
      I3 => \LED_top_OBUF[8]_inst_i_3_n_1\,
      I4 => \LED_top_OBUF[8]_inst_i_4_n_1\,
      I5 => \LED_top_OBUF[8]_inst_i_5_n_1\,
      O => \^led_top_obuf\(8)
    );
\LED_top_OBUF[8]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \LED_top_OBUF[8]_inst_i_4_0\,
      I1 => \^input_circle_status_reg[7]_1\,
      I2 => alubrnch_out(8),
      I3 => \LED_top_OBUF[10]_inst_i_4_1\,
      I4 => alubrnch_out(24),
      I5 => \LED_top_OBUF[6]_inst_i_15_n_1\,
      O => \LED_top_OBUF[8]_inst_i_12_n_1\
    );
\LED_top_OBUF[8]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAEEEAE"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_39_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => alubrnch_out(8),
      I3 => \LED_top_OBUF[10]_inst_i_4_1\,
      I4 => alubrnch_out(24),
      I5 => \LED_top_OBUF[8]_inst_i_4_1\,
      O => \LED_top_OBUF[8]_inst_i_14_n_1\
    );
\LED_top_OBUF[8]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5FFF5F30FF3FFF"
    )
        port map (
      I0 => \LED_top_OBUF[8]_inst_i_5_0\,
      I1 => \LED_top_OBUF[8]_inst_i_5_1\,
      I2 => \^input_circle_status_reg[0]_0\,
      I3 => \^input_circle_status_reg[1]_0\,
      I4 => \LED_top_OBUF[8]_inst_i_2_1\,
      I5 => \^input_circle_status_reg[7]_0\,
      O => \LED_top_OBUF[8]_inst_i_15_n_1\
    );
\LED_top_OBUF[8]_inst_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7770FFFF"
    )
        port map (
      I0 => \^input_circle_status_reg[7]_3\,
      I1 => \LED_top_OBUF[8]_inst_i_5_2\,
      I2 => usersw_msb(0),
      I3 => \LED_top_OBUF[8]_inst_i_5_3\,
      I4 => usersw_msb(1),
      O => \LED_top_OBUF[8]_inst_i_17_n_1\
    );
\LED_top_OBUF[8]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0047"
    )
        port map (
      I0 => \LED_top_OBUF[8]_inst_i_6_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_8_n_1\,
      I2 => \LED_top_OBUF[8]_inst_i_7_n_1\,
      I3 => usersw_msb(0),
      I4 => \LED_top_OBUF[8]_inst_i_8_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[8]_inst_i_2_n_1\
    );
\LED_top_OBUF[8]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44454545FFFFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[8]_inst_i_9_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I2 => \LED_top_OBUF[8]_inst_i_1_2\,
      I3 => \^input_circle_status_reg[2]_2\,
      I4 => \LED_top_OBUF[8]_inst_i_5_2\,
      I5 => usersw_msb(2),
      O => \LED_top_OBUF[8]_inst_i_3_n_1\
    );
\LED_top_OBUF[8]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABAAAABBBBBBBB"
    )
        port map (
      I0 => usersw_msb(2),
      I1 => \LED_top_OBUF[8]_inst_i_12_n_1\,
      I2 => \LED_top_OBUF[8]_inst_i_1_1\,
      I3 => \LED_top_OBUF[11]_inst_i_14_n_1\,
      I4 => \LED_top_OBUF[8]_inst_i_14_n_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[8]_inst_i_4_n_1\
    );
\LED_top_OBUF[8]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEFEFAAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_22_n_1\,
      I1 => \LED_top_OBUF[8]_inst_i_15_n_1\,
      I2 => \LED_top_OBUF[11]_inst_i_18_n_1\,
      I3 => \LED_top_OBUF[14]_inst_i_14_n_1\,
      I4 => \LED_top_OBUF[8]_inst_i_1_0\,
      I5 => \LED_top_OBUF[8]_inst_i_17_n_1\,
      O => \LED_top_OBUF[8]_inst_i_5_n_1\
    );
\LED_top_OBUF[8]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFFFF0DFDFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[8]_inst_i_2_0\,
      I1 => \LED_top_OBUF[15]_inst_i_24_n_1\,
      I2 => \^input_circle_status_reg[7]_2\,
      I3 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I4 => \^input_circle_status_reg[3]_1\,
      I5 => \LED_top_OBUF[8]_inst_i_4_0\,
      O => \LED_top_OBUF[8]_inst_i_6_n_1\
    );
\LED_top_OBUF[8]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFDFFFD"
    )
        port map (
      I0 => \LED_top_OBUF[8]_inst_i_2_2\,
      I1 => \^input_circle_status_reg[3]_1\,
      I2 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I3 => \^input_circle_status_reg[7]_2\,
      I4 => \LED_top_OBUF[8]_inst_i_2_1\,
      O => \LED_top_OBUF[8]_inst_i_7_n_1\
    );
\LED_top_OBUF[8]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A808AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      I1 => Q(6),
      I2 => \LED_top_OBUF[10]_inst_i_4_1\,
      I3 => Q(11),
      I4 => \LED_top_OBUF[15]_inst_i_33_n_1\,
      I5 => \LED_top_OBUF[11]_inst_i_24_n_1\,
      O => \LED_top_OBUF[8]_inst_i_8_n_1\
    );
\LED_top_OBUF[8]_inst_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_38_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \LED_top_OBUF[8]_inst_i_3_0\,
      I3 => usersw_msb(1),
      O => \LED_top_OBUF[8]_inst_i_9_n_1\
    );
\LED_top_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00202222AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => usersw_msb(3),
      I2 => \LED_top_OBUF[9]_inst_i_2_n_1\,
      I3 => \LED_top_OBUF[9]_inst_i_3_n_1\,
      I4 => \LED_top_OBUF[9]_inst_i_4_n_1\,
      I5 => \LED_top_OBUF[9]_inst_i_5_n_1\,
      O => \^led_top_obuf\(9)
    );
\LED_top_OBUF[9]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \LED_top_OBUF[9]_inst_i_4_0\,
      I1 => \^input_circle_status_reg[7]_1\,
      I2 => alubrnch_out(9),
      I3 => \LED_top_OBUF[10]_inst_i_4_1\,
      I4 => alubrnch_out(25),
      I5 => \LED_top_OBUF[6]_inst_i_15_n_1\,
      O => \LED_top_OBUF[9]_inst_i_12_n_1\
    );
\LED_top_OBUF[9]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055511151"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_39_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => alubrnch_out(9),
      I3 => \LED_top_OBUF[10]_inst_i_4_1\,
      I4 => alubrnch_out(25),
      I5 => \LED_top_OBUF[9]_inst_i_4_1\,
      O => \LED_top_OBUF[9]_inst_i_13_n_1\
    );
\LED_top_OBUF[9]_inst_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808080AA"
    )
        port map (
      I0 => usersw_msb(1),
      I1 => \^input_circle_status_reg[7]_3\,
      I2 => \LED_top_OBUF[9]_inst_i_5_2\,
      I3 => usersw_msb(0),
      I4 => \LED_top_OBUF[9]_inst_i_5_3\,
      O => \LED_top_OBUF[9]_inst_i_15_n_1\
    );
\LED_top_OBUF[9]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000AA00CC00"
    )
        port map (
      I0 => \LED_top_OBUF[9]_inst_i_5_0\,
      I1 => \LED_top_OBUF[9]_inst_i_2_1\,
      I2 => \LED_top_OBUF[9]_inst_i_5_1\,
      I3 => \^input_circle_status_reg[1]_0\,
      I4 => \^input_circle_status_reg[0]_0\,
      I5 => \^input_circle_status_reg[7]_0\,
      O => \LED_top_OBUF[9]_inst_i_17_n_1\
    );
\LED_top_OBUF[9]_inst_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F111F1F11111111"
    )
        port map (
      I0 => \LED_top_OBUF[9]_inst_i_29_n_1\,
      I1 => \LED_top_OBUF[9]_inst_i_30_n_1\,
      I2 => \LED_top_OBUF[15]_inst_i_45_n_1\,
      I3 => \LED_top_OBUF[9]_inst_i_31_n_1\,
      I4 => \^input_circle_status_reg[3]_0\,
      I5 => \LED_top_OBUF[9]_inst_i_32_n_1\,
      O => \LED_top_OBUF[9]_inst_i_19_n_1\
    );
\LED_top_OBUF[9]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEFFFEFEF"
    )
        port map (
      I0 => \LED_top_OBUF[9]_inst_i_6_n_1\,
      I1 => usersw_msb(1),
      I2 => \LED_top_OBUF[9]_inst_i_7_n_1\,
      I3 => \LED_top_OBUF[9]_inst_i_8_n_1\,
      I4 => \LED_top_OBUF[15]_inst_i_8_n_1\,
      I5 => usersw_msb(0),
      O => \LED_top_OBUF[9]_inst_i_2_n_1\
    );
\LED_top_OBUF[9]_inst_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFBBBFBBBFBFBB"
    )
        port map (
      I0 => \LED_top_OBUF[9]_inst_i_33_n_1\,
      I1 => \LED_top_OBUF[9]_inst_i_34_n_1\,
      I2 => \LED_top_OBUF[9]_inst_i_30_n_1\,
      I3 => \^input_circle_status_reg[3]_0\,
      I4 => \^input_circle_status_reg[2]_0\,
      I5 => \LED_top_OBUF[9]_inst_i_35_n_1\,
      O => \LED_top_OBUF[9]_inst_i_21_n_1\
    );
\LED_top_OBUF[9]_inst_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE1F"
    )
        port map (
      I0 => \^input_circle_status_reg[0]_0\,
      I1 => \^input_circle_status_reg[1]_0\,
      I2 => \^input_circle_status_reg[2]_0\,
      I3 => \^input_circle_status_reg[3]_0\,
      O => \LED_top_OBUF[9]_inst_i_29_n_1\
    );
\LED_top_OBUF[9]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44454545FFFFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[9]_inst_i_9_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I2 => \LED_top_OBUF[9]_inst_i_1_2\,
      I3 => \^input_circle_status_reg[2]_2\,
      I4 => \LED_top_OBUF[9]_inst_i_5_2\,
      I5 => usersw_msb(2),
      O => \LED_top_OBUF[9]_inst_i_3_n_1\
    );
\LED_top_OBUF[9]_inst_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^input_circle_status_reg[7]_0\,
      I1 => \input_circle_status_reg_n_1_[4]\,
      I2 => \input_circle_status_reg_n_1_[5]\,
      I3 => \input_circle_status_reg_n_1_[6]\,
      O => \LED_top_OBUF[9]_inst_i_30_n_1\
    );
\LED_top_OBUF[9]_inst_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^input_circle_status_reg[2]_0\,
      I1 => \^input_circle_status_reg[1]_0\,
      O => \LED_top_OBUF[9]_inst_i_31_n_1\
    );
\LED_top_OBUF[9]_inst_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AFE"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[3]_0\,
      I2 => \^input_circle_status_reg[2]_0\,
      I3 => \^input_circle_status_reg[7]_0\,
      O => \LED_top_OBUF[9]_inst_i_32_n_1\
    );
\LED_top_OBUF[9]_inst_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \input_circle_status_reg_n_1_[6]\,
      I1 => \input_circle_status_reg_n_1_[4]\,
      I2 => \input_circle_status_reg_n_1_[5]\,
      I3 => \^input_circle_status_reg[3]_0\,
      O => \LED_top_OBUF[9]_inst_i_33_n_1\
    );
\LED_top_OBUF[9]_inst_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0666"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \^input_circle_status_reg[7]_0\,
      I3 => \^input_circle_status_reg[2]_0\,
      O => \LED_top_OBUF[9]_inst_i_34_n_1\
    );
\LED_top_OBUF[9]_inst_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^input_circle_status_reg[0]_0\,
      I1 => \^input_circle_status_reg[1]_0\,
      O => \LED_top_OBUF[9]_inst_i_35_n_1\
    );
\LED_top_OBUF[9]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAABBBBBBBB"
    )
        port map (
      I0 => usersw_msb(2),
      I1 => \LED_top_OBUF[9]_inst_i_12_n_1\,
      I2 => \LED_top_OBUF[9]_inst_i_13_n_1\,
      I3 => \LED_top_OBUF[11]_inst_i_14_n_1\,
      I4 => \LED_top_OBUF[9]_inst_i_1_1\,
      I5 => usersw_msb(1),
      O => \LED_top_OBUF[9]_inst_i_4_n_1\
    );
\LED_top_OBUF[9]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABABBBABBBABB"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_22_n_1\,
      I1 => \LED_top_OBUF[9]_inst_i_15_n_1\,
      I2 => \LED_top_OBUF[14]_inst_i_14_n_1\,
      I3 => \LED_top_OBUF[9]_inst_i_1_0\,
      I4 => \LED_top_OBUF[11]_inst_i_18_n_1\,
      I5 => \LED_top_OBUF[9]_inst_i_17_n_1\,
      O => \LED_top_OBUF[9]_inst_i_5_n_1\
    );
\LED_top_OBUF[9]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A808AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      I1 => Q(7),
      I2 => \LED_top_OBUF[10]_inst_i_4_1\,
      I3 => Q(11),
      I4 => \LED_top_OBUF[15]_inst_i_33_n_1\,
      I5 => \LED_top_OBUF[11]_inst_i_24_n_1\,
      O => \LED_top_OBUF[9]_inst_i_6_n_1\
    );
\LED_top_OBUF[9]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40557F55"
    )
        port map (
      I0 => \LED_top_OBUF[9]_inst_i_2_2\,
      I1 => \LED_top_OBUF[15]_inst_i_24_n_1\,
      I2 => \^input_circle_status_reg[3]_1\,
      I3 => \LED_top_OBUF[9]_inst_i_19_n_1\,
      I4 => \LED_top_OBUF[9]_inst_i_2_1\,
      I5 => \LED_top_OBUF[9]_inst_i_21_n_1\,
      O => \LED_top_OBUF[9]_inst_i_7_n_1\
    );
\LED_top_OBUF[9]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFFFF0DFDFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[9]_inst_i_2_0\,
      I1 => \LED_top_OBUF[15]_inst_i_24_n_1\,
      I2 => \^input_circle_status_reg[7]_2\,
      I3 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I4 => \^input_circle_status_reg[3]_1\,
      I5 => \LED_top_OBUF[9]_inst_i_4_0\,
      O => \LED_top_OBUF[9]_inst_i_8_n_1\
    );
\LED_top_OBUF[9]_inst_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_38_n_1\,
      I1 => \^input_circle_status_reg[7]_0\,
      I2 => \LED_top_OBUF[9]_inst_i_3_0\,
      I3 => usersw_msb(1),
      O => \LED_top_OBUF[9]_inst_i_9_n_1\
    );
\SEGMENT7_top[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"98990000FFFFFFFF"
    )
        port map (
      I0 => \SEGMENT7_top[7]_i_11_n_1\,
      I1 => \SEGMENT7_top[7]_i_9_n_1\,
      I2 => \SEGMENT7_top[7]_i_10_n_1\,
      I3 => \LED_top_OBUF[0]_inst_i_5_n_1\,
      I4 => \SEGMENT7_top[7]_i_8_n_1\,
      I5 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      O => \SEGMENT7_top[1]_i_4_n_1\
    );
\SEGMENT7_top[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0091"
    )
        port map (
      I0 => \^led_top_obuf\(9),
      I1 => \^led_top_obuf\(10),
      I2 => \^led_top_obuf\(8),
      I3 => \^led_top_obuf\(11),
      O => \SEGMENT7_top[1]_i_5_n_1\
    );
\SEGMENT7_top[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000091119191"
    )
        port map (
      I0 => \^led_top_obuf\(5),
      I1 => \^led_top_obuf\(6),
      I2 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I3 => \SEGMENT7_top[7]_i_13_n_1\,
      I4 => \SEGMENT7_top[7]_i_12_n_1\,
      I5 => \^led_top_obuf\(7),
      O => \SEGMENT7_top[1]_i_6_n_1\
    );
\SEGMENT7_top[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0091"
    )
        port map (
      I0 => \^led_top_obuf\(13),
      I1 => \^led_top_obuf\(14),
      I2 => \^led_top_obuf\(12),
      I3 => \^led_top_obuf\(15),
      O => \SEGMENT7_top[1]_i_7_n_1\
    );
\SEGMENT7_top[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8202828288A08888"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => \SEGMENT7_top[7]_i_8_n_1\,
      I2 => \SEGMENT7_top[7]_i_9_n_1\,
      I3 => \SEGMENT7_top[7]_i_10_n_1\,
      I4 => \LED_top_OBUF[0]_inst_i_5_n_1\,
      I5 => \SEGMENT7_top[7]_i_11_n_1\,
      O => \SEGMENT7_top[2]_i_4_n_1\
    );
\SEGMENT7_top[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5398"
    )
        port map (
      I0 => \^led_top_obuf\(11),
      I1 => \^led_top_obuf\(10),
      I2 => \^led_top_obuf\(8),
      I3 => \^led_top_obuf\(9),
      O => \SEGMENT7_top[2]_i_5_n_1\
    );
\SEGMENT7_top[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5333535398889898"
    )
        port map (
      I0 => \^led_top_obuf\(7),
      I1 => \^led_top_obuf\(6),
      I2 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I3 => \SEGMENT7_top[7]_i_13_n_1\,
      I4 => \SEGMENT7_top[7]_i_12_n_1\,
      I5 => \^led_top_obuf\(5),
      O => \SEGMENT7_top[2]_i_6_n_1\
    );
\SEGMENT7_top[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5398"
    )
        port map (
      I0 => \^led_top_obuf\(15),
      I1 => \^led_top_obuf\(14),
      I2 => \^led_top_obuf\(12),
      I3 => \^led_top_obuf\(13),
      O => \SEGMENT7_top[2]_i_7_n_1\
    );
\SEGMENT7_top[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8880080A888A888"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => \SEGMENT7_top[7]_i_8_n_1\,
      I2 => \SEGMENT7_top[7]_i_11_n_1\,
      I3 => \SEGMENT7_top[7]_i_9_n_1\,
      I4 => \SEGMENT7_top[7]_i_10_n_1\,
      I5 => \LED_top_OBUF[0]_inst_i_5_n_1\,
      O => \SEGMENT7_top[3]_i_4_n_1\
    );
\SEGMENT7_top[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => \^led_top_obuf\(11),
      I1 => \^led_top_obuf\(9),
      I2 => \^led_top_obuf\(10),
      I3 => \^led_top_obuf\(8),
      O => \SEGMENT7_top[3]_i_5_n_1\
    );
\SEGMENT7_top[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5710101057105710"
    )
        port map (
      I0 => \^led_top_obuf\(7),
      I1 => \^led_top_obuf\(5),
      I2 => \^led_top_obuf\(6),
      I3 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I4 => \SEGMENT7_top[7]_i_13_n_1\,
      I5 => \SEGMENT7_top[7]_i_12_n_1\,
      O => \SEGMENT7_top[3]_i_6_n_1\
    );
\SEGMENT7_top[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => \^led_top_obuf\(15),
      I1 => \^led_top_obuf\(13),
      I2 => \^led_top_obuf\(14),
      I3 => \^led_top_obuf\(12),
      O => \SEGMENT7_top[3]_i_7_n_1\
    );
\SEGMENT7_top[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808008800A0A000A"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => \SEGMENT7_top[7]_i_8_n_1\,
      I2 => \SEGMENT7_top[7]_i_9_n_1\,
      I3 => \LED_top_OBUF[0]_inst_i_5_n_1\,
      I4 => \SEGMENT7_top[7]_i_10_n_1\,
      I5 => \SEGMENT7_top[7]_i_11_n_1\,
      O => \SEGMENT7_top[4]_i_4_n_1\
    );
\SEGMENT7_top[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C014"
    )
        port map (
      I0 => \^led_top_obuf\(11),
      I1 => \^led_top_obuf\(10),
      I2 => \^led_top_obuf\(8),
      I3 => \^led_top_obuf\(9),
      O => \SEGMENT7_top[4]_i_5_n_1\
    );
\SEGMENT7_top[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC0C000011414444"
    )
        port map (
      I0 => \^led_top_obuf\(7),
      I1 => \^led_top_obuf\(6),
      I2 => \SEGMENT7_top[7]_i_12_n_1\,
      I3 => \SEGMENT7_top[7]_i_13_n_1\,
      I4 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I5 => \^led_top_obuf\(5),
      O => \SEGMENT7_top[4]_i_6_n_1\
    );
\SEGMENT7_top[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C014"
    )
        port map (
      I0 => \^led_top_obuf\(15),
      I1 => \^led_top_obuf\(14),
      I2 => \^led_top_obuf\(12),
      I3 => \^led_top_obuf\(13),
      O => \SEGMENT7_top[4]_i_7_n_1\
    );
\SEGMENT7_top[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080002002222"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => \SEGMENT7_top[7]_i_8_n_1\,
      I2 => \SEGMENT7_top[7]_i_10_n_1\,
      I3 => \LED_top_OBUF[0]_inst_i_5_n_1\,
      I4 => \SEGMENT7_top[7]_i_11_n_1\,
      I5 => \SEGMENT7_top[7]_i_9_n_1\,
      O => \SEGMENT7_top[5]_i_4_n_1\
    );
\SEGMENT7_top[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => \^led_top_obuf\(11),
      I1 => \^led_top_obuf\(8),
      I2 => \^led_top_obuf\(9),
      I3 => \^led_top_obuf\(10),
      O => \SEGMENT7_top[5]_i_5_n_1\
    );
\SEGMENT7_top[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA2A2215110000"
    )
        port map (
      I0 => \^led_top_obuf\(7),
      I1 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I2 => \SEGMENT7_top[7]_i_13_n_1\,
      I3 => \SEGMENT7_top[7]_i_12_n_1\,
      I4 => \^led_top_obuf\(5),
      I5 => \^led_top_obuf\(6),
      O => \SEGMENT7_top[5]_i_6_n_1\
    );
\SEGMENT7_top[5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => \^led_top_obuf\(15),
      I1 => \^led_top_obuf\(12),
      I2 => \^led_top_obuf\(13),
      I3 => \^led_top_obuf\(14),
      O => \SEGMENT7_top[5]_i_7_n_1\
    );
\SEGMENT7_top[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02020202822A8282"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => \SEGMENT7_top[7]_i_8_n_1\,
      I2 => \SEGMENT7_top[7]_i_11_n_1\,
      I3 => \SEGMENT7_top[7]_i_10_n_1\,
      I4 => \LED_top_OBUF[0]_inst_i_5_n_1\,
      I5 => \SEGMENT7_top[7]_i_9_n_1\,
      O => \SEGMENT7_top[6]_i_4_n_1\
    );
\SEGMENT7_top[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9E88"
    )
        port map (
      I0 => \^led_top_obuf\(11),
      I1 => \^led_top_obuf\(9),
      I2 => \^led_top_obuf\(8),
      I3 => \^led_top_obuf\(10),
      O => \SEGMENT7_top[6]_i_5_n_1\
    );
\SEGMENT7_top[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9EEE9E9E88888888"
    )
        port map (
      I0 => \^led_top_obuf\(7),
      I1 => \^led_top_obuf\(5),
      I2 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I3 => \SEGMENT7_top[7]_i_13_n_1\,
      I4 => \SEGMENT7_top[7]_i_12_n_1\,
      I5 => \^led_top_obuf\(6),
      O => \SEGMENT7_top[6]_i_6_n_1\
    );
\SEGMENT7_top[6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9E88"
    )
        port map (
      I0 => \^led_top_obuf\(15),
      I1 => \^led_top_obuf\(13),
      I2 => \^led_top_obuf\(12),
      I3 => \^led_top_obuf\(14),
      O => \SEGMENT7_top[6]_i_7_n_1\
    );
\SEGMENT7_top[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000540000555455"
    )
        port map (
      I0 => usersw_msb(3),
      I1 => \SEGMENT7_top[7]_i_20_n_1\,
      I2 => \SEGMENT7_top[7]_i_21_n_1\,
      I3 => usersw_msb(2),
      I4 => \SEGMENT7_top[7]_i_22_n_1\,
      I5 => \SEGMENT7_top[7]_i_23_n_1\,
      O => \SEGMENT7_top[7]_i_10_n_1\
    );
\SEGMENT7_top[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA80808088"
    )
        port map (
      I0 => \SEGMENT7_top[7]_i_24_n_1\,
      I1 => \SEGMENT7_top[7]_i_25_n_1\,
      I2 => \SEGMENT7_top[7]_i_26_n_1\,
      I3 => \LED_top_OBUF[1]_inst_i_8_n_1\,
      I4 => \LED_top_OBUF[1]_inst_i_9_n_1\,
      I5 => usersw_msb(3),
      O => \SEGMENT7_top[7]_i_11_n_1\
    );
\SEGMENT7_top[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDDDDDFFFDFFFD"
    )
        port map (
      I0 => usersw_msb(3),
      I1 => usersw_msb(2),
      I2 => usersw_msb(1),
      I3 => \SEGMENT7_top[7]_i_27_n_1\,
      I4 => \LED_top_OBUF[4]_inst_i_13_n_1\,
      I5 => \LED_top_OBUF[6]_inst_i_21_n_1\,
      O => \SEGMENT7_top[7]_i_12_n_1\
    );
\SEGMENT7_top[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000540000555455"
    )
        port map (
      I0 => usersw_msb(3),
      I1 => \LED_top_OBUF[4]_inst_i_5_n_1\,
      I2 => \LED_top_OBUF[4]_inst_i_6_n_1\,
      I3 => usersw_msb(2),
      I4 => \SEGMENT7_top[7]_i_28_n_1\,
      I5 => \SEGMENT7_top[7]_i_29_n_1\,
      O => \SEGMENT7_top[7]_i_13_n_1\
    );
\SEGMENT7_top[7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFEAAAAFEFEFEFE"
    )
        port map (
      I0 => \LED_top_OBUF[6]_inst_i_17_n_1\,
      I1 => usersw_msb(1),
      I2 => \SEGMENT7_top[7]_i_30_n_1\,
      I3 => \LED_top_OBUF[3]_inst_i_13_n_1\,
      I4 => \LED_top_OBUF[3]_inst_i_12_n_1\,
      I5 => \LED_top_OBUF[6]_inst_i_21_n_1\,
      O => \SEGMENT7_top[7]_i_14_n_1\
    );
\SEGMENT7_top[7]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAABABABAB"
    )
        port map (
      I0 => usersw_msb(3),
      I1 => usersw_msb(2),
      I2 => \SEGMENT7_top[7]_i_31_n_1\,
      I3 => \LED_top_OBUF[3]_inst_i_10_n_1\,
      I4 => \LED_top_OBUF[3]_inst_i_9_n_1\,
      I5 => usersw_msb(1),
      O => \SEGMENT7_top[7]_i_15_n_1\
    );
\SEGMENT7_top[7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \LED_top_OBUF[3]_inst_i_6_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_8_n_1\,
      I2 => \SEGMENT7_top[7]_i_32_n_1\,
      I3 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I4 => \SEGMENT7_top[7]_i_8_0\,
      I5 => usersw_msb(0),
      O => \SEGMENT7_top[7]_i_16_n_1\
    );
\SEGMENT7_top[7]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFEAAAAFEFEFEFE"
    )
        port map (
      I0 => \LED_top_OBUF[6]_inst_i_17_n_1\,
      I1 => usersw_msb(1),
      I2 => \LED_top_OBUF[2]_inst_i_14_n_1\,
      I3 => \LED_top_OBUF[2]_inst_i_13_n_1\,
      I4 => \SEGMENT7_top[7]_i_34_n_1\,
      I5 => \LED_top_OBUF[6]_inst_i_21_n_1\,
      O => \SEGMENT7_top[7]_i_17_n_1\
    );
\SEGMENT7_top[7]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAABABABAB"
    )
        port map (
      I0 => usersw_msb(3),
      I1 => usersw_msb(2),
      I2 => \SEGMENT7_top[7]_i_35_n_1\,
      I3 => \LED_top_OBUF[2]_inst_i_10_n_1\,
      I4 => \LED_top_OBUF[2]_inst_i_9_n_1\,
      I5 => usersw_msb(1),
      O => \SEGMENT7_top[7]_i_18_n_1\
    );
\SEGMENT7_top[7]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \LED_top_OBUF[2]_inst_i_6_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_8_n_1\,
      I2 => \SEGMENT7_top[7]_i_36_n_1\,
      I3 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I4 => \SEGMENT7_top[7]_i_9_0\,
      I5 => usersw_msb(0),
      O => \SEGMENT7_top[7]_i_19_n_1\
    );
\SEGMENT7_top[7]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBAA"
    )
        port map (
      I0 => usersw_msb(1),
      I1 => \LED_top_OBUF[1]_inst_i_27_n_1\,
      I2 => \SEGMENT7_top[7]_i_38_n_1\,
      I3 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      O => \SEGMENT7_top[7]_i_20_n_1\
    );
\SEGMENT7_top[7]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \LED_top_OBUF[0]_inst_i_7_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_8_n_1\,
      I2 => \LED_top_OBUF[0]_inst_i_2_0\,
      I3 => \LED_top_OBUF[15]_inst_i_27_n_1\,
      I4 => \LED_top_OBUF[0]_inst_i_2_1\,
      I5 => usersw_msb(0),
      O => \SEGMENT7_top[7]_i_21_n_1\
    );
\SEGMENT7_top[7]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF08AA"
    )
        port map (
      I0 => \LED_top_OBUF[0]_inst_i_11_n_1\,
      I1 => \SEGMENT7_top[7]_i_39_n_1\,
      I2 => \SEGMENT7_top[7]_i_40_n_1\,
      I3 => \LED_top_OBUF[6]_inst_i_11_n_1\,
      I4 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I5 => \LED_top_OBUF[0]_inst_i_9_n_1\,
      O => \SEGMENT7_top[7]_i_22_n_1\
    );
\SEGMENT7_top[7]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FFFD"
    )
        port map (
      I0 => usersw_msb(1),
      I1 => \SEGMENT7_top[7]_i_41_n_1\,
      I2 => \LED_top_OBUF[0]_inst_i_33_n_1\,
      I3 => \LED_top_OBUF[0]_inst_i_32_n_1\,
      I4 => \LED_top_OBUF[0]_inst_i_31_n_1\,
      I5 => \SEGMENT7_top[7]_i_42_n_1\,
      O => \SEGMENT7_top[7]_i_23_n_1\
    );
\SEGMENT7_top[7]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFEAAAAFEFEFEFE"
    )
        port map (
      I0 => \LED_top_OBUF[6]_inst_i_17_n_1\,
      I1 => usersw_msb(1),
      I2 => \SEGMENT7_top[7]_i_43_n_1\,
      I3 => \SEGMENT7_top[7]_i_44_n_1\,
      I4 => \SEGMENT7_top[7]_i_45_n_1\,
      I5 => \LED_top_OBUF[6]_inst_i_21_n_1\,
      O => \SEGMENT7_top[7]_i_24_n_1\
    );
\SEGMENT7_top[7]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABAAAABBBBBBBB"
    )
        port map (
      I0 => usersw_msb(2),
      I1 => \LED_top_OBUF[1]_inst_i_6_n_1\,
      I2 => \SEGMENT7_top[7]_i_46_n_1\,
      I3 => \LED_top_OBUF[1]_inst_i_19_n_1\,
      I4 => \LED_top_OBUF[1]_inst_i_20_n_1\,
      I5 => usersw_msb(1),
      O => \SEGMENT7_top[7]_i_25_n_1\
    );
\SEGMENT7_top[7]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44454545FFFFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_23_n_1\,
      I1 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I2 => \SEGMENT7_top[7]_i_47_n_1\,
      I3 => \^input_circle_status_reg[2]_2\,
      I4 => \LED_top_OBUF[1]_inst_i_23_0\,
      I5 => usersw_msb(2),
      O => \SEGMENT7_top[7]_i_26_n_1\
    );
\SEGMENT7_top[7]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000EEEEEEEEEEE"
    )
        port map (
      I0 => \LED_top_OBUF[4]_inst_i_14_n_1\,
      I1 => \LED_top_OBUF[4]_inst_i_15_n_1\,
      I2 => \SEGMENT7_top[7]_i_13_0\,
      I3 => \^input_circle_status_reg[7]_3\,
      I4 => \LED_top_OBUF[4]_inst_i_4_0\,
      I5 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      O => \SEGMENT7_top[7]_i_27_n_1\
    );
\SEGMENT7_top[7]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF00AE"
    )
        port map (
      I0 => \SEGMENT7_top[7]_i_48_n_1\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \LED_top_OBUF[4]_inst_i_2_0\,
      I3 => \LED_top_OBUF[4]_inst_i_24_n_1\,
      I4 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I5 => \LED_top_OBUF[4]_inst_i_8_n_1\,
      O => \SEGMENT7_top[7]_i_28_n_1\
    );
\SEGMENT7_top[7]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5DD0000D5DDD5DD"
    )
        port map (
      I0 => usersw_msb(1),
      I1 => \LED_top_OBUF[4]_inst_i_27_n_1\,
      I2 => \SEGMENT7_top[7]_i_49_n_1\,
      I3 => \LED_top_OBUF[4]_inst_i_26_n_1\,
      I4 => \LED_top_OBUF[6]_inst_i_15_n_1\,
      I5 => \SEGMENT7_top[7]_i_13_1\,
      O => \SEGMENT7_top[7]_i_29_n_1\
    );
\SEGMENT7_top[7]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080808AAAAAAAA"
    )
        port map (
      I0 => \LED_top_OBUF[3]_inst_i_14_n_1\,
      I1 => \SEGMENT7_top[7]_i_51_n_1\,
      I2 => \LED_top_OBUF[3]_inst_i_35_n_1\,
      I3 => \^input_circle_status_reg[1]_1\,
      I4 => \LED_top_OBUF[3]_inst_i_8_0\,
      I5 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      O => \SEGMENT7_top[7]_i_30_n_1\
    );
\SEGMENT7_top[7]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \LED_top_OBUF[3]_inst_i_9_0\,
      I1 => \^input_circle_status_reg[7]_1\,
      I2 => alubrnch_out(3),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => alubrnch_out(19),
      I5 => \LED_top_OBUF[6]_inst_i_15_n_1\,
      O => \SEGMENT7_top[7]_i_31_n_1\
    );
\SEGMENT7_top[7]_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \^input_circle_status_reg[3]_1\,
      I1 => \SEGMENT7_top[7]_i_29_0\(6),
      I2 => \SEGMENT7_top[7]_i_15_0\,
      I3 => \SEGMENT7_top[7]_i_29_0\(2),
      I4 => \^input_circle_status_reg[7]_2\,
      O => \SEGMENT7_top[7]_i_32_n_1\
    );
\SEGMENT7_top[7]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => usersw_msb(0),
      I1 => \^input_circle_status_reg[1]_1\,
      I2 => \LED_top_OBUF[2]_inst_i_4_0\,
      O => \SEGMENT7_top[7]_i_34_n_1\
    );
\SEGMENT7_top[7]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \LED_top_OBUF[2]_inst_i_10_0\,
      I1 => \^input_circle_status_reg[7]_1\,
      I2 => alubrnch_out(2),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => alubrnch_out(18),
      I5 => \LED_top_OBUF[6]_inst_i_15_n_1\,
      O => \SEGMENT7_top[7]_i_35_n_1\
    );
\SEGMENT7_top[7]_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \^input_circle_status_reg[3]_1\,
      I1 => \SEGMENT7_top[7]_i_29_0\(5),
      I2 => \SEGMENT7_top[7]_i_15_0\,
      I3 => \SEGMENT7_top[7]_i_29_0\(1),
      I4 => \^input_circle_status_reg[7]_2\,
      O => \SEGMENT7_top[7]_i_36_n_1\
    );
\SEGMENT7_top[7]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F008F8F0F008888"
    )
        port map (
      I0 => \LED_top_OBUF[8]_inst_i_8_0\(0),
      I1 => \^input_circle_status_reg[7]_4\,
      I2 => \LED_top_OBUF[15]_inst_i_33_n_1\,
      I3 => Q(10),
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => Q(0),
      O => \SEGMENT7_top[7]_i_38_n_1\
    );
\SEGMENT7_top[7]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555557F7FFFF57F7"
    )
        port map (
      I0 => \SEGMENT7_top[7]_i_57_n_1\,
      I1 => reg_source0_out0(0),
      I2 => \SEGMENT7_top[7]_i_15_0\,
      I3 => reg_source0_out0(6),
      I4 => \^input_circle_status_reg[1]_2\,
      I5 => \SEGMENT7_top[7]_i_22_0\,
      O => \SEGMENT7_top[7]_i_39_n_1\
    );
\SEGMENT7_top[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82820A8220202020"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I1 => \SEGMENT7_top[7]_i_8_n_1\,
      I2 => \SEGMENT7_top[7]_i_9_n_1\,
      I3 => \LED_top_OBUF[0]_inst_i_5_n_1\,
      I4 => \SEGMENT7_top[7]_i_10_n_1\,
      I5 => \SEGMENT7_top[7]_i_11_n_1\,
      O => \SEGMENT7_top[7]_i_4_n_1\
    );
\SEGMENT7_top[7]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055D55555"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_12_n_1\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => S_f3(0),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => \^input_circle_status_reg[1]_0\,
      I5 => \^input_circle_status_reg[2]_0\,
      O => \SEGMENT7_top[7]_i_40_n_1\
    );
\SEGMENT7_top[7]_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^input_circle_status_reg[3]_0\,
      I1 => \input_circle_status_reg_n_1_[6]\,
      I2 => \input_circle_status_reg_n_1_[5]\,
      I3 => \input_circle_status_reg_n_1_[4]\,
      I4 => usersw_msb(0),
      O => \SEGMENT7_top[7]_i_41_n_1\
    );
\SEGMENT7_top[7]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \SEGMENT7_top[7]_i_23_0\,
      I1 => \^input_circle_status_reg[7]_1\,
      I2 => alubrnch_out(0),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => alubrnch_out(16),
      I5 => \LED_top_OBUF[6]_inst_i_15_n_1\,
      O => \SEGMENT7_top[7]_i_42_n_1\
    );
\SEGMENT7_top[7]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000888AAAAAAAA"
    )
        port map (
      I0 => \SEGMENT7_top[7]_i_59_n_1\,
      I1 => \SEGMENT7_top[7]_i_60_n_1\,
      I2 => \^input_circle_status_reg[1]_1\,
      I3 => \LED_top_OBUF[1]_inst_i_7_0\,
      I4 => \SEGMENT7_top[7]_i_61_n_1\,
      I5 => \LED_top_OBUF[1]_inst_i_10_n_1\,
      O => \SEGMENT7_top[7]_i_43_n_1\
    );
\SEGMENT7_top[7]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAAAEAAAAAAAAA"
    )
        port map (
      I0 => \SEGMENT7_top[7]_i_62_n_1\,
      I1 => usersw_msb(0),
      I2 => alubrnch_out(1),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => alubrnch_out(17),
      I5 => \LED_top_OBUF[15]_inst_i_41_n_1\,
      O => \SEGMENT7_top[7]_i_44_n_1\
    );
\SEGMENT7_top[7]_i_45\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => usersw_msb(0),
      I1 => \^input_circle_status_reg[1]_1\,
      I2 => \LED_top_OBUF[1]_inst_i_4_0\,
      O => \SEGMENT7_top[7]_i_45_n_1\
    );
\SEGMENT7_top[7]_i_46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00FE"
    )
        port map (
      I0 => \SEGMENT7_top[7]_i_63_n_1\,
      I1 => \^input_circle_status_reg[3]_0\,
      I2 => \SEGMENT7_top[7]_i_25_0\,
      I3 => \^input_circle_status_reg[0]_0\,
      I4 => \LED_top_OBUF[1]_inst_i_17_n_1\,
      O => \SEGMENT7_top[7]_i_46_n_1\
    );
\SEGMENT7_top[7]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8888888A888"
    )
        port map (
      I0 => \LED_top_OBUF[6]_inst_i_11_n_1\,
      I1 => \SEGMENT7_top[7]_i_65_n_1\,
      I2 => \SEGMENT7_top[7]_i_57_n_1\,
      I3 => \LED_top_OBUF[1]_inst_i_8_1\,
      I4 => \^input_circle_status_reg[1]_2\,
      I5 => \LED_top_OBUF[1]_inst_i_7_0\,
      O => \SEGMENT7_top[7]_i_47_n_1\
    );
\SEGMENT7_top[7]_i_48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => \^input_circle_status_reg[2]_1\,
      I1 => reg_source0_out0(7),
      I2 => \SEGMENT7_top[7]_i_15_0\,
      I3 => reg_source0_out0(1),
      I4 => \^input_circle_status_reg[1]_2\,
      O => \SEGMENT7_top[7]_i_48_n_1\
    );
\SEGMENT7_top[7]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBFBBBFFF"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_30_n_1\,
      I1 => usersw_msb(0),
      I2 => \SEGMENT7_top[7]_i_29_0\(7),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      I4 => \SEGMENT7_top[7]_i_29_0\(3),
      I5 => \^input_circle_status_reg[7]_0\,
      O => \SEGMENT7_top[7]_i_49_n_1\
    );
\SEGMENT7_top[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"229C"
    )
        port map (
      I0 => \^led_top_obuf\(11),
      I1 => \^led_top_obuf\(10),
      I2 => \^led_top_obuf\(8),
      I3 => \^led_top_obuf\(9),
      O => \SEGMENT7_top[7]_i_5_n_1\
    );
\SEGMENT7_top[7]_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFFFFFFFBFF"
    )
        port map (
      I0 => \^input_circle_status_reg[0]_0\,
      I1 => \^input_circle_status_reg[1]_0\,
      I2 => \^input_circle_status_reg[7]_0\,
      I3 => reg_source1_out(1),
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => reg_source1_out(4),
      O => \SEGMENT7_top[7]_i_51_n_1\
    );
\SEGMENT7_top[7]_i_57\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^input_circle_status_reg[2]_0\,
      I1 => \^input_circle_status_reg[1]_0\,
      O => \SEGMENT7_top[7]_i_57_n_1\
    );
\SEGMENT7_top[7]_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFBFBFBFB"
    )
        port map (
      I0 => \^input_circle_status_reg[2]_0\,
      I1 => \LED_top_OBUF[6]_inst_i_11_n_1\,
      I2 => \LED_top_OBUF[15]_inst_i_14_n_1\,
      I3 => \LED_top_OBUF[6]_inst_i_41_n_1\,
      I4 => \SEGMENT7_top[7]_i_43_0\,
      I5 => \LED_top_OBUF[6]_inst_i_42_n_1\,
      O => \SEGMENT7_top[7]_i_59_n_1\
    );
\SEGMENT7_top[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222299C9CCCC"
    )
        port map (
      I0 => \^led_top_obuf\(7),
      I1 => \^led_top_obuf\(6),
      I2 => \SEGMENT7_top[7]_i_12_n_1\,
      I3 => \SEGMENT7_top[7]_i_13_n_1\,
      I4 => \LED_top_OBUF[15]_inst_i_2_n_1\,
      I5 => \^led_top_obuf\(5),
      O => \SEGMENT7_top[7]_i_6_n_1\
    );
\SEGMENT7_top[7]_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFFFFFFFBFF"
    )
        port map (
      I0 => \^input_circle_status_reg[0]_0\,
      I1 => \^input_circle_status_reg[1]_0\,
      I2 => \^input_circle_status_reg[7]_0\,
      I3 => reg_source1_out(0),
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => reg_source1_out(3),
      O => \SEGMENT7_top[7]_i_60_n_1\
    );
\SEGMENT7_top[7]_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080000000800"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \^input_circle_status_reg[7]_0\,
      I3 => Q(1),
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => Q(10),
      O => \SEGMENT7_top[7]_i_61_n_1\
    );
\SEGMENT7_top[7]_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080000000800"
    )
        port map (
      I0 => \^input_circle_status_reg[1]_0\,
      I1 => \^input_circle_status_reg[0]_0\,
      I2 => \^input_circle_status_reg[7]_0\,
      I3 => \LED_top_OBUF[15]_inst_i_6_2\(1),
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => \LED_top_OBUF[15]_inst_i_6_2\(8),
      O => \SEGMENT7_top[7]_i_62_n_1\
    );
\SEGMENT7_top[7]_i_63\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^input_circle_status_reg[2]_0\,
      I1 => \^input_circle_status_reg[1]_0\,
      I2 => S_f7(0),
      I3 => \SEGMENT7_top[7]_i_15_0\,
      O => \SEGMENT7_top[7]_i_63_n_1\
    );
\SEGMENT7_top[7]_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000140400001000"
    )
        port map (
      I0 => \^input_circle_status_reg[2]_0\,
      I1 => \^input_circle_status_reg[1]_0\,
      I2 => \^input_circle_status_reg[0]_0\,
      I3 => \SEGMENT7_top[7]_i_47_0\,
      I4 => \SEGMENT7_top[7]_i_15_0\,
      I5 => S_f7(0),
      O => \SEGMENT7_top[7]_i_65_n_1\
    );
\SEGMENT7_top[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"229C"
    )
        port map (
      I0 => \^led_top_obuf\(15),
      I1 => \^led_top_obuf\(14),
      I2 => \^led_top_obuf\(12),
      I3 => \^led_top_obuf\(13),
      O => \SEGMENT7_top[7]_i_7_n_1\
    );
\SEGMENT7_top[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8AA88888888"
    )
        port map (
      I0 => \SEGMENT7_top[7]_i_14_n_1\,
      I1 => \SEGMENT7_top[7]_i_15_n_1\,
      I2 => \LED_top_OBUF[3]_inst_i_8_n_1\,
      I3 => \SEGMENT7_top[7]_i_16_n_1\,
      I4 => \LED_top_OBUF[3]_inst_i_5_n_1\,
      I5 => usersw_msb(2),
      O => \SEGMENT7_top[7]_i_8_n_1\
    );
\SEGMENT7_top[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8AA88888888"
    )
        port map (
      I0 => \SEGMENT7_top[7]_i_17_n_1\,
      I1 => \SEGMENT7_top[7]_i_18_n_1\,
      I2 => \LED_top_OBUF[2]_inst_i_8_n_1\,
      I3 => \SEGMENT7_top[7]_i_19_n_1\,
      I4 => \LED_top_OBUF[2]_inst_i_5_n_1\,
      I5 => usersw_msb(2),
      O => \SEGMENT7_top[7]_i_9_n_1\
    );
\SEGMENT7_top_reg[1]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \SEGMENT7_top_reg[1]_i_2_n_1\,
      I1 => \SEGMENT7_top_reg[1]_i_3_n_1\,
      O => D(0),
      S => sevenouter4index_reg(0)
    );
\SEGMENT7_top_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT7_top[1]_i_4_n_1\,
      I1 => \SEGMENT7_top[1]_i_5_n_1\,
      O => \SEGMENT7_top_reg[1]_i_2_n_1\,
      S => sevenouter4index_reg(1)
    );
\SEGMENT7_top_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT7_top[1]_i_6_n_1\,
      I1 => \SEGMENT7_top[1]_i_7_n_1\,
      O => \SEGMENT7_top_reg[1]_i_3_n_1\,
      S => sevenouter4index_reg(1)
    );
\SEGMENT7_top_reg[2]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \SEGMENT7_top_reg[2]_i_2_n_1\,
      I1 => \SEGMENT7_top_reg[2]_i_3_n_1\,
      O => D(1),
      S => sevenouter4index_reg(0)
    );
\SEGMENT7_top_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT7_top[2]_i_4_n_1\,
      I1 => \SEGMENT7_top[2]_i_5_n_1\,
      O => \SEGMENT7_top_reg[2]_i_2_n_1\,
      S => sevenouter4index_reg(1)
    );
\SEGMENT7_top_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT7_top[2]_i_6_n_1\,
      I1 => \SEGMENT7_top[2]_i_7_n_1\,
      O => \SEGMENT7_top_reg[2]_i_3_n_1\,
      S => sevenouter4index_reg(1)
    );
\SEGMENT7_top_reg[3]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \SEGMENT7_top_reg[3]_i_2_n_1\,
      I1 => \SEGMENT7_top_reg[3]_i_3_n_1\,
      O => D(2),
      S => sevenouter4index_reg(0)
    );
\SEGMENT7_top_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT7_top[3]_i_4_n_1\,
      I1 => \SEGMENT7_top[3]_i_5_n_1\,
      O => \SEGMENT7_top_reg[3]_i_2_n_1\,
      S => sevenouter4index_reg(1)
    );
\SEGMENT7_top_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT7_top[3]_i_6_n_1\,
      I1 => \SEGMENT7_top[3]_i_7_n_1\,
      O => \SEGMENT7_top_reg[3]_i_3_n_1\,
      S => sevenouter4index_reg(1)
    );
\SEGMENT7_top_reg[4]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \SEGMENT7_top_reg[4]_i_2_n_1\,
      I1 => \SEGMENT7_top_reg[4]_i_3_n_1\,
      O => D(3),
      S => sevenouter4index_reg(0)
    );
\SEGMENT7_top_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT7_top[4]_i_4_n_1\,
      I1 => \SEGMENT7_top[4]_i_5_n_1\,
      O => \SEGMENT7_top_reg[4]_i_2_n_1\,
      S => sevenouter4index_reg(1)
    );
\SEGMENT7_top_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT7_top[4]_i_6_n_1\,
      I1 => \SEGMENT7_top[4]_i_7_n_1\,
      O => \SEGMENT7_top_reg[4]_i_3_n_1\,
      S => sevenouter4index_reg(1)
    );
\SEGMENT7_top_reg[5]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \SEGMENT7_top_reg[5]_i_2_n_1\,
      I1 => \SEGMENT7_top_reg[5]_i_3_n_1\,
      O => D(4),
      S => sevenouter4index_reg(0)
    );
\SEGMENT7_top_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT7_top[5]_i_4_n_1\,
      I1 => \SEGMENT7_top[5]_i_5_n_1\,
      O => \SEGMENT7_top_reg[5]_i_2_n_1\,
      S => sevenouter4index_reg(1)
    );
\SEGMENT7_top_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT7_top[5]_i_6_n_1\,
      I1 => \SEGMENT7_top[5]_i_7_n_1\,
      O => \SEGMENT7_top_reg[5]_i_3_n_1\,
      S => sevenouter4index_reg(1)
    );
\SEGMENT7_top_reg[6]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \SEGMENT7_top_reg[6]_i_2_n_1\,
      I1 => \SEGMENT7_top_reg[6]_i_3_n_1\,
      O => D(5),
      S => sevenouter4index_reg(0)
    );
\SEGMENT7_top_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT7_top[6]_i_4_n_1\,
      I1 => \SEGMENT7_top[6]_i_5_n_1\,
      O => \SEGMENT7_top_reg[6]_i_2_n_1\,
      S => sevenouter4index_reg(1)
    );
\SEGMENT7_top_reg[6]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT7_top[6]_i_6_n_1\,
      I1 => \SEGMENT7_top[6]_i_7_n_1\,
      O => \SEGMENT7_top_reg[6]_i_3_n_1\,
      S => sevenouter4index_reg(1)
    );
\SEGMENT7_top_reg[7]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \SEGMENT7_top_reg[7]_i_2_n_1\,
      I1 => \SEGMENT7_top_reg[7]_i_3_n_1\,
      O => D(6),
      S => sevenouter4index_reg(0)
    );
\SEGMENT7_top_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT7_top[7]_i_4_n_1\,
      I1 => \SEGMENT7_top[7]_i_5_n_1\,
      O => \SEGMENT7_top_reg[7]_i_2_n_1\,
      S => sevenouter4index_reg(1)
    );
\SEGMENT7_top_reg[7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT7_top[7]_i_6_n_1\,
      I1 => \SEGMENT7_top[7]_i_7_n_1\,
      O => \SEGMENT7_top_reg[7]_i_3_n_1\,
      S => sevenouter4index_reg(1)
    );
\cycle_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_counter_reg(0),
      O => \cycle_counter[0]_i_1_n_1\
    );
\cycle_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cycle_counter_reg(1),
      I1 => cycle_counter_reg(0),
      O => p_0_in(1)
    );
\cycle_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => cycle_counter_reg(2),
      I1 => cycle_counter_reg(0),
      I2 => cycle_counter_reg(1),
      O => p_0_in(2)
    );
\cycle_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => cycle_counter_reg(3),
      I1 => cycle_counter_reg(2),
      I2 => cycle_counter_reg(1),
      I3 => cycle_counter_reg(0),
      O => p_0_in(3)
    );
\cycle_counter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => cycle_counter_reg(4),
      I1 => cycle_counter_reg(3),
      I2 => cycle_counter_reg(2),
      O => \cycle_counter[4]_i_1_n_1\
    );
\cycle_counter[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => cycle_counter_reg(2),
      I1 => cycle_counter_reg(3),
      I2 => cycle_counter_reg(4),
      O => \cycle_counter[4]_i_2_n_1\
    );
\cycle_counter[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => cycle_counter_reg(4),
      I1 => cycle_counter_reg(3),
      I2 => cycle_counter_reg(0),
      I3 => cycle_counter_reg(1),
      I4 => cycle_counter_reg(2),
      O => p_0_in(4)
    );
\cycle_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \cycle_counter[4]_i_2_n_1\,
      D => \cycle_counter[0]_i_1_n_1\,
      Q => cycle_counter_reg(0),
      R => \cycle_counter[4]_i_1_n_1\
    );
\cycle_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \cycle_counter[4]_i_2_n_1\,
      D => p_0_in(1),
      Q => cycle_counter_reg(1),
      R => \cycle_counter[4]_i_1_n_1\
    );
\cycle_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \cycle_counter[4]_i_2_n_1\,
      D => p_0_in(2),
      Q => cycle_counter_reg(2),
      R => \cycle_counter[4]_i_1_n_1\
    );
\cycle_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \cycle_counter[4]_i_2_n_1\,
      D => p_0_in(3),
      Q => cycle_counter_reg(3),
      R => \cycle_counter[4]_i_1_n_1\
    );
\cycle_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \cycle_counter[4]_i_2_n_1\,
      D => p_0_in(4),
      Q => cycle_counter_reg(4),
      R => \cycle_counter[4]_i_1_n_1\
    );
\debounce_cntr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \input_circle_status_reg[20]_i_2_n_2\,
      I1 => \input_circle_status_reg[20]_i_3_n_3\,
      O => \debounce_cntr[0]_i_1_n_1\
    );
\debounce_cntr[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \input_circle_status_reg[20]_i_2_n_2\,
      I1 => debounce_cntr_reg(3),
      O => \debounce_cntr[0]_i_3_n_1\
    );
\debounce_cntr[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \input_circle_status_reg[20]_i_2_n_2\,
      I1 => debounce_cntr_reg(2),
      O => \debounce_cntr[0]_i_4_n_1\
    );
\debounce_cntr[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \input_circle_status_reg[20]_i_2_n_2\,
      I1 => debounce_cntr_reg(1),
      O => \debounce_cntr[0]_i_5_n_1\
    );
\debounce_cntr[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => debounce_cntr_reg(0),
      I1 => \input_circle_status_reg[20]_i_2_n_2\,
      O => \debounce_cntr[0]_i_6_n_1\
    );
\debounce_cntr[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \input_circle_status_reg[20]_i_2_n_2\,
      I1 => debounce_cntr_reg(15),
      O => \debounce_cntr[12]_i_2_n_1\
    );
\debounce_cntr[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => debounce_cntr_reg(14),
      I1 => \input_circle_status_reg[20]_i_2_n_2\,
      O => \debounce_cntr[12]_i_3_n_1\
    );
\debounce_cntr[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \input_circle_status_reg[20]_i_2_n_2\,
      I1 => debounce_cntr_reg(13),
      O => \debounce_cntr[12]_i_4_n_1\
    );
\debounce_cntr[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \input_circle_status_reg[20]_i_2_n_2\,
      I1 => debounce_cntr_reg(12),
      O => \debounce_cntr[12]_i_5_n_1\
    );
\debounce_cntr[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => debounce_cntr_reg(19),
      I1 => \input_circle_status_reg[20]_i_2_n_2\,
      O => \debounce_cntr[16]_i_2_n_1\
    );
\debounce_cntr[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => debounce_cntr_reg(18),
      I1 => \input_circle_status_reg[20]_i_2_n_2\,
      O => \debounce_cntr[16]_i_3_n_1\
    );
\debounce_cntr[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => debounce_cntr_reg(17),
      I1 => \input_circle_status_reg[20]_i_2_n_2\,
      O => \debounce_cntr[16]_i_4_n_1\
    );
\debounce_cntr[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => debounce_cntr_reg(16),
      I1 => \input_circle_status_reg[20]_i_2_n_2\,
      O => \debounce_cntr[16]_i_5_n_1\
    );
\debounce_cntr[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \input_circle_status_reg[20]_i_2_n_2\,
      I1 => debounce_cntr_reg(7),
      O => \debounce_cntr[4]_i_2_n_1\
    );
\debounce_cntr[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => debounce_cntr_reg(6),
      I1 => \input_circle_status_reg[20]_i_2_n_2\,
      O => \debounce_cntr[4]_i_3_n_1\
    );
\debounce_cntr[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \input_circle_status_reg[20]_i_2_n_2\,
      I1 => debounce_cntr_reg(5),
      O => \debounce_cntr[4]_i_4_n_1\
    );
\debounce_cntr[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \input_circle_status_reg[20]_i_2_n_2\,
      I1 => debounce_cntr_reg(4),
      O => \debounce_cntr[4]_i_5_n_1\
    );
\debounce_cntr[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \input_circle_status_reg[20]_i_2_n_2\,
      I1 => debounce_cntr_reg(11),
      O => \debounce_cntr[8]_i_2_n_1\
    );
\debounce_cntr[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \input_circle_status_reg[20]_i_2_n_2\,
      I1 => debounce_cntr_reg(10),
      O => \debounce_cntr[8]_i_3_n_1\
    );
\debounce_cntr[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => debounce_cntr_reg(9),
      I1 => \input_circle_status_reg[20]_i_2_n_2\,
      O => \debounce_cntr[8]_i_4_n_1\
    );
\debounce_cntr[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \input_circle_status_reg[20]_i_2_n_2\,
      I1 => debounce_cntr_reg(8),
      O => \debounce_cntr[8]_i_5_n_1\
    );
\debounce_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \debounce_cntr[0]_i_1_n_1\,
      D => \debounce_cntr_reg[0]_i_2_n_8\,
      Q => debounce_cntr_reg(0),
      R => '0'
    );
\debounce_cntr_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \debounce_cntr_reg[0]_i_2_n_1\,
      CO(2 downto 0) => \NLW_debounce_cntr_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \input_circle_status_reg[20]_i_2_n_2\,
      O(3) => \debounce_cntr_reg[0]_i_2_n_5\,
      O(2) => \debounce_cntr_reg[0]_i_2_n_6\,
      O(1) => \debounce_cntr_reg[0]_i_2_n_7\,
      O(0) => \debounce_cntr_reg[0]_i_2_n_8\,
      S(3) => \debounce_cntr[0]_i_3_n_1\,
      S(2) => \debounce_cntr[0]_i_4_n_1\,
      S(1) => \debounce_cntr[0]_i_5_n_1\,
      S(0) => \debounce_cntr[0]_i_6_n_1\
    );
\debounce_cntr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \debounce_cntr[0]_i_1_n_1\,
      D => \debounce_cntr_reg[8]_i_1_n_6\,
      Q => debounce_cntr_reg(10),
      R => '0'
    );
\debounce_cntr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \debounce_cntr[0]_i_1_n_1\,
      D => \debounce_cntr_reg[8]_i_1_n_5\,
      Q => debounce_cntr_reg(11),
      R => '0'
    );
\debounce_cntr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \debounce_cntr[0]_i_1_n_1\,
      D => \debounce_cntr_reg[12]_i_1_n_8\,
      Q => debounce_cntr_reg(12),
      R => '0'
    );
\debounce_cntr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \debounce_cntr_reg[8]_i_1_n_1\,
      CO(3) => \debounce_cntr_reg[12]_i_1_n_1\,
      CO(2 downto 0) => \NLW_debounce_cntr_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \debounce_cntr_reg[12]_i_1_n_5\,
      O(2) => \debounce_cntr_reg[12]_i_1_n_6\,
      O(1) => \debounce_cntr_reg[12]_i_1_n_7\,
      O(0) => \debounce_cntr_reg[12]_i_1_n_8\,
      S(3) => \debounce_cntr[12]_i_2_n_1\,
      S(2) => \debounce_cntr[12]_i_3_n_1\,
      S(1) => \debounce_cntr[12]_i_4_n_1\,
      S(0) => \debounce_cntr[12]_i_5_n_1\
    );
\debounce_cntr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \debounce_cntr[0]_i_1_n_1\,
      D => \debounce_cntr_reg[12]_i_1_n_7\,
      Q => debounce_cntr_reg(13),
      R => '0'
    );
\debounce_cntr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \debounce_cntr[0]_i_1_n_1\,
      D => \debounce_cntr_reg[12]_i_1_n_6\,
      Q => debounce_cntr_reg(14),
      R => '0'
    );
\debounce_cntr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \debounce_cntr[0]_i_1_n_1\,
      D => \debounce_cntr_reg[12]_i_1_n_5\,
      Q => debounce_cntr_reg(15),
      R => '0'
    );
\debounce_cntr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \debounce_cntr[0]_i_1_n_1\,
      D => \debounce_cntr_reg[16]_i_1_n_8\,
      Q => debounce_cntr_reg(16),
      R => '0'
    );
\debounce_cntr_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \debounce_cntr_reg[12]_i_1_n_1\,
      CO(3 downto 0) => \NLW_debounce_cntr_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \debounce_cntr_reg[16]_i_1_n_5\,
      O(2) => \debounce_cntr_reg[16]_i_1_n_6\,
      O(1) => \debounce_cntr_reg[16]_i_1_n_7\,
      O(0) => \debounce_cntr_reg[16]_i_1_n_8\,
      S(3) => \debounce_cntr[16]_i_2_n_1\,
      S(2) => \debounce_cntr[16]_i_3_n_1\,
      S(1) => \debounce_cntr[16]_i_4_n_1\,
      S(0) => \debounce_cntr[16]_i_5_n_1\
    );
\debounce_cntr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \debounce_cntr[0]_i_1_n_1\,
      D => \debounce_cntr_reg[16]_i_1_n_7\,
      Q => debounce_cntr_reg(17),
      R => '0'
    );
\debounce_cntr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \debounce_cntr[0]_i_1_n_1\,
      D => \debounce_cntr_reg[16]_i_1_n_6\,
      Q => debounce_cntr_reg(18),
      R => '0'
    );
\debounce_cntr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \debounce_cntr[0]_i_1_n_1\,
      D => \debounce_cntr_reg[16]_i_1_n_5\,
      Q => debounce_cntr_reg(19),
      R => '0'
    );
\debounce_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \debounce_cntr[0]_i_1_n_1\,
      D => \debounce_cntr_reg[0]_i_2_n_7\,
      Q => debounce_cntr_reg(1),
      R => '0'
    );
\debounce_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \debounce_cntr[0]_i_1_n_1\,
      D => \debounce_cntr_reg[0]_i_2_n_6\,
      Q => debounce_cntr_reg(2),
      R => '0'
    );
\debounce_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \debounce_cntr[0]_i_1_n_1\,
      D => \debounce_cntr_reg[0]_i_2_n_5\,
      Q => debounce_cntr_reg(3),
      R => '0'
    );
\debounce_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \debounce_cntr[0]_i_1_n_1\,
      D => \debounce_cntr_reg[4]_i_1_n_8\,
      Q => debounce_cntr_reg(4),
      R => '0'
    );
\debounce_cntr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \debounce_cntr_reg[0]_i_2_n_1\,
      CO(3) => \debounce_cntr_reg[4]_i_1_n_1\,
      CO(2 downto 0) => \NLW_debounce_cntr_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \debounce_cntr_reg[4]_i_1_n_5\,
      O(2) => \debounce_cntr_reg[4]_i_1_n_6\,
      O(1) => \debounce_cntr_reg[4]_i_1_n_7\,
      O(0) => \debounce_cntr_reg[4]_i_1_n_8\,
      S(3) => \debounce_cntr[4]_i_2_n_1\,
      S(2) => \debounce_cntr[4]_i_3_n_1\,
      S(1) => \debounce_cntr[4]_i_4_n_1\,
      S(0) => \debounce_cntr[4]_i_5_n_1\
    );
\debounce_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \debounce_cntr[0]_i_1_n_1\,
      D => \debounce_cntr_reg[4]_i_1_n_7\,
      Q => debounce_cntr_reg(5),
      R => '0'
    );
\debounce_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \debounce_cntr[0]_i_1_n_1\,
      D => \debounce_cntr_reg[4]_i_1_n_6\,
      Q => debounce_cntr_reg(6),
      R => '0'
    );
\debounce_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \debounce_cntr[0]_i_1_n_1\,
      D => \debounce_cntr_reg[4]_i_1_n_5\,
      Q => debounce_cntr_reg(7),
      R => '0'
    );
\debounce_cntr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \debounce_cntr[0]_i_1_n_1\,
      D => \debounce_cntr_reg[8]_i_1_n_8\,
      Q => debounce_cntr_reg(8),
      R => '0'
    );
\debounce_cntr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \debounce_cntr_reg[4]_i_1_n_1\,
      CO(3) => \debounce_cntr_reg[8]_i_1_n_1\,
      CO(2 downto 0) => \NLW_debounce_cntr_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \debounce_cntr_reg[8]_i_1_n_5\,
      O(2) => \debounce_cntr_reg[8]_i_1_n_6\,
      O(1) => \debounce_cntr_reg[8]_i_1_n_7\,
      O(0) => \debounce_cntr_reg[8]_i_1_n_8\,
      S(3) => \debounce_cntr[8]_i_2_n_1\,
      S(2) => \debounce_cntr[8]_i_3_n_1\,
      S(1) => \debounce_cntr[8]_i_4_n_1\,
      S(0) => \debounce_cntr[8]_i_5_n_1\
    );
\debounce_cntr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => \debounce_cntr[0]_i_1_n_1\,
      D => \debounce_cntr_reg[8]_i_1_n_7\,
      Q => debounce_cntr_reg(9),
      R => '0'
    );
\input_circle_status[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => input_circle_status1,
      I1 => \input_circle_status[8]_i_2_n_1\,
      I2 => \input_circle_status[7]_i_2_n_1\,
      I3 => \^input_circle_status_reg[0]_0\,
      O => \input_circle_status[0]_i_1_n_1\
    );
\input_circle_status[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => input_circle_status1,
      I1 => \input_circle_status[18]_i_4_n_1\,
      I2 => \input_circle_status[14]_i_3_n_1\,
      I3 => usersw_msb(2),
      O => \input_circle_status[10]_i_1_n_1\
    );
\input_circle_status[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => input_circle_status1,
      I1 => \cycle_counter[4]_i_1_n_1\,
      I2 => \input_circle_status[11]_i_2_n_1\,
      I3 => cycle_counter_reg(2),
      I4 => \input_circle_status[14]_i_3_n_1\,
      I5 => usersw_msb(3),
      O => \input_circle_status[11]_i_1_n_1\
    );
\input_circle_status[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_counter_reg(1),
      I1 => cycle_counter_reg(0),
      O => \input_circle_status[11]_i_2_n_1\
    );
\input_circle_status[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => input_circle_status1,
      I1 => \input_circle_status[12]_i_2_n_1\,
      I2 => \input_circle_status[14]_i_3_n_1\,
      I3 => usersw_msb(4),
      O => \input_circle_status[12]_i_1_n_1\
    );
\input_circle_status[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => cycle_counter_reg(1),
      I1 => cycle_counter_reg(0),
      I2 => cycle_counter_reg(4),
      I3 => cycle_counter_reg(2),
      O => \input_circle_status[12]_i_2_n_1\
    );
\input_circle_status[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => input_circle_status1,
      I1 => \input_circle_status[13]_i_2_n_1\,
      I2 => \input_circle_status[14]_i_3_n_1\,
      I3 => usersw_msb(5),
      O => \input_circle_status[13]_i_1_n_1\
    );
\input_circle_status[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => cycle_counter_reg(4),
      I1 => cycle_counter_reg(2),
      I2 => cycle_counter_reg(1),
      I3 => cycle_counter_reg(0),
      O => \input_circle_status[13]_i_2_n_1\
    );
\input_circle_status[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => input_circle_status1,
      I1 => \input_circle_status[14]_i_2_n_1\,
      I2 => \input_circle_status[14]_i_3_n_1\,
      I3 => usersw_msb(6),
      O => \input_circle_status[14]_i_1_n_1\
    );
\input_circle_status[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => cycle_counter_reg(4),
      I1 => cycle_counter_reg(2),
      I2 => cycle_counter_reg(0),
      I3 => cycle_counter_reg(1),
      O => \input_circle_status[14]_i_2_n_1\
    );
\input_circle_status[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => cycle_counter_reg(4),
      I1 => cycle_counter_reg(3),
      I2 => \input_circle_status_reg[20]_i_2_n_2\,
      I3 => \input_circle_status_reg[20]_i_3_n_3\,
      O => \input_circle_status[14]_i_3_n_1\
    );
\input_circle_status[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => input_circle_status1,
      I1 => cycle_counter_reg(3),
      I2 => cycle_counter_reg(4),
      I3 => \input_circle_status[15]_i_2_n_1\,
      I4 => \input_circle_status[18]_i_3_n_1\,
      I5 => usersw_msb(7),
      O => \input_circle_status[15]_i_1_n_1\
    );
\input_circle_status[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => cycle_counter_reg(0),
      I1 => cycle_counter_reg(1),
      I2 => cycle_counter_reg(2),
      O => \input_circle_status[15]_i_2_n_1\
    );
\input_circle_status[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => input_circle_status1,
      I1 => cycle_counter_reg(3),
      I2 => cycle_counter_reg(4),
      I3 => \input_circle_status[18]_i_3_n_1\,
      I4 => \input_circle_status[17]_i_2_n_1\,
      I5 => \^userbutton_updown\(0),
      O => \input_circle_status[17]_i_1_n_1\
    );
\input_circle_status[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00070000"
    )
        port map (
      I0 => cycle_counter_reg(4),
      I1 => cycle_counter_reg(3),
      I2 => cycle_counter_reg(2),
      I3 => cycle_counter_reg(1),
      I4 => cycle_counter_reg(0),
      O => \input_circle_status[17]_i_2_n_1\
    );
\input_circle_status[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => input_circle_status1,
      I1 => cycle_counter_reg(3),
      I2 => cycle_counter_reg(4),
      I3 => \input_circle_status[18]_i_3_n_1\,
      I4 => \input_circle_status[18]_i_4_n_1\,
      I5 => \^userbutton_updown\(1),
      O => \input_circle_status[18]_i_1_n_1\
    );
\input_circle_status[18]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => SW_top_IBUF(7),
      I1 => SW_top_IBUF(6),
      I2 => cycle_counter_reg(1),
      I3 => SW_top_IBUF(5),
      I4 => cycle_counter_reg(0),
      I5 => SW_top_IBUF(4),
      O => \input_circle_status[18]_i_10_n_1\
    );
\input_circle_status[18]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => SW_top_IBUF(11),
      I1 => SW_top_IBUF(10),
      I2 => cycle_counter_reg(1),
      I3 => SW_top_IBUF(9),
      I4 => cycle_counter_reg(0),
      I5 => SW_top_IBUF(8),
      O => \input_circle_status[18]_i_11_n_1\
    );
\input_circle_status[18]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => SW_top_IBUF(15),
      I1 => SW_top_IBUF(14),
      I2 => cycle_counter_reg(1),
      I3 => SW_top_IBUF(13),
      I4 => cycle_counter_reg(0),
      I5 => SW_top_IBUF(12),
      O => \input_circle_status[18]_i_12_n_1\
    );
\input_circle_status[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => BTN_top_IBUF(4),
      I1 => cycle_counter_reg(2),
      I2 => \input_circle_status[18]_i_5_n_1\,
      I3 => cycle_counter_reg(4),
      I4 => \input_circle_status_reg[18]_i_6_n_1\,
      O => input_circle_status1
    );
\input_circle_status[18]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \input_circle_status_reg[20]_i_3_n_3\,
      I1 => \input_circle_status_reg[20]_i_2_n_2\,
      O => \input_circle_status[18]_i_3_n_1\
    );
\input_circle_status[18]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00070000"
    )
        port map (
      I0 => cycle_counter_reg(4),
      I1 => cycle_counter_reg(3),
      I2 => cycle_counter_reg(2),
      I3 => cycle_counter_reg(0),
      I4 => cycle_counter_reg(1),
      O => \input_circle_status[18]_i_4_n_1\
    );
\input_circle_status[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => BTN_top_IBUF(3),
      I1 => BTN_top_IBUF(2),
      I2 => cycle_counter_reg(1),
      I3 => BTN_top_IBUF(1),
      I4 => cycle_counter_reg(0),
      I5 => BTN_top_IBUF(0),
      O => \input_circle_status[18]_i_5_n_1\
    );
\input_circle_status[18]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => SW_top_IBUF(3),
      I1 => SW_top_IBUF(2),
      I2 => cycle_counter_reg(1),
      I3 => SW_top_IBUF(1),
      I4 => cycle_counter_reg(0),
      I5 => SW_top_IBUF(0),
      O => \input_circle_status[18]_i_9_n_1\
    );
\input_circle_status[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => input_circle_status1,
      I1 => \input_circle_status[17]_i_2_n_1\,
      I2 => \input_circle_status[7]_i_2_n_1\,
      I3 => \^input_circle_status_reg[1]_0\,
      O => \input_circle_status[1]_i_1_n_1\
    );
\input_circle_status[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => BTN_top_IBUF(4),
      I1 => \cycle_counter[4]_i_1_n_1\,
      I2 => \input_circle_status_reg[20]_i_2_n_2\,
      I3 => \input_circle_status_reg[20]_i_3_n_3\,
      I4 => \^userbutton_msblsb\(0),
      O => \input_circle_status[20]_i_1_n_1\
    );
\input_circle_status[20]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => debounce_cntr_reg(14),
      I1 => debounce_cntr_reg(15),
      O => \input_circle_status[20]_i_10_n_1\
    );
\input_circle_status[20]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => debounce_cntr_reg(18),
      I1 => debounce_cntr_reg(19),
      O => \input_circle_status[20]_i_12_n_1\
    );
\input_circle_status[20]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => debounce_cntr_reg(16),
      I1 => debounce_cntr_reg(17),
      O => \input_circle_status[20]_i_13_n_1\
    );
\input_circle_status[20]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_cntr_reg(9),
      O => \input_circle_status[20]_i_14_n_1\
    );
\input_circle_status[20]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_cntr_reg(6),
      I1 => debounce_cntr_reg(7),
      O => \input_circle_status[20]_i_15_n_1\
    );
\input_circle_status[20]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_cntr_reg(13),
      I1 => debounce_cntr_reg(12),
      O => \input_circle_status[20]_i_16_n_1\
    );
\input_circle_status[20]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_cntr_reg(11),
      I1 => debounce_cntr_reg(10),
      O => \input_circle_status[20]_i_17_n_1\
    );
\input_circle_status[20]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => debounce_cntr_reg(9),
      I1 => debounce_cntr_reg(8),
      O => \input_circle_status[20]_i_18_n_1\
    );
\input_circle_status[20]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => debounce_cntr_reg(6),
      I1 => debounce_cntr_reg(7),
      O => \input_circle_status[20]_i_19_n_1\
    );
\input_circle_status[20]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => debounce_cntr_reg(12),
      I1 => debounce_cntr_reg(13),
      O => \input_circle_status[20]_i_21_n_1\
    );
\input_circle_status[20]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => debounce_cntr_reg(10),
      I1 => debounce_cntr_reg(11),
      O => \input_circle_status[20]_i_22_n_1\
    );
\input_circle_status[20]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => debounce_cntr_reg(9),
      I1 => debounce_cntr_reg(8),
      O => \input_circle_status[20]_i_23_n_1\
    );
\input_circle_status[20]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => debounce_cntr_reg(14),
      I1 => debounce_cntr_reg(15),
      O => \input_circle_status[20]_i_24_n_1\
    );
\input_circle_status[20]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_cntr_reg(13),
      I1 => debounce_cntr_reg(12),
      O => \input_circle_status[20]_i_25_n_1\
    );
\input_circle_status[20]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_cntr_reg(11),
      I1 => debounce_cntr_reg(10),
      O => \input_circle_status[20]_i_26_n_1\
    );
\input_circle_status[20]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => debounce_cntr_reg(9),
      I1 => debounce_cntr_reg(8),
      O => \input_circle_status[20]_i_27_n_1\
    );
\input_circle_status[20]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => debounce_cntr_reg(4),
      I1 => debounce_cntr_reg(5),
      O => \input_circle_status[20]_i_28_n_1\
    );
\input_circle_status[20]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => debounce_cntr_reg(2),
      I1 => debounce_cntr_reg(3),
      O => \input_circle_status[20]_i_29_n_1\
    );
\input_circle_status[20]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => debounce_cntr_reg(0),
      I1 => debounce_cntr_reg(1),
      O => \input_circle_status[20]_i_30_n_1\
    );
\input_circle_status[20]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => debounce_cntr_reg(6),
      I1 => debounce_cntr_reg(7),
      O => \input_circle_status[20]_i_31_n_1\
    );
\input_circle_status[20]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_cntr_reg(5),
      I1 => debounce_cntr_reg(4),
      O => \input_circle_status[20]_i_32_n_1\
    );
\input_circle_status[20]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_cntr_reg(3),
      I1 => debounce_cntr_reg(2),
      O => \input_circle_status[20]_i_33_n_1\
    );
\input_circle_status[20]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_cntr_reg(1),
      I1 => debounce_cntr_reg(0),
      O => \input_circle_status[20]_i_34_n_1\
    );
\input_circle_status[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => debounce_cntr_reg(19),
      I1 => debounce_cntr_reg(18),
      O => \input_circle_status[20]_i_5_n_1\
    );
\input_circle_status[20]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => debounce_cntr_reg(17),
      I1 => debounce_cntr_reg(16),
      O => \input_circle_status[20]_i_6_n_1\
    );
\input_circle_status[20]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_cntr_reg(14),
      I1 => debounce_cntr_reg(15),
      O => \input_circle_status[20]_i_7_n_1\
    );
\input_circle_status[20]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => debounce_cntr_reg(18),
      I1 => debounce_cntr_reg(19),
      O => \input_circle_status[20]_i_8_n_1\
    );
\input_circle_status[20]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => debounce_cntr_reg(16),
      I1 => debounce_cntr_reg(17),
      O => \input_circle_status[20]_i_9_n_1\
    );
\input_circle_status[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => input_circle_status1,
      I1 => \input_circle_status[18]_i_4_n_1\,
      I2 => \input_circle_status[7]_i_2_n_1\,
      I3 => \^input_circle_status_reg[2]_0\,
      O => \input_circle_status[2]_i_1_n_1\
    );
\input_circle_status[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => input_circle_status1,
      I1 => \cycle_counter[4]_i_1_n_1\,
      I2 => \input_circle_status[11]_i_2_n_1\,
      I3 => cycle_counter_reg(2),
      I4 => \input_circle_status[7]_i_2_n_1\,
      I5 => \^input_circle_status_reg[3]_0\,
      O => \input_circle_status[3]_i_1_n_1\
    );
\input_circle_status[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => input_circle_status1,
      I1 => \input_circle_status[12]_i_2_n_1\,
      I2 => \input_circle_status[7]_i_2_n_1\,
      I3 => \input_circle_status_reg_n_1_[4]\,
      O => \input_circle_status[4]_i_1_n_1\
    );
\input_circle_status[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => input_circle_status1,
      I1 => \input_circle_status[13]_i_2_n_1\,
      I2 => \input_circle_status[7]_i_2_n_1\,
      I3 => \input_circle_status_reg_n_1_[5]\,
      O => \input_circle_status[5]_i_1_n_1\
    );
\input_circle_status[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => input_circle_status1,
      I1 => \input_circle_status[14]_i_2_n_1\,
      I2 => \input_circle_status[7]_i_2_n_1\,
      I3 => \input_circle_status_reg_n_1_[6]\,
      O => \input_circle_status[6]_i_1_n_1\
    );
\input_circle_status[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => input_circle_status1,
      I1 => cycle_counter_reg(2),
      I2 => cycle_counter_reg(1),
      I3 => cycle_counter_reg(0),
      I4 => \input_circle_status[7]_i_2_n_1\,
      I5 => \^input_circle_status_reg[7]_0\,
      O => \input_circle_status[7]_i_1_n_1\
    );
\input_circle_status[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => cycle_counter_reg(4),
      I1 => cycle_counter_reg(3),
      I2 => \input_circle_status_reg[20]_i_2_n_2\,
      I3 => \input_circle_status_reg[20]_i_3_n_3\,
      O => \input_circle_status[7]_i_2_n_1\
    );
\input_circle_status[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => input_circle_status1,
      I1 => \input_circle_status[8]_i_2_n_1\,
      I2 => \input_circle_status[14]_i_3_n_1\,
      I3 => usersw_msb(0),
      O => \input_circle_status[8]_i_1_n_1\
    );
\input_circle_status[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000111"
    )
        port map (
      I0 => cycle_counter_reg(1),
      I1 => cycle_counter_reg(0),
      I2 => cycle_counter_reg(4),
      I3 => cycle_counter_reg(3),
      I4 => cycle_counter_reg(2),
      O => \input_circle_status[8]_i_2_n_1\
    );
\input_circle_status[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => input_circle_status1,
      I1 => \input_circle_status[17]_i_2_n_1\,
      I2 => \input_circle_status[14]_i_3_n_1\,
      I3 => usersw_msb(1),
      O => \input_circle_status[9]_i_1_n_1\
    );
\input_circle_status_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \input_circle_status[0]_i_1_n_1\,
      Q => \^input_circle_status_reg[0]_0\,
      R => '0'
    );
\input_circle_status_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \input_circle_status[10]_i_1_n_1\,
      Q => usersw_msb(2),
      R => '0'
    );
\input_circle_status_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \input_circle_status[11]_i_1_n_1\,
      Q => usersw_msb(3),
      R => '0'
    );
\input_circle_status_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \input_circle_status[12]_i_1_n_1\,
      Q => usersw_msb(4),
      R => '0'
    );
\input_circle_status_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \input_circle_status[13]_i_1_n_1\,
      Q => usersw_msb(5),
      R => '0'
    );
\input_circle_status_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \input_circle_status[14]_i_1_n_1\,
      Q => usersw_msb(6),
      R => '0'
    );
\input_circle_status_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \input_circle_status[15]_i_1_n_1\,
      Q => usersw_msb(7),
      R => '0'
    );
\input_circle_status_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \input_circle_status[17]_i_1_n_1\,
      Q => \^userbutton_updown\(0),
      R => '0'
    );
\input_circle_status_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \input_circle_status[18]_i_1_n_1\,
      Q => \^userbutton_updown\(1),
      R => '0'
    );
\input_circle_status_reg[18]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \input_circle_status_reg[18]_i_7_n_1\,
      I1 => \input_circle_status_reg[18]_i_8_n_1\,
      O => \input_circle_status_reg[18]_i_6_n_1\,
      S => cycle_counter_reg(3)
    );
\input_circle_status_reg[18]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \input_circle_status[18]_i_9_n_1\,
      I1 => \input_circle_status[18]_i_10_n_1\,
      O => \input_circle_status_reg[18]_i_7_n_1\,
      S => cycle_counter_reg(2)
    );
\input_circle_status_reg[18]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \input_circle_status[18]_i_11_n_1\,
      I1 => \input_circle_status[18]_i_12_n_1\,
      O => \input_circle_status_reg[18]_i_8_n_1\,
      S => cycle_counter_reg(2)
    );
\input_circle_status_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \input_circle_status[1]_i_1_n_1\,
      Q => \^input_circle_status_reg[1]_0\,
      R => '0'
    );
\input_circle_status_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \input_circle_status[20]_i_1_n_1\,
      Q => \^userbutton_msblsb\(0),
      R => '0'
    );
\input_circle_status_reg[20]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \input_circle_status_reg[20]_i_20_n_1\,
      CO(3) => \input_circle_status_reg[20]_i_11_n_1\,
      CO(2 downto 0) => \NLW_input_circle_status_reg[20]_i_11_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => debounce_cntr_reg(15),
      DI(2) => \input_circle_status[20]_i_21_n_1\,
      DI(1) => \input_circle_status[20]_i_22_n_1\,
      DI(0) => \input_circle_status[20]_i_23_n_1\,
      O(3 downto 0) => \NLW_input_circle_status_reg[20]_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \input_circle_status[20]_i_24_n_1\,
      S(2) => \input_circle_status[20]_i_25_n_1\,
      S(1) => \input_circle_status[20]_i_26_n_1\,
      S(0) => \input_circle_status[20]_i_27_n_1\
    );
\input_circle_status_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \input_circle_status_reg[20]_i_4_n_1\,
      CO(3) => \NLW_input_circle_status_reg[20]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \input_circle_status_reg[20]_i_2_n_2\,
      CO(1 downto 0) => \NLW_input_circle_status_reg[20]_i_2_CO_UNCONNECTED\(1 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \input_circle_status[20]_i_5_n_1\,
      DI(1) => \input_circle_status[20]_i_6_n_1\,
      DI(0) => \input_circle_status[20]_i_7_n_1\,
      O(3 downto 0) => \NLW_input_circle_status_reg[20]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \input_circle_status[20]_i_8_n_1\,
      S(1) => \input_circle_status[20]_i_9_n_1\,
      S(0) => \input_circle_status[20]_i_10_n_1\
    );
\input_circle_status_reg[20]_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \input_circle_status_reg[20]_i_20_n_1\,
      CO(2 downto 0) => \NLW_input_circle_status_reg[20]_i_20_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => debounce_cntr_reg(7),
      DI(2) => \input_circle_status[20]_i_28_n_1\,
      DI(1) => \input_circle_status[20]_i_29_n_1\,
      DI(0) => \input_circle_status[20]_i_30_n_1\,
      O(3 downto 0) => \NLW_input_circle_status_reg[20]_i_20_O_UNCONNECTED\(3 downto 0),
      S(3) => \input_circle_status[20]_i_31_n_1\,
      S(2) => \input_circle_status[20]_i_32_n_1\,
      S(1) => \input_circle_status[20]_i_33_n_1\,
      S(0) => \input_circle_status[20]_i_34_n_1\
    );
\input_circle_status_reg[20]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \input_circle_status_reg[20]_i_11_n_1\,
      CO(3 downto 2) => \NLW_input_circle_status_reg[20]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \input_circle_status_reg[20]_i_3_n_3\,
      CO(0) => \NLW_input_circle_status_reg[20]_i_3_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_input_circle_status_reg[20]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \input_circle_status[20]_i_12_n_1\,
      S(0) => \input_circle_status[20]_i_13_n_1\
    );
\input_circle_status_reg[20]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \input_circle_status_reg[20]_i_4_n_1\,
      CO(2 downto 0) => \NLW_input_circle_status_reg[20]_i_4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \input_circle_status[20]_i_14_n_1\,
      DI(0) => \input_circle_status[20]_i_15_n_1\,
      O(3 downto 0) => \NLW_input_circle_status_reg[20]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \input_circle_status[20]_i_16_n_1\,
      S(2) => \input_circle_status[20]_i_17_n_1\,
      S(1) => \input_circle_status[20]_i_18_n_1\,
      S(0) => \input_circle_status[20]_i_19_n_1\
    );
\input_circle_status_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \input_circle_status[2]_i_1_n_1\,
      Q => \^input_circle_status_reg[2]_0\,
      R => '0'
    );
\input_circle_status_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \input_circle_status[3]_i_1_n_1\,
      Q => \^input_circle_status_reg[3]_0\,
      R => '0'
    );
\input_circle_status_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \input_circle_status[4]_i_1_n_1\,
      Q => \input_circle_status_reg_n_1_[4]\,
      R => '0'
    );
\input_circle_status_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \input_circle_status[5]_i_1_n_1\,
      Q => \input_circle_status_reg_n_1_[5]\,
      R => '0'
    );
\input_circle_status_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \input_circle_status[6]_i_1_n_1\,
      Q => \input_circle_status_reg_n_1_[6]\,
      R => '0'
    );
\input_circle_status_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \input_circle_status[7]_i_1_n_1\,
      Q => \^input_circle_status_reg[7]_0\,
      R => '0'
    );
\input_circle_status_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \input_circle_status[8]_i_1_n_1\,
      Q => usersw_msb(0),
      R => '0'
    );
\input_circle_status_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \input_circle_status[9]_i_1_n_1\,
      Q => usersw_msb(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dummy_module is
  port (
    upordown : out STD_LOGIC;
    upordown_reg_rep_0 : out STD_LOGIC;
    \upordown_reg_rep__0_0\ : out STD_LOGIC;
    upordown_reg_0 : out STD_LOGIC;
    upordown_reg_1 : out STD_LOGIC;
    upordown_reg_2 : out STD_LOGIC;
    \upordown_reg_rep__0_1\ : out STD_LOGIC;
    \upordown_reg_rep__0_2\ : out STD_LOGIC;
    \upordown_reg_rep__0_3\ : out STD_LOGIC;
    \upordown_reg_rep__0_4\ : out STD_LOGIC;
    upordown_reg_rep_1 : out STD_LOGIC;
    upordown_reg_rep_2 : out STD_LOGIC;
    upordown_reg_rep_3 : out STD_LOGIC;
    upordown_reg_rep_4 : out STD_LOGIC;
    upordown_reg_rep_5 : out STD_LOGIC;
    upordown_reg_rep_6 : out STD_LOGIC;
    upordown_reg_rep_7 : out STD_LOGIC;
    userbutton_msblsb : in STD_LOGIC_VECTOR ( 0 to 0 );
    alubrnch_out : in STD_LOGIC_VECTOR ( 19 downto 0 );
    S_f7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_f3 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end dummy_module;

architecture STRUCTURE of dummy_module is
  signal \^upordown\ : STD_LOGIC;
  signal upordown0 : STD_LOGIC;
  signal \^upordown_reg_rep_0\ : STD_LOGIC;
  signal \^upordown_reg_rep__0_0\ : STD_LOGIC;
  signal \upordown_rep__0_i_1_n_1\ : STD_LOGIC;
  signal upordown_rep_i_1_n_1 : STD_LOGIC;
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of upordown_reg : label is "upordown_reg";
  attribute ORIG_CELL_NAME of upordown_reg_rep : label is "upordown_reg";
  attribute ORIG_CELL_NAME of \upordown_reg_rep__0\ : label is "upordown_reg";
begin
  upordown <= \^upordown\;
  upordown_reg_rep_0 <= \^upordown_reg_rep_0\;
  \upordown_reg_rep__0_0\ <= \^upordown_reg_rep__0_0\;
\LED_top_OBUF[0]_inst_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => alubrnch_out(10),
      I1 => \^upordown_reg_rep_0\,
      I2 => alubrnch_out(0),
      O => upordown_reg_rep_7
    );
\LED_top_OBUF[0]_inst_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^upordown_reg_rep_0\,
      I1 => Q(0),
      O => upordown_reg_rep_6
    );
\LED_top_OBUF[0]_inst_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^upordown_reg_rep_0\,
      I1 => S_f3(0),
      O => upordown_reg_rep_5
    );
\LED_top_OBUF[10]_inst_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => alubrnch_out(15),
      I1 => \^upordown_reg_rep__0_0\,
      I2 => alubrnch_out(5),
      O => \upordown_reg_rep__0_2\
    );
\LED_top_OBUF[11]_inst_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => alubrnch_out(16),
      I1 => \^upordown_reg_rep__0_0\,
      I2 => alubrnch_out(6),
      O => \upordown_reg_rep__0_1\
    );
\LED_top_OBUF[12]_inst_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => alubrnch_out(17),
      I1 => \^upordown\,
      I2 => alubrnch_out(7),
      O => upordown_reg_2
    );
\LED_top_OBUF[13]_inst_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => alubrnch_out(18),
      I1 => \^upordown\,
      I2 => alubrnch_out(8),
      O => upordown_reg_1
    );
\LED_top_OBUF[14]_inst_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => alubrnch_out(19),
      I1 => \^upordown\,
      I2 => alubrnch_out(9),
      O => upordown_reg_0
    );
\LED_top_OBUF[4]_inst_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => alubrnch_out(11),
      I1 => \^upordown_reg_rep_0\,
      I2 => alubrnch_out(1),
      O => upordown_reg_rep_4
    );
\LED_top_OBUF[4]_inst_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^upordown_reg_rep_0\,
      I1 => S_f7(0),
      O => upordown_reg_rep_2
    );
\LED_top_OBUF[4]_inst_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^upordown_reg_rep_0\,
      I1 => Q(1),
      O => upordown_reg_rep_3
    );
\LED_top_OBUF[7]_inst_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => alubrnch_out(12),
      I1 => \^upordown_reg_rep_0\,
      I2 => alubrnch_out(2),
      O => upordown_reg_rep_1
    );
\LED_top_OBUF[8]_inst_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => alubrnch_out(13),
      I1 => \^upordown_reg_rep__0_0\,
      I2 => alubrnch_out(3),
      O => \upordown_reg_rep__0_4\
    );
\LED_top_OBUF[9]_inst_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => alubrnch_out(14),
      I1 => \^upordown_reg_rep__0_0\,
      I2 => alubrnch_out(4),
      O => \upordown_reg_rep__0_3\
    );
upordown_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^upordown\,
      O => upordown0
    );
upordown_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => userbutton_msblsb(0),
      CE => '1',
      D => upordown0,
      Q => \^upordown\,
      R => '0'
    );
upordown_reg_rep: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => userbutton_msblsb(0),
      CE => '1',
      D => upordown_rep_i_1_n_1,
      Q => \^upordown_reg_rep_0\,
      R => '0'
    );
\upordown_reg_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => userbutton_msblsb(0),
      CE => '1',
      D => \upordown_rep__0_i_1_n_1\,
      Q => \^upordown_reg_rep__0_0\,
      R => '0'
    );
\upordown_rep__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^upordown\,
      O => \upordown_rep__0_i_1_n_1\
    );
upordown_rep_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^upordown\,
      O => upordown_rep_i_1_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity segment_module is
  port (
    sevenouter4index_reg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SEGMENT4_top_OBUF : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK_top_IBUF_BUFG : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end segment_module;

architecture STRUCTURE of segment_module is
  signal \SEGMENT4_top[2]_i_1_n_1\ : STD_LOGIC;
  signal \SEGMENT4_top[2]_i_3_n_1\ : STD_LOGIC;
  signal \SEGMENT4_top[3]_i_1_n_1\ : STD_LOGIC;
  signal \minicounter[0]_i_10_n_1\ : STD_LOGIC;
  signal \minicounter[0]_i_11_n_1\ : STD_LOGIC;
  signal \minicounter[0]_i_12_n_1\ : STD_LOGIC;
  signal \minicounter[0]_i_13_n_1\ : STD_LOGIC;
  signal \minicounter[0]_i_14_n_1\ : STD_LOGIC;
  signal \minicounter[0]_i_15_n_1\ : STD_LOGIC;
  signal \minicounter[0]_i_16_n_1\ : STD_LOGIC;
  signal \minicounter[0]_i_17_n_1\ : STD_LOGIC;
  signal \minicounter[0]_i_18_n_1\ : STD_LOGIC;
  signal \minicounter[0]_i_19_n_1\ : STD_LOGIC;
  signal \minicounter[0]_i_20_n_1\ : STD_LOGIC;
  signal \minicounter[0]_i_21_n_1\ : STD_LOGIC;
  signal \minicounter[0]_i_4_n_1\ : STD_LOGIC;
  signal \minicounter[0]_i_5_n_1\ : STD_LOGIC;
  signal \minicounter[0]_i_7_n_1\ : STD_LOGIC;
  signal \minicounter[0]_i_8_n_1\ : STD_LOGIC;
  signal \minicounter[0]_i_9_n_1\ : STD_LOGIC;
  signal minicounter_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \minicounter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \minicounter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \minicounter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \minicounter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \minicounter_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \minicounter_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \minicounter_reg[0]_i_6_n_1\ : STD_LOGIC;
  signal \minicounter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \minicounter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \minicounter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \minicounter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \minicounter_reg[12]_i_1_n_8\ : STD_LOGIC;
  signal \minicounter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \minicounter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \minicounter_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \minicounter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \minicounter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \minicounter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \minicounter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \minicounter_reg[4]_i_1_n_8\ : STD_LOGIC;
  signal \minicounter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \minicounter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \minicounter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \minicounter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \minicounter_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal \sevenouter4index[0]_i_1_n_1\ : STD_LOGIC;
  signal \sevenouter4index[1]_i_1_n_1\ : STD_LOGIC;
  signal \^sevenouter4index_reg\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_minicounter_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minicounter_reg[0]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minicounter_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_minicounter_reg[0]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_minicounter_reg[0]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minicounter_reg[0]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_minicounter_reg[0]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minicounter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_minicounter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minicounter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_minicounter_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_minicounter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \minicounter_reg[0]_i_1\ : label is 11;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \minicounter_reg[0]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \minicounter_reg[0]_i_2\ : label is 11;
  attribute OPT_MODIFIED of \minicounter_reg[0]_i_2\ : label is "SWEEP";
  attribute COMPARATOR_THRESHOLD of \minicounter_reg[0]_i_3\ : label is 11;
  attribute OPT_MODIFIED of \minicounter_reg[0]_i_3\ : label is "SWEEP";
  attribute COMPARATOR_THRESHOLD of \minicounter_reg[0]_i_6\ : label is 11;
  attribute OPT_MODIFIED of \minicounter_reg[0]_i_6\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \minicounter_reg[12]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \minicounter_reg[12]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \minicounter_reg[16]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \minicounter_reg[16]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \minicounter_reg[4]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \minicounter_reg[4]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \minicounter_reg[8]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \minicounter_reg[8]_i_1\ : label is "SWEEP";
  attribute \PinAttr:I1:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I1:HOLD_DETOUR\ of \sevenouter4index[0]_i_1\ : label is 195;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sevenouter4index[0]_i_1\ : label is "soft_lutpair148";
  attribute \PinAttr:I0:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I0:HOLD_DETOUR\ of \sevenouter4index[1]_i_1\ : label is 195;
  attribute SOFT_HLUTNM of \sevenouter4index[1]_i_1\ : label is "soft_lutpair148";
begin
  sevenouter4index_reg(1 downto 0) <= \^sevenouter4index_reg\(1 downto 0);
\SEGMENT4_top[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sevenouter4index_reg\(0),
      I1 => sel,
      O => \SEGMENT4_top[2]_i_1_n_1\
    );
\SEGMENT4_top[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel,
      O => p_0_in
    );
\SEGMENT4_top[2]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sevenouter4index_reg\(1),
      O => \SEGMENT4_top[2]_i_3_n_1\
    );
\SEGMENT4_top[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sevenouter4index_reg\(0),
      I1 => sel,
      O => \SEGMENT4_top[3]_i_1_n_1\
    );
\SEGMENT4_top_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => p_0_in,
      D => \^sevenouter4index_reg\(1),
      Q => SEGMENT4_top_OBUF(0),
      S => \SEGMENT4_top[2]_i_1_n_1\
    );
\SEGMENT4_top_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => p_0_in,
      D => \^sevenouter4index_reg\(1),
      Q => SEGMENT4_top_OBUF(1),
      S => \SEGMENT4_top[3]_i_1_n_1\
    );
\SEGMENT4_top_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => p_0_in,
      D => \SEGMENT4_top[2]_i_3_n_1\,
      Q => SEGMENT4_top_OBUF(2),
      S => \SEGMENT4_top[2]_i_1_n_1\
    );
\SEGMENT4_top_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => p_0_in,
      D => \SEGMENT4_top[2]_i_3_n_1\,
      Q => SEGMENT4_top_OBUF(3),
      S => \SEGMENT4_top[3]_i_1_n_1\
    );
\SEGMENT7_top_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => p_0_in,
      D => '1',
      Q => Q(0),
      R => '0'
    );
\SEGMENT7_top_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => p_0_in,
      D => D(0),
      Q => Q(1),
      R => '0'
    );
\SEGMENT7_top_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => p_0_in,
      D => D(1),
      Q => Q(2),
      R => '0'
    );
\SEGMENT7_top_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => p_0_in,
      D => D(2),
      Q => Q(3),
      R => '0'
    );
\SEGMENT7_top_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => p_0_in,
      D => D(3),
      Q => Q(4),
      R => '0'
    );
\SEGMENT7_top_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => p_0_in,
      D => D(4),
      Q => Q(5),
      R => '0'
    );
\SEGMENT7_top_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => p_0_in,
      D => D(5),
      Q => Q(6),
      R => '0'
    );
\SEGMENT7_top_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => p_0_in,
      D => D(6),
      Q => Q(7),
      R => '0'
    );
\minicounter[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => minicounter_reg(15),
      I1 => minicounter_reg(14),
      O => \minicounter[0]_i_10_n_1\
    );
\minicounter[0]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => minicounter_reg(13),
      I1 => minicounter_reg(12),
      O => \minicounter[0]_i_11_n_1\
    );
\minicounter[0]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => minicounter_reg(11),
      I1 => minicounter_reg(10),
      O => \minicounter[0]_i_12_n_1\
    );
\minicounter[0]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => minicounter_reg(8),
      I1 => minicounter_reg(9),
      O => \minicounter[0]_i_13_n_1\
    );
\minicounter[0]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => minicounter_reg(7),
      I1 => minicounter_reg(6),
      O => \minicounter[0]_i_14_n_1\
    );
\minicounter[0]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => minicounter_reg(5),
      I1 => minicounter_reg(4),
      O => \minicounter[0]_i_15_n_1\
    );
\minicounter[0]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => minicounter_reg(3),
      I1 => minicounter_reg(2),
      O => \minicounter[0]_i_16_n_1\
    );
\minicounter[0]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => minicounter_reg(1),
      I1 => minicounter_reg(0),
      O => \minicounter[0]_i_17_n_1\
    );
\minicounter[0]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => minicounter_reg(6),
      I1 => minicounter_reg(7),
      O => \minicounter[0]_i_18_n_1\
    );
\minicounter[0]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => minicounter_reg(5),
      I1 => minicounter_reg(4),
      O => \minicounter[0]_i_19_n_1\
    );
\minicounter[0]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => minicounter_reg(2),
      I1 => minicounter_reg(3),
      O => \minicounter[0]_i_20_n_1\
    );
\minicounter[0]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => minicounter_reg(0),
      I1 => minicounter_reg(1),
      O => \minicounter[0]_i_21_n_1\
    );
\minicounter[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => minicounter_reg(16),
      I1 => minicounter_reg(17),
      O => \minicounter[0]_i_4_n_1\
    );
\minicounter[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => minicounter_reg(0),
      O => \minicounter[0]_i_5_n_1\
    );
\minicounter[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => minicounter_reg(14),
      I1 => minicounter_reg(15),
      O => \minicounter[0]_i_7_n_1\
    );
\minicounter[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => minicounter_reg(12),
      I1 => minicounter_reg(13),
      O => \minicounter[0]_i_8_n_1\
    );
\minicounter[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => minicounter_reg(10),
      I1 => minicounter_reg(11),
      O => \minicounter[0]_i_9_n_1\
    );
\minicounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \minicounter_reg[0]_i_2_n_8\,
      Q => minicounter_reg(0),
      R => sel
    );
\minicounter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minicounter_reg[0]_i_3_n_1\,
      CO(3 downto 2) => \NLW_minicounter_reg[0]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => sel,
      CO(0) => \NLW_minicounter_reg[0]_i_1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_minicounter_reg[0]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => minicounter_reg(18),
      S(0) => \minicounter[0]_i_4_n_1\
    );
\minicounter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minicounter_reg[0]_i_2_n_1\,
      CO(2 downto 0) => \NLW_minicounter_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \minicounter_reg[0]_i_2_n_5\,
      O(2) => \minicounter_reg[0]_i_2_n_6\,
      O(1) => \minicounter_reg[0]_i_2_n_7\,
      O(0) => \minicounter_reg[0]_i_2_n_8\,
      S(3 downto 1) => minicounter_reg(3 downto 1),
      S(0) => \minicounter[0]_i_5_n_1\
    );
\minicounter_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \minicounter_reg[0]_i_6_n_1\,
      CO(3) => \minicounter_reg[0]_i_3_n_1\,
      CO(2 downto 0) => \NLW_minicounter_reg[0]_i_3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \minicounter[0]_i_7_n_1\,
      DI(2) => \minicounter[0]_i_8_n_1\,
      DI(1) => \minicounter[0]_i_9_n_1\,
      DI(0) => minicounter_reg(9),
      O(3 downto 0) => \NLW_minicounter_reg[0]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \minicounter[0]_i_10_n_1\,
      S(2) => \minicounter[0]_i_11_n_1\,
      S(1) => \minicounter[0]_i_12_n_1\,
      S(0) => \minicounter[0]_i_13_n_1\
    );
\minicounter_reg[0]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minicounter_reg[0]_i_6_n_1\,
      CO(2 downto 0) => \NLW_minicounter_reg[0]_i_6_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => \minicounter[0]_i_14_n_1\,
      DI(2) => \minicounter[0]_i_15_n_1\,
      DI(1) => \minicounter[0]_i_16_n_1\,
      DI(0) => \minicounter[0]_i_17_n_1\,
      O(3 downto 0) => \NLW_minicounter_reg[0]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \minicounter[0]_i_18_n_1\,
      S(2) => \minicounter[0]_i_19_n_1\,
      S(1) => \minicounter[0]_i_20_n_1\,
      S(0) => \minicounter[0]_i_21_n_1\
    );
\minicounter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \minicounter_reg[8]_i_1_n_6\,
      Q => minicounter_reg(10),
      R => sel
    );
\minicounter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \minicounter_reg[8]_i_1_n_5\,
      Q => minicounter_reg(11),
      R => sel
    );
\minicounter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \minicounter_reg[12]_i_1_n_8\,
      Q => minicounter_reg(12),
      R => sel
    );
\minicounter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minicounter_reg[8]_i_1_n_1\,
      CO(3) => \minicounter_reg[12]_i_1_n_1\,
      CO(2 downto 0) => \NLW_minicounter_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minicounter_reg[12]_i_1_n_5\,
      O(2) => \minicounter_reg[12]_i_1_n_6\,
      O(1) => \minicounter_reg[12]_i_1_n_7\,
      O(0) => \minicounter_reg[12]_i_1_n_8\,
      S(3 downto 0) => minicounter_reg(15 downto 12)
    );
\minicounter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \minicounter_reg[12]_i_1_n_7\,
      Q => minicounter_reg(13),
      R => sel
    );
\minicounter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \minicounter_reg[12]_i_1_n_6\,
      Q => minicounter_reg(14),
      R => sel
    );
\minicounter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \minicounter_reg[12]_i_1_n_5\,
      Q => minicounter_reg(15),
      R => sel
    );
\minicounter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \minicounter_reg[16]_i_1_n_8\,
      Q => minicounter_reg(16),
      R => sel
    );
\minicounter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minicounter_reg[12]_i_1_n_1\,
      CO(3 downto 0) => \NLW_minicounter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_minicounter_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2) => \minicounter_reg[16]_i_1_n_6\,
      O(1) => \minicounter_reg[16]_i_1_n_7\,
      O(0) => \minicounter_reg[16]_i_1_n_8\,
      S(3) => '0',
      S(2 downto 0) => minicounter_reg(18 downto 16)
    );
\minicounter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \minicounter_reg[16]_i_1_n_7\,
      Q => minicounter_reg(17),
      R => sel
    );
\minicounter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \minicounter_reg[16]_i_1_n_6\,
      Q => minicounter_reg(18),
      R => sel
    );
\minicounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \minicounter_reg[0]_i_2_n_7\,
      Q => minicounter_reg(1),
      R => sel
    );
\minicounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \minicounter_reg[0]_i_2_n_6\,
      Q => minicounter_reg(2),
      R => sel
    );
\minicounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \minicounter_reg[0]_i_2_n_5\,
      Q => minicounter_reg(3),
      R => sel
    );
\minicounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \minicounter_reg[4]_i_1_n_8\,
      Q => minicounter_reg(4),
      R => sel
    );
\minicounter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minicounter_reg[0]_i_2_n_1\,
      CO(3) => \minicounter_reg[4]_i_1_n_1\,
      CO(2 downto 0) => \NLW_minicounter_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minicounter_reg[4]_i_1_n_5\,
      O(2) => \minicounter_reg[4]_i_1_n_6\,
      O(1) => \minicounter_reg[4]_i_1_n_7\,
      O(0) => \minicounter_reg[4]_i_1_n_8\,
      S(3 downto 0) => minicounter_reg(7 downto 4)
    );
\minicounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \minicounter_reg[4]_i_1_n_7\,
      Q => minicounter_reg(5),
      R => sel
    );
\minicounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \minicounter_reg[4]_i_1_n_6\,
      Q => minicounter_reg(6),
      R => sel
    );
\minicounter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \minicounter_reg[4]_i_1_n_5\,
      Q => minicounter_reg(7),
      R => sel
    );
\minicounter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \minicounter_reg[8]_i_1_n_8\,
      Q => minicounter_reg(8),
      R => sel
    );
\minicounter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minicounter_reg[4]_i_1_n_1\,
      CO(3) => \minicounter_reg[8]_i_1_n_1\,
      CO(2 downto 0) => \NLW_minicounter_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minicounter_reg[8]_i_1_n_5\,
      O(2) => \minicounter_reg[8]_i_1_n_6\,
      O(1) => \minicounter_reg[8]_i_1_n_7\,
      O(0) => \minicounter_reg[8]_i_1_n_8\,
      S(3 downto 0) => minicounter_reg(11 downto 8)
    );
\minicounter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \minicounter_reg[8]_i_1_n_7\,
      Q => minicounter_reg(9),
      R => sel
    );
\sevenouter4index[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sel,
      I1 => \^sevenouter4index_reg\(0),
      O => \sevenouter4index[0]_i_1_n_1\
    );
\sevenouter4index[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^sevenouter4index_reg\(0),
      I1 => sel,
      I2 => \^sevenouter4index_reg\(1),
      O => \sevenouter4index[1]_i_1_n_1\
    );
\sevenouter4index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \sevenouter4index[0]_i_1_n_1\,
      Q => \^sevenouter4index_reg\(0),
      R => '0'
    );
\sevenouter4index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_top_IBUF_BUFG,
      CE => '1',
      D => \sevenouter4index[1]_i_1_n_1\,
      Q => \^sevenouter4index_reg\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity t02_Word_ALU is
  port (
    S_alu_flag : out STD_LOGIC_VECTOR ( 0 to 0 );
    upordown_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    upordown_reg_0 : out STD_LOGIC;
    upordown_reg_1 : out STD_LOGIC;
    upordown_reg_2 : out STD_LOGIC;
    upordown_reg_3 : out STD_LOGIC;
    \upordown_reg_rep__0\ : out STD_LOGIC;
    \upordown_reg_rep__0_0\ : out STD_LOGIC;
    \upordown_reg_rep__0_1\ : out STD_LOGIC;
    \upordown_reg_rep__0_2\ : out STD_LOGIC;
    upordown_reg_rep : out STD_LOGIC;
    upordown_reg_rep_0 : out STD_LOGIC;
    upordown_reg_rep_1 : out STD_LOGIC;
    upordown_reg_rep_2 : out STD_LOGIC;
    upordown_reg_rep_3 : out STD_LOGIC;
    upordown_reg_rep_4 : out STD_LOGIC;
    upordown_reg_rep_5 : out STD_LOGIC;
    \input_circle_status_reg[1]\ : out STD_LOGIC;
    upordown_reg_rep_6 : out STD_LOGIC;
    upordown_reg_rep_7 : out STD_LOGIC;
    upordown_reg_rep_8 : out STD_LOGIC;
    upordown_reg_rep_9 : out STD_LOGIC;
    upordown_reg_rep_10 : out STD_LOGIC;
    upordown_reg_rep_11 : out STD_LOGIC;
    upordown_reg_rep_12 : out STD_LOGIC;
    upordown_reg_rep_13 : out STD_LOGIC;
    \upordown_reg_rep__0_3\ : out STD_LOGIC;
    \upordown_reg_rep__0_4\ : out STD_LOGIC;
    \upordown_reg_rep__0_5\ : out STD_LOGIC;
    \upordown_reg_rep__0_6\ : out STD_LOGIC;
    \upordown_reg_rep__0_7\ : out STD_LOGIC;
    \upordown_reg_rep__0_8\ : out STD_LOGIC;
    \upordown_reg_rep__0_9\ : out STD_LOGIC;
    \upordown_reg_rep__0_10\ : out STD_LOGIC;
    upordown_reg_4 : out STD_LOGIC;
    upordown_reg_5 : out STD_LOGIC;
    upordown_reg_6 : out STD_LOGIC;
    upordown_reg_7 : out STD_LOGIC;
    upordown_reg_8 : out STD_LOGIC;
    upordown_reg_rep_14 : out STD_LOGIC;
    upordown_reg_rep_15 : out STD_LOGIC;
    \current_pc[31]_i_6\ : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    upordown : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_5\ : in STD_LOGIC;
    \LED_top_OBUF[10]_inst_i_6\ : in STD_LOGIC;
    \LED_top_OBUF[3]_inst_i_36\ : in STD_LOGIC;
    \LED_top_OBUF[0]_inst_i_11\ : in STD_LOGIC;
    \LED_top_OBUF[0]_inst_i_11_0\ : in STD_LOGIC;
    n_0_1058_BUFG_inst_n_1 : in STD_LOGIC;
    \LED_top_OBUF[11]_inst_i_19\ : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_18\ : in STD_LOGIC;
    \LED_top_OBUF[3]_inst_i_7\ : in STD_LOGIC;
    \LED_top_OBUF[3]_inst_i_7_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end t02_Word_ALU;

architecture STRUCTURE of t02_Word_ALU is
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_alu_flag\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[0]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[10]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[11]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[12]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[13]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[14]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[15]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[16]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[17]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[18]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[19]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[1]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[20]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[21]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[22]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[23]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[24]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[25]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[26]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[27]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[28]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[29]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[2]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[30]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[31]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[3]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[4]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[5]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[6]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[7]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[8]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_data_out_reg[9]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \alu_flag_reg[0]\ : label is "LDC";
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  S_alu_flag(0) <= \^s_alu_flag\(0);
\LED_top_OBUF[0]_inst_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F005F3F5F3F5F3F"
    )
        port map (
      I0 => \^q\(16),
      I1 => \^q\(0),
      I2 => \LED_top_OBUF[0]_inst_i_11\,
      I3 => \LED_top_OBUF[3]_inst_i_36\,
      I4 => \^s_alu_flag\(0),
      I5 => \LED_top_OBUF[0]_inst_i_11_0\,
      O => \input_circle_status_reg[1]\
    );
\LED_top_OBUF[0]_inst_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \^q\(16),
      I1 => \LED_top_OBUF[3]_inst_i_36\,
      I2 => \^q\(0),
      I3 => n_0_1058_BUFG_inst_n_1,
      O => upordown_reg_rep_6
    );
\LED_top_OBUF[10]_inst_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(26),
      I1 => \LED_top_OBUF[10]_inst_i_6\,
      I2 => \^q\(10),
      O => \upordown_reg_rep__0_0\
    );
\LED_top_OBUF[10]_inst_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \^q\(26),
      I1 => \LED_top_OBUF[10]_inst_i_6\,
      I2 => \^q\(10),
      I3 => n_0_1058_BUFG_inst_n_1,
      O => \upordown_reg_rep__0_8\
    );
\LED_top_OBUF[10]_inst_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"777FFF7F"
    )
        port map (
      I0 => \LED_top_OBUF[11]_inst_i_19\,
      I1 => n_0_1058_BUFG_inst_n_1,
      I2 => \^q\(10),
      I3 => \LED_top_OBUF[10]_inst_i_6\,
      I4 => \^q\(26),
      O => \upordown_reg_rep__0_7\
    );
\LED_top_OBUF[11]_inst_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(27),
      I1 => \LED_top_OBUF[10]_inst_i_6\,
      I2 => \^q\(11),
      O => \upordown_reg_rep__0\
    );
\LED_top_OBUF[11]_inst_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \^q\(27),
      I1 => \LED_top_OBUF[10]_inst_i_6\,
      I2 => \^q\(11),
      I3 => n_0_1058_BUFG_inst_n_1,
      O => \upordown_reg_rep__0_10\
    );
\LED_top_OBUF[11]_inst_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"777FFF7F"
    )
        port map (
      I0 => \LED_top_OBUF[11]_inst_i_19\,
      I1 => n_0_1058_BUFG_inst_n_1,
      I2 => \^q\(11),
      I3 => \LED_top_OBUF[10]_inst_i_6\,
      I4 => \^q\(27),
      O => \upordown_reg_rep__0_9\
    );
\LED_top_OBUF[12]_inst_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \LED_top_OBUF[12]_inst_i_5\,
      I1 => \^q\(12),
      I2 => upordown,
      I3 => \^q\(28),
      O => upordown_reg_0
    );
\LED_top_OBUF[12]_inst_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \^q\(28),
      I1 => upordown,
      I2 => \^q\(12),
      I3 => n_0_1058_BUFG_inst_n_1,
      O => upordown_reg_4
    );
\LED_top_OBUF[12]_inst_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(28),
      I1 => upordown,
      I2 => \^q\(12),
      O => upordown_reg_3
    );
\LED_top_OBUF[12]_inst_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^q\(12),
      I1 => upordown,
      I2 => \^q\(28),
      I3 => \LED_top_OBUF[12]_inst_i_18\,
      O => upordown_reg_8
    );
\LED_top_OBUF[13]_inst_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \^q\(29),
      I1 => upordown,
      I2 => \^q\(13),
      I3 => n_0_1058_BUFG_inst_n_1,
      O => upordown_reg_5
    );
\LED_top_OBUF[13]_inst_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(29),
      I1 => upordown,
      I2 => \^q\(13),
      O => upordown_reg_2
    );
\LED_top_OBUF[14]_inst_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \^q\(30),
      I1 => upordown,
      I2 => \^q\(14),
      I3 => n_0_1058_BUFG_inst_n_1,
      O => upordown_reg_6
    );
\LED_top_OBUF[14]_inst_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(30),
      I1 => upordown,
      I2 => \^q\(14),
      O => upordown_reg_1
    );
\LED_top_OBUF[15]_inst_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(31),
      I1 => upordown,
      I2 => \^q\(15),
      O => upordown_reg
    );
\LED_top_OBUF[15]_inst_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \^q\(31),
      I1 => upordown,
      I2 => \^q\(15),
      I3 => n_0_1058_BUFG_inst_n_1,
      O => upordown_reg_7
    );
\LED_top_OBUF[1]_inst_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(17),
      I1 => \LED_top_OBUF[3]_inst_i_36\,
      I2 => \^q\(1),
      O => upordown_reg_rep_5
    );
\LED_top_OBUF[1]_inst_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \^q\(17),
      I1 => \LED_top_OBUF[3]_inst_i_36\,
      I2 => \^q\(1),
      I3 => n_0_1058_BUFG_inst_n_1,
      O => upordown_reg_rep_7
    );
\LED_top_OBUF[2]_inst_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000C00088FF8800"
    )
        port map (
      I0 => \^q\(2),
      I1 => n_0_1058_BUFG_inst_n_1,
      I2 => \^q\(18),
      I3 => \LED_top_OBUF[3]_inst_i_7\,
      I4 => \LED_top_OBUF[3]_inst_i_7_0\(0),
      I5 => \LED_top_OBUF[3]_inst_i_36\,
      O => upordown_reg_rep_14
    );
\LED_top_OBUF[2]_inst_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(18),
      I1 => \LED_top_OBUF[3]_inst_i_36\,
      I2 => \^q\(2),
      O => upordown_reg_rep_4
    );
\LED_top_OBUF[2]_inst_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \^q\(18),
      I1 => \LED_top_OBUF[3]_inst_i_36\,
      I2 => \^q\(2),
      I3 => n_0_1058_BUFG_inst_n_1,
      O => upordown_reg_rep_8
    );
\LED_top_OBUF[3]_inst_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000C00088FF8800"
    )
        port map (
      I0 => \^q\(3),
      I1 => n_0_1058_BUFG_inst_n_1,
      I2 => \^q\(19),
      I3 => \LED_top_OBUF[3]_inst_i_7\,
      I4 => \LED_top_OBUF[3]_inst_i_7_0\(1),
      I5 => \LED_top_OBUF[3]_inst_i_36\,
      O => upordown_reg_rep_15
    );
\LED_top_OBUF[3]_inst_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(19),
      I1 => \LED_top_OBUF[3]_inst_i_36\,
      I2 => \^q\(3),
      O => upordown_reg_rep_3
    );
\LED_top_OBUF[3]_inst_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \^q\(19),
      I1 => \LED_top_OBUF[3]_inst_i_36\,
      I2 => \^q\(3),
      I3 => n_0_1058_BUFG_inst_n_1,
      O => upordown_reg_rep_9
    );
\LED_top_OBUF[4]_inst_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(20),
      I1 => \LED_top_OBUF[3]_inst_i_36\,
      I2 => \^q\(4),
      O => upordown_reg_rep_2
    );
\LED_top_OBUF[4]_inst_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \^q\(20),
      I1 => \LED_top_OBUF[3]_inst_i_36\,
      I2 => \^q\(4),
      I3 => n_0_1058_BUFG_inst_n_1,
      O => upordown_reg_rep_10
    );
\LED_top_OBUF[5]_inst_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \^q\(21),
      I1 => \LED_top_OBUF[3]_inst_i_36\,
      I2 => \^q\(5),
      I3 => n_0_1058_BUFG_inst_n_1,
      O => upordown_reg_rep_11
    );
\LED_top_OBUF[5]_inst_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(21),
      I1 => \LED_top_OBUF[3]_inst_i_36\,
      I2 => \^q\(5),
      O => upordown_reg_rep_1
    );
\LED_top_OBUF[6]_inst_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \^q\(22),
      I1 => \LED_top_OBUF[3]_inst_i_36\,
      I2 => \^q\(6),
      I3 => n_0_1058_BUFG_inst_n_1,
      O => upordown_reg_rep_12
    );
\LED_top_OBUF[6]_inst_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(22),
      I1 => \LED_top_OBUF[3]_inst_i_36\,
      I2 => \^q\(6),
      O => upordown_reg_rep_0
    );
\LED_top_OBUF[7]_inst_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(23),
      I1 => \LED_top_OBUF[3]_inst_i_36\,
      I2 => \^q\(7),
      O => upordown_reg_rep
    );
\LED_top_OBUF[7]_inst_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \^q\(23),
      I1 => \LED_top_OBUF[3]_inst_i_36\,
      I2 => \^q\(7),
      I3 => n_0_1058_BUFG_inst_n_1,
      O => upordown_reg_rep_13
    );
\LED_top_OBUF[8]_inst_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(24),
      I1 => \LED_top_OBUF[10]_inst_i_6\,
      I2 => \^q\(8),
      O => \upordown_reg_rep__0_2\
    );
\LED_top_OBUF[8]_inst_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \^q\(24),
      I1 => \LED_top_OBUF[10]_inst_i_6\,
      I2 => \^q\(8),
      I3 => n_0_1058_BUFG_inst_n_1,
      O => \upordown_reg_rep__0_4\
    );
\LED_top_OBUF[8]_inst_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"777FFF7F"
    )
        port map (
      I0 => \LED_top_OBUF[11]_inst_i_19\,
      I1 => n_0_1058_BUFG_inst_n_1,
      I2 => \^q\(8),
      I3 => \LED_top_OBUF[10]_inst_i_6\,
      I4 => \^q\(24),
      O => \upordown_reg_rep__0_3\
    );
\LED_top_OBUF[9]_inst_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(25),
      I1 => \LED_top_OBUF[10]_inst_i_6\,
      I2 => \^q\(9),
      O => \upordown_reg_rep__0_1\
    );
\LED_top_OBUF[9]_inst_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \^q\(25),
      I1 => \LED_top_OBUF[10]_inst_i_6\,
      I2 => \^q\(9),
      I3 => n_0_1058_BUFG_inst_n_1,
      O => \upordown_reg_rep__0_6\
    );
\LED_top_OBUF[9]_inst_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"777FFF7F"
    )
        port map (
      I0 => \LED_top_OBUF[11]_inst_i_19\,
      I1 => n_0_1058_BUFG_inst_n_1,
      I2 => \^q\(9),
      I3 => \LED_top_OBUF[10]_inst_i_6\,
      I4 => \^q\(25),
      O => \upordown_reg_rep__0_5\
    );
\alu_data_out_reg[0]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(0),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(0)
    );
\alu_data_out_reg[10]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(10),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(10)
    );
\alu_data_out_reg[11]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(11),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(11)
    );
\alu_data_out_reg[12]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(12),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(12)
    );
\alu_data_out_reg[13]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(13),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(13)
    );
\alu_data_out_reg[14]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(14),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(14)
    );
\alu_data_out_reg[15]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(15),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(15)
    );
\alu_data_out_reg[16]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(16),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(16)
    );
\alu_data_out_reg[17]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(17),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(17)
    );
\alu_data_out_reg[18]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(18),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(18)
    );
\alu_data_out_reg[19]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(19),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(19)
    );
\alu_data_out_reg[1]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(1),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(1)
    );
\alu_data_out_reg[20]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(20),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(20)
    );
\alu_data_out_reg[21]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(21),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(21)
    );
\alu_data_out_reg[22]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(22),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(22)
    );
\alu_data_out_reg[23]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(23),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(23)
    );
\alu_data_out_reg[24]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(24),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(24)
    );
\alu_data_out_reg[25]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(25),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(25)
    );
\alu_data_out_reg[26]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(26),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(26)
    );
\alu_data_out_reg[27]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(27),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(27)
    );
\alu_data_out_reg[28]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(28),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(28)
    );
\alu_data_out_reg[29]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(29),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(29)
    );
\alu_data_out_reg[2]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(2),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(2)
    );
\alu_data_out_reg[30]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(30),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(30)
    );
\alu_data_out_reg[31]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(31),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(31)
    );
\alu_data_out_reg[3]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(3),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(3)
    );
\alu_data_out_reg[4]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(4),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(4)
    );
\alu_data_out_reg[5]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(5),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(5)
    );
\alu_data_out_reg[6]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(6),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(6)
    );
\alu_data_out_reg[7]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(7),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(7)
    );
\alu_data_out_reg[8]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(8),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(8)
    );
\alu_data_out_reg[9]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => D(9),
      G => E(0),
      GE => '1',
      PRE => AS(0),
      Q => \^q\(9)
    );
\alu_flag_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => E(0),
      D => \current_pc[31]_i_6\,
      G => AS(0),
      GE => '1',
      Q => \^s_alu_flag\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity t02_Word_IM is
  port (
    S_f3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_imm_20 : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_f7 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    upordown_reg_rep : out STD_LOGIC;
    upordown_reg_rep_0 : out STD_LOGIC;
    upordown_reg_rep_1 : out STD_LOGIC;
    upordown_reg_rep_2 : out STD_LOGIC;
    upordown_reg_rep_3 : out STD_LOGIC;
    upordown_reg_rep_4 : out STD_LOGIC;
    \input_circle_status_reg[1]\ : out STD_LOGIC;
    upordown_reg_rep_5 : out STD_LOGIC;
    \current_pc_reg[4]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_pc_reg[4]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    upordown_reg_rep_6 : out STD_LOGIC;
    upordown_reg_rep_7 : out STD_LOGIC;
    \input_circle_status_reg[1]_0\ : out STD_LOGIC;
    upordown_reg_rep_8 : out STD_LOGIC;
    upordown_reg_rep_9 : out STD_LOGIC;
    \current_pc_reg[1]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RAM_reg_reg_r1_0_31_0_5 : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \LED_top_OBUF[10]_inst_i_14\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \IMM_out_reg[0]\ : in STD_LOGIC;
    n_0_1058_BUFG_inst_n_1 : in STD_LOGIC;
    \LED_top_OBUF[0]_inst_i_6\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_16\ : in STD_LOGIC;
    \LED_top_OBUF[3]_inst_i_7\ : in STD_LOGIC;
    \LED_top_OBUF[1]_inst_i_8\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_19\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_16_0\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_46\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_5\ : in STD_LOGIC;
    \LED_top_OBUF[3]_inst_i_7_0\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_5_0\ : in STD_LOGIC;
    \SEGMENT7_top[7]_i_46_0\ : in STD_LOGIC;
    \LED_top_OBUF[7]_inst_i_4\ : in STD_LOGIC;
    \LED_top_OBUF[7]_inst_i_4_0\ : in STD_LOGIC;
    \LED_top_OBUF[6]_inst_i_33\ : in STD_LOGIC;
    RAM_reg_reg_r2_0_31_0_5 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RAM_reg_reg_r1_0_31_0_5_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RAM_reg_reg_r1_0_31_0_5_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \LED_top_OBUF[3]_inst_i_20\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \LED_top_OBUF[10]_inst_i_14_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end t02_Word_IM;

architecture STRUCTURE of t02_Word_IM is
  signal \LED_top_OBUF[0]_inst_i_42_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[0]_inst_i_44_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_39_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_40_n_1\ : STD_LOGIC;
  signal \LED_top_OBUF[1]_inst_i_41_n_1\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \SEGMENT7_top[7]_i_52_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_53_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_54_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_55_n_1\ : STD_LOGIC;
  signal \SEGMENT7_top[7]_i_56_n_1\ : STD_LOGIC;
  signal \^s_f7\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_imm_20\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^current_pc_reg[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^current_pc_reg[4]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^current_pc_reg[4]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^upordown_reg_rep_0\ : STD_LOGIC;
  signal \^upordown_reg_rep_4\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \f3_reg[0]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \f7_reg[6]\ : label is "LDC";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \imm12_reg[0]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \imm12_reg[0]\ : label is "LDP";
  attribute OPT_MODIFIED of \imm12_reg[10]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \imm12_reg[10]\ : label is "LDC";
  attribute OPT_MODIFIED of \imm12_reg[11]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \imm12_reg[11]\ : label is "LDC";
  attribute OPT_MODIFIED of \imm12_reg[1]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \imm12_reg[1]\ : label is "LDP";
  attribute OPT_MODIFIED of \imm12_reg[2]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \imm12_reg[2]\ : label is "LDP";
  attribute OPT_MODIFIED of \imm12_reg[3]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \imm12_reg[3]\ : label is "LDP";
  attribute OPT_MODIFIED of \imm12_reg[4]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \imm12_reg[4]\ : label is "LDP";
  attribute OPT_MODIFIED of \imm12_reg[7]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \imm12_reg[7]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \imm20_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rd_reg[0]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \rd_reg[1]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \rd_reg[2]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \rd_reg[3]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \rs0_reg[0]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \rs0_reg[1]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \rs0_reg[2]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \rs0_reg[3]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \rs1_reg[0]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \rs1_reg[1]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \rs1_reg[2]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \rs1_reg[3]\ : label is "LDC";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  S_f7(0) <= \^s_f7\(0);
  S_imm_20(0) <= \^s_imm_20\(0);
  \current_pc_reg[1]\(3 downto 0) <= \^current_pc_reg[1]\(3 downto 0);
  \current_pc_reg[4]\(3 downto 0) <= \^current_pc_reg[4]\(3 downto 0);
  \current_pc_reg[4]_0\(3 downto 0) <= \^current_pc_reg[4]_0\(3 downto 0);
  upordown_reg_rep_0 <= \^upordown_reg_rep_0\;
  upordown_reg_rep_4 <= \^upordown_reg_rep_4\;
\IMM_out_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC0A"
    )
        port map (
      I0 => \^s_imm_20\(0),
      I1 => \^q\(0),
      I2 => \IMM_out_reg[0]\,
      I3 => n_0_1058_BUFG_inst_n_1,
      O => D(0)
    );
\IMM_out_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0BB88"
    )
        port map (
      I0 => \^q\(7),
      I1 => \IMM_out_reg[0]\,
      I2 => \^q\(6),
      I3 => \^s_imm_20\(0),
      I4 => n_0_1058_BUFG_inst_n_1,
      O => D(7)
    );
\IMM_out_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0BB88"
    )
        port map (
      I0 => \^q\(6),
      I1 => \IMM_out_reg[0]\,
      I2 => \^q\(7),
      I3 => \^s_imm_20\(0),
      I4 => n_0_1058_BUFG_inst_n_1,
      O => D(8)
    );
\IMM_out_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0BB88"
    )
        port map (
      I0 => \^q\(0),
      I1 => \IMM_out_reg[0]\,
      I2 => \^q\(1),
      I3 => \^s_imm_20\(0),
      I4 => n_0_1058_BUFG_inst_n_1,
      O => D(1)
    );
\IMM_out_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0BB88"
    )
        port map (
      I0 => \^q\(1),
      I1 => \IMM_out_reg[0]\,
      I2 => \^q\(2),
      I3 => \^s_imm_20\(0),
      I4 => n_0_1058_BUFG_inst_n_1,
      O => D(2)
    );
\IMM_out_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0BB88"
    )
        port map (
      I0 => \^q\(2),
      I1 => \IMM_out_reg[0]\,
      I2 => \^q\(3),
      I3 => \^s_imm_20\(0),
      I4 => n_0_1058_BUFG_inst_n_1,
      O => D(3)
    );
\IMM_out_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0BB88"
    )
        port map (
      I0 => \^q\(3),
      I1 => \IMM_out_reg[0]\,
      I2 => \^q\(4),
      I3 => \^s_imm_20\(0),
      I4 => n_0_1058_BUFG_inst_n_1,
      O => D(4)
    );
\IMM_out_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0BB88"
    )
        port map (
      I0 => \^q\(4),
      I1 => \IMM_out_reg[0]\,
      I2 => \^q\(5),
      I3 => \^s_imm_20\(0),
      I4 => n_0_1058_BUFG_inst_n_1,
      O => D(5)
    );
\IMM_out_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0BB88"
    )
        port map (
      I0 => \^q\(5),
      I1 => \IMM_out_reg[0]\,
      I2 => \^q\(7),
      I3 => \^s_imm_20\(0),
      I4 => n_0_1058_BUFG_inst_n_1,
      O => D(6)
    );
\LED_top_OBUF[0]_inst_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \LED_top_OBUF[0]_inst_i_6\,
      I1 => \LED_top_OBUF[0]_inst_i_42_n_1\,
      I2 => \SEGMENT7_top[7]_i_16\,
      I3 => \^upordown_reg_rep_0\,
      I4 => \LED_top_OBUF[3]_inst_i_7\,
      I5 => \LED_top_OBUF[0]_inst_i_44_n_1\,
      O => upordown_reg_rep
    );
\LED_top_OBUF[0]_inst_i_42\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^current_pc_reg[1]\(0),
      I1 => \LED_top_OBUF[3]_inst_i_7_0\,
      O => \LED_top_OBUF[0]_inst_i_42_n_1\
    );
\LED_top_OBUF[0]_inst_i_43\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^current_pc_reg[4]\(0),
      I1 => \LED_top_OBUF[3]_inst_i_7_0\,
      O => \^upordown_reg_rep_0\
    );
\LED_top_OBUF[0]_inst_i_44\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^current_pc_reg[4]_0\(0),
      I1 => \LED_top_OBUF[3]_inst_i_7_0\,
      O => \LED_top_OBUF[0]_inst_i_44_n_1\
    );
\LED_top_OBUF[1]_inst_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \LED_top_OBUF[1]_inst_i_8\,
      I1 => \LED_top_OBUF[1]_inst_i_39_n_1\,
      I2 => \SEGMENT7_top[7]_i_16\,
      I3 => \LED_top_OBUF[1]_inst_i_40_n_1\,
      I4 => \LED_top_OBUF[3]_inst_i_7\,
      I5 => \LED_top_OBUF[1]_inst_i_41_n_1\,
      O => upordown_reg_rep_1
    );
\LED_top_OBUF[1]_inst_i_39\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^current_pc_reg[1]\(1),
      I1 => \LED_top_OBUF[3]_inst_i_7_0\,
      O => \LED_top_OBUF[1]_inst_i_39_n_1\
    );
\LED_top_OBUF[1]_inst_i_40\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^current_pc_reg[4]\(1),
      I1 => \LED_top_OBUF[3]_inst_i_7_0\,
      O => \LED_top_OBUF[1]_inst_i_40_n_1\
    );
\LED_top_OBUF[1]_inst_i_41\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^current_pc_reg[4]_0\(1),
      I1 => \LED_top_OBUF[3]_inst_i_7_0\,
      O => \LED_top_OBUF[1]_inst_i_41_n_1\
    );
\LED_top_OBUF[2]_inst_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^current_pc_reg[4]\(2),
      I1 => \LED_top_OBUF[3]_inst_i_7\,
      I2 => \^current_pc_reg[4]_0\(2),
      I3 => \LED_top_OBUF[3]_inst_i_7_0\,
      O => upordown_reg_rep_5
    );
\LED_top_OBUF[3]_inst_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^current_pc_reg[4]\(3),
      I1 => \LED_top_OBUF[3]_inst_i_7\,
      I2 => \^current_pc_reg[4]_0\(3),
      I3 => \LED_top_OBUF[3]_inst_i_7_0\,
      O => upordown_reg_rep_6
    );
\LED_top_OBUF[3]_inst_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^s_imm_20\(0),
      I1 => \LED_top_OBUF[3]_inst_i_7_0\,
      O => upordown_reg_rep_8
    );
\LED_top_OBUF[3]_inst_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^current_pc_reg[4]_0\(3),
      I1 => \LED_top_OBUF[3]_inst_i_7_0\,
      O => \^upordown_reg_rep_4\
    );
\LED_top_OBUF[4]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF434FFFFF737F"
    )
        port map (
      I0 => \^s_imm_20\(0),
      I1 => \SEGMENT7_top[7]_i_46\,
      I2 => \LED_top_OBUF[4]_inst_i_5\,
      I3 => \^q\(4),
      I4 => \LED_top_OBUF[3]_inst_i_7_0\,
      I5 => \LED_top_OBUF[4]_inst_i_5_0\,
      O => \input_circle_status_reg[1]\
    );
\LED_top_OBUF[6]_inst_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFC7F7"
    )
        port map (
      I0 => \^s_f7\(0),
      I1 => \SEGMENT7_top[7]_i_46\,
      I2 => \LED_top_OBUF[6]_inst_i_33\,
      I3 => \^s_imm_20\(0),
      I4 => \LED_top_OBUF[3]_inst_i_7_0\,
      O => \input_circle_status_reg[1]_0\
    );
\LED_top_OBUF[7]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DCDFDCDFF0F0FFFF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \LED_top_OBUF[3]_inst_i_7_0\,
      I2 => \SEGMENT7_top[7]_i_46_0\,
      I3 => \^s_imm_20\(0),
      I4 => \LED_top_OBUF[7]_inst_i_4\,
      I5 => \LED_top_OBUF[7]_inst_i_4_0\,
      O => upordown_reg_rep_7
    );
\SEGMENT7_top[7]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \SEGMENT7_top[7]_i_16_0\,
      I1 => \SEGMENT7_top[7]_i_52_n_1\,
      I2 => \SEGMENT7_top[7]_i_16\,
      I3 => \SEGMENT7_top[7]_i_53_n_1\,
      I4 => \LED_top_OBUF[3]_inst_i_7\,
      I5 => \^upordown_reg_rep_4\,
      O => upordown_reg_rep_3
    );
\SEGMENT7_top[7]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \SEGMENT7_top[7]_i_19\,
      I1 => \SEGMENT7_top[7]_i_54_n_1\,
      I2 => \SEGMENT7_top[7]_i_16\,
      I3 => \SEGMENT7_top[7]_i_55_n_1\,
      I4 => \LED_top_OBUF[3]_inst_i_7\,
      I5 => \SEGMENT7_top[7]_i_56_n_1\,
      O => upordown_reg_rep_2
    );
\SEGMENT7_top[7]_i_52\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^current_pc_reg[1]\(3),
      I1 => \LED_top_OBUF[3]_inst_i_7_0\,
      O => \SEGMENT7_top[7]_i_52_n_1\
    );
\SEGMENT7_top[7]_i_53\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^current_pc_reg[4]\(3),
      I1 => \LED_top_OBUF[3]_inst_i_7_0\,
      O => \SEGMENT7_top[7]_i_53_n_1\
    );
\SEGMENT7_top[7]_i_54\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^current_pc_reg[1]\(2),
      I1 => \LED_top_OBUF[3]_inst_i_7_0\,
      O => \SEGMENT7_top[7]_i_54_n_1\
    );
\SEGMENT7_top[7]_i_55\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^current_pc_reg[4]\(2),
      I1 => \LED_top_OBUF[3]_inst_i_7_0\,
      O => \SEGMENT7_top[7]_i_55_n_1\
    );
\SEGMENT7_top[7]_i_56\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^current_pc_reg[4]_0\(2),
      I1 => \LED_top_OBUF[3]_inst_i_7_0\,
      O => \SEGMENT7_top[7]_i_56_n_1\
    );
\SEGMENT7_top[7]_i_64\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \^current_pc_reg[1]\(1),
      I1 => \^current_pc_reg[4]_0\(1),
      I2 => \LED_top_OBUF[3]_inst_i_7_0\,
      I3 => \SEGMENT7_top[7]_i_46_0\,
      I4 => \SEGMENT7_top[7]_i_46\,
      O => upordown_reg_rep_9
    );
\f3_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => RAM_reg_reg_r1_0_31_0_5,
      G => '1',
      GE => '1',
      Q => S_f3(0)
    );
\f7_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => RAM_reg_reg_r1_0_31_0_5,
      G => E(0),
      GE => '1',
      Q => \^s_f7\(0)
    );
\imm12_reg[0]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      D => \LED_top_OBUF[10]_inst_i_14_0\(0),
      G => AR(0),
      GE => '1',
      PRE => \LED_top_OBUF[10]_inst_i_14\(0),
      Q => \^q\(0)
    );
\imm12_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => \LED_top_OBUF[10]_inst_i_14\(0),
      D => \LED_top_OBUF[10]_inst_i_14_0\(5),
      G => AR(0),
      GE => '1',
      Q => \^q\(6)
    );
\imm12_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => \LED_top_OBUF[10]_inst_i_14\(0),
      D => RAM_reg_reg_r1_0_31_0_5,
      G => AR(0),
      GE => '1',
      Q => \^q\(7)
    );
\imm12_reg[1]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      D => \LED_top_OBUF[10]_inst_i_14_0\(1),
      G => AR(0),
      GE => '1',
      PRE => \LED_top_OBUF[10]_inst_i_14\(0),
      Q => \^q\(1)
    );
\imm12_reg[2]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      D => \LED_top_OBUF[10]_inst_i_14_0\(2),
      G => AR(0),
      GE => '1',
      PRE => \LED_top_OBUF[10]_inst_i_14\(0),
      Q => \^q\(2)
    );
\imm12_reg[3]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      D => \LED_top_OBUF[10]_inst_i_14_0\(3),
      G => AR(0),
      GE => '1',
      PRE => \LED_top_OBUF[10]_inst_i_14\(0),
      Q => \^q\(3)
    );
\imm12_reg[4]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      D => \LED_top_OBUF[10]_inst_i_14_0\(4),
      G => AR(0),
      GE => '1',
      PRE => \LED_top_OBUF[10]_inst_i_14\(0),
      Q => \^q\(4)
    );
\imm12_reg[7]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      D => RAM_reg_reg_r1_0_31_0_5,
      G => AR(0),
      GE => '1',
      PRE => \LED_top_OBUF[10]_inst_i_14\(0),
      Q => \^q\(5)
    );
\imm20_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => '1',
      G => \LED_top_OBUF[10]_inst_i_14\(0),
      GE => '1',
      Q => \^s_imm_20\(0)
    );
\rd_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => \LED_top_OBUF[3]_inst_i_20\(0),
      G => E(0),
      GE => '1',
      Q => \^current_pc_reg[1]\(0)
    );
\rd_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => \LED_top_OBUF[3]_inst_i_20\(1),
      G => E(0),
      GE => '1',
      Q => \^current_pc_reg[1]\(1)
    );
\rd_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => \LED_top_OBUF[3]_inst_i_20\(2),
      G => E(0),
      GE => '1',
      Q => \^current_pc_reg[1]\(2)
    );
\rd_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => \LED_top_OBUF[3]_inst_i_20\(3),
      G => E(0),
      GE => '1',
      Q => \^current_pc_reg[1]\(3)
    );
\rs0_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => RAM_reg_reg_r2_0_31_0_5(0),
      G => '1',
      GE => '1',
      Q => \^current_pc_reg[4]_0\(0)
    );
\rs0_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => RAM_reg_reg_r2_0_31_0_5(1),
      G => '1',
      GE => '1',
      Q => \^current_pc_reg[4]_0\(1)
    );
\rs0_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => RAM_reg_reg_r2_0_31_0_5(2),
      G => '1',
      GE => '1',
      Q => \^current_pc_reg[4]_0\(2)
    );
\rs0_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => RAM_reg_reg_r2_0_31_0_5(3),
      G => '1',
      GE => '1',
      Q => \^current_pc_reg[4]_0\(3)
    );
\rs1_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => RAM_reg_reg_r1_0_31_0_5_0(0),
      G => RAM_reg_reg_r1_0_31_0_5_1(0),
      GE => '1',
      Q => \^current_pc_reg[4]\(0)
    );
\rs1_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => RAM_reg_reg_r1_0_31_0_5_0(1),
      G => RAM_reg_reg_r1_0_31_0_5_1(0),
      GE => '1',
      Q => \^current_pc_reg[4]\(1)
    );
\rs1_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => RAM_reg_reg_r1_0_31_0_5_0(2),
      G => RAM_reg_reg_r1_0_31_0_5_1(0),
      GE => '1',
      Q => \^current_pc_reg[4]\(2)
    );
\rs1_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => RAM_reg_reg_r1_0_31_0_5_0(3),
      G => RAM_reg_reg_r1_0_31_0_5_1(0),
      GE => '1',
      Q => \^current_pc_reg[4]\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity t02_Word_PC is
  port (
    \current_pc_reg[4]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_pc_reg[3]_0\ : out STD_LOGIC;
    n_0_1058_BUFG_inst_n_1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \current_pc_reg[3]_1\ : out STD_LOGIC;
    S_RST_interf_reg : out STD_LOGIC;
    S_RST_interf_reg_0 : out STD_LOGIC;
    S_cnrtl_alu_data_srce_slkt : out STD_LOGIC;
    \current_pc_reg[3]_2\ : out STD_LOGIC;
    upordown_reg_rep : out STD_LOGIC;
    \current_pc_reg[3]_3\ : out STD_LOGIC;
    \current_pc_reg[16]_0\ : out STD_LOGIC;
    \current_pc_reg[3]_4\ : out STD_LOGIC;
    upordown_reg : out STD_LOGIC;
    \current_pc_reg[1]_0\ : out STD_LOGIC;
    upordown_reg_rep_0 : out STD_LOGIC;
    \current_pc_reg[4]_1\ : out STD_LOGIC;
    \current_pc_reg[3]_5\ : out STD_LOGIC;
    upordown_reg_rep_1 : out STD_LOGIC;
    S_RST_interf_reg_1 : out STD_LOGIC;
    \current_pc_reg[13]_0\ : out STD_LOGIC;
    \current_pc_reg[14]_0\ : out STD_LOGIC;
    \current_pc_reg[15]_0\ : out STD_LOGIC;
    \current_pc_reg[18]_0\ : out STD_LOGIC;
    alubrnch_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \current_pc_reg[19]_0\ : out STD_LOGIC;
    \current_pc_reg[20]_0\ : out STD_LOGIC;
    \current_pc_reg[21]_0\ : out STD_LOGIC;
    \current_pc_reg[22]_0\ : out STD_LOGIC;
    \current_pc_reg[31]_0\ : out STD_LOGIC;
    \current_pc_reg[30]_0\ : out STD_LOGIC;
    \current_pc_reg[29]_0\ : out STD_LOGIC;
    \current_pc_reg[28]_0\ : out STD_LOGIC;
    \input_circle_status_reg[7]\ : out STD_LOGIC;
    \current_pc_reg[27]_0\ : out STD_LOGIC;
    \current_pc_reg[26]_0\ : out STD_LOGIC;
    \current_pc_reg[25]_0\ : out STD_LOGIC;
    \input_circle_status_reg[7]_0\ : out STD_LOGIC;
    \current_pc_reg[24]_0\ : out STD_LOGIC;
    \current_pc_reg[23]_0\ : out STD_LOGIC;
    \current_pc_reg[22]_1\ : out STD_LOGIC;
    \current_pc_reg[21]_1\ : out STD_LOGIC;
    \current_pc_reg[20]_1\ : out STD_LOGIC;
    \current_pc_reg[19]_1\ : out STD_LOGIC;
    \current_pc_reg[18]_1\ : out STD_LOGIC;
    \current_pc_reg[17]_0\ : out STD_LOGIC;
    p_0_in : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \current_pc_reg[1]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_pc_reg[4]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_pc_reg[4]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_pc_reg[3]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \current_pc_reg[3]_7\ : out STD_LOGIC;
    \input_circle_status_reg[7]_1\ : out STD_LOGIC;
    \current_pc_reg[3]_8\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \current_pc_reg[4]_4\ : out STD_LOGIC;
    \current_pc_reg[4]_5\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \current_pc_reg[1]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \IMM_out_reg[17]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_imm_20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_RST : in STD_LOGIC;
    S_f3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \alu_flag_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \LED_top_OBUF[3]_inst_i_3\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_6\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_6_0\ : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_5\ : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_5_0\ : in STD_LOGIC;
    upordown : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_5_1\ : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_5_2\ : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_5_3\ : in STD_LOGIC;
    \LED_top_OBUF[15]_inst_i_5\ : in STD_LOGIC;
    \LED_top_OBUF[6]_inst_i_4\ : in STD_LOGIC;
    \LED_top_OBUF[8]_inst_i_4\ : in STD_LOGIC;
    \LED_top_OBUF[10]_inst_i_14\ : in STD_LOGIC;
    RAM_reg_reg_r2_0_31_30_31 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_CLK_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \current_pc_reg[23]_1\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    S_alu_flag : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end t02_Word_PC;

architecture STRUCTURE of t02_Word_PC is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^s_rst_interf_reg_0\ : STD_LOGIC;
  signal S_current_pc : STD_LOGIC_VECTOR ( 31 downto 5 );
  signal \^alubrnch_out\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \current_pc[11]_i_2_n_1\ : STD_LOGIC;
  signal \current_pc[11]_i_3_n_1\ : STD_LOGIC;
  signal \current_pc[11]_i_4_n_1\ : STD_LOGIC;
  signal \current_pc[11]_i_5_n_1\ : STD_LOGIC;
  signal \current_pc[15]_i_2_n_1\ : STD_LOGIC;
  signal \current_pc[15]_i_3_n_1\ : STD_LOGIC;
  signal \current_pc[15]_i_4_n_1\ : STD_LOGIC;
  signal \current_pc[15]_i_5_n_1\ : STD_LOGIC;
  signal \current_pc[19]_i_2_n_1\ : STD_LOGIC;
  signal \current_pc[19]_i_3_n_1\ : STD_LOGIC;
  signal \current_pc[19]_i_4_n_1\ : STD_LOGIC;
  signal \current_pc[19]_i_5_n_1\ : STD_LOGIC;
  signal \current_pc[23]_i_2_n_1\ : STD_LOGIC;
  signal \current_pc[23]_i_3_n_1\ : STD_LOGIC;
  signal \current_pc[23]_i_4_n_1\ : STD_LOGIC;
  signal \current_pc[23]_i_5_n_1\ : STD_LOGIC;
  signal \current_pc[27]_i_2_n_1\ : STD_LOGIC;
  signal \current_pc[27]_i_3_n_1\ : STD_LOGIC;
  signal \current_pc[27]_i_4_n_1\ : STD_LOGIC;
  signal \current_pc[27]_i_5_n_1\ : STD_LOGIC;
  signal \current_pc[31]_i_2_n_1\ : STD_LOGIC;
  signal \current_pc[31]_i_3_n_1\ : STD_LOGIC;
  signal \current_pc[31]_i_4_n_1\ : STD_LOGIC;
  signal \current_pc[31]_i_5_n_1\ : STD_LOGIC;
  signal \current_pc[31]_i_6_n_1\ : STD_LOGIC;
  signal \current_pc[3]_i_2_n_1\ : STD_LOGIC;
  signal \current_pc[3]_i_3_n_1\ : STD_LOGIC;
  signal \current_pc[3]_i_4_n_1\ : STD_LOGIC;
  signal \current_pc[3]_i_5_n_1\ : STD_LOGIC;
  signal \current_pc[7]_i_2_n_1\ : STD_LOGIC;
  signal \current_pc[7]_i_3_n_1\ : STD_LOGIC;
  signal \current_pc[7]_i_4_n_1\ : STD_LOGIC;
  signal \current_pc[7]_i_5_n_1\ : STD_LOGIC;
  signal \current_pc_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \current_pc_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \^current_pc_reg[16]_0\ : STD_LOGIC;
  signal \current_pc_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \current_pc_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \current_pc_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \^current_pc_reg[3]_0\ : STD_LOGIC;
  signal \^current_pc_reg[3]_3\ : STD_LOGIC;
  signal \^current_pc_reg[3]_5\ : STD_LOGIC;
  signal \current_pc_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \current_pc_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \^n_0_1058_bufg_inst_n_1\ : STD_LOGIC;
  signal \NLW_current_pc_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_current_pc_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_current_pc_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_current_pc_reg[23]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_current_pc_reg[27]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_current_pc_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_current_pc_reg[3]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_current_pc_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \current_pc_reg[11]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \current_pc_reg[11]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \current_pc_reg[11]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \current_pc_reg[15]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \current_pc_reg[15]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \current_pc_reg[15]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \current_pc_reg[19]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \current_pc_reg[19]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \current_pc_reg[19]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \current_pc_reg[23]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \current_pc_reg[23]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \current_pc_reg[23]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \current_pc_reg[27]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \current_pc_reg[27]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \current_pc_reg[27]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \current_pc_reg[31]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \current_pc_reg[31]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \current_pc_reg[31]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \current_pc_reg[3]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \current_pc_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \current_pc_reg[3]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \current_pc_reg[7]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \current_pc_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \current_pc_reg[7]_i_1\ : label is "SWEEP";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
  S_RST_interf_reg_0 <= \^s_rst_interf_reg_0\;
  alubrnch_out(31 downto 0) <= \^alubrnch_out\(31 downto 0);
  \current_pc_reg[16]_0\ <= \^current_pc_reg[16]_0\;
  \current_pc_reg[3]_0\ <= \^current_pc_reg[3]_0\;
  \current_pc_reg[3]_3\ <= \^current_pc_reg[3]_3\;
  \current_pc_reg[3]_5\ <= \^current_pc_reg[3]_5\;
  n_0_1058_BUFG_inst_n_1 <= \^n_0_1058_bufg_inst_n_1\;
\IMM_out_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \^current_pc_reg[3]_0\,
      I1 => \IMM_out_reg[17]\(1),
      I2 => \^n_0_1058_bufg_inst_n_1\,
      O => D(2)
    );
\IMM_out_reg[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(4),
      I4 => S_RST,
      O => \^current_pc_reg[3]_0\
    );
\IMM_out_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => S_RST,
      I3 => \IMM_out_reg[17]\(1),
      O => D(3)
    );
\IMM_out_reg[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => S_RST,
      I1 => \^q\(4),
      I2 => \^q\(3),
      O => E(0)
    );
\IMM_out_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCD8"
    )
        port map (
      I0 => \^current_pc_reg[3]_0\,
      I1 => \IMM_out_reg[17]\(0),
      I2 => S_imm_20(0),
      I3 => \^n_0_1058_bufg_inst_n_1\,
      O => D(0)
    );
\IMM_out_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCD8"
    )
        port map (
      I0 => \^current_pc_reg[3]_0\,
      I1 => \IMM_out_reg[17]\(1),
      I2 => S_imm_20(0),
      I3 => \^n_0_1058_bufg_inst_n_1\,
      O => D(1)
    );
\LED_top_OBUF[0]_inst_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(5),
      I1 => \LED_top_OBUF[3]_inst_i_3\,
      I2 => \^q\(0),
      O => \^current_pc_reg[16]_0\
    );
\LED_top_OBUF[0]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AF0FCF00AF00C0"
    )
        port map (
      I0 => \^n_0_1058_bufg_inst_n_1\,
      I1 => \^current_pc_reg[3]_3\,
      I2 => \LED_top_OBUF[4]_inst_i_6\,
      I3 => \LED_top_OBUF[3]_inst_i_3\,
      I4 => \LED_top_OBUF[4]_inst_i_6_0\,
      I5 => \^current_pc_reg[16]_0\,
      O => upordown_reg_rep
    );
\LED_top_OBUF[0]_inst_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => S_RST,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \LED_top_OBUF[3]_inst_i_3\,
      O => \current_pc_reg[3]_2\
    );
\LED_top_OBUF[0]_inst_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000015"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(4),
      I4 => S_RST,
      I5 => \LED_top_OBUF[3]_inst_i_3\,
      O => \current_pc_reg[3]_4\
    );
\LED_top_OBUF[10]_inst_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_current_pc(26),
      I1 => \LED_top_OBUF[10]_inst_i_14\,
      I2 => S_current_pc(10),
      O => \current_pc_reg[26]_0\
    );
\LED_top_OBUF[11]_inst_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \LED_top_OBUF[8]_inst_i_4\,
      I1 => S_current_pc(11),
      I2 => \LED_top_OBUF[10]_inst_i_14\,
      I3 => S_current_pc(27),
      O => \input_circle_status_reg[7]\
    );
\LED_top_OBUF[11]_inst_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_current_pc(27),
      I1 => \LED_top_OBUF[10]_inst_i_14\,
      I2 => S_current_pc(11),
      O => \current_pc_reg[27]_0\
    );
\LED_top_OBUF[12]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07F7F7F7FFFFFFFF"
    )
        port map (
      I0 => \LED_top_OBUF[12]_inst_i_5\,
      I1 => \LED_top_OBUF[12]_inst_i_5_0\,
      I2 => upordown,
      I3 => \LED_top_OBUF[12]_inst_i_5_1\,
      I4 => \LED_top_OBUF[12]_inst_i_5_2\,
      I5 => \LED_top_OBUF[12]_inst_i_5_3\,
      O => upordown_reg
    );
\LED_top_OBUF[12]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_current_pc(28),
      I1 => upordown,
      I2 => S_current_pc(12),
      O => \current_pc_reg[28]_0\
    );
\LED_top_OBUF[13]_inst_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_5\,
      I1 => S_current_pc(13),
      I2 => upordown,
      I3 => S_current_pc(29),
      O => \current_pc_reg[13]_0\
    );
\LED_top_OBUF[13]_inst_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_current_pc(29),
      I1 => upordown,
      I2 => S_current_pc(13),
      O => \current_pc_reg[29]_0\
    );
\LED_top_OBUF[14]_inst_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \LED_top_OBUF[15]_inst_i_5\,
      I1 => S_current_pc(14),
      I2 => upordown,
      I3 => S_current_pc(30),
      O => \current_pc_reg[14]_0\
    );
\LED_top_OBUF[14]_inst_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_current_pc(30),
      I1 => upordown,
      I2 => S_current_pc(14),
      O => \current_pc_reg[30]_0\
    );
\LED_top_OBUF[15]_inst_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => S_current_pc(15),
      I1 => upordown,
      I2 => S_current_pc(31),
      I3 => \LED_top_OBUF[15]_inst_i_5\,
      O => \current_pc_reg[15]_0\
    );
\LED_top_OBUF[15]_inst_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_current_pc(31),
      I1 => upordown,
      I2 => S_current_pc(15),
      O => \current_pc_reg[31]_0\
    );
\LED_top_OBUF[1]_inst_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_current_pc(17),
      I1 => \LED_top_OBUF[3]_inst_i_3\,
      I2 => \^q\(1),
      O => \current_pc_reg[17]_0\
    );
\LED_top_OBUF[1]_inst_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033B800B8"
    )
        port map (
      I0 => \^current_pc_reg[3]_3\,
      I1 => \LED_top_OBUF[4]_inst_i_6\,
      I2 => \^q\(1),
      I3 => \LED_top_OBUF[3]_inst_i_3\,
      I4 => S_current_pc(17),
      I5 => \LED_top_OBUF[4]_inst_i_6_0\,
      O => \current_pc_reg[1]_0\
    );
\LED_top_OBUF[1]_inst_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      O => \current_pc_reg[4]_4\
    );
\LED_top_OBUF[1]_inst_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \LED_top_OBUF[3]_inst_i_3\,
      I1 => S_RST,
      I2 => \^q\(4),
      I3 => \^q\(3),
      O => upordown_reg_rep_0
    );
\LED_top_OBUF[1]_inst_i_38\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => S_RST,
      O => \^current_pc_reg[3]_3\
    );
\LED_top_OBUF[2]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^alubrnch_out\(18),
      I1 => \^alubrnch_out\(2),
      I2 => \LED_top_OBUF[6]_inst_i_4\,
      I3 => \^q\(6),
      I4 => \LED_top_OBUF[3]_inst_i_3\,
      I5 => \^q\(2),
      O => \current_pc_reg[18]_0\
    );
\LED_top_OBUF[2]_inst_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(6),
      I1 => \LED_top_OBUF[3]_inst_i_3\,
      I2 => \^q\(2),
      O => \current_pc_reg[18]_1\
    );
\LED_top_OBUF[3]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^alubrnch_out\(19),
      I1 => \^alubrnch_out\(3),
      I2 => \LED_top_OBUF[6]_inst_i_4\,
      I3 => \^q\(7),
      I4 => \LED_top_OBUF[3]_inst_i_3\,
      I5 => \^q\(3),
      O => \current_pc_reg[19]_0\
    );
\LED_top_OBUF[3]_inst_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(7),
      I1 => \LED_top_OBUF[3]_inst_i_3\,
      I2 => \^q\(3),
      O => \current_pc_reg[19]_1\
    );
\LED_top_OBUF[4]_inst_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCF4F7FFFFF4F7"
    )
        port map (
      I0 => \^current_pc_reg[3]_5\,
      I1 => \LED_top_OBUF[4]_inst_i_6\,
      I2 => \LED_top_OBUF[4]_inst_i_6_0\,
      I3 => \^q\(4),
      I4 => \LED_top_OBUF[3]_inst_i_3\,
      I5 => \^q\(8),
      O => \current_pc_reg[4]_1\
    );
\LED_top_OBUF[4]_inst_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000015"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(4),
      I4 => S_RST,
      O => \^current_pc_reg[3]_5\
    );
\LED_top_OBUF[4]_inst_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
        port map (
      I0 => \LED_top_OBUF[3]_inst_i_3\,
      I1 => S_RST,
      I2 => \^q\(4),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => upordown_reg_rep_1
    );
\LED_top_OBUF[4]_inst_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(8),
      I1 => \LED_top_OBUF[3]_inst_i_3\,
      I2 => \^q\(4),
      O => \current_pc_reg[20]_1\
    );
\LED_top_OBUF[5]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^alubrnch_out\(21),
      I1 => \^alubrnch_out\(5),
      I2 => \LED_top_OBUF[6]_inst_i_4\,
      I3 => S_current_pc(21),
      I4 => \LED_top_OBUF[3]_inst_i_3\,
      I5 => S_current_pc(5),
      O => \current_pc_reg[21]_0\
    );
\LED_top_OBUF[5]_inst_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_current_pc(21),
      I1 => \LED_top_OBUF[3]_inst_i_3\,
      I2 => S_current_pc(5),
      O => \current_pc_reg[21]_1\
    );
\LED_top_OBUF[6]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^alubrnch_out\(22),
      I1 => \^alubrnch_out\(6),
      I2 => \LED_top_OBUF[6]_inst_i_4\,
      I3 => S_current_pc(22),
      I4 => \LED_top_OBUF[3]_inst_i_3\,
      I5 => S_current_pc(6),
      O => \current_pc_reg[22]_0\
    );
\LED_top_OBUF[6]_inst_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => S_RST,
      I1 => \^q\(4),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \LED_top_OBUF[3]_inst_i_3\,
      O => S_RST_interf_reg_1
    );
\LED_top_OBUF[6]_inst_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_current_pc(22),
      I1 => \LED_top_OBUF[3]_inst_i_3\,
      I2 => S_current_pc(6),
      O => \current_pc_reg[22]_1\
    );
\LED_top_OBUF[6]_inst_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(4),
      I4 => S_RST,
      O => \current_pc_reg[3]_7\
    );
\LED_top_OBUF[7]_inst_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_current_pc(23),
      I1 => \LED_top_OBUF[3]_inst_i_3\,
      I2 => S_current_pc(7),
      O => \current_pc_reg[23]_0\
    );
\LED_top_OBUF[8]_inst_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \LED_top_OBUF[8]_inst_i_4\,
      I1 => S_current_pc(8),
      I2 => \LED_top_OBUF[10]_inst_i_14\,
      I3 => S_current_pc(24),
      O => \input_circle_status_reg[7]_0\
    );
\LED_top_OBUF[8]_inst_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_current_pc(24),
      I1 => \LED_top_OBUF[10]_inst_i_14\,
      I2 => S_current_pc(8),
      O => \current_pc_reg[24]_0\
    );
\LED_top_OBUF[9]_inst_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0151"
    )
        port map (
      I0 => \LED_top_OBUF[8]_inst_i_4\,
      I1 => S_current_pc(9),
      I2 => \LED_top_OBUF[10]_inst_i_14\,
      I3 => S_current_pc(25),
      O => \input_circle_status_reg[7]_1\
    );
\LED_top_OBUF[9]_inst_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_current_pc(25),
      I1 => \LED_top_OBUF[10]_inst_i_14\,
      I2 => S_current_pc(9),
      O => \current_pc_reg[25]_0\
    );
RAM_reg_reg_r1_0_31_12_17_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => RAM_reg_reg_r2_0_31_30_31(1),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => S_RST,
      O => p_0_in(1)
    );
RAM_reg_reg_r1_0_31_12_17_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => RAM_reg_reg_r2_0_31_30_31(0),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => S_RST,
      O => p_0_in(0)
    );
RAM_reg_reg_r1_0_31_18_23_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => RAM_reg_reg_r2_0_31_30_31(3),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => S_RST,
      O => p_0_in(3)
    );
RAM_reg_reg_r1_0_31_18_23_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => RAM_reg_reg_r2_0_31_30_31(2),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => S_RST,
      O => p_0_in(2)
    );
RAM_reg_reg_r1_0_31_18_23_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => RAM_reg_reg_r2_0_31_30_31(5),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => S_RST,
      O => p_0_in(5)
    );
RAM_reg_reg_r1_0_31_18_23_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => RAM_reg_reg_r2_0_31_30_31(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => S_RST,
      O => p_0_in(4)
    );
RAM_reg_reg_r1_0_31_18_23_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => RAM_reg_reg_r2_0_31_30_31(7),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => S_RST,
      O => p_0_in(7)
    );
RAM_reg_reg_r1_0_31_18_23_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => RAM_reg_reg_r2_0_31_30_31(6),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => S_RST,
      O => p_0_in(6)
    );
RAM_reg_reg_r1_0_31_24_29_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => RAM_reg_reg_r2_0_31_30_31(9),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => S_RST,
      O => p_0_in(9)
    );
RAM_reg_reg_r1_0_31_24_29_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => RAM_reg_reg_r2_0_31_30_31(8),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => S_RST,
      O => p_0_in(8)
    );
RAM_reg_reg_r1_0_31_24_29_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => RAM_reg_reg_r2_0_31_30_31(11),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => S_RST,
      O => p_0_in(11)
    );
RAM_reg_reg_r1_0_31_24_29_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => RAM_reg_reg_r2_0_31_30_31(10),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => S_RST,
      O => p_0_in(10)
    );
RAM_reg_reg_r1_0_31_24_29_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => RAM_reg_reg_r2_0_31_30_31(13),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => S_RST,
      O => p_0_in(13)
    );
RAM_reg_reg_r1_0_31_24_29_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => RAM_reg_reg_r2_0_31_30_31(12),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => S_RST,
      O => p_0_in(12)
    );
RAM_reg_reg_r1_0_31_30_31_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => RAM_reg_reg_r2_0_31_30_31(15),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => S_RST,
      O => p_0_in(15)
    );
RAM_reg_reg_r1_0_31_30_31_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => RAM_reg_reg_r2_0_31_30_31(14),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => S_RST,
      O => p_0_in(14)
    );
\SEGMENT7_top[7]_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^alubrnch_out\(20),
      I1 => \^alubrnch_out\(4),
      I2 => \LED_top_OBUF[6]_inst_i_4\,
      I3 => \^q\(8),
      I4 => \LED_top_OBUF[3]_inst_i_3\,
      I5 => \^q\(4),
      O => \current_pc_reg[20]_0\
    );
\alu_data_out_reg[31]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000015"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(4),
      I4 => S_RST,
      O => S_cnrtl_alu_data_srce_slkt
    );
\alu_data_out_reg[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001500000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(4),
      I4 => S_RST,
      I5 => S_f3(0),
      O => \current_pc_reg[3]_1\
    );
\alu_flag_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^s_rst_interf_reg_0\,
      I1 => CO(0),
      I2 => S_f3(0),
      I3 => \alu_flag_reg[0]\(0),
      O => S_RST_interf_reg
    );
\alu_flag_reg[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => S_RST,
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(3),
      O => \^s_rst_interf_reg_0\
    );
\current_pc[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(11),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(9),
      O => \current_pc[11]_i_2_n_1\
    );
\current_pc[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(10),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(9),
      O => \current_pc[11]_i_3_n_1\
    );
\current_pc[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(9),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(8),
      O => \current_pc[11]_i_4_n_1\
    );
\current_pc[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(8),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(7),
      O => \current_pc[11]_i_5_n_1\
    );
\current_pc[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(15),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(9),
      O => \current_pc[15]_i_2_n_1\
    );
\current_pc[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(14),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(9),
      O => \current_pc[15]_i_3_n_1\
    );
\current_pc[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(13),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(9),
      O => \current_pc[15]_i_4_n_1\
    );
\current_pc[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(12),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(9),
      O => \current_pc[15]_i_5_n_1\
    );
\current_pc[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(7),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(9),
      O => \current_pc[19]_i_2_n_1\
    );
\current_pc[19]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(6),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(9),
      O => \current_pc[19]_i_3_n_1\
    );
\current_pc[19]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(17),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(9),
      O => \current_pc[19]_i_4_n_1\
    );
\current_pc[19]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(5),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(9),
      O => \current_pc[19]_i_5_n_1\
    );
\current_pc[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(23),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(10),
      O => \current_pc[23]_i_2_n_1\
    );
\current_pc[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(22),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(10),
      O => \current_pc[23]_i_3_n_1\
    );
\current_pc[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(21),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(9),
      O => \current_pc[23]_i_4_n_1\
    );
\current_pc[23]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(8),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(9),
      O => \current_pc[23]_i_5_n_1\
    );
\current_pc[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(27),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(10),
      O => \current_pc[27]_i_2_n_1\
    );
\current_pc[27]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(26),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(10),
      O => \current_pc[27]_i_3_n_1\
    );
\current_pc[27]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(25),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(10),
      O => \current_pc[27]_i_4_n_1\
    );
\current_pc[27]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(24),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(10),
      O => \current_pc[27]_i_5_n_1\
    );
\current_pc[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(31),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(10),
      O => \current_pc[31]_i_2_n_1\
    );
\current_pc[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(30),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(10),
      O => \current_pc[31]_i_3_n_1\
    );
\current_pc[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(29),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(10),
      O => \current_pc[31]_i_4_n_1\
    );
\current_pc[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(28),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(10),
      O => \current_pc[31]_i_5_n_1\
    );
\current_pc[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => S_RST,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => S_alu_flag(0),
      O => \current_pc[31]_i_6_n_1\
    );
\current_pc[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(3),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(3),
      O => \current_pc[3]_i_2_n_1\
    );
\current_pc[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(2),
      O => \current_pc[3]_i_3_n_1\
    );
\current_pc[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(1),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(1),
      O => \current_pc[3]_i_4_n_1\
    );
\current_pc[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \^q\(0),
      I1 => \current_pc_reg[23]_1\(0),
      I2 => \current_pc[31]_i_6_n_1\,
      O => \current_pc[3]_i_5_n_1\
    );
\current_pc[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(7),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(6),
      O => \current_pc[7]_i_2_n_1\
    );
\current_pc[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(6),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(5),
      O => \current_pc[7]_i_3_n_1\
    );
\current_pc[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => S_current_pc(5),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(4),
      O => \current_pc[7]_i_4_n_1\
    );
\current_pc[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(4),
      I1 => \current_pc[31]_i_6_n_1\,
      I2 => \current_pc_reg[23]_1\(4),
      O => \current_pc[7]_i_5_n_1\
    );
\current_pc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(0),
      Q => \^q\(0)
    );
\current_pc_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(10),
      Q => S_current_pc(10)
    );
\current_pc_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(11),
      Q => S_current_pc(11)
    );
\current_pc_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_pc_reg[7]_i_1_n_1\,
      CO(3) => \current_pc_reg[11]_i_1_n_1\,
      CO(2 downto 0) => \NLW_current_pc_reg[11]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => S_current_pc(11 downto 8),
      O(3 downto 0) => \^alubrnch_out\(11 downto 8),
      S(3) => \current_pc[11]_i_2_n_1\,
      S(2) => \current_pc[11]_i_3_n_1\,
      S(1) => \current_pc[11]_i_4_n_1\,
      S(0) => \current_pc[11]_i_5_n_1\
    );
\current_pc_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(12),
      Q => S_current_pc(12)
    );
\current_pc_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(13),
      Q => S_current_pc(13)
    );
\current_pc_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(14),
      Q => S_current_pc(14)
    );
\current_pc_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(15),
      Q => S_current_pc(15)
    );
\current_pc_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_pc_reg[11]_i_1_n_1\,
      CO(3) => \current_pc_reg[15]_i_1_n_1\,
      CO(2 downto 0) => \NLW_current_pc_reg[15]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => S_current_pc(15 downto 12),
      O(3 downto 0) => \^alubrnch_out\(15 downto 12),
      S(3) => \current_pc[15]_i_2_n_1\,
      S(2) => \current_pc[15]_i_3_n_1\,
      S(1) => \current_pc[15]_i_4_n_1\,
      S(0) => \current_pc[15]_i_5_n_1\
    );
\current_pc_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(16),
      Q => \^q\(5)
    );
\current_pc_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(17),
      Q => S_current_pc(17)
    );
\current_pc_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(18),
      Q => \^q\(6)
    );
\current_pc_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(19),
      Q => \^q\(7)
    );
\current_pc_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_pc_reg[15]_i_1_n_1\,
      CO(3) => \current_pc_reg[19]_i_1_n_1\,
      CO(2 downto 0) => \NLW_current_pc_reg[19]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => \^q\(7 downto 6),
      DI(1) => S_current_pc(17),
      DI(0) => \^q\(5),
      O(3 downto 0) => \^alubrnch_out\(19 downto 16),
      S(3) => \current_pc[19]_i_2_n_1\,
      S(2) => \current_pc[19]_i_3_n_1\,
      S(1) => \current_pc[19]_i_4_n_1\,
      S(0) => \current_pc[19]_i_5_n_1\
    );
\current_pc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(1),
      Q => \^q\(1)
    );
\current_pc_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(20),
      Q => \^q\(8)
    );
\current_pc_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(21),
      Q => S_current_pc(21)
    );
\current_pc_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(22),
      Q => S_current_pc(22)
    );
\current_pc_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(23),
      Q => S_current_pc(23)
    );
\current_pc_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_pc_reg[19]_i_1_n_1\,
      CO(3) => \current_pc_reg[23]_i_1_n_1\,
      CO(2 downto 0) => \NLW_current_pc_reg[23]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => S_current_pc(23 downto 21),
      DI(0) => \^q\(8),
      O(3 downto 0) => \^alubrnch_out\(23 downto 20),
      S(3) => \current_pc[23]_i_2_n_1\,
      S(2) => \current_pc[23]_i_3_n_1\,
      S(1) => \current_pc[23]_i_4_n_1\,
      S(0) => \current_pc[23]_i_5_n_1\
    );
\current_pc_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(24),
      Q => S_current_pc(24)
    );
\current_pc_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(25),
      Q => S_current_pc(25)
    );
\current_pc_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(26),
      Q => S_current_pc(26)
    );
\current_pc_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(27),
      Q => S_current_pc(27)
    );
\current_pc_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_pc_reg[23]_i_1_n_1\,
      CO(3) => \current_pc_reg[27]_i_1_n_1\,
      CO(2 downto 0) => \NLW_current_pc_reg[27]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => S_current_pc(27 downto 24),
      O(3 downto 0) => \^alubrnch_out\(27 downto 24),
      S(3) => \current_pc[27]_i_2_n_1\,
      S(2) => \current_pc[27]_i_3_n_1\,
      S(1) => \current_pc[27]_i_4_n_1\,
      S(0) => \current_pc[27]_i_5_n_1\
    );
\current_pc_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(28),
      Q => S_current_pc(28)
    );
\current_pc_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(29),
      Q => S_current_pc(29)
    );
\current_pc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(2),
      Q => \^q\(2)
    );
\current_pc_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(30),
      Q => S_current_pc(30)
    );
\current_pc_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(31),
      Q => S_current_pc(31)
    );
\current_pc_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_pc_reg[27]_i_1_n_1\,
      CO(3 downto 0) => \NLW_current_pc_reg[31]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => S_current_pc(30 downto 28),
      O(3 downto 0) => \^alubrnch_out\(31 downto 28),
      S(3) => \current_pc[31]_i_2_n_1\,
      S(2) => \current_pc[31]_i_3_n_1\,
      S(1) => \current_pc[31]_i_4_n_1\,
      S(0) => \current_pc[31]_i_5_n_1\
    );
\current_pc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(3),
      Q => \^q\(3)
    );
\current_pc_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \current_pc_reg[3]_i_1_n_1\,
      CO(2 downto 0) => \NLW_current_pc_reg[3]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 0) => \^alubrnch_out\(3 downto 0),
      S(3) => \current_pc[3]_i_2_n_1\,
      S(2) => \current_pc[3]_i_3_n_1\,
      S(1) => \current_pc[3]_i_4_n_1\,
      S(0) => \current_pc[3]_i_5_n_1\
    );
\current_pc_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(4),
      Q => \^q\(4)
    );
\current_pc_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(5),
      Q => S_current_pc(5)
    );
\current_pc_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(6),
      Q => S_current_pc(6)
    );
\current_pc_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(7),
      Q => S_current_pc(7)
    );
\current_pc_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_pc_reg[3]_i_1_n_1\,
      CO(3) => \current_pc_reg[7]_i_1_n_1\,
      CO(2 downto 0) => \NLW_current_pc_reg[7]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => S_current_pc(7 downto 5),
      DI(0) => \^q\(4),
      O(3 downto 0) => \^alubrnch_out\(7 downto 4),
      S(3) => \current_pc[7]_i_2_n_1\,
      S(2) => \current_pc[7]_i_3_n_1\,
      S(1) => \current_pc[7]_i_4_n_1\,
      S(0) => \current_pc[7]_i_5_n_1\
    );
\current_pc_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(8),
      Q => S_current_pc(8)
    );
\current_pc_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_CLK_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^alubrnch_out\(9),
      Q => S_current_pc(9)
    );
\f3_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \current_pc_reg[4]_0\
    );
\imm12_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00150014"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(2),
      O => \current_pc_reg[4]_5\(0)
    );
\imm12_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \current_pc_reg[4]_5\(5)
    );
\imm12_reg[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => S_RST,
      O => \current_pc_reg[3]_8\(0)
    );
\imm12_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \current_pc_reg[4]_5\(1)
    );
\imm12_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0041"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \current_pc_reg[4]_5\(2)
    );
\imm12_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \current_pc_reg[4]_5\(3)
    );
\imm12_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(4),
      O => \current_pc_reg[4]_5\(4)
    );
n_0_1058_BUFG_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000111"
    )
        port map (
      I0 => S_RST,
      I1 => \^q\(4),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      O => \^n_0_1058_bufg_inst_n_1\
    );
\rd_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0045"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \current_pc_reg[1]_1\(0)
    );
\rd_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000201"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(1),
      O => \current_pc_reg[1]_1\(1)
    );
\rd_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000014"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \current_pc_reg[1]_1\(2)
    );
\rd_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000008F"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \current_pc_reg[1]_1\(3)
    );
\rd_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(4),
      O => \current_pc_reg[1]_2\(0)
    );
\rs0_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \current_pc_reg[4]_2\(0)
    );
\rs0_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000A4"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \current_pc_reg[4]_2\(1)
    );
\rs0_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \current_pc_reg[4]_2\(2)
    );
\rs0_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000054"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \current_pc_reg[4]_2\(3)
    );
\rs1_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000FE"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \current_pc_reg[4]_3\(0)
    );
\rs1_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10010001"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \current_pc_reg[4]_3\(1)
    );
\rs1_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00011001"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \current_pc_reg[4]_3\(2)
    );
\rs1_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \current_pc_reg[4]_3\(3)
    );
\rs1_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(4),
      O => \current_pc_reg[3]_6\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity t02_Word_Reg is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \current_pc_reg[3]\ : out STD_LOGIC;
    reg_source0_out0 : out STD_LOGIC_VECTOR ( 16 downto 0 );
    reg_source1_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \current_pc_reg[3]_0\ : out STD_LOGIC;
    \current_pc_reg[3]_1\ : out STD_LOGIC;
    \current_pc_reg[3]_2\ : out STD_LOGIC;
    \current_pc_reg[3]_3\ : out STD_LOGIC;
    \current_pc_reg[3]_4\ : out STD_LOGIC;
    \current_pc_reg[3]_5\ : out STD_LOGIC;
    \current_pc_reg[3]_6\ : out STD_LOGIC;
    \current_pc_reg[3]_7\ : out STD_LOGIC;
    \current_pc_reg[3]_8\ : out STD_LOGIC;
    \current_pc_reg[3]_9\ : out STD_LOGIC;
    \current_pc_reg[3]_10\ : out STD_LOGIC;
    \current_pc_reg[3]_11\ : out STD_LOGIC;
    \current_pc_reg[3]_12\ : out STD_LOGIC;
    \current_pc_reg[3]_13\ : out STD_LOGIC;
    \current_pc_reg[3]_14\ : out STD_LOGIC;
    \current_pc_reg[3]_15\ : out STD_LOGIC;
    \current_pc_reg[3]_16\ : out STD_LOGIC;
    \current_pc_reg[3]_17\ : out STD_LOGIC;
    \current_pc_reg[3]_18\ : out STD_LOGIC;
    \alu_data_out_reg[6]_i_4\ : out STD_LOGIC;
    \current_pc_reg[3]_19\ : out STD_LOGIC;
    \alu_data_out_reg[6]_i_4_0\ : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \alu_flag_reg[0]_i_13_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \alu_data_out_reg[7]_i_7_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \alu_data_out_reg[11]_i_7_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \alu_data_out_reg[15]_i_7_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \alu_data_out_reg[19]_i_8_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \alu_data_out_reg[23]_i_8_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \alu_data_out_reg[27]_i_7_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \alu_data_out_reg[31]_i_25_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \upordown_reg_rep__0\ : out STD_LOGIC;
    \upordown_reg_rep__0_0\ : out STD_LOGIC;
    upordown_reg : out STD_LOGIC;
    upordown_reg_0 : out STD_LOGIC;
    upordown_reg_1 : out STD_LOGIC;
    upordown_reg_rep : out STD_LOGIC;
    upordown_reg_2 : out STD_LOGIC;
    upordown_reg_3 : out STD_LOGIC;
    upordown_reg_4 : out STD_LOGIC;
    upordown_reg_rep_0 : out STD_LOGIC;
    upordown_reg_5 : out STD_LOGIC;
    upordown_reg_6 : out STD_LOGIC;
    upordown_reg_7 : out STD_LOGIC;
    upordown_reg_8 : out STD_LOGIC;
    upordown_reg_9 : out STD_LOGIC;
    upordown_reg_10 : out STD_LOGIC;
    upordown_reg_11 : out STD_LOGIC;
    upordown_reg_12 : out STD_LOGIC;
    \upordown_reg_rep__0_1\ : out STD_LOGIC;
    \upordown_reg_rep__0_2\ : out STD_LOGIC;
    \upordown_reg_rep__0_3\ : out STD_LOGIC;
    \upordown_reg_rep__0_4\ : out STD_LOGIC;
    \upordown_reg_rep__0_5\ : out STD_LOGIC;
    \upordown_reg_rep__0_6\ : out STD_LOGIC;
    \upordown_reg_rep__0_7\ : out STD_LOGIC;
    \upordown_reg_rep__0_8\ : out STD_LOGIC;
    \upordown_reg_rep__0_9\ : out STD_LOGIC;
    \upordown_reg_rep__0_10\ : out STD_LOGIC;
    \upordown_reg_rep__0_11\ : out STD_LOGIC;
    \upordown_reg_rep__0_12\ : out STD_LOGIC;
    upordown_reg_rep_1 : out STD_LOGIC;
    upordown_reg_rep_2 : out STD_LOGIC;
    upordown_reg_rep_3 : out STD_LOGIC;
    upordown_reg_rep_4 : out STD_LOGIC;
    upordown_reg_rep_5 : out STD_LOGIC;
    upordown_reg_rep_6 : out STD_LOGIC;
    upordown_reg_rep_7 : out STD_LOGIC;
    upordown_reg_rep_8 : out STD_LOGIC;
    upordown_reg_rep_9 : out STD_LOGIC;
    upordown_reg_rep_10 : out STD_LOGIC;
    upordown_reg_rep_11 : out STD_LOGIC;
    upordown_reg_rep_12 : out STD_LOGIC;
    upordown_reg_rep_13 : out STD_LOGIC;
    upordown_reg_rep_14 : out STD_LOGIC;
    upordown_reg_rep_15 : out STD_LOGIC;
    upordown_reg_rep_16 : out STD_LOGIC;
    upordown_reg_rep_17 : out STD_LOGIC;
    upordown_reg_rep_18 : out STD_LOGIC;
    upordown_reg_rep_19 : out STD_LOGIC;
    upordown_reg_rep_20 : out STD_LOGIC;
    upordown_reg_rep_21 : out STD_LOGIC;
    \current_pc_reg[3]_20\ : out STD_LOGIC;
    upordown_reg_13 : out STD_LOGIC;
    \alu_data_out_reg[31]\ : in STD_LOGIC;
    S_alu_data_in1 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \alu_data_out_reg[31]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_cnrtl_alu_data_srce_slkt : in STD_LOGIC;
    \LED_top_OBUF[10]_inst_i_9\ : in STD_LOGIC;
    \LED_top_OBUF[15]_inst_i_4\ : in STD_LOGIC;
    \LED_top_OBUF[8]_inst_i_3\ : in STD_LOGIC;
    \LED_top_OBUF[15]_inst_i_4_0\ : in STD_LOGIC;
    \LED_top_OBUF[9]_inst_i_3\ : in STD_LOGIC;
    upordown : in STD_LOGIC;
    \LED_top_OBUF[13]_inst_i_2\ : in STD_LOGIC;
    \LED_top_OBUF[14]_inst_i_2\ : in STD_LOGIC;
    \LED_top_OBUF[15]_inst_i_4_1\ : in STD_LOGIC;
    \LED_top_OBUF[3]_inst_i_25\ : in STD_LOGIC;
    \LED_top_OBUF[5]_inst_i_17\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_16\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_16_0\ : in STD_LOGIC;
    \LED_top_OBUF[3]_inst_i_25_0\ : in STD_LOGIC;
    \LED_top_OBUF[3]_inst_i_25_1\ : in STD_LOGIC;
    \LED_top_OBUF[15]_inst_i_15\ : in STD_LOGIC;
    \LED_top_OBUF[5]_inst_i_17_0\ : in STD_LOGIC;
    \LED_top_OBUF[5]_inst_i_17_1\ : in STD_LOGIC;
    \LED_top_OBUF[14]_inst_i_8\ : in STD_LOGIC;
    \LED_top_OBUF[13]_inst_i_8\ : in STD_LOGIC;
    \LED_top_OBUF[11]_inst_i_9\ : in STD_LOGIC;
    \LED_top_OBUF[10]_inst_i_9_0\ : in STD_LOGIC;
    \LED_top_OBUF[9]_inst_i_9\ : in STD_LOGIC;
    \LED_top_OBUF[8]_inst_i_9\ : in STD_LOGIC;
    \LED_top_OBUF[7]_inst_i_9\ : in STD_LOGIC;
    \LED_top_OBUF[6]_inst_i_12\ : in STD_LOGIC;
    \LED_top_OBUF[5]_inst_i_8\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_8\ : in STD_LOGIC;
    \LED_top_OBUF[3]_inst_i_25_2\ : in STD_LOGIC;
    S_CLK_BUFG : in STD_LOGIC;
    reg_write_enable : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \LED_top_OBUF[4]_inst_i_23\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_f7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \LED_top_OBUF[4]_inst_i_23_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \SEGMENT7_top[7]_i_48\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end t02_Word_Reg;

architecture STRUCTURE of t02_Word_Reg is
  signal S_reg_source0_out : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \alu_data_out_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[11]_i_4_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[11]_i_5_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[11]_i_6_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[11]_i_7_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[13]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[14]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[15]_i_4_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[15]_i_5_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[15]_i_6_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[15]_i_7_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[15]_i_8_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[15]_i_9_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[16]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[16]_i_4_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[17]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[17]_i_4_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[18]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[18]_i_4_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[19]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[19]_i_4_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[19]_i_5_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[19]_i_6_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[19]_i_7_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[19]_i_8_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[20]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[21]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[22]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[23]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[23]_i_4_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[23]_i_5_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[23]_i_6_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[23]_i_7_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[23]_i_8_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[23]_i_9_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[24]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[24]_i_4_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[25]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[25]_i_4_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[26]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[26]_i_4_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[27]_i_2_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[27]_i_4_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[27]_i_5_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[27]_i_6_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[27]_i_7_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[27]_i_8_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[27]_i_9_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[28]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[28]_i_4_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[29]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[29]_i_4_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[30]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[30]_i_4_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_13_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_15_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_17_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_19_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_20_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_21_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_22_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_23_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_24_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_25_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_37_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_38_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_39_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_40_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_5_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_7_n_5\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_7_n_6\ : STD_LOGIC;
  signal \alu_data_out_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[3]_i_4_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[3]_i_5_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[3]_i_6_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[3]_i_7_n_1\ : STD_LOGIC;
  signal \^alu_data_out_reg[6]_i_4\ : STD_LOGIC;
  signal \^alu_data_out_reg[6]_i_4_0\ : STD_LOGIC;
  signal \alu_data_out_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[7]_i_4_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[7]_i_5_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[7]_i_6_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[7]_i_7_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_10_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_11_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_12_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_13_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_14_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_15_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_16_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_17_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_18_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_25_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_26_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_27_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_28_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_29_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_30_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_31_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_32_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_33_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_42_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_43_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_44_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_45_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_6_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_7_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_8_n_1\ : STD_LOGIC;
  signal \alu_flag_reg[0]_i_9_n_1\ : STD_LOGIC;
  signal \^current_pc_reg[3]\ : STD_LOGIC;
  signal \^reg_source0_out0\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \^reg_source1_out\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_RAM_reg_reg_r1_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_reg_r1_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_reg_r1_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_reg_r1_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_reg_r1_0_31_30_31_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_reg_r1_0_31_30_31_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_reg_r1_0_31_30_31_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_reg_r1_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_reg_r2_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_reg_r2_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_reg_r2_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_reg_r2_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_reg_r2_0_31_30_31_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_reg_r2_0_31_30_31_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_reg_r2_0_31_30_31_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_reg_r2_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_alu_data_out_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_alu_data_out_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_alu_data_out_reg[19]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_alu_data_out_reg[23]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_alu_data_out_reg[27]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_alu_data_out_reg[31]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_data_out_reg[3]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_alu_data_out_reg[7]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_alu_flag_reg[0]_i_10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_alu_flag_reg[0]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_flag_reg[0]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_alu_flag_reg[0]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_flag_reg[0]_i_25_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_alu_flag_reg[0]_i_25_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_flag_reg[0]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_flag_reg[0]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_flag_reg[0]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_flag_reg[0]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_flag_reg[0]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_alu_flag_reg[0]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_reg_r1_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of RAM_reg_reg_r1_0_31_0_5 : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of RAM_reg_reg_r1_0_31_0_5 : label is "RAM_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of RAM_reg_reg_r1_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of RAM_reg_reg_r1_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of RAM_reg_reg_r1_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of RAM_reg_reg_r1_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of RAM_reg_reg_r1_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of RAM_reg_reg_r1_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_reg_r1_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_reg_r1_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of RAM_reg_reg_r1_0_31_12_17 : label is "RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_reg_r1_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_reg_r1_0_31_12_17 : label is 0;
  attribute ram_addr_end of RAM_reg_reg_r1_0_31_12_17 : label is 31;
  attribute ram_offset of RAM_reg_reg_r1_0_31_12_17 : label is 0;
  attribute ram_slice_begin of RAM_reg_reg_r1_0_31_12_17 : label is 12;
  attribute ram_slice_end of RAM_reg_reg_r1_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_reg_r1_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_reg_r1_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of RAM_reg_reg_r1_0_31_18_23 : label is "RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_reg_r1_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_reg_r1_0_31_18_23 : label is 0;
  attribute ram_addr_end of RAM_reg_reg_r1_0_31_18_23 : label is 31;
  attribute ram_offset of RAM_reg_reg_r1_0_31_18_23 : label is 0;
  attribute ram_slice_begin of RAM_reg_reg_r1_0_31_18_23 : label is 18;
  attribute ram_slice_end of RAM_reg_reg_r1_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_reg_r1_0_31_24_29 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_reg_r1_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of RAM_reg_reg_r1_0_31_24_29 : label is "RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_reg_r1_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_reg_r1_0_31_24_29 : label is 0;
  attribute ram_addr_end of RAM_reg_reg_r1_0_31_24_29 : label is 31;
  attribute ram_offset of RAM_reg_reg_r1_0_31_24_29 : label is 0;
  attribute ram_slice_begin of RAM_reg_reg_r1_0_31_24_29 : label is 24;
  attribute ram_slice_end of RAM_reg_reg_r1_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_reg_r1_0_31_30_31 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_reg_r1_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of RAM_reg_reg_r1_0_31_30_31 : label is "RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_reg_r1_0_31_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_reg_r1_0_31_30_31 : label is 0;
  attribute ram_addr_end of RAM_reg_reg_r1_0_31_30_31 : label is 31;
  attribute ram_offset of RAM_reg_reg_r1_0_31_30_31 : label is 0;
  attribute ram_slice_begin of RAM_reg_reg_r1_0_31_30_31 : label is 30;
  attribute ram_slice_end of RAM_reg_reg_r1_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_reg_r1_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_reg_r1_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of RAM_reg_reg_r1_0_31_6_11 : label is "RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_reg_r1_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_reg_r1_0_31_6_11 : label is 0;
  attribute ram_addr_end of RAM_reg_reg_r1_0_31_6_11 : label is 31;
  attribute ram_offset of RAM_reg_reg_r1_0_31_6_11 : label is 0;
  attribute ram_slice_begin of RAM_reg_reg_r1_0_31_6_11 : label is 6;
  attribute ram_slice_end of RAM_reg_reg_r1_0_31_6_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_reg_r2_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_reg_r2_0_31_0_5 : label is 1024;
  attribute RTL_RAM_NAME of RAM_reg_reg_r2_0_31_0_5 : label is "RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_reg_r2_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_reg_r2_0_31_0_5 : label is 0;
  attribute ram_addr_end of RAM_reg_reg_r2_0_31_0_5 : label is 31;
  attribute ram_offset of RAM_reg_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_begin of RAM_reg_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_end of RAM_reg_reg_r2_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_reg_r2_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_reg_r2_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of RAM_reg_reg_r2_0_31_12_17 : label is "RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_reg_r2_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_reg_r2_0_31_12_17 : label is 0;
  attribute ram_addr_end of RAM_reg_reg_r2_0_31_12_17 : label is 31;
  attribute ram_offset of RAM_reg_reg_r2_0_31_12_17 : label is 0;
  attribute ram_slice_begin of RAM_reg_reg_r2_0_31_12_17 : label is 12;
  attribute ram_slice_end of RAM_reg_reg_r2_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_reg_r2_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_reg_r2_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of RAM_reg_reg_r2_0_31_18_23 : label is "RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_reg_r2_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_reg_r2_0_31_18_23 : label is 0;
  attribute ram_addr_end of RAM_reg_reg_r2_0_31_18_23 : label is 31;
  attribute ram_offset of RAM_reg_reg_r2_0_31_18_23 : label is 0;
  attribute ram_slice_begin of RAM_reg_reg_r2_0_31_18_23 : label is 18;
  attribute ram_slice_end of RAM_reg_reg_r2_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_reg_r2_0_31_24_29 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_reg_r2_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of RAM_reg_reg_r2_0_31_24_29 : label is "RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_reg_r2_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_reg_r2_0_31_24_29 : label is 0;
  attribute ram_addr_end of RAM_reg_reg_r2_0_31_24_29 : label is 31;
  attribute ram_offset of RAM_reg_reg_r2_0_31_24_29 : label is 0;
  attribute ram_slice_begin of RAM_reg_reg_r2_0_31_24_29 : label is 24;
  attribute ram_slice_end of RAM_reg_reg_r2_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_reg_r2_0_31_30_31 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_reg_r2_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of RAM_reg_reg_r2_0_31_30_31 : label is "RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_reg_r2_0_31_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_reg_r2_0_31_30_31 : label is 0;
  attribute ram_addr_end of RAM_reg_reg_r2_0_31_30_31 : label is 31;
  attribute ram_offset of RAM_reg_reg_r2_0_31_30_31 : label is 0;
  attribute ram_slice_begin of RAM_reg_reg_r2_0_31_30_31 : label is 30;
  attribute ram_slice_end of RAM_reg_reg_r2_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_reg_r2_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_reg_r2_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of RAM_reg_reg_r2_0_31_6_11 : label is "RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_reg_r2_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_reg_r2_0_31_6_11 : label is 0;
  attribute ram_addr_end of RAM_reg_reg_r2_0_31_6_11 : label is 31;
  attribute ram_offset of RAM_reg_reg_r2_0_31_6_11 : label is 0;
  attribute ram_slice_begin of RAM_reg_reg_r2_0_31_6_11 : label is 6;
  attribute ram_slice_end of RAM_reg_reg_r2_0_31_6_11 : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \alu_data_out_reg[11]_i_2\ : label is 35;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \alu_data_out_reg[11]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \alu_data_out_reg[15]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \alu_data_out_reg[15]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \alu_data_out_reg[19]_i_3\ : label is 35;
  attribute OPT_MODIFIED of \alu_data_out_reg[19]_i_3\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \alu_data_out_reg[23]_i_3\ : label is 35;
  attribute OPT_MODIFIED of \alu_data_out_reg[23]_i_3\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \alu_data_out_reg[27]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \alu_data_out_reg[27]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \alu_data_out_reg[31]_i_7\ : label is 35;
  attribute OPT_MODIFIED of \alu_data_out_reg[31]_i_7\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \alu_data_out_reg[3]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \alu_data_out_reg[3]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \alu_data_out_reg[7]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \alu_data_out_reg[7]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \alu_flag_reg[0]_i_10\ : label is "SWEEP";
  attribute OPT_MODIFIED of \alu_flag_reg[0]_i_14\ : label is "SWEEP";
  attribute OPT_MODIFIED of \alu_flag_reg[0]_i_25\ : label is "SWEEP";
  attribute OPT_MODIFIED of \alu_flag_reg[0]_i_4\ : label is "SWEEP";
  attribute OPT_MODIFIED of \alu_flag_reg[0]_i_5\ : label is "SWEEP";
  attribute OPT_MODIFIED of \alu_flag_reg[0]_i_6\ : label is "SWEEP";
begin
  \alu_data_out_reg[6]_i_4\ <= \^alu_data_out_reg[6]_i_4\;
  \alu_data_out_reg[6]_i_4_0\ <= \^alu_data_out_reg[6]_i_4_0\;
  \current_pc_reg[3]\ <= \^current_pc_reg[3]\;
  reg_source0_out0(16 downto 0) <= \^reg_source0_out0\(16 downto 0);
  reg_source1_out(31 downto 0) <= \^reg_source1_out\(31 downto 0);
\LED_top_OBUF[0]_inst_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source0_out0\(11),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source0_out0\(0),
      O => upordown_reg_rep_21
    );
\LED_top_OBUF[0]_inst_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source1_out\(16),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source1_out\(0),
      O => upordown_reg_rep_20
    );
\LED_top_OBUF[10]_inst_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source0_out0\(14),
      I1 => \LED_top_OBUF[10]_inst_i_9\,
      I2 => \^reg_source0_out0\(8),
      O => \upordown_reg_rep__0_6\
    );
\LED_top_OBUF[10]_inst_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source1_out\(26),
      I1 => \LED_top_OBUF[10]_inst_i_9\,
      I2 => \^reg_source1_out\(10),
      O => \upordown_reg_rep__0_5\
    );
\LED_top_OBUF[10]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2FFE200FF00FF00"
    )
        port map (
      I0 => \^reg_source1_out\(10),
      I1 => \LED_top_OBUF[10]_inst_i_9\,
      I2 => \^reg_source1_out\(26),
      I3 => \LED_top_OBUF[3]_inst_i_25_0\,
      I4 => \LED_top_OBUF[10]_inst_i_9_0\,
      I5 => \LED_top_OBUF[3]_inst_i_25_1\,
      O => \upordown_reg_rep__0_4\
    );
\LED_top_OBUF[11]_inst_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source0_out0\(15),
      I1 => \LED_top_OBUF[10]_inst_i_9\,
      I2 => \^reg_source0_out0\(9),
      O => \upordown_reg_rep__0_3\
    );
\LED_top_OBUF[11]_inst_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source1_out\(27),
      I1 => \LED_top_OBUF[10]_inst_i_9\,
      I2 => \^reg_source1_out\(11),
      O => \upordown_reg_rep__0_2\
    );
\LED_top_OBUF[11]_inst_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2FFE200FF00FF00"
    )
        port map (
      I0 => \^reg_source1_out\(11),
      I1 => \LED_top_OBUF[10]_inst_i_9\,
      I2 => \^reg_source1_out\(27),
      I3 => \LED_top_OBUF[3]_inst_i_25_0\,
      I4 => \LED_top_OBUF[11]_inst_i_9\,
      I5 => \LED_top_OBUF[3]_inst_i_25_1\,
      O => \upordown_reg_rep__0_1\
    );
\LED_top_OBUF[12]_inst_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source0_out0\(16),
      I1 => upordown,
      I2 => \^reg_source0_out0\(10),
      O => upordown_reg_11
    );
\LED_top_OBUF[12]_inst_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source1_out\(28),
      I1 => upordown,
      I2 => \^reg_source1_out\(12),
      O => upordown_reg_12
    );
\LED_top_OBUF[12]_inst_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => \^reg_source1_out\(12),
      I1 => upordown,
      I2 => \^reg_source1_out\(28),
      I3 => \LED_top_OBUF[3]_inst_i_25_1\,
      O => upordown_reg_13
    );
\LED_top_OBUF[13]_inst_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2FFE200FF00FF00"
    )
        port map (
      I0 => \^reg_source1_out\(13),
      I1 => upordown,
      I2 => \^reg_source1_out\(29),
      I3 => \LED_top_OBUF[3]_inst_i_25_0\,
      I4 => \LED_top_OBUF[13]_inst_i_8\,
      I5 => \LED_top_OBUF[3]_inst_i_25_1\,
      O => upordown_reg_8
    );
\LED_top_OBUF[13]_inst_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source1_out\(29),
      I1 => upordown,
      I2 => \^reg_source1_out\(13),
      O => upordown_reg_9
    );
\LED_top_OBUF[13]_inst_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_reg_source0_out(29),
      I1 => upordown,
      I2 => S_reg_source0_out(13),
      O => upordown_reg_10
    );
\LED_top_OBUF[13]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => S_reg_source0_out(29),
      I1 => upordown,
      I2 => S_reg_source0_out(13),
      I3 => \LED_top_OBUF[15]_inst_i_4\,
      I4 => \LED_top_OBUF[13]_inst_i_2\,
      I5 => \LED_top_OBUF[15]_inst_i_4_0\,
      O => upordown_reg
    );
\LED_top_OBUF[14]_inst_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2FFE200FF00FF00"
    )
        port map (
      I0 => \^reg_source1_out\(14),
      I1 => upordown,
      I2 => \^reg_source1_out\(30),
      I3 => \LED_top_OBUF[3]_inst_i_25_0\,
      I4 => \LED_top_OBUF[14]_inst_i_8\,
      I5 => \LED_top_OBUF[3]_inst_i_25_1\,
      O => upordown_reg_6
    );
\LED_top_OBUF[14]_inst_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_reg_source0_out(30),
      I1 => upordown,
      I2 => S_reg_source0_out(14),
      O => upordown_reg_5
    );
\LED_top_OBUF[14]_inst_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source1_out\(30),
      I1 => upordown,
      I2 => \^reg_source1_out\(14),
      O => upordown_reg_7
    );
\LED_top_OBUF[14]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => S_reg_source0_out(30),
      I1 => upordown,
      I2 => S_reg_source0_out(14),
      I3 => \LED_top_OBUF[15]_inst_i_4\,
      I4 => \LED_top_OBUF[14]_inst_i_2\,
      I5 => \LED_top_OBUF[15]_inst_i_4_0\,
      O => upordown_reg_0
    );
\LED_top_OBUF[15]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => S_reg_source0_out(31),
      I1 => upordown,
      I2 => S_reg_source0_out(15),
      I3 => \LED_top_OBUF[15]_inst_i_4\,
      I4 => \LED_top_OBUF[15]_inst_i_4_1\,
      I5 => \LED_top_OBUF[15]_inst_i_4_0\,
      O => upordown_reg_1
    );
\LED_top_OBUF[15]_inst_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_reg_source0_out(31),
      I1 => upordown,
      I2 => S_reg_source0_out(15),
      O => upordown_reg_4
    );
\LED_top_OBUF[15]_inst_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source1_out\(31),
      I1 => upordown,
      I2 => \^reg_source1_out\(15),
      O => upordown_reg_3
    );
\LED_top_OBUF[15]_inst_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D0000FF1DFF00FF"
    )
        port map (
      I0 => \^reg_source1_out\(15),
      I1 => upordown,
      I2 => \^reg_source1_out\(31),
      I3 => \LED_top_OBUF[3]_inst_i_25_0\,
      I4 => \LED_top_OBUF[3]_inst_i_25_1\,
      I5 => \LED_top_OBUF[15]_inst_i_15\,
      O => upordown_reg_2
    );
\LED_top_OBUF[1]_inst_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source1_out\(17),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source1_out\(1),
      O => upordown_reg_rep_18
    );
\LED_top_OBUF[1]_inst_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_reg_source0_out(17),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source0_out0\(1),
      O => upordown_reg_rep_19
    );
\LED_top_OBUF[2]_inst_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_reg_source0_out(18),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source0_out0\(2),
      O => upordown_reg_rep_17
    );
\LED_top_OBUF[2]_inst_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source1_out\(18),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source1_out\(2),
      O => upordown_reg_rep_16
    );
\LED_top_OBUF[3]_inst_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_reg_source0_out(19),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source0_out0\(3),
      O => upordown_reg_rep_15
    );
\LED_top_OBUF[3]_inst_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source1_out\(19),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source1_out\(3),
      O => upordown_reg_rep_14
    );
\LED_top_OBUF[3]_inst_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2FFE200FF00FF00"
    )
        port map (
      I0 => \^reg_source1_out\(3),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source1_out\(19),
      I3 => \LED_top_OBUF[3]_inst_i_25_0\,
      I4 => \LED_top_OBUF[3]_inst_i_25_2\,
      I5 => \LED_top_OBUF[3]_inst_i_25_1\,
      O => upordown_reg_rep_13
    );
\LED_top_OBUF[4]_inst_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source0_out0\(12),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source0_out0\(4),
      O => upordown_reg_rep_12
    );
\LED_top_OBUF[4]_inst_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2FFE200FF00FF00"
    )
        port map (
      I0 => \^reg_source1_out\(4),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source1_out\(20),
      I3 => \LED_top_OBUF[3]_inst_i_25_0\,
      I4 => \LED_top_OBUF[4]_inst_i_8\,
      I5 => \LED_top_OBUF[3]_inst_i_25_1\,
      O => upordown_reg_rep_10
    );
\LED_top_OBUF[4]_inst_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB800B800B800"
    )
        port map (
      I0 => \^reg_source1_out\(20),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source1_out\(4),
      I3 => \LED_top_OBUF[5]_inst_i_17\,
      I4 => \LED_top_OBUF[4]_inst_i_16\,
      I5 => \LED_top_OBUF[4]_inst_i_16_0\,
      O => upordown_reg_rep
    );
\LED_top_OBUF[4]_inst_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source1_out\(20),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source1_out\(4),
      O => upordown_reg_rep_11
    );
\LED_top_OBUF[5]_inst_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_reg_source0_out(21),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source0_out0\(5),
      O => upordown_reg_rep_7
    );
\LED_top_OBUF[5]_inst_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D0000FF1DFF00FF"
    )
        port map (
      I0 => \^reg_source1_out\(5),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source1_out\(21),
      I3 => \LED_top_OBUF[3]_inst_i_25_0\,
      I4 => \LED_top_OBUF[3]_inst_i_25_1\,
      I5 => \LED_top_OBUF[5]_inst_i_8\,
      O => upordown_reg_rep_8
    );
\LED_top_OBUF[5]_inst_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source1_out\(21),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source1_out\(5),
      O => upordown_reg_rep_9
    );
\LED_top_OBUF[5]_inst_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB800B800B800"
    )
        port map (
      I0 => \^reg_source1_out\(21),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source1_out\(5),
      I3 => \LED_top_OBUF[5]_inst_i_17\,
      I4 => \LED_top_OBUF[5]_inst_i_17_0\,
      I5 => \LED_top_OBUF[5]_inst_i_17_1\,
      O => upordown_reg_rep_0
    );
\LED_top_OBUF[6]_inst_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_reg_source0_out(22),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source0_out0\(6),
      O => upordown_reg_rep_6
    );
\LED_top_OBUF[6]_inst_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source1_out\(22),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source1_out\(6),
      O => upordown_reg_rep_5
    );
\LED_top_OBUF[6]_inst_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2FFE200FF00FF00"
    )
        port map (
      I0 => \^reg_source1_out\(6),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source1_out\(22),
      I3 => \LED_top_OBUF[3]_inst_i_25_0\,
      I4 => \LED_top_OBUF[6]_inst_i_12\,
      I5 => \LED_top_OBUF[3]_inst_i_25_1\,
      O => upordown_reg_rep_4
    );
\LED_top_OBUF[7]_inst_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source0_out0\(13),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source0_out0\(7),
      O => upordown_reg_rep_3
    );
\LED_top_OBUF[7]_inst_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source1_out\(23),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source1_out\(7),
      O => upordown_reg_rep_2
    );
\LED_top_OBUF[7]_inst_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2FFE200FF00FF00"
    )
        port map (
      I0 => \^reg_source1_out\(7),
      I1 => \LED_top_OBUF[3]_inst_i_25\,
      I2 => \^reg_source1_out\(23),
      I3 => \LED_top_OBUF[3]_inst_i_25_0\,
      I4 => \LED_top_OBUF[7]_inst_i_9\,
      I5 => \LED_top_OBUF[3]_inst_i_25_1\,
      O => upordown_reg_rep_1
    );
\LED_top_OBUF[8]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => S_reg_source0_out(24),
      I1 => \LED_top_OBUF[10]_inst_i_9\,
      I2 => S_reg_source0_out(8),
      I3 => \LED_top_OBUF[15]_inst_i_4\,
      I4 => \LED_top_OBUF[8]_inst_i_3\,
      I5 => \LED_top_OBUF[15]_inst_i_4_0\,
      O => \upordown_reg_rep__0\
    );
\LED_top_OBUF[8]_inst_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_reg_source0_out(24),
      I1 => \LED_top_OBUF[10]_inst_i_9\,
      I2 => S_reg_source0_out(8),
      O => \upordown_reg_rep__0_12\
    );
\LED_top_OBUF[8]_inst_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source1_out\(24),
      I1 => \LED_top_OBUF[10]_inst_i_9\,
      I2 => \^reg_source1_out\(8),
      O => \upordown_reg_rep__0_11\
    );
\LED_top_OBUF[8]_inst_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2FFE200FF00FF00"
    )
        port map (
      I0 => \^reg_source1_out\(8),
      I1 => \LED_top_OBUF[10]_inst_i_9\,
      I2 => \^reg_source1_out\(24),
      I3 => \LED_top_OBUF[3]_inst_i_25_0\,
      I4 => \LED_top_OBUF[8]_inst_i_9\,
      I5 => \LED_top_OBUF[3]_inst_i_25_1\,
      O => \upordown_reg_rep__0_10\
    );
\LED_top_OBUF[9]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => S_reg_source0_out(25),
      I1 => \LED_top_OBUF[10]_inst_i_9\,
      I2 => S_reg_source0_out(9),
      I3 => \LED_top_OBUF[15]_inst_i_4\,
      I4 => \LED_top_OBUF[9]_inst_i_3\,
      I5 => \LED_top_OBUF[15]_inst_i_4_0\,
      O => \upordown_reg_rep__0_0\
    );
\LED_top_OBUF[9]_inst_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_reg_source0_out(25),
      I1 => \LED_top_OBUF[10]_inst_i_9\,
      I2 => S_reg_source0_out(9),
      O => \upordown_reg_rep__0_9\
    );
\LED_top_OBUF[9]_inst_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_source1_out\(25),
      I1 => \LED_top_OBUF[10]_inst_i_9\,
      I2 => \^reg_source1_out\(9),
      O => \upordown_reg_rep__0_8\
    );
\LED_top_OBUF[9]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2FFE200FF00FF00"
    )
        port map (
      I0 => \^reg_source1_out\(9),
      I1 => \LED_top_OBUF[10]_inst_i_9\,
      I2 => \^reg_source1_out\(25),
      I3 => \LED_top_OBUF[3]_inst_i_25_0\,
      I4 => \LED_top_OBUF[9]_inst_i_9\,
      I5 => \LED_top_OBUF[3]_inst_i_25_1\,
      O => \upordown_reg_rep__0_7\
    );
RAM_reg_reg_r1_0_31_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \LED_top_OBUF[4]_inst_i_23\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \LED_top_OBUF[4]_inst_i_23\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \LED_top_OBUF[4]_inst_i_23\(3 downto 0),
      ADDRD(4) => S_f7(0),
      ADDRD(3 downto 0) => \LED_top_OBUF[4]_inst_i_23_0\(3 downto 0),
      DIA(1 downto 0) => p_0_in(1 downto 0),
      DIB(1 downto 0) => p_0_in(3 downto 2),
      DIC(1 downto 0) => p_0_in(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^reg_source1_out\(1 downto 0),
      DOB(1 downto 0) => \^reg_source1_out\(3 downto 2),
      DOC(1 downto 0) => \^reg_source1_out\(5 downto 4),
      DOD(1 downto 0) => NLW_RAM_reg_reg_r1_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_CLK_BUFG,
      WE => reg_write_enable
    );
RAM_reg_reg_r1_0_31_12_17: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \LED_top_OBUF[4]_inst_i_23\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \LED_top_OBUF[4]_inst_i_23\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \LED_top_OBUF[4]_inst_i_23\(3 downto 0),
      ADDRD(4) => S_f7(0),
      ADDRD(3 downto 0) => \LED_top_OBUF[4]_inst_i_23_0\(3 downto 0),
      DIA(1 downto 0) => p_0_in(13 downto 12),
      DIB(1 downto 0) => p_0_in(15 downto 14),
      DIC(1 downto 0) => p_0_in(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^reg_source1_out\(13 downto 12),
      DOB(1 downto 0) => \^reg_source1_out\(15 downto 14),
      DOC(1 downto 0) => \^reg_source1_out\(17 downto 16),
      DOD(1 downto 0) => NLW_RAM_reg_reg_r1_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_CLK_BUFG,
      WE => reg_write_enable
    );
RAM_reg_reg_r1_0_31_18_23: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \LED_top_OBUF[4]_inst_i_23\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \LED_top_OBUF[4]_inst_i_23\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \LED_top_OBUF[4]_inst_i_23\(3 downto 0),
      ADDRD(4) => S_f7(0),
      ADDRD(3 downto 0) => \LED_top_OBUF[4]_inst_i_23_0\(3 downto 0),
      DIA(1 downto 0) => p_0_in(19 downto 18),
      DIB(1 downto 0) => p_0_in(21 downto 20),
      DIC(1 downto 0) => p_0_in(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^reg_source1_out\(19 downto 18),
      DOB(1 downto 0) => \^reg_source1_out\(21 downto 20),
      DOC(1 downto 0) => \^reg_source1_out\(23 downto 22),
      DOD(1 downto 0) => NLW_RAM_reg_reg_r1_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_CLK_BUFG,
      WE => reg_write_enable
    );
RAM_reg_reg_r1_0_31_24_29: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \LED_top_OBUF[4]_inst_i_23\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \LED_top_OBUF[4]_inst_i_23\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \LED_top_OBUF[4]_inst_i_23\(3 downto 0),
      ADDRD(4) => S_f7(0),
      ADDRD(3 downto 0) => \LED_top_OBUF[4]_inst_i_23_0\(3 downto 0),
      DIA(1 downto 0) => p_0_in(25 downto 24),
      DIB(1 downto 0) => p_0_in(27 downto 26),
      DIC(1 downto 0) => p_0_in(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^reg_source1_out\(25 downto 24),
      DOB(1 downto 0) => \^reg_source1_out\(27 downto 26),
      DOC(1 downto 0) => \^reg_source1_out\(29 downto 28),
      DOD(1 downto 0) => NLW_RAM_reg_reg_r1_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_CLK_BUFG,
      WE => reg_write_enable
    );
RAM_reg_reg_r1_0_31_30_31: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \LED_top_OBUF[4]_inst_i_23\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \LED_top_OBUF[4]_inst_i_23\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \LED_top_OBUF[4]_inst_i_23\(3 downto 0),
      ADDRD(4) => S_f7(0),
      ADDRD(3 downto 0) => \LED_top_OBUF[4]_inst_i_23_0\(3 downto 0),
      DIA(1 downto 0) => p_0_in(31 downto 30),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^reg_source1_out\(31 downto 30),
      DOB(1 downto 0) => NLW_RAM_reg_reg_r1_0_31_30_31_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_RAM_reg_reg_r1_0_31_30_31_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_RAM_reg_reg_r1_0_31_30_31_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_CLK_BUFG,
      WE => reg_write_enable
    );
RAM_reg_reg_r1_0_31_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \LED_top_OBUF[4]_inst_i_23\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \LED_top_OBUF[4]_inst_i_23\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \LED_top_OBUF[4]_inst_i_23\(3 downto 0),
      ADDRD(4) => S_f7(0),
      ADDRD(3 downto 0) => \LED_top_OBUF[4]_inst_i_23_0\(3 downto 0),
      DIA(1 downto 0) => p_0_in(7 downto 6),
      DIB(1 downto 0) => p_0_in(9 downto 8),
      DIC(1 downto 0) => p_0_in(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^reg_source1_out\(7 downto 6),
      DOB(1 downto 0) => \^reg_source1_out\(9 downto 8),
      DOC(1 downto 0) => \^reg_source1_out\(11 downto 10),
      DOD(1 downto 0) => NLW_RAM_reg_reg_r1_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_CLK_BUFG,
      WE => reg_write_enable
    );
RAM_reg_reg_r2_0_31_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \SEGMENT7_top[7]_i_48\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \SEGMENT7_top[7]_i_48\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \SEGMENT7_top[7]_i_48\(3 downto 0),
      ADDRD(4) => S_f7(0),
      ADDRD(3 downto 0) => \LED_top_OBUF[4]_inst_i_23_0\(3 downto 0),
      DIA(1 downto 0) => p_0_in(1 downto 0),
      DIB(1 downto 0) => p_0_in(3 downto 2),
      DIC(1 downto 0) => p_0_in(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^reg_source0_out0\(1 downto 0),
      DOB(1 downto 0) => \^reg_source0_out0\(3 downto 2),
      DOC(1 downto 0) => \^reg_source0_out0\(5 downto 4),
      DOD(1 downto 0) => NLW_RAM_reg_reg_r2_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_CLK_BUFG,
      WE => reg_write_enable
    );
RAM_reg_reg_r2_0_31_12_17: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \SEGMENT7_top[7]_i_48\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \SEGMENT7_top[7]_i_48\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \SEGMENT7_top[7]_i_48\(3 downto 0),
      ADDRD(4) => S_f7(0),
      ADDRD(3 downto 0) => \LED_top_OBUF[4]_inst_i_23_0\(3 downto 0),
      DIA(1 downto 0) => p_0_in(13 downto 12),
      DIB(1 downto 0) => p_0_in(15 downto 14),
      DIC(1 downto 0) => p_0_in(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1) => S_reg_source0_out(13),
      DOA(0) => \^reg_source0_out0\(10),
      DOB(1 downto 0) => S_reg_source0_out(15 downto 14),
      DOC(1) => S_reg_source0_out(17),
      DOC(0) => \^reg_source0_out0\(11),
      DOD(1 downto 0) => NLW_RAM_reg_reg_r2_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_CLK_BUFG,
      WE => reg_write_enable
    );
RAM_reg_reg_r2_0_31_18_23: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \SEGMENT7_top[7]_i_48\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \SEGMENT7_top[7]_i_48\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \SEGMENT7_top[7]_i_48\(3 downto 0),
      ADDRD(4) => S_f7(0),
      ADDRD(3 downto 0) => \LED_top_OBUF[4]_inst_i_23_0\(3 downto 0),
      DIA(1 downto 0) => p_0_in(19 downto 18),
      DIB(1 downto 0) => p_0_in(21 downto 20),
      DIC(1 downto 0) => p_0_in(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => S_reg_source0_out(19 downto 18),
      DOB(1) => S_reg_source0_out(21),
      DOB(0) => \^reg_source0_out0\(12),
      DOC(1) => \^reg_source0_out0\(13),
      DOC(0) => S_reg_source0_out(22),
      DOD(1 downto 0) => NLW_RAM_reg_reg_r2_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_CLK_BUFG,
      WE => reg_write_enable
    );
RAM_reg_reg_r2_0_31_24_29: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \SEGMENT7_top[7]_i_48\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \SEGMENT7_top[7]_i_48\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \SEGMENT7_top[7]_i_48\(3 downto 0),
      ADDRD(4) => S_f7(0),
      ADDRD(3 downto 0) => \LED_top_OBUF[4]_inst_i_23_0\(3 downto 0),
      DIA(1 downto 0) => p_0_in(25 downto 24),
      DIB(1 downto 0) => p_0_in(27 downto 26),
      DIC(1 downto 0) => p_0_in(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => S_reg_source0_out(25 downto 24),
      DOB(1 downto 0) => \^reg_source0_out0\(15 downto 14),
      DOC(1) => S_reg_source0_out(29),
      DOC(0) => \^reg_source0_out0\(16),
      DOD(1 downto 0) => NLW_RAM_reg_reg_r2_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_CLK_BUFG,
      WE => reg_write_enable
    );
RAM_reg_reg_r2_0_31_30_31: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \SEGMENT7_top[7]_i_48\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \SEGMENT7_top[7]_i_48\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \SEGMENT7_top[7]_i_48\(3 downto 0),
      ADDRD(4) => S_f7(0),
      ADDRD(3 downto 0) => \LED_top_OBUF[4]_inst_i_23_0\(3 downto 0),
      DIA(1 downto 0) => p_0_in(31 downto 30),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => S_reg_source0_out(31 downto 30),
      DOB(1 downto 0) => NLW_RAM_reg_reg_r2_0_31_30_31_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_RAM_reg_reg_r2_0_31_30_31_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_RAM_reg_reg_r2_0_31_30_31_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_CLK_BUFG,
      WE => reg_write_enable
    );
RAM_reg_reg_r2_0_31_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \SEGMENT7_top[7]_i_48\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \SEGMENT7_top[7]_i_48\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \SEGMENT7_top[7]_i_48\(3 downto 0),
      ADDRD(4) => S_f7(0),
      ADDRD(3 downto 0) => \LED_top_OBUF[4]_inst_i_23_0\(3 downto 0),
      DIA(1 downto 0) => p_0_in(7 downto 6),
      DIB(1 downto 0) => p_0_in(9 downto 8),
      DIC(1 downto 0) => p_0_in(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^reg_source0_out0\(7 downto 6),
      DOB(1 downto 0) => S_reg_source0_out(9 downto 8),
      DOC(1 downto 0) => \^reg_source0_out0\(9 downto 8),
      DOD(1 downto 0) => NLW_RAM_reg_reg_r2_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_CLK_BUFG,
      WE => reg_write_enable
    );
\alu_data_out_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_data_out_reg[7]_i_2_n_1\,
      CO(3) => \alu_data_out_reg[11]_i_2_n_1\,
      CO(2 downto 0) => \NLW_alu_data_out_reg[11]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => \^reg_source0_out0\(9 downto 8),
      DI(1 downto 0) => S_reg_source0_out(9 downto 8),
      O(3 downto 0) => \alu_data_out_reg[11]_i_7_0\(3 downto 0),
      S(3) => \alu_data_out_reg[11]_i_4_n_1\,
      S(2) => \alu_data_out_reg[11]_i_5_n_1\,
      S(1) => \alu_data_out_reg[11]_i_6_n_1\,
      S(0) => \alu_data_out_reg[11]_i_7_n_1\
    );
\alu_data_out_reg[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \^alu_data_out_reg[6]_i_4_0\,
      I1 => Q(0),
      I2 => \^reg_source1_out\(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[13]_i_3_n_1\,
      O => \current_pc_reg[3]_19\
    );
\alu_data_out_reg[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => \^reg_source0_out0\(9),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(11),
      I3 => Q(9),
      O => \alu_data_out_reg[11]_i_4_n_1\
    );
\alu_data_out_reg[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => \^reg_source0_out0\(8),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(10),
      I3 => Q(8),
      O => \alu_data_out_reg[11]_i_5_n_1\
    );
\alu_data_out_reg[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => S_reg_source0_out(9),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(9),
      I3 => Q(7),
      O => \alu_data_out_reg[11]_i_6_n_1\
    );
\alu_data_out_reg[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => S_reg_source0_out(8),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(8),
      I3 => Q(6),
      O => \alu_data_out_reg[11]_i_7_n_1\
    );
\alu_data_out_reg[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^reg_source0_out0\(4),
      I1 => S_alu_data_in1(2),
      I2 => \^reg_source0_out0\(0),
      I3 => S_alu_data_in1(3),
      I4 => S_reg_source0_out(8),
      I5 => S_alu_data_in1(4),
      O => \^alu_data_out_reg[6]_i_4_0\
    );
\alu_data_out_reg[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \^alu_data_out_reg[6]_i_4\,
      I1 => Q(0),
      I2 => \^reg_source1_out\(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[14]_i_3_n_1\,
      O => \current_pc_reg[3]_18\
    );
\alu_data_out_reg[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^reg_source0_out0\(5),
      I1 => S_alu_data_in1(2),
      I2 => \^reg_source0_out0\(1),
      I3 => S_alu_data_in1(3),
      I4 => S_reg_source0_out(9),
      I5 => S_alu_data_in1(4),
      O => \^alu_data_out_reg[6]_i_4\
    );
\alu_data_out_reg[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[13]_i_3_n_1\,
      I1 => Q(0),
      I2 => \^reg_source1_out\(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[15]_i_8_n_1\,
      O => \current_pc_reg[3]_17\
    );
\alu_data_out_reg[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^reg_source0_out0\(6),
      I1 => S_alu_data_in1(2),
      I2 => \^reg_source0_out0\(2),
      I3 => S_alu_data_in1(3),
      I4 => \^reg_source0_out0\(8),
      I5 => S_alu_data_in1(4),
      O => \alu_data_out_reg[13]_i_3_n_1\
    );
\alu_data_out_reg[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[14]_i_3_n_1\,
      I1 => Q(0),
      I2 => \^reg_source1_out\(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[16]_i_3_n_1\,
      O => \current_pc_reg[3]_16\
    );
\alu_data_out_reg[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^reg_source0_out0\(7),
      I1 => S_alu_data_in1(2),
      I2 => \^reg_source0_out0\(3),
      I3 => S_alu_data_in1(3),
      I4 => \^reg_source0_out0\(9),
      I5 => S_alu_data_in1(4),
      O => \alu_data_out_reg[14]_i_3_n_1\
    );
\alu_data_out_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_data_out_reg[11]_i_2_n_1\,
      CO(3) => \alu_data_out_reg[15]_i_2_n_1\,
      CO(2 downto 0) => \NLW_alu_data_out_reg[15]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => S_reg_source0_out(15 downto 13),
      DI(0) => \^reg_source0_out0\(10),
      O(3 downto 0) => \alu_data_out_reg[15]_i_7_0\(3 downto 0),
      S(3) => \alu_data_out_reg[15]_i_4_n_1\,
      S(2) => \alu_data_out_reg[15]_i_5_n_1\,
      S(1) => \alu_data_out_reg[15]_i_6_n_1\,
      S(0) => \alu_data_out_reg[15]_i_7_n_1\
    );
\alu_data_out_reg[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[15]_i_8_n_1\,
      I1 => Q(0),
      I2 => \^reg_source1_out\(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[17]_i_3_n_1\,
      O => \current_pc_reg[3]_15\
    );
\alu_data_out_reg[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => S_reg_source0_out(15),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(15),
      I3 => Q(10),
      O => \alu_data_out_reg[15]_i_4_n_1\
    );
\alu_data_out_reg[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => S_reg_source0_out(14),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(14),
      I3 => Q(10),
      O => \alu_data_out_reg[15]_i_5_n_1\
    );
\alu_data_out_reg[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => S_reg_source0_out(13),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(13),
      I3 => Q(10),
      O => \alu_data_out_reg[15]_i_6_n_1\
    );
\alu_data_out_reg[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => \^reg_source0_out0\(10),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(12),
      I3 => Q(10),
      O => \alu_data_out_reg[15]_i_7_n_1\
    );
\alu_data_out_reg[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^reg_source0_out0\(0),
      I1 => S_alu_data_in1(3),
      I2 => S_reg_source0_out(8),
      I3 => S_alu_data_in1(4),
      I4 => S_alu_data_in1(2),
      I5 => \alu_data_out_reg[15]_i_9_n_1\,
      O => \alu_data_out_reg[15]_i_8_n_1\
    );
\alu_data_out_reg[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000B8B800B8B8"
    )
        port map (
      I0 => \^reg_source0_out0\(4),
      I1 => S_alu_data_in1(3),
      I2 => \^reg_source0_out0\(10),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \^reg_source1_out\(4),
      I5 => Q(3),
      O => \alu_data_out_reg[15]_i_9_n_1\
    );
\alu_data_out_reg[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[16]_i_3_n_1\,
      I1 => Q(0),
      I2 => \^reg_source1_out\(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[18]_i_3_n_1\,
      O => \current_pc_reg[3]_14\
    );
\alu_data_out_reg[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^reg_source0_out0\(1),
      I1 => S_alu_data_in1(3),
      I2 => S_reg_source0_out(9),
      I3 => S_alu_data_in1(4),
      I4 => S_alu_data_in1(2),
      I5 => \alu_data_out_reg[16]_i_4_n_1\,
      O => \alu_data_out_reg[16]_i_3_n_1\
    );
\alu_data_out_reg[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000B8B800B8B8"
    )
        port map (
      I0 => \^reg_source0_out0\(5),
      I1 => S_alu_data_in1(3),
      I2 => S_reg_source0_out(13),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \^reg_source1_out\(4),
      I5 => Q(3),
      O => \alu_data_out_reg[16]_i_4_n_1\
    );
\alu_data_out_reg[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[17]_i_3_n_1\,
      I1 => Q(0),
      I2 => \^reg_source1_out\(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[19]_i_4_n_1\,
      O => \current_pc_reg[3]_13\
    );
\alu_data_out_reg[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^reg_source0_out0\(2),
      I1 => S_alu_data_in1(3),
      I2 => \^reg_source0_out0\(8),
      I3 => S_alu_data_in1(4),
      I4 => S_alu_data_in1(2),
      I5 => \alu_data_out_reg[17]_i_4_n_1\,
      O => \alu_data_out_reg[17]_i_3_n_1\
    );
\alu_data_out_reg[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000B8B800B8B8"
    )
        port map (
      I0 => \^reg_source0_out0\(6),
      I1 => S_alu_data_in1(3),
      I2 => S_reg_source0_out(14),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \^reg_source1_out\(4),
      I5 => Q(3),
      O => \alu_data_out_reg[17]_i_4_n_1\
    );
\alu_data_out_reg[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[18]_i_3_n_1\,
      I1 => Q(0),
      I2 => \^reg_source1_out\(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[20]_i_3_n_1\,
      O => \current_pc_reg[3]_6\
    );
\alu_data_out_reg[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^reg_source0_out0\(3),
      I1 => S_alu_data_in1(3),
      I2 => \^reg_source0_out0\(9),
      I3 => S_alu_data_in1(4),
      I4 => S_alu_data_in1(2),
      I5 => \alu_data_out_reg[18]_i_4_n_1\,
      O => \alu_data_out_reg[18]_i_3_n_1\
    );
\alu_data_out_reg[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000B8B800B8B8"
    )
        port map (
      I0 => \^reg_source0_out0\(7),
      I1 => S_alu_data_in1(3),
      I2 => S_reg_source0_out(15),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \^reg_source1_out\(4),
      I5 => Q(3),
      O => \alu_data_out_reg[18]_i_4_n_1\
    );
\alu_data_out_reg[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[19]_i_4_n_1\,
      I1 => Q(0),
      I2 => \^reg_source1_out\(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[21]_i_3_n_1\,
      O => \current_pc_reg[3]_12\
    );
\alu_data_out_reg[19]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_data_out_reg[15]_i_2_n_1\,
      CO(3) => \alu_data_out_reg[19]_i_3_n_1\,
      CO(2 downto 0) => \NLW_alu_data_out_reg[19]_i_3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => S_reg_source0_out(19 downto 17),
      DI(0) => \^reg_source0_out0\(11),
      O(3 downto 0) => \alu_data_out_reg[19]_i_8_0\(3 downto 0),
      S(3) => \alu_data_out_reg[19]_i_5_n_1\,
      S(2) => \alu_data_out_reg[19]_i_6_n_1\,
      S(1) => \alu_data_out_reg[19]_i_7_n_1\,
      S(0) => \alu_data_out_reg[19]_i_8_n_1\
    );
\alu_data_out_reg[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^reg_source0_out0\(4),
      I1 => S_alu_data_in1(3),
      I2 => \^reg_source0_out0\(10),
      I3 => S_alu_data_in1(4),
      I4 => S_alu_data_in1(2),
      I5 => \alu_data_out_reg[23]_i_9_n_1\,
      O => \alu_data_out_reg[19]_i_4_n_1\
    );
\alu_data_out_reg[19]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => S_reg_source0_out(19),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(19),
      I3 => Q(10),
      O => \alu_data_out_reg[19]_i_5_n_1\
    );
\alu_data_out_reg[19]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => S_reg_source0_out(18),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(18),
      I3 => Q(10),
      O => \alu_data_out_reg[19]_i_6_n_1\
    );
\alu_data_out_reg[19]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => S_reg_source0_out(17),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(17),
      I3 => Q(10),
      O => \alu_data_out_reg[19]_i_7_n_1\
    );
\alu_data_out_reg[19]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => \^reg_source0_out0\(11),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(16),
      I3 => Q(10),
      O => \alu_data_out_reg[19]_i_8_n_1\
    );
\alu_data_out_reg[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[20]_i_3_n_1\,
      I1 => Q(0),
      I2 => \^reg_source1_out\(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[22]_i_3_n_1\,
      O => \current_pc_reg[3]_5\
    );
\alu_data_out_reg[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^reg_source0_out0\(5),
      I1 => S_alu_data_in1(3),
      I2 => S_reg_source0_out(13),
      I3 => S_alu_data_in1(4),
      I4 => S_alu_data_in1(2),
      I5 => \alu_data_out_reg[24]_i_4_n_1\,
      O => \alu_data_out_reg[20]_i_3_n_1\
    );
\alu_data_out_reg[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[21]_i_3_n_1\,
      I1 => Q(0),
      I2 => \^reg_source1_out\(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[23]_i_4_n_1\,
      O => \current_pc_reg[3]_11\
    );
\alu_data_out_reg[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^reg_source0_out0\(6),
      I1 => S_alu_data_in1(3),
      I2 => S_reg_source0_out(14),
      I3 => S_alu_data_in1(4),
      I4 => S_alu_data_in1(2),
      I5 => \alu_data_out_reg[25]_i_4_n_1\,
      O => \alu_data_out_reg[21]_i_3_n_1\
    );
\alu_data_out_reg[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[22]_i_3_n_1\,
      I1 => Q(0),
      I2 => \^reg_source1_out\(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[24]_i_3_n_1\,
      O => \current_pc_reg[3]_4\
    );
\alu_data_out_reg[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^reg_source0_out0\(7),
      I1 => S_alu_data_in1(3),
      I2 => S_reg_source0_out(15),
      I3 => S_alu_data_in1(4),
      I4 => S_alu_data_in1(2),
      I5 => \alu_data_out_reg[26]_i_4_n_1\,
      O => \alu_data_out_reg[22]_i_3_n_1\
    );
\alu_data_out_reg[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[23]_i_4_n_1\,
      I1 => Q(0),
      I2 => \^reg_source1_out\(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[25]_i_3_n_1\,
      O => \current_pc_reg[3]_10\
    );
\alu_data_out_reg[23]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_data_out_reg[19]_i_3_n_1\,
      CO(3) => \alu_data_out_reg[23]_i_3_n_1\,
      CO(2 downto 0) => \NLW_alu_data_out_reg[23]_i_3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \^reg_source0_out0\(13),
      DI(2 downto 1) => S_reg_source0_out(22 downto 21),
      DI(0) => \^reg_source0_out0\(12),
      O(3 downto 0) => \alu_data_out_reg[23]_i_8_0\(3 downto 0),
      S(3) => \alu_data_out_reg[23]_i_5_n_1\,
      S(2) => \alu_data_out_reg[23]_i_6_n_1\,
      S(1) => \alu_data_out_reg[23]_i_7_n_1\,
      S(0) => \alu_data_out_reg[23]_i_8_n_1\
    );
\alu_data_out_reg[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[23]_i_9_n_1\,
      I1 => Q(1),
      I2 => \^reg_source1_out\(2),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[27]_i_9_n_1\,
      O => \alu_data_out_reg[23]_i_4_n_1\
    );
\alu_data_out_reg[23]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => \^reg_source0_out0\(13),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(23),
      I3 => Q(10),
      O => \alu_data_out_reg[23]_i_5_n_1\
    );
\alu_data_out_reg[23]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => S_reg_source0_out(22),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(22),
      I3 => Q(10),
      O => \alu_data_out_reg[23]_i_6_n_1\
    );
\alu_data_out_reg[23]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => S_reg_source0_out(21),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(21),
      I3 => Q(10),
      O => \alu_data_out_reg[23]_i_7_n_1\
    );
\alu_data_out_reg[23]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => \^reg_source0_out0\(12),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(20),
      I3 => Q(10),
      O => \alu_data_out_reg[23]_i_8_n_1\
    );
\alu_data_out_reg[23]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => S_reg_source0_out(8),
      I1 => S_alu_data_in1(3),
      I2 => \^reg_source0_out0\(0),
      I3 => S_alu_data_in1(4),
      I4 => \^reg_source0_out0\(11),
      O => \alu_data_out_reg[23]_i_9_n_1\
    );
\alu_data_out_reg[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[24]_i_3_n_1\,
      I1 => Q(0),
      I2 => \^reg_source1_out\(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[26]_i_3_n_1\,
      O => \current_pc_reg[3]_3\
    );
\alu_data_out_reg[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[24]_i_4_n_1\,
      I1 => Q(1),
      I2 => \^reg_source1_out\(2),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[28]_i_4_n_1\,
      O => \alu_data_out_reg[24]_i_3_n_1\
    );
\alu_data_out_reg[24]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => S_reg_source0_out(9),
      I1 => S_alu_data_in1(3),
      I2 => \^reg_source0_out0\(1),
      I3 => S_alu_data_in1(4),
      I4 => S_reg_source0_out(17),
      O => \alu_data_out_reg[24]_i_4_n_1\
    );
\alu_data_out_reg[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[25]_i_3_n_1\,
      I1 => Q(0),
      I2 => \^reg_source1_out\(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[27]_i_8_n_1\,
      O => \current_pc_reg[3]_9\
    );
\alu_data_out_reg[25]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[25]_i_4_n_1\,
      I1 => Q(1),
      I2 => \^reg_source1_out\(2),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[29]_i_4_n_1\,
      O => \alu_data_out_reg[25]_i_3_n_1\
    );
\alu_data_out_reg[25]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^reg_source0_out0\(8),
      I1 => S_alu_data_in1(3),
      I2 => \^reg_source0_out0\(2),
      I3 => S_alu_data_in1(4),
      I4 => S_reg_source0_out(18),
      O => \alu_data_out_reg[25]_i_4_n_1\
    );
\alu_data_out_reg[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[26]_i_3_n_1\,
      I1 => Q(0),
      I2 => \^reg_source1_out\(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[28]_i_3_n_1\,
      O => \current_pc_reg[3]_2\
    );
\alu_data_out_reg[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[26]_i_4_n_1\,
      I1 => Q(1),
      I2 => \^reg_source1_out\(2),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[30]_i_4_n_1\,
      O => \alu_data_out_reg[26]_i_3_n_1\
    );
\alu_data_out_reg[26]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^reg_source0_out0\(9),
      I1 => S_alu_data_in1(3),
      I2 => \^reg_source0_out0\(3),
      I3 => S_alu_data_in1(4),
      I4 => S_reg_source0_out(19),
      O => \alu_data_out_reg[26]_i_4_n_1\
    );
\alu_data_out_reg[27]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_data_out_reg[23]_i_3_n_1\,
      CO(3) => \alu_data_out_reg[27]_i_2_n_1\,
      CO(2 downto 0) => \NLW_alu_data_out_reg[27]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => \^reg_source0_out0\(15 downto 14),
      DI(1 downto 0) => S_reg_source0_out(25 downto 24),
      O(3 downto 0) => \alu_data_out_reg[27]_i_7_0\(3 downto 0),
      S(3) => \alu_data_out_reg[27]_i_4_n_1\,
      S(2) => \alu_data_out_reg[27]_i_5_n_1\,
      S(1) => \alu_data_out_reg[27]_i_6_n_1\,
      S(0) => \alu_data_out_reg[27]_i_7_n_1\
    );
\alu_data_out_reg[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[27]_i_8_n_1\,
      I1 => Q(0),
      I2 => \^reg_source1_out\(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[29]_i_3_n_1\,
      O => \current_pc_reg[3]_8\
    );
\alu_data_out_reg[27]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => \^reg_source0_out0\(15),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(27),
      I3 => Q(11),
      O => \alu_data_out_reg[27]_i_4_n_1\
    );
\alu_data_out_reg[27]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => \^reg_source0_out0\(14),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(26),
      I3 => Q(11),
      O => \alu_data_out_reg[27]_i_5_n_1\
    );
\alu_data_out_reg[27]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => S_reg_source0_out(25),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(25),
      I3 => Q(11),
      O => \alu_data_out_reg[27]_i_6_n_1\
    );
\alu_data_out_reg[27]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => S_reg_source0_out(24),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(24),
      I3 => Q(11),
      O => \alu_data_out_reg[27]_i_7_n_1\
    );
\alu_data_out_reg[27]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[27]_i_9_n_1\,
      I1 => Q(1),
      I2 => \^reg_source1_out\(2),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[31]_i_37_n_1\,
      O => \alu_data_out_reg[27]_i_8_n_1\
    );
\alu_data_out_reg[27]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^reg_source0_out0\(10),
      I1 => S_alu_data_in1(3),
      I2 => \^reg_source0_out0\(4),
      I3 => S_alu_data_in1(4),
      I4 => \^reg_source0_out0\(12),
      O => \alu_data_out_reg[27]_i_9_n_1\
    );
\alu_data_out_reg[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[28]_i_3_n_1\,
      I1 => Q(0),
      I2 => \^reg_source1_out\(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[30]_i_3_n_1\,
      O => \current_pc_reg[3]_1\
    );
\alu_data_out_reg[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[28]_i_4_n_1\,
      I1 => Q(1),
      I2 => \^reg_source1_out\(2),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[31]_i_39_n_1\,
      O => \alu_data_out_reg[28]_i_3_n_1\
    );
\alu_data_out_reg[28]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => S_reg_source0_out(13),
      I1 => S_alu_data_in1(3),
      I2 => \^reg_source0_out0\(5),
      I3 => S_alu_data_in1(4),
      I4 => S_reg_source0_out(21),
      O => \alu_data_out_reg[28]_i_4_n_1\
    );
\alu_data_out_reg[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[29]_i_3_n_1\,
      I1 => Q(0),
      I2 => \^reg_source1_out\(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[31]_i_13_n_1\,
      O => \current_pc_reg[3]_7\
    );
\alu_data_out_reg[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[29]_i_4_n_1\,
      I1 => Q(1),
      I2 => \^reg_source1_out\(2),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[31]_i_15_n_1\,
      O => \alu_data_out_reg[29]_i_3_n_1\
    );
\alu_data_out_reg[29]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => S_reg_source0_out(14),
      I1 => S_alu_data_in1(3),
      I2 => \^reg_source0_out0\(6),
      I3 => S_alu_data_in1(4),
      I4 => S_reg_source0_out(22),
      O => \alu_data_out_reg[29]_i_4_n_1\
    );
\alu_data_out_reg[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404FFFF54045404"
    )
        port map (
      I0 => \alu_data_out_reg[31]\,
      I1 => \alu_data_out_reg[31]_i_3_n_1\,
      I2 => S_alu_data_in1(0),
      I3 => \^current_pc_reg[3]\,
      I4 => \alu_data_out_reg[31]_0\,
      I5 => \alu_data_out_reg[31]_i_7_n_6\,
      O => D(0)
    );
\alu_data_out_reg[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[30]_i_3_n_1\,
      I1 => Q(0),
      I2 => \^reg_source1_out\(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[31]_i_19_n_1\,
      O => \^current_pc_reg[3]\
    );
\alu_data_out_reg[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[30]_i_4_n_1\,
      I1 => Q(1),
      I2 => \^reg_source1_out\(2),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[31]_i_20_n_1\,
      O => \alu_data_out_reg[30]_i_3_n_1\
    );
\alu_data_out_reg[30]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => S_reg_source0_out(15),
      I1 => S_alu_data_in1(3),
      I2 => \^reg_source0_out0\(7),
      I3 => S_alu_data_in1(4),
      I4 => \^reg_source0_out0\(13),
      O => \alu_data_out_reg[30]_i_4_n_1\
    );
\alu_data_out_reg[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \alu_data_out_reg[31]\,
      I1 => \alu_data_out_reg[31]_i_3_n_1\,
      I2 => S_alu_data_in1(0),
      I3 => \alu_data_out_reg[31]_i_5_n_1\,
      I4 => \alu_data_out_reg[31]_0\,
      I5 => \alu_data_out_reg[31]_i_7_n_5\,
      O => D(1)
    );
\alu_data_out_reg[31]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_37_n_1\,
      I1 => Q(1),
      I2 => \^reg_source1_out\(2),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[31]_i_38_n_1\,
      O => \alu_data_out_reg[31]_i_13_n_1\
    );
\alu_data_out_reg[31]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_source0_out0\(2),
      I1 => S_reg_source0_out(18),
      I2 => S_alu_data_in1(3),
      I3 => \^reg_source0_out0\(8),
      I4 => S_alu_data_in1(4),
      I5 => \^reg_source0_out0\(14),
      O => \alu_data_out_reg[31]_i_15_n_1\
    );
\alu_data_out_reg[31]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_source0_out0\(6),
      I1 => S_reg_source0_out(22),
      I2 => S_alu_data_in1(3),
      I3 => S_reg_source0_out(14),
      I4 => S_alu_data_in1(4),
      I5 => S_reg_source0_out(30),
      O => \alu_data_out_reg[31]_i_17_n_1\
    );
\alu_data_out_reg[31]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_39_n_1\,
      I1 => Q(1),
      I2 => \^reg_source1_out\(2),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[31]_i_40_n_1\,
      O => \alu_data_out_reg[31]_i_19_n_1\
    );
\alu_data_out_reg[31]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_source0_out0\(3),
      I1 => S_reg_source0_out(19),
      I2 => S_alu_data_in1(3),
      I3 => \^reg_source0_out0\(9),
      I4 => S_alu_data_in1(4),
      I5 => \^reg_source0_out0\(15),
      O => \alu_data_out_reg[31]_i_20_n_1\
    );
\alu_data_out_reg[31]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_source0_out0\(7),
      I1 => \^reg_source0_out0\(13),
      I2 => S_alu_data_in1(3),
      I3 => S_reg_source0_out(15),
      I4 => S_alu_data_in1(4),
      I5 => S_reg_source0_out(31),
      O => \alu_data_out_reg[31]_i_21_n_1\
    );
\alu_data_out_reg[31]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => S_reg_source0_out(31),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(31),
      I3 => Q(11),
      O => \alu_data_out_reg[31]_i_22_n_1\
    );
\alu_data_out_reg[31]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => S_reg_source0_out(30),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(30),
      I3 => Q(11),
      O => \alu_data_out_reg[31]_i_23_n_1\
    );
\alu_data_out_reg[31]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => S_reg_source0_out(29),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(29),
      I3 => Q(11),
      O => \alu_data_out_reg[31]_i_24_n_1\
    );
\alu_data_out_reg[31]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => \^reg_source0_out0\(16),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(28),
      I3 => Q(11),
      O => \alu_data_out_reg[31]_i_25_n_1\
    );
\alu_data_out_reg[31]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0303000003030055"
    )
        port map (
      I0 => \^reg_source1_out\(5),
      I1 => Q(4),
      I2 => Q(11),
      I3 => \^reg_source1_out\(27),
      I4 => S_cnrtl_alu_data_srce_slkt,
      I5 => \^reg_source1_out\(26),
      O => \current_pc_reg[3]_20\
    );
\alu_data_out_reg[31]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FFFFF0F0FFEE"
    )
        port map (
      I0 => \^reg_source1_out\(19),
      I1 => \^reg_source1_out\(18),
      I2 => Q(10),
      I3 => \^reg_source1_out\(23),
      I4 => S_cnrtl_alu_data_srce_slkt,
      I5 => \^reg_source1_out\(22),
      O => \current_pc_reg[3]_0\
    );
\alu_data_out_reg[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_13_n_1\,
      I1 => S_alu_data_in1(1),
      I2 => \alu_data_out_reg[31]_i_15_n_1\,
      I3 => S_alu_data_in1(2),
      I4 => \alu_data_out_reg[31]_i_17_n_1\,
      O => \alu_data_out_reg[31]_i_3_n_1\
    );
\alu_data_out_reg[31]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_source0_out0\(0),
      I1 => \^reg_source0_out0\(11),
      I2 => S_alu_data_in1(3),
      I3 => S_reg_source0_out(8),
      I4 => S_alu_data_in1(4),
      I5 => S_reg_source0_out(24),
      O => \alu_data_out_reg[31]_i_37_n_1\
    );
\alu_data_out_reg[31]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_source0_out0\(4),
      I1 => \^reg_source0_out0\(12),
      I2 => S_alu_data_in1(3),
      I3 => \^reg_source0_out0\(10),
      I4 => S_alu_data_in1(4),
      I5 => \^reg_source0_out0\(16),
      O => \alu_data_out_reg[31]_i_38_n_1\
    );
\alu_data_out_reg[31]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_source0_out0\(1),
      I1 => S_reg_source0_out(17),
      I2 => S_alu_data_in1(3),
      I3 => S_reg_source0_out(9),
      I4 => S_alu_data_in1(4),
      I5 => S_reg_source0_out(25),
      O => \alu_data_out_reg[31]_i_39_n_1\
    );
\alu_data_out_reg[31]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_source0_out0\(5),
      I1 => S_reg_source0_out(21),
      I2 => S_alu_data_in1(3),
      I3 => S_reg_source0_out(13),
      I4 => S_alu_data_in1(4),
      I5 => S_reg_source0_out(29),
      O => \alu_data_out_reg[31]_i_40_n_1\
    );
\alu_data_out_reg[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_19_n_1\,
      I1 => S_alu_data_in1(1),
      I2 => \alu_data_out_reg[31]_i_20_n_1\,
      I3 => S_alu_data_in1(2),
      I4 => \alu_data_out_reg[31]_i_21_n_1\,
      O => \alu_data_out_reg[31]_i_5_n_1\
    );
\alu_data_out_reg[31]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_data_out_reg[27]_i_2_n_1\,
      CO(3 downto 0) => \NLW_alu_data_out_reg[31]_i_7_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 1) => S_reg_source0_out(30 downto 29),
      DI(0) => \^reg_source0_out0\(16),
      O(3) => \alu_data_out_reg[31]_i_7_n_5\,
      O(2) => \alu_data_out_reg[31]_i_7_n_6\,
      O(1 downto 0) => \alu_data_out_reg[31]_i_25_0\(1 downto 0),
      S(3) => \alu_data_out_reg[31]_i_22_n_1\,
      S(2) => \alu_data_out_reg[31]_i_23_n_1\,
      S(1) => \alu_data_out_reg[31]_i_24_n_1\,
      S(0) => \alu_data_out_reg[31]_i_25_n_1\
    );
\alu_data_out_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \alu_data_out_reg[3]_i_2_n_1\,
      CO(2 downto 0) => \NLW_alu_data_out_reg[3]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \^reg_source0_out0\(3 downto 0),
      O(3 downto 0) => O(3 downto 0),
      S(3) => \alu_data_out_reg[3]_i_4_n_1\,
      S(2) => \alu_data_out_reg[3]_i_5_n_1\,
      S(1) => \alu_data_out_reg[3]_i_6_n_1\,
      S(0) => \alu_data_out_reg[3]_i_7_n_1\
    );
\alu_data_out_reg[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => \^reg_source0_out0\(3),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(3),
      I3 => Q(2),
      O => \alu_data_out_reg[3]_i_4_n_1\
    );
\alu_data_out_reg[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => \^reg_source0_out0\(2),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(2),
      I3 => Q(1),
      O => \alu_data_out_reg[3]_i_5_n_1\
    );
\alu_data_out_reg[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => \^reg_source0_out0\(1),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(1),
      I3 => Q(0),
      O => \alu_data_out_reg[3]_i_6_n_1\
    );
\alu_data_out_reg[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^reg_source0_out0\(0),
      I1 => S_alu_data_in1(0),
      O => \alu_data_out_reg[3]_i_7_n_1\
    );
\alu_data_out_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_data_out_reg[3]_i_2_n_1\,
      CO(3) => \alu_data_out_reg[7]_i_2_n_1\,
      CO(2 downto 0) => \NLW_alu_data_out_reg[7]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \^reg_source0_out0\(7 downto 4),
      O(3 downto 0) => \alu_data_out_reg[7]_i_7_0\(3 downto 0),
      S(3) => \alu_data_out_reg[7]_i_4_n_1\,
      S(2) => \alu_data_out_reg[7]_i_5_n_1\,
      S(1) => \alu_data_out_reg[7]_i_6_n_1\,
      S(0) => \alu_data_out_reg[7]_i_7_n_1\
    );
\alu_data_out_reg[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => \^reg_source0_out0\(7),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(7),
      I3 => Q(5),
      O => \alu_data_out_reg[7]_i_4_n_1\
    );
\alu_data_out_reg[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => \^reg_source0_out0\(6),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(6),
      I3 => Q(5),
      O => \alu_data_out_reg[7]_i_5_n_1\
    );
\alu_data_out_reg[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => \^reg_source0_out0\(5),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(5),
      I3 => Q(4),
      O => \alu_data_out_reg[7]_i_6_n_1\
    );
\alu_data_out_reg[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => \^reg_source0_out0\(4),
      I1 => S_cnrtl_alu_data_srce_slkt,
      I2 => \^reg_source1_out\(4),
      I3 => Q(3),
      O => \alu_data_out_reg[7]_i_7_n_1\
    );
\alu_flag_reg[0]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_flag_reg[0]_i_25_n_1\,
      CO(3) => \alu_flag_reg[0]_i_10_n_1\,
      CO(2 downto 0) => \NLW_alu_flag_reg[0]_i_10_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_alu_flag_reg[0]_i_10_O_UNCONNECTED\(3 downto 0),
      S(3) => \alu_flag_reg[0]_i_26_n_1\,
      S(2) => \alu_flag_reg[0]_i_27_n_1\,
      S(1) => \alu_flag_reg[0]_i_28_n_1\,
      S(0) => \alu_flag_reg[0]_i_29_n_1\
    );
\alu_flag_reg[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C003C00390900909"
    )
        port map (
      I0 => \^reg_source1_out\(31),
      I1 => S_reg_source0_out(31),
      I2 => S_reg_source0_out(30),
      I3 => Q(11),
      I4 => \^reg_source1_out\(30),
      I5 => S_cnrtl_alu_data_srce_slkt,
      O => \alu_flag_reg[0]_i_11_n_1\
    );
\alu_flag_reg[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_source0_out0\(16),
      I1 => S_alu_data_in1(28),
      I2 => S_alu_data_in1(29),
      I3 => S_reg_source0_out(29),
      I4 => S_alu_data_in1(27),
      I5 => \^reg_source0_out0\(15),
      O => \alu_flag_reg[0]_i_12_n_1\
    );
\alu_flag_reg[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => S_reg_source0_out(25),
      I1 => S_alu_data_in1(25),
      I2 => S_alu_data_in1(26),
      I3 => \^reg_source0_out0\(14),
      I4 => S_alu_data_in1(24),
      I5 => S_reg_source0_out(24),
      O => \alu_flag_reg[0]_i_13_n_1\
    );
\alu_flag_reg[0]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \alu_flag_reg[0]_i_14_n_1\,
      CO(2 downto 0) => \NLW_alu_flag_reg[0]_i_14_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_alu_flag_reg[0]_i_14_O_UNCONNECTED\(3 downto 0),
      S(3) => \alu_flag_reg[0]_i_30_n_1\,
      S(2) => \alu_flag_reg[0]_i_31_n_1\,
      S(1) => \alu_flag_reg[0]_i_32_n_1\,
      S(0) => \alu_flag_reg[0]_i_33_n_1\
    );
\alu_flag_reg[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => S_reg_source0_out(22),
      I1 => S_alu_data_in1(22),
      I2 => S_alu_data_in1(23),
      I3 => \^reg_source0_out0\(13),
      I4 => S_alu_data_in1(21),
      I5 => S_reg_source0_out(21),
      O => \alu_flag_reg[0]_i_15_n_1\
    );
\alu_flag_reg[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => S_reg_source0_out(19),
      I1 => S_alu_data_in1(19),
      I2 => S_alu_data_in1(20),
      I3 => \^reg_source0_out0\(12),
      I4 => S_alu_data_in1(18),
      I5 => S_reg_source0_out(18),
      O => \alu_flag_reg[0]_i_16_n_1\
    );
\alu_flag_reg[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => S_reg_source0_out(15),
      I1 => S_alu_data_in1(15),
      I2 => S_alu_data_in1(17),
      I3 => S_reg_source0_out(17),
      I4 => S_alu_data_in1(16),
      I5 => \^reg_source0_out0\(11),
      O => \alu_flag_reg[0]_i_17_n_1\
    );
\alu_flag_reg[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_source0_out0\(10),
      I1 => S_alu_data_in1(12),
      I2 => S_alu_data_in1(14),
      I3 => S_reg_source0_out(14),
      I4 => S_alu_data_in1(13),
      I5 => S_reg_source0_out(13),
      O => \alu_flag_reg[0]_i_18_n_1\
    );
\alu_flag_reg[0]_i_25\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \alu_flag_reg[0]_i_25_n_1\,
      CO(2 downto 0) => \NLW_alu_flag_reg[0]_i_25_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_alu_flag_reg[0]_i_25_O_UNCONNECTED\(3 downto 0),
      S(3) => \alu_flag_reg[0]_i_42_n_1\,
      S(2) => \alu_flag_reg[0]_i_43_n_1\,
      S(1) => \alu_flag_reg[0]_i_44_n_1\,
      S(0) => \alu_flag_reg[0]_i_45_n_1\
    );
\alu_flag_reg[0]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => S_reg_source0_out(22),
      I1 => S_alu_data_in1(22),
      I2 => S_alu_data_in1(23),
      I3 => \^reg_source0_out0\(13),
      I4 => S_alu_data_in1(21),
      I5 => S_reg_source0_out(21),
      O => \alu_flag_reg[0]_i_26_n_1\
    );
\alu_flag_reg[0]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => S_reg_source0_out(19),
      I1 => S_alu_data_in1(19),
      I2 => S_alu_data_in1(20),
      I3 => \^reg_source0_out0\(12),
      I4 => S_alu_data_in1(18),
      I5 => S_reg_source0_out(18),
      O => \alu_flag_reg[0]_i_27_n_1\
    );
\alu_flag_reg[0]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => S_reg_source0_out(15),
      I1 => S_alu_data_in1(15),
      I2 => S_alu_data_in1(17),
      I3 => S_reg_source0_out(17),
      I4 => S_alu_data_in1(16),
      I5 => \^reg_source0_out0\(11),
      O => \alu_flag_reg[0]_i_28_n_1\
    );
\alu_flag_reg[0]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_source0_out0\(10),
      I1 => S_alu_data_in1(12),
      I2 => S_alu_data_in1(14),
      I3 => S_reg_source0_out(14),
      I4 => S_alu_data_in1(13),
      I5 => S_reg_source0_out(13),
      O => \alu_flag_reg[0]_i_29_n_1\
    );
\alu_flag_reg[0]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_source0_out0\(8),
      I1 => S_alu_data_in1(10),
      I2 => S_alu_data_in1(11),
      I3 => \^reg_source0_out0\(9),
      I4 => S_alu_data_in1(9),
      I5 => S_reg_source0_out(9),
      O => \alu_flag_reg[0]_i_30_n_1\
    );
\alu_flag_reg[0]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_source0_out0\(6),
      I1 => S_alu_data_in1(6),
      I2 => S_alu_data_in1(8),
      I3 => S_reg_source0_out(8),
      I4 => S_alu_data_in1(7),
      I5 => \^reg_source0_out0\(7),
      O => \alu_flag_reg[0]_i_31_n_1\
    );
\alu_flag_reg[0]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_source0_out0\(3),
      I1 => S_alu_data_in1(3),
      I2 => S_alu_data_in1(4),
      I3 => \^reg_source0_out0\(4),
      I4 => S_alu_data_in1(5),
      I5 => \^reg_source0_out0\(5),
      O => \alu_flag_reg[0]_i_32_n_1\
    );
\alu_flag_reg[0]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_source0_out0\(0),
      I1 => S_alu_data_in1(0),
      I2 => S_alu_data_in1(2),
      I3 => \^reg_source0_out0\(2),
      I4 => S_alu_data_in1(1),
      I5 => \^reg_source0_out0\(1),
      O => \alu_flag_reg[0]_i_33_n_1\
    );
\alu_flag_reg[0]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_flag_reg[0]_i_6_n_1\,
      CO(3) => \NLW_alu_flag_reg[0]_i_4_CO_UNCONNECTED\(3),
      CO(2) => CO(0),
      CO(1 downto 0) => \NLW_alu_flag_reg[0]_i_4_CO_UNCONNECTED\(1 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_alu_flag_reg[0]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \alu_flag_reg[0]_i_7_n_1\,
      S(1) => \alu_flag_reg[0]_i_8_n_1\,
      S(0) => \alu_flag_reg[0]_i_9_n_1\
    );
\alu_flag_reg[0]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_source0_out0\(8),
      I1 => S_alu_data_in1(10),
      I2 => S_alu_data_in1(11),
      I3 => \^reg_source0_out0\(9),
      I4 => S_alu_data_in1(9),
      I5 => S_reg_source0_out(9),
      O => \alu_flag_reg[0]_i_42_n_1\
    );
\alu_flag_reg[0]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_source0_out0\(6),
      I1 => S_alu_data_in1(6),
      I2 => S_alu_data_in1(8),
      I3 => S_reg_source0_out(8),
      I4 => S_alu_data_in1(7),
      I5 => \^reg_source0_out0\(7),
      O => \alu_flag_reg[0]_i_43_n_1\
    );
\alu_flag_reg[0]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_source0_out0\(3),
      I1 => S_alu_data_in1(3),
      I2 => S_alu_data_in1(4),
      I3 => \^reg_source0_out0\(4),
      I4 => S_alu_data_in1(5),
      I5 => \^reg_source0_out0\(5),
      O => \alu_flag_reg[0]_i_44_n_1\
    );
\alu_flag_reg[0]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_source0_out0\(0),
      I1 => S_alu_data_in1(0),
      I2 => S_alu_data_in1(2),
      I3 => \^reg_source0_out0\(2),
      I4 => S_alu_data_in1(1),
      I5 => \^reg_source0_out0\(1),
      O => \alu_flag_reg[0]_i_45_n_1\
    );
\alu_flag_reg[0]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_flag_reg[0]_i_10_n_1\,
      CO(3) => \NLW_alu_flag_reg[0]_i_5_CO_UNCONNECTED\(3),
      CO(2) => \alu_flag_reg[0]_i_13_0\(0),
      CO(1 downto 0) => \NLW_alu_flag_reg[0]_i_5_CO_UNCONNECTED\(1 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_alu_flag_reg[0]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \alu_flag_reg[0]_i_11_n_1\,
      S(1) => \alu_flag_reg[0]_i_12_n_1\,
      S(0) => \alu_flag_reg[0]_i_13_n_1\
    );
\alu_flag_reg[0]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_flag_reg[0]_i_14_n_1\,
      CO(3) => \alu_flag_reg[0]_i_6_n_1\,
      CO(2 downto 0) => \NLW_alu_flag_reg[0]_i_6_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_alu_flag_reg[0]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \alu_flag_reg[0]_i_15_n_1\,
      S(2) => \alu_flag_reg[0]_i_16_n_1\,
      S(1) => \alu_flag_reg[0]_i_17_n_1\,
      S(0) => \alu_flag_reg[0]_i_18_n_1\
    );
\alu_flag_reg[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C003C00390900909"
    )
        port map (
      I0 => \^reg_source1_out\(31),
      I1 => S_reg_source0_out(31),
      I2 => S_reg_source0_out(30),
      I3 => Q(11),
      I4 => \^reg_source1_out\(30),
      I5 => S_cnrtl_alu_data_srce_slkt,
      O => \alu_flag_reg[0]_i_7_n_1\
    );
\alu_flag_reg[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_source0_out0\(16),
      I1 => S_alu_data_in1(28),
      I2 => S_alu_data_in1(29),
      I3 => S_reg_source0_out(29),
      I4 => S_alu_data_in1(27),
      I5 => \^reg_source0_out0\(15),
      O => \alu_flag_reg[0]_i_8_n_1\
    );
\alu_flag_reg[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => S_reg_source0_out(25),
      I1 => S_alu_data_in1(25),
      I2 => S_alu_data_in1(26),
      I3 => \^reg_source0_out0\(14),
      I4 => S_alu_data_in1(24),
      I5 => S_reg_source0_out(24),
      O => \alu_flag_reg[0]_i_9_n_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity t02_Word_immGen is
  port (
    D : out STD_LOGIC_VECTOR ( 29 downto 0 );
    \current_pc_reg[3]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 12 downto 0 );
    upordown_reg_rep : out STD_LOGIC;
    \upordown_reg_rep__0\ : out STD_LOGIC;
    \upordown_reg_rep__0_0\ : out STD_LOGIC;
    \upordown_reg_rep__0_1\ : out STD_LOGIC;
    \upordown_reg_rep__0_2\ : out STD_LOGIC;
    upordown_reg : out STD_LOGIC;
    upordown_reg_0 : out STD_LOGIC;
    upordown_reg_1 : out STD_LOGIC;
    upordown_reg_2 : out STD_LOGIC;
    upordown_reg_rep_0 : out STD_LOGIC;
    upordown_reg_rep_1 : out STD_LOGIC;
    upordown_reg_rep_2 : out STD_LOGIC;
    upordown_reg_rep_3 : out STD_LOGIC;
    upordown_reg_rep_4 : out STD_LOGIC;
    upordown_reg_rep_5 : out STD_LOGIC;
    upordown_reg_rep_6 : out STD_LOGIC;
    upordown_reg_rep_7 : out STD_LOGIC;
    upordown_reg_rep_8 : out STD_LOGIC;
    upordown_reg_3 : out STD_LOGIC;
    upordown_reg_rep_9 : out STD_LOGIC;
    upordown_reg_rep_10 : out STD_LOGIC;
    upordown_reg_4 : out STD_LOGIC;
    upordown_reg_5 : out STD_LOGIC;
    upordown_reg_6 : out STD_LOGIC;
    upordown_reg_rep_11 : out STD_LOGIC;
    \upordown_reg_rep__0_3\ : out STD_LOGIC;
    \upordown_reg_rep__0_4\ : out STD_LOGIC;
    \upordown_reg_rep__0_5\ : out STD_LOGIC;
    \upordown_reg_rep__0_6\ : out STD_LOGIC;
    \upordown_reg_rep__0_7\ : out STD_LOGIC;
    \upordown_reg_rep__0_8\ : out STD_LOGIC;
    \upordown_reg_rep__0_9\ : out STD_LOGIC;
    \upordown_reg_rep__0_10\ : out STD_LOGIC;
    upordown_reg_rep_12 : out STD_LOGIC;
    upordown_reg_rep_13 : out STD_LOGIC;
    upordown_reg_rep_14 : out STD_LOGIC;
    upordown_reg_rep_15 : out STD_LOGIC;
    upordown_reg_rep_16 : out STD_LOGIC;
    upordown_reg_rep_17 : out STD_LOGIC;
    upordown_reg_rep_18 : out STD_LOGIC;
    upordown_reg_rep_19 : out STD_LOGIC;
    \alu_data_out_reg[31]_i_1\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_alu_data_in1 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \alu_data_out_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \alu_data_out_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \alu_data_out_reg[11]_0\ : in STD_LOGIC;
    \alu_data_out_reg[12]\ : in STD_LOGIC;
    \alu_data_out_reg[15]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \alu_data_out_reg[13]\ : in STD_LOGIC;
    \alu_data_out_reg[14]\ : in STD_LOGIC;
    \alu_data_out_reg[15]_0\ : in STD_LOGIC;
    \alu_data_out_reg[16]\ : in STD_LOGIC;
    \alu_data_out_reg[19]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \alu_data_out_reg[17]\ : in STD_LOGIC;
    \alu_data_out_reg[18]\ : in STD_LOGIC;
    \alu_data_out_reg[19]_0\ : in STD_LOGIC;
    \alu_data_out_reg[20]\ : in STD_LOGIC;
    \alu_data_out_reg[23]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \alu_data_out_reg[21]\ : in STD_LOGIC;
    \alu_data_out_reg[22]\ : in STD_LOGIC;
    \alu_data_out_reg[23]_0\ : in STD_LOGIC;
    \alu_data_out_reg[24]\ : in STD_LOGIC;
    \alu_data_out_reg[27]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \alu_data_out_reg[25]\ : in STD_LOGIC;
    \alu_data_out_reg[26]\ : in STD_LOGIC;
    \alu_data_out_reg[27]_0\ : in STD_LOGIC;
    \alu_data_out_reg[28]\ : in STD_LOGIC;
    \alu_data_out_reg[29]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \alu_data_out_reg[29]_0\ : in STD_LOGIC;
    \alu_data_out_reg[29]_1\ : in STD_LOGIC;
    \alu_data_out_reg[31]_i_2_0\ : in STD_LOGIC;
    \alu_data_out_reg[31]_i_2_1\ : in STD_LOGIC;
    reg_source1_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_cnrtl_alu_data_srce_slkt : in STD_LOGIC;
    \alu_data_out_reg[9]_i_1_0\ : in STD_LOGIC;
    \alu_data_out_reg[8]_i_1_0\ : in STD_LOGIC;
    reg_source0_out0 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \LED_top_OBUF[3]_inst_i_26\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_27\ : in STD_LOGIC;
    \LED_top_OBUF[0]_inst_i_32\ : in STD_LOGIC;
    \LED_top_OBUF[2]_inst_i_14\ : in STD_LOGIC;
    \LED_top_OBUF[10]_inst_i_15\ : in STD_LOGIC;
    upordown : in STD_LOGIC;
    \LED_top_OBUF[0]_inst_i_10\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_27_0\ : in STD_LOGIC;
    \LED_top_OBUF[15]_inst_i_18\ : in STD_LOGIC;
    \LED_top_OBUF[6]_inst_i_13\ : in STD_LOGIC;
    \LED_top_OBUF[7]_inst_i_14\ : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_10\ : in STD_LOGIC;
    \LED_top_OBUF[13]_inst_i_13\ : in STD_LOGIC;
    \LED_top_OBUF[14]_inst_i_13\ : in STD_LOGIC;
    \LED_top_OBUF[2]_inst_i_14_0\ : in STD_LOGIC;
    \LED_top_OBUF[11]_inst_i_15\ : in STD_LOGIC;
    \LED_top_OBUF[10]_inst_i_15_0\ : in STD_LOGIC;
    \LED_top_OBUF[9]_inst_i_13\ : in STD_LOGIC;
    \LED_top_OBUF[8]_inst_i_14\ : in STD_LOGIC;
    \LED_top_OBUF[5]_inst_i_12\ : in STD_LOGIC;
    \LED_top_OBUF[4]_inst_i_27_1\ : in STD_LOGIC;
    \current_pc[31]_i_2\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end t02_Word_immGen;

architecture STRUCTURE of t02_Word_immGen is
  signal \^q\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \alu_data_out_reg[10]_i_2_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[10]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[1]_i_2_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[2]_i_2_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_10_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_11_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_12_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_8_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[31]_i_9_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[3]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[5]_i_2_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[6]_i_2_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[7]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[7]_i_8_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[8]_i_3_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[9]_i_2_n_1\ : STD_LOGIC;
  signal \alu_data_out_reg[9]_i_3_n_1\ : STD_LOGIC;
  signal \^current_pc_reg[3]\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \IMM_out_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IMM_out_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IMM_out_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IMM_out_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IMM_out_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IMM_out_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IMM_out_reg[31]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IMM_out_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IMM_out_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IMM_out_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IMM_out_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IMM_out_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IMM_out_reg[9]\ : label is "LD";
begin
  Q(12 downto 0) <= \^q\(12 downto 0);
  \current_pc_reg[3]\ <= \^current_pc_reg[3]\;
\IMM_out_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \current_pc[31]_i_2\(0),
      G => E(0),
      GE => '1',
      Q => \^q\(0)
    );
\IMM_out_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \current_pc[31]_i_2\(9),
      G => E(0),
      GE => '1',
      Q => \^q\(9)
    );
\IMM_out_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \current_pc[31]_i_2\(10),
      G => E(0),
      GE => '1',
      Q => \^q\(10)
    );
\IMM_out_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \current_pc[31]_i_2\(11),
      G => E(0),
      GE => '1',
      Q => \^q\(11)
    );
\IMM_out_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \current_pc[31]_i_2\(1),
      G => E(0),
      GE => '1',
      Q => \^q\(1)
    );
\IMM_out_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \current_pc[31]_i_2\(2),
      G => E(0),
      GE => '1',
      Q => \^q\(2)
    );
\IMM_out_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \current_pc[31]_i_2\(12),
      G => E(0),
      GE => '1',
      Q => \^q\(12)
    );
\IMM_out_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \current_pc[31]_i_2\(3),
      G => E(0),
      GE => '1',
      Q => \^q\(3)
    );
\IMM_out_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \current_pc[31]_i_2\(4),
      G => E(0),
      GE => '1',
      Q => \^q\(4)
    );
\IMM_out_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \current_pc[31]_i_2\(5),
      G => E(0),
      GE => '1',
      Q => \^q\(5)
    );
\IMM_out_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \current_pc[31]_i_2\(6),
      G => E(0),
      GE => '1',
      Q => \^q\(6)
    );
\IMM_out_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \current_pc[31]_i_2\(7),
      G => E(0),
      GE => '1',
      Q => \^q\(7)
    );
\IMM_out_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \current_pc[31]_i_2\(8),
      G => E(0),
      GE => '1',
      Q => \^q\(8)
    );
\LED_top_OBUF[0]_inst_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(11),
      I1 => \LED_top_OBUF[3]_inst_i_26\,
      I2 => \^q\(0),
      O => upordown_reg_rep_19
    );
\LED_top_OBUF[0]_inst_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_alu_data_in1(11),
      I1 => S_alu_data_in1(0),
      I2 => \LED_top_OBUF[0]_inst_i_10\,
      I3 => reg_source0_out0(8),
      I4 => \LED_top_OBUF[3]_inst_i_26\,
      I5 => reg_source0_out0(0),
      O => upordown_reg_rep_7
    );
\LED_top_OBUF[0]_inst_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4700FFFF47004700"
    )
        port map (
      I0 => \^q\(11),
      I1 => \LED_top_OBUF[3]_inst_i_26\,
      I2 => \^q\(0),
      I3 => \LED_top_OBUF[4]_inst_i_27\,
      I4 => \LED_top_OBUF[0]_inst_i_32\,
      I5 => \LED_top_OBUF[2]_inst_i_14\,
      O => upordown_reg_rep
    );
\LED_top_OBUF[10]_inst_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0AFA0CFCFC0C0"
    )
        port map (
      I0 => \^q\(12),
      I1 => reg_source1_out(26),
      I2 => \LED_top_OBUF[10]_inst_i_15\,
      I3 => \^q\(9),
      I4 => reg_source1_out(10),
      I5 => S_cnrtl_alu_data_srce_slkt,
      O => \upordown_reg_rep__0_1\
    );
\LED_top_OBUF[10]_inst_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D0000FF1DFF00FF"
    )
        port map (
      I0 => \^q\(9),
      I1 => \LED_top_OBUF[10]_inst_i_15\,
      I2 => \^q\(12),
      I3 => \LED_top_OBUF[4]_inst_i_27_0\,
      I4 => \LED_top_OBUF[4]_inst_i_27\,
      I5 => \LED_top_OBUF[10]_inst_i_15_0\,
      O => \upordown_reg_rep__0_5\
    );
\LED_top_OBUF[10]_inst_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(12),
      I1 => \LED_top_OBUF[10]_inst_i_15\,
      I2 => \^q\(9),
      O => \upordown_reg_rep__0_6\
    );
\LED_top_OBUF[11]_inst_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0AFA0CFCFC0C0"
    )
        port map (
      I0 => \^q\(12),
      I1 => reg_source1_out(27),
      I2 => \LED_top_OBUF[10]_inst_i_15\,
      I3 => \^q\(10),
      I4 => reg_source1_out(11),
      I5 => S_cnrtl_alu_data_srce_slkt,
      O => \upordown_reg_rep__0_2\
    );
\LED_top_OBUF[11]_inst_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D0000FF1DFF00FF"
    )
        port map (
      I0 => \^q\(10),
      I1 => \LED_top_OBUF[10]_inst_i_15\,
      I2 => \^q\(12),
      I3 => \LED_top_OBUF[4]_inst_i_27_0\,
      I4 => \LED_top_OBUF[4]_inst_i_27\,
      I5 => \LED_top_OBUF[11]_inst_i_15\,
      O => \upordown_reg_rep__0_3\
    );
\LED_top_OBUF[11]_inst_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(12),
      I1 => \LED_top_OBUF[10]_inst_i_15\,
      I2 => \^q\(10),
      O => \upordown_reg_rep__0_4\
    );
\LED_top_OBUF[12]_inst_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D0000FF1DFF00FF"
    )
        port map (
      I0 => \^q\(11),
      I1 => upordown,
      I2 => \^q\(12),
      I3 => \LED_top_OBUF[4]_inst_i_27_0\,
      I4 => \LED_top_OBUF[4]_inst_i_27\,
      I5 => \LED_top_OBUF[12]_inst_i_10\,
      O => upordown_reg_4
    );
\LED_top_OBUF[12]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0AFA0CFCFC0C0"
    )
        port map (
      I0 => \^q\(12),
      I1 => reg_source1_out(28),
      I2 => upordown,
      I3 => \^q\(11),
      I4 => reg_source1_out(12),
      I5 => S_cnrtl_alu_data_srce_slkt,
      O => upordown_reg
    );
\LED_top_OBUF[13]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0AFA0CFCFC0C0"
    )
        port map (
      I0 => \^q\(12),
      I1 => reg_source1_out(29),
      I2 => upordown,
      I3 => \^q\(11),
      I4 => reg_source1_out(13),
      I5 => S_cnrtl_alu_data_srce_slkt,
      O => upordown_reg_0
    );
\LED_top_OBUF[13]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D0000FF1DFF00FF"
    )
        port map (
      I0 => \^q\(11),
      I1 => upordown,
      I2 => \^q\(12),
      I3 => \LED_top_OBUF[4]_inst_i_27_0\,
      I4 => \LED_top_OBUF[4]_inst_i_27\,
      I5 => \LED_top_OBUF[13]_inst_i_13\,
      O => upordown_reg_5
    );
\LED_top_OBUF[14]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0AFA0CFCFC0C0"
    )
        port map (
      I0 => \^q\(12),
      I1 => reg_source1_out(30),
      I2 => upordown,
      I3 => \^q\(11),
      I4 => reg_source1_out(14),
      I5 => S_cnrtl_alu_data_srce_slkt,
      O => upordown_reg_1
    );
\LED_top_OBUF[14]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D0000FF1DFF00FF"
    )
        port map (
      I0 => \^q\(11),
      I1 => upordown,
      I2 => \^q\(12),
      I3 => \LED_top_OBUF[4]_inst_i_27_0\,
      I4 => \LED_top_OBUF[4]_inst_i_27\,
      I5 => \LED_top_OBUF[14]_inst_i_13\,
      O => upordown_reg_6
    );
\LED_top_OBUF[15]_inst_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0AFA0CFCFC0C0"
    )
        port map (
      I0 => \^q\(12),
      I1 => reg_source1_out(31),
      I2 => upordown,
      I3 => \^q\(11),
      I4 => reg_source1_out(15),
      I5 => S_cnrtl_alu_data_srce_slkt,
      O => upordown_reg_2
    );
\LED_top_OBUF[15]_inst_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D0000FF1DFF00FF"
    )
        port map (
      I0 => \^q\(11),
      I1 => upordown,
      I2 => \^q\(12),
      I3 => \LED_top_OBUF[4]_inst_i_27_0\,
      I4 => \LED_top_OBUF[4]_inst_i_27\,
      I5 => \LED_top_OBUF[15]_inst_i_18\,
      O => upordown_reg_3
    );
\LED_top_OBUF[1]_inst_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0AFA0CFCFC0C0"
    )
        port map (
      I0 => \^q\(11),
      I1 => reg_source1_out(17),
      I2 => \LED_top_OBUF[3]_inst_i_26\,
      I3 => \^q\(1),
      I4 => reg_source1_out(1),
      I5 => S_cnrtl_alu_data_srce_slkt,
      O => upordown_reg_rep_6
    );
\LED_top_OBUF[1]_inst_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(11),
      I1 => \LED_top_OBUF[3]_inst_i_26\,
      I2 => \^q\(1),
      O => upordown_reg_rep_18
    );
\LED_top_OBUF[2]_inst_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(11),
      I1 => \LED_top_OBUF[3]_inst_i_26\,
      I2 => \^q\(2),
      O => upordown_reg_rep_17
    );
\LED_top_OBUF[2]_inst_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0AFA0CFCFC0C0"
    )
        port map (
      I0 => \^q\(11),
      I1 => reg_source1_out(18),
      I2 => \LED_top_OBUF[3]_inst_i_26\,
      I3 => \^q\(2),
      I4 => reg_source1_out(2),
      I5 => S_cnrtl_alu_data_srce_slkt,
      O => upordown_reg_rep_5
    );
\LED_top_OBUF[2]_inst_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4700FFFF47FFFFFF"
    )
        port map (
      I0 => \^q\(11),
      I1 => \LED_top_OBUF[3]_inst_i_26\,
      I2 => \^q\(2),
      I3 => \LED_top_OBUF[4]_inst_i_27_0\,
      I4 => \LED_top_OBUF[2]_inst_i_14\,
      I5 => \LED_top_OBUF[2]_inst_i_14_0\,
      O => upordown_reg_rep_11
    );
\LED_top_OBUF[3]_inst_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(11),
      I1 => \LED_top_OBUF[3]_inst_i_26\,
      I2 => \^q\(3),
      O => upordown_reg_rep_16
    );
\LED_top_OBUF[3]_inst_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0AFA0CFCFC0C0"
    )
        port map (
      I0 => \^q\(11),
      I1 => reg_source1_out(19),
      I2 => \LED_top_OBUF[3]_inst_i_26\,
      I3 => \^q\(3),
      I4 => reg_source1_out(3),
      I5 => S_cnrtl_alu_data_srce_slkt,
      O => upordown_reg_rep_4
    );
\LED_top_OBUF[4]_inst_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(11),
      I1 => \LED_top_OBUF[3]_inst_i_26\,
      I2 => \^q\(4),
      O => upordown_reg_rep_15
    );
\LED_top_OBUF[4]_inst_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0AFA0CFCFC0C0"
    )
        port map (
      I0 => \^q\(11),
      I1 => reg_source1_out(20),
      I2 => \LED_top_OBUF[3]_inst_i_26\,
      I3 => \^q\(4),
      I4 => reg_source1_out(4),
      I5 => S_cnrtl_alu_data_srce_slkt,
      O => upordown_reg_rep_3
    );
\LED_top_OBUF[4]_inst_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D0000FF1DFF00FF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \LED_top_OBUF[3]_inst_i_26\,
      I2 => \^q\(11),
      I3 => \LED_top_OBUF[4]_inst_i_27_0\,
      I4 => \LED_top_OBUF[4]_inst_i_27\,
      I5 => \LED_top_OBUF[4]_inst_i_27_1\,
      O => upordown_reg_rep_14
    );
\LED_top_OBUF[5]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0AFA0CFCFC0C0"
    )
        port map (
      I0 => \^q\(11),
      I1 => reg_source1_out(21),
      I2 => \LED_top_OBUF[3]_inst_i_26\,
      I3 => \^q\(5),
      I4 => reg_source1_out(5),
      I5 => S_cnrtl_alu_data_srce_slkt,
      O => upordown_reg_rep_2
    );
\LED_top_OBUF[5]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D0000FF1DFF00FF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \LED_top_OBUF[3]_inst_i_26\,
      I2 => \^q\(11),
      I3 => \LED_top_OBUF[4]_inst_i_27_0\,
      I4 => \LED_top_OBUF[4]_inst_i_27\,
      I5 => \LED_top_OBUF[5]_inst_i_12\,
      O => upordown_reg_rep_12
    );
\LED_top_OBUF[5]_inst_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(11),
      I1 => \LED_top_OBUF[3]_inst_i_26\,
      I2 => \^q\(5),
      O => upordown_reg_rep_13
    );
\LED_top_OBUF[6]_inst_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0AFA0CFCFC0C0"
    )
        port map (
      I0 => \^q\(11),
      I1 => reg_source1_out(22),
      I2 => \LED_top_OBUF[3]_inst_i_26\,
      I3 => \^q\(6),
      I4 => reg_source1_out(6),
      I5 => S_cnrtl_alu_data_srce_slkt,
      O => upordown_reg_rep_1
    );
\LED_top_OBUF[6]_inst_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D0000FF1DFF00FF"
    )
        port map (
      I0 => \^q\(6),
      I1 => \LED_top_OBUF[3]_inst_i_26\,
      I2 => \^q\(11),
      I3 => \LED_top_OBUF[4]_inst_i_27_0\,
      I4 => \LED_top_OBUF[4]_inst_i_27\,
      I5 => \LED_top_OBUF[6]_inst_i_13\,
      O => upordown_reg_rep_9
    );
\LED_top_OBUF[7]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0AFA0CFCFC0C0"
    )
        port map (
      I0 => \^q\(11),
      I1 => reg_source1_out(23),
      I2 => \LED_top_OBUF[3]_inst_i_26\,
      I3 => \^q\(6),
      I4 => reg_source1_out(7),
      I5 => S_cnrtl_alu_data_srce_slkt,
      O => upordown_reg_rep_0
    );
\LED_top_OBUF[7]_inst_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D0000FF1DFF00FF"
    )
        port map (
      I0 => \^q\(6),
      I1 => \LED_top_OBUF[3]_inst_i_26\,
      I2 => \^q\(11),
      I3 => \LED_top_OBUF[4]_inst_i_27_0\,
      I4 => \LED_top_OBUF[4]_inst_i_27\,
      I5 => \LED_top_OBUF[7]_inst_i_14\,
      O => upordown_reg_rep_10
    );
\LED_top_OBUF[8]_inst_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0AFA0CFCFC0C0"
    )
        port map (
      I0 => \^q\(12),
      I1 => reg_source1_out(24),
      I2 => \LED_top_OBUF[10]_inst_i_15\,
      I3 => \^q\(7),
      I4 => reg_source1_out(8),
      I5 => S_cnrtl_alu_data_srce_slkt,
      O => \upordown_reg_rep__0\
    );
\LED_top_OBUF[8]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D0000FF1DFF00FF"
    )
        port map (
      I0 => \^q\(7),
      I1 => \LED_top_OBUF[10]_inst_i_15\,
      I2 => \^q\(12),
      I3 => \LED_top_OBUF[4]_inst_i_27_0\,
      I4 => \LED_top_OBUF[4]_inst_i_27\,
      I5 => \LED_top_OBUF[8]_inst_i_14\,
      O => \upordown_reg_rep__0_9\
    );
\LED_top_OBUF[8]_inst_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(12),
      I1 => \LED_top_OBUF[10]_inst_i_15\,
      I2 => \^q\(7),
      O => \upordown_reg_rep__0_10\
    );
\LED_top_OBUF[9]_inst_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0AFA0CFCFC0C0"
    )
        port map (
      I0 => \^q\(12),
      I1 => reg_source1_out(25),
      I2 => \LED_top_OBUF[10]_inst_i_15\,
      I3 => \^q\(8),
      I4 => reg_source1_out(9),
      I5 => S_cnrtl_alu_data_srce_slkt,
      O => \upordown_reg_rep__0_0\
    );
\LED_top_OBUF[9]_inst_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D0000FF1DFF00FF"
    )
        port map (
      I0 => \^q\(8),
      I1 => \LED_top_OBUF[10]_inst_i_15\,
      I2 => \^q\(12),
      I3 => \LED_top_OBUF[4]_inst_i_27_0\,
      I4 => \LED_top_OBUF[4]_inst_i_27\,
      I5 => \LED_top_OBUF[9]_inst_i_13\,
      O => \upordown_reg_rep__0_7\
    );
\LED_top_OBUF[9]_inst_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(12),
      I1 => \LED_top_OBUF[10]_inst_i_15\,
      I2 => \^q\(8),
      O => \upordown_reg_rep__0_8\
    );
\SEGMENT7_top[7]_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0AFA0CFCFC0C0"
    )
        port map (
      I0 => \^q\(11),
      I1 => reg_source1_out(16),
      I2 => \LED_top_OBUF[3]_inst_i_26\,
      I3 => \^q\(0),
      I4 => reg_source1_out(0),
      I5 => S_cnrtl_alu_data_srce_slkt,
      O => upordown_reg_rep_8
    );
\alu_data_out_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4444444F"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => O(0),
      I2 => \^current_pc_reg[3]\,
      I3 => S_alu_data_in1(0),
      I4 => \alu_data_out_reg[1]_i_2_n_1\,
      O => D(0)
    );
\alu_data_out_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => \alu_data_out_reg[11]\(2),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[10]_i_2_n_1\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[11]_0\,
      O => D(10)
    );
\alu_data_out_reg[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[10]_i_3_n_1\,
      I1 => \^q\(1),
      I2 => reg_source1_out(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[9]_i_1_0\,
      O => \alu_data_out_reg[10]_i_2_n_1\
    );
\alu_data_out_reg[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => reg_source0_out0(3),
      I1 => S_alu_data_in1(2),
      I2 => S_alu_data_in1(4),
      I3 => reg_source0_out0(7),
      I4 => S_alu_data_in1(3),
      O => \alu_data_out_reg[10]_i_3_n_1\
    );
\alu_data_out_reg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F4444444F44"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => \alu_data_out_reg[11]\(3),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[12]\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[11]_0\,
      O => D(11)
    );
\alu_data_out_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => \alu_data_out_reg[15]\(0),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[12]\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[13]\,
      O => D(12)
    );
\alu_data_out_reg[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F4444444F44"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => \alu_data_out_reg[15]\(1),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[14]\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[13]\,
      O => D(13)
    );
\alu_data_out_reg[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => \alu_data_out_reg[15]\(2),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[14]\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[15]_0\,
      O => D(14)
    );
\alu_data_out_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => \alu_data_out_reg[15]\(3),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[15]_0\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[16]\,
      O => D(15)
    );
\alu_data_out_reg[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => \alu_data_out_reg[19]\(0),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[16]\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[17]\,
      O => D(16)
    );
\alu_data_out_reg[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \^current_pc_reg[3]\,
      I1 => \alu_data_out_reg[17]\,
      I2 => S_alu_data_in1(0),
      I3 => \alu_data_out_reg[18]\,
      I4 => \alu_data_out_reg[31]_i_1\,
      I5 => \alu_data_out_reg[19]\(1),
      O => D(17)
    );
\alu_data_out_reg[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => \alu_data_out_reg[19]\(2),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[18]\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[19]_0\,
      O => D(18)
    );
\alu_data_out_reg[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \^current_pc_reg[3]\,
      I1 => \alu_data_out_reg[19]_0\,
      I2 => S_alu_data_in1(0),
      I3 => \alu_data_out_reg[20]\,
      I4 => \alu_data_out_reg[31]_i_1\,
      I5 => \alu_data_out_reg[19]\(3),
      O => D(19)
    );
\alu_data_out_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444444F444FFF"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => O(1),
      I2 => \alu_data_out_reg[1]_i_2_n_1\,
      I3 => S_alu_data_in1(0),
      I4 => \alu_data_out_reg[2]_i_2_n_1\,
      I5 => \^current_pc_reg[3]\,
      O => D(1)
    );
\alu_data_out_reg[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => S_alu_data_in1(1),
      I1 => reg_source0_out0(0),
      I2 => S_alu_data_in1(4),
      I3 => S_alu_data_in1(2),
      I4 => S_alu_data_in1(3),
      O => \alu_data_out_reg[1]_i_2_n_1\
    );
\alu_data_out_reg[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => \alu_data_out_reg[23]\(0),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[20]\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[21]\,
      O => D(20)
    );
\alu_data_out_reg[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \^current_pc_reg[3]\,
      I1 => \alu_data_out_reg[21]\,
      I2 => S_alu_data_in1(0),
      I3 => \alu_data_out_reg[22]\,
      I4 => \alu_data_out_reg[31]_i_1\,
      I5 => \alu_data_out_reg[23]\(1),
      O => D(21)
    );
\alu_data_out_reg[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \^current_pc_reg[3]\,
      I1 => \alu_data_out_reg[22]\,
      I2 => S_alu_data_in1(0),
      I3 => \alu_data_out_reg[23]_0\,
      I4 => \alu_data_out_reg[31]_i_1\,
      I5 => \alu_data_out_reg[23]\(2),
      O => D(22)
    );
\alu_data_out_reg[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404FFFF54045404"
    )
        port map (
      I0 => \^current_pc_reg[3]\,
      I1 => \alu_data_out_reg[24]\,
      I2 => S_alu_data_in1(0),
      I3 => \alu_data_out_reg[23]_0\,
      I4 => \alu_data_out_reg[31]_i_1\,
      I5 => \alu_data_out_reg[23]\(3),
      O => D(23)
    );
\alu_data_out_reg[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F4444444F44"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => \alu_data_out_reg[27]\(0),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[25]\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[24]\,
      O => D(24)
    );
\alu_data_out_reg[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => \alu_data_out_reg[27]\(1),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[25]\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[26]\,
      O => D(25)
    );
\alu_data_out_reg[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F4444444F44"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => \alu_data_out_reg[27]\(2),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[27]_0\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[26]\,
      O => D(26)
    );
\alu_data_out_reg[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F4444444F44"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => \alu_data_out_reg[27]\(3),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[28]\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[27]_0\,
      O => D(27)
    );
\alu_data_out_reg[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => \alu_data_out_reg[29]\(0),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[28]\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[29]_0\,
      O => D(28)
    );
\alu_data_out_reg[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \^current_pc_reg[3]\,
      I1 => \alu_data_out_reg[29]_0\,
      I2 => S_alu_data_in1(0),
      I3 => \alu_data_out_reg[29]_1\,
      I4 => \alu_data_out_reg[31]_i_1\,
      I5 => \alu_data_out_reg[29]\(1),
      O => D(29)
    );
\alu_data_out_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444444F444FFF"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => O(2),
      I2 => \alu_data_out_reg[2]_i_2_n_1\,
      I3 => S_alu_data_in1(0),
      I4 => \alu_data_out_reg[3]_i_3_n_1\,
      I5 => \^current_pc_reg[3]\,
      O => D(2)
    );
\alu_data_out_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => S_alu_data_in1(1),
      I1 => reg_source0_out0(1),
      I2 => S_alu_data_in1(4),
      I3 => S_alu_data_in1(2),
      I4 => S_alu_data_in1(3),
      O => \alu_data_out_reg[2]_i_2_n_1\
    );
\alu_data_out_reg[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFFFFFEFEFFEE"
    )
        port map (
      I0 => S_alu_data_in1(12),
      I1 => S_alu_data_in1(11),
      I2 => \^q\(12),
      I3 => reg_source1_out(29),
      I4 => S_cnrtl_alu_data_srce_slkt,
      I5 => reg_source1_out(28),
      O => \alu_data_out_reg[31]_i_10_n_1\
    );
\alu_data_out_reg[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFFFFFEFEFFEE"
    )
        port map (
      I0 => S_alu_data_in1(8),
      I1 => S_alu_data_in1(7),
      I2 => \^q\(11),
      I3 => reg_source1_out(21),
      I4 => S_cnrtl_alu_data_srce_slkt,
      I5 => reg_source1_out(20),
      O => \alu_data_out_reg[31]_i_11_n_1\
    );
\alu_data_out_reg[31]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAFAC"
    )
        port map (
      I0 => \^q\(6),
      I1 => reg_source1_out(7),
      I2 => S_cnrtl_alu_data_srce_slkt,
      I3 => reg_source1_out(6),
      I4 => S_alu_data_in1(10),
      I5 => S_alu_data_in1(9),
      O => \alu_data_out_reg[31]_i_12_n_1\
    );
\alu_data_out_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_8_n_1\,
      I1 => \alu_data_out_reg[31]_i_9_n_1\,
      I2 => \alu_data_out_reg[31]_i_10_n_1\,
      I3 => \alu_data_out_reg[31]_i_11_n_1\,
      I4 => \alu_data_out_reg[31]_i_12_n_1\,
      I5 => \alu_data_out_reg[31]_i_1\,
      O => \^current_pc_reg[3]\
    );
\alu_data_out_reg[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_2_0\,
      I1 => \alu_data_out_reg[31]_i_2_1\,
      I2 => S_alu_data_in1(6),
      I3 => S_alu_data_in1(5),
      I4 => S_alu_data_in1(14),
      I5 => S_alu_data_in1(13),
      O => \alu_data_out_reg[31]_i_8_n_1\
    );
\alu_data_out_reg[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAFAC"
    )
        port map (
      I0 => \^q\(11),
      I1 => reg_source1_out(13),
      I2 => S_cnrtl_alu_data_srce_slkt,
      I3 => reg_source1_out(12),
      I4 => S_alu_data_in1(16),
      I5 => S_alu_data_in1(15),
      O => \alu_data_out_reg[31]_i_9_n_1\
    );
\alu_data_out_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F444F4F4F44"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => O(3),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[4]_i_2_n_1\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[3]_i_3_n_1\,
      O => D(3)
    );
\alu_data_out_reg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFFFFFDFFFD"
    )
        port map (
      I0 => reg_source0_out0(2),
      I1 => S_alu_data_in1(3),
      I2 => S_alu_data_in1(2),
      I3 => S_alu_data_in1(4),
      I4 => reg_source0_out0(0),
      I5 => S_alu_data_in1(1),
      O => \alu_data_out_reg[3]_i_3_n_1\
    );
\alu_data_out_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => \alu_data_out_reg[7]\(0),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[4]_i_2_n_1\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[5]_i_2_n_1\,
      O => D(4)
    );
\alu_data_out_reg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => reg_source0_out0(1),
      I1 => S_alu_data_in1(1),
      I2 => S_alu_data_in1(3),
      I3 => reg_source0_out0(3),
      I4 => S_alu_data_in1(4),
      I5 => S_alu_data_in1(2),
      O => \alu_data_out_reg[4]_i_2_n_1\
    );
\alu_data_out_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => \alu_data_out_reg[7]\(1),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[5]_i_2_n_1\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[6]_i_2_n_1\,
      O => D(5)
    );
\alu_data_out_reg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FFFF01000000"
    )
        port map (
      I0 => S_alu_data_in1(3),
      I1 => S_alu_data_in1(2),
      I2 => S_alu_data_in1(4),
      I3 => reg_source0_out0(2),
      I4 => S_alu_data_in1(1),
      I5 => \alu_data_out_reg[7]_i_8_n_1\,
      O => \alu_data_out_reg[5]_i_2_n_1\
    );
\alu_data_out_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => \alu_data_out_reg[7]\(2),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[6]_i_2_n_1\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[7]_i_3_n_1\,
      O => D(6)
    );
\alu_data_out_reg[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => S_alu_data_in1(3),
      I1 => reg_source0_out0(3),
      I2 => S_alu_data_in1(4),
      I3 => S_alu_data_in1(2),
      I4 => S_alu_data_in1(1),
      I5 => \alu_data_out_reg[8]_i_3_n_1\,
      O => \alu_data_out_reg[6]_i_2_n_1\
    );
\alu_data_out_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => \alu_data_out_reg[7]\(3),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[7]_i_3_n_1\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[8]_i_2_n_1\,
      O => D(7)
    );
\alu_data_out_reg[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[7]_i_8_n_1\,
      I1 => \^q\(1),
      I2 => reg_source1_out(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[9]_i_3_n_1\,
      O => \alu_data_out_reg[7]_i_3_n_1\
    );
\alu_data_out_reg[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => reg_source0_out0(0),
      I1 => S_alu_data_in1(2),
      I2 => S_alu_data_in1(4),
      I3 => reg_source0_out0(4),
      I4 => S_alu_data_in1(3),
      O => \alu_data_out_reg[7]_i_8_n_1\
    );
\alu_data_out_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => \alu_data_out_reg[11]\(0),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[8]_i_2_n_1\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[9]_i_2_n_1\,
      O => D(8)
    );
\alu_data_out_reg[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[8]_i_3_n_1\,
      I1 => \^q\(1),
      I2 => reg_source1_out(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[10]_i_3_n_1\,
      O => \alu_data_out_reg[8]_i_2_n_1\
    );
\alu_data_out_reg[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => reg_source0_out0(1),
      I1 => S_alu_data_in1(2),
      I2 => S_alu_data_in1(4),
      I3 => reg_source0_out0(5),
      I4 => S_alu_data_in1(3),
      O => \alu_data_out_reg[8]_i_3_n_1\
    );
\alu_data_out_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \alu_data_out_reg[31]_i_1\,
      I1 => \alu_data_out_reg[11]\(1),
      I2 => \^current_pc_reg[3]\,
      I3 => \alu_data_out_reg[9]_i_2_n_1\,
      I4 => S_alu_data_in1(0),
      I5 => \alu_data_out_reg[10]_i_2_n_1\,
      O => D(9)
    );
\alu_data_out_reg[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \alu_data_out_reg[9]_i_3_n_1\,
      I1 => \^q\(1),
      I2 => reg_source1_out(1),
      I3 => S_cnrtl_alu_data_srce_slkt,
      I4 => \alu_data_out_reg[8]_i_1_0\,
      O => \alu_data_out_reg[9]_i_2_n_1\
    );
\alu_data_out_reg[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => reg_source0_out0(2),
      I1 => S_alu_data_in1(2),
      I2 => S_alu_data_in1(4),
      I3 => reg_source0_out0(6),
      I4 => S_alu_data_in1(3),
      O => \alu_data_out_reg[9]_i_3_n_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity t02_Word_mux2 is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    n_0_1058_BUFG_inst_n_1 : in STD_LOGIC
  );
end t02_Word_mux2;

architecture STRUCTURE of t02_Word_mux2 is
begin
RAM_reg_reg_r1_0_31_0_5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => n_0_1058_BUFG_inst_n_1,
      O => p_0_in(1)
    );
RAM_reg_reg_r1_0_31_0_5_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(0),
      I1 => n_0_1058_BUFG_inst_n_1,
      O => p_0_in(0)
    );
RAM_reg_reg_r1_0_31_0_5_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(3),
      I1 => n_0_1058_BUFG_inst_n_1,
      O => p_0_in(3)
    );
RAM_reg_reg_r1_0_31_0_5_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => n_0_1058_BUFG_inst_n_1,
      O => p_0_in(2)
    );
RAM_reg_reg_r1_0_31_0_5_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(5),
      I1 => n_0_1058_BUFG_inst_n_1,
      O => p_0_in(5)
    );
RAM_reg_reg_r1_0_31_0_5_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(4),
      I1 => n_0_1058_BUFG_inst_n_1,
      O => p_0_in(4)
    );
RAM_reg_reg_r1_0_31_12_17_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(13),
      I1 => n_0_1058_BUFG_inst_n_1,
      O => p_0_in(13)
    );
RAM_reg_reg_r1_0_31_12_17_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(12),
      I1 => n_0_1058_BUFG_inst_n_1,
      O => p_0_in(12)
    );
RAM_reg_reg_r1_0_31_12_17_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(15),
      I1 => n_0_1058_BUFG_inst_n_1,
      O => p_0_in(15)
    );
RAM_reg_reg_r1_0_31_12_17_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(14),
      I1 => n_0_1058_BUFG_inst_n_1,
      O => p_0_in(14)
    );
RAM_reg_reg_r1_0_31_6_11_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(7),
      I1 => n_0_1058_BUFG_inst_n_1,
      O => p_0_in(7)
    );
RAM_reg_reg_r1_0_31_6_11_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(6),
      I1 => n_0_1058_BUFG_inst_n_1,
      O => p_0_in(6)
    );
RAM_reg_reg_r1_0_31_6_11_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(9),
      I1 => n_0_1058_BUFG_inst_n_1,
      O => p_0_in(9)
    );
RAM_reg_reg_r1_0_31_6_11_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(8),
      I1 => n_0_1058_BUFG_inst_n_1,
      O => p_0_in(8)
    );
RAM_reg_reg_r1_0_31_6_11_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(11),
      I1 => n_0_1058_BUFG_inst_n_1,
      O => p_0_in(11)
    );
RAM_reg_reg_r1_0_31_6_11_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(10),
      I1 => n_0_1058_BUFG_inst_n_1,
      O => p_0_in(10)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity t02_Word_mux2_0 is
  port (
    S_alu_data_in1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_RST_interf_reg : out STD_LOGIC;
    S_RST_interf_reg_0 : out STD_LOGIC;
    S_RST_interf_reg_1 : out STD_LOGIC;
    S_RST_interf_reg_2 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 12 downto 0 );
    reg_source1_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_cnrtl_alu_data_srce_slkt : in STD_LOGIC;
    S_RST : in STD_LOGIC;
    \LED_top_OBUF[12]_inst_i_17\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of t02_Word_mux2_0 : entity is "t02_Word_mux2";
end t02_Word_mux2_0;

architecture STRUCTURE of t02_Word_mux2_0 is
begin
\LED_top_OBUF[0]_inst_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(11),
      I1 => reg_source1_out(16),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(16)
    );
\LED_top_OBUF[12]_inst_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000111FFFFFFFF"
    )
        port map (
      I0 => S_RST,
      I1 => \LED_top_OBUF[12]_inst_i_17\(3),
      I2 => \LED_top_OBUF[12]_inst_i_17\(0),
      I3 => \LED_top_OBUF[12]_inst_i_17\(1),
      I4 => \LED_top_OBUF[12]_inst_i_17\(2),
      I5 => reg_source1_out(12),
      O => S_RST_interf_reg_2
    );
\LED_top_OBUF[12]_inst_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFDFD"
    )
        port map (
      I0 => Q(11),
      I1 => S_RST,
      I2 => \LED_top_OBUF[12]_inst_i_17\(3),
      I3 => \LED_top_OBUF[12]_inst_i_17\(0),
      I4 => \LED_top_OBUF[12]_inst_i_17\(1),
      I5 => \LED_top_OBUF[12]_inst_i_17\(2),
      O => S_RST_interf_reg_1
    );
\LED_top_OBUF[12]_inst_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000111FFFFFFFF"
    )
        port map (
      I0 => S_RST,
      I1 => \LED_top_OBUF[12]_inst_i_17\(3),
      I2 => \LED_top_OBUF[12]_inst_i_17\(0),
      I3 => \LED_top_OBUF[12]_inst_i_17\(1),
      I4 => \LED_top_OBUF[12]_inst_i_17\(2),
      I5 => reg_source1_out(28),
      O => S_RST_interf_reg_0
    );
\LED_top_OBUF[12]_inst_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFDFD"
    )
        port map (
      I0 => Q(12),
      I1 => S_RST,
      I2 => \LED_top_OBUF[12]_inst_i_17\(3),
      I3 => \LED_top_OBUF[12]_inst_i_17\(0),
      I4 => \LED_top_OBUF[12]_inst_i_17\(1),
      I5 => \LED_top_OBUF[12]_inst_i_17\(2),
      O => S_RST_interf_reg
    );
\alu_data_out_reg[31]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(1),
      I1 => reg_source1_out(1),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(1)
    );
\alu_data_out_reg[31]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(2),
      I1 => reg_source1_out(2),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(2)
    );
\alu_data_out_reg[31]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(8),
      I1 => reg_source1_out(9),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(9)
    );
\alu_data_out_reg[31]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(7),
      I1 => reg_source1_out(8),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(8)
    );
\alu_data_out_reg[31]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(12),
      I1 => reg_source1_out(31),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(31)
    );
\alu_data_out_reg[31]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(12),
      I1 => reg_source1_out(30),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(30)
    );
\alu_data_out_reg[31]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(11),
      I1 => reg_source1_out(17),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(17)
    );
\alu_data_out_reg[31]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(10),
      I1 => reg_source1_out(11),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(11)
    );
\alu_data_out_reg[31]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(9),
      I1 => reg_source1_out(10),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(10)
    );
\alu_data_out_reg[31]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(11),
      I1 => reg_source1_out(15),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(15)
    );
\alu_data_out_reg[31]_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(11),
      I1 => reg_source1_out(14),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(14)
    );
\alu_data_out_reg[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(0),
      I1 => reg_source1_out(0),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(0)
    );
\alu_data_out_reg[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(3),
      I1 => reg_source1_out(3),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(3)
    );
\alu_data_out_reg[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(4),
      I1 => reg_source1_out(4),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(4)
    );
\alu_flag_reg[0]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(12),
      I1 => reg_source1_out(28),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(28)
    );
\alu_flag_reg[0]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(12),
      I1 => reg_source1_out(29),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(29)
    );
\alu_flag_reg[0]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(12),
      I1 => reg_source1_out(27),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(27)
    );
\alu_flag_reg[0]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(12),
      I1 => reg_source1_out(25),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(25)
    );
\alu_flag_reg[0]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(12),
      I1 => reg_source1_out(26),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(26)
    );
\alu_flag_reg[0]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(12),
      I1 => reg_source1_out(24),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(24)
    );
\alu_flag_reg[0]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(11),
      I1 => reg_source1_out(22),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(22)
    );
\alu_flag_reg[0]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(11),
      I1 => reg_source1_out(23),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(23)
    );
\alu_flag_reg[0]_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(11),
      I1 => reg_source1_out(21),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(21)
    );
\alu_flag_reg[0]_i_37\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(11),
      I1 => reg_source1_out(19),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(19)
    );
\alu_flag_reg[0]_i_38\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(11),
      I1 => reg_source1_out(20),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(20)
    );
\alu_flag_reg[0]_i_39\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(11),
      I1 => reg_source1_out(18),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(18)
    );
\alu_flag_reg[0]_i_40\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(11),
      I1 => reg_source1_out(12),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(12)
    );
\alu_flag_reg[0]_i_41\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(11),
      I1 => reg_source1_out(13),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(13)
    );
\alu_flag_reg[0]_i_46\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(6),
      I1 => reg_source1_out(6),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(6)
    );
\alu_flag_reg[0]_i_47\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(6),
      I1 => reg_source1_out(7),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(7)
    );
\alu_flag_reg[0]_i_48\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(5),
      I1 => reg_source1_out(5),
      I2 => S_cnrtl_alu_data_srce_slkt,
      O => S_alu_data_in1(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity userinterface_module is
  port (
    S_RST : out STD_LOGIC;
    S_CLK : out STD_LOGIC;
    userbutton_updown : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_1_in : in STD_LOGIC
  );
end userinterface_module;

architecture STRUCTURE of userinterface_module is
  signal \^s_rst\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
  S_RST <= \^s_rst\;
S_CLK_interf_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => userbutton_updown(1),
      CE => '1',
      D => p_1_in,
      Q => S_CLK,
      R => '0'
    );
S_RST_interf_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_rst\,
      O => p_0_in
    );
S_RST_interf_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => userbutton_updown(0),
      CE => '1',
      D => p_0_in,
      Q => \^s_rst\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity t02_Word_top is
  port (
    CLK_top : in STD_LOGIC;
    BTN_top : in STD_LOGIC_VECTOR ( 4 downto 0 );
    SW_top : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SEGMENT4_top : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SEGMENT7_top : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LED_top : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of t02_Word_top : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of t02_Word_top : entity is "19746704";
end t02_Word_top;

architecture STRUCTURE of t02_Word_top is
  signal ALU_n_2 : STD_LOGIC;
  signal ALU_n_35 : STD_LOGIC;
  signal ALU_n_36 : STD_LOGIC;
  signal ALU_n_37 : STD_LOGIC;
  signal ALU_n_38 : STD_LOGIC;
  signal ALU_n_39 : STD_LOGIC;
  signal ALU_n_40 : STD_LOGIC;
  signal ALU_n_41 : STD_LOGIC;
  signal ALU_n_42 : STD_LOGIC;
  signal ALU_n_43 : STD_LOGIC;
  signal ALU_n_44 : STD_LOGIC;
  signal ALU_n_45 : STD_LOGIC;
  signal ALU_n_46 : STD_LOGIC;
  signal ALU_n_47 : STD_LOGIC;
  signal ALU_n_48 : STD_LOGIC;
  signal ALU_n_49 : STD_LOGIC;
  signal ALU_n_50 : STD_LOGIC;
  signal ALU_n_51 : STD_LOGIC;
  signal ALU_n_52 : STD_LOGIC;
  signal ALU_n_53 : STD_LOGIC;
  signal ALU_n_54 : STD_LOGIC;
  signal ALU_n_55 : STD_LOGIC;
  signal ALU_n_56 : STD_LOGIC;
  signal ALU_n_57 : STD_LOGIC;
  signal ALU_n_58 : STD_LOGIC;
  signal ALU_n_59 : STD_LOGIC;
  signal ALU_n_60 : STD_LOGIC;
  signal ALU_n_61 : STD_LOGIC;
  signal ALU_n_62 : STD_LOGIC;
  signal ALU_n_63 : STD_LOGIC;
  signal ALU_n_64 : STD_LOGIC;
  signal ALU_n_65 : STD_LOGIC;
  signal ALU_n_66 : STD_LOGIC;
  signal ALU_n_67 : STD_LOGIC;
  signal ALU_n_68 : STD_LOGIC;
  signal ALU_n_69 : STD_LOGIC;
  signal ALU_n_70 : STD_LOGIC;
  signal ALU_n_71 : STD_LOGIC;
  signal ALU_n_72 : STD_LOGIC;
  signal ALU_n_73 : STD_LOGIC;
  signal BTN_top_IBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal CLK_top_IBUF : STD_LOGIC;
  signal CLK_top_IBUF_BUFG : STD_LOGIC;
  signal IM_n_10 : STD_LOGIC;
  signal IM_n_11 : STD_LOGIC;
  signal IM_n_12 : STD_LOGIC;
  signal IM_n_21 : STD_LOGIC;
  signal IM_n_22 : STD_LOGIC;
  signal IM_n_23 : STD_LOGIC;
  signal IM_n_24 : STD_LOGIC;
  signal IM_n_25 : STD_LOGIC;
  signal IM_n_26 : STD_LOGIC;
  signal IM_n_27 : STD_LOGIC;
  signal IM_n_28 : STD_LOGIC;
  signal IM_n_37 : STD_LOGIC;
  signal IM_n_38 : STD_LOGIC;
  signal IM_n_39 : STD_LOGIC;
  signal IM_n_4 : STD_LOGIC;
  signal IM_n_40 : STD_LOGIC;
  signal IM_n_41 : STD_LOGIC;
  signal IM_n_5 : STD_LOGIC;
  signal IM_n_6 : STD_LOGIC;
  signal IM_n_7 : STD_LOGIC;
  signal IM_n_8 : STD_LOGIC;
  signal IM_n_9 : STD_LOGIC;
  signal LED_top_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal PC_n_1 : STD_LOGIC;
  signal PC_n_100 : STD_LOGIC;
  signal PC_n_101 : STD_LOGIC;
  signal PC_n_102 : STD_LOGIC;
  signal PC_n_103 : STD_LOGIC;
  signal PC_n_104 : STD_LOGIC;
  signal PC_n_105 : STD_LOGIC;
  signal PC_n_106 : STD_LOGIC;
  signal PC_n_107 : STD_LOGIC;
  signal PC_n_11 : STD_LOGIC;
  signal PC_n_111 : STD_LOGIC;
  signal PC_n_112 : STD_LOGIC;
  signal PC_n_113 : STD_LOGIC;
  signal PC_n_114 : STD_LOGIC;
  signal PC_n_118 : STD_LOGIC;
  signal PC_n_119 : STD_LOGIC;
  signal PC_n_12 : STD_LOGIC;
  signal PC_n_120 : STD_LOGIC;
  signal PC_n_121 : STD_LOGIC;
  signal PC_n_122 : STD_LOGIC;
  signal PC_n_123 : STD_LOGIC;
  signal PC_n_124 : STD_LOGIC;
  signal PC_n_125 : STD_LOGIC;
  signal PC_n_126 : STD_LOGIC;
  signal PC_n_127 : STD_LOGIC;
  signal PC_n_128 : STD_LOGIC;
  signal PC_n_129 : STD_LOGIC;
  signal PC_n_13 : STD_LOGIC;
  signal PC_n_130 : STD_LOGIC;
  signal PC_n_14 : STD_LOGIC;
  signal PC_n_15 : STD_LOGIC;
  signal PC_n_17 : STD_LOGIC;
  signal PC_n_18 : STD_LOGIC;
  signal PC_n_19 : STD_LOGIC;
  signal PC_n_20 : STD_LOGIC;
  signal PC_n_22 : STD_LOGIC;
  signal PC_n_23 : STD_LOGIC;
  signal PC_n_24 : STD_LOGIC;
  signal PC_n_25 : STD_LOGIC;
  signal PC_n_26 : STD_LOGIC;
  signal PC_n_27 : STD_LOGIC;
  signal PC_n_28 : STD_LOGIC;
  signal PC_n_29 : STD_LOGIC;
  signal PC_n_30 : STD_LOGIC;
  signal PC_n_31 : STD_LOGIC;
  signal PC_n_32 : STD_LOGIC;
  signal PC_n_33 : STD_LOGIC;
  signal PC_n_34 : STD_LOGIC;
  signal PC_n_35 : STD_LOGIC;
  signal PC_n_36 : STD_LOGIC;
  signal PC_n_37 : STD_LOGIC;
  signal PC_n_70 : STD_LOGIC;
  signal PC_n_71 : STD_LOGIC;
  signal PC_n_72 : STD_LOGIC;
  signal PC_n_73 : STD_LOGIC;
  signal PC_n_74 : STD_LOGIC;
  signal PC_n_75 : STD_LOGIC;
  signal PC_n_76 : STD_LOGIC;
  signal PC_n_77 : STD_LOGIC;
  signal PC_n_78 : STD_LOGIC;
  signal PC_n_79 : STD_LOGIC;
  signal PC_n_80 : STD_LOGIC;
  signal PC_n_81 : STD_LOGIC;
  signal PC_n_82 : STD_LOGIC;
  signal PC_n_83 : STD_LOGIC;
  signal PC_n_84 : STD_LOGIC;
  signal PC_n_85 : STD_LOGIC;
  signal PC_n_86 : STD_LOGIC;
  signal PC_n_87 : STD_LOGIC;
  signal PC_n_88 : STD_LOGIC;
  signal PC_n_89 : STD_LOGIC;
  signal PC_n_90 : STD_LOGIC;
  signal PC_n_91 : STD_LOGIC;
  signal PC_n_92 : STD_LOGIC;
  signal PC_n_93 : STD_LOGIC;
  signal PC_n_94 : STD_LOGIC;
  signal PC_n_95 : STD_LOGIC;
  signal PC_n_96 : STD_LOGIC;
  signal PC_n_97 : STD_LOGIC;
  signal PC_n_98 : STD_LOGIC;
  signal PC_n_99 : STD_LOGIC;
  signal Reg_n_1 : STD_LOGIC;
  signal Reg_n_100 : STD_LOGIC;
  signal Reg_n_101 : STD_LOGIC;
  signal Reg_n_102 : STD_LOGIC;
  signal Reg_n_103 : STD_LOGIC;
  signal Reg_n_104 : STD_LOGIC;
  signal Reg_n_105 : STD_LOGIC;
  signal Reg_n_106 : STD_LOGIC;
  signal Reg_n_107 : STD_LOGIC;
  signal Reg_n_108 : STD_LOGIC;
  signal Reg_n_109 : STD_LOGIC;
  signal Reg_n_110 : STD_LOGIC;
  signal Reg_n_111 : STD_LOGIC;
  signal Reg_n_112 : STD_LOGIC;
  signal Reg_n_113 : STD_LOGIC;
  signal Reg_n_114 : STD_LOGIC;
  signal Reg_n_115 : STD_LOGIC;
  signal Reg_n_116 : STD_LOGIC;
  signal Reg_n_117 : STD_LOGIC;
  signal Reg_n_118 : STD_LOGIC;
  signal Reg_n_119 : STD_LOGIC;
  signal Reg_n_120 : STD_LOGIC;
  signal Reg_n_121 : STD_LOGIC;
  signal Reg_n_122 : STD_LOGIC;
  signal Reg_n_123 : STD_LOGIC;
  signal Reg_n_124 : STD_LOGIC;
  signal Reg_n_125 : STD_LOGIC;
  signal Reg_n_126 : STD_LOGIC;
  signal Reg_n_127 : STD_LOGIC;
  signal Reg_n_128 : STD_LOGIC;
  signal Reg_n_129 : STD_LOGIC;
  signal Reg_n_130 : STD_LOGIC;
  signal Reg_n_131 : STD_LOGIC;
  signal Reg_n_132 : STD_LOGIC;
  signal Reg_n_133 : STD_LOGIC;
  signal Reg_n_134 : STD_LOGIC;
  signal Reg_n_135 : STD_LOGIC;
  signal Reg_n_136 : STD_LOGIC;
  signal Reg_n_137 : STD_LOGIC;
  signal Reg_n_138 : STD_LOGIC;
  signal Reg_n_139 : STD_LOGIC;
  signal Reg_n_140 : STD_LOGIC;
  signal Reg_n_141 : STD_LOGIC;
  signal Reg_n_142 : STD_LOGIC;
  signal Reg_n_143 : STD_LOGIC;
  signal Reg_n_144 : STD_LOGIC;
  signal Reg_n_145 : STD_LOGIC;
  signal Reg_n_146 : STD_LOGIC;
  signal Reg_n_147 : STD_LOGIC;
  signal Reg_n_148 : STD_LOGIC;
  signal Reg_n_149 : STD_LOGIC;
  signal Reg_n_150 : STD_LOGIC;
  signal Reg_n_151 : STD_LOGIC;
  signal Reg_n_152 : STD_LOGIC;
  signal Reg_n_153 : STD_LOGIC;
  signal Reg_n_154 : STD_LOGIC;
  signal Reg_n_155 : STD_LOGIC;
  signal Reg_n_156 : STD_LOGIC;
  signal Reg_n_157 : STD_LOGIC;
  signal Reg_n_158 : STD_LOGIC;
  signal Reg_n_159 : STD_LOGIC;
  signal Reg_n_2 : STD_LOGIC;
  signal Reg_n_3 : STD_LOGIC;
  signal Reg_n_53 : STD_LOGIC;
  signal Reg_n_54 : STD_LOGIC;
  signal Reg_n_55 : STD_LOGIC;
  signal Reg_n_56 : STD_LOGIC;
  signal Reg_n_57 : STD_LOGIC;
  signal Reg_n_58 : STD_LOGIC;
  signal Reg_n_59 : STD_LOGIC;
  signal Reg_n_60 : STD_LOGIC;
  signal Reg_n_61 : STD_LOGIC;
  signal Reg_n_62 : STD_LOGIC;
  signal Reg_n_63 : STD_LOGIC;
  signal Reg_n_64 : STD_LOGIC;
  signal Reg_n_65 : STD_LOGIC;
  signal Reg_n_66 : STD_LOGIC;
  signal Reg_n_67 : STD_LOGIC;
  signal Reg_n_68 : STD_LOGIC;
  signal Reg_n_69 : STD_LOGIC;
  signal Reg_n_70 : STD_LOGIC;
  signal Reg_n_71 : STD_LOGIC;
  signal Reg_n_72 : STD_LOGIC;
  signal Reg_n_73 : STD_LOGIC;
  signal Reg_n_74 : STD_LOGIC;
  signal Reg_n_77 : STD_LOGIC;
  signal Reg_n_78 : STD_LOGIC;
  signal Reg_n_79 : STD_LOGIC;
  signal Reg_n_80 : STD_LOGIC;
  signal Reg_n_81 : STD_LOGIC;
  signal Reg_n_82 : STD_LOGIC;
  signal Reg_n_83 : STD_LOGIC;
  signal Reg_n_84 : STD_LOGIC;
  signal Reg_n_85 : STD_LOGIC;
  signal Reg_n_86 : STD_LOGIC;
  signal Reg_n_87 : STD_LOGIC;
  signal Reg_n_88 : STD_LOGIC;
  signal Reg_n_89 : STD_LOGIC;
  signal Reg_n_90 : STD_LOGIC;
  signal Reg_n_91 : STD_LOGIC;
  signal Reg_n_92 : STD_LOGIC;
  signal Reg_n_93 : STD_LOGIC;
  signal Reg_n_94 : STD_LOGIC;
  signal Reg_n_95 : STD_LOGIC;
  signal Reg_n_96 : STD_LOGIC;
  signal Reg_n_97 : STD_LOGIC;
  signal Reg_n_98 : STD_LOGIC;
  signal Reg_n_99 : STD_LOGIC;
  signal SEGMENT4_top_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal SEGMENT7_top_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SW_top_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S_CLK : STD_LOGIC;
  signal S_CLK_BUFG : STD_LOGIC;
  signal S_RST : STD_LOGIC;
  signal S_RST_BUFG : STD_LOGIC;
  signal S_alu_data_in1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_alu_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_alu_flag : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_alubrnch_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_cnrtl_alu_data_srce_slkt : STD_LOGIC;
  signal S_current_pc : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal S_f3 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_f7 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal S_imm_12 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S_imm_20 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal S_imm_32 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_rd : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_reg_source0_out : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal S_reg_source1_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_reg_write_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S_rs0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_rs1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data0 : STD_LOGIC;
  signal data1 : STD_LOGIC;
  signal debounce_ofAll_n_17 : STD_LOGIC;
  signal debounce_ofAll_n_18 : STD_LOGIC;
  signal debounce_ofAll_n_19 : STD_LOGIC;
  signal debounce_ofAll_n_20 : STD_LOGIC;
  signal debounce_ofAll_n_21 : STD_LOGIC;
  signal debounce_ofAll_n_22 : STD_LOGIC;
  signal debounce_ofAll_n_23 : STD_LOGIC;
  signal debounce_ofAll_n_24 : STD_LOGIC;
  signal debounce_ofAll_n_25 : STD_LOGIC;
  signal debounce_ofAll_n_26 : STD_LOGIC;
  signal debounce_ofAll_n_27 : STD_LOGIC;
  signal debounce_ofAll_n_28 : STD_LOGIC;
  signal debounce_ofAll_n_29 : STD_LOGIC;
  signal debounce_ofAll_n_30 : STD_LOGIC;
  signal debounce_ofAll_n_31 : STD_LOGIC;
  signal dummy_ofAll_n_10 : STD_LOGIC;
  signal dummy_ofAll_n_11 : STD_LOGIC;
  signal dummy_ofAll_n_12 : STD_LOGIC;
  signal dummy_ofAll_n_13 : STD_LOGIC;
  signal dummy_ofAll_n_14 : STD_LOGIC;
  signal dummy_ofAll_n_15 : STD_LOGIC;
  signal dummy_ofAll_n_16 : STD_LOGIC;
  signal dummy_ofAll_n_17 : STD_LOGIC;
  signal dummy_ofAll_n_2 : STD_LOGIC;
  signal dummy_ofAll_n_3 : STD_LOGIC;
  signal dummy_ofAll_n_4 : STD_LOGIC;
  signal dummy_ofAll_n_5 : STD_LOGIC;
  signal dummy_ofAll_n_6 : STD_LOGIC;
  signal dummy_ofAll_n_7 : STD_LOGIC;
  signal dummy_ofAll_n_8 : STD_LOGIC;
  signal dummy_ofAll_n_9 : STD_LOGIC;
  signal immGen_n_1 : STD_LOGIC;
  signal immGen_n_10 : STD_LOGIC;
  signal immGen_n_11 : STD_LOGIC;
  signal immGen_n_12 : STD_LOGIC;
  signal immGen_n_13 : STD_LOGIC;
  signal immGen_n_14 : STD_LOGIC;
  signal immGen_n_15 : STD_LOGIC;
  signal immGen_n_16 : STD_LOGIC;
  signal immGen_n_17 : STD_LOGIC;
  signal immGen_n_18 : STD_LOGIC;
  signal immGen_n_19 : STD_LOGIC;
  signal immGen_n_2 : STD_LOGIC;
  signal immGen_n_20 : STD_LOGIC;
  signal immGen_n_21 : STD_LOGIC;
  signal immGen_n_22 : STD_LOGIC;
  signal immGen_n_23 : STD_LOGIC;
  signal immGen_n_24 : STD_LOGIC;
  signal immGen_n_25 : STD_LOGIC;
  signal immGen_n_26 : STD_LOGIC;
  signal immGen_n_27 : STD_LOGIC;
  signal immGen_n_28 : STD_LOGIC;
  signal immGen_n_29 : STD_LOGIC;
  signal immGen_n_3 : STD_LOGIC;
  signal immGen_n_30 : STD_LOGIC;
  signal immGen_n_31 : STD_LOGIC;
  signal immGen_n_4 : STD_LOGIC;
  signal immGen_n_45 : STD_LOGIC;
  signal immGen_n_46 : STD_LOGIC;
  signal immGen_n_47 : STD_LOGIC;
  signal immGen_n_48 : STD_LOGIC;
  signal immGen_n_49 : STD_LOGIC;
  signal immGen_n_5 : STD_LOGIC;
  signal immGen_n_50 : STD_LOGIC;
  signal immGen_n_51 : STD_LOGIC;
  signal immGen_n_52 : STD_LOGIC;
  signal immGen_n_53 : STD_LOGIC;
  signal immGen_n_54 : STD_LOGIC;
  signal immGen_n_55 : STD_LOGIC;
  signal immGen_n_56 : STD_LOGIC;
  signal immGen_n_57 : STD_LOGIC;
  signal immGen_n_58 : STD_LOGIC;
  signal immGen_n_59 : STD_LOGIC;
  signal immGen_n_6 : STD_LOGIC;
  signal immGen_n_60 : STD_LOGIC;
  signal immGen_n_61 : STD_LOGIC;
  signal immGen_n_62 : STD_LOGIC;
  signal immGen_n_63 : STD_LOGIC;
  signal immGen_n_64 : STD_LOGIC;
  signal immGen_n_65 : STD_LOGIC;
  signal immGen_n_66 : STD_LOGIC;
  signal immGen_n_67 : STD_LOGIC;
  signal immGen_n_68 : STD_LOGIC;
  signal immGen_n_69 : STD_LOGIC;
  signal immGen_n_7 : STD_LOGIC;
  signal immGen_n_70 : STD_LOGIC;
  signal immGen_n_71 : STD_LOGIC;
  signal immGen_n_72 : STD_LOGIC;
  signal immGen_n_73 : STD_LOGIC;
  signal immGen_n_74 : STD_LOGIC;
  signal immGen_n_75 : STD_LOGIC;
  signal immGen_n_76 : STD_LOGIC;
  signal immGen_n_77 : STD_LOGIC;
  signal immGen_n_78 : STD_LOGIC;
  signal immGen_n_79 : STD_LOGIC;
  signal immGen_n_8 : STD_LOGIC;
  signal immGen_n_80 : STD_LOGIC;
  signal immGen_n_81 : STD_LOGIC;
  signal immGen_n_82 : STD_LOGIC;
  signal immGen_n_83 : STD_LOGIC;
  signal immGen_n_84 : STD_LOGIC;
  signal immGen_n_85 : STD_LOGIC;
  signal immGen_n_9 : STD_LOGIC;
  signal mux2_preDM_n_33 : STD_LOGIC;
  signal mux2_preDM_n_34 : STD_LOGIC;
  signal mux2_preDM_n_35 : STD_LOGIC;
  signal mux2_preDM_n_36 : STD_LOGIC;
  signal n_0_1058_BUFG : STD_LOGIC;
  signal n_0_1058_BUFG_inst_n_1 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_in : STD_LOGIC;
  signal p_1_in_0 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_1_in_1 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_3_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_5_in : STD_LOGIC;
  signal sevenouter4index_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal upordown : STD_LOGIC;
  signal userbutton_msblsb : STD_LOGIC_VECTOR ( 1 to 1 );
  signal userbutton_updown : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
ALU: entity work.t02_Word_ALU
     port map (
      AS(0) => p_0_out(0),
      D(31) => Reg_n_1,
      D(30) => Reg_n_2,
      D(29) => immGen_n_1,
      D(28) => immGen_n_2,
      D(27) => immGen_n_3,
      D(26) => immGen_n_4,
      D(25) => immGen_n_5,
      D(24) => immGen_n_6,
      D(23) => immGen_n_7,
      D(22) => immGen_n_8,
      D(21) => immGen_n_9,
      D(20) => immGen_n_10,
      D(19) => immGen_n_11,
      D(18) => immGen_n_12,
      D(17) => immGen_n_13,
      D(16) => immGen_n_14,
      D(15) => immGen_n_15,
      D(14) => immGen_n_16,
      D(13) => immGen_n_17,
      D(12) => immGen_n_18,
      D(11) => immGen_n_19,
      D(10) => immGen_n_20,
      D(9) => immGen_n_21,
      D(8) => immGen_n_22,
      D(7) => immGen_n_23,
      D(6) => immGen_n_24,
      D(5) => immGen_n_25,
      D(4) => immGen_n_26,
      D(3) => immGen_n_27,
      D(2) => immGen_n_28,
      D(1) => immGen_n_29,
      D(0) => immGen_n_30,
      E(0) => n_0_1058_BUFG,
      \LED_top_OBUF[0]_inst_i_11\ => debounce_ofAll_n_20,
      \LED_top_OBUF[0]_inst_i_11_0\ => debounce_ofAll_n_22,
      \LED_top_OBUF[10]_inst_i_6\ => dummy_ofAll_n_3,
      \LED_top_OBUF[11]_inst_i_19\ => debounce_ofAll_n_26,
      \LED_top_OBUF[12]_inst_i_18\ => debounce_ofAll_n_18,
      \LED_top_OBUF[12]_inst_i_5\ => debounce_ofAll_n_30,
      \LED_top_OBUF[3]_inst_i_36\ => dummy_ofAll_n_2,
      \LED_top_OBUF[3]_inst_i_7\ => debounce_ofAll_n_24,
      \LED_top_OBUF[3]_inst_i_7_0\(1 downto 0) => S_rd(3 downto 2),
      Q(31 downto 0) => S_alu_data_out(31 downto 0),
      S_alu_flag(0) => S_alu_flag(0),
      \current_pc[31]_i_6\ => PC_n_19,
      \input_circle_status_reg[1]\ => ALU_n_50,
      n_0_1058_BUFG_inst_n_1 => n_0_1058_BUFG_inst_n_1,
      upordown => upordown,
      upordown_reg => ALU_n_2,
      upordown_reg_0 => ALU_n_35,
      upordown_reg_1 => ALU_n_36,
      upordown_reg_2 => ALU_n_37,
      upordown_reg_3 => ALU_n_38,
      upordown_reg_4 => ALU_n_67,
      upordown_reg_5 => ALU_n_68,
      upordown_reg_6 => ALU_n_69,
      upordown_reg_7 => ALU_n_70,
      upordown_reg_8 => ALU_n_71,
      upordown_reg_rep => ALU_n_43,
      upordown_reg_rep_0 => ALU_n_44,
      upordown_reg_rep_1 => ALU_n_45,
      upordown_reg_rep_10 => ALU_n_55,
      upordown_reg_rep_11 => ALU_n_56,
      upordown_reg_rep_12 => ALU_n_57,
      upordown_reg_rep_13 => ALU_n_58,
      upordown_reg_rep_14 => ALU_n_72,
      upordown_reg_rep_15 => ALU_n_73,
      upordown_reg_rep_2 => ALU_n_46,
      upordown_reg_rep_3 => ALU_n_47,
      upordown_reg_rep_4 => ALU_n_48,
      upordown_reg_rep_5 => ALU_n_49,
      upordown_reg_rep_6 => ALU_n_51,
      upordown_reg_rep_7 => ALU_n_52,
      upordown_reg_rep_8 => ALU_n_53,
      upordown_reg_rep_9 => ALU_n_54,
      \upordown_reg_rep__0\ => ALU_n_39,
      \upordown_reg_rep__0_0\ => ALU_n_40,
      \upordown_reg_rep__0_1\ => ALU_n_41,
      \upordown_reg_rep__0_10\ => ALU_n_66,
      \upordown_reg_rep__0_2\ => ALU_n_42,
      \upordown_reg_rep__0_3\ => ALU_n_59,
      \upordown_reg_rep__0_4\ => ALU_n_60,
      \upordown_reg_rep__0_5\ => ALU_n_61,
      \upordown_reg_rep__0_6\ => ALU_n_62,
      \upordown_reg_rep__0_7\ => ALU_n_63,
      \upordown_reg_rep__0_8\ => ALU_n_64,
      \upordown_reg_rep__0_9\ => ALU_n_65
    );
\BTN_top_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => BTN_top(0),
      O => BTN_top_IBUF(0)
    );
\BTN_top_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => BTN_top(1),
      O => BTN_top_IBUF(1)
    );
\BTN_top_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => BTN_top(2),
      O => BTN_top_IBUF(2)
    );
\BTN_top_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => BTN_top(3),
      O => BTN_top_IBUF(3)
    );
\BTN_top_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => BTN_top(4),
      O => BTN_top_IBUF(4)
    );
CLK_top_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_top_IBUF,
      O => CLK_top_IBUF_BUFG
    );
CLK_top_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK_top,
      O => CLK_top_IBUF
    );
IM: entity work.t02_Word_IM
     port map (
      AR(0) => S_RST_BUFG,
      D(8) => IM_n_4,
      D(7) => IM_n_5,
      D(6) => IM_n_6,
      D(5) => IM_n_7,
      D(4) => IM_n_8,
      D(3) => IM_n_9,
      D(2) => IM_n_10,
      D(1) => IM_n_11,
      D(0) => IM_n_12,
      E(0) => PC_n_130,
      \IMM_out_reg[0]\ => PC_n_15,
      \LED_top_OBUF[0]_inst_i_6\ => ALU_n_51,
      \LED_top_OBUF[10]_inst_i_14\(0) => PC_n_122,
      \LED_top_OBUF[10]_inst_i_14_0\(5) => PC_n_124,
      \LED_top_OBUF[10]_inst_i_14_0\(4) => PC_n_125,
      \LED_top_OBUF[10]_inst_i_14_0\(3) => PC_n_126,
      \LED_top_OBUF[10]_inst_i_14_0\(2) => PC_n_127,
      \LED_top_OBUF[10]_inst_i_14_0\(1) => PC_n_128,
      \LED_top_OBUF[10]_inst_i_14_0\(0) => PC_n_129,
      \LED_top_OBUF[1]_inst_i_8\ => ALU_n_52,
      \LED_top_OBUF[3]_inst_i_20\(3) => PC_n_107,
      \LED_top_OBUF[3]_inst_i_20\(2 downto 1) => p_3_in(1 downto 0),
      \LED_top_OBUF[3]_inst_i_20\(0) => p_5_in,
      \LED_top_OBUF[3]_inst_i_7\ => debounce_ofAll_n_24,
      \LED_top_OBUF[3]_inst_i_7_0\ => dummy_ofAll_n_2,
      \LED_top_OBUF[4]_inst_i_5\ => debounce_ofAll_n_22,
      \LED_top_OBUF[4]_inst_i_5_0\ => PC_n_31,
      \LED_top_OBUF[6]_inst_i_33\ => debounce_ofAll_n_19,
      \LED_top_OBUF[7]_inst_i_4\ => PC_n_84,
      \LED_top_OBUF[7]_inst_i_4_0\ => debounce_ofAll_n_17,
      Q(7 downto 6) => S_imm_12(11 downto 10),
      Q(5) => S_imm_12(7),
      Q(4 downto 0) => S_imm_12(4 downto 0),
      RAM_reg_reg_r1_0_31_0_5 => PC_n_1,
      RAM_reg_reg_r1_0_31_0_5_0(3 downto 1) => p_1_in_0(3 downto 1),
      RAM_reg_reg_r1_0_31_0_5_0(0) => PC_n_118,
      RAM_reg_reg_r1_0_31_0_5_1(0) => PC_n_119,
      RAM_reg_reg_r2_0_31_0_5(3) => PC_n_111,
      RAM_reg_reg_r2_0_31_0_5(2) => PC_n_112,
      RAM_reg_reg_r2_0_31_0_5(1) => PC_n_113,
      RAM_reg_reg_r2_0_31_0_5(0) => PC_n_114,
      \SEGMENT7_top[7]_i_16\ => debounce_ofAll_n_23,
      \SEGMENT7_top[7]_i_16_0\ => ALU_n_54,
      \SEGMENT7_top[7]_i_19\ => ALU_n_53,
      \SEGMENT7_top[7]_i_46\ => debounce_ofAll_n_20,
      \SEGMENT7_top[7]_i_46_0\ => debounce_ofAll_n_18,
      S_f3(0) => S_f3(0),
      S_f7(0) => S_f7(6),
      S_imm_20(0) => S_imm_20(11),
      \current_pc_reg[1]\(3 downto 0) => S_rd(3 downto 0),
      \current_pc_reg[4]\(3 downto 0) => S_rs1(3 downto 0),
      \current_pc_reg[4]_0\(3 downto 0) => S_rs0(3 downto 0),
      \input_circle_status_reg[1]\ => IM_n_27,
      \input_circle_status_reg[1]_0\ => IM_n_39,
      n_0_1058_BUFG_inst_n_1 => n_0_1058_BUFG_inst_n_1,
      upordown_reg_rep => IM_n_21,
      upordown_reg_rep_0 => IM_n_22,
      upordown_reg_rep_1 => IM_n_23,
      upordown_reg_rep_2 => IM_n_24,
      upordown_reg_rep_3 => IM_n_25,
      upordown_reg_rep_4 => IM_n_26,
      upordown_reg_rep_5 => IM_n_28,
      upordown_reg_rep_6 => IM_n_37,
      upordown_reg_rep_7 => IM_n_38,
      upordown_reg_rep_8 => IM_n_40,
      upordown_reg_rep_9 => IM_n_41
    );
\LED_top_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_top_OBUF(0),
      O => LED_top(0)
    );
\LED_top_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_top_OBUF(10),
      O => LED_top(10)
    );
\LED_top_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_top_OBUF(11),
      O => LED_top(11)
    );
\LED_top_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_top_OBUF(12),
      O => LED_top(12)
    );
\LED_top_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_top_OBUF(13),
      O => LED_top(13)
    );
\LED_top_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_top_OBUF(14),
      O => LED_top(14)
    );
\LED_top_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_top_OBUF(15),
      O => LED_top(15)
    );
\LED_top_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_top_OBUF(1),
      O => LED_top(1)
    );
\LED_top_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_top_OBUF(2),
      O => LED_top(2)
    );
\LED_top_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_top_OBUF(3),
      O => LED_top(3)
    );
\LED_top_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_top_OBUF(4),
      O => LED_top(4)
    );
\LED_top_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_top_OBUF(5),
      O => LED_top(5)
    );
\LED_top_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_top_OBUF(6),
      O => LED_top(6)
    );
\LED_top_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_top_OBUF(7),
      O => LED_top(7)
    );
\LED_top_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_top_OBUF(8),
      O => LED_top(8)
    );
\LED_top_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_top_OBUF(9),
      O => LED_top(9)
    );
PC: entity work.t02_Word_PC
     port map (
      AR(0) => S_RST_BUFG,
      CO(0) => data0,
      D(3) => PC_n_11,
      D(2) => PC_n_12,
      D(1) => PC_n_13,
      D(0) => PC_n_14,
      E(0) => PC_n_17,
      \IMM_out_reg[17]\(1) => S_imm_12(11),
      \IMM_out_reg[17]\(0) => S_imm_12(7),
      \LED_top_OBUF[10]_inst_i_14\ => dummy_ofAll_n_3,
      \LED_top_OBUF[12]_inst_i_5\ => mux2_preDM_n_36,
      \LED_top_OBUF[12]_inst_i_5_0\ => mux2_preDM_n_35,
      \LED_top_OBUF[12]_inst_i_5_1\ => mux2_preDM_n_34,
      \LED_top_OBUF[12]_inst_i_5_2\ => mux2_preDM_n_33,
      \LED_top_OBUF[12]_inst_i_5_3\ => debounce_ofAll_n_27,
      \LED_top_OBUF[15]_inst_i_5\ => debounce_ofAll_n_31,
      \LED_top_OBUF[3]_inst_i_3\ => dummy_ofAll_n_2,
      \LED_top_OBUF[4]_inst_i_6\ => debounce_ofAll_n_23,
      \LED_top_OBUF[4]_inst_i_6_0\ => debounce_ofAll_n_24,
      \LED_top_OBUF[6]_inst_i_4\ => debounce_ofAll_n_21,
      \LED_top_OBUF[8]_inst_i_4\ => debounce_ofAll_n_17,
      Q(8 downto 6) => S_current_pc(20 downto 18),
      Q(5) => S_current_pc(16),
      Q(4 downto 0) => S_current_pc(4 downto 0),
      RAM_reg_reg_r2_0_31_30_31(15 downto 0) => S_alu_data_out(31 downto 16),
      S_CLK_BUFG => S_CLK_BUFG,
      S_RST => S_RST,
      S_RST_interf_reg => PC_n_19,
      S_RST_interf_reg_0 => PC_n_20,
      S_RST_interf_reg_1 => PC_n_33,
      S_alu_flag(0) => S_alu_flag(0),
      S_cnrtl_alu_data_srce_slkt => S_cnrtl_alu_data_srce_slkt,
      S_f3(0) => S_f3(0),
      S_imm_20(0) => S_imm_20(11),
      \alu_flag_reg[0]\(0) => data1,
      alubrnch_out(31 downto 0) => S_alubrnch_out(31 downto 0),
      \current_pc_reg[13]_0\ => PC_n_34,
      \current_pc_reg[14]_0\ => PC_n_35,
      \current_pc_reg[15]_0\ => PC_n_36,
      \current_pc_reg[16]_0\ => PC_n_25,
      \current_pc_reg[17]_0\ => PC_n_90,
      \current_pc_reg[18]_0\ => PC_n_37,
      \current_pc_reg[18]_1\ => PC_n_89,
      \current_pc_reg[19]_0\ => PC_n_70,
      \current_pc_reg[19]_1\ => PC_n_88,
      \current_pc_reg[1]_0\ => PC_n_28,
      \current_pc_reg[1]_1\(3) => PC_n_107,
      \current_pc_reg[1]_1\(2 downto 1) => p_3_in(1 downto 0),
      \current_pc_reg[1]_1\(0) => p_5_in,
      \current_pc_reg[1]_2\(0) => PC_n_130,
      \current_pc_reg[20]_0\ => PC_n_71,
      \current_pc_reg[20]_1\ => PC_n_87,
      \current_pc_reg[21]_0\ => PC_n_72,
      \current_pc_reg[21]_1\ => PC_n_86,
      \current_pc_reg[22]_0\ => PC_n_73,
      \current_pc_reg[22]_1\ => PC_n_85,
      \current_pc_reg[23]_0\ => PC_n_84,
      \current_pc_reg[23]_1\(10) => S_imm_32(31),
      \current_pc_reg[23]_1\(9) => S_imm_32(17),
      \current_pc_reg[23]_1\(8 downto 4) => S_imm_32(11 downto 7),
      \current_pc_reg[23]_1\(3 downto 0) => S_imm_32(5 downto 2),
      \current_pc_reg[24]_0\ => PC_n_83,
      \current_pc_reg[25]_0\ => PC_n_81,
      \current_pc_reg[26]_0\ => PC_n_80,
      \current_pc_reg[27]_0\ => PC_n_79,
      \current_pc_reg[28]_0\ => PC_n_77,
      \current_pc_reg[29]_0\ => PC_n_76,
      \current_pc_reg[30]_0\ => PC_n_75,
      \current_pc_reg[31]_0\ => PC_n_74,
      \current_pc_reg[3]_0\ => PC_n_15,
      \current_pc_reg[3]_1\ => PC_n_18,
      \current_pc_reg[3]_2\ => PC_n_22,
      \current_pc_reg[3]_3\ => PC_n_24,
      \current_pc_reg[3]_4\ => PC_n_26,
      \current_pc_reg[3]_5\ => PC_n_31,
      \current_pc_reg[3]_6\(0) => PC_n_119,
      \current_pc_reg[3]_7\ => PC_n_120,
      \current_pc_reg[3]_8\(0) => PC_n_122,
      \current_pc_reg[4]_0\ => PC_n_1,
      \current_pc_reg[4]_1\ => PC_n_30,
      \current_pc_reg[4]_2\(3) => PC_n_111,
      \current_pc_reg[4]_2\(2) => PC_n_112,
      \current_pc_reg[4]_2\(1) => PC_n_113,
      \current_pc_reg[4]_2\(0) => PC_n_114,
      \current_pc_reg[4]_3\(3 downto 1) => p_1_in_0(3 downto 1),
      \current_pc_reg[4]_3\(0) => PC_n_118,
      \current_pc_reg[4]_4\ => PC_n_123,
      \current_pc_reg[4]_5\(5) => PC_n_124,
      \current_pc_reg[4]_5\(4) => PC_n_125,
      \current_pc_reg[4]_5\(3) => PC_n_126,
      \current_pc_reg[4]_5\(2) => PC_n_127,
      \current_pc_reg[4]_5\(1) => PC_n_128,
      \current_pc_reg[4]_5\(0) => PC_n_129,
      \input_circle_status_reg[7]\ => PC_n_78,
      \input_circle_status_reg[7]_0\ => PC_n_82,
      \input_circle_status_reg[7]_1\ => PC_n_121,
      n_0_1058_BUFG_inst_n_1 => n_0_1058_BUFG_inst_n_1,
      p_0_in(15) => PC_n_91,
      p_0_in(14) => PC_n_92,
      p_0_in(13) => PC_n_93,
      p_0_in(12) => PC_n_94,
      p_0_in(11) => PC_n_95,
      p_0_in(10) => PC_n_96,
      p_0_in(9) => PC_n_97,
      p_0_in(8) => PC_n_98,
      p_0_in(7) => PC_n_99,
      p_0_in(6) => PC_n_100,
      p_0_in(5) => PC_n_101,
      p_0_in(4) => PC_n_102,
      p_0_in(3) => PC_n_103,
      p_0_in(2) => PC_n_104,
      p_0_in(1) => PC_n_105,
      p_0_in(0) => PC_n_106,
      upordown => upordown,
      upordown_reg => PC_n_27,
      upordown_reg_rep => PC_n_23,
      upordown_reg_rep_0 => PC_n_29,
      upordown_reg_rep_1 => PC_n_32
    );
Reg: entity work.t02_Word_Reg
     port map (
      CO(0) => data0,
      D(1) => Reg_n_1,
      D(0) => Reg_n_2,
      \LED_top_OBUF[10]_inst_i_9\ => dummy_ofAll_n_3,
      \LED_top_OBUF[10]_inst_i_9_0\ => ALU_n_40,
      \LED_top_OBUF[11]_inst_i_9\ => ALU_n_39,
      \LED_top_OBUF[13]_inst_i_2\ => immGen_n_51,
      \LED_top_OBUF[13]_inst_i_8\ => ALU_n_37,
      \LED_top_OBUF[14]_inst_i_2\ => immGen_n_52,
      \LED_top_OBUF[14]_inst_i_8\ => ALU_n_36,
      \LED_top_OBUF[15]_inst_i_15\ => ALU_n_2,
      \LED_top_OBUF[15]_inst_i_4\ => debounce_ofAll_n_27,
      \LED_top_OBUF[15]_inst_i_4_0\ => debounce_ofAll_n_28,
      \LED_top_OBUF[15]_inst_i_4_1\ => immGen_n_53,
      \LED_top_OBUF[3]_inst_i_25\ => dummy_ofAll_n_2,
      \LED_top_OBUF[3]_inst_i_25_0\ => debounce_ofAll_n_22,
      \LED_top_OBUF[3]_inst_i_25_1\ => debounce_ofAll_n_18,
      \LED_top_OBUF[3]_inst_i_25_2\ => ALU_n_47,
      \LED_top_OBUF[4]_inst_i_16\ => immGen_n_57,
      \LED_top_OBUF[4]_inst_i_16_0\ => debounce_ofAll_n_26,
      \LED_top_OBUF[4]_inst_i_23\(3 downto 0) => S_rs1(3 downto 0),
      \LED_top_OBUF[4]_inst_i_23_0\(3 downto 0) => S_rd(3 downto 0),
      \LED_top_OBUF[4]_inst_i_8\ => ALU_n_46,
      \LED_top_OBUF[5]_inst_i_17\ => debounce_ofAll_n_29,
      \LED_top_OBUF[5]_inst_i_17_0\ => immGen_n_79,
      \LED_top_OBUF[5]_inst_i_17_1\ => debounce_ofAll_n_25,
      \LED_top_OBUF[5]_inst_i_8\ => ALU_n_45,
      \LED_top_OBUF[6]_inst_i_12\ => ALU_n_44,
      \LED_top_OBUF[7]_inst_i_9\ => ALU_n_43,
      \LED_top_OBUF[8]_inst_i_3\ => immGen_n_46,
      \LED_top_OBUF[8]_inst_i_9\ => ALU_n_42,
      \LED_top_OBUF[9]_inst_i_3\ => immGen_n_47,
      \LED_top_OBUF[9]_inst_i_9\ => ALU_n_41,
      O(3) => Reg_n_77,
      O(2) => Reg_n_78,
      O(1) => Reg_n_79,
      O(0) => Reg_n_80,
      Q(11) => S_imm_32(31),
      Q(10) => S_imm_32(17),
      Q(9 downto 5) => S_imm_32(11 downto 7),
      Q(4 downto 0) => S_imm_32(5 downto 1),
      \SEGMENT7_top[7]_i_48\(3 downto 0) => S_rs0(3 downto 0),
      S_CLK_BUFG => S_CLK_BUFG,
      S_alu_data_in1(29 downto 0) => S_alu_data_in1(29 downto 0),
      S_cnrtl_alu_data_srce_slkt => S_cnrtl_alu_data_srce_slkt,
      S_f7(0) => S_f7(6),
      \alu_data_out_reg[11]_i_7_0\(3) => Reg_n_85,
      \alu_data_out_reg[11]_i_7_0\(2) => Reg_n_86,
      \alu_data_out_reg[11]_i_7_0\(1) => Reg_n_87,
      \alu_data_out_reg[11]_i_7_0\(0) => Reg_n_88,
      \alu_data_out_reg[15]_i_7_0\(3) => Reg_n_89,
      \alu_data_out_reg[15]_i_7_0\(2) => Reg_n_90,
      \alu_data_out_reg[15]_i_7_0\(1) => Reg_n_91,
      \alu_data_out_reg[15]_i_7_0\(0) => Reg_n_92,
      \alu_data_out_reg[19]_i_8_0\(3) => Reg_n_93,
      \alu_data_out_reg[19]_i_8_0\(2) => Reg_n_94,
      \alu_data_out_reg[19]_i_8_0\(1) => Reg_n_95,
      \alu_data_out_reg[19]_i_8_0\(0) => Reg_n_96,
      \alu_data_out_reg[23]_i_8_0\(3) => Reg_n_97,
      \alu_data_out_reg[23]_i_8_0\(2) => Reg_n_98,
      \alu_data_out_reg[23]_i_8_0\(1) => Reg_n_99,
      \alu_data_out_reg[23]_i_8_0\(0) => Reg_n_100,
      \alu_data_out_reg[27]_i_7_0\(3) => Reg_n_101,
      \alu_data_out_reg[27]_i_7_0\(2) => Reg_n_102,
      \alu_data_out_reg[27]_i_7_0\(1) => Reg_n_103,
      \alu_data_out_reg[27]_i_7_0\(0) => Reg_n_104,
      \alu_data_out_reg[31]\ => immGen_n_31,
      \alu_data_out_reg[31]_0\ => PC_n_18,
      \alu_data_out_reg[31]_i_25_0\(1) => Reg_n_105,
      \alu_data_out_reg[31]_i_25_0\(0) => Reg_n_106,
      \alu_data_out_reg[6]_i_4\ => Reg_n_72,
      \alu_data_out_reg[6]_i_4_0\ => Reg_n_74,
      \alu_data_out_reg[7]_i_7_0\(3) => Reg_n_81,
      \alu_data_out_reg[7]_i_7_0\(2) => Reg_n_82,
      \alu_data_out_reg[7]_i_7_0\(1) => Reg_n_83,
      \alu_data_out_reg[7]_i_7_0\(0) => Reg_n_84,
      \alu_flag_reg[0]_i_13_0\(0) => data1,
      \current_pc_reg[3]\ => Reg_n_3,
      \current_pc_reg[3]_0\ => Reg_n_53,
      \current_pc_reg[3]_1\ => Reg_n_54,
      \current_pc_reg[3]_10\ => Reg_n_63,
      \current_pc_reg[3]_11\ => Reg_n_64,
      \current_pc_reg[3]_12\ => Reg_n_65,
      \current_pc_reg[3]_13\ => Reg_n_66,
      \current_pc_reg[3]_14\ => Reg_n_67,
      \current_pc_reg[3]_15\ => Reg_n_68,
      \current_pc_reg[3]_16\ => Reg_n_69,
      \current_pc_reg[3]_17\ => Reg_n_70,
      \current_pc_reg[3]_18\ => Reg_n_71,
      \current_pc_reg[3]_19\ => Reg_n_73,
      \current_pc_reg[3]_2\ => Reg_n_55,
      \current_pc_reg[3]_20\ => Reg_n_158,
      \current_pc_reg[3]_3\ => Reg_n_56,
      \current_pc_reg[3]_4\ => Reg_n_57,
      \current_pc_reg[3]_5\ => Reg_n_58,
      \current_pc_reg[3]_6\ => Reg_n_59,
      \current_pc_reg[3]_7\ => Reg_n_60,
      \current_pc_reg[3]_8\ => Reg_n_61,
      \current_pc_reg[3]_9\ => Reg_n_62,
      p_0_in(31) => PC_n_91,
      p_0_in(30) => PC_n_92,
      p_0_in(29) => PC_n_93,
      p_0_in(28) => PC_n_94,
      p_0_in(27) => PC_n_95,
      p_0_in(26) => PC_n_96,
      p_0_in(25) => PC_n_97,
      p_0_in(24) => PC_n_98,
      p_0_in(23) => PC_n_99,
      p_0_in(22) => PC_n_100,
      p_0_in(21) => PC_n_101,
      p_0_in(20) => PC_n_102,
      p_0_in(19) => PC_n_103,
      p_0_in(18) => PC_n_104,
      p_0_in(17) => PC_n_105,
      p_0_in(16) => PC_n_106,
      p_0_in(15 downto 0) => S_reg_write_data(15 downto 0),
      reg_source0_out0(16 downto 14) => S_reg_source0_out(28 downto 26),
      reg_source0_out0(13) => S_reg_source0_out(23),
      reg_source0_out0(12) => S_reg_source0_out(20),
      reg_source0_out0(11) => S_reg_source0_out(16),
      reg_source0_out0(10 downto 8) => S_reg_source0_out(12 downto 10),
      reg_source0_out0(7 downto 0) => S_reg_source0_out(7 downto 0),
      reg_source1_out(31 downto 0) => S_reg_source1_out(31 downto 0),
      reg_write_enable => n_0_1058_BUFG,
      upordown => upordown,
      upordown_reg => Reg_n_109,
      upordown_reg_0 => Reg_n_110,
      upordown_reg_1 => Reg_n_111,
      upordown_reg_10 => Reg_n_122,
      upordown_reg_11 => Reg_n_123,
      upordown_reg_12 => Reg_n_124,
      upordown_reg_13 => Reg_n_159,
      upordown_reg_2 => Reg_n_113,
      upordown_reg_3 => Reg_n_114,
      upordown_reg_4 => Reg_n_115,
      upordown_reg_5 => Reg_n_117,
      upordown_reg_6 => Reg_n_118,
      upordown_reg_7 => Reg_n_119,
      upordown_reg_8 => Reg_n_120,
      upordown_reg_9 => Reg_n_121,
      upordown_reg_rep => Reg_n_112,
      upordown_reg_rep_0 => Reg_n_116,
      upordown_reg_rep_1 => Reg_n_137,
      upordown_reg_rep_10 => Reg_n_146,
      upordown_reg_rep_11 => Reg_n_147,
      upordown_reg_rep_12 => Reg_n_148,
      upordown_reg_rep_13 => Reg_n_149,
      upordown_reg_rep_14 => Reg_n_150,
      upordown_reg_rep_15 => Reg_n_151,
      upordown_reg_rep_16 => Reg_n_152,
      upordown_reg_rep_17 => Reg_n_153,
      upordown_reg_rep_18 => Reg_n_154,
      upordown_reg_rep_19 => Reg_n_155,
      upordown_reg_rep_2 => Reg_n_138,
      upordown_reg_rep_20 => Reg_n_156,
      upordown_reg_rep_21 => Reg_n_157,
      upordown_reg_rep_3 => Reg_n_139,
      upordown_reg_rep_4 => Reg_n_140,
      upordown_reg_rep_5 => Reg_n_141,
      upordown_reg_rep_6 => Reg_n_142,
      upordown_reg_rep_7 => Reg_n_143,
      upordown_reg_rep_8 => Reg_n_144,
      upordown_reg_rep_9 => Reg_n_145,
      \upordown_reg_rep__0\ => Reg_n_107,
      \upordown_reg_rep__0_0\ => Reg_n_108,
      \upordown_reg_rep__0_1\ => Reg_n_125,
      \upordown_reg_rep__0_10\ => Reg_n_134,
      \upordown_reg_rep__0_11\ => Reg_n_135,
      \upordown_reg_rep__0_12\ => Reg_n_136,
      \upordown_reg_rep__0_2\ => Reg_n_126,
      \upordown_reg_rep__0_3\ => Reg_n_127,
      \upordown_reg_rep__0_4\ => Reg_n_128,
      \upordown_reg_rep__0_5\ => Reg_n_129,
      \upordown_reg_rep__0_6\ => Reg_n_130,
      \upordown_reg_rep__0_7\ => Reg_n_131,
      \upordown_reg_rep__0_8\ => Reg_n_132,
      \upordown_reg_rep__0_9\ => Reg_n_133
    );
\SEGMENT4_top_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT4_top_OBUF(0),
      O => SEGMENT4_top(0)
    );
\SEGMENT4_top_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT4_top_OBUF(1),
      O => SEGMENT4_top(1)
    );
\SEGMENT4_top_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT4_top_OBUF(2),
      O => SEGMENT4_top(2)
    );
\SEGMENT4_top_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT4_top_OBUF(3),
      O => SEGMENT4_top(3)
    );
\SEGMENT7_top_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT7_top_OBUF(0),
      O => SEGMENT7_top(0)
    );
\SEGMENT7_top_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT7_top_OBUF(1),
      O => SEGMENT7_top(1)
    );
\SEGMENT7_top_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT7_top_OBUF(2),
      O => SEGMENT7_top(2)
    );
\SEGMENT7_top_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT7_top_OBUF(3),
      O => SEGMENT7_top(3)
    );
\SEGMENT7_top_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT7_top_OBUF(4),
      O => SEGMENT7_top(4)
    );
\SEGMENT7_top_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT7_top_OBUF(5),
      O => SEGMENT7_top(5)
    );
\SEGMENT7_top_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT7_top_OBUF(6),
      O => SEGMENT7_top(6)
    );
\SEGMENT7_top_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT7_top_OBUF(7),
      O => SEGMENT7_top(7)
    );
\SW_top_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW_top(0),
      O => SW_top_IBUF(0)
    );
\SW_top_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW_top(10),
      O => SW_top_IBUF(10)
    );
\SW_top_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW_top(11),
      O => SW_top_IBUF(11)
    );
\SW_top_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW_top(12),
      O => SW_top_IBUF(12)
    );
\SW_top_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW_top(13),
      O => SW_top_IBUF(13)
    );
\SW_top_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW_top(14),
      O => SW_top_IBUF(14)
    );
\SW_top_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW_top(15),
      O => SW_top_IBUF(15)
    );
\SW_top_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW_top(1),
      O => SW_top_IBUF(1)
    );
\SW_top_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW_top(2),
      O => SW_top_IBUF(2)
    );
\SW_top_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW_top(3),
      O => SW_top_IBUF(3)
    );
\SW_top_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW_top(4),
      O => SW_top_IBUF(4)
    );
\SW_top_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW_top(5),
      O => SW_top_IBUF(5)
    );
\SW_top_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW_top(6),
      O => SW_top_IBUF(6)
    );
\SW_top_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW_top(7),
      O => SW_top_IBUF(7)
    );
\SW_top_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW_top(8),
      O => SW_top_IBUF(8)
    );
\SW_top_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW_top(9),
      O => SW_top_IBUF(9)
    );
S_CLK_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => S_CLK,
      O => S_CLK_BUFG
    );
S_CLK_interf_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_CLK_BUFG,
      O => p_1_in
    );
S_RST_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => S_RST,
      O => S_RST_BUFG
    );
\alu_flag_reg[0]_i_2\: unisim.vcomponents.BUFG
     port map (
      I => PC_n_20,
      O => p_0_out(0)
    );
debounce_ofAll: entity work.debounce_module
     port map (
      BTN_top_IBUF(4 downto 0) => BTN_top_IBUF(4 downto 0),
      CLK_top_IBUF_BUFG => CLK_top_IBUF_BUFG,
      D(6 downto 0) => p_1_in_1(7 downto 1),
      LED_top_OBUF(15 downto 0) => LED_top_OBUF(15 downto 0),
      \LED_top_OBUF[0]_inst_i_1_0\ => dummy_ofAll_n_17,
      \LED_top_OBUF[0]_inst_i_2_0\ => PC_n_23,
      \LED_top_OBUF[0]_inst_i_2_1\ => IM_n_21,
      \LED_top_OBUF[0]_inst_i_2_2\ => Reg_n_156,
      \LED_top_OBUF[0]_inst_i_2_3\ => immGen_n_85,
      \LED_top_OBUF[0]_inst_i_2_4\ => dummy_ofAll_n_16,
      \LED_top_OBUF[0]_inst_i_2_5\ => Reg_n_157,
      \LED_top_OBUF[0]_inst_i_31_0\ => dummy_ofAll_n_15,
      \LED_top_OBUF[0]_inst_i_31_1\ => IM_n_22,
      \LED_top_OBUF[0]_inst_i_36_0\ => PC_n_26,
      \LED_top_OBUF[0]_inst_i_36_1\ => PC_n_22,
      \LED_top_OBUF[0]_inst_i_37_0\ => PC_n_123,
      \LED_top_OBUF[0]_inst_i_3_0\ => immGen_n_61,
      \LED_top_OBUF[0]_inst_i_3_1\ => ALU_n_50,
      \LED_top_OBUF[0]_inst_i_5_0\ => ALU_n_51,
      \LED_top_OBUF[10]_inst_i_1_0\ => dummy_ofAll_n_8,
      \LED_top_OBUF[10]_inst_i_2_0\ => ALU_n_64,
      \LED_top_OBUF[10]_inst_i_2_1\ => Reg_n_129,
      \LED_top_OBUF[10]_inst_i_2_2\ => Reg_n_130,
      \LED_top_OBUF[10]_inst_i_3_0\ => immGen_n_48,
      \LED_top_OBUF[10]_inst_i_3_1\ => Reg_n_128,
      \LED_top_OBUF[10]_inst_i_4_0\ => PC_n_80,
      \LED_top_OBUF[10]_inst_i_4_1\ => dummy_ofAll_n_3,
      \LED_top_OBUF[10]_inst_i_4_2\ => immGen_n_72,
      \LED_top_OBUF[10]_inst_i_5_0\ => immGen_n_73,
      \LED_top_OBUF[10]_inst_i_5_1\ => ALU_n_40,
      \LED_top_OBUF[10]_inst_i_5_2\ => ALU_n_63,
      \LED_top_OBUF[11]_inst_i_1_0\ => dummy_ofAll_n_7,
      \LED_top_OBUF[11]_inst_i_1_1\ => PC_n_78,
      \LED_top_OBUF[11]_inst_i_2_0\ => ALU_n_66,
      \LED_top_OBUF[11]_inst_i_2_1\ => Reg_n_126,
      \LED_top_OBUF[11]_inst_i_2_2\ => Reg_n_127,
      \LED_top_OBUF[11]_inst_i_3_0\ => immGen_n_49,
      \LED_top_OBUF[11]_inst_i_3_1\ => Reg_n_125,
      \LED_top_OBUF[11]_inst_i_4_0\ => PC_n_79,
      \LED_top_OBUF[11]_inst_i_4_1\ => immGen_n_70,
      \LED_top_OBUF[11]_inst_i_5_0\ => immGen_n_71,
      \LED_top_OBUF[11]_inst_i_5_1\ => ALU_n_39,
      \LED_top_OBUF[11]_inst_i_5_2\ => ALU_n_65,
      \LED_top_OBUF[12]_inst_i_1_0\ => dummy_ofAll_n_6,
      \LED_top_OBUF[12]_inst_i_2_0\ => Reg_n_124,
      \LED_top_OBUF[12]_inst_i_2_1\ => ALU_n_35,
      \LED_top_OBUF[12]_inst_i_2_2\ => PC_n_27,
      \LED_top_OBUF[12]_inst_i_2_3\ => Reg_n_123,
      \LED_top_OBUF[12]_inst_i_3_0\ => PC_n_77,
      \LED_top_OBUF[12]_inst_i_3_1\ => immGen_n_66,
      \LED_top_OBUF[12]_inst_i_4_0\ => ALU_n_67,
      \LED_top_OBUF[12]_inst_i_4_1\ => immGen_n_50,
      \LED_top_OBUF[12]_inst_i_4_2\ => ALU_n_38,
      \LED_top_OBUF[12]_inst_i_5_0\ => ALU_n_71,
      \LED_top_OBUF[12]_inst_i_5_1\ => Reg_n_159,
      \LED_top_OBUF[13]_inst_i_1_0\ => dummy_ofAll_n_5,
      \LED_top_OBUF[13]_inst_i_1_1\ => Reg_n_109,
      \LED_top_OBUF[13]_inst_i_1_2\ => PC_n_34,
      \LED_top_OBUF[13]_inst_i_2_0\ => Reg_n_120,
      \LED_top_OBUF[13]_inst_i_3_0\ => Reg_n_121,
      \LED_top_OBUF[13]_inst_i_3_1\ => Reg_n_122,
      \LED_top_OBUF[13]_inst_i_4_0\ => PC_n_76,
      \LED_top_OBUF[13]_inst_i_4_1\ => immGen_n_67,
      \LED_top_OBUF[13]_inst_i_5_0\ => ALU_n_68,
      \LED_top_OBUF[13]_inst_i_5_1\ => immGen_n_51,
      \LED_top_OBUF[13]_inst_i_5_2\ => ALU_n_37,
      \LED_top_OBUF[14]_inst_i_1_0\ => dummy_ofAll_n_4,
      \LED_top_OBUF[14]_inst_i_1_1\ => Reg_n_110,
      \LED_top_OBUF[14]_inst_i_1_2\ => PC_n_35,
      \LED_top_OBUF[14]_inst_i_2_0\ => Reg_n_118,
      \LED_top_OBUF[14]_inst_i_3_0\ => Reg_n_119,
      \LED_top_OBUF[14]_inst_i_3_1\ => Reg_n_117,
      \LED_top_OBUF[14]_inst_i_4_0\ => PC_n_75,
      \LED_top_OBUF[14]_inst_i_4_1\ => immGen_n_68,
      \LED_top_OBUF[14]_inst_i_5_0\ => ALU_n_69,
      \LED_top_OBUF[14]_inst_i_5_1\ => immGen_n_52,
      \LED_top_OBUF[14]_inst_i_5_2\ => ALU_n_36,
      \LED_top_OBUF[15]_inst_i_1_0\ => ALU_n_2,
      \LED_top_OBUF[15]_inst_i_1_1\ => Reg_n_111,
      \LED_top_OBUF[15]_inst_i_1_2\ => PC_n_36,
      \LED_top_OBUF[15]_inst_i_3_0\ => Reg_n_114,
      \LED_top_OBUF[15]_inst_i_3_1\ => Reg_n_115,
      \LED_top_OBUF[15]_inst_i_4_0\ => Reg_n_113,
      \LED_top_OBUF[15]_inst_i_5_0\ => PC_n_74,
      \LED_top_OBUF[15]_inst_i_5_1\ => immGen_n_63,
      \LED_top_OBUF[15]_inst_i_6_0\ => ALU_n_70,
      \LED_top_OBUF[15]_inst_i_6_1\ => immGen_n_53,
      \LED_top_OBUF[15]_inst_i_6_2\(13) => S_alu_data_out(31),
      \LED_top_OBUF[15]_inst_i_6_2\(12 downto 11) => S_alu_data_out(22 downto 21),
      \LED_top_OBUF[15]_inst_i_6_2\(10 downto 6) => S_alu_data_out(19 downto 15),
      \LED_top_OBUF[15]_inst_i_6_2\(5 downto 4) => S_alu_data_out(6 downto 5),
      \LED_top_OBUF[15]_inst_i_6_2\(3 downto 0) => S_alu_data_out(3 downto 0),
      \LED_top_OBUF[1]_inst_i_20_0\ => immGen_n_84,
      \LED_top_OBUF[1]_inst_i_20_1\ => PC_n_90,
      \LED_top_OBUF[1]_inst_i_23_0\ => ALU_n_49,
      \LED_top_OBUF[1]_inst_i_4_0\ => ALU_n_52,
      \LED_top_OBUF[1]_inst_i_7_0\ => immGen_n_60,
      \LED_top_OBUF[1]_inst_i_8_0\ => Reg_n_154,
      \LED_top_OBUF[1]_inst_i_8_1\ => Reg_n_155,
      \LED_top_OBUF[2]_inst_i_10_0\ => PC_n_89,
      \LED_top_OBUF[2]_inst_i_10_1\ => immGen_n_83,
      \LED_top_OBUF[2]_inst_i_1_0\ => PC_n_37,
      \LED_top_OBUF[2]_inst_i_24_0\ => ALU_n_48,
      \LED_top_OBUF[2]_inst_i_2_0\ => ALU_n_72,
      \LED_top_OBUF[2]_inst_i_2_1\ => IM_n_28,
      \LED_top_OBUF[2]_inst_i_2_2\ => Reg_n_153,
      \LED_top_OBUF[2]_inst_i_2_3\ => Reg_n_152,
      \LED_top_OBUF[2]_inst_i_4_0\ => ALU_n_53,
      \LED_top_OBUF[2]_inst_i_8_0\ => immGen_n_59,
      \LED_top_OBUF[2]_inst_i_9_0\(2 downto 0) => S_rs0(2 downto 0),
      \LED_top_OBUF[3]_inst_i_10_0\(2 downto 0) => S_rs1(3 downto 1),
      \LED_top_OBUF[3]_inst_i_10_1\ => IM_n_26,
      \LED_top_OBUF[3]_inst_i_10_2\(3 downto 0) => S_rd(3 downto 0),
      \LED_top_OBUF[3]_inst_i_1_0\ => PC_n_70,
      \LED_top_OBUF[3]_inst_i_2_0\ => ALU_n_73,
      \LED_top_OBUF[3]_inst_i_2_1\ => IM_n_37,
      \LED_top_OBUF[3]_inst_i_2_2\ => Reg_n_150,
      \LED_top_OBUF[3]_inst_i_2_3\ => Reg_n_151,
      \LED_top_OBUF[3]_inst_i_8_0\ => immGen_n_58,
      \LED_top_OBUF[3]_inst_i_8_1\ => Reg_n_149,
      \LED_top_OBUF[3]_inst_i_9_0\ => PC_n_88,
      \LED_top_OBUF[3]_inst_i_9_1\ => immGen_n_82,
      \LED_top_OBUF[4]_inst_i_13_0\ => ALU_n_55,
      \LED_top_OBUF[4]_inst_i_1_0\ => dummy_ofAll_n_14,
      \LED_top_OBUF[4]_inst_i_26_0\ => dummy_ofAll_n_12,
      \LED_top_OBUF[4]_inst_i_26_1\ => dummy_ofAll_n_13,
      \LED_top_OBUF[4]_inst_i_26_2\ => PC_n_32,
      \LED_top_OBUF[4]_inst_i_26_3\ => IM_n_40,
      \LED_top_OBUF[4]_inst_i_2_0\ => immGen_n_57,
      \LED_top_OBUF[4]_inst_i_2_1\ => Reg_n_146,
      \LED_top_OBUF[4]_inst_i_3_0\ => PC_n_87,
      \LED_top_OBUF[4]_inst_i_4_0\ => Reg_n_112,
      \LED_top_OBUF[4]_inst_i_4_1\ => PC_n_31,
      \LED_top_OBUF[4]_inst_i_6_0\ => Reg_n_148,
      \LED_top_OBUF[4]_inst_i_6_1\ => Reg_n_147,
      \LED_top_OBUF[5]_inst_i_11_0\ => PC_n_120,
      \LED_top_OBUF[5]_inst_i_14_0\ => PC_n_33,
      \LED_top_OBUF[5]_inst_i_14_1\ => IM_n_39,
      \LED_top_OBUF[5]_inst_i_1_0\ => ALU_n_45,
      \LED_top_OBUF[5]_inst_i_1_1\ => PC_n_72,
      \LED_top_OBUF[5]_inst_i_2_0\ => immGen_n_56,
      \LED_top_OBUF[5]_inst_i_2_1\ => Reg_n_144,
      \LED_top_OBUF[5]_inst_i_3_0\ => Reg_n_143,
      \LED_top_OBUF[5]_inst_i_3_1\ => Reg_n_145,
      \LED_top_OBUF[5]_inst_i_4_0\ => PC_n_86,
      \LED_top_OBUF[5]_inst_i_4_1\ => immGen_n_78,
      \LED_top_OBUF[5]_inst_i_5_0\ => ALU_n_56,
      \LED_top_OBUF[5]_inst_i_5_1\ => Reg_n_116,
      \LED_top_OBUF[6]_inst_i_10_0\ => PC_n_1,
      \LED_top_OBUF[6]_inst_i_1_0\ => ALU_n_44,
      \LED_top_OBUF[6]_inst_i_1_1\ => PC_n_73,
      \LED_top_OBUF[6]_inst_i_2_0\ => Reg_n_142,
      \LED_top_OBUF[6]_inst_i_2_1\ => Reg_n_141,
      \LED_top_OBUF[6]_inst_i_3_0\ => immGen_n_55,
      \LED_top_OBUF[6]_inst_i_3_1\ => Reg_n_140,
      \LED_top_OBUF[6]_inst_i_4_0\ => PC_n_85,
      \LED_top_OBUF[6]_inst_i_4_1\ => immGen_n_64,
      \LED_top_OBUF[6]_inst_i_5_0\ => ALU_n_57,
      \LED_top_OBUF[7]_inst_i_1_0\ => dummy_ofAll_n_11,
      \LED_top_OBUF[7]_inst_i_1_1\ => IM_n_38,
      \LED_top_OBUF[7]_inst_i_2_0\ => Reg_n_138,
      \LED_top_OBUF[7]_inst_i_2_1\ => Reg_n_139,
      \LED_top_OBUF[7]_inst_i_3_0\ => immGen_n_54,
      \LED_top_OBUF[7]_inst_i_3_1\ => Reg_n_137,
      \LED_top_OBUF[7]_inst_i_4_0\ => PC_n_84,
      \LED_top_OBUF[7]_inst_i_4_1\ => immGen_n_65,
      \LED_top_OBUF[7]_inst_i_5_0\ => ALU_n_58,
      \LED_top_OBUF[7]_inst_i_5_1\ => ALU_n_43,
      \LED_top_OBUF[8]_inst_i_1_0\ => dummy_ofAll_n_10,
      \LED_top_OBUF[8]_inst_i_1_1\ => PC_n_82,
      \LED_top_OBUF[8]_inst_i_1_2\ => Reg_n_107,
      \LED_top_OBUF[8]_inst_i_2_0\ => ALU_n_60,
      \LED_top_OBUF[8]_inst_i_2_1\ => Reg_n_135,
      \LED_top_OBUF[8]_inst_i_2_2\ => Reg_n_136,
      \LED_top_OBUF[8]_inst_i_3_0\ => Reg_n_134,
      \LED_top_OBUF[8]_inst_i_4_0\ => PC_n_83,
      \LED_top_OBUF[8]_inst_i_4_1\ => immGen_n_76,
      \LED_top_OBUF[8]_inst_i_5_0\ => immGen_n_46,
      \LED_top_OBUF[8]_inst_i_5_1\ => immGen_n_77,
      \LED_top_OBUF[8]_inst_i_5_2\ => ALU_n_42,
      \LED_top_OBUF[8]_inst_i_5_3\ => ALU_n_59,
      \LED_top_OBUF[8]_inst_i_8_0\(6 downto 5) => S_imm_12(11 downto 10),
      \LED_top_OBUF[8]_inst_i_8_0\(4) => S_imm_12(7),
      \LED_top_OBUF[8]_inst_i_8_0\(3 downto 0) => S_imm_12(3 downto 0),
      \LED_top_OBUF[9]_inst_i_1_0\ => dummy_ofAll_n_9,
      \LED_top_OBUF[9]_inst_i_1_1\ => PC_n_121,
      \LED_top_OBUF[9]_inst_i_1_2\ => Reg_n_108,
      \LED_top_OBUF[9]_inst_i_2_0\ => ALU_n_62,
      \LED_top_OBUF[9]_inst_i_2_1\ => Reg_n_132,
      \LED_top_OBUF[9]_inst_i_2_2\ => Reg_n_133,
      \LED_top_OBUF[9]_inst_i_3_0\ => Reg_n_131,
      \LED_top_OBUF[9]_inst_i_4_0\ => PC_n_81,
      \LED_top_OBUF[9]_inst_i_4_1\ => immGen_n_74,
      \LED_top_OBUF[9]_inst_i_5_0\ => immGen_n_75,
      \LED_top_OBUF[9]_inst_i_5_1\ => immGen_n_47,
      \LED_top_OBUF[9]_inst_i_5_2\ => ALU_n_41,
      \LED_top_OBUF[9]_inst_i_5_3\ => ALU_n_61,
      Q(11) => S_imm_32(31),
      Q(10) => S_imm_32(17),
      Q(9 downto 5) => S_imm_32(11 downto 7),
      Q(4 downto 2) => S_imm_32(5 downto 3),
      Q(1 downto 0) => S_imm_32(1 downto 0),
      \SEGMENT7_top[7]_i_11_0\ => PC_n_28,
      \SEGMENT7_top[7]_i_11_1\ => IM_n_23,
      \SEGMENT7_top[7]_i_13_0\ => immGen_n_81,
      \SEGMENT7_top[7]_i_13_1\ => PC_n_71,
      \SEGMENT7_top[7]_i_13_2\ => IM_n_27,
      \SEGMENT7_top[7]_i_13_3\ => PC_n_30,
      \SEGMENT7_top[7]_i_14_0\ => ALU_n_54,
      \SEGMENT7_top[7]_i_15_0\ => dummy_ofAll_n_2,
      \SEGMENT7_top[7]_i_17_0\ => immGen_n_69,
      \SEGMENT7_top[7]_i_22_0\ => immGen_n_62,
      \SEGMENT7_top[7]_i_23_0\ => PC_n_25,
      \SEGMENT7_top[7]_i_23_1\ => immGen_n_45,
      \SEGMENT7_top[7]_i_25_0\ => IM_n_41,
      \SEGMENT7_top[7]_i_28_0\ => ALU_n_46,
      \SEGMENT7_top[7]_i_29_0\(7 downto 5) => S_current_pc(20 downto 18),
      \SEGMENT7_top[7]_i_29_0\(4) => S_current_pc(16),
      \SEGMENT7_top[7]_i_29_0\(3 downto 1) => S_current_pc(4 downto 2),
      \SEGMENT7_top[7]_i_29_0\(0) => S_current_pc(0),
      \SEGMENT7_top[7]_i_29_1\ => immGen_n_80,
      \SEGMENT7_top[7]_i_43_0\ => PC_n_29,
      \SEGMENT7_top[7]_i_47_0\ => PC_n_24,
      \SEGMENT7_top[7]_i_8_0\ => IM_n_25,
      \SEGMENT7_top[7]_i_8_1\ => ALU_n_47,
      \SEGMENT7_top[7]_i_9_0\ => IM_n_24,
      SW_top_IBUF(15 downto 0) => SW_top_IBUF(15 downto 0),
      S_RST => S_RST,
      S_alu_data_in1(1) => S_alu_data_in1(16),
      S_alu_data_in1(0) => S_alu_data_in1(0),
      S_alu_flag(0) => S_alu_flag(0),
      S_cnrtl_alu_data_srce_slkt => S_cnrtl_alu_data_srce_slkt,
      S_f3(0) => S_f3(0),
      S_f7(0) => S_f7(6),
      S_imm_20(0) => S_imm_20(11),
      alubrnch_out(31 downto 0) => S_alubrnch_out(31 downto 0),
      \input_circle_status_reg[0]_0\ => debounce_ofAll_n_22,
      \input_circle_status_reg[1]_0\ => debounce_ofAll_n_20,
      \input_circle_status_reg[1]_1\ => debounce_ofAll_n_26,
      \input_circle_status_reg[1]_2\ => debounce_ofAll_n_27,
      \input_circle_status_reg[1]_3\ => debounce_ofAll_n_31,
      \input_circle_status_reg[2]_0\ => debounce_ofAll_n_18,
      \input_circle_status_reg[2]_1\ => debounce_ofAll_n_28,
      \input_circle_status_reg[2]_2\ => debounce_ofAll_n_30,
      \input_circle_status_reg[3]_0\ => debounce_ofAll_n_19,
      \input_circle_status_reg[3]_1\ => debounce_ofAll_n_23,
      \input_circle_status_reg[7]_0\ => debounce_ofAll_n_17,
      \input_circle_status_reg[7]_1\ => debounce_ofAll_n_21,
      \input_circle_status_reg[7]_2\ => debounce_ofAll_n_24,
      \input_circle_status_reg[7]_3\ => debounce_ofAll_n_25,
      \input_circle_status_reg[7]_4\ => debounce_ofAll_n_29,
      n_0_1058_BUFG_inst_n_1 => n_0_1058_BUFG_inst_n_1,
      reg_source0_out0(11 downto 9) => S_reg_source0_out(28 downto 26),
      reg_source0_out0(8) => S_reg_source0_out(23),
      reg_source0_out0(7) => S_reg_source0_out(20),
      reg_source0_out0(6) => S_reg_source0_out(16),
      reg_source0_out0(5 downto 3) => S_reg_source0_out(12 downto 10),
      reg_source0_out0(2) => S_reg_source0_out(7),
      reg_source0_out0(1) => S_reg_source0_out(4),
      reg_source0_out0(0) => S_reg_source0_out(0),
      reg_source1_out(5) => S_reg_source1_out(22),
      reg_source1_out(4) => S_reg_source1_out(19),
      reg_source1_out(3) => S_reg_source1_out(17),
      reg_source1_out(2) => S_reg_source1_out(6),
      reg_source1_out(1) => S_reg_source1_out(3),
      reg_source1_out(0) => S_reg_source1_out(1),
      sevenouter4index_reg(1 downto 0) => sevenouter4index_reg(1 downto 0),
      upordown => upordown,
      userbutton_msblsb(0) => userbutton_msblsb(1),
      userbutton_updown(1 downto 0) => userbutton_updown(1 downto 0)
    );
dummy_ofAll: entity work.dummy_module
     port map (
      Q(1) => S_imm_12(4),
      Q(0) => S_imm_12(0),
      S_f3(0) => S_f3(0),
      S_f7(0) => S_f7(6),
      alubrnch_out(19 downto 12) => S_alubrnch_out(30 downto 23),
      alubrnch_out(11) => S_alubrnch_out(20),
      alubrnch_out(10) => S_alubrnch_out(16),
      alubrnch_out(9 downto 2) => S_alubrnch_out(14 downto 7),
      alubrnch_out(1) => S_alubrnch_out(4),
      alubrnch_out(0) => S_alubrnch_out(0),
      upordown => upordown,
      upordown_reg_0 => dummy_ofAll_n_4,
      upordown_reg_1 => dummy_ofAll_n_5,
      upordown_reg_2 => dummy_ofAll_n_6,
      upordown_reg_rep_0 => dummy_ofAll_n_2,
      upordown_reg_rep_1 => dummy_ofAll_n_11,
      upordown_reg_rep_2 => dummy_ofAll_n_12,
      upordown_reg_rep_3 => dummy_ofAll_n_13,
      upordown_reg_rep_4 => dummy_ofAll_n_14,
      upordown_reg_rep_5 => dummy_ofAll_n_15,
      upordown_reg_rep_6 => dummy_ofAll_n_16,
      upordown_reg_rep_7 => dummy_ofAll_n_17,
      \upordown_reg_rep__0_0\ => dummy_ofAll_n_3,
      \upordown_reg_rep__0_1\ => dummy_ofAll_n_7,
      \upordown_reg_rep__0_2\ => dummy_ofAll_n_8,
      \upordown_reg_rep__0_3\ => dummy_ofAll_n_9,
      \upordown_reg_rep__0_4\ => dummy_ofAll_n_10,
      userbutton_msblsb(0) => userbutton_msblsb(1)
    );
immGen: entity work.t02_Word_immGen
     port map (
      D(29) => immGen_n_1,
      D(28) => immGen_n_2,
      D(27) => immGen_n_3,
      D(26) => immGen_n_4,
      D(25) => immGen_n_5,
      D(24) => immGen_n_6,
      D(23) => immGen_n_7,
      D(22) => immGen_n_8,
      D(21) => immGen_n_9,
      D(20) => immGen_n_10,
      D(19) => immGen_n_11,
      D(18) => immGen_n_12,
      D(17) => immGen_n_13,
      D(16) => immGen_n_14,
      D(15) => immGen_n_15,
      D(14) => immGen_n_16,
      D(13) => immGen_n_17,
      D(12) => immGen_n_18,
      D(11) => immGen_n_19,
      D(10) => immGen_n_20,
      D(9) => immGen_n_21,
      D(8) => immGen_n_22,
      D(7) => immGen_n_23,
      D(6) => immGen_n_24,
      D(5) => immGen_n_25,
      D(4) => immGen_n_26,
      D(3) => immGen_n_27,
      D(2) => immGen_n_28,
      D(1) => immGen_n_29,
      D(0) => immGen_n_30,
      E(0) => PC_n_17,
      \LED_top_OBUF[0]_inst_i_10\ => debounce_ofAll_n_27,
      \LED_top_OBUF[0]_inst_i_32\ => PC_n_22,
      \LED_top_OBUF[10]_inst_i_15\ => dummy_ofAll_n_3,
      \LED_top_OBUF[10]_inst_i_15_0\ => PC_n_80,
      \LED_top_OBUF[11]_inst_i_15\ => PC_n_79,
      \LED_top_OBUF[12]_inst_i_10\ => PC_n_77,
      \LED_top_OBUF[13]_inst_i_13\ => PC_n_76,
      \LED_top_OBUF[14]_inst_i_13\ => PC_n_75,
      \LED_top_OBUF[15]_inst_i_18\ => PC_n_74,
      \LED_top_OBUF[2]_inst_i_14\ => debounce_ofAll_n_20,
      \LED_top_OBUF[2]_inst_i_14_0\ => Reg_n_152,
      \LED_top_OBUF[3]_inst_i_26\ => dummy_ofAll_n_2,
      \LED_top_OBUF[4]_inst_i_27\ => debounce_ofAll_n_18,
      \LED_top_OBUF[4]_inst_i_27_0\ => debounce_ofAll_n_22,
      \LED_top_OBUF[4]_inst_i_27_1\ => PC_n_87,
      \LED_top_OBUF[5]_inst_i_12\ => PC_n_86,
      \LED_top_OBUF[6]_inst_i_13\ => PC_n_85,
      \LED_top_OBUF[7]_inst_i_14\ => PC_n_84,
      \LED_top_OBUF[8]_inst_i_14\ => PC_n_83,
      \LED_top_OBUF[9]_inst_i_13\ => PC_n_81,
      O(3) => Reg_n_77,
      O(2) => Reg_n_78,
      O(1) => Reg_n_79,
      O(0) => Reg_n_80,
      Q(12) => S_imm_32(31),
      Q(11) => S_imm_32(17),
      Q(10 downto 6) => S_imm_32(11 downto 7),
      Q(5 downto 0) => S_imm_32(5 downto 0),
      S_alu_data_in1(16 downto 15) => S_alu_data_in1(31 downto 30),
      S_alu_data_in1(14 downto 13) => S_alu_data_in1(25 downto 24),
      S_alu_data_in1(12 downto 9) => S_alu_data_in1(17 downto 14),
      S_alu_data_in1(8 downto 5) => S_alu_data_in1(11 downto 8),
      S_alu_data_in1(4 downto 0) => S_alu_data_in1(4 downto 0),
      S_cnrtl_alu_data_srce_slkt => S_cnrtl_alu_data_srce_slkt,
      \alu_data_out_reg[11]\(3) => Reg_n_85,
      \alu_data_out_reg[11]\(2) => Reg_n_86,
      \alu_data_out_reg[11]\(1) => Reg_n_87,
      \alu_data_out_reg[11]\(0) => Reg_n_88,
      \alu_data_out_reg[11]_0\ => Reg_n_73,
      \alu_data_out_reg[12]\ => Reg_n_71,
      \alu_data_out_reg[13]\ => Reg_n_70,
      \alu_data_out_reg[14]\ => Reg_n_69,
      \alu_data_out_reg[15]\(3) => Reg_n_89,
      \alu_data_out_reg[15]\(2) => Reg_n_90,
      \alu_data_out_reg[15]\(1) => Reg_n_91,
      \alu_data_out_reg[15]\(0) => Reg_n_92,
      \alu_data_out_reg[15]_0\ => Reg_n_68,
      \alu_data_out_reg[16]\ => Reg_n_67,
      \alu_data_out_reg[17]\ => Reg_n_66,
      \alu_data_out_reg[18]\ => Reg_n_59,
      \alu_data_out_reg[19]\(3) => Reg_n_93,
      \alu_data_out_reg[19]\(2) => Reg_n_94,
      \alu_data_out_reg[19]\(1) => Reg_n_95,
      \alu_data_out_reg[19]\(0) => Reg_n_96,
      \alu_data_out_reg[19]_0\ => Reg_n_65,
      \alu_data_out_reg[20]\ => Reg_n_58,
      \alu_data_out_reg[21]\ => Reg_n_64,
      \alu_data_out_reg[22]\ => Reg_n_57,
      \alu_data_out_reg[23]\(3) => Reg_n_97,
      \alu_data_out_reg[23]\(2) => Reg_n_98,
      \alu_data_out_reg[23]\(1) => Reg_n_99,
      \alu_data_out_reg[23]\(0) => Reg_n_100,
      \alu_data_out_reg[23]_0\ => Reg_n_63,
      \alu_data_out_reg[24]\ => Reg_n_56,
      \alu_data_out_reg[25]\ => Reg_n_62,
      \alu_data_out_reg[26]\ => Reg_n_55,
      \alu_data_out_reg[27]\(3) => Reg_n_101,
      \alu_data_out_reg[27]\(2) => Reg_n_102,
      \alu_data_out_reg[27]\(1) => Reg_n_103,
      \alu_data_out_reg[27]\(0) => Reg_n_104,
      \alu_data_out_reg[27]_0\ => Reg_n_61,
      \alu_data_out_reg[28]\ => Reg_n_54,
      \alu_data_out_reg[29]\(1) => Reg_n_105,
      \alu_data_out_reg[29]\(0) => Reg_n_106,
      \alu_data_out_reg[29]_0\ => Reg_n_60,
      \alu_data_out_reg[29]_1\ => Reg_n_3,
      \alu_data_out_reg[31]_i_1\ => PC_n_18,
      \alu_data_out_reg[31]_i_2_0\ => Reg_n_158,
      \alu_data_out_reg[31]_i_2_1\ => Reg_n_53,
      \alu_data_out_reg[7]\(3) => Reg_n_81,
      \alu_data_out_reg[7]\(2) => Reg_n_82,
      \alu_data_out_reg[7]\(1) => Reg_n_83,
      \alu_data_out_reg[7]\(0) => Reg_n_84,
      \alu_data_out_reg[8]_i_1_0\ => Reg_n_74,
      \alu_data_out_reg[9]_i_1_0\ => Reg_n_72,
      \current_pc[31]_i_2\(12) => PC_n_11,
      \current_pc[31]_i_2\(11) => PC_n_12,
      \current_pc[31]_i_2\(10) => IM_n_4,
      \current_pc[31]_i_2\(9) => IM_n_5,
      \current_pc[31]_i_2\(8) => PC_n_13,
      \current_pc[31]_i_2\(7) => IM_n_6,
      \current_pc[31]_i_2\(6) => PC_n_14,
      \current_pc[31]_i_2\(5) => IM_n_7,
      \current_pc[31]_i_2\(4) => IM_n_8,
      \current_pc[31]_i_2\(3) => IM_n_9,
      \current_pc[31]_i_2\(2) => IM_n_10,
      \current_pc[31]_i_2\(1) => IM_n_11,
      \current_pc[31]_i_2\(0) => IM_n_12,
      \current_pc_reg[3]\ => immGen_n_31,
      reg_source0_out0(8) => S_reg_source0_out(16),
      reg_source0_out0(7 downto 0) => S_reg_source0_out(7 downto 0),
      reg_source1_out(31 downto 0) => S_reg_source1_out(31 downto 0),
      upordown => upordown,
      upordown_reg => immGen_n_50,
      upordown_reg_0 => immGen_n_51,
      upordown_reg_1 => immGen_n_52,
      upordown_reg_2 => immGen_n_53,
      upordown_reg_3 => immGen_n_63,
      upordown_reg_4 => immGen_n_66,
      upordown_reg_5 => immGen_n_67,
      upordown_reg_6 => immGen_n_68,
      upordown_reg_rep => immGen_n_45,
      upordown_reg_rep_0 => immGen_n_54,
      upordown_reg_rep_1 => immGen_n_55,
      upordown_reg_rep_10 => immGen_n_65,
      upordown_reg_rep_11 => immGen_n_69,
      upordown_reg_rep_12 => immGen_n_78,
      upordown_reg_rep_13 => immGen_n_79,
      upordown_reg_rep_14 => immGen_n_80,
      upordown_reg_rep_15 => immGen_n_81,
      upordown_reg_rep_16 => immGen_n_82,
      upordown_reg_rep_17 => immGen_n_83,
      upordown_reg_rep_18 => immGen_n_84,
      upordown_reg_rep_19 => immGen_n_85,
      upordown_reg_rep_2 => immGen_n_56,
      upordown_reg_rep_3 => immGen_n_57,
      upordown_reg_rep_4 => immGen_n_58,
      upordown_reg_rep_5 => immGen_n_59,
      upordown_reg_rep_6 => immGen_n_60,
      upordown_reg_rep_7 => immGen_n_61,
      upordown_reg_rep_8 => immGen_n_62,
      upordown_reg_rep_9 => immGen_n_64,
      \upordown_reg_rep__0\ => immGen_n_46,
      \upordown_reg_rep__0_0\ => immGen_n_47,
      \upordown_reg_rep__0_1\ => immGen_n_48,
      \upordown_reg_rep__0_10\ => immGen_n_77,
      \upordown_reg_rep__0_2\ => immGen_n_49,
      \upordown_reg_rep__0_3\ => immGen_n_70,
      \upordown_reg_rep__0_4\ => immGen_n_71,
      \upordown_reg_rep__0_5\ => immGen_n_72,
      \upordown_reg_rep__0_6\ => immGen_n_73,
      \upordown_reg_rep__0_7\ => immGen_n_74,
      \upordown_reg_rep__0_8\ => immGen_n_75,
      \upordown_reg_rep__0_9\ => immGen_n_76
    );
mux2_afterDM: entity work.t02_Word_mux2
     port map (
      Q(15 downto 0) => S_alu_data_out(15 downto 0),
      n_0_1058_BUFG_inst_n_1 => n_0_1058_BUFG_inst_n_1,
      p_0_in(15 downto 0) => S_reg_write_data(15 downto 0)
    );
mux2_preDM: entity work.t02_Word_mux2_0
     port map (
      \LED_top_OBUF[12]_inst_i_17\(3 downto 2) => S_current_pc(4 downto 3),
      \LED_top_OBUF[12]_inst_i_17\(1 downto 0) => S_current_pc(1 downto 0),
      Q(12) => S_imm_32(31),
      Q(11) => S_imm_32(17),
      Q(10 downto 6) => S_imm_32(11 downto 7),
      Q(5 downto 0) => S_imm_32(5 downto 0),
      S_RST => S_RST,
      S_RST_interf_reg => mux2_preDM_n_33,
      S_RST_interf_reg_0 => mux2_preDM_n_34,
      S_RST_interf_reg_1 => mux2_preDM_n_35,
      S_RST_interf_reg_2 => mux2_preDM_n_36,
      S_alu_data_in1(31 downto 0) => S_alu_data_in1(31 downto 0),
      S_cnrtl_alu_data_srce_slkt => S_cnrtl_alu_data_srce_slkt,
      reg_source1_out(31 downto 0) => S_reg_source1_out(31 downto 0)
    );
n_0_1058_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => n_0_1058_BUFG_inst_n_1,
      O => n_0_1058_BUFG
    );
segment_ofAll: entity work.segment_module
     port map (
      CLK_top_IBUF_BUFG => CLK_top_IBUF_BUFG,
      D(6 downto 0) => p_1_in_1(7 downto 1),
      Q(7 downto 0) => SEGMENT7_top_OBUF(7 downto 0),
      SEGMENT4_top_OBUF(3 downto 0) => SEGMENT4_top_OBUF(3 downto 0),
      sevenouter4index_reg(1 downto 0) => sevenouter4index_reg(1 downto 0)
    );
userinterface_ofAll: entity work.userinterface_module
     port map (
      S_CLK => S_CLK,
      S_RST => S_RST,
      p_1_in => p_1_in,
      userbutton_updown(1 downto 0) => userbutton_updown(1 downto 0)
    );
end STRUCTURE;
