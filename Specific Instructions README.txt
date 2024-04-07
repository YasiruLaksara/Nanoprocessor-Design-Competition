Specific Instructions for the design - 

1. The system, which is a combination of the Slow_Clk and Nanoprocessor components, serves as the main design source for this project.

2. System contains three components Slow_Clk, Nanoprocessor and LUT_7seg

3. File Nanoprocessor contains all the components described in the Lab sheet and Slow_Clk is used to slow down the clock speed and LUT_7seg (ROM module) is used to store the specific values to enable seven segment display.

---------------------------------------------------------------------------------------------------------------------------------

The allocated reset button is U18, which is the middle button on the board.

To display the value of Reg_7_LED we used the LEDs V19, U19, E19, U16.  (V19 is the MSD)

For the seven segment display we used the ports W7, W6, U8, V8, U5, V5, U7. (To represent the seven bits of the display)

For the anode of the seven segment display, U2 ,U4 ,V4 ,W4 pins were used.

To indicate the overflow and zero flags of the nanoprocessor, we utilize the P1 and L1 pins, respectively.
---------------------------------------------------------------------------------------------------------------------------------

Expected Behavior: When the bitstream is loaded onto the board, we expect to see the numbers 0, 1, 3 (2+1), and 6 (1+2+3) displayed sequentially. This process repeats every time the reset button is pressed.


Assembly program  

	MOVI R7,0      ; R7 <- 0
	MOVI R1,1      ; R1 <- 1
	MOVI R2,2      ; R2 <- 2
	MOVI R3,3      ; R3 <- 3
	ADD R7,R1      ; R7 <- R7+R1
	ADD R7,R2      ; R7 <- R7+R2
	ADD R7,R3      ; R7 <- R7+R3
	JZR R0,7       ; if R0 =0 jump to line 7




Instructions in Machine code
	    "101110000000", -- mov R7,0
            "100010000001", -- mov R1,1
            "100100000010", -- mov R2,2
            "100110000011", -- mov R3,3
            "001110010000", -- add R7,R1
            "001110100000", -- add R7,R2
            "001110110000", -- add R7,R3
            "110000010111"  --  jzr R0,7
