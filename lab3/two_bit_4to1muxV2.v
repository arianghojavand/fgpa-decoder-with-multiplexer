module two_bit_4to1muxV2 (s,u,v,w,x,m);
 
	input[1:0] s;
	input[1:0] u,v,w,x;
	output reg[1:0] m;
	
	reg[1:0] t1, t2;
	
	//complete always blocks (look at one_bit_4to1muxV2.v for hints. Should look the same)

	always @(*) begin
		if (s[0] == 1)
			t1 = v;
		else 
			t1 = u;
	end

	always @(*) begin
		if (s[0] == 1)
			t2 = x;
		else 
			t2 = w;
	end

	always @(*) begin
		if (s[1] == 1)
			m = t2;
		else 
			m = t1;
	end


endmodule
