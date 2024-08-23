----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2023 04:04:20 PM
-- Design Name: 
-- Module Name: PROGRM_ROM - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PROGRM_ROM is
    Port ( SEL : in STD_LOGIC_VECTOR (2 downto 0);
           INSTUC : out STD_LOGIC_VECTOR (11 downto 0));
end PROGRM_ROM;

architecture Behavioral of PROGRM_ROM is

--heigth of rom(8) width of rom(12) (instruction width)
type rom_type is array (0 to 7) of std_logic_vector(11 downto 0);
    signal PR_ROM:rom_type:=(
    "101110000000", -- mov R7,0
    "100010000001", -- mov R1,1
    "100100000010", -- mov R2,2
    "100110000011", -- mov R3,3
    "001110010000", -- add R7,R1
    "001110100000", -- add R7,R2
    "001110110000", -- add R7,R3
    "110000010111"  -- jzr R0,7
        );

begin

    --select instruction for given value
    --use numeric library to convert binary to integer value
    INSTUC <= PR_ROM(to_integer(unsigned(SEL))); 

end Behavioral;
