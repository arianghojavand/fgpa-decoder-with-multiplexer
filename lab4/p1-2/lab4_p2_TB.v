`timescale 1ns / 1ps
 
module lab4_p2_TB;
 
    reg [3:0] count;
    reg [3:0] input_binary;

    wire [6:0] d0_ref, d1_ref;
    wire [6:0] d0_dut, d1_dut;
	
    // reference
    lab4_p1 instantiate_lab4_p1(
        .v(input_binary),
        .d0(d0_ref),
        .d1(d1_ref)
    );

    // DUT
    lab4_p2 instantiate_lab4_p2(
        .v(input_binary),
        .d0(d0_dut),
        .d1(d1_dut)
    );
 	
    initial begin 
        count = 4'b0000;
    end
	
    always begin
        #50;
        count = count + 4'b0001;
    end

    integer errors = 0;	

    always @(count) begin
        case (count)
            4'b0000: input_binary = 4'b0000;
            4'b0001: input_binary = 4'b0101;
            4'b0010: input_binary = 4'b1010;
            default: input_binary = 4'b0011;
        endcase

        #1;

        if ((d0_ref !== d0_dut) || (d1_ref !== d1_dut)) begin
            $display("MISMATCH: input=%b | REF d1=%b d0=%b | DUT d1=%b d0=%b",
                     input_binary, d1_ref, d0_ref, d1_dut, d0_dut);
            errors = errors + 1;
        end

        if (count == 4'b1111) begin
            if (errors == 0)
                $display("ALL TESTS PASSED");
            else
                $display("TEST FAILED with %0d errors", errors);
            $finish;
        end
    end

endmodule