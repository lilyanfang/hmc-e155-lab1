//   Written by: Lily Anfang
//   Email: lanfang@g.hmc.edu
//   Date: 2026/09/06
//   Description: this is the testbench to test the lab 1 top module
`timescale 10 ns/1 ns

module lab1_toptestbench();
	logic clk, reset;
	logic [3:0] s;
	logic [2:0] led;
	logic [6:0] seg;
	
	lab1_lka dut(.s(s), .reset(reset), .led(led), .seg(seg));
	
	always begin
		clk=1; #5;
		clk=0; #5;
	end
	
	initial begin
		s = 4'b0000; 
		reset=1; #22;
		reset=0;
		
		// test 0
        s = 4'b0000;                      // setup inputs
        #10;                             // wait required time
        assert (seg == ~(7'b1111110))       // check outputs
            $display("PASSED! The 7-seg controller behaves as desired at time: %0t.", $time);
        else 
            $error("FAILED! The 7-seg controller behaves incorrectly at time: %0t.", $time); 
		assert ((led[0]==0)&(led[1]==0))       // check outputs
            $display("PASSED! The leds behave as desired at time: %0t.", $time);
        else 
            $error("FAILED! The leds behave incorrectly at time: %0t.", $time);
		
		// test 5
        s = 4'b0101;                      // setup inputs
        #10;                             // wait required time
        assert (seg == ~(7'b1011011))       // check outputs
            $display("PASSED! The 7-seg controller behaves as desired at time: %0t.", $time);
        else 
            $error("FAILED! The 7-seg controller behaves incorrectly at time: %0t.", $time);
		assert ((led[0]==1)&(led[1]==0))       // check outputs
            $display("PASSED! The leds behave as desired at time: %0t.", $time);
        else 
            $error("FAILED! The leds behave incorrectly at time: %0t.", $time);
		
		// test 10
        s = 4'b1010;                      // setup inputs
        #10;                             // wait required time
        assert (seg == ~(7'b1110111))       // check outputs
            $display("PASSED! The 7-seg controller behaves as desired at time: %0t.", $time);
        else 
            $error("FAILED! The 7-seg controller behaves incorrectly at time: %0t.", $time); 
		assert ((led[0]==1)&(led[1]==0))       // check outputs
            $display("PASSED! The leds behave as desired at time: %0t.", $time);
        else 
            $error("FAILED! The leds behave incorrectly at time: %0t.", $time);
		
		// test 15
        s = 4'b1111;                      // setup inputs
        #10;                             // wait required time
        assert (seg == ~(7'b1000111))       // check outputs
            $display("PASSED! The 7-seg controller behaves as desired at time: %0t.", $time);
        else 
            $error("FAILED! The 7-seg controller behaves incorrectly at time: %0t.", $time); 
		assert ((led[0]==0)&(led[1]==1))       // check outputs
            $display("PASSED! The leds behave as desired at time: %0t.", $time);
        else 
            $error("FAILED! The leds behave incorrectly at time: %0t.", $time);
		#30 $stop;
	end
endmodule
	