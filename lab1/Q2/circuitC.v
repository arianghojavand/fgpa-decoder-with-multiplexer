module circuitC (a,b,x);
	input[3:0] a;
	input b;
	output[3:0] x;
	
	assign x[3] = a[3] &b;
	assign x[2] = a[2] &b;
	assign x[1] = a[1] &~b;
	assign x[0] = a[0] &~b;
endmodule