----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:15:54
-- Design Name: 
-- Module Name: t01_Hlfword_cntl_alu - bhvrl_cntl_alu
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
 
entity t01_Hlfword_cntl_alu is
    Port ( cntrl_op_code : in std_logic_vector(3 downto 0) := (others => '0') ;
           cntrlalu_gate_brnch : out STD_LOGIC := '0';
           cntrl_ALUoperation_in : out std_logic_vector(3 downto 0) := (others => '0') ;-- add sub j{add two register} beq bge srli slli xor not or and :11 op
           cntrl_AluSourceContrl_out : out STD_LOGIC := '0'
           );
end t01_Hlfword_cntl_alu;

architecture bhvrl_cntl_alu of t01_Hlfword_cntl_alu is

begin

cntrl_ALUoperation_in <= cntrl_op_code;

process (cntrl_op_code) begin

    case (cntrl_op_code) is
        ------------------------------------------------------- add - addi - sub - subi
        when ("0000") => 
            cntrlalu_gate_brnch         <= '0';
            cntrl_AluSourceContrl_out   <= '0';
            
        when ("0001") => 
            cntrlalu_gate_brnch         <= '0';
            cntrl_AluSourceContrl_out   <= '1';
            
        when ("0010") => 
            cntrlalu_gate_brnch         <= '0';
            cntrl_AluSourceContrl_out   <= '0';
            
        when ("0011") => 
            cntrlalu_gate_brnch         <= '0';
            cntrl_AluSourceContrl_out   <= '1';
        ------------------------------------------------------- beq - bge - srli - slli 
        when ("0100") => 
            cntrlalu_gate_brnch         <= '1';
            cntrl_AluSourceContrl_out   <= '0';
            
        when ("0101") => 
            cntrlalu_gate_brnch         <= '1';
            cntrl_AluSourceContrl_out   <= '0';
            
        when ("0110") => 
            cntrlalu_gate_brnch         <= '0';
            cntrl_AluSourceContrl_out   <= '1';
            
        when ("0111") => 
            cntrlalu_gate_brnch         <= '0';
            cntrl_AluSourceContrl_out   <= '1';
        ------------------------------------------------------- xor  - not - and - or 
        when ("1000") => 
            cntrlalu_gate_brnch         <= '0';
            cntrl_AluSourceContrl_out   <= '0';
            
        when ("1001") => 
            cntrlalu_gate_brnch         <= '0';
            cntrl_AluSourceContrl_out   <= '0';
            
        when ("1010") => 
            cntrlalu_gate_brnch         <= '0';
            cntrl_AluSourceContrl_out   <= '0';
            
        when ("1011") => 
            cntrlalu_gate_brnch         <= '0';
            cntrl_AluSourceContrl_out   <= '0';
    ------------------------------------------------------- lw - sw - j - ? 
        when ("1100") => 
            cntrlalu_gate_brnch         <= '0';
            cntrl_AluSourceContrl_out   <= '0';
            
        when ("1101") => 
            cntrlalu_gate_brnch         <= '0';
            cntrl_AluSourceContrl_out   <= '0';
            
        when ("1110") => 
            cntrlalu_gate_brnch         <= '0';
            cntrl_AluSourceContrl_out   <= '0';
 -- un assigned
        when others => --("1111") => 
            cntrlalu_gate_brnch         <= '0';
            cntrl_AluSourceContrl_out   <= '0';
    end case ;

end process ;
end bhvrl_cntl_alu;
