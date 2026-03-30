`timescale 1ns / 1ps

module lab4_p3_TB;

    reg [3:0] a, b;
    reg cin;

    wire [3:0] s;
    wire cout;

    reg [3:0] expected_s;
    reg expected_cout;

    integer i, j, k;
    integer errors = 0;

    // instantiate DUT
    fourBit_FA dut (
        .a(a),
        .b(b),
        .cin(cin),
        .cout(cout),
        .s(s)
    );

    initial begin
        // loop through ALL combinations
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                for (k = 0; k < 2; k = k + 1) begin

                    a = i;
                    b = j;
                    cin = k;

                    #1; // wait for propagation

                    {expected_cout, expected_s} = a + b + cin;

                    if (s !== expected_s || cout !== expected_cout) begin
                        $display("❌ FAIL: a=%b b=%b cin=%b | got s=%b cout=%b | expected s=%b cout=%b",
                                  a, b, cin, s, cout, expected_s, expected_cout);
                        errors = errors + 1;
                    end

                end
            end
        end

        if (errors == 0)
            $display("✅ ALL TESTS PASSED");
        else
            $display("❌ %0d ERRORS", errors);

        $finish;
    end

endmodule