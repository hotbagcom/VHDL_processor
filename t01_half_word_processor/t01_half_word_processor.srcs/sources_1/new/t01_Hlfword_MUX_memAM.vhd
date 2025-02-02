----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:15:54
-- Design Name: 
-- Module Name: t01_Hlfword_MUX_memAM - bhvrl_MUX_memAM
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

entity t01_Hlfword_MUX_memAM is
    Port ( 
           cntrl_RegWriteContrl_out : in STD_LOGIC := '0';
           DM_read_in0 : in std_logic_vector(15 downto 0) := (others => '0');
           ALU_data_out0 : in std_logic_vector(15 downto 0) := (others => '0');--main alu
           REG_writedata_out0 : out std_logic_vector(15 downto 0) := (others => '0')
           );
end t01_Hlfword_MUX_memAM;

architecture bhvrl_MUX_memAM of t01_Hlfword_MUX_memAM is

begin

--REG_writedata_out0 <= ( (not(others=>cntrl_RegWriteContrl_out)) and DM_read_in0 ) or ( (others=>cntrl_RegWriteContrl_out) and ALU_data_out0 ) ; 
process (cntrl_RegWriteContrl_out) begin 
    if (cntrl_RegWriteContrl_out = '1') then
    REG_writedata_out0 <= ALU_data_out0;
    else 
    REG_writedata_out0 <= DM_read_in0 ;
    end if ;
end process ;


end bhvrl_MUX_memAM;
