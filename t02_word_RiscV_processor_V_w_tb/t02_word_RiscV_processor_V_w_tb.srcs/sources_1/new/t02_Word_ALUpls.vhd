----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.12.2024 22:47:05
-- Design Name: 
-- Module Name: t02_Word_ALUpls - bhvrl_ALUpls
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
use work.package_top.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity t02_Word_ALUpls is
    Port(
    prev_PC : in  std_logic_vector(RV_lvlinbit-1 downto 0) := (others=>'0'); 
    next_PC : out std_logic_vector(RV_lvlinbit-1 downto 0) 
    );
end t02_Word_ALUpls;

architecture bhvrl_ALUpls of t02_Word_ALUpls is
signal add_pc : std_logic_vector(3 downto 0) := X"1" ;
begin

next_PC <= std_logic_vector( unsigned( prev_PC) + unsigned( add_pc) );

end bhvrl_ALUpls;
