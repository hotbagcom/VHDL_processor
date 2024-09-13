----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:15:54
-- Design Name: 
-- Module Name: t01_Hlfword_Reg - bhvrl_Reg
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

entity t01_Hlfword_Reg is
    Port ( clk : in STD_LOGIC;
           Source_in0 : in std_logic_vector(3 downto 0);
           Source_in1 : in std_logic_vector(3 downto 0);
           Destination_in0 : in std_logic_vector(3 downto 0);
           Writedata_in0 : in std_logic_vector(15 downto 0);
           Enable_Writedata_reg_in0 : in STD_LOGIC;
           Reg_out0 : out std_logic_vector(15 downto 0);
           Reg_out1 : out std_logic_vector(15 downto 0)
           );
end t01_Hlfword_Reg;

architecture bhvrl_Reg of t01_Hlfword_Reg is

begin


end bhvrl_Reg;
