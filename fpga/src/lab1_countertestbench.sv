//   Written by: Lily Anfang
//   Email: lanfang@g.hmc.edu
//   Date: 2026/09/06
//   Description: this is the testbench to test the lab 1 counter module
module lab1_countertestbench();
	
	logic clk, enable, reset, led2;

	
	lab1_counter #(.WIDTH(4), .MAX(8), .HALFMAX(4)) dut(.clk(clk), .enable(enable), .reset(reset), .led2(led2));
	always begin
		clk=1; #5;
		clk=0; #5;
	end
	
	initial begin
		
		//test reset
		enable=0;
		reset=0; #82; //check that counter and LED stay 0 when reset on
		reset=1;
		
		//test enable starts counter
		#80;
		enable=1;
		#130; //allow counter to wrap back to zero
		
		//test reset sets counter back to zero
		reset=0;
		#40;
		
		
	end
endmodule
		
		