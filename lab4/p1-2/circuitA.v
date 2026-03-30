module circuitA (v, A);
	input [3:0] v;
	output reg [3:0] A;
  
	always @(*) begin
		if (v > 4'd9) begin 
			A = v - 4'd10;
		end else begin 
			A = v;
		end
	
	end

endmodule