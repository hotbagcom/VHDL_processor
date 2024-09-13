----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:15:54
-- Design Name: 
-- Module Name: t01_Hlfword_cntl_alu - bhvrl_cntl_alu
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

entity t01_Hlfword_cntl_alu is
    Port ( cntrl_op_code : in std_logic_vector(3 downto 0);
           cntrl_AluSourceContrl_out : out STD_LOGIC;
           cntrl_ALUoperation_in : out std_logic_vector(3 downto 0);-- add sub j{add two register} beq bge srli slli xor not or and :11 op
           cntrlalu_gate_brnch : out STD_LOGIC
           );
end t01_Hlfword_cntl_alu;

architecture bhvrl_cntl_alu of t01_Hlfword_cntl_alu is

begin


end bhvrl_cntl_alu;
