----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.12.2024 17:25:34
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
    --RST_top : in std_logic := '0'  ; -- ikincil tasarýmda kullanýlmadý 
    BTN_top :  in std_logic_vector(4 downto 0) := "11111";
    SW_top : in std_logic_vector(15 downto 0) := X"0000";
    SEGMENT4_top :  out std_logic_vector(3 downto 0) := X"0" ;
    SEGMENT7_top  : out std_logic_vector(7 downto 0) := X"00" ;
    LED_top : out std_logic_vector(15 downto 0) := X"0000" 
    
    
    );
end component ;
----- Signal -----
signal clk_sw : std_logic_vector(4 downto 0) := "11111" ;
signal clk_tb : std_logic := '0';
signal rst_tb : std_logic := '1';
----- Variable -----
shared variable i : integer :=0 ;
shared variable J : integer :=0 ;
----- Constant -----
constant clk_hlf_periode  : time := 10 ns;

begin

TB : t02_Word_top 
    port map ( 
    CLK_top => clk_tb ,
    BTN_top  => clk_sw
    );


DUT  :  process begin 

clk_sw(1) <='0';
clk_tb <= not clk_tb;--0
wait for clk_hlf_periode;
clk_tb <= not clk_tb;--1
wait for clk_hlf_periode;
clk_sw(1)  <= not  clk_sw(1); 
clk_tb <= not clk_tb;--0
wait for clk_hlf_periode;
clk_tb <= not clk_tb;--1
wait for clk_hlf_periode;
clk_sw(1)  <= not  clk_sw(1);     +++
    for J in 0 to 100 loop
        for i in 0 to 1100 loop
        clk_tb <= not clk_tb;
        wait for clk_hlf_periode;
        end loop;
    clk_sw(2)  <= not  clk_sw(2);
    end loop;
clk_tb <= not clk_tb;
wait for clk_hlf_periode;
clk_tb <= not clk_tb;


end process;


end bhvrl_tb;
