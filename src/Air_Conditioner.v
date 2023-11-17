module Air_Conditioner (
	s1_i,
	s2_i,
	clk_ac_i,
	clk_o,
);

	input clk_ac_i;
	output clk_o;
	
	parameter WIDTH = 5;
	input [WIDTH:0]s1_i, [WIDTH:0]s1_i
	
	
	logicsixbits U00(
	
	);
	
	
	
	pll_top	U00 (
		.inclk0 ( clk_ac_i ),
		.c0 ( clk_o )
	);

endmodule
