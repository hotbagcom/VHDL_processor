----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Arif
-- 
-- Create Date: 03.11.2024 22:24:52
-- Design Name: 
-- Module Name: t02_Word_ALU - bhvrl_ALU
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

entity t02_Word_ALU is
    Generic(
        opcodemax_inbit : integer :=2
    );
    Port(
        data_in0 : in  std_logic_vector(31 downto 0);
        data_in1 : in  std_logic_vector(31 downto 0);
        opcode_cntrl : in std_logic_vector(opcodemax_inbit downto 0);
        data_out : out std_logic_vector(31 downto 0);
        flag : out std_logic_vector(1 downto 0) -- MSB overflow zero LSB
        
    );
end t02_Word_ALU;

architecture bhvrl_ALU of t02_Word_ALU is

begin


end bhvrl_ALU;
