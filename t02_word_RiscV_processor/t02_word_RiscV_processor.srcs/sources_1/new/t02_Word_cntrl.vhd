----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Arif
-- 
-- Create Date: 03.11.2024 22:24:52
-- Design Name: 
-- Module Name: t02_Word_cntrl - bhvrl_cntrl
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
use work.package_top.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity t02_Word_cntrl is
    Port (
        opcode  : in std_logic_vector(6 downto 0) := "0000000" ;
        f7      : in std_logic_vector(6 downto 0) := "0000000" ;
        f3      : in std_logic_vector(2 downto 0) := "000";
        cntrl_dm_write_enable: out std_logic := '0';
        cntrl_dm_read_enable : out std_logic := '0';
        cntrl_alu_opcode : out std_logic := '0' ;
        cnrtl_reg_write_enable : out std_logic := '0';
        cnrtl_alu_data_srce_slkt : out std_logic := '0' ;
        cnrtl_reg_write_srce_slkt : out std_logic := '0'
        );
end t02_Word_cntrl;

architecture bhvrl_cntrl of t02_Word_cntrl is

begin

--constant R_typeop : std_logic_vector(6 downto 0) := "0110011" ;
--constant S_typeop : std_logic_vector(6 downto 0) := "0100011" ;
--constant I_typeop_0 : std_logic_vector(6 downto 0) := "000011" ;
--constant I_typeop_1 : std_logic_vector(6 downto 0) := "0010011" ;
--constant B_typeop : std_logic_vector(6 downto 0) := "1100011" ;

--process ( opcode , f7 , f3 ) begin
    
--    if (opcode = R_typeop) then
--        case ( f3 ) is
--            when "000" => --add sub
--                if (f7(5) = '0') then 
--                    <statement>;
--                else
--                    <statement>;
--                end if ;
--            when "001" => --sll
--                <statement>;
--            when "010" =>--slt
--                <statement>;
--            when "011" =>--sltu
--                <statement>;
--            when "100" =>--xor
--                <statement>;
--            when "101" =>--srl sra
--                if (f7(5) = '0') then 
--                    <statement>;
--                else
--                    <statement>;
--                end if ;
--            when "110" =>--or
--                <statement>;
--            when "111" =>--and
--                <statement>;
--            when others =>
--                <statement>;
--        end case;
--    else if (opcode = I_typeop_reg) then 
--        case ( f3 ) is
--            when "000" => --addi
--                <statement>;
--            when "010" =>--slti
--                <statement>;
--            when "011" =>--sltiu
--                <statement>;
--            when "100" =>--xori
--                <statement>;
--            when "110" =>--ori
--                <statement>;
--            when "111" =>--andi
--                <statement>;
--            when "001" => --slli
--                <statement>;
--            when "101" =>--srli srai
--                if (f7(5) = '0') then 
--                    <statement>;
--                else
--                    <statement>;
--                end if ;
--            when others =>
--                <statement>;
--        end case;
--    else if (opcode = I_typeop_dm) then 
--        case ( f3 ) is
--            when "000" =>--lb
--                <statement>;
--            when "001" =>--lh
--                <statement>;
--            when "010" =>--lw
--                <statement>;
--            when "100" =>--lbu
--                <statement>;
--            when "101" =>--lhu
--                <statement>;
--            when others =>
--                <statement>;
--        end case ;
--    end if



--end process



end bhvrl_cntrl;
