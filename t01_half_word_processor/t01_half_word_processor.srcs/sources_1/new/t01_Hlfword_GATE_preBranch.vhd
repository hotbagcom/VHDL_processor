----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.09.2024 22:10:02
-- Design Name: 
-- Module Name: t01_Hlfword_GATE_preBranch - bhvrl_GATE_preBranch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity t01_Hlfword_GATE_preBranch is
    Port ( cntrlalu_gate_brnch : in STD_LOGIC :='0';
           Flag_zero_out0 : in STD_LOGIC :='0';
           Flag_overflv_out0 : in STD_LOGIC :='0';
           branch_flagtriger_in : out STD_LOGIC :='0'
           );
end t01_Hlfword_GATE_preBranch;

architecture bhvrl_GATE_preBranch of t01_Hlfword_GATE_preBranch is

begin


end bhvrl_GATE_preBranch;
