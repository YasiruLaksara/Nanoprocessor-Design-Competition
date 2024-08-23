----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2023 04:24:42 PM
-- Design Name: 
-- Module Name: Reg_TB - Behavioral
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

entity Reg_TB is
--  Port ( );
end Reg_TB;

architecture Behavioral of Reg_TB is

component Reg
Port (     D : in STD_LOGIC_VECTOR (3 downto 0);
           En : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal Clk : STD_LOGIC;
signal En : STD_LOGIC;
signal Res : STD_LOGIC;
signal D : STD_LOGIC_VECTOR (3 downto 0);
signal Q : STD_LOGIC_VECTOR (3 downto 0);

constant clock_period : time := 20ns;
begin

UUT: Reg
port map (
    Clk => Clk,
    En => En, 
    Res => Res,
    D => D, 
    Q => Q
    );

clock_process: process
  begin
    Clk <= '0';
  wait for clock_period/2;
    Clk <= '1';
  wait for clock_period/2;
end process;

process
begin
D <= "0011";
En <= '1';
Res <= '0';
wait for 100ns;


Res <= '1';
wait for 100 ns;

En <= '0';
Res <= '0';
D <= "0001";
wait for 200 ns;

end process;

end Behavioral;
