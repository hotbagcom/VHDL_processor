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
    Port ( cntrl_op_code : in std_logic_vector(3 downto 0) := (others => '0') ;
           cntrl_RegAdressContrl_out : out STD_LOGIC := '0';
           cntrl_RegWriteContrl_out : out STD_LOGIC := '0';
           cntrl_JumpContrl_out : out STD_LOGIC := '0';
           Enable_Writedata_reg_in0 : out STD_LOGIC := '0';
           Enable_Writedata_dm_in0 : out STD_LOGIC := '0';
           Enable_Readdata_dm_in0 : out STD_LOGIC := '0'
           );
end t01_Hlfword_cntrl_IM;

architecture bhvrl_cntrl_IM of t01_Hlfword_cntrl_IM is

begin

process (cntrl_op_code) begin

    case (cntrl_op_code) is
        ------------------------------------------------------- add - addi - sub - subi
        when ("0000") => 
            cntrl_RegAdressContrl_out<= '1';
            cntrl_RegWriteContrl_out <= '0';
            cntrl_JumpContrl_out     <= '0';
            Enable_Writedata_reg_in0 <= '1';
            Enable_Writedata_dm_in0  <= '0';
            Enable_Readdata_dm_in0   <= '0';
            
        when ("0001") => 
            cntrl_RegAdressContrl_out<= '0';
            cntrl_RegWriteContrl_out <= '0';
            cntrl_JumpContrl_out     <= '0';
            Enable_Writedata_reg_in0 <= '1';
            Enable_Writedata_dm_in0  <= '0';
            Enable_Readdata_dm_in0   <= '0';
            
        when ("0010") => 
            cntrl_RegAdressContrl_out<= '1';
            cntrl_RegWriteContrl_out <= '0';
            cntrl_JumpContrl_out     <= '0';
            Enable_Writedata_reg_in0 <= '1';
            Enable_Writedata_dm_in0  <= '0';
            Enable_Readdata_dm_in0   <= '0';
            
        when ("0011") => 
            cntrl_RegAdressContrl_out<= '0';
            cntrl_RegWriteContrl_out <= '0';
            cntrl_JumpContrl_out     <= '0';
            Enable_Writedata_reg_in0 <= '1';
            Enable_Writedata_dm_in0  <= '0';
            Enable_Readdata_dm_in0   <= '0';
        ------------------------------------------------------- beq - bge - srli - slli 
        when ("0100") => 
            cntrl_RegAdressContrl_out<= '1';
 --           cntrl_RegWriteContrl_out <= '0';
            cntrl_JumpContrl_out     <= '0';
            Enable_Writedata_reg_in0 <= '0';
            Enable_Writedata_dm_in0  <= '0';
            Enable_Readdata_dm_in0   <= '0';
            
        when ("0101") => 
            cntrl_RegAdressContrl_out<= '1';
 --           cntrl_RegWriteContrl_out <= '0';
            cntrl_JumpContrl_out     <= '0';
            Enable_Writedata_reg_in0 <= '0';
            Enable_Writedata_dm_in0  <= '0';
            Enable_Readdata_dm_in0   <= '0';
            
        when ("0110") => 
            cntrl_RegAdressContrl_out<= '0';
            cntrl_RegWriteContrl_out <= '0';
            cntrl_JumpContrl_out     <= '0';
            Enable_Writedata_reg_in0 <= '1';
            Enable_Writedata_dm_in0  <= '0';
            Enable_Readdata_dm_in0   <= '0';
            
        when ("0111") => 
            cntrl_RegAdressContrl_out<= '0';
            cntrl_RegWriteContrl_out <= '0';
            cntrl_JumpContrl_out     <= '0';
            Enable_Writedata_reg_in0 <= '1';
            Enable_Writedata_dm_in0  <= '0';
            Enable_Readdata_dm_in0   <= '0';
        ------------------------------------------------------- xor  - not - and - or 
        when ("1000") => 
            cntrl_RegAdressContrl_out<= '1';
            cntrl_RegWriteContrl_out <= '0';
            cntrl_JumpContrl_out     <= '0';
            Enable_Writedata_reg_in0 <= '1';
            Enable_Writedata_dm_in0  <= '0';
            Enable_Readdata_dm_in0   <= '0';
            
        when ("1001") => 
            cntrl_RegAdressContrl_out<= '1';
            cntrl_RegWriteContrl_out <= '0';
            cntrl_JumpContrl_out     <= '0';
            Enable_Writedata_reg_in0 <= '1';
            Enable_Writedata_dm_in0  <= '0';
            Enable_Readdata_dm_in0   <= '0';
            
        when ("1010") => 
            cntrl_RegAdressContrl_out<= '1';
            cntrl_RegWriteContrl_out <= '0';
            cntrl_JumpContrl_out     <= '0';
            Enable_Writedata_reg_in0 <= '1';
            Enable_Writedata_dm_in0  <= '0';
            Enable_Readdata_dm_in0   <= '0';
            
        when ("1011") => 
            cntrl_RegAdressContrl_out<= '1';
            cntrl_RegWriteContrl_out <= '0';
            cntrl_JumpContrl_out     <= '0';
            Enable_Writedata_reg_in0 <= '1';
            Enable_Writedata_dm_in0  <= '0';
            Enable_Readdata_dm_in0   <= '0';
    ------------------------------------------------------- lw - sw - j - ? 
        when ("0100") => 
            cntrl_RegAdressContrl_out<= '1';
            cntrl_RegWriteContrl_out <= '1';
            cntrl_JumpContrl_out     <= '0';
            Enable_Writedata_reg_in0 <= '0';
            Enable_Writedata_dm_in0  <= '0';
            Enable_Readdata_dm_in0   <= '1';
            
        when ("0101") => 
            cntrl_RegAdressContrl_out<= '1';
            cntrl_RegWriteContrl_out <= '1';
            cntrl_JumpContrl_out     <= '0';
            Enable_Writedata_reg_in0 <= '0';
            Enable_Writedata_dm_in0  <= '1';
            Enable_Readdata_dm_in0   <= '0';
            
        when ("0110") => 
 --           cntrl_RegAdressContrl_out<= '1';
 --           cntrl_RegWriteContrl_out <= '1';
            cntrl_JumpContrl_out     <= '1';
            Enable_Writedata_reg_in0 <= '0';
            Enable_Writedata_dm_in0  <= '0';
            Enable_Readdata_dm_in0   <= '0';
            
--        when ("0111") => 
--            cntrl_RegAdressContrl_out<= '';
--            cntrl_RegWriteContrl_out <= '';
--            cntrl_JumpContrl_out     <= '';
--            Enable_Writedata_reg_in0 <= '';
--            Enable_Writedata_dm_in0  <= '';
--            Enable_Readdata_dm_in0   <= '';
    end case ;

end process ;




end bhvrl_cntrl_IM;
