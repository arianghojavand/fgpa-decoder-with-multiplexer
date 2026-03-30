module fourBit_FA(a, b, cin, cout, s);
    input  [3:0] a, b;
    input        cin;

    output [3:0] s;
    output       cout;

    wire [4:0] c;

    assign c[0] = cin;
    assign cout = c[4];

    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin
            FA fa(.a(a[i]), .b(b[i]), .cin(c[i]), .cout(c[i+1]), .s(s[i]));
        end
    endgenerate

endmodule