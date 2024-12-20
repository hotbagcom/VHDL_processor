----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2024 16:29:40
-- Design Name: 
-- Module Name: t02_Word_ALUbrnch - bhvrl_ALUbrnch
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

entity t02_Word_ALUbrnch is
    Port(
        cntrl_brnch_enable : in std_logic;
        prev_PC : in  std_logic_vector(RV_lvlinbit-1 downto 0) ; 
        -- next_PC : --jumpun çýkýþýna yaz 
        brnch_imm : in std_logic_vector (RV_lvlinbit-1 downto 0);
        alubrnch_out :  out std_logic_vector(RV_lvlinbit-1 downto 0) 
    );
end t02_Word_ALUbrnch;

architecture bhvrl_ALUbrnch of t02_Word_ALUbrnch is

signal add_pc : std_logic_vector(3 downto 0) := X"1" ;

begin

process ( cntrl_brnch_enable , prev_PC , brnch_imm ) begin
    if (cntrl_brnch_enable = '0') then 
        alubrnch_out <= std_logic_vector( unsigned( prev_PC) + unsigned( add_pc) );
    elsif (cntrl_brnch_enable = '1') then 
        alubrnch_out <= std_logic_vector( unsigned( prev_PC) + unsigned( brnch_imm));
    end if ;

end process ;

end bhvrl_ALUbrnch;
