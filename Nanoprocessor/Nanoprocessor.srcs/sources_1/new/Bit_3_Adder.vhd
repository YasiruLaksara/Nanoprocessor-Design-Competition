----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2023 04:07:19 PM
-- Design Name: 
-- Module Name: Bit_3_Adder - Behavioral
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

entity Bit_3_Adder is
    Port (  I_In : in STD_LOGIC_VECTOR(2 downto 0); 
            I_Out : out STD_LOGIC_VECTOR(2 downto 0)); 
end Bit_3_Adder;

architecture Behavioral of Bit_3_Adder is
-- import RCA_4

    component FA  
        port (  
        A: in std_logic;  
        B: in std_logic:='0';
        C_in: in std_logic;  
        S: out std_logic;
        C_out: out std_logic)  ;
    end component;


    SIGNAL FA0_C, FA1_C : std_logic; 


begin
     FA_0 : FA
        port map (  
            A => I_In(0),  
            C_in =>'1',--set ground in the nano processor
            S => I_Out(0),  
            C_Out => FA0_C); 

    FA_1 : FA
        port map (  
            A => I_In(1),  
            C_in => FA0_C,   
            S => I_Out(1),  
            C_Out => FA1_C);

    FA_2 : FA
        port map ( 
            A => I_In(2), 
            C_in => FA1_C,   
            S => I_Out(2));    
        
    
end Behavioral;
