`timescale 1ns/1ps

module question1_tb;

    reg a_test, b_test, c_test;
    wire x_test, y_test;

    question1 uut (
        .a(a_test),
        .b(b_test),
        .c(c_test),
        .x(x_test),
        .y(y_test)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, question1_tb);

        $display("time\ta\tb\tc\tx\ty");
        $monitor("%0t\t%b\t%b\t%b\t%b\t%b", $time, a_test, b_test, c_test, x_test, y_test);

        a_test = 0; b_test = 0; c_test = 0; #10;
        a_test = 0; b_test = 0; c_test = 1; #10;
        a_test = 0; b_test = 1; c_test = 0; #10;
        a_test = 0; b_test = 1; c_test = 1; #10;
        a_test = 1; b_test = 0; c_test = 0; #10;
        a_test = 1; b_test = 0; c_test = 1; #10;
        a_test = 1; b_test = 1; c_test = 0; #10;
        a_test = 1; b_test = 1; c_test = 1; #10;

        $finish;
    
    end

endmodule