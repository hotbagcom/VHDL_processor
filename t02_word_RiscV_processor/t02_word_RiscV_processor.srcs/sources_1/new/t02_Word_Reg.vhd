----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Arif
-- 
-- Create Date: 03.11.2024 22:24:52
-- Design Name: 
-- Module Name: t02_Word_Reg - bhvrl_Reg
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

entity t02_Word_Reg is
    Port(
        reg_source0 : in std_logic_vector(31 downto 0);
        reg_source1 : in std_logic_vector(31 downto 0);
        reg_dest : in std_logic_vector(31 downto 0);
        reg_write_data : in std_logic_vector(31 downto 0);
        reg_write_enable : in std_logic := '0';
        reg_source0_out : out std_logic_vector(31 downto 0);
        reg_source1_out : out std_logic_vector(31 downto 0)
    );
end t02_Word_Reg;

architecture bhvrl_Reg of t02_Word_Reg is

begin


end bhvrl_Reg;
