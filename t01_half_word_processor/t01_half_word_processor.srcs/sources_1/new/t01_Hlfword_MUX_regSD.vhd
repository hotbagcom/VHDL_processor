----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:15:54
-- Design Name: 
-- Module Name: t01_Hlfword_MUX_regSD - bhvrl_MUX_regSD
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

entity t01_Hlfword_MUX_regSD is
    Port ( 
           cntrl_RegAdressContrl_out : in STD_LOGIC;
           reg_s1_in : in std_logic_vector(3 downto 0);
           reg_dest_in : in std_logic_vector(3 downto 0);
           reg_dest_out : out std_logic_vector(3 downto 0)
           );
end t01_Hlfword_MUX_regSD;

architecture bhvrl_MUX_regSD of t01_Hlfword_MUX_regSD is

begin


end bhvrl_MUX_regSD;
