----------------------------------------------------------------------------------
-- Company: MU
-- Engineer: Arif
-- 
-- Create Date: 03.11.2024 22:24:52
-- Design Name: 
-- Module Name: t02_Word_Reg - bhvrl_Reg
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

entity t02_Word_Reg is
    Generic(
        ram_length : integer :=  RV_lvlinbit ;
        ram_depth : integer :=  RV_lvlinbit 
    );
    Port(
        CLK : in std_logic ;
        RST : in std_logic ;  --active high mi active lov mu ? 
        reg_write_enable : in std_logic ;
        reg_source0_adrs : in std_logic_vector(RV_lvlinbitinbit-1 downto 0);
        reg_source1_adrs : in std_logic_vector(RV_lvlinbitinbit-1 downto 0);
        reg_dest : in std_logic_vector(RV_lvlinbitinbit-1 downto 0);
        reg_write_data : in std_logic_vector(RV_lvlinbit-1 downto 0);
        reg_source0_out : out std_logic_vector(RV_lvlinbit-1 downto 0);
        reg_source1_out : out std_logic_vector(RV_lvlinbit-1 downto 0)
    );
end t02_Word_Reg;

architecture bhvrl_Reg of t02_Word_Reg is

type ram_typ is array(0 to ram_length-1) of bit_vector(ram_depth-1 downto 0)  ;
signal RAM_reg : ram_typ := (



X"00000000" ,--0000 0110 signed byte
X"00000000" ,--0000 0110 unsigned byte
X"00000000" ,--0000 1100 word
X"00000000" ,--0000 1000 signed halfword
X"00000000" ,--0000 1000 unsigned halfword
X"00000000" ,--for all
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000"
);

begin

--register read process
--REG_READ
process ( reg_source0_adrs , reg_source1_adrs ) begin 
    reg_source0_out <= to_stdlogicvector( RAM_reg( to_integer(unsigned( reg_source0_adrs )) ) );
    reg_source1_out <= to_stdlogicvector( RAM_reg( to_integer(unsigned( reg_source1_adrs )) ) );
end  process ;



--register write process
--REG_WRITE  
ToDo  reg write does not work as wished in falling_edge
process ( CLK ) begin -- , reg_dest , reg_write_data , reg_write_enable
    
    if(falling_edge(CLK) and reg_write_enable = '1' )then
        RAM_reg( to_integer(unsigned(reg_dest)) ) <= to_bitvector(reg_write_data);
    end if;
end  process ;







end bhvrl_Reg;
