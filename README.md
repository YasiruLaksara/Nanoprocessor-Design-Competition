# Nanoprocessor-Design-Competition
In this project, we designed a 4-bit processor capable of executing 4 instructions.

During the second semester of the course In21-S2-CS1050 - Computer Organization and Digital Design, we developed a nanoprocessor.

This project involves integrating the Slow_Clk and Nanoprocessor components to create a system. The primary objective is to demonstrate functionality by sequentially displaying the numbers 0, 1, 3, and 6 on a seven-segment display. To achieve this, we utilize the LUT_7seg module, which serves as a ROM (Read-Only Memory) to store specific values corresponding to the segments of the seven-segment display.

# Components
The system is composed of three primary elements:

1)Slow_Clk: Slows down the clock speed.

2)Nanoprocessor: Executes assembly instructions and manages flags.

3)LUT_7seg: ROM module storing values for the seven-segment display.

# Hardware Configuration
1)Reset Button (U18): Middle button on the board used for system reset.

2)LEDs (V19, U19, E19, U16): Display the value of Reg_7_LED, with V19 representing the Most Significant Digit (MSD).

3)Seven-Segment Display Ports (W7, W6, U8, V8, U5, V5, U7): Represent the seven bits of the display.

4)Seven-Segment Display Anode (U2, U4, V4, W4): Anode pins for the seven-segment display.

5)Flag Indicators (P1, L1): P1 for overflow and L1 for zero flags of the Nanoprocessor.

# Assembly Program
MOVI R7,0 ; R7 <- 0

MOVI R1,1 ; R1 <- 1

MOVI R2,2 ; R2 <- 2

MOVI R3,3 ; R3 <- 3

ADD R7,R1 ; R7 <- R7+R1

ADD R7,R2 ; R7 <- R7+R2

ADD R7,R3 ; R7 <- R7+R3

JZR R0,7 ; if R0 = 0 jump to line 7

# Machine Code
"101110000000" -- mov R7,0

"100010000001" -- mov R1,1

"100100000010" -- mov R2,2

"100110000011" -- mov R3,3

"001110010000" -- add R7,R1

"001110100000" -- add R7,R2

"001110110000" -- add R7,R3

"110000010111" -- jzr R0,7

# How to Use
Load the bitstream onto the board.

Press the reset button (U18) to initiate the sequence of displaying numbers.

