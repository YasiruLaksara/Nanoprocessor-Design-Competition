----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2023 04:26:01 PM
-- Design Name: 
-- Module Name: Program_Rom_TB - Behavioral
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

entity Program_Rom_TB is
--  Port ( );
end Program_Rom_TB;

architecture Behavioral of Program_Rom_TB is
component PROGRM_ROM
    Port ( 
           SEL : in STD_LOGIC_VECTOR (2 downto 0);
           INSTUC : out STD_LOGIC_VECTOR (11 downto 0)
    );
end component;

signal SEL:std_logic_vector(2 downto 0);
signal INSTUC:std_logic_vector(11 downto 0);

begin
UUT:PROGRM_ROM
    port map( 
           SEL =>SEL,
           INSTUC =>INSTUC
    );    
    

-- Simulation process to test the behavior of the component
process
    begin
        -- Set SEL to "000"
        SEL<="000";
        wait for 100ns;
        
        -- Set SEL to "101"
        SEL<="101";
        wait for 100ns;
        
        -- Set SEL to "110"
        SEL<="110";
        wait for 100ns;
        
        -- Set SEL to "100"
        SEL<="100";
        wait for 100ns;
        
        -- Set SEL to "010"
        SEL<="010";
        wait for 100ns;
        
        -- Set SEL to "111"
        SEL<="111";
        wait for 100ns;
        
        -- Set SEL to "001"
        SEL<="001";
        wait for 100ns;
           
        wait;     
    end process;

end Behavioral;