----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.10.2024 10:13:54
-- Design Name: 
-- Module Name: MUX_jump_source - bhvrl_jump_source
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

entity MUX_jump_source is
    Port (
    cntrl_JumpSrceContrl_out : in STD_LOGIC := '0';
    register_jmp_in0 : in std_logic_vector(15 downto 0) := (others => '0');
    immidiate_jmp_in0 : in std_logic_vector(11 downto 0) := (others => '0');
    Jmp_adress : out std_logic_vector(15 downto 0) := (others => '0')
     );
end MUX_jump_source;

architecture bhvrl_jump_source of MUX_jump_source is


begin

process (cntrl_JumpSrceContrl_out,immidiate_jmp_in0,register_jmp_in0) begin 
    
--    if (rst_ah = '1') then 
--    nextadress_jump_out0 <= (others =>'0') ;
--    els
    if (cntrl_JumpSrceContrl_out = '1') then
    Jmp_adress <= (X"0") &  immidiate_jmp_in0;
    elsif cntrl_JumpSrceContrl_out = '0' then
    Jmp_adress <= register_jmp_in0 ;
    end if ;
end process ;

end bhvrl_jump_source;
