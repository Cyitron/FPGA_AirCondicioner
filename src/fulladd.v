module fulladd(
	a_i,
	b_i,
	carry_i,
	sum_o,
	carry_o
);

	input a_i, b_i, carry_i;
	output sum_o, carry_o;
	
	wire w_sum, w_carry1, w_carry2;
	
	halfadd U0 (
		.a(a_i),
		.b(b_i),
		.sum(w_sum),
		.carry(w_carry1)
	);
	
	halfadd U1 (
		.a(w_sum),
		.b(carry_i),
		.sum(sum_o),
		.carry(w_carry2)
	);
	
	or(carry_o, w_carry1, w_carry2);
	

endmodule
