module circuitB (z, d1);
    input z;
	output [6:0] d1; 

	assign d1 = (z == 1'b1) ? 7'b1111001: 7'b1000000;
	
endmodule