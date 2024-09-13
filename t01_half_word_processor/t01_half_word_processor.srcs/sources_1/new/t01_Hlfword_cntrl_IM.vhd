----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:28:32
-- Design Name: 
-- Module Name: t01_Hlfword_cntrl_IM - bhvrl_cntrl_IM
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
 
entity t01_Hlfword_cntrl_IM is
    Port ( cntrl_op_code : in std_logic_vector(3 downto 0);
           cntrl_RegAdressContrl_out : out STD_LOGIC;
           cntrl_RegWriteContrl_out : out STD_LOGIC;
           cntrl_JumpContrl_out : out STD_LOGIC;
           Enable_Writedata_reg_in0 : out STD_LOGIC;
           Enable_Writedata_dm_in0 : out STD_LOGIC;
           Enable_Readdata_dm_in0 : out STD_LOGIC
           );
end t01_Hlfword_cntrl_IM;

architecture bhvrl_cntrl_IM of t01_Hlfword_cntrl_IM is

begin


end bhvrl_cntrl_IM;
