----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.10.2024 10:18:24
-- Design Name: 
-- Module Name: t01_Hlfword_tb - Behavioral
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

entity t01_Hlfword_tb is
--  Port ( );
end t01_Hlfword_tb;

architecture Behavioral of t01_Hlfword_tb is
----- Component -----
component t01_Hlfword_top is
    Port ( 
    clk_m : in std_logic := '1' ;
    rst_ah_m : in  STD_LOGIC := '1'
    );
end component ;

----- Signal -----
signal clk_tb : std_logic := '1';
signal rst_tb : std_logic := '1';
----- Variable -----
shared variable i : integer :=0 ;
----- Constant -----
constant clk_hlf_periode  : time := 10 ns;


begin


TB : t01_Hlfword_top 
    port map ( 
    clk_m => clk_tb ,
    rst_ah_m => rst_tb
    );


DUT  :  process begin 

rst_tb <='1';
clk_tb <= not clk_tb;
wait for clk_hlf_periode;
clk_tb <= not clk_tb;
wait for clk_hlf_periode;
rst_tb <='0';
    for i in 0 to 37 loop
        clk_tb <= not clk_tb;
        wait for clk_hlf_periode;
    end loop;
clk_tb <= not clk_tb;
wait for clk_hlf_periode;
clk_tb <= not clk_tb;
wait for clk_hlf_periode;
end process;


end Behavioral;


