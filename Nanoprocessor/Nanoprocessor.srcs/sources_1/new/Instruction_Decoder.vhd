----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2023 04:01:47 PM
-- Design Name: 
-- Module Name: Instruction_Decoder - Behavioral
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

entity Instruction_Decoder is

    Port ( 
        INSTUC : in STD_LOGIC_VECTOR (11 downto 0);     --Get instruction from programme rom
        J_CHK : in STD_LOGIC;                           --Jump check

        REG_EN : out STD_LOGIC_VECTOR (2 downto 0);     --Register enable in register bank

        REG_SEL_A : out STD_LOGIC_VECTOR (2 downto 0);  --Register selection for multiplexer A
        REG_SEL_B : out STD_LOGIC_VECTOR (2 downto 0);  --Register selection for multiplexer B

        LOAD_SEL : out STD_LOGIC;                       --Load selction for multiplexer 0
        IM_VAL : out STD_LOGIC_VECTOR (3 downto 0);     --Immediate value for multiplexer 0

        CTRL : out STD_LOGIC;                           --Add Subract selection for Add_Sub_Unit

        J_FLAG : out STD_LOGIC;                         --Jump Flag for multiplexer 1
        J_ADDR : out STD_LOGIC_VECTOR (2 downto 0)      --Jump address for multiplexer 1
        
    );

end Instruction_Decoder;

architecture Behavioral of Instruction_Decoder is
component Decoder_2_to_4 
   Port ( 
        I : in STD_LOGIC_VECTOR (1 downto 0);
        EN : in std_logic;                
        Y : out STD_LOGIC_VECTOR (3 downto 0)
    );
end component;
  
signal ADD,NEG,MOV,JZR :std_logic;
begin
    --decode opcode into four instructions
    OPCODE_Decoder: Decoder_2_to_4 
        Port map ( 
            I =>INSTUC(11 downto 10),
            EN   =>'1',                
            Y(0)=>ADD,
            Y(1)=>NEG,
            Y(2)=>MOV,
            Y(3)=>JZR
        );

    CTRL <= NEG; --select add or sub 

    --Select the load comes form instruction decoder or add sub unit
    LOAD_SEL <= MOV;

    IM_VAL <= INSTUC(3 downto 0) when (MOV ='1') else "0000" ;--1 0 R R R 0 0 0 [d d d d]

    REG_EN  <=INSTUC(9 downto 7) when (JZR ='0') ELSE "000";--Reg enable  1 0 [R R R] 0 0 0 d d d d

    --commad for the  muxA and muxB to register selection
    REG_SEL_A <=INSTUC(9 downto 7) when (NEG ='0') else "000";
    REG_SEL_B <=INSTUC(6 downto 4) when (NEG ='0') else INSTUC(9 downto 7);

    --Register check for jump-----------------------------
    J_FLAG <= JZR and J_CHK ; --check and set flag true

    J_ADDR<=INSTUC(2 downto 0);--set jump address --
    
end Behavioral;
