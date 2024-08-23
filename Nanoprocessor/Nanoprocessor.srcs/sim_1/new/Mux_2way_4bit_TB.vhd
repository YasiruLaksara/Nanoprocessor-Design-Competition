----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2023 04:29:19 PM
-- Design Name: 
-- Module Name: Mux_2way_4bit_TB - Behavioral
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

entity Mux_2way_4bit_TB is
--  Port ( );
end Mux_2way_4bit_TB;

architecture Behavioral of Mux_2way_4bit_TB is
component Mux_2way_4bit
    port(   A : in STD_LOGIC_VECTOR (3 downto 0);
            B : in STD_LOGIC_VECTOR (3 downto 0);
            O : out STD_LOGIC_VECTOR (3 downto 0);
            S : in STD_LOGIC);
end component;
signal A,B : std_logic_vector(3 downto 0);
signal O : std_logic_vector(3 downto 0);
signal S : std_logic;
begin
UUT: Mux_2way_4bit
port map(
            A(3 downto 0)=>A(3 downto 0),
            B(3 downto 0)=>B(3 downto 0),
            O(3 downto 0)=> O(3 downto 0),
            S=> S);
process
begin

A<="0011";
B<="1000";
S<='0';

WAIT FOR 100ns;
S<='1';
WAIT;
            


end process;
end Behavioral;
