----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2023 04:31:58 PM
-- Design Name: 
-- Module Name: Bit_3_Adder_TB - Behavioral
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

entity Bit_3_Adder_TB is
--  Port ( );
end Bit_3_Adder_TB;

architecture Behavioral of Bit_3_Adder_TB is

component Bit_3_Adder
 
    port (
            A : in STD_LOGIC_VECTOR(2 downto 0); --get inputs for A as vector array (first number)
            B : in STD_LOGIC_VECTOR(2 downto 0); --get inputs for B as vector array (seconed number)
            C_in : in STD_LOGIC;                 --initial carry bit for first adding 
            S : out STD_LOGIC_VECTOR(2 downto 0);--sum output 
            C_out : out STD_LOGIC                --carry output
    );
    
end component;

signal A,B:std_logic_vector(2 downto 0);
signal C_in:std_logic;
signal S :std_logic_vector(2 downto 0);
signal C_out:std_logic;

begin

UUT:Bit_3_Adder
    port map(
            A =>A,
            B =>B,
            C_in =>C_in, 
            S =>S,
            C_out =>C_out
    );

process -- 210523 ==    110 011 011 001 011 011
        -- 210329 ==    110 011 010 110 011 001

begin
    C_in <='0';--this is apply at nano processor
    A <= "011";
    B <= "001";
    wait for 100ns;
    
    A <= "011";
    B <= "011";
    wait for 100ns;
    
    A <= "001";
    B <= "110";
    wait for 100ns;
    
    A <= "011";
    B <= "010";
    wait for 100ns;
    
    A <= "110";
    B <= "110";
    wait for 100ns;
   
    
    wait;
end process;
end Behavioral;
