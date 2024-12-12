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
use work.package_top.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity t02_Word_ALU is
    Generic(
        opcodemax_inbit : integer :=2--daha sonrasý için control ünit ten sadec ebelirli codlarý alan bir hat çýkarýp öyle kontrol et 
    );
    Port(
        --alu_opcode : in std_logic_vector(opcodemax_inbit downto 0);
        opcode  : in std_logic_vector(6 downto 0) := "0000000" ;
        f7      : in std_logic_vector(6 downto 0) := "0000000" ;
        f3      : in std_logic_vector(2 downto 0) := "000";
        alu_data_in0 : in  std_logic_vector(31 downto 0);
        alu_data_in1 : in  std_logic_vector(31 downto 0);
        alu_flag : out std_logic_vector(1 downto 0) ; -- MSB overflow zero LSB
        
        alu_data_out : out std_logic_vector(31 downto 0)
    );
end t02_Word_ALU;

architecture bhvrl_ALU of t02_Word_ALU is
begin

process ( opcode , f7 , f3 ) begin
    
    if (opcode = R_typeop) then
        case ( f3 ) is
            when "000" => --add sub
                if (f7(5) = '0') then 
                    alu_data_out <= std_logic_vector( signed( alu_data_in0) + signed( alu_data_in1 ) );
                else
                    alu_data_out <= std_logic_vector( signed( alu_data_in0) + signed( alu_data_in1 ) );
                end if ;
            when "001" => --sll
                    alu_data_out <= std_logic_vector( signed( alu_data_in0) sll to_integer(signed( alu_data_in1 )) );
            when "010" =>--slt
                if ( signed( alu_data_in0) < signed( alu_data_in1 ) ) then 
                    alu_data_out <= (X"00000001");
                else 
                    alu_data_out <= (X"00000000");
                end if ;
            when "011" =>--sltu
                if ( unsigned( alu_data_in0) < unsigned( alu_data_in1 ) ) then 
                    alu_data_out <= (X"00000001");
                else 
                    alu_data_out <= (X"00000000");
                end if ;
            when "100" =>--xor
                alu_data_out <=  alu_data_in0 xor alu_data_in1 ;
            when "101" =>--srl sra
                if (f7(5) = '0') then 
                    alu_data_out <= std_logic_vector( signed( alu_data_in0) srl to_integer(signed( alu_data_in1 )) );
                    --to do fix sra
                else
                    alu_data_out <=  (others => others_case);-- std_logic_vector( signed( S_alu_data_in0) sra to_integer(signed( alu_data_in1 )) );
                end if ;
            when "110" =>--or
                alu_data_out <=  alu_data_in0 or alu_data_in1 ;
            when "111" =>--and
                alu_data_out <=  alu_data_in0 and alu_data_in1 ;
            when others =>
                alu_data_out <=  (others => others_case) ;
        end case;
        --    else if (opcode = I_typeop_reg) then --to do regi iile imidiate_reg birleþtirilebilir mi ? 
        --        case ( f3 ) is
        --            when "000" => --addi
        --                alu_data_out <= std_logic_vector( signed( alu_data_in0) + signed( alu_data_in1 ) );
        --            when "010" =>--slti
        --                if ( signed( alu_data_in0) < signed( alu_data_in1 ) ) then 
        --                    alu_data_out <= (X"00000001");
        --                else 
        --                    alu_data_out <= (X"00000000");
        --                end if ;
        --            when "011" =>--sltiu
        --                if ( unsigned( alu_data_in0) < unsigned( alu_data_in1 ) ) then 
        --                    alu_data_out <= (X"00000001");
        --                else 
        --                    alu_data_out <= (X"00000000");
        --                end if ;
        --            when "100" =>--xori
        --                alu_data_out <=  alu_data_in0 xor alu_data_in1 ;
        --            when "110" =>--ori
        --                alu_data_out <=  alu_data_in0 or alu_data_in1 ;
        --            when "111" =>--andi
        --                alu_data_out <=  alu_data_in0 and alu_data_in1 ;
        --            when "001" => --slli
        --                alu_data_out <= std_logic_vector( signed( alu_data_in0) sll to_integer(signed( alu_data_in1 )) );
        --            when "101" =>--srli srai
        --                if (f7(5) = '0') then 
        --                    alu_data_out <= std_logic_vector( signed( alu_data_in0) srl to_integer(signed( alu_data_in1 )) );
        --                    --to do fix sra
        --                else
        --                    alu_data_out <=   (others => others_case) ;--std_logic_vector( signed( S_alu_data_in0) sra to_integer(signed( alu_data_in1 )) );
        --                end if ;
        --            when others =>
        --                alu_data_out <=  (others => others_case) ;
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
    end if;
    
    
    
end  process ;

end bhvrl_ALU;
