module lab3_P2 (s,u,v,w,x,chosen_7segCode);
 
	input[1:0] s;
	input[1:0] u, v, w, x;
	output[6:0] chosen_7segCode;
	
	wire[1:0] temp;

	two_bit_4to1muxV2 mux(
		.s(s),
		.u(u),
		.v(v),
		.w(w),
		.x(x),
		.m(temp)
	);

	decoder_7seg dec(
		.code(temp),
		.decoded_output(chosen_7segCode)
	);

endmodule
