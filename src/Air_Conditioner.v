module Air_Conditioner (
	s1_i,
	s2_i,
	co2_i,
	clk_ac_i,
	clk_o,
	enable_led_o,
	enable_buzz_o
	
);
	
	parameter WIDTH = 5;
	
	input clk_ac_i, co2_i;
	input wire [WIDTH:0] s1_i; 
	input wire [WIDTH:0] s2_i;
	wire enable;
	wire start = 0;
	
	output clk_o;
	output wire enable_buzz_o;
	output wire enable_led_o;
	
	// PLL clock 100kHz
	pll_top	U00 (
		.inclk0 ( clk_ac_i ),
		.c0 ( clk_o )
	);
	
	// timer de 10/15 segundos
	localparam N = 16;
	reg [N:0]slow_clk = 0;
	reg [3:0] countsec = 0;
	// input timer = 17'h186a0;
	
	logicsixbits U01 (
			.a_i(s1_i),
			.b_i(s2_i),
			.clk_i(clk_o),
			.start_i(start),
			.signal_o(enable_led_o)
	);
	
	// cojnta os milisegundos
	always @ (posedge clk_o)
		if (slow_clk == 17'h186a0) slow_clk <= 8'b0;
		else  slow_clk <= slow_clk + 8'b1;
	
	assign enable = (slow_clk == 17'h186a0);
		
	// conta os segundos
	always @ (posedge clk_o)
		if (enable == 1'b1 & countsec < 4'b1010)
			countsec <= countsec + 4'b1;
			
	//assign start = (countsec == 4'b1010)? 1'b1: 1'b0;
	
	//always@(start)
	//	if(start == 1'b0) 
	//		enable_led_o <= 1'b0;
	
	always@(co2_i)
		enable_buzz_o = co2_i;
		
endmodule
