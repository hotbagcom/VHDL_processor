----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.09.2024 20:27:30
-- Design Name: 
-- Module Name: t01_Hlfword_GATE_3_4to1_12_wire - bhvrl_GATE_3_4to1_12_wire
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

entity t01_Hlfword_GATE_3_4to1_12_wire is
    Port ( WIREin_2 : in std_logic_vector(3 downto 0) := (others => '0');
           WIREin_1 : in std_logic_vector(3 downto 0) := (others => '0');
           WIREin_0 : in std_logic_vector(3 downto 0) := (others => '0');
           WIREout_0 : out std_logic_vector(11 downto 0) := (others => '0')
           );
end t01_Hlfword_GATE_3_4to1_12_wire;

architecture bhvrl_GATE_3_4to1_12_wire of t01_Hlfword_GATE_3_4to1_12_wire is

begin
    
    WIREout_0 <= WIREin_2 & WIREin_1 & WIREin_0 ;

end bhvrl_GATE_3_4to1_12_wire;
