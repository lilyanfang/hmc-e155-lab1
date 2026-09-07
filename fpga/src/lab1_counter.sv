//   Written by: Lily Anfang
//   Email: lanfang@g.hmc.edu
//   Date: 2026/09/06
//   Description: this is the counter module that blinks and LED
//   on and off at a set rate. It assumes that the driving clk
//   has a frequency of 6MHz. 

module lab1_counter #(parameter WIDTH=31, parameter MAX=2500000, parameter HALFMAX=1250000)(input  logic clk, enable, reset,
				    output logic led2);
	logic [WIDTH:0] counter;
	always_ff @(posedge clk, negedge reset) begin //negedge of reset and ~reset added after testbench to account for button being high when not pushed
		if(~reset) begin counter<=0; led2<=0; end //if reset is on set the counter to 0 and turn the LED off
		else if(enable) begin
			counter <= counter+1; //if enable is on add 1 to the counter at every clock tick
			if(counter==MAX) begin counter<=0; led2<=0; end //if the counter is above the max set it back to zero & turn the LED off
			else if(counter>=HALFMAX) led2<=1; //if the counter is above half the max turn the LED on
			else led2<=0; //if the counter is below half the max keep the LED off
		end
	end
endmodule