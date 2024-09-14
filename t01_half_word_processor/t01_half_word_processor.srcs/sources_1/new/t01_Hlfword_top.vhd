----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:15:54
-- Design Name: 
-- Module Name: t01_Hlfword_top - Behavioral
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

-- OP    |type |  Mux_regSD  |  Mux_aluRI  |  Cntrl_op_alu(4)  |  Mux_memAM  |  E_W_reg  |  E_W_dm  |  E_R_dm  |  cntrl_branch  |  cntrl_jump
---------|-----|---------------------|
-- add   |  R  |  1  |  0  |  0000  |  0  |  1  |  0  |  0  |  0  |  0  |  
-- addi  |  I  |  0  |  1  |  0001  |  0  |  1  |  0  |  0  |  0  |  0  | 
-- sub   |  R  |  1  |  0  |  0010  |  0  |  1  |  0  |  0  |  0  |  0  |  
-- subi  |  I  |  0  |  1  |  0011  |  0  |  1  |  0  |  0  |  0  |  0  | 
-------- |-----|
-- beq   |  R  |  1  |  0  |  0100  |  x  |  0  |  0  |  0  |  1  |  0  | 
-- bge   |  R  |  1  |  0  |  0101  |  x  |  0  |  0  |  0  |  1  |  0  | 
-- srli  |  I  |  0  |  1  |  0110  |  0  |  1  |  0  |  0  |  0  |  0  | 
-- slli  |  I  |  0  |  1  |  0111  |  0  |  1  |  0  |  0  |  0  |  0  | 
-------- |-----|
-- xor   |  R  |  1  |  0  |  1000  |  0  |  1  |  0  |  0  |  0  |  0  |  
-- not   |  R  |  1  |  0  |  1001  |  0  |  1  |  0  |  0  |  0  |  0  |  --only r0 important
-- and   |  R  |  1  |  0  |  1010  |  0  |  1  |  0  |  0  |  0  |  0  |  
-- or    |  R  |  1  |  0  |  1011  |  0  |  1  |  0  |  0  |  0  |  0  |  
-------- |-----|
-- Lw    |  R  |  1  |  x  |  1100  |  1  |  0  |  0  |  1  |  0  |  0  |  --only r0 important
-- Sw    |  R  |  1  |  x  |  1101  |  1  |  0  |  0  |  1  |  0  |  0  |  --only r0 important
-- J     |  J  |  x  |  x  |  1110  |  x  |  0  |  0  |  0  |  0  |  1  | 
-- ? JL ( jump and link )



entity t01_Hlfword_top is
--  Port ( );
end t01_Hlfword_top;

architecture Behavioral of t01_Hlfword_top is

begin


end Behavioral;
