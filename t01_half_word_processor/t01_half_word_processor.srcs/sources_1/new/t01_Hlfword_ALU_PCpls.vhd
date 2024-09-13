----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:28:32
-- Design Name: 
-- Module Name: t01_Hlfword_ALU_PCpls - bhvrl_ALU_PCpls
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

entity t01_Hlfword_ALU_PCpls is
    Port ( current_adress : in std_logic_vector(15 downto 0);
           byteadd : in std_logic_vector(2 downto 0); -- till 8 byte  : however standard incrementation is 2 : 0increment 1 ,7 increment 8;
           pls4byte_adress : out std_logic_vector(15 downto 0)
           );
end t01_Hlfword_ALU_PCpls;

architecture bhvrl_ALU_PCpls of t01_Hlfword_ALU_PCpls is

begin


end bhvrl_ALU_PCpls;
