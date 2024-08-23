----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2023 03:46:00 PM
-- Design Name: 
-- Module Name: Add_Sub_Unit - Behavioral
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

entity Add_Sub_Unit is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           ctrl : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC);
end Add_Sub_Unit;

architecture Behavioral of Add_Sub_Unit is

    -- Importing the RCA_4 component
    component RCA_4
        port (
            A: in std_logic_vector(3 downto 0);
            B: in std_logic_vector(3 downto 0);
            C_in: in std_logic;
            S: out std_logic_vector(3 downto 0);
            C_out: out std_logic
        );       
    end component ; 
  
    -- Signals declaration
    signal RCA_C : std_logic;
    signal B_2 : std_logic_vector(3 downto 0);
    signal S_0 : std_logic_vector(3 downto 0);
  
begin
    -- Instantiating the RCA_4 component
    RCA_Unit: RCA_4
        Port map (
           A => A,
           B => B_2,
           C_in => ctrl,
           S => S_0,
           C_out => RCA_C);
    
    -- Creating the adder/subtractor part
    B_2(0) <= ctrl XOR B(0);
    B_2(1) <= ctrl XOR B(1);
    B_2(2) <= ctrl XOR B(2);
    B_2(3) <= ctrl XOR B(3);
    
    -- Result logics
    
    S <= S_0;
    Overflow <= ((A(3) xnor B_2(3)) and (A(3) xor S_0(3)));
    Zero <= NOT(S_0(0) OR S_0(1) OR S_0(2) OR S_0(3));
    
end Behavioral;
