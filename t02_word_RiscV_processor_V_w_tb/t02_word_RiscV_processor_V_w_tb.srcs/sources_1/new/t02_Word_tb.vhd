----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.12.2024 17:33:12
-- Design Name: 
-- Module Name: t02_Word_tb - bhvrl_tb
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

entity t02_Word_tb is
--  Port ( );
end t02_Word_tb;

architecture bhvrl_tb of t02_Word_tb is

----- Component -----
component t02_Word_top is
    Port(
    CLK_top : in std_logic := '0' ;
    RST_top : in std_logic := '0'  
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

TOP : t02_Word_top 
    port map ( 
    CLK_top => clk_tb ,
    RST_top => rst_tb
    );


DUT  :  process begin 

rst_tb <='1';
clk_tb <= not clk_tb;--0
wait for clk_hlf_periode;
clk_tb <= not clk_tb;--1
wait for clk_hlf_periode;
rst_tb <='0';
    for i in 0 to 10 loop
        clk_tb <= not clk_tb;
        wait for clk_hlf_periode;
    end loop;
clk_tb <= not clk_tb;
wait for clk_hlf_periode;
clk_tb <= not clk_tb;
wait for clk_hlf_periode;
end process;


end bhvrl_tb;
