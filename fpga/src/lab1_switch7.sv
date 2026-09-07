//   Written by: Lily Anfang
//   Email: lanfang@g.hmc.edu
//   Date: 2026/09/06
//   Description: this is the module for converting 4 bit binary numbers 
//   (input by the system) into their hex equivilents on a 7-segment
//   display. 

module lab1_switch7(input  logic [3:0] s,
					output logic [6:0] seg);
	//label segments with their associated letter
	logic A, B, C, D, E, F, G;
	always_comb //depending on the switch values, turn the necessary LEDs off
		case (s)
			0:  	 begin A=1; B=1; C=1; D=1; E=1; F=1; G=0; end
			1:  	 begin A=0; B=1; C=1; D=0; E=0; F=0; G=0; end
			2:  	 begin A=1; B=1; C=0; D=1; E=1; F=0; G=1; end
			3:  	 begin A=1; B=1; C=1; D=1; E=0; F=0; G=1; end
			4:  	 begin A=0; B=1; C=1; D=0; E=0; F=1; G=1; end
			5:  	 begin A=1; B=0; C=1; D=1; E=0; F=1; G=1; end
			6:  	 begin A=1; B=0; C=1; D=1; E=1; F=1; G=1; end
			7:  	 begin A=1; B=1; C=1; D=0; E=0; F=0; G=0; end
			9:  	 begin A=1; B=1; C=1; D=0; E=0; F=1; G=1; end
			10: 	 begin A=1; B=1; C=1; D=0; E=1; F=1; G=1; end
			11: 	 begin A=0; B=0; C=1; D=1; E=1; F=1; G=1; end
			12: 	 begin A=1; B=0; C=0; D=1; E=1; F=1; G=0; end
			13: 	 begin A=0; B=1; C=1; D=1; E=1; F=0; G=1; end
			14: 	 begin A=1; B=0; C=0; D=1; E=1; F=1; G=1; end
			15: 	 begin A=1; B=0; C=0; D=0; E=1; F=1; G=1; end
			default: begin A=1; B=1; C=1; D=1; E=1; F=1; G=1; end //also the setting for 8
		endcase
	//assign the letter values to their associated segment
	assign seg[6] = ~A;
	assign seg[5] = ~B;
	assign seg[4] = ~C;
	assign seg[3] = ~D;
	assign seg[2] = ~E;
	assign seg[1] = ~F;
	assign seg[0] = ~G;
endmodule 
