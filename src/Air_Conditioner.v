module Air_Conditioner (
	s1_i,
	s2_i,
	clk_ac_i,
	clk_o,
);
	
	parameter WIDTH = 5;
	
	input clk_ac_i;
	input wire [WIDTH:0] s1_i;
	input wire [WIDTH:0] s2_i;
	
	output clk_o;
	
	// PLL clock 100kHz
	pll_top	U00 (
		.inclk0 ( clk_ac_i ),
		.c0 ( clk_o )
	);
	
	// timer de 10/15 minutos
	localparam N = 16;
	reg [N:0]slow_clk = 0;
	reg [7:0] countsec = 0;
	input timer = 5'h186a0;
	
	// cojnta os milisegundos
	always @ (posedge clk_o)
		slow_clk <= slow_clk + 8'b1;
		
	// conta os segundos
	always @ (posedge clk)
		if (enable == 1'b1)
			if (countsec == 8'b1010) countsec <= 8'b0;
			else  countsec <= countsec + 8'b1;
	
	//logicsixbits U00(
	
	//);
	
endmodule
