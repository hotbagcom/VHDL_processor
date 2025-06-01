library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity oled_controller_top is
    generic (
        SYS_CLK_FREQ_HZ : integer := 100_000_000; -- For Basys3
        I2C_BUS_FREQ_HZ : integer := 400_000     -- SSD1306 can handle 400kHz
    );
    port (
        clk         : in  std_logic; -- System clock (e.g., 100MHz)
        reset_n     : in  std_logic; -- Active low reset
        
        Si_sw : in std_logic_vector(31 downto 0) := X"01abcdef";
        
        -- I2C physical pins
        i2c_scl     : inout std_logic;
        i2c_sda     : inout std_logic
    );
end entity oled_controller_top;

architecture behavioral of oled_controller_top is

    -- SSD1306 Constants
    constant SSD1306_I2C_SLAVE_ADDR : std_logic_vector(6 downto 0) := "0111100"; -- 0x3C
    constant SSD1306_CONTROL_CMD    : std_logic_vector(7 downto 0) := x"00";
    constant SSD1306_CONTROL_DATA   : std_logic_vector(7 downto 0) := x"40";

    constant SSD1306_WIDTH          : natural := 128;
    constant SSD1306_HEIGHT         : natural := 64;

    -- ROM Definitions for command sequences (payloads only)
    type command_array_t is array (natural range <>) of std_logic_vector(7 downto 0);

    -- From ssd1306_init()
    constant INIT_CMDS : command_array_t := (
        x"AE",                         -- Display OFF
        x"D5", x"80",                  -- Set Display Clock Divide Ratio/Oscillator Frequency
        x"A8", std_logic_vector(to_unsigned(SSD1306_HEIGHT - 1, 8)), -- Set Multiplex Ratio (e.g., 63 for 64)
        x"D3", x"00",                  -- Set Display Offset
        x"40",                         -- Set Display Start Line (0)
        x"8D", x"14",                  -- Charge Pump Setting (Enable)
        x"20", x"00",                  -- Memory Addressing Mode (Horizontal Addressing)
        x"A1",                         -- Segment Re-map (col 127 to SEG0)
        x"C8",                         -- COM Output Scan Direction (remapped)
        x"DA", x"12",                  -- Set COM Pins (0x12 for 128x64, 0x02 for 128x32)
        x"81", x"CF",                  -- Set Contrast Control
        x"D9", x"F1",                  -- Set Pre-charge Period
        x"DB", x"40",                  -- Set VCOMH Deselect Level
        x"A4",                         -- Entire Display ON from RAM
        x"A6",                         -- Set Normal Display
        x"2E",                         -- Deactivate Scroll
        x"AF"                          -- Display ON
    );

    -- From ssd1306_clear() - Address settings
    constant CLEAR_SETUP_CMDS : command_array_t := (
        x"21", x"00", x"7F" ,-- std_logic_vector(to_unsigned(SSD1306_WIDTH - 1, 8)),       -- Set Col Addr: 0 to WIDTH-1
        x"22", x"00", x"07" -- std_logic_vector(to_unsigned((SSD1306_HEIGHT / 8) - 1, 8)) -- Set Page Addr: 0 to (HEIGHT/8)-1
    );
    constant CLEAR_FILL_TOTAL_BYTES : natural := SSD1306_WIDTH * (SSD1306_HEIGHT / 8); -- e.g., 128 * 8 = 1024

    -- From ssd1306_drawBitmap8x8(0,0, smiley_face_8x8) - Address settings
    constant SMILEY_X_POS : natural := 16;
    constant SMILEY_Y_PAGE : natural := 16; -- y/8
    constant SMILEY_X2_POS : natural := SSD1306_WIDTH-1;
    constant SMILEY_Y2_PAGE : natural := SSD1306_HEIGHT / 8; -- y/8
    constant DRAW_SMILEY_SETUP_CMDS : command_array_t :=
    (
        x"21", std_logic_vector(to_unsigned(SMILEY_X_POS, 8)), std_logic_vector(to_unsigned(SMILEY_X2_POS , 8)), -- Set Col Addr: x to x+7
        x"22", std_logic_vector(to_unsigned(SMILEY_Y_PAGE, 8)), std_logic_vector(to_unsigned(SMILEY_Y2_PAGE, 8))    -- Set Page Addr: start_page to start_page
    );
    -- Smiley bitmap data
   -- signal Si_sw : std_logic_vector(31 downto 0) := X"01abcdef";
 type numberasci_array_t is array (integer range  0 to 7) of std_logic_vector(7 downto 0);
 type dataasci_array_t is array (integer range  0 to 15) of numberasci_array_t;
Constant C_asciT : dataasci_array_t := (

        -- 48: 0
(
"00000000",
"01111100",
"11111110",
"10000010",
"10000010",
"11111110",
"00111100",
"00000000"
),

-- 49: 1
(
"00000000",
"00000000",
"00000000",
"01000100",
"01111110",
"01111110",
"01000000",
"00000000"
),

-- 50: 2
(
"00000000",
"01000110",
"01100110",
"01110010",
"01011010",
"01001110",
"01000110",
"00000000"
),

-- 51: 3
(
"00000000",
"00100100",
"01100110",
"01000010",
"01011010",
"01111110",
"00110100",
"00000000"
),

-- 52: 4
(
"00000000",
"00011000",
"00010100",
"01111110",
"01111110",
"00010000",
"00010000",
"00000000"
),

-- 53: 5
(
"00000000",
"01101110",
"01001110",
"01001010",
"01101010",
"00110010",
"00000000",
"00000000"
),

-- 54: 6
(
"00000000",
"00111100",
"01111110",
"01001010",
"01001010",
"01111000",
"00110000",
"00000000"
),

-- 55: 7
(
"00000000",
"00000010",
"01100010",
"01110010",
"00011010",
"00001110",
"00000110",
"00000000"
),

-- 56: 8
(
"00000000",
"00110100",
"01001110",
"01001010",
"01001010",
"01001010",
"00110100",
"00000000"
),

-- 57: 9
(

"00000000",
"00001100",
"10011110",
"10010010",
"11010010",
"01111110",
"00111100",
"00000000"

),

-- 97: a
(
"00000000",
"00000000",
"01110100",
"01010010",
"01010010",
"01111110",
"01111100",
"00000000"
),

-- 98: b
(
"00000000",
"01111110",
"01111110",
"01100100",
"01100100",
"01111100",
"00111000",
"00000000"
),

-- 99: c
(
"00000000",
"00000000",
"00111000",
"01100100",
"01100010",
"01100010",
"00110110",
"00000000"
),

-- 100: d
(
"00000000",
"00111000",
"01111100",
"01101100",
"01101100",
"01111110",
"01111110",
"00000000"
),

-- 101: e
(
"00000000",
"00111100",
"01101010",
"01001010",
"01001010",
"00101100",
"00000000",
"00000000"
),

-- 102: f
(
"00000000",
"00010000",
"01111100",
"01111110",
"00010010",
"00000000",
"00000000",
"00000000"
)

 ) ;
    
  type datanumber_array_t is array (integer range 0 to 7) of  numberasci_array_t;
    signal SMILEY_BITMAP_DATA : datanumber_array_t ;
--     C_asciT( to_integer( unsigned( Si_sw(15 downto 12)  )  )  )  &
--     C_asciT( to_integer( unsigned( Si_sw(15 downto 8)   )  )  )  &
--     C_asciT( to_integer( unsigned( Si_sw(7 downto 4)    )  )  )  &
--     C_asciT( to_integer( unsigned( Si_sw(3 downto 0)    )  )  )  ;

    -- Main FSM states
    type main_fsm_state_t is (
        S_IDLE,
        S_INIT_CMDS_START, S_INIT_CMDS_SEND, S_INIT_CMDS_WAIT,
        S_CLEAR_SETUP_START, S_CLEAR_SETUP_SEND, S_CLEAR_SETUP_WAIT,
        S_CLEAR_FILL_START, S_CLEAR_FILL_SEND, S_CLEAR_FILL_WAIT,
        S_DRAW_SMILEY_SETUP_START, S_DRAW_SMILEY_SETUP_SEND, S_DRAW_SMILEY_SETUP_WAIT,
        S_DRAW_SMILEY_DATA_START, S_DRAW_SMILEY_DATA_SEND, S_DRAW_SMILEY_DATA_WAIT,
        S_ALL_DONE
    );
    signal current_main_state   : main_fsm_state_t := S_IDLE;
    signal command_index        : integer := 0;
    signal data_byte_count      : natural := 0;

    -- Signals for i2c_transaction_sender instance
    signal sig_start_i2c_transaction : std_logic := '0';
    signal sig_i2c_byte1             : std_logic_vector(7 downto 0);
    signal sig_i2c_byte2             : std_logic_vector(7 downto 0);
    signal sig_i2c_transaction_active: std_logic;
    signal sig_i2c_transaction_done  : std_logic;
    signal sig_i2c_transaction_ack_err: std_logic;

    -- Signals for p05_mba_I2C instance
    signal i2c_ena_to_master    : std_logic;
    signal i2c_addr_to_master   : std_logic_vector(6 downto 0);
    signal i2c_rw_to_master     : std_logic;
    signal i2c_data_wr_to_master: std_logic_vector(7 downto 0);
    signal i2c_busy_from_master : std_logic;
    signal i2c_data_rd_from_master : std_logic_vector(7 downto 0); -- Not used in this design
    signal i2c_ack_err_from_master : std_logic;

    -- Delay counter for startup
    signal startup_delay_counter : unsigned(23 downto 0) := (others => '0'); -- Approx 0.16s at 100MHz
    constant STARTUP_DELAY_MAX : unsigned(23 downto 0) := to_unsigned(10000000, 24); -- Wait 10M cycles

begin

    -- Instantiate the I2C Master IP Core
    i2c_master_inst : entity work.p05_mba_I2C -- Make sure library is correct (e.g., work)
        generic map (
            input_clk => SYS_CLK_FREQ_HZ,
            bus_clk   => I2C_BUS_FREQ_HZ
        )
        port map (
            clk       => clk,
            reset_n   => reset_n,
            ena       => i2c_ena_to_master,
            addr      => i2c_addr_to_master,
            rw        => i2c_rw_to_master,
            data_wr   => i2c_data_wr_to_master,
            busy      => i2c_busy_from_master,
            data_rd   => i2c_data_rd_from_master,
            ack_error => i2c_ack_err_from_master,
            sda       => i2c_sda,
            scl       => i2c_scl
        );

    -- Instantiate the I2C Transaction Sender
    i2c_sender_inst : entity work.i2c_transaction_sender
        port map (
            clk                 => clk,
            reset_n             => reset_n,
            start_transaction   => sig_start_i2c_transaction,
            slave_i2c_addr      => SSD1306_I2C_SLAVE_ADDR,
            byte1_to_send       => sig_i2c_byte1,
            byte2_to_send       => sig_i2c_byte2,
            transaction_active  => sig_i2c_transaction_active,
            transaction_done    => sig_i2c_transaction_done,
            transaction_ack_err => sig_i2c_transaction_ack_err,
            i2c_master_ena      => i2c_ena_to_master,
            i2c_master_addr     => i2c_addr_to_master,
            i2c_master_rw       => i2c_rw_to_master,
            i2c_master_data_wr  => i2c_data_wr_to_master,
            i2c_master_busy     => i2c_busy_from_master,
            i2c_master_ack_error=> i2c_ack_err_from_master
        );

    -- Main state machine process
    process(clk, reset_n)
    begin
        if reset_n = '0' then
            current_main_state <= S_IDLE;
            command_index      <= 0;
            data_byte_count    <= 0;
            sig_start_i2c_transaction <= '0';
            startup_delay_counter <= (others => '0');
        elsif rising_edge(clk) then
            -- Default actions / De-assert pulse
            sig_start_i2c_transaction <= '0';

            case current_main_state is
                when S_IDLE =>
                    if startup_delay_counter < STARTUP_DELAY_MAX then
                        startup_delay_counter <= startup_delay_counter + 1;
                    else
--                     SMILEY_BITMAP_DATA  <= 
                     SMILEY_BITMAP_DATA(0 ) <= C_asciT( to_integer( unsigned( Si_sw(31 downto 28)  )  )  )  ;
                     SMILEY_BITMAP_DATA(1 ) <= C_asciT( to_integer( unsigned( Si_sw(27 downto 24)  )  )  )  ;
                     SMILEY_BITMAP_DATA(2 ) <= C_asciT( to_integer( unsigned( Si_sw(23 downto 20)  )  )  )  ;
                     SMILEY_BITMAP_DATA(3 ) <= C_asciT( to_integer( unsigned( Si_sw(19 downto 16)  )  )  )  ;
                     SMILEY_BITMAP_DATA(4 ) <= C_asciT( to_integer( unsigned( Si_sw(15 downto 12)  )  )  )  ;
                     SMILEY_BITMAP_DATA(5 ) <= C_asciT( to_integer( unsigned( Si_sw(11 downto 8)  )  )  )  ;
                     SMILEY_BITMAP_DATA(6 ) <= C_asciT( to_integer( unsigned( Si_sw(7 downto 4)  )  )  )  ;
                     SMILEY_BITMAP_DATA(7 ) <= C_asciT( to_integer( unsigned( Si_sw(3 downto 0)  )  )  )  ;
                    
                        current_main_state <= S_INIT_CMDS_START;
                    end if;

                ---------------- INIT SEQUENCE ----------------
                when S_INIT_CMDS_START =>
                    command_index      <= 0;
                    current_main_state <= S_INIT_CMDS_SEND;

                when S_INIT_CMDS_SEND =>
                    if command_index < INIT_CMDS'length then
                        if sig_i2c_transaction_active= '0' then
                            sig_i2c_byte1 <= SSD1306_CONTROL_CMD;
                            sig_i2c_byte2 <= INIT_CMDS(command_index);
                            sig_start_i2c_transaction <= '1';
                            current_main_state <= S_INIT_CMDS_WAIT;
                        end if;
                    else
                        current_main_state <= S_CLEAR_SETUP_START; -- Move to next sequence
                    end if;

                when S_INIT_CMDS_WAIT =>
                    if sig_i2c_transaction_done = '1' then
                        if sig_i2c_transaction_ack_err = '1' then
                            current_main_state <= S_ALL_DONE; -- Or an error state
                        else
                            command_index <= command_index + 1;
                            current_main_state <= S_INIT_CMDS_SEND;
                        end if;
                    end if;

                ---------------- CLEAR DISPLAY SETUP SEQUENCE ----------------
                when S_CLEAR_SETUP_START =>
                    command_index      <= 0;
                    current_main_state <= S_CLEAR_SETUP_SEND;

                when S_CLEAR_SETUP_SEND =>
                    if command_index < CLEAR_SETUP_CMDS'length then
                        if sig_i2c_transaction_active = '0'then
                            sig_i2c_byte1 <= SSD1306_CONTROL_CMD;
                            sig_i2c_byte2 <= CLEAR_SETUP_CMDS(command_index);
                            sig_start_i2c_transaction <= '1';
                            current_main_state <= S_CLEAR_SETUP_WAIT;
                        end if;
                    else
                        current_main_state <= S_CLEAR_FILL_START;
                    end if;

                when S_CLEAR_SETUP_WAIT =>
                    if sig_i2c_transaction_done = '1' then
                         if sig_i2c_transaction_ack_err = '1' then
                            current_main_state <= S_ALL_DONE; -- Or an error state
                        else
                            command_index <= command_index + 1;
                            current_main_state <= S_CLEAR_SETUP_SEND;
                        end if;
                    end if;

                ---------------- CLEAR DISPLAY FILL SEQUENCE ----------------
                when S_CLEAR_FILL_START =>
                    data_byte_count    <= 0;
                    current_main_state <= S_CLEAR_FILL_SEND;

                when S_CLEAR_FILL_SEND =>
                    if data_byte_count < CLEAR_FILL_TOTAL_BYTES then
                        if sig_i2c_transaction_active = '0'then
                            sig_i2c_byte1 <= SSD1306_CONTROL_DATA;
                            sig_i2c_byte2 <= x"00"; -- Data to clear screen
                            sig_start_i2c_transaction <= '1';
                            current_main_state <= S_CLEAR_FILL_WAIT;
                        end if;
                    else
                        current_main_state <= S_DRAW_SMILEY_SETUP_START;
                    end if;

                when S_CLEAR_FILL_WAIT =>
                    if sig_i2c_transaction_done = '1' then
                        if sig_i2c_transaction_ack_err = '1' then
                            current_main_state <= S_ALL_DONE; -- Or an error state
                        else
                            data_byte_count <= data_byte_count + 1;
                            current_main_state <= S_CLEAR_FILL_SEND;
                        end if;
                    end if;

                ---------------- DRAW SMILEY SETUP SEQUENCE ----------------
                when S_DRAW_SMILEY_SETUP_START =>
                    command_index      <= 0;
                    current_main_state <= S_DRAW_SMILEY_SETUP_SEND;

                when S_DRAW_SMILEY_SETUP_SEND =>
                    if command_index < DRAW_SMILEY_SETUP_CMDS'length then
                        if sig_i2c_transaction_active = '0' then
                            sig_i2c_byte1 <= SSD1306_CONTROL_CMD;
                            sig_i2c_byte2 <= DRAW_SMILEY_SETUP_CMDS(command_index);
                            sig_start_i2c_transaction <= '1';
                            current_main_state <= S_DRAW_SMILEY_SETUP_WAIT;
                        end if;
                    else
                        current_main_state <= S_DRAW_SMILEY_DATA_START;
                    end if;

                when S_DRAW_SMILEY_SETUP_WAIT =>
                    if sig_i2c_transaction_done = '1' then
                        if sig_i2c_transaction_ack_err = '1' then
                            current_main_state <= S_ALL_DONE; -- Or an error state
                        else
                            
                            command_index <= command_index + 1;
                            current_main_state <= S_DRAW_SMILEY_SETUP_SEND;
                        end if;
                    end if;

                ---------------- DRAW SMILEY DATA SEQUENCE ----------------
                when S_DRAW_SMILEY_DATA_START =>
                    command_index      <= 1; -- Re-using command_index for bitmap data
                    data_byte_count    <= 1;
                    current_main_state <= S_DRAW_SMILEY_DATA_SEND;

                when S_DRAW_SMILEY_DATA_SEND =>
                    if sig_i2c_transaction_active = '0' then
                        if command_index < SMILEY_BITMAP_DATA'length +1 then
                            if data_byte_count < SMILEY_BITMAP_DATA(0)'length +1 then
                                
                                    sig_i2c_byte1 <= SSD1306_CONTROL_DATA;
                                    sig_i2c_byte2 <= SMILEY_BITMAP_DATA( command_index -1 )( data_byte_count -1 );
                                    sig_start_i2c_transaction <= '1';
                                    current_main_state <= S_DRAW_SMILEY_DATA_WAIT;
                                
                            data_byte_count <= data_byte_count + 1;
                            else
                            data_byte_count <= 0 ;
                            command_index <= command_index + 1;
                            end if;
                            
                        else
                            current_main_state <= S_ALL_DONE;
                        end if;
                    end if;
                when S_DRAW_SMILEY_DATA_WAIT =>
                    if sig_i2c_transaction_done = '1' then
                        if sig_i2c_transaction_ack_err = '1' then
                            current_main_state <= S_ALL_DONE; -- Or an error state
                        else
                            
                            
                            current_main_state <= S_DRAW_SMILEY_DATA_SEND;
                        end if;
                    end if;

                ---------------- ALL DONE ----------------
                when S_ALL_DONE =>
                    -- Stay here, OLED is configured and smiley is drawn.
                    null;

            end case;
        end if;
    end process;

end architecture behavioral;