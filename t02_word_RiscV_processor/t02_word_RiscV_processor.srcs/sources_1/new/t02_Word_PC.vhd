----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Arif
-- 
-- Create Date: 03.11.2024 22:24:52
-- Design Name: 
-- Module Name: t02_Word_PC - bhvrl_PC
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

entity t02_Word_PC is
    Port(
        RST : in std_logic := '0' ; 
        CLK : in std_logic := '0' ; 
        next_PC : in std_logic_vector(RV_lvlinbit-1 downto 0 ) := (others=>'0'); 
        current_pc : out std_logic_vector( RV_lvlinbit-1 downto 0 )
        
    );
end t02_Word_PC;

architecture bhvrl_PC of t02_Word_PC is

begin

process( CLK ) begin

    if rising_edge(CLK) then
        current_pc <= next_PC ;
    end if ;

end process;

end bhvrl_PC;
