module lab4_p1(
    input  [3:0] v,
    output [6:0] d0,
    output [6:0] d1
);

    wire [3:0] ones;
    wire [3:0] tens;

    fourbit_7segment split_digits (
        .signal(v),
        .ones(ones),
        .tens(tens)
    );

    decoder_7seg decode_ones (
        .code(ones),
        .decoded_output(d0)
    );

    decoder_7seg decode_tens (
        .code(tens),
        .decoded_output(d1)
    );

endmodule