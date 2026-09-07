//   Written by: Lily Anfang
//   Email: lanfang@g.hmc.edu
//   Date: 2026/09/06
//   Description: this is the testbench to test the switch7 module

module lab1_switch7testbench();
	//set up test signals
	logic [3:0] s;
	logic [6:0] seg;
	logic clk;
	
	//create DUT
	lab1_switch7 dut(.s(s), .seg(seg));
	
	//generate clock for testing
	always begin
			clk=1; #5;
			clk=0; #5;
	end
	
	//apply stimuli and check outputs
	initial begin
		
		#22;
		
		// test 0
        s = 4'b0000;                      // setup inputs
        #10;                             // wait required time
        assert (seg == ~(7'b1111110))       // check outputs
            $display("PASSED! The 7-seg controller behaves as desired at time: %0t.", $time);
        else 
            $error("FAILED! The 7-seg controller behaves incorrectly at time: %0t.", $time); 
		#5;

		// test 1
        s = 4'b0001;                      // setup inputs
        #10;                             // wait required time
        assert (seg == ~(7'b0110000))       // check outputs
            $display("PASSED! The 7-seg controller behaves as desired at time: %0t.", $time);
        else 
            $error("FAILED! The 7-seg controller behaves incorrectly at time: %0t.", $time); 
		#5;
		
		// test 2
        s = 4'b0010;                      // setup inputs
        #10;                             // wait required time
        assert (seg == ~(7'b1101101))       // check outputs
            $display("PASSED! The 7-seg controller behaves as desired at time: %0t.", $time);
        else 
            $error("FAILED! The 7-seg controller behaves incorrectly at time: %0t.", $time); 
		#5;
		
		// test 3
        s = 4'b0011;                      // setup inputs
        #10;                             // wait required time
        assert (seg == ~(7'b1111001))       // check outputs
            $display("PASSED! The 7-seg controller behaves as desired at time: %0t.", $time);
        else 
            $error("FAILED! The 7-seg controller behaves incorrectly at time: %0t.", $time); 
		#5;
		
		// test 4
        s = 4'b0100;                      // setup inputs
        #10;                             // wait required time
        assert (seg == ~(7'b0110011))       // check outputs
            $display("PASSED! The 7-seg controller behaves as desired at time: %0t.", $time);
        else 
            $error("FAILED! The 7-seg controller behaves incorrectly at time: %0t.", $time); 
		#5;
		
		// test 5
        s = 4'b0101;                      // setup inputs
        #10;                             // wait required time
        assert (seg == ~(7'b1011011))       // check outputs
            $display("PASSED! The 7-seg controller behaves as desired at time: %0t.", $time);
        else 
            $error("FAILED! The 7-seg controller behaves incorrectly at time: %0t.", $time); 
		#5;
		
		// test 6
        s = 4'b0110;                      // setup inputs
        #10;                             // wait required time
        assert (seg == ~(7'b1011111))       // check outputs
            $display("PASSED! The 7-seg controller behaves as desired at time: %0t.", $time);
        else 
            $error("FAILED! The 7-seg controller behaves incorrectly at time: %0t.", $time); 
		#5;
		
		// test 7
        s = 4'b0111;                      // setup inputs
        #10;                             // wait required time
        assert (seg == ~(7'b1110000))       // check outputs
            $display("PASSED! The 7-seg controller behaves as desired at time: %0t.", $time);
        else 
            $error("FAILED! The 7-seg controller behaves incorrectly at time: %0t.", $time); 
		#5;
		
		// test 8
        s = 4'b1000;                      // setup inputs
        #10;                             // wait required time
        assert (seg == ~(7'b1111111))       // check outputs
            $display("PASSED! The 7-seg controller behaves as desired at time: %0t.", $time);
        else 
            $error("FAILED! The 7-seg controller behaves incorrectly at time: %0t.", $time); 
		#5;
		
		// test 9
        s = 4'b1001;                      // setup inputs
        #10;                             // wait required time
        assert (seg == ~(7'b1110011))       // check outputs
            $display("PASSED! The 7-seg controller behaves as desired at time: %0t.", $time);
        else 
            $error("FAILED! The 7-seg controller behaves incorrectly at time: %0t.", $time); 
		#5;
		
		// test 10
        s = 4'b1010;                      // setup inputs
        #10;                             // wait required time
        assert (seg == ~(7'b1110111))       // check outputs
            $display("PASSED! The 7-seg controller behaves as desired at time: %0t.", $time);
        else 
            $error("FAILED! The 7-seg controller behaves incorrectly at time: %0t.", $time); 
		#5;
		
		// test 11
        s = 4'b1011;                      // setup inputs
        #10;                             // wait required time
        assert (seg == ~(7'b0011111))       // check outputs
            $display("PASSED! The 7-seg controller behaves as desired at time: %0t.", $time);
        else 
            $error("FAILED! The 7-seg controller behaves incorrectly at time: %0t.", $time); 
		#5;
		
		// test 12
        s = 4'b1100;                      // setup inputs
        #10;                             // wait required time
        assert (seg == ~(7'b1001110))       // check outputs
            $display("PASSED! The 7-seg controller behaves as desired at time: %0t.", $time);
        else 
            $error("FAILED! The 7-seg controller behaves incorrectly at time: %0t.", $time); 
		#5;
		
		// test 13
        s = 4'b1101;                      // setup inputs
        #10;                             // wait required time
        assert (seg == ~(7'b0111101))       // check outputs
            $display("PASSED! The 7-seg controller behaves as desired at time: %0t.", $time);
        else 
            $error("FAILED! The 7-seg controller behaves incorrectly at time: %0t.", $time); 
		#5;
		
		// test 14
        s = 4'b1110;                      // setup inputs
        #10;                             // wait required time
        assert (seg == ~(7'b1001111))       // check outputs
            $display("PASSED! The 7-seg controller behaves as desired at time: %0t.", $time);
        else 
            $error("FAILED! The 7-seg controller behaves incorrectly at time: %0t.", $time); 
		#5;
		
		// test 15
        s = 4'b1111;                      // setup inputs
        #10;                             // wait required time
        assert (seg == ~(7'b1000111))       // check outputs
            $display("PASSED! The 7-seg controller behaves as desired at time: %0t.", $time);
        else 
            $error("FAILED! The 7-seg controller behaves incorrectly at time: %0t.", $time); 


    #100 $stop;
	end
endmodule
	