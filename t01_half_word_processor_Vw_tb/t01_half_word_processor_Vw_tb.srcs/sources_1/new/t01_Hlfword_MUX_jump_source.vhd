----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.10.2024 21:27:47
-- Design Name: 
-- Module Name: t01_Hlfword_MUX_jump_source - bhvrl_MUX_jump_source
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

entity t01_Hlfword_MUX_jump_source is
    Port (
    cntrl_JumpSrceContrl_out : in STD_LOGIC := '0';
    register_jmp_in0 : in std_logic_vector(15 downto 0) := (others => '0');
    pls_imm_jmp_in1 : in std_logic_vector(15 downto 0) := (others => '0');
    Jmp_adress : out std_logic_vector(15 downto 0) := (others => '0')
     );
end t01_Hlfword_MUX_jump_source;

architecture bhvrl_MUX_jump_source of t01_Hlfword_MUX_jump_source is

begin

process (cntrl_JumpSrceContrl_out,register_jmp_in0,pls_imm_jmp_in1) begin 
    
--    if (rst_ah = '1') then 
--    nextadress_jump_out0 <= (others =>'0') ;
--    els
    if (cntrl_JumpSrceContrl_out = '0') then
    Jmp_adress <= register_jmp_in0 ;
    elsif (cntrl_JumpSrceContrl_out = '1') then
    Jmp_adress <=   pls_imm_jmp_in1;
    end if ;
end process ;

end bhvrl_MUX_jump_source;
