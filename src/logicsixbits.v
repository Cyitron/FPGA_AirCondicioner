module logicsixbits (
	a_i,
	b_i,
	carry_i,
	sum_o,
	carry_o
);

	//parameter WIDTH = 4;
	//reg[WIDTH - 1: 0]sum_o;

	input a_i, b_i, carry_i;
	output [4:0]sum_o;
	output carry_o;
	
	sub_top	sub_top_inst (
	.clock ( clock_sig ),
	.dataa ( dataa_sig ),
	.datab ( datab_sig ),
	.result ( result_sig )
	);

	-- Quartus II VHDL Template
	-- Unsigned Adder/Subtractor

	if (result_sig < 20)(true)
	else false
	
	library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

	entity unsigned_adder_subtractor is

		generic
		(
			DATA_WIDTH : natural := 8
		);

		port 
		(
			a		: in unsigned ((DATA_WIDTH-1) downto 0);
			b		: in unsigned ((DATA_WIDTH-1) downto 0);
			add_sub : in std_logic;
			result	: out unsigned ((DATA_WIDTH-1) downto 0)
		);

	end entity;

	architecture rtl of unsigned_adder_subtractor is
	begin

		process(a,b,add_sub)
		begin
			-- add if "add_sub" is 1, else subtract
			if (add_sub = '1') then
				result <= a + b;
			else
				result <= a - b;
			end if;
		end process;

	end rtl;

	
	wire w_carry1, w_carry2, w_carry3, w_carry4, w_carry5;
	
	fulladd U00 (
		.a_i(a_i),
		.b_i(b_i),
		.carry_i(carry_i),
		.sum_o(sum_o[0]),
		.carry_o(w_carry1)
	);
	
	fulladd U01 (
		.a_i(a_i),
		.b_i(b_i),
		.carry_i(w_carry1),
		.sum_o(sum_o[1]),
		.carry_o(w_carry2)
	);
	
	fulladd U10 (
		.a_i(a_i),
		.b_i(b_i),
		.carry_i(w_carry2),
		.sum_o(sum_o[2]),
		.carry_o(w_carry3)
	);
	
	fulladd U11 (
		.a_i(a_i),
		.b_i(b_i),
		.carry_i(w_carry3),
		.sum_o(sum_o[3]),
		.carry_o(w_carry4)
	);
	
	fulladd U001 (
		.a_i(a_i),
		.b_i(b_i),
		.carry_i(w_carry4),
		.sum_o(sum_o[4]),
		.carry_o(w_carry5)
	);
	
	fulladd U010 (
		.a_i(a_i),
		.b_i(b_i),
		.carry_i(w_carry5),
		.sum_o(sum_o[5]),
		.carry_o(carry_o)
	);
	

endmodule
