----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:15:54
-- Design Name: 
-- Module Name: t01_Hlfword_MUX_jump - bhvrl_MUX_jump
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

entity t01_Hlfword_MUX_jump is
    Port ( 
           rst_ah : in  STD_LOGIC := '0';
           branch_out0 : in std_logic_vector(15 downto 0) := (others => '0');
           immidiate_jmp_in0 : in std_logic_vector(11 downto 0) := (others => '0');
           cntrl_JumpContrl_out : in STD_LOGIC := '0';
           nextadress_jump_out0 : out std_logic_vector(15 downto 0) := (others => '0')
           );
end t01_Hlfword_MUX_jump;

architecture bhvrl_MUX_jump of t01_Hlfword_MUX_jump is

begin

--nextadress_jump_out0 <= ( (not(others=>cntrl_JumpContrl_out)) and branch_out0 ) or ( (others=>cntrl_JumpContrl_out) and immidiate_in0 ) ; 
process (cntrl_JumpContrl_out,immidiate_jmp_in0,branch_out0) begin 
    
--    if (rst_ah = '1') then 
--    nextadress_jump_out0 <= (others =>'0') ;
--    els
    if (cntrl_JumpContrl_out = '1') then
    nextadress_jump_out0 <= (X"0") &  immidiate_jmp_in0;
    elsif cntrl_JumpContrl_out = '0' then
    nextadress_jump_out0 <= branch_out0 ;
    end if ;
end process ;

end bhvrl_MUX_jump;
