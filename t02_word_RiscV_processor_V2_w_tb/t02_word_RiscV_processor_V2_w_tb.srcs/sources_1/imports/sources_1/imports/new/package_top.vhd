----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2024 00:59:10
-- Design Name: 
-- Module Name: package_top - Behavioral
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

package package_top is
constant X_clk : integer := 100_000_000 ;
constant X_len : integer := 32; 
constant R_typeop       : std_logic_vector(6 downto 0) := "0110011" ;
constant S_typeop       : std_logic_vector(6 downto 0) := "0100011" ;
constant I_typeop_reg   : std_logic_vector(6 downto 0) := "0010011" ;
constant I_typeop_dm    : std_logic_vector(6 downto 0) := "0000011" ;
constant B_typeop       : std_logic_vector(6 downto 0) := "1100011" ;

constant others_case : std_logic := '1' ;

constant RV_lvl : integer := 65536 ;
constant RV_lvlinbit : integer := 32;
constant RV_lvlinbitinbit : integer := 5;

constant RV_im_rom_depth : integer := 8 ;
constant RV_im_rom_width_inbit : integer :=  RV_lvlinbit ;
        
constant dm_length : integer :=  RV_lvl ;
constant dm_depth : integer :=  RV_lvlinbit ;

end package_top;

--package body  package_top is

--begin


--end package body Behavioral;
