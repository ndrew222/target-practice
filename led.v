module top_module(
	input			clk,
	output	reg		LED_INDEX
);
	reg right;
	always @(posedge clk) begin
		LED_INDEX = 0;
		if (right == 1'b1) begin
			LED_INDEX = LED_INDEX + 1;
			if (LED_INDEX == 5'b11000)
				right = 1'b0;
		end
		else if (right == 1'b0) begin
			LED_INDEX = LED_INDEX - 1;
			if (LED_INDEX == 5'b00000)
				right = 1'b1;
		end
	end
endmodule
