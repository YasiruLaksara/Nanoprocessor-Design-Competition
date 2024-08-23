----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2023 04:32:45 PM
-- Design Name: 
-- Module Name: Add_Sub_TB - Behavioral
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

entity Add_Sub_TB is
--  Port ( );
end Add_Sub_TB;

architecture Behavioral of Add_Sub_TB is
    -- Importing the Add_Sub_Unit component
    component Add_Sub_Unit
        Port ( 
            A : in STD_LOGIC_VECTOR (3 downto 0);
            B : in STD_LOGIC_VECTOR (3 downto 0);
            ctrl : in STD_LOGIC;
            S : out STD_LOGIC_VECTOR (3 downto 0);
            Overflow : out STD_LOGIC;
            Zero : out STD_LOGIC
        );
    end component;

    -- Signal declarations
    signal A, B : std_logic_vector(3 downto 0);
    signal ctrl : std_logic;
    signal S : std_logic_vector(3 downto 0);
    signal Overflow, Zero : std_logic;
begin

    -- Port map for the Add_Sub_Unit component
    UUT: Add_Sub_Unit
        Port map ( 
            A => A,
            B => B,
            ctrl => ctrl,
            S => S,
            Overflow => Overflow,
            Zero => Zero
        );

    process
    begin
        -- Testbench stimulus
        
        -- Test case 1
        A <= "0011";  --3
        B <= "0011";  --3
        ctrl <= '0';
        wait for 100ns;
        
        -- Test case 2
        A <= "0011";  --3
        B <= "0011";  --3
        ctrl <= '1';
        wait for 100ns;
        
        -- Test case 3
        A <= "0110"; --6
        B <= "0101"; --5
        ctrl <= '0';
        wait for 100ns;
       
        -- Test case 4
        A <= "0101";  --5
        B <= "1001";  --9
        ctrl <= '1';
        wait for 100ns;
       
        -- Test case 5
        A <= "1011"; --11 
        B <= "1001"; --9 
        ctrl <= '1';
       
        wait; 
    end process;
    
end Behavioral;
