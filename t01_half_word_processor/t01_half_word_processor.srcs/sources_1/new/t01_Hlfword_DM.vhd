----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:15:54
-- Design Name: 
-- Module Name: t01_Hlfword_DM - bhvrl_DM
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

entity t01_Hlfword_DM is
    Generic (
           Ram_depth : integer := 128;
           Ram_width : integer := 16
    );
    Port ( clk : in STD_LOGIC := '0';
           rst_ah : in  STD_LOGIC := '0';
           Enable_Writedata_dm_in0 : in STD_LOGIC := '0';
           Enable_Readdata_dm_in0 : in STD_LOGIC := '0';
           Adress_dm_in0 : in std_logic_vector(15 downto 0)  := (others => '0');
           Writedata_dm_in0 : in std_logic_vector(15 downto 0)  := (others => '0');
           Readdata_dm_out0 : out std_logic_vector(15 downto 0)  := (others => '0')
           );
end t01_Hlfword_DM;

architecture bhvrl_DM of t01_Hlfword_DM is
    

type Ram_type is array (0 to Ram_depth-1) of bit_vector (Ram_width-1 downto 0);
signal RAM_DM : Ram_type := (others=>(others=>'0'));

begin



process (clk) begin
    if (rst_ah ='1') then
    RAM_DM <= (others=>(others=>'0'));
    elsif rising_edge(clk)then
        if (Enable_Writedata_dm_in0 = '1')then
        RAM_DM(to_integer(unsigned(Adress_dm_in0))) <= to_bitvector(Writedata_dm_in0);
        elsif (Enable_Readdata_dm_in0 = '1')then
        Readdata_dm_out0 <= to_stdlogicvector(RAM_DM(to_integer(unsigned(Adress_dm_in0))));
        end  if ;    
    end if ;

end process ;


end bhvrl_DM;
