----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2023 04:21:23 PM
-- Design Name: 
-- Module Name: tri_state_buffer_3bit_TB - Behavioral
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

entity tri_state_buffer_3bit_TB is
--  Port ( );
end tri_state_buffer_3bit_TB;

architecture Behavioral of tri_state_buffer_3bit_TB is
component tri_state_buffer_3bit
port(   IN3 : in STD_LOGIC_VECTOR (2 downto 0);
        OUT3 : out STD_LOGIC_VECTOR (2 downto 0);
        EN : in STD_LOGIC);
end component;
signal IN3 : std_logic_vector(2 downto 0);
signal OUT3 : std_logic_vector(2 downto 0);
signal EN : std_logic;
begin
UUT: tri_state_buffer_3bit
port map( IN3 => IN3,
            OUT3=> OUT3,
            EN=>EN);
process
begin

IN3<= "110";
EN<='0';

wait for 100ns;
EN<='1';
wait;

end process;
end Behavioral;
