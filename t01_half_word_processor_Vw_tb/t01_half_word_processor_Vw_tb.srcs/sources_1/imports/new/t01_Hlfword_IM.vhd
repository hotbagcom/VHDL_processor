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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity t01_Hlfword_IM is
    Generic (
           Ram_depth : integer := 32;
           Ram_width : integer := 16
    );
    Port ( 
           clk : in STD_LOGIC ;
           rst_ah : in  STD_LOGIC := '0';
           current_adress_IM_in : in std_logic_vector(15 downto 0) := (others => '0');
           op_code_IM_out3 : out std_logic_vector(3 downto 0) := (others => '0');
           reg_s0_addr2_IM_out2 : out std_logic_vector(3 downto 0) := (others => '0');
           reg_s1_dest_addr1_IM_out1 : out std_logic_vector(3 downto 0) := (others => '0');
           reg_dest_imm_addr0_IM_out0 : out std_logic_vector(3 downto 0) := (others => '0')
           );
end t01_Hlfword_IM;

architecture bhvrl_IM of t01_Hlfword_IM is

type Ram_type is array (0 to Ram_depth-1) of bit_vector (Ram_width-1 downto 0);
signal RAM_IM : Ram_type :=(






X"0000" ,
X"1047" ,
X"105B" ,
X"4044" ,
X"10C1" ,
X"4004" ,
X"1CC1" ,
X"5405" ,
X"0000" ,
X"1CD1" ,
X"0DCE" ,
X"105D" ,
X"5CD5" ,
X"0000" ,
X"0000" ,
X"0000" ,
X"101F" , 
X"7124" ,
X"121F" ,
X"8013" ,
X"9004" ,
X"D030" ,
X"1081" ,
X"D810" ,
X"C001" ,
X"10A1" , 
X"CA02" ,
X"2123" ,
X"6342" ,
X"0000" ,
X"0000" ,
X"0000" 
);
attribute rom_style : string ;
attribute rom_style of RAM_IM :signal is "block" ;

begin

process (current_adress_IM_in) begin 
--if current_adress_IM_in'event then--rising_edge(clk)then
    --report "$RAM_IM(to_integer( unsigned(current_adress_IM_in(4 downto 0)) ))";
    op_code_IM_out3 <= to_stdlogicvector( RAM_IM(to_integer(unsigned(current_adress_IM_in(4 downto 0))))(15 downto 12) );
    reg_s0_addr2_IM_out2 <= to_stdlogicvector( RAM_IM(to_integer(unsigned(current_adress_IM_in(4 downto 0))))(11 downto 8) ); 
    reg_s1_dest_addr1_IM_out1 <= to_stdlogicvector( RAM_IM(to_integer(unsigned(current_adress_IM_in(4 downto 0))))(7 downto 4) );
    reg_dest_imm_addr0_IM_out0 <= to_stdlogicvector( RAM_IM(to_integer(unsigned(current_adress_IM_in(4 downto 0))))(3 downto 0) );
--end if ;
    
   
end process ; 

end bhvrl_IM;
