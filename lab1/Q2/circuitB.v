module circuitB (a,b,x,y,z);
	input[3:0] a, b;
	output[3:0] x,y;
	output z;

	assign x = a ^ ~b;
	assign y = ~a ^ b;
	assign z = a[3] | b[3];
endmodule