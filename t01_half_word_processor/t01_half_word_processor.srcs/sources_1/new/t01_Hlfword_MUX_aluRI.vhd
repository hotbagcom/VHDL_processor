----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:15:54
-- Design Name: 
-- Module Name: t01_Hlfword_MUX_aluRI - bhvrl_MUX_aluRI
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

entity t01_Hlfword_MUX_aluRI is
    Port ( cntrl_AluSourceContrl_out : in STD_LOGIC;
           reg_o1 : in std_logic_vector(15 downto 0);
           imm : in std_logic_vector(3 downto 0);
           Data_aluMain_in1 : out std_logic_vector(15 downto 0)
           );
end t01_Hlfword_MUX_aluRI;

architecture bhvrl_MUX_aluRI of t01_Hlfword_MUX_aluRI is

begin


end bhvrl_MUX_aluRI;
