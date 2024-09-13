----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:15:54
-- Design Name: 
-- Module Name: t01_Hlfword_ALU - bhvrl_ALU
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

entity t01_Hlfword_ALU is
    Port ( clk : in  STD_LOGIC;
           Data_aluMain_in0 : in std_logic_vector(15 downto 0);
           Data_aluMain_in1 : in std_logic_vector(15 downto 0);
           Alu_cntl_in : in std_logic_vector(3 downto 0);
           Data_aluMain_out0 : out std_logic_vector(15 downto 0);
           Flag_zero_out0 : out STD_LOGIC;
           Flag_overflv_out0 : out STD_LOGIC
           );
end t01_Hlfword_ALU;

architecture bhvrl_ALU of t01_Hlfword_ALU is

begin


end bhvrl_ALU;
