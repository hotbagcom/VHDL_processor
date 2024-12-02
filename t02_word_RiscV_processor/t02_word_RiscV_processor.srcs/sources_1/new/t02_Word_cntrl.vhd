----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Arif
-- 
-- Create Date: 03.11.2024 22:24:52
-- Design Name: 
-- Module Name: t02_Word_cntrl - bhvrl_cntrl
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

entity t02_Word_cntrl is
    Port (
        opcode  : in std_logic_vector(6 downto 0) := "0000000" ;
        f7      : in std_logic_vector(6 downto 0) := "0000000" ;
        f3      : in std_logic_vector(2 downto 0) := "000";
        cnrtl_reg_source : out std_logic := '0'
        );
end t02_Word_cntrl;

architecture bhvrl_cntrl of t02_Word_cntrl is

begin


end bhvrl_cntrl;
