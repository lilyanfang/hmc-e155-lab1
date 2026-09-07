//   Written by: Lily Anfang
//   Email: lanfang@g.hmc.edu
//   Date: 2026/09/06
//   Description: this is the top level module for lab 1. This module
//   using combinational logic to control LEDs with switches, sets an
//   LED to blink at 2Hz, and uses switches to control a 7-segment 
//   display. 


module lab1_lka(input  logic [3:0] s,
				input  logic reset,
				output logic [2:0] led,
				output logic [6:0] seg);
 
	//logic for LED 1 & LED 3
	assign led[0] = s[0]^s[1];
	assign led[1] = s[2]&s[3];

	//setup clock at 6MHz with internal high speed oscillator
	logic clk;
	HSOSC #(.CLKHF_DIV("0b11"))
         hf_osc (.CLKHFPU(1'b1), .CLKHFEN(1'b1), .CLKHF(clk));

	//Counter for LED 2
	logic enable;
	assign enable=1;
	lab1_counter counter(clk, enable, reset, led[2]);

	//Switch to 7-Segment Display
	lab1_switch7 switch7(s, seg);
endmodule