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
        cntrl_dm_bitlen :in std_logic_vector(2 downto 0);
        dm_adress :in std_logic_vector(dm_depth-1 downto 0) ;
        dm_data_in :in std_logic_vector(dm_depth-1 downto 0) ;
        dm_data_out:out std_logic_vector(dm_depth-1 downto 0) := (others=>'0')
    );
end t02_Word_DM;

architecture bhvrl_DM of t02_Word_DM is

shared variable S_dm_data_out : std_logic_vector(15 downto 0) ;
signal S_signed : std_logic ; 
signal zero : std_logic_vector(RV_lvlinbit-1 downto 0) := (others=> '0');
signal one  : std_logic_vector(RV_lvlinbit-1 downto 0) := (others=> '1');

type ram_typ is array(0 to 15) of bit_vector(dm_depth-1 downto 0)  ;-- bit_vector(dm_depth-1 downto 0)  ;
signal RAM_dm : ram_typ :=
 (
X"dc00fe01" ,
x"00ba0023" ,
X"987ab456" ,
X"01234567" ,
X"00010089" ,
X"000ab0ab" ,
X"000000cd" ,
X"000000ef" ,
X"00000000" ,--ToDo fix this :> bu sat�rda register1 de�eri 1. registeri vreiyor ve bir sonrakinde register0  vermeye ba�l�yor
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" ,
X"00000000" 
 );


begin

process ( RST , dm_write_enable , dm_read_enable , cntrl_dm_bitlen , dm_adress , dm_data_in) begin 

    if (RST ='1') then 
        dm_data_out <= (others=>'0');
    else
    --fixed how to send byte halfword or word  and difference btw signed aand unsigned 
        if ( (cntrl_dm_bitlen(0) and cntrl_dm_bitlen(1)) = '0') then -- "11" is not defined
            if (dm_write_enable = '1') then 
                 RAM_dm( to_integer(unsigned(dm_adress)) ) <= to_bitvector(dm_data_in(dm_depth-1 downto 0));
            elsif (dm_read_enable = '1') then 
            ------BRAM------LW----LH----------LB------- ---fixed ilk iki bit ge�ersiz say�lacak 32 bit 8 bitlik gibi  d���n�lecek
            -- 00 00 00 00  0   01 00   013 012 001 000
            -- 00 00 00 00  1   11 10   113 112 101 100 ---fixed signed ve unsigned al�nan de�erin msb soldaki bitlerle ayn� olacak 
            -- 00 00 00 00  2   21 20   213 212 201 200
                if(cntrl_dm_bitlen(1 downto 0) = "10") then --word    
                    dm_data_out <= to_stdlogicvector( RAM_dm( to_integer(unsigned( dm_adress(RV_lvlinbit-1 downto 2) )) ) );
                    
                elsif(cntrl_dm_bitlen(2) = '0')then --unsigned
                
                    if (cntrl_dm_bitlen(1 downto 0) = "01") then --halfword
                        case (dm_adress(0)) is
                            when '0' =>
                            dm_data_out <= zero(RV_lvlinbit-1 downto 16 ) & to_stdlogicvector( RAM_dm( to_integer(unsigned( dm_adress(RV_lvlinbit-1 downto 2) )) ) )(15 downto 0);
                            when '1' =>
                            dm_data_out <= zero(RV_lvlinbit-1 downto 16 ) & to_stdlogicvector( RAM_dm( to_integer(unsigned( dm_adress(RV_lvlinbit-1 downto 2) )) ) )(15 downto 0);
                            when others => 
                            dm_data_out <= (others=>'0');
                        end case ;
                    elsif(cntrl_dm_bitlen(1 downto 0) = "00") then --bit
                        case (dm_adress(1 downto 0)) is                      
                            when "00" =>
                            dm_data_out <= zero(RV_lvlinbit-1 downto 8 ) & to_stdlogicvector( RAM_dm( to_integer(unsigned( dm_adress(RV_lvlinbit-1 downto 2) )) ) )(7 downto 0);
                            when "01" =>                  
                            dm_data_out <= zero(RV_lvlinbit-1 downto 8 ) & to_stdlogicvector( RAM_dm( to_integer(unsigned( dm_adress(RV_lvlinbit-1 downto 2) )) ) )(15 downto 8);
                            when "10" =>                  
                            dm_data_out <= zero(RV_lvlinbit-1 downto 8 ) & to_stdlogicvector( RAM_dm( to_integer(unsigned( dm_adress(RV_lvlinbit-1 downto 2) )) ) )(23 downto 16);
                            when "11" =>                  
                            dm_data_out <= zero(RV_lvlinbit-1 downto 8 ) & to_stdlogicvector( RAM_dm( to_integer(unsigned( dm_adress(RV_lvlinbit-1 downto 2) )) ) )(31 downto 24);
                            when others => 
                            dm_data_out <= (others=>'0');
                        end case ;
                    end if ;--unsigned
                elsif(cntrl_dm_bitlen(2) = '1')then --signed
                    if (cntrl_dm_bitlen(1 downto 0) = "01") then --halfword
                        case (dm_adress(0)) is
                            when '0' =>
                            S_dm_data_out := to_stdlogicvector( RAM_dm( to_integer(unsigned( dm_adress(RV_lvlinbit-1 downto 2) )) ) )(15 downto 0);
                            when '1' =>
                            S_dm_data_out := to_stdlogicvector( RAM_dm( to_integer(unsigned( dm_adress(RV_lvlinbit-1 downto 2) )) ) )(15 downto 0);
                            when others => 
                            S_dm_data_out := (others=>'0');
                        end case ;
                        if( S_dm_data_out(15) = '0') then
                            dm_data_out <= zero(RV_lvlinbit-1 downto 16 ) & S_dm_data_out;
                        elsif( S_dm_data_out(15) = '1') then
                            dm_data_out <= one(RV_lvlinbit-1 downto 16 ) & S_dm_data_out;
                        end if ;
                    elsif(cntrl_dm_bitlen(1 downto 0) = "00") then --bit
                        case (dm_adress(1 downto 0)) is                      
                            when "00" =>
                            S_dm_data_out := zero(15 downto 8 ) & to_stdlogicvector( RAM_dm( to_integer(unsigned( dm_adress(RV_lvlinbit-1 downto 2) )) ) )(7 downto 0);
                            when "01" =>
                            S_dm_data_out := zero(15 downto 8 ) & to_stdlogicvector( RAM_dm( to_integer(unsigned( dm_adress(RV_lvlinbit-1 downto 2) )) ) )(15 downto 8);
                            when "10" =>
                            S_dm_data_out := zero(15 downto 8 ) & to_stdlogicvector( RAM_dm( to_integer(unsigned( dm_adress(RV_lvlinbit-1 downto 2) )) ) )(23 downto 16);
                            when "11" =>
                            S_dm_data_out := zero(15 downto 8 ) & to_stdlogicvector( RAM_dm( to_integer(unsigned( dm_adress(RV_lvlinbit-1 downto 2) )) ) )(31 downto 24);
                            when others => 
                            S_dm_data_out := (others=>'0');
                        end case ;
                        if( S_dm_data_out(7) = '0') then
                            dm_data_out <= zero(RV_lvlinbit-1 downto 8 ) & S_dm_data_out(7 downto 0);
                        elsif( S_dm_data_out(7) = '1') then
                            dm_data_out <= one(RV_lvlinbit-1 downto 8 ) & S_dm_data_out(7 downto 0);
                        end if ;
                        
                        
                    end if ;--signed
                end if ;--word
                -------------------------------------fixed some of the things are not syncron f3 cames with delay 
            end if;
        end if;
    end if ;
end process ;



end bhvrl_DM;
