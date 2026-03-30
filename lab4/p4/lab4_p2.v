module lab4_p2 (v, d1, d0);
    input [3:0] v; 
	output [6:0] d1, d0; 
	

	wire [3:0] A, MUX;
	wire Z;
	
	circuitA inst_circA(.v(v),.A(A));
	comparator inst_comp(.v(v),.z(Z));
	circuitB inst_circB(.z(Z),.d1(d1));
	four_bit_2to1mux inst_mux(.sel(Z),.a(v),.b(A),.chosen(MUX));
	decoder_7seg instantiate_bto7seg(.code(MUX),.decoded_output(d0));
	
endmodule