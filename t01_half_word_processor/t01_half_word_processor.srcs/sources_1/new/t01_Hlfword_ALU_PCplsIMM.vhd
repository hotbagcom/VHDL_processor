----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:33:30
-- Design Name: 
-- Module Name: t01_Hlfword_ALU_PCplsIMM - Behavioral
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

entity t01_Hlfword_ALU_PCplsIMM is
    Port ( pls4byte_adress : in std_logic_vector(15 downto 0) ;--:= (others => '0');
           immediate_byte : in std_logic_vector(3 downto 0) ;--:= (others => '0');
           nextPLSimmediate_adress_out : out std_logic_vector(15 downto 0) --:= (others => '0')
           );
end t01_Hlfword_ALU_PCplsIMM;

architecture bhvrl_ALU_PCplsIMM of t01_Hlfword_ALU_PCplsIMM is

begin

process (pls4byte_adress) begin 
        nextPLSimmediate_adress_out <= std_logic_vector( unsigned(pls4byte_adress) + unsigned(immediate_byte) );
    
end process ;

end bhvrl_ALU_PCplsIMM;
