module top(clk, clear, out);
    input clk;          
    input clear;        
    output [6:0] out;

    //one-second counter, based on 50MHz CLK
    wire [25:0] timer_Q;
    wire one_sec;
    wire reset_timer;

    assign one_sec = (timer_Q == 26'd49999999);
    assign reset_timer = clear | one_sec;

    counter #(26) timer(
        .clk(clk),
        .clear(reset_timer),
        .enable(1'b1),
        .Q(timer_Q)
    );

    //counter to 10
    wire [3:0] digit_Q;
    wire reset_digit;

    //reset on clear or when digit = 9 and 1 second is up
    assign reset_digit = clear | (one_sec & (digit_Q == 4'd9)); 

    counter #(4) digit(
        .clk(clk),
        .clear(reset_digit),
        .enable(one_sec),
        .Q(digit_Q)
    );

    decoder_7seg decoder(.code(digit_Q), .decoded_output(out));

endmodule