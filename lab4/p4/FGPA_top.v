module FPGA_top(a, b, d1, d0);
    input  [3:0] a, b;
    output [6:0] d1, d0;

    wire [3:0] adderOut;
    wire cout;

    fourBit_FA adder(.a(a), .b(b), .cin(1'b0), .cout(cout), .s(adderOut));

    lab4_p2 display_block( .v(adderOut), .d1(d1), .d0(d0));

endmodule