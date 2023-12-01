module logicsixbits (
	a_i,
	b_i,
	clk_i,
	start_i,
	signal_o
);


	input [4:0] a_i, b_i;
   input	clk_i;
	input wire start_i;
	output reg signal_o;
	
	sub_top	sub_top_inst (
	.clock ( clk_i ),
	.dataa ( a_i ),
	.datab ( b_i ),
	.result ( result_sig )
	);
	
	always@(posedge clk_i) 
		begin
		
		if(start_i == 1'b0) 
			signal_o <= 1'b0;
			else
			// th = 5'b10100;
			if(result_sig > 5'b10100)
				signal_o <= 1'b1;
			 else
				signal_o <= 1'b0;
		end
		

endmodule
