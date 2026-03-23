module labtest_q2_hardware  (a,b,c,d,x,y);
    input[3:0] a, b, d;
    input c;
    output[3:0] x;
    output y;

    wire xA;
    wire [3:0] yA, xB, yB;
    reg [3:0] mux;

    circuitA comb1(.a(a),.b(b),.c(c),.x(xA),.y(yA));
    circuitB comb2(.a(d),.b(a),.x(xB),.y(yB),.z(y));
    
    always @(xA) begin
        if (xA) begin
            mux = xB;
        end else begin
			mux = yA ;
		end
		
    end
    
    circuitC comb3(.a(mux),.b(yB[0]),.x(x));

endmodule