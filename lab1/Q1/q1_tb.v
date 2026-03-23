`timescale 1ns/1ps

module q1_tb; 
    reg atb, btb;
    wire xtb, ytb, ztb;

    q1 uut(
        .a(atb),
        .b(btb),
        .x(xtb),
        .y(ytb),
        .z(ztb)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, q1_tb);

        $display("time\ta\tb\tx\ty\tz");
        $monitor("%0t\t%b\t%b\t%b\t%b\t%b", $time, atb, btb, xtb, ytb, ztb);

        atb = 0; btb = 0; #10;
        atb = 0; btb = 1; #10;
        atb = 1; btb = 0; #10;
        atb = 1; btb = 1; #10;

        $finish;
    end

endmodule