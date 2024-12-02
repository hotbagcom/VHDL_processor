----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Arif
-- 
-- Create Date: 03.11.2024 22:24:52
-- Design Name: 
-- Module Name: t02_Word_IM - bhvrl_IM
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

entity t02_Word_IM is
    Port ( 
        Intructuion_ram_in : in std_logic_vector( X_len-1 downto 0);
        opcode  : out std_logic_vector(6 downto 0) := "0000000" ;
        rd      : out std_logic_vector(4 downto 0) := "00000";
        f3      : out std_logic_vector(2 downto 0) := "000";
        rs1     : out std_logic_vector(4 downto 0) := X"0";
        rs2     : out std_logic_vector(4 downto 0) := X"0";
        f7      : out std_logic_vector(6 downto 0) := "0000000" ;
        
        imm     : out std_logic_vector(12 downto 0) := "0000000000000" 
        
        ); 
end t02_Word_IM;

--R type | ADD SUB SLL SLT SLTU XOR SRL SRA OR AND | OPCODE 0110011 : f3 {000 000 001 010 011 100 101 101 110 111 }
                    -- 8_0 01+5_0 8_0 8_0 8_0  8_0 8_0 01+5_0 8_0 8_0                         --IM := []         
--B type | BEQ BNE , BLT BGE , BLTU BGEU | OPCODE 1100011 : f3 {000 001 ,100 101 , 110 111}
--I type | LB LH LW , LBU LHU | OPCODE 0000011 : f3 {000 001 010 , 100 101}
--I type | ADDI SLTI SLTIU , XORI ORI ANDI | OPCODE 0010011 : f3 {000 010 011 , 100 110 111}
--I type | SLLI SRLI SRAI  |                 OPCODE 0010011 : f3 {001 101 101} 
                                            -- IM := [5_0+shamt 5_0+shamt 01000+shamt]

--S type | SB SH SW | OPCODE 0100011 : f3 {000 001 010}





How tu use other insttruction Fence =? , Jal=? , LUI= ?






architecture bhvrl_IM of t02_Word_IM is

signal S_opcode  : std_logic_vector(6 downto 0) := (others=>'0');

begin

S_opcode <= Intructuion_ram_in( 6 downto 0 );

process (S_opcode) begin
    if (S_opcode = R_typeop) then
        opcode  <= S_opcode ;
        rd      <= Intructuion_ram_in( 11 downto 7 ) ;
        f3      <= Intructuion_ram_in( 14 downto 12 ) ;
        rs1     <= Intructuion_ram_in( 19 downto 15 ) ;
        rs2     <= Intructuion_ram_in( 24 downto 20 ) ;
        f7      <= Intructuion_ram_in( 31 downto 25 ) ;
    elsif((S_opcode = I_typeop_0) or (S_opcode = I_typeop_1))then
        opcode  <= S_opcode ;
        rd      <= Intructuion_ram_in( 11 downto 7 ) ;
        f3      <= Intructuion_ram_in( 14 downto 12 ) ;
        rs1     <= Intructuion_ram_in( 19 downto 15 ) ;
        imm     <= Intructuion_ram_in( 31 downto 20 ) ; -- f7 +rs2
    elsif(S_opcode = S_typeop)then
        opcode  <= S_opcode ;
        f3      <= Intructuion_ram_in( 14 downto 12 ) ;
        rs1     <= Intructuion_ram_in( 19 downto 15 ) ;
        rs2     <= Intructuion_ram_in( 24 downto 20 ) ;
        imm     <= Intructuion_ram_in( 31 downto 25 ) & Intructuion_ram_in( 11 downto 7 );
    elsif(S_opcode = B_typeop)then
        f3      <= Intructuion_ram_in( 14 downto 12 ) ;
        rs1     <= Intructuion_ram_in( 19 downto 15 ) ;
        rs2     <= Intructuion_ram_in( 24 downto 20 ) ;
        imm     <= Intructuion_ram_in( 31 ) & Intructuion_ram_in( 7 ) & Intructuion_ram_in( 30 downto 25 ) & Intructuion_ram_in( 11 downto 8 )  ;--shift 1 bit left
    
    end if;
        
end process ;


end bhvrl_IM;



 