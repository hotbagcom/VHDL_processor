----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:15:54
-- Design Name: 
-- Module Name: t01_Hlfword_ALU - bhvrl_ALU
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all; 

entity t01_Hlfword_ALU is
    Port ( clk : in  STD_LOGIC ;
           rst_ah : in  STD_LOGIC := '0';
           Alu_cntl_in : in std_logic_vector(3 downto 0) := ( others => '0' );
           Data_aluMain_in0 : in std_logic_vector(15 downto 0) := ( others => '0' );
           Data_aluMain_in1 : in std_logic_vector(15 downto 0) := ( others => '0' );
           Flag_zero_out0 : out STD_LOGIC := '0';
           Flag_overflv_out0 : out STD_LOGIC := '0';
           Data_aluMain_out0 : out std_logic_vector(15 downto 0) := ( others => '0' )
           );
end t01_Hlfword_ALU;

architecture bhvrl_ALU of t01_Hlfword_ALU is

--    signal S_Data_aluMain_in0 : std_logic_vector(15 downto 0) ;
--    signal S_Data_aluMain_out0 : std_logic_vector(15 downto 0) ;

    signal S_Flag_zero_out0 : std_logic := '0' ;
--    signal S_checkP_Alu : std_logic := '0' ;
  
begin
--S_Data_aluMain_in0 <= Data_aluMain_in0; 
--Data_aluMain_out0 <= S_Data_aluMain_out0;
process (clk,Alu_cntl_in,Data_aluMain_in0,Data_aluMain_in1) begin
    
    
    if rising_edge(clk) then 
        Flag_zero_out0 <=  '0' ;
    elsif  (rst_ah = '1') then
        Data_aluMain_out0 <= (others=>'0');
    end if ;    
    
    if (clk /= '0') then
        case (Alu_cntl_in) is
        ------------------------------------------------------- add - addi - sub - subi
        when ("0000") => 
            Data_aluMain_out0 <= std_logic_vector ( unsigned(Data_aluMain_in0) + unsigned(Data_aluMain_in1)  );
            
        when ("0001") => 
            Data_aluMain_out0 <= std_logic_vector ( unsigned(Data_aluMain_in0) + unsigned(Data_aluMain_in1)  );
            
        when ("0010") => 
            Data_aluMain_out0 <= std_logic_vector ( unsigned(Data_aluMain_in0) - unsigned(Data_aluMain_in1)  );
            
        when ("0011") => 
            Data_aluMain_out0 <= std_logic_vector ( unsigned(Data_aluMain_in0) - unsigned(Data_aluMain_in1)  );
            
        ------------------------------------------------------- beq - bge - srli - slli 
        when ("0100") => 
            if (unsigned(Data_aluMain_in0) = unsigned(Data_aluMain_in1)) then 
                Flag_zero_out0 <=  '1' ;
            else
                Flag_zero_out0 <=  '0' ;    
            end if;
            
        when ("0101") => 
            if (unsigned(Data_aluMain_in0) >= unsigned(Data_aluMain_in1)) then 
                Flag_zero_out0 <=  '1' ;
            else
                Flag_zero_out0 <=  '0' ;                
            end if;
            
        when ("0110") => 
            Data_aluMain_out0 <= std_logic_vector(unsigned(Data_aluMain_in0) srl to_integer(unsigned(Data_aluMain_in1)));
         --   to do 
        when ("0111") => --X"7124" ,dos not shift left giwes as output as '0000'
            Data_aluMain_out0 <= std_logic_vector(unsigned(Data_aluMain_in0) sll to_integer(unsigned(Data_aluMain_in1)));
            
        ------------------------------------------------------- xor  - not - and - or 
        when ("1000") => 
             Data_aluMain_out0 <= not (Data_aluMain_in0 xor Data_aluMain_in1) ;
            
        when ("1001") => 
             Data_aluMain_out0 <= not Data_aluMain_in0  ;
            
        when ("1010") => 
             Data_aluMain_out0 <= Data_aluMain_in0 and Data_aluMain_in1 ;
            
        when ("1011") => 
             Data_aluMain_out0 <= Data_aluMain_in0 or Data_aluMain_in1 ;
             
        ------------------------------------------------------- lw - sw - j - ? 
        when ("1100") => -- input of this connected directly to the input of DM
            Data_aluMain_out0 <= X"003C"; -- Data_aluMain_in0 ;--+ Data_aluMain_in1  ;
            
        when ("1101") => -- input of this connected directly to the input of DM
            Data_aluMain_out0 <= X"00F0";-- Data_aluMain_in0 ;--+ Data_aluMain_in1  ;
            
        when ("1110") => 
            Data_aluMain_out0 <=  Data_aluMain_in0 ;--+ Data_aluMain_in1  ;
        when ("1111") => --reserved 
            Data_aluMain_out0 <=    X"03C0";
        when others => --reserved 
            Data_aluMain_out0 <=  X"0f00";
        
        end case ;
    end  if;  
      


end process ;

end bhvrl_ALU;
