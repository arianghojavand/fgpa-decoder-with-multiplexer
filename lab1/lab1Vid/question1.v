module question1(a, b, c, x, y);
    input wire a, b, c;
    output reg x, y;
    wire [2:0] temp;

    assign temp = {a, b, c};

    always @(*) begin
        case (temp)
            3'b000 : begin x = 0; y = 0; end 
            3'b001 : begin x = 0; y = 1; end
            3'b010 : begin x = 1; y = 0; end 
            3'b011 : begin x = 1; y = 1; end 
            3'b100 : begin x = 0; y = 1; end 
            3'b101 : begin x = 1; y = 0; end 
            3'b110 : begin x = 0; y = 0; end 
            3'b111 : begin x = 0; y = 0; end 
        endcase
    end

endmodule


        