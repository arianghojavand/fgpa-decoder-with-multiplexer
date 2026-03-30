module FA(a,b,cin,cout,s);
	//all inputs and outputs are 1-bit

	input a, b, cin;
    output s, cout;

	assign s = a ^ b ^ cin; 
	assign cout = (a & b) | (a & cin) | (b & cin);

endmodule

