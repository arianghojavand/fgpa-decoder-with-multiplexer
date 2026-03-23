module q1(a, b, x, y, z);
    input wire a, b;
    output reg x, y, z;
    wire [1:0] temp;

    assign temp = {a, b};

    always @(*) begin
      case (temp)

        2'b00 : begin x = 1; y = 1; z = 0; end 
        2'b01 : begin x = 0; y = 0; z = 0; end 
        2'b10 : begin x = 0; y = 0; z = 1; end 
        2'b11 : begin x = 1; y = 1; z = 0; end

      endcase
    
    end

endmodule
