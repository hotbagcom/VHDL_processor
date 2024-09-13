----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:15:54
-- Design Name: 
-- Module Name: t01_Hlfword_IM - bhvrl_IM
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

entity t01_Hlfword_IM is
    Port ( clk : in STD_LOGIC;
           current_adress_IM_in : in STD_LOGIC;
           op_code_IM_out3 : out std_logic_vector(3 downto 0);
           reg_s0_addr2_IM_out2 : out std_logic_vector(3 downto 0);
           reg_s1_dest_addr1_IM_out1 : out std_logic_vector(3 downto 0);
           reg_dest_imm_addr0_IM_out0 : out std_logic_vector(11 downto 0)
           );
end t01_Hlfword_IM;

architecture bhvrl_IM of t01_Hlfword_IM is

begin


end bhvrl_IM;
