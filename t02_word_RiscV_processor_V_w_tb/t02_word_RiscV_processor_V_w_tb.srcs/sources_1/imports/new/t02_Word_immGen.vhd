----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.12.2024 23:09:03
-- Design Name: 
-- Module Name: t02_Word_immGen - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity t02_Word_immGen is
    Port (
    imm : in std_logic_vector(11 downto 0); 
    IMM_out : out std_logic_vector(RV_lvlinbit-1  downto 0) 
    );
end t02_Word_immGen;

architecture bhvrl_immGen of t02_Word_immGen is
signal zero : std_logic_vector(RV_lvlinbit-1 downto 0) := (others=> '0');
begin

IMM_out <= zero(RV_lvlinbit-1 downto 12) & imm ;

end bhvrl_immGen;
