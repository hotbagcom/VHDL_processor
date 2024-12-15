----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Arif
-- 
-- Create Date: 03.11.2024 22:24:52
-- Design Name: 
-- Module Name: t02_Word_DM - bhvrl_DM
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

entity t02_Word_DM is 
    Generic(
        dm_length : integer :=  RV_lvl ;
        dm_depth : integer :=  RV_lvlinbit 
    );
    Port(
        RST : in std_logic := '0' ;  --active high mi active lov mu ? 
        dm_write_enable: in std_logic ;
        dm_read_enable : in std_logic ;
        dm_adress :in std_logic_vector(dm_depth-1 downto 0) ;
        dm_data_in :in std_logic_vector(dm_depth-1 downto 0) ;
        dm_data_out:out std_logic_vector(dm_depth-1 downto 0) := (others=>'0')
    );
end t02_Word_DM;

architecture bhvrl_DM of t02_Word_DM is

type ram_typ is array(0 to dm_length-1) of bit_vector(dm_depth-1 downto 0)  ;
signal RAM_dm : ram_typ := (others=>(others=>'0'));


begin

process (dm_write_enable , dm_read_enable , dm_adress , dm_data_in) begin 
    if (RST ='1') then 
        dm_data_out <= (others=>'0');
    else
        if (dm_write_enable = '1') then 
             RAM_dm( to_integer(unsigned(dm_adress)) ) <= to_bitvector(dm_data_in);
        elsif (dm_read_enable = '1') then 
            dm_data_out <= to_stdlogicvector( RAM_dm( to_integer(unsigned( dm_adress )) ) );
        end if;
    end if ;
end process ;



end bhvrl_DM;
