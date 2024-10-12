----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:15:54
-- Design Name: 
-- Module Name: t01_Hlfword_MUX_branch - bhvrl_MUX_branch
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

entity t01_Hlfword_MUX_branch is
    Port (  
           pls4byte_adress : in std_logic_vector(15 downto 0) ;--:= (others => '0') ;
           current_pls_imm_adress : in std_logic_vector(15 downto 0);-- := (others => '0') ;
           branch_flagtriger_in : in STD_LOGIC := '0' ;
           branch_out0 : out std_logic_vector(15 downto 0) --:= (others => '0')
           );
end t01_Hlfword_MUX_branch;

architecture bhvrl_MUX_branch of t01_Hlfword_MUX_branch is

begin

--branch_out0 <= ( (not(others=>branch_flagtriger_in)) and pls4byte_adress ) or ( (others=>branch_flagtriger_in) and current_pls_imm_adress ) ; 
process (branch_flagtriger_in,current_pls_imm_adress,pls4byte_adress) begin 
    
    if (branch_flagtriger_in = '0') then
    branch_out0 <= pls4byte_adress ;
    elsif (branch_flagtriger_in = '1') then
    branch_out0 <=   current_pls_imm_adress ;
    end if ;
end process ;

end bhvrl_MUX_branch;
