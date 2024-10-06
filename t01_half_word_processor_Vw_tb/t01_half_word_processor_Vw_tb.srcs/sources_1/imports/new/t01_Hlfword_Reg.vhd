----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:15:54
-- Design Name: 
-- Module Name: t01_Hlfword_Reg - bhvrl_Reg
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

entity t01_Hlfword_Reg is
    Generic(
           Ram_width : integer := 16;
           Ram_depth :integer := 16
    );
    Port ( clk : in STD_LOGIC ;
           rst_ah : in  STD_LOGIC := '0';
           Enable_Writedata_reg_in0 : in STD_LOGIC := '1';
           Source_in0 : in std_logic_vector(3 downto 0) := (others => '0');
           Source_in1 : in std_logic_vector(3 downto 0) := (others => '0');
           Destination_in0 : in std_logic_vector(3 downto 0) := (others => '0');
           Writedata_Reg_in0 : in std_logic_vector(15 downto 0) := (others => '0');
           Reg_out0 : out std_logic_vector(15 downto 0) := (others => '0');
           Reg_out1 : out std_logic_vector(15 downto 0) := (others => '0') 
           );
end t01_Hlfword_Reg;

architecture bhvrl_Reg of t01_Hlfword_Reg is
signal zeynel :  std_logic := '0';
--TO DO  diferrence btw stdlogicvector and bitvector
type ram_type is array(0 to Ram_depth-1) of std_logic_vector(Ram_width-1 downto 0);
shared variable RAM_Reg : ram_type := (others=>(others=>'0'));


begin

process (Enable_Writedata_reg_in0,Destination_in0,Writedata_Reg_in0) begin
    --if (clk = '0')and( Enable_Writedata_reg_in0 = '1') then
        if (clk = '0')and( Enable_Writedata_reg_in0 = '1') then
        -- to do fix 
        RAM_Reg(to_integer(unsigned(Destination_in0))) :=  std_logic_vector(Writedata_Reg_in0) ;
        zeynel <= '1';
    end if;
end process;
process (clk) begin 
    if falling_edge(clk )then 
        if (rst_ah ='1') then
        RAM_Reg  := (others=>(others=>'0'));
        else 
        Reg_out0 <=  RAM_Reg( to_integer(unsigned(Source_in0)) );
        Reg_out1 <=  RAM_Reg( to_integer(unsigned(Source_in1)) );
            
        end if;
    end if;
end process ;

end bhvrl_Reg;
