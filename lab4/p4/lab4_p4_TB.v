`timescale 1ns / 1ps

module FPGA_top_TB;

    reg  [3:0] a, b;
    wire [6:0] d1, d0;

    integer i;

    FPGA_top dut (
        .a(a),
        .b(b),
        .d1(d1),
        .d0(d0)
    );

    initial begin
        b = 4'b0000;

        for (i = 0; i < 16; i = i + 1) begin
            a = i;
            #10;

            $display("a = %d | d1 = %b | d0 = %b", a, d1, d0);
        end

        $finish;
    end

endmodule