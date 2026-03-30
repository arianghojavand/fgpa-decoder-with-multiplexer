module fourbit_7segment(
    input  [3:0] signal,
    output reg [3:0] ones,
    output reg [3:0] tens
);

    always @(*) begin
        case (signal)
            4'd0:  begin tens = 0; ones = 0; end
            4'd1:  begin tens = 0; ones = 1; end
            4'd2:  begin tens = 0; ones = 2; end
            4'd3:  begin tens = 0; ones = 3; end
            4'd4:  begin tens = 0; ones = 4; end
            4'd5:  begin tens = 0; ones = 5; end
            4'd6:  begin tens = 0; ones = 6; end
            4'd7:  begin tens = 0; ones = 7; end
            4'd8:  begin tens = 0; ones = 8; end
            4'd9:  begin tens = 0; ones = 9; end
            4'd10: begin tens = 1; ones = 0; end
            4'd11: begin tens = 1; ones = 1; end
            4'd12: begin tens = 1; ones = 2; end
            4'd13: begin tens = 1; ones = 3; end
            4'd14: begin tens = 1; ones = 4; end
            4'd15: begin tens = 1; ones = 5; end

            default: begin tens = 0; ones = 0; end
        endcase
    end

endmodule