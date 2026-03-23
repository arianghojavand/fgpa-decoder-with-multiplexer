`timescale 1ns / 1ps
 
module testbench_labtest2_combinational;
 
    integer count;

    //inputs
    reg [3:0] A, B, D;
    reg C;

    //outputs
    wire [3:0] X;
    wire Y;

    labtest_q2_hardware uut(.a(A), .b(B), .c(C), .d(D), .x(X), .y(Y));
 
    //run the single testcase
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, testbench_labtest2_combinational);

        $display("time\tA\tB\tC\tD\tX\tY");
        $monitor("%0t\t%b\t%b\t%b\t%b\t%b\t%b", $time, A, B, C, D, X, Y);

        A = 4'b0011;
        B = 4'b1010;
        C = 1'b1;
        D = 4'b0111;

        #10;
        $finish;
    end
 
endmodule
