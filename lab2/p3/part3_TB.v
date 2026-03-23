`timescale 1ns / 1ps
 
module part3_TB;
 
	// ------------------ Instantiate module ------------------
	// We are instantiating the module mux2, naming it instantiate_mux2.
	// select, input1, input2 are controlled by the testbench, output is 
	// checked  within the testbench
 
	reg [3:0] count;
	reg [1:0] select;
	reg [1:0] input1, input2, input3, input4;
	wire [1:0] output1, output2;
	
	two_bit_4to1mux uut1(.s(select),.u(input1),.v(input2),.w(input3),.x(input4),.m(output1));
	two_bit_4to1muxV2 uut2(.s(select),.u(input1),.v(input2),.w(input3),.x(input4),.m(output2));

 	
	initial begin 
		count = 4'b0000;
	
		$dumpfile("p3wave.vcd");
		$dumpvars(0, part3_TB);
       
		$display("time\tcount\ts\ti1\ti2\ti3\ti4\toutput1\toutputV2");
        $monitor("%0t\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", $time, count, select, input1, input2, input3, input4, output1, output2);

	end
	
	always begin
		#50
		count=count+4'b0001;

		if (count == 4'b0111)
			$finish;
	end
	
	always @(count) begin
		case (count)
		4'b0000 : begin input1 = 2'b01; input2 = 2'b00; input3 = 2'b00; input4 = 2'b00; select = 2'b00; end
		4'b0001 : begin input1 = 2'b01; input2 = 2'b00; input3 = 2'b00; input4 = 2'b00; select = 2'b01; end
		4'b0010 : begin input1 = 2'b01; input2 = 2'b00; input3 = 2'b00; input4 = 2'b00; select = 2'b10; end
		4'b0011 : begin input1 = 2'b01; input2 = 2'b00; input3 = 2'b00; input4 = 2'b00; select = 2'b11; end
		4'b0100 : begin input1 = 2'b00; input2 = 2'b01; input3 = 2'b00; input4 = 2'b00; select = 2'b00; end
		4'b0101 : begin input1 = 2'b00; input2 = 2'b01; input3 = 2'b00; input4 = 2'b00; select = 2'b01; end
		4'b0110 : begin input1 = 2'b00; input2 = 2'b01; input3 = 2'b00; input4 = 2'b00; select = 2'b10; end
		4'b0111 : begin input1 = 2'b00; input2 = 2'b01; input3 = 2'b00; input4 = 2'b00; select = 2'b11; end
		default : begin input1 = 2'b00; input2 = 2'b00; input3 = 2'b00; input4 = 2'b00; select = 2'b00; end
	endcase
	end

 
endmodule
