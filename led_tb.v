module led_loop_tb();

	reg righto;
	reg clk;
	reg [5:0] LED;
	localparam DURATION = 100000;
	led_loop led_instance(
		.right(righto),
		.LED_INDEX(LED),
		.clk(clk)
	);

	initial begin
		righto = 1'b1;
		clk = ~clk;
		#10;
		clk = ~clk;
		#10;
		clk = ~clk;
	end

	initial begin
		$dumpfile("led_tb.vcd");
		$dumpvars(0,led_loop_tb);
  // Wait for given amount of time for simulation to complete
		#(DURATION)
  // Notify and end simulation
		$display("Finished!");
		$finish;
	end
endmodule
