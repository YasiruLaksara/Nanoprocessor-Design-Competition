library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Slow_Clk is
    Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
end Slow_Clk;

architecture Behavioral of Slow_Clk is

-- Define two signals used to generate the output clock signal
SIGNAL count : integer := 1;  -- Keeps track of the number of rising edges on Clk_in
SIGNAL clk_status : std_logic := '0';  -- The current state of the output clock signal

begin
process(Clk_in)

begin

-- Check if there is a rising edge on Clk_in
if(rising_edge(Clk_in)) then
    count <= count+1;
    
-- If count reaches a value of 5, it's time to toggle the output clock signal    
if(count = 30000000) then
    clk_status <= not clk_status;
    Clk_out <= clk_status;
    count <= 1;
end if;
end if;

end process;    

end Behavioral;
