----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:15:54
-- Design Name: 
-- Module Name: t01_Hlfword_DM - bhvrl_DM
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

entity t01_Hlfword_DM is
    Port ( clk : in STD_LOGIC;
           Enable_Writedata_dm_in0 : in STD_LOGIC := '0';
           Enable_Readdata_dm_in0 : in STD_LOGIC := '0';
           Adress_dm_in0 : in std_logic_vector(15 downto 0)  := (others => '0');
           Writedata_dm_in0 : in std_logic_vector(15 downto 0)  := (others => '0');
           Readdata_dm_out0 : out std_logic_vector(15 downto 0)  := (others => '0')
           );
end t01_Hlfword_DM;

architecture bhvrl_DM of t01_Hlfword_DM is

begin


end bhvrl_DM;
