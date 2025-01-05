----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2025 22:38:26
-- Design Name: 
-- Module Name: t02_Word_userinterface - bhvrl_userinterface
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

entity t02_Word_userinterface is
    Port (
        Xclk : in std_logic ;
        userbutton_updown :  in std_logic_vector( 1 downto 0 ) ;
        --usersw_msb :in std_logic_vector( 7 downto 0 ) ; to detect which module 
        --usersw_lsb :in std_logic_vector( 7 downto 0 )  ; to detect which port
        CLK_interf : out std_logic  := '0' ;
        RST_interf : out std_logic ;
        
        userled : out  std_logic_vector( 15 downto 0 )  
    );
end t02_Word_userinterface;

architecture bhvrl_userinterface of t02_Word_userinterface is
signal S_CLK_interf : std_logic  := '0' ;
signal S_RST_interf : std_logic  := '0' ;
begin


process (Xclk , userbutton_updown ) begin 

    if ( falling_edge( userbutton_updown(0) ) ) then
    S_RST_interf <= not S_RST_interf ;
    end if ;
    
    RST_interf <= S_RST_interf ;
    
    
    if ( falling_edge( userbutton_updown(1) ) ) then
    S_CLK_interf <= not S_CLK_interf ;
    end if ;
    
    CLK_interf <= S_CLK_interf ;
    
end process;

end bhvrl_userinterface;
