--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Fri Sep 13 23:04:59 2024
--Host        : Arif running 64-bit major release  (build 9200)
--Command     : generate_target design_processor_t01_wrapper.bd
--Design      : design_processor_t01_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_processor_t01_wrapper is
end design_processor_t01_wrapper;

architecture STRUCTURE of design_processor_t01_wrapper is
  component design_processor_t01 is
  end component design_processor_t01;
begin
design_processor_t01_i: component design_processor_t01
 ;
end STRUCTURE;
