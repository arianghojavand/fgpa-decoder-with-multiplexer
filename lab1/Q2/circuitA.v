module circuitA (a,b,c,x,y);
	input[3:0] a,b;
	input c;
	output x;
	output[3:0] y;

    
    // complete the rest of the code
	 assign y = a&b|{1'b0,1'b0,1'b0,c};
	 assign x = (a[0]&c)|(b[0]&~c);

endmodule