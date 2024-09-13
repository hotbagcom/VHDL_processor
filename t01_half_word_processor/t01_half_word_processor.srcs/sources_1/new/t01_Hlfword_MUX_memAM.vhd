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
    Port ( ALU_data_out0 : in std_logic_vector(15 downto 0);--main alu
           DM_read_in0 : in std_logic_vector(15 downto 0);
           cntrl_RegWriteContrl_out : in STD_LOGIC;
           REG_writedata_out0 : out std_logic_vector(15 downto 0)
           );
end t01_Hlfword_MUX_memAM;

architecture bhvrl_MUX_memAM of t01_Hlfword_MUX_memAM is

begin


end bhvrl_MUX_memAM;
