----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:28:32
-- Design Name: 
-- Module Name: t01_Hlfword_ALU_PCpls - bhvrl_ALU_PCpls
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity t01_Hlfword_ALU_PCpls is
    Port ( 
    --       byteadd : in std_logic_vector(2 downto 0) := "001"; -- till 8 byte  : however standard incrementation is 2 : 0increment 1 ,7 increment 8;
           current_adress : in std_logic_vector(15 downto 0) := (others => '0');
           pls4byte_adress : out std_logic_vector(15 downto 0) := (others => '0')
           );
end t01_Hlfword_ALU_PCpls;

architecture bhvrl_ALU_PCpls of t01_Hlfword_ALU_PCpls is
  signal   byteadd : std_logic_vector(2 downto 0) := "001";
begin
process (current_adress) begin 
        pls4byte_adress <= std_logic_vector( unsigned(current_adress) + resize(unsigned(byteadd),16) );
end process ;

end bhvrl_ALU_PCpls;
