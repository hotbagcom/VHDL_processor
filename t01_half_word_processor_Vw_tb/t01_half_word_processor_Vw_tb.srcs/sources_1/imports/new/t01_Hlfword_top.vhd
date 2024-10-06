----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2024 16:15:54
-- Design Name: 
-- Module Name: t01_Hlfword_top - Behavioral
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

-- OP    |type |  Mux_regSD  |  Mux_aluRI  |  Cntrl_op_alu(4)  |  Mux_memAM  |  E_W_reg  |  E_W_dm  |  E_R_dm  |  cntrl_branch  |  cntrl_jump
---------|-----|---------------------|
-- add   |  R  |  1  |  0  |  0000  |  0  |  1  |  0  |  0  |  0  |  0  |  
-- addi  |  I  |  0  |  1  |  0001  |  0  |  1  |  0  |  0  |  0  |  0  | 
-- sub   |  R  |  1  |  0  |  0010  |  0  |  1  |  0  |  0  |  0  |  0  |  
-- subi  |  I  |  0  |  1  |  0011  |  0  |  1  |  0  |  0  |  0  |  0  | 
-------- |-----|
-- beq   |  R  |  1  |  0  |  0100  |  x  |  0  |  0  |  0  |  1  |  0  | 
-- bge   |  R  |  1  |  0  |  0101  |  x  |  0  |  0  |  0  |  1  |  0  | 
-- srli  |  I  |  0  |  1  |  0110  |  0  |  1  |  0  |  0  |  0  |  0  | 
-- slli  |  I  |  0  |  1  |  0111  |  0  |  1  |  0  |  0  |  0  |  0  | 
-------- |-----|
-- xor   |  R  |  1  |  0  |  1000  |  0  |  1  |  0  |  0  |  0  |  0  |  
-- not   |  R  |  1  |  0  |  1001  |  0  |  1  |  0  |  0  |  0  |  0  |  --only r0 important
-- and   |  R  |  1  |  0  |  1010  |  0  |  1  |  0  |  0  |  0  |  0  |  
-- or    |  R  |  1  |  0  |  1011  |  0  |  1  |  0  |  0  |  0  |  0  |  
-------- |-----|
-- Lw    |  R  |  1  |  x  |  1100  |  1  |  0  |  0  |  1  |  0  |  0  |  --only r0 important
-- Sw    |  R  |  1  |  x  |  1101  |  1  |  0  |  1  |  0  |  0  |  0  |  --only r0 important
-- J     |  J  |  x  |  x  |  1110  |  x  |  0  |  0  |  0  |  0  |  1  | 
-- ? JL ( jump and link )



entity t01_Hlfword_top is
Port ( clk_m : in std_logic := '0' ;
       rst_ah_m : in  STD_LOGIC := '0'
    );
end t01_Hlfword_top;

architecture Behavioral of t01_Hlfword_top is
----- COMPONENT -----
component t01_Hlfword_ALU_PCpls is
    Port ( 
    --       byteadd : in std_logic_vector(2 downto 0) := "100"; -- till 8 byte  : however standard incrementation is 2 : 0increment 1 ,7 increment 8;
           current_adress : in std_logic_vector(15 downto 0) := (others => '0');
           pls4byte_adress : out std_logic_vector(15 downto 0) := (others => '0')
           );
end component t01_Hlfword_ALU_PCpls;
component t01_Hlfword_ALU_PCplsIMM is
    Port ( pls4byte_adress : in std_logic_vector(15 downto 0) ;--:= (others => '0');
           immediate_byte : in std_logic_vector(3 downto 0) ;--:= (others => '0');
           nextPLSimmediate_adress_out : out std_logic_vector(15 downto 0) --:= (others => '0')
           );
end component t01_Hlfword_ALU_PCplsIMM;
component t01_Hlfword_PC is
    Port ( clk : in STD_LOGIC := '0';
           rst_ah : in  STD_LOGIC := '0';
           next_adress : in std_logic_vector(15 downto 0) := (others => '0');
           current_adress : out std_logic_vector(15 downto 0) := (others => '0')
           );
end component t01_Hlfword_PC;
component t01_Hlfword_IM is
    Generic (
           Ram_depth : integer := 32;
           Ram_width : integer := 16
    );
    Port ( 
           clk : in STD_LOGIC ;
           rst_ah : in  STD_LOGIC := '0';
           current_adress_IM_in : in std_logic_vector(15 downto 0) := (others => '0');
           op_code_IM_out3 : out std_logic_vector(3 downto 0) := (others => '0');
           reg_s0_addr2_IM_out2 : out std_logic_vector(3 downto 0) := (others => '0');
           reg_s1_dest_addr1_IM_out1 : out std_logic_vector(3 downto 0) := (others => '0');
           reg_dest_imm_addr0_IM_out0 : out std_logic_vector(3 downto 0) := (others => '0')
           );
end component t01_Hlfword_IM;
component t01_Hlfword_Reg is
    Generic(
           Ram_width : integer := 16;
           Ram_depth :integer := 16
    );
    Port ( clk : in STD_LOGIC ;
           rst_ah : in  STD_LOGIC := '0';
           Enable_Writedata_reg_in0 : in STD_LOGIC := '0';
           Source_in0 : in std_logic_vector(3 downto 0) := (others => '0');
           Source_in1 : in std_logic_vector(3 downto 0) := (others => '0');
           Destination_in0 : in std_logic_vector(3 downto 0) := (others => '0');
           Writedata_Reg_in0 : in std_logic_vector(15 downto 0) := (others => '0');
           Reg_out0 : out std_logic_vector(15 downto 0) := (others => '0');
           Reg_out1 : out std_logic_vector(15 downto 0) := (others => '0') 
           );
end component t01_Hlfword_Reg;
component t01_Hlfword_ALU is
    Port ( clk : in  STD_LOGIC ;
           rst_ah : in  STD_LOGIC := '0';
           Alu_cntl_in : in std_logic_vector(3 downto 0) := ( others => '0' );
           Data_aluMain_in0 : in std_logic_vector(15 downto 0) := ( others => '0' );
           Data_aluMain_in1 : in std_logic_vector(15 downto 0) := ( others => '0' );
           Flag_zero_out0 : out STD_LOGIC := '0';
           Flag_overflv_out0 : out STD_LOGIC := '0';
           Data_aluMain_out0 : out std_logic_vector(15 downto 0) := ( others => '0' )
           );
end component t01_Hlfword_ALU;
component t01_Hlfword_DM is
    Generic (
           Ram_depth : integer := 128;
           Ram_width : integer := 16
    );
    Port ( clk : in STD_LOGIC ;
           rst_ah : in  STD_LOGIC := '0';
           Enable_Writedata_dm_in0 : in STD_LOGIC := '0';
           Enable_Readdata_dm_in0 : in STD_LOGIC := '0';
           Adress_dm_in0 : in std_logic_vector(15 downto 0)  := (others => '0');
           Writedata_dm_in0 : in std_logic_vector(15 downto 0)  := (others => '0');
           Readdata_dm_out0 : out std_logic_vector(15 downto 0)  := (others => '0')
           );
end component t01_Hlfword_DM;
--Mux
component t01_Hlfword_MUX_regSD is
    Port ( 
           cntrl_RegAdressContrl_out : in STD_LOGIC ;--:= '0';
           reg_s1_in : in std_logic_vector(3 downto 0) ;--:= (others => '0');
           reg_dest_in : in std_logic_vector(3 downto 0) ;--:= (others => '0');
           reg_dest_out : out std_logic_vector(3 downto 0) --:= (others => '0')
           );
end component t01_Hlfword_MUX_regSD;
component t01_Hlfword_MUX_aluRI is
    Port ( 
           cntrl_AluSourceContrl_out : in STD_LOGIC ;--:= '0' ;
           reg_o1 : in std_logic_vector(15 downto 0) ;--:= (others => '0');
           imm : in std_logic_vector(3 downto 0) ;--:= (others => '0');
           Data_aluMain_in1 : out std_logic_vector(15 downto 0) --:= (others => '0')
           );
end component t01_Hlfword_MUX_aluRI;
component t01_Hlfword_MUX_memAM is
    Port ( 
           cntrl_RegWriteContrl_out : in STD_LOGIC := '0';
           DM_read_in0 : in std_logic_vector(15 downto 0) := (others => '0');
           ALU_data_out0 : in std_logic_vector(15 downto 0) := (others => '0');--main alu
           REG_writedata_out0 : out std_logic_vector(15 downto 0) := (others => '0')
           );
end component t01_Hlfword_MUX_memAM;
component t01_Hlfword_MUX_branch is
    Port (  
           pls4byte_adress : in std_logic_vector(15 downto 0) ;--:= (others => '0') ;
           current_pls_imm_adress : in std_logic_vector(15 downto 0);-- := (others => '0') ;
           branch_flagtriger_in : in STD_LOGIC ;--:= '0' ;
           branch_out0 : out std_logic_vector(15 downto 0) --:= (others => '0')
           );
end component t01_Hlfword_MUX_branch;
component t01_Hlfword_MUX_jump is
    Port ( 
           branch_out0 : in std_logic_vector(15 downto 0) := (others => '0');
           immidiate_jmp_in0 : in std_logic_vector(11 downto 0) := (others => '0');
           cntrl_JumpContrl_out : in STD_LOGIC := '0';
           nextadress_jump_out0 : out std_logic_vector(15 downto 0) := (others => '0')
           );
end component t01_Hlfword_MUX_jump;
--Cntrl 
component t01_Hlfword_cntrl_IM is
    Port ( cntrl_op_code : in std_logic_vector(3 downto 0) := (others => '0') ;
           cntrl_RegAdressContrl_out : out STD_LOGIC := '0';
           cntrl_RegWriteContrl_out : out STD_LOGIC := '0';
           cntrl_JumpContrl_out : out STD_LOGIC := '0';
           Enable_Writedata_reg_in0 : out STD_LOGIC := '0';
           Enable_Writedata_dm_in0 : out STD_LOGIC := '0';
           Enable_Readdata_dm_in0 : out STD_LOGIC := '0'
           );
end component t01_Hlfword_cntrl_IM;
component t01_Hlfword_cntl_alu is
    Port ( cntrl_op_code : in std_logic_vector(3 downto 0) := (others => '0') ;
           cntrlalu_gate_brnch : out STD_LOGIC := '0';
           cntrl_ALUoperation_in : out std_logic_vector(3 downto 0) := (others => '0') ;-- add sub j{add two register} beq bge srli slli xor not or and :11 op
           cntrl_AluSourceContrl_out : out STD_LOGIC := '0'
           );
end component t01_Hlfword_cntl_alu;
--Gate 
component t01_Hlfword_GATE_3_4to1_12_wire is
    Port ( WIREin_2 : in std_logic_vector(3 downto 0) := (others => '0');
           WIREin_1 : in std_logic_vector(3 downto 0) := (others => '0');
           WIREin_0 : in std_logic_vector(3 downto 0) := (others => '0');
           WIREout_0 : out std_logic_vector(11 downto 0) := (others => '0')
           );
end component t01_Hlfword_GATE_3_4to1_12_wire;
component t01_Hlfword_GATE_preBranch is
    Port ( cntrlalu_gate_brnch : in STD_LOGIC :='0';
           Flag_zero_out0 : in STD_LOGIC :='0';
           Flag_overflv_out0 : in STD_LOGIC :='0';
           branch_flagtriger_in : out STD_LOGIC :='0'
           );
end component t01_Hlfword_GATE_preBranch;




----- Signal -----
signal S_pls4byte_adress: std_logic_vector(15 downto 0) := (others => '0');
--signal S_immediate_byte : std_logic_vector(3 downto 0) := (others => '0');
signal S_nextPLSimmediate_adress_out : std_logic_vector(15 downto 0) := (others => '0');
signal S_current_adress :  std_logic_vector(15 downto 0):= (others => '0') ;
signal S_next_adress :  std_logic_vector(15 downto 0) ;


signal S_reg_s0_addr2_IM_out2 :     std_logic_vector(3 downto 0) ;
signal S_reg_s1_dest_addr1_IM_out1 : std_logic_vector(3 downto 0) ;
signal S_reg_dest_imm_addr0_IM_out0 : std_logic_vector(3 downto 0) ;


signal S_Reg_in0 : std_logic_vector(3 downto 0) := (others => '0');
signal S_Reg_in1 : std_logic_vector(3 downto 0) := (others => '0');
signal S_Writedata_Reg_in0 : std_logic_vector(15 downto 0) := (others => '0');
signal S_dst_in0 : std_logic_vector(3 downto 0) := (others => '0');
signal S_Reg_out0 : std_logic_vector(15 downto 0) := (others => '0');
signal S_Reg_out1 : std_logic_vector(15 downto 0) := (others => '0');
--signal S_imm : std_logic_vector(3 downto 0) := (others => '0');

signal S_Data_aluMain_in1 : std_logic_vector(15 downto 0) := (others => '0');
signal S_Data_aluMain_out0 : std_logic_vector(15 downto 0) := (others => '0');
--signal S_Writedata_dm_in0 : std_logic_vector(15 downto 0)  := (others => '0');
signal S_Readdata_dm_out0 : std_logic_vector(15 downto 0)  := (others => '0');
signal S_branch_out0 : std_logic_vector(15 downto 0)  := (others => '0');
signal S_immidiate_jmp_in0 : std_logic_vector(11 downto 0)  := (others => '0');

signal S_cntrl_op_code : std_logic_vector(3 downto 0) := (others => '0');
signal S_cntrl_RegAdressContrl_out  : STD_LOGIC :='0';
signal S_cntrl_RegWriteContrl_out : STD_LOGIC :='0';
signal S_cntrl_JumpContrl_out : STD_LOGIC :='0';
signal S_Enable_Writedata_reg_in0 : STD_LOGIC :='1';
signal S_Enable_Writedata_dm_in0 : STD_LOGIC :='0';
signal S_Enable_Readdata_dm_in0 : STD_LOGIC :='0';
signal S_cntrlalu_gate_brnch : STD_LOGIC :='0';
signal S_cntrl_ALUoperation_in : std_logic_vector(3 downto 0) := ( others => '0' );  -- add sub j{add two register} beq bge srli slli xor not or and :11 op
signal S_cntrl_AluSourceContrl_out : STD_LOGIC :='0';

signal S_Flag_zero_out0 : STD_LOGIC :='0';
signal S_branch_flagtriger_in : STD_LOGIC :='0';



begin
----- PORT MAP -----
ALU_PCpls : t01_Hlfword_ALU_PCpls 
    port map( 
--byteadd <= "100" , -- till 8 byte  : however standard incrementation is 2 : 0increment 1 ,7 increment 8;
    current_adress => S_current_adress ,-- in std_logic_vector(15 downto 0) := (others => '0');
    pls4byte_adress => S_next_adress--S_pls4byte_adress -- 
    );
ALU_PCplsIMM : t01_Hlfword_ALU_PCplsIMM 
    port map( 
    pls4byte_adress =>S_pls4byte_adress ,
    immediate_byte => S_reg_dest_imm_addr0_IM_out0, 
    nextPLSimmediate_adress_out => S_nextPLSimmediate_adress_out 
    );
PC : t01_Hlfword_PC
    port map( 
    clk => clk_m ,
    rst_ah => rst_ah_m,
    next_adress => S_next_adress,
    current_adress => S_current_adress
    );
IM : t01_Hlfword_IM
    port map(
    clk => clk_m ,
    rst_ah => rst_ah_m ,    
    current_adress_IM_in => S_current_adress ,
    op_code_IM_out3 => S_cntrl_op_code ,
    reg_s0_addr2_IM_out2 => S_Reg_in0 ,
    reg_s1_dest_addr1_IM_out1 => S_Reg_in1 ,
    reg_dest_imm_addr0_IM_out0 => S_reg_dest_imm_addr0_IM_out0 
    );
Reg : t01_Hlfword_Reg
    port map(
    clk => clk_m ,
    rst_ah => rst_ah_m ,
    Enable_Writedata_reg_in0 => S_Enable_Writedata_reg_in0,
    Source_in0 => S_Reg_in0,
    Source_in1 => S_Reg_in1,
    Destination_in0 => S_dst_in0,
    Writedata_Reg_in0 => S_Writedata_Reg_in0,
    Reg_out0 => S_Reg_out0,
    Reg_out1 => S_Reg_out1
    );
ALU : t01_Hlfword_ALU
    port map(
    clk => clk_m ,
    rst_ah => rst_ah_m ,
    Alu_cntl_in => S_cntrl_op_code ,        --S_cntrl_ALUoperation_in,
    Data_aluMain_in0 => S_Reg_out0 ,
    Data_aluMain_in1 => S_Data_aluMain_in1,
    Flag_zero_out0 => S_Flag_zero_out0,
--Flag_overflv_out0 => ,
    Data_aluMain_out0 => S_Data_aluMain_out0
    );
DM : t01_Hlfword_DM
    port map(
    clk => clk_m ,
    rst_ah => rst_ah_m ,
    Enable_Writedata_dm_in0 => S_Enable_Writedata_dm_in0 ,
    Enable_Readdata_dm_in0 => S_Enable_Readdata_dm_in0 ,
    Adress_dm_in0 => S_Data_aluMain_out0 ,
    Writedata_dm_in0 => S_Reg_out1 ,
    Readdata_dm_out0 => S_Readdata_dm_out0 
    );
MUX_regSD : t01_Hlfword_MUX_regSD
    port map(
    cntrl_RegAdressContrl_out => S_cntrl_RegAdressContrl_out ,
    reg_s1_in => S_Reg_in1,
    reg_dest_in => S_reg_dest_imm_addr0_IM_out0 ,
    reg_dest_out => S_dst_in0
    );
MUX_aluRI : t01_Hlfword_MUX_aluRI 
    port map(
    cntrl_AluSourceContrl_out => S_cntrl_AluSourceContrl_out ,
    reg_o1 => S_Reg_out1,
    imm => S_reg_dest_imm_addr0_IM_out0,
    Data_aluMain_in1 => S_Data_aluMain_in1
    );
MUX_memAM : t01_Hlfword_MUX_memAM 
    port map(
    cntrl_RegWriteContrl_out => S_cntrl_RegWriteContrl_out ,
    DM_read_in0 => S_Readdata_dm_out0,
    ALU_data_out0 => S_Data_aluMain_out0 ,
    REG_writedata_out0 => S_Writedata_Reg_in0
    );    
MUX_branch : t01_Hlfword_MUX_branch 
    port map( 
    pls4byte_adress => S_pls4byte_adress ,
    current_pls_imm_adress => S_nextPLSimmediate_adress_out,
    branch_flagtriger_in => S_branch_flagtriger_in,
    branch_out0 => S_branch_out0
    );
MUX_jump : t01_Hlfword_MUX_jump 
    port map(
    branch_out0 => S_branch_out0 ,
    immidiate_jmp_in0 => S_immidiate_jmp_in0 ,
    cntrl_JumpContrl_out => S_cntrl_JumpContrl_out ,
    nextadress_jump_out0 => S_pls4byte_adress 
    );
--Cntrl 
cntrl_IM : t01_Hlfword_cntrl_IM 
    port map(
    cntrl_op_code => S_cntrl_op_code,
    cntrl_RegAdressContrl_out => S_cntrl_RegAdressContrl_out ,
    cntrl_RegWriteContrl_out => S_cntrl_RegWriteContrl_out ,
    cntrl_JumpContrl_out => S_cntrl_JumpContrl_out ,
    Enable_Writedata_reg_in0 => S_Enable_Writedata_reg_in0 ,
    Enable_Writedata_dm_in0 => S_Enable_Writedata_dm_in0 ,
    Enable_Readdata_dm_in0 => S_Enable_Readdata_dm_in0 
    );
cntl_alu : t01_Hlfword_cntl_alu 
    port map(
    cntrl_op_code => S_cntrl_op_code ,
    cntrlalu_gate_brnch => S_cntrlalu_gate_brnch ,
    cntrl_ALUoperation_in => S_cntrl_ALUoperation_in ,  -- add sub j{add two register} beq bge srli slli xor not or and :11 op
    cntrl_AluSourceContrl_out => S_cntrl_AluSourceContrl_out
    );
--Gate 
GATE_3_4to1_12_wire : t01_Hlfword_GATE_3_4to1_12_wire 
    port map(
    WIREin_2 => S_Reg_in0,
    WIREin_1 => S_Reg_in1,
    WIREin_0 => S_reg_dest_imm_addr0_IM_out0,
    WIREout_0 => S_immidiate_jmp_in0
    );
GATE_preBranch : t01_Hlfword_GATE_preBranch 
    port map(
    cntrlalu_gate_brnch => S_cntrlalu_gate_brnch,
    Flag_zero_out0 => S_Flag_zero_out0 ,
--Flag_overflv_out0 => ,
    branch_flagtriger_in => S_branch_flagtriger_in
    );
           
           
end Behavioral;
