-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "12/01/2023 11:10:50"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Air_Conditioner IS
    PORT (
	s1_i : IN std_logic_vector(5 DOWNTO 0);
	s2_i : IN std_logic_vector(5 DOWNTO 0);
	co2_i : IN std_logic;
	clk_ac_i : IN std_logic;
	clk_o : OUT std_logic;
	enable_led_o : OUT std_logic;
	enable_buzz_o : OUT std_logic
	);
END Air_Conditioner;

-- Design Ports Information
-- s1_i[0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1_i[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1_i[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1_i[3]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1_i[4]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1_i[5]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2_i[0]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2_i[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2_i[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2_i[3]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2_i[4]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2_i[5]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_o	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable_led_o	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable_buzz_o	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- co2_i	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_ac_i	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Air_Conditioner IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s1_i : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_s2_i : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_co2_i : std_logic;
SIGNAL ww_clk_ac_i : std_logic;
SIGNAL ww_clk_o : std_logic;
SIGNAL ww_enable_led_o : std_logic;
SIGNAL ww_enable_buzz_o : std_logic;
SIGNAL \U00|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U00|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s1_i[0]~input_o\ : std_logic;
SIGNAL \s1_i[1]~input_o\ : std_logic;
SIGNAL \s1_i[2]~input_o\ : std_logic;
SIGNAL \s1_i[3]~input_o\ : std_logic;
SIGNAL \s1_i[4]~input_o\ : std_logic;
SIGNAL \s1_i[5]~input_o\ : std_logic;
SIGNAL \s2_i[0]~input_o\ : std_logic;
SIGNAL \s2_i[1]~input_o\ : std_logic;
SIGNAL \s2_i[2]~input_o\ : std_logic;
SIGNAL \s2_i[3]~input_o\ : std_logic;
SIGNAL \s2_i[4]~input_o\ : std_logic;
SIGNAL \s2_i[5]~input_o\ : std_logic;
SIGNAL \clk_ac_i~input_o\ : std_logic;
SIGNAL \U00|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \co2_i~input_o\ : std_logic;
SIGNAL \U00|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_s1_i <= s1_i;
ww_s2_i <= s2_i;
ww_co2_i <= co2_i;
ww_clk_ac_i <= clk_ac_i;
clk_o <= ww_clk_o;
enable_led_o <= ww_enable_led_o;
enable_buzz_o <= ww_enable_buzz_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U00|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk_ac_i~input_o\);

\U00|altpll_component|auto_generated|wire_pll1_clk\(0) <= \U00|altpll_component|auto_generated|pll1_CLK_bus\(0);
\U00|altpll_component|auto_generated|wire_pll1_clk\(1) <= \U00|altpll_component|auto_generated|pll1_CLK_bus\(1);
\U00|altpll_component|auto_generated|wire_pll1_clk\(2) <= \U00|altpll_component|auto_generated|pll1_CLK_bus\(2);
\U00|altpll_component|auto_generated|wire_pll1_clk\(3) <= \U00|altpll_component|auto_generated|pll1_CLK_bus\(3);
\U00|altpll_component|auto_generated|wire_pll1_clk\(4) <= \U00|altpll_component|auto_generated|pll1_CLK_bus\(4);

\U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U00|altpll_component|auto_generated|wire_pll1_clk\(0));

-- Location: IOOBUF_X37_Y0_N23
\clk_o~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_clk_o);

-- Location: IOOBUF_X0_Y24_N2
\enable_led_o~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_enable_led_o);

-- Location: IOOBUF_X41_Y14_N2
\enable_buzz_o~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \co2_i~input_o\,
	devoe => ww_devoe,
	o => ww_enable_buzz_o);

-- Location: IOIBUF_X41_Y15_N1
\clk_ac_i~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_ac_i,
	o => \clk_ac_i~input_o\);

-- Location: PLL_2
\U00|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 6,
	c0_initial => 1,
	c0_low => 6,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 250,
	c1_initial => 1,
	c1_low => 250,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "on",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c1",
	clk0_divide_by => 500,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3403,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \U00|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \U00|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \U00|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \U00|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G9
\U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: IOIBUF_X26_Y0_N1
\co2_i~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_co2_i,
	o => \co2_i~input_o\);

-- Location: IOIBUF_X35_Y29_N22
\s1_i[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1_i(0),
	o => \s1_i[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\s1_i[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1_i(1),
	o => \s1_i[1]~input_o\);

-- Location: IOIBUF_X39_Y29_N15
\s1_i[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1_i(2),
	o => \s1_i[2]~input_o\);

-- Location: IOIBUF_X7_Y29_N15
\s1_i[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1_i(3),
	o => \s1_i[3]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\s1_i[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1_i(4),
	o => \s1_i[4]~input_o\);

-- Location: IOIBUF_X7_Y29_N29
\s1_i[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1_i(5),
	o => \s1_i[5]~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\s2_i[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s2_i(0),
	o => \s2_i[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\s2_i[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s2_i(1),
	o => \s2_i[1]~input_o\);

-- Location: IOIBUF_X41_Y14_N22
\s2_i[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s2_i(2),
	o => \s2_i[2]~input_o\);

-- Location: IOIBUF_X41_Y5_N15
\s2_i[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s2_i(3),
	o => \s2_i[3]~input_o\);

-- Location: IOIBUF_X41_Y4_N8
\s2_i[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s2_i(4),
	o => \s2_i[4]~input_o\);

-- Location: IOIBUF_X37_Y0_N29
\s2_i[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s2_i(5),
	o => \s2_i[5]~input_o\);
END structure;


