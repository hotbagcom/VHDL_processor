----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:15:54
-- Design Name: 
-- Module Name: t01_Hlfword_PC - bhvrl_PC
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

entity t01_Hlfword_PC is
    Port ( clk : in STD_LOGIC := '0';
           rst_ah : in  STD_LOGIC := '0';
           next_adress : in std_logic_vector(15 downto 0) := (others => '0');
           current_adress : out std_logic_vector(15 downto 0) := (others => '0')
           );
end t01_Hlfword_PC;

architecture bhvrl_PC of t01_Hlfword_PC is

begin
process (clk )begin

if rising_edge(clk) then 
    if (rst_ah ='1') then 
    current_adress <= (others => '0');
    elsif (next_adress < "1111" ) then
    current_adress <= next_adress;
    end if;
end if;
 
end process ;

end bhvrl_PC;
