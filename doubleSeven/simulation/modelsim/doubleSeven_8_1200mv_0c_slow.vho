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

-- DATE "10/31/2017 18:25:23"

-- 
-- Device: Altera EP3C10E144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter_debounce IS
    PORT (
	In_put : IN std_logic;
	CLR : IN std_logic;
	clk : IN std_logic;
	Carry : BUFFER std_logic;
	output2 : BUFFER std_logic_vector(6 DOWNTO 0);
	output3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END counter_debounce;

-- Design Ports Information
-- Carry	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- output2[0]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- output2[1]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- output2[2]	=>  Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- output2[3]	=>  Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- output2[4]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- output2[5]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- output2[6]	=>  Location: PIN_128,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- output3[0]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- output3[1]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- output3[2]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- output3[3]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- output3[4]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- output3[5]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- output3[6]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLR	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- In_put	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF counter_debounce IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_In_put : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Carry : std_logic;
SIGNAL ww_output2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_output3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|keepResult~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Carry~output_o\ : std_logic;
SIGNAL \output2[0]~output_o\ : std_logic;
SIGNAL \output2[1]~output_o\ : std_logic;
SIGNAL \output2[2]~output_o\ : std_logic;
SIGNAL \output2[3]~output_o\ : std_logic;
SIGNAL \output2[4]~output_o\ : std_logic;
SIGNAL \output2[5]~output_o\ : std_logic;
SIGNAL \output2[6]~output_o\ : std_logic;
SIGNAL \output3[0]~output_o\ : std_logic;
SIGNAL \output3[1]~output_o\ : std_logic;
SIGNAL \output3[2]~output_o\ : std_logic;
SIGNAL \output3[3]~output_o\ : std_logic;
SIGNAL \output3[4]~output_o\ : std_logic;
SIGNAL \output3[5]~output_o\ : std_logic;
SIGNAL \output3[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \U2|inff[1]~feeder_combout\ : std_logic;
SIGNAL \U2|count[0]~16_combout\ : std_logic;
SIGNAL \U2|process_0~0_combout\ : std_logic;
SIGNAL \U2|count[0]~17\ : std_logic;
SIGNAL \U2|count[1]~18_combout\ : std_logic;
SIGNAL \U2|count[1]~19\ : std_logic;
SIGNAL \U2|count[2]~20_combout\ : std_logic;
SIGNAL \U2|count[2]~21\ : std_logic;
SIGNAL \U2|count[3]~22_combout\ : std_logic;
SIGNAL \U2|count[3]~23\ : std_logic;
SIGNAL \U2|count[4]~24_combout\ : std_logic;
SIGNAL \U2|count[4]~25\ : std_logic;
SIGNAL \U2|count[5]~26_combout\ : std_logic;
SIGNAL \U2|count[5]~27\ : std_logic;
SIGNAL \U2|count[6]~28_combout\ : std_logic;
SIGNAL \U2|count[6]~29\ : std_logic;
SIGNAL \U2|count[7]~30_combout\ : std_logic;
SIGNAL \U2|count[7]~31\ : std_logic;
SIGNAL \U2|count[8]~32_combout\ : std_logic;
SIGNAL \U2|count[8]~33\ : std_logic;
SIGNAL \U2|count[9]~34_combout\ : std_logic;
SIGNAL \U2|count[9]~35\ : std_logic;
SIGNAL \U2|count[10]~36_combout\ : std_logic;
SIGNAL \U2|count[10]~37\ : std_logic;
SIGNAL \U2|count[11]~38_combout\ : std_logic;
SIGNAL \U2|count[11]~39\ : std_logic;
SIGNAL \U2|count[12]~40_combout\ : std_logic;
SIGNAL \U2|count[12]~41\ : std_logic;
SIGNAL \U2|count[13]~42_combout\ : std_logic;
SIGNAL \U2|count[13]~43\ : std_logic;
SIGNAL \U2|count[14]~44_combout\ : std_logic;
SIGNAL \U2|count[14]~45\ : std_logic;
SIGNAL \U2|count[15]~46_combout\ : std_logic;
SIGNAL \U2|keepResult~0_combout\ : std_logic;
SIGNAL \U2|LessThan0~0_combout\ : std_logic;
SIGNAL \U2|keepResult~1_combout\ : std_logic;
SIGNAL \U2|keepResult~2_combout\ : std_logic;
SIGNAL \U2|keepResult~3_combout\ : std_logic;
SIGNAL \U2|keepResult~q\ : std_logic;
SIGNAL \In_put~input_o\ : std_logic;
SIGNAL \U1|inff[0]~feeder_combout\ : std_logic;
SIGNAL \U1|inff[1]~feeder_combout\ : std_logic;
SIGNAL \U1|count[0]~16_combout\ : std_logic;
SIGNAL \U1|process_0~0_combout\ : std_logic;
SIGNAL \U1|count[0]~17\ : std_logic;
SIGNAL \U1|count[1]~18_combout\ : std_logic;
SIGNAL \U1|count[1]~19\ : std_logic;
SIGNAL \U1|count[2]~20_combout\ : std_logic;
SIGNAL \U1|count[2]~21\ : std_logic;
SIGNAL \U1|count[3]~22_combout\ : std_logic;
SIGNAL \U1|count[3]~23\ : std_logic;
SIGNAL \U1|count[4]~24_combout\ : std_logic;
SIGNAL \U1|count[4]~25\ : std_logic;
SIGNAL \U1|count[5]~26_combout\ : std_logic;
SIGNAL \U1|count[5]~27\ : std_logic;
SIGNAL \U1|count[6]~28_combout\ : std_logic;
SIGNAL \U1|count[6]~29\ : std_logic;
SIGNAL \U1|count[7]~30_combout\ : std_logic;
SIGNAL \U1|count[7]~31\ : std_logic;
SIGNAL \U1|count[8]~32_combout\ : std_logic;
SIGNAL \U1|count[8]~33\ : std_logic;
SIGNAL \U1|count[9]~34_combout\ : std_logic;
SIGNAL \U1|count[9]~35\ : std_logic;
SIGNAL \U1|count[10]~36_combout\ : std_logic;
SIGNAL \U1|count[10]~37\ : std_logic;
SIGNAL \U1|count[11]~38_combout\ : std_logic;
SIGNAL \U1|count[11]~39\ : std_logic;
SIGNAL \U1|count[12]~40_combout\ : std_logic;
SIGNAL \U1|count[12]~41\ : std_logic;
SIGNAL \U1|count[13]~42_combout\ : std_logic;
SIGNAL \U1|count[13]~43\ : std_logic;
SIGNAL \U1|count[14]~44_combout\ : std_logic;
SIGNAL \U1|count[14]~45\ : std_logic;
SIGNAL \U1|count[15]~46_combout\ : std_logic;
SIGNAL \U1|keepResult~0_combout\ : std_logic;
SIGNAL \U1|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|keepResult~1_combout\ : std_logic;
SIGNAL \U1|keepResult~2_combout\ : std_logic;
SIGNAL \U1|keepResult~3_combout\ : std_logic;
SIGNAL \U1|keepResult~feeder_combout\ : std_logic;
SIGNAL \U1|keepResult~q\ : std_logic;
SIGNAL \U1|keepResult~clkctrl_outclk\ : std_logic;
SIGNAL \U0|tmp[0]~4_combout\ : std_logic;
SIGNAL \U0|tmp[3]~0_combout\ : std_logic;
SIGNAL \U0|tmp[1]~1_combout\ : std_logic;
SIGNAL \U0|tmp[2]~2_combout\ : std_logic;
SIGNAL \U0|tmp[3]~3_combout\ : std_logic;
SIGNAL \U0|Equal0~0_combout\ : std_logic;
SIGNAL \U0|C~1_combout\ : std_logic;
SIGNAL \U0|C~0_combout\ : std_logic;
SIGNAL \U0|C~_emulated_q\ : std_logic;
SIGNAL \U0|C~2_combout\ : std_logic;
SIGNAL \U3|Mux6~0_combout\ : std_logic;
SIGNAL \U3|Mux5~0_combout\ : std_logic;
SIGNAL \U3|Mux4~0_combout\ : std_logic;
SIGNAL \U3|Mux3~0_combout\ : std_logic;
SIGNAL \U3|Mux2~0_combout\ : std_logic;
SIGNAL \U3|Mux1~0_combout\ : std_logic;
SIGNAL \U3|Mux0~0_combout\ : std_logic;
SIGNAL \U2|inff\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U2|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U0|tmp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|inff\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U1|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|ALT_INV_keepResult~clkctrl_outclk\ : std_logic;
SIGNAL \U0|ALT_INV_tmp[3]~0_combout\ : std_logic;
SIGNAL \U0|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_In_put <= In_put;
ww_CLR <= CLR;
ww_clk <= clk;
Carry <= ww_Carry;
output2 <= ww_output2;
output3 <= ww_output3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U1|keepResult~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|keepResult~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\U1|ALT_INV_keepResult~clkctrl_outclk\ <= NOT \U1|keepResult~clkctrl_outclk\;
\U0|ALT_INV_tmp[3]~0_combout\ <= NOT \U0|tmp[3]~0_combout\;
\U0|ALT_INV_C~0_combout\ <= NOT \U0|C~0_combout\;
\U3|ALT_INV_Mux0~0_combout\ <= NOT \U3|Mux0~0_combout\;

-- Location: IOOBUF_X1_Y0_N23
\Carry~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|C~2_combout\,
	devoe => ww_devoe,
	o => \Carry~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\output2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \output2[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\output2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \output2[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\output2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \output2[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\output2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \output2[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\output2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \output2[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\output2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \output2[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\output2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \output2[6]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\output3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output3[0]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\output3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output3[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\output3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output3[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\output3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output3[3]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\output3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output3[4]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\output3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output3[5]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\output3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \output3[6]~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N15
\CLR~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: FF_X17_Y23_N25
\U2|inff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CLR~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|inff\(0));

-- Location: LCCOMB_X17_Y23_N22
\U2|inff[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|inff[1]~feeder_combout\ = \U2|inff\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|inff\(0),
	combout => \U2|inff[1]~feeder_combout\);

-- Location: FF_X17_Y23_N23
\U2|inff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|inff[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|inff\(1));

-- Location: LCCOMB_X16_Y23_N0
\U2|count[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[0]~16_combout\ = \U2|count\(0) $ (VCC)
-- \U2|count[0]~17\ = CARRY(\U2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(0),
	datad => VCC,
	combout => \U2|count[0]~16_combout\,
	cout => \U2|count[0]~17\);

-- Location: LCCOMB_X17_Y23_N30
\U2|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|process_0~0_combout\ = \U2|inff\(1) $ (\U2|inff\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|inff\(1),
	datad => \U2|inff\(0),
	combout => \U2|process_0~0_combout\);

-- Location: FF_X16_Y23_N1
\U2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count[0]~16_combout\,
	sclr => \U2|process_0~0_combout\,
	ena => \U2|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(0));

-- Location: LCCOMB_X16_Y23_N2
\U2|count[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[1]~18_combout\ = (\U2|count\(1) & (!\U2|count[0]~17\)) # (!\U2|count\(1) & ((\U2|count[0]~17\) # (GND)))
-- \U2|count[1]~19\ = CARRY((!\U2|count[0]~17\) # (!\U2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(1),
	datad => VCC,
	cin => \U2|count[0]~17\,
	combout => \U2|count[1]~18_combout\,
	cout => \U2|count[1]~19\);

-- Location: FF_X16_Y23_N3
\U2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count[1]~18_combout\,
	sclr => \U2|process_0~0_combout\,
	ena => \U2|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(1));

-- Location: LCCOMB_X16_Y23_N4
\U2|count[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[2]~20_combout\ = (\U2|count\(2) & (\U2|count[1]~19\ $ (GND))) # (!\U2|count\(2) & (!\U2|count[1]~19\ & VCC))
-- \U2|count[2]~21\ = CARRY((\U2|count\(2) & !\U2|count[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(2),
	datad => VCC,
	cin => \U2|count[1]~19\,
	combout => \U2|count[2]~20_combout\,
	cout => \U2|count[2]~21\);

-- Location: FF_X16_Y23_N5
\U2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count[2]~20_combout\,
	sclr => \U2|process_0~0_combout\,
	ena => \U2|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(2));

-- Location: LCCOMB_X16_Y23_N6
\U2|count[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[3]~22_combout\ = (\U2|count\(3) & (!\U2|count[2]~21\)) # (!\U2|count\(3) & ((\U2|count[2]~21\) # (GND)))
-- \U2|count[3]~23\ = CARRY((!\U2|count[2]~21\) # (!\U2|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(3),
	datad => VCC,
	cin => \U2|count[2]~21\,
	combout => \U2|count[3]~22_combout\,
	cout => \U2|count[3]~23\);

-- Location: FF_X16_Y23_N7
\U2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count[3]~22_combout\,
	sclr => \U2|process_0~0_combout\,
	ena => \U2|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(3));

-- Location: LCCOMB_X16_Y23_N8
\U2|count[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[4]~24_combout\ = (\U2|count\(4) & (\U2|count[3]~23\ $ (GND))) # (!\U2|count\(4) & (!\U2|count[3]~23\ & VCC))
-- \U2|count[4]~25\ = CARRY((\U2|count\(4) & !\U2|count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(4),
	datad => VCC,
	cin => \U2|count[3]~23\,
	combout => \U2|count[4]~24_combout\,
	cout => \U2|count[4]~25\);

-- Location: FF_X16_Y23_N9
\U2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count[4]~24_combout\,
	sclr => \U2|process_0~0_combout\,
	ena => \U2|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(4));

-- Location: LCCOMB_X16_Y23_N10
\U2|count[5]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[5]~26_combout\ = (\U2|count\(5) & (!\U2|count[4]~25\)) # (!\U2|count\(5) & ((\U2|count[4]~25\) # (GND)))
-- \U2|count[5]~27\ = CARRY((!\U2|count[4]~25\) # (!\U2|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(5),
	datad => VCC,
	cin => \U2|count[4]~25\,
	combout => \U2|count[5]~26_combout\,
	cout => \U2|count[5]~27\);

-- Location: FF_X16_Y23_N11
\U2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count[5]~26_combout\,
	sclr => \U2|process_0~0_combout\,
	ena => \U2|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(5));

-- Location: LCCOMB_X16_Y23_N12
\U2|count[6]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[6]~28_combout\ = (\U2|count\(6) & (\U2|count[5]~27\ $ (GND))) # (!\U2|count\(6) & (!\U2|count[5]~27\ & VCC))
-- \U2|count[6]~29\ = CARRY((\U2|count\(6) & !\U2|count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(6),
	datad => VCC,
	cin => \U2|count[5]~27\,
	combout => \U2|count[6]~28_combout\,
	cout => \U2|count[6]~29\);

-- Location: FF_X16_Y23_N13
\U2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count[6]~28_combout\,
	sclr => \U2|process_0~0_combout\,
	ena => \U2|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(6));

-- Location: LCCOMB_X16_Y23_N14
\U2|count[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[7]~30_combout\ = (\U2|count\(7) & (!\U2|count[6]~29\)) # (!\U2|count\(7) & ((\U2|count[6]~29\) # (GND)))
-- \U2|count[7]~31\ = CARRY((!\U2|count[6]~29\) # (!\U2|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(7),
	datad => VCC,
	cin => \U2|count[6]~29\,
	combout => \U2|count[7]~30_combout\,
	cout => \U2|count[7]~31\);

-- Location: FF_X16_Y23_N15
\U2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count[7]~30_combout\,
	sclr => \U2|process_0~0_combout\,
	ena => \U2|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(7));

-- Location: LCCOMB_X16_Y23_N16
\U2|count[8]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[8]~32_combout\ = (\U2|count\(8) & (\U2|count[7]~31\ $ (GND))) # (!\U2|count\(8) & (!\U2|count[7]~31\ & VCC))
-- \U2|count[8]~33\ = CARRY((\U2|count\(8) & !\U2|count[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(8),
	datad => VCC,
	cin => \U2|count[7]~31\,
	combout => \U2|count[8]~32_combout\,
	cout => \U2|count[8]~33\);

-- Location: FF_X16_Y23_N17
\U2|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count[8]~32_combout\,
	sclr => \U2|process_0~0_combout\,
	ena => \U2|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(8));

-- Location: LCCOMB_X16_Y23_N18
\U2|count[9]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[9]~34_combout\ = (\U2|count\(9) & (!\U2|count[8]~33\)) # (!\U2|count\(9) & ((\U2|count[8]~33\) # (GND)))
-- \U2|count[9]~35\ = CARRY((!\U2|count[8]~33\) # (!\U2|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(9),
	datad => VCC,
	cin => \U2|count[8]~33\,
	combout => \U2|count[9]~34_combout\,
	cout => \U2|count[9]~35\);

-- Location: FF_X16_Y23_N19
\U2|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count[9]~34_combout\,
	sclr => \U2|process_0~0_combout\,
	ena => \U2|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(9));

-- Location: LCCOMB_X16_Y23_N20
\U2|count[10]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[10]~36_combout\ = (\U2|count\(10) & (\U2|count[9]~35\ $ (GND))) # (!\U2|count\(10) & (!\U2|count[9]~35\ & VCC))
-- \U2|count[10]~37\ = CARRY((\U2|count\(10) & !\U2|count[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(10),
	datad => VCC,
	cin => \U2|count[9]~35\,
	combout => \U2|count[10]~36_combout\,
	cout => \U2|count[10]~37\);

-- Location: FF_X16_Y23_N21
\U2|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count[10]~36_combout\,
	sclr => \U2|process_0~0_combout\,
	ena => \U2|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(10));

-- Location: LCCOMB_X16_Y23_N22
\U2|count[11]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[11]~38_combout\ = (\U2|count\(11) & (!\U2|count[10]~37\)) # (!\U2|count\(11) & ((\U2|count[10]~37\) # (GND)))
-- \U2|count[11]~39\ = CARRY((!\U2|count[10]~37\) # (!\U2|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(11),
	datad => VCC,
	cin => \U2|count[10]~37\,
	combout => \U2|count[11]~38_combout\,
	cout => \U2|count[11]~39\);

-- Location: FF_X16_Y23_N23
\U2|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count[11]~38_combout\,
	sclr => \U2|process_0~0_combout\,
	ena => \U2|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(11));

-- Location: LCCOMB_X16_Y23_N24
\U2|count[12]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[12]~40_combout\ = (\U2|count\(12) & (\U2|count[11]~39\ $ (GND))) # (!\U2|count\(12) & (!\U2|count[11]~39\ & VCC))
-- \U2|count[12]~41\ = CARRY((\U2|count\(12) & !\U2|count[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(12),
	datad => VCC,
	cin => \U2|count[11]~39\,
	combout => \U2|count[12]~40_combout\,
	cout => \U2|count[12]~41\);

-- Location: FF_X16_Y23_N25
\U2|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count[12]~40_combout\,
	sclr => \U2|process_0~0_combout\,
	ena => \U2|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(12));

-- Location: LCCOMB_X16_Y23_N26
\U2|count[13]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[13]~42_combout\ = (\U2|count\(13) & (!\U2|count[12]~41\)) # (!\U2|count\(13) & ((\U2|count[12]~41\) # (GND)))
-- \U2|count[13]~43\ = CARRY((!\U2|count[12]~41\) # (!\U2|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(13),
	datad => VCC,
	cin => \U2|count[12]~41\,
	combout => \U2|count[13]~42_combout\,
	cout => \U2|count[13]~43\);

-- Location: FF_X16_Y23_N27
\U2|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count[13]~42_combout\,
	sclr => \U2|process_0~0_combout\,
	ena => \U2|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(13));

-- Location: LCCOMB_X16_Y23_N28
\U2|count[14]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[14]~44_combout\ = (\U2|count\(14) & (\U2|count[13]~43\ $ (GND))) # (!\U2|count\(14) & (!\U2|count[13]~43\ & VCC))
-- \U2|count[14]~45\ = CARRY((\U2|count\(14) & !\U2|count[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(14),
	datad => VCC,
	cin => \U2|count[13]~43\,
	combout => \U2|count[14]~44_combout\,
	cout => \U2|count[14]~45\);

-- Location: FF_X16_Y23_N29
\U2|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count[14]~44_combout\,
	sclr => \U2|process_0~0_combout\,
	ena => \U2|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(14));

-- Location: LCCOMB_X16_Y23_N30
\U2|count[15]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[15]~46_combout\ = \U2|count\(15) $ (\U2|count[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(15),
	cin => \U2|count[14]~45\,
	combout => \U2|count[15]~46_combout\);

-- Location: FF_X16_Y23_N31
\U2|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count[15]~46_combout\,
	sclr => \U2|process_0~0_combout\,
	ena => \U2|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(15));

-- Location: LCCOMB_X17_Y23_N14
\U2|keepResult~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|keepResult~0_combout\ = (\U2|count\(7)) # ((\U2|count\(6) & ((\U2|count\(4)) # (\U2|count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(6),
	datab => \U2|count\(4),
	datac => \U2|count\(5),
	datad => \U2|count\(7),
	combout => \U2|keepResult~0_combout\);

-- Location: LCCOMB_X17_Y23_N28
\U2|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|LessThan0~0_combout\ = (!\U2|count\(13) & (!\U2|count\(12) & (!\U2|count\(11) & !\U2|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(13),
	datab => \U2|count\(12),
	datac => \U2|count\(11),
	datad => \U2|count\(10),
	combout => \U2|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y23_N20
\U2|keepResult~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|keepResult~1_combout\ = (\U2|LessThan0~0_combout\ & (((!\U2|keepResult~0_combout\) # (!\U2|count\(9))) # (!\U2|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(8),
	datab => \U2|count\(9),
	datac => \U2|keepResult~0_combout\,
	datad => \U2|LessThan0~0_combout\,
	combout => \U2|keepResult~1_combout\);

-- Location: LCCOMB_X17_Y23_N26
\U2|keepResult~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|keepResult~2_combout\ = (((\U2|process_0~0_combout\) # (\U2|keepResult~1_combout\)) # (!\U2|count\(15))) # (!\U2|count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(14),
	datab => \U2|count\(15),
	datac => \U2|process_0~0_combout\,
	datad => \U2|keepResult~1_combout\,
	combout => \U2|keepResult~2_combout\);

-- Location: LCCOMB_X17_Y23_N8
\U2|keepResult~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|keepResult~3_combout\ = (\U2|keepResult~2_combout\ & ((\U2|keepResult~q\))) # (!\U2|keepResult~2_combout\ & (!\U2|inff\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|inff\(1),
	datac => \U2|keepResult~q\,
	datad => \U2|keepResult~2_combout\,
	combout => \U2|keepResult~3_combout\);

-- Location: FF_X17_Y23_N9
\U2|keepResult\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|keepResult~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|keepResult~q\);

-- Location: IOIBUF_X34_Y12_N22
\In_put~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_In_put,
	o => \In_put~input_o\);

-- Location: LCCOMB_X26_Y10_N6
\U1|inff[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|inff[0]~feeder_combout\ = \In_put~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \In_put~input_o\,
	combout => \U1|inff[0]~feeder_combout\);

-- Location: FF_X26_Y10_N7
\U1|inff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|inff[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|inff\(0));

-- Location: LCCOMB_X26_Y10_N30
\U1|inff[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|inff[1]~feeder_combout\ = \U1|inff\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|inff\(0),
	combout => \U1|inff[1]~feeder_combout\);

-- Location: FF_X26_Y10_N31
\U1|inff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|inff[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|inff\(1));

-- Location: LCCOMB_X25_Y10_N0
\U1|count[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|count[0]~16_combout\ = \U1|count\(0) $ (VCC)
-- \U1|count[0]~17\ = CARRY(\U1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(0),
	datad => VCC,
	combout => \U1|count[0]~16_combout\,
	cout => \U1|count[0]~17\);

-- Location: LCCOMB_X26_Y10_N8
\U1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~0_combout\ = \U1|inff\(1) $ (\U1|inff\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|inff\(1),
	datad => \U1|inff\(0),
	combout => \U1|process_0~0_combout\);

-- Location: FF_X25_Y10_N1
\U1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|count[0]~16_combout\,
	sclr => \U1|process_0~0_combout\,
	ena => \U1|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(0));

-- Location: LCCOMB_X25_Y10_N2
\U1|count[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|count[1]~18_combout\ = (\U1|count\(1) & (!\U1|count[0]~17\)) # (!\U1|count\(1) & ((\U1|count[0]~17\) # (GND)))
-- \U1|count[1]~19\ = CARRY((!\U1|count[0]~17\) # (!\U1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(1),
	datad => VCC,
	cin => \U1|count[0]~17\,
	combout => \U1|count[1]~18_combout\,
	cout => \U1|count[1]~19\);

-- Location: FF_X25_Y10_N3
\U1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|count[1]~18_combout\,
	sclr => \U1|process_0~0_combout\,
	ena => \U1|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(1));

-- Location: LCCOMB_X25_Y10_N4
\U1|count[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|count[2]~20_combout\ = (\U1|count\(2) & (\U1|count[1]~19\ $ (GND))) # (!\U1|count\(2) & (!\U1|count[1]~19\ & VCC))
-- \U1|count[2]~21\ = CARRY((\U1|count\(2) & !\U1|count[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(2),
	datad => VCC,
	cin => \U1|count[1]~19\,
	combout => \U1|count[2]~20_combout\,
	cout => \U1|count[2]~21\);

-- Location: FF_X25_Y10_N5
\U1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|count[2]~20_combout\,
	sclr => \U1|process_0~0_combout\,
	ena => \U1|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(2));

-- Location: LCCOMB_X25_Y10_N6
\U1|count[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|count[3]~22_combout\ = (\U1|count\(3) & (!\U1|count[2]~21\)) # (!\U1|count\(3) & ((\U1|count[2]~21\) # (GND)))
-- \U1|count[3]~23\ = CARRY((!\U1|count[2]~21\) # (!\U1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(3),
	datad => VCC,
	cin => \U1|count[2]~21\,
	combout => \U1|count[3]~22_combout\,
	cout => \U1|count[3]~23\);

-- Location: FF_X25_Y10_N7
\U1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|count[3]~22_combout\,
	sclr => \U1|process_0~0_combout\,
	ena => \U1|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(3));

-- Location: LCCOMB_X25_Y10_N8
\U1|count[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|count[4]~24_combout\ = (\U1|count\(4) & (\U1|count[3]~23\ $ (GND))) # (!\U1|count\(4) & (!\U1|count[3]~23\ & VCC))
-- \U1|count[4]~25\ = CARRY((\U1|count\(4) & !\U1|count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(4),
	datad => VCC,
	cin => \U1|count[3]~23\,
	combout => \U1|count[4]~24_combout\,
	cout => \U1|count[4]~25\);

-- Location: FF_X25_Y10_N9
\U1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|count[4]~24_combout\,
	sclr => \U1|process_0~0_combout\,
	ena => \U1|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(4));

-- Location: LCCOMB_X25_Y10_N10
\U1|count[5]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|count[5]~26_combout\ = (\U1|count\(5) & (!\U1|count[4]~25\)) # (!\U1|count\(5) & ((\U1|count[4]~25\) # (GND)))
-- \U1|count[5]~27\ = CARRY((!\U1|count[4]~25\) # (!\U1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(5),
	datad => VCC,
	cin => \U1|count[4]~25\,
	combout => \U1|count[5]~26_combout\,
	cout => \U1|count[5]~27\);

-- Location: FF_X25_Y10_N11
\U1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|count[5]~26_combout\,
	sclr => \U1|process_0~0_combout\,
	ena => \U1|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(5));

-- Location: LCCOMB_X25_Y10_N12
\U1|count[6]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|count[6]~28_combout\ = (\U1|count\(6) & (\U1|count[5]~27\ $ (GND))) # (!\U1|count\(6) & (!\U1|count[5]~27\ & VCC))
-- \U1|count[6]~29\ = CARRY((\U1|count\(6) & !\U1|count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(6),
	datad => VCC,
	cin => \U1|count[5]~27\,
	combout => \U1|count[6]~28_combout\,
	cout => \U1|count[6]~29\);

-- Location: FF_X25_Y10_N13
\U1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|count[6]~28_combout\,
	sclr => \U1|process_0~0_combout\,
	ena => \U1|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(6));

-- Location: LCCOMB_X25_Y10_N14
\U1|count[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|count[7]~30_combout\ = (\U1|count\(7) & (!\U1|count[6]~29\)) # (!\U1|count\(7) & ((\U1|count[6]~29\) # (GND)))
-- \U1|count[7]~31\ = CARRY((!\U1|count[6]~29\) # (!\U1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(7),
	datad => VCC,
	cin => \U1|count[6]~29\,
	combout => \U1|count[7]~30_combout\,
	cout => \U1|count[7]~31\);

-- Location: FF_X25_Y10_N15
\U1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|count[7]~30_combout\,
	sclr => \U1|process_0~0_combout\,
	ena => \U1|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(7));

-- Location: LCCOMB_X25_Y10_N16
\U1|count[8]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|count[8]~32_combout\ = (\U1|count\(8) & (\U1|count[7]~31\ $ (GND))) # (!\U1|count\(8) & (!\U1|count[7]~31\ & VCC))
-- \U1|count[8]~33\ = CARRY((\U1|count\(8) & !\U1|count[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(8),
	datad => VCC,
	cin => \U1|count[7]~31\,
	combout => \U1|count[8]~32_combout\,
	cout => \U1|count[8]~33\);

-- Location: FF_X25_Y10_N17
\U1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|count[8]~32_combout\,
	sclr => \U1|process_0~0_combout\,
	ena => \U1|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(8));

-- Location: LCCOMB_X25_Y10_N18
\U1|count[9]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|count[9]~34_combout\ = (\U1|count\(9) & (!\U1|count[8]~33\)) # (!\U1|count\(9) & ((\U1|count[8]~33\) # (GND)))
-- \U1|count[9]~35\ = CARRY((!\U1|count[8]~33\) # (!\U1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(9),
	datad => VCC,
	cin => \U1|count[8]~33\,
	combout => \U1|count[9]~34_combout\,
	cout => \U1|count[9]~35\);

-- Location: FF_X25_Y10_N19
\U1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|count[9]~34_combout\,
	sclr => \U1|process_0~0_combout\,
	ena => \U1|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(9));

-- Location: LCCOMB_X25_Y10_N20
\U1|count[10]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|count[10]~36_combout\ = (\U1|count\(10) & (\U1|count[9]~35\ $ (GND))) # (!\U1|count\(10) & (!\U1|count[9]~35\ & VCC))
-- \U1|count[10]~37\ = CARRY((\U1|count\(10) & !\U1|count[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(10),
	datad => VCC,
	cin => \U1|count[9]~35\,
	combout => \U1|count[10]~36_combout\,
	cout => \U1|count[10]~37\);

-- Location: FF_X25_Y10_N21
\U1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|count[10]~36_combout\,
	sclr => \U1|process_0~0_combout\,
	ena => \U1|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(10));

-- Location: LCCOMB_X25_Y10_N22
\U1|count[11]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|count[11]~38_combout\ = (\U1|count\(11) & (!\U1|count[10]~37\)) # (!\U1|count\(11) & ((\U1|count[10]~37\) # (GND)))
-- \U1|count[11]~39\ = CARRY((!\U1|count[10]~37\) # (!\U1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(11),
	datad => VCC,
	cin => \U1|count[10]~37\,
	combout => \U1|count[11]~38_combout\,
	cout => \U1|count[11]~39\);

-- Location: FF_X25_Y10_N23
\U1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|count[11]~38_combout\,
	sclr => \U1|process_0~0_combout\,
	ena => \U1|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(11));

-- Location: LCCOMB_X25_Y10_N24
\U1|count[12]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|count[12]~40_combout\ = (\U1|count\(12) & (\U1|count[11]~39\ $ (GND))) # (!\U1|count\(12) & (!\U1|count[11]~39\ & VCC))
-- \U1|count[12]~41\ = CARRY((\U1|count\(12) & !\U1|count[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(12),
	datad => VCC,
	cin => \U1|count[11]~39\,
	combout => \U1|count[12]~40_combout\,
	cout => \U1|count[12]~41\);

-- Location: FF_X25_Y10_N25
\U1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|count[12]~40_combout\,
	sclr => \U1|process_0~0_combout\,
	ena => \U1|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(12));

-- Location: LCCOMB_X25_Y10_N26
\U1|count[13]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|count[13]~42_combout\ = (\U1|count\(13) & (!\U1|count[12]~41\)) # (!\U1|count\(13) & ((\U1|count[12]~41\) # (GND)))
-- \U1|count[13]~43\ = CARRY((!\U1|count[12]~41\) # (!\U1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(13),
	datad => VCC,
	cin => \U1|count[12]~41\,
	combout => \U1|count[13]~42_combout\,
	cout => \U1|count[13]~43\);

-- Location: FF_X25_Y10_N27
\U1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|count[13]~42_combout\,
	sclr => \U1|process_0~0_combout\,
	ena => \U1|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(13));

-- Location: LCCOMB_X25_Y10_N28
\U1|count[14]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|count[14]~44_combout\ = (\U1|count\(14) & (\U1|count[13]~43\ $ (GND))) # (!\U1|count\(14) & (!\U1|count[13]~43\ & VCC))
-- \U1|count[14]~45\ = CARRY((\U1|count\(14) & !\U1|count[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(14),
	datad => VCC,
	cin => \U1|count[13]~43\,
	combout => \U1|count[14]~44_combout\,
	cout => \U1|count[14]~45\);

-- Location: FF_X25_Y10_N29
\U1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|count[14]~44_combout\,
	sclr => \U1|process_0~0_combout\,
	ena => \U1|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(14));

-- Location: LCCOMB_X25_Y10_N30
\U1|count[15]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|count[15]~46_combout\ = \U1|count\(15) $ (\U1|count[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(15),
	cin => \U1|count[14]~45\,
	combout => \U1|count[15]~46_combout\);

-- Location: FF_X25_Y10_N31
\U1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|count[15]~46_combout\,
	sclr => \U1|process_0~0_combout\,
	ena => \U1|keepResult~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(15));

-- Location: LCCOMB_X26_Y10_N26
\U1|keepResult~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|keepResult~0_combout\ = (\U1|count\(7)) # ((\U1|count\(6) & ((\U1|count\(4)) # (\U1|count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(6),
	datab => \U1|count\(4),
	datac => \U1|count\(5),
	datad => \U1|count\(7),
	combout => \U1|keepResult~0_combout\);

-- Location: LCCOMB_X26_Y10_N12
\U1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan0~0_combout\ = (!\U1|count\(10) & (!\U1|count\(12) & (!\U1|count\(13) & !\U1|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(10),
	datab => \U1|count\(12),
	datac => \U1|count\(13),
	datad => \U1|count\(11),
	combout => \U1|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y10_N24
\U1|keepResult~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|keepResult~1_combout\ = (\U1|LessThan0~0_combout\ & (((!\U1|keepResult~0_combout\) # (!\U1|count\(9))) # (!\U1|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(8),
	datab => \U1|count\(9),
	datac => \U1|keepResult~0_combout\,
	datad => \U1|LessThan0~0_combout\,
	combout => \U1|keepResult~1_combout\);

-- Location: LCCOMB_X26_Y10_N18
\U1|keepResult~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|keepResult~2_combout\ = (((\U1|process_0~0_combout\) # (\U1|keepResult~1_combout\)) # (!\U1|count\(15))) # (!\U1|count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(14),
	datab => \U1|count\(15),
	datac => \U1|process_0~0_combout\,
	datad => \U1|keepResult~1_combout\,
	combout => \U1|keepResult~2_combout\);

-- Location: LCCOMB_X26_Y10_N22
\U1|keepResult~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|keepResult~3_combout\ = (\U1|keepResult~2_combout\ & ((\U1|keepResult~q\))) # (!\U1|keepResult~2_combout\ & (!\U1|inff\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|inff\(1),
	datac => \U1|keepResult~q\,
	datad => \U1|keepResult~2_combout\,
	combout => \U1|keepResult~3_combout\);

-- Location: LCCOMB_X26_Y10_N10
\U1|keepResult~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|keepResult~feeder_combout\ = \U1|keepResult~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|keepResult~3_combout\,
	combout => \U1|keepResult~feeder_combout\);

-- Location: FF_X26_Y10_N11
\U1|keepResult\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|keepResult~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|keepResult~q\);

-- Location: CLKCTRL_G8
\U1|keepResult~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|keepResult~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|keepResult~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y23_N0
\U0|tmp[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|tmp[0]~4_combout\ = !\U0|tmp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|tmp\(0),
	combout => \U0|tmp[0]~4_combout\);

-- Location: LCCOMB_X18_Y23_N12
\U0|tmp[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|tmp[3]~0_combout\ = (\U0|Equal0~0_combout\) # (\U2|keepResult~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Equal0~0_combout\,
	datad => \U2|keepResult~q\,
	combout => \U0|tmp[3]~0_combout\);

-- Location: FF_X18_Y23_N1
\U0|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_keepResult~clkctrl_outclk\,
	d => \U0|tmp[0]~4_combout\,
	clrn => \U0|ALT_INV_tmp[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|tmp\(0));

-- Location: LCCOMB_X18_Y23_N2
\U0|tmp[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|tmp[1]~1_combout\ = \U0|tmp\(1) $ (\U0|tmp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|tmp\(1),
	datad => \U0|tmp\(0),
	combout => \U0|tmp[1]~1_combout\);

-- Location: FF_X18_Y23_N3
\U0|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_keepResult~clkctrl_outclk\,
	d => \U0|tmp[1]~1_combout\,
	clrn => \U0|ALT_INV_tmp[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|tmp\(1));

-- Location: LCCOMB_X18_Y23_N20
\U0|tmp[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|tmp[2]~2_combout\ = \U0|tmp\(2) $ (((\U0|tmp\(0) & \U0|tmp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|tmp\(0),
	datac => \U0|tmp\(2),
	datad => \U0|tmp\(1),
	combout => \U0|tmp[2]~2_combout\);

-- Location: FF_X18_Y23_N21
\U0|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_keepResult~clkctrl_outclk\,
	d => \U0|tmp[2]~2_combout\,
	clrn => \U0|ALT_INV_tmp[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|tmp\(2));

-- Location: LCCOMB_X18_Y23_N14
\U0|tmp[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|tmp[3]~3_combout\ = \U0|tmp\(3) $ (((\U0|tmp\(2) & (\U0|tmp\(0) & \U0|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|tmp\(2),
	datab => \U0|tmp\(0),
	datac => \U0|tmp\(3),
	datad => \U0|tmp\(1),
	combout => \U0|tmp[3]~3_combout\);

-- Location: FF_X18_Y23_N15
\U0|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_keepResult~clkctrl_outclk\,
	d => \U0|tmp[3]~3_combout\,
	clrn => \U0|ALT_INV_tmp[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|tmp\(3));

-- Location: LCCOMB_X18_Y23_N26
\U0|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Equal0~0_combout\ = (!\U0|tmp\(2) & (!\U0|tmp\(0) & (\U0|tmp\(3) & \U0|tmp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|tmp\(2),
	datab => \U0|tmp\(0),
	datac => \U0|tmp\(3),
	datad => \U0|tmp\(1),
	combout => \U0|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y23_N10
\U0|C~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|C~1_combout\ = (!\U2|keepResult~q\ & ((\U0|Equal0~0_combout\) # (\U0|C~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|keepResult~q\,
	datab => \U0|Equal0~0_combout\,
	datad => \U0|C~1_combout\,
	combout => \U0|C~1_combout\);

-- Location: LCCOMB_X18_Y23_N28
\U0|C~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|C~0_combout\ = (\U0|Equal0~0_combout\) # (\U2|keepResult~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Equal0~0_combout\,
	datad => \U2|keepResult~q\,
	combout => \U0|C~0_combout\);

-- Location: FF_X18_Y23_N29
\U0|C~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_keepResult~clkctrl_outclk\,
	asdata => \U0|C~1_combout\,
	clrn => \U0|ALT_INV_C~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|C~_emulated_q\);

-- Location: LCCOMB_X18_Y23_N18
\U0|C~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|C~2_combout\ = (!\U2|keepResult~q\ & ((\U0|Equal0~0_combout\) # (\U0|C~1_combout\ $ (\U0|C~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|keepResult~q\,
	datab => \U0|C~1_combout\,
	datac => \U0|Equal0~0_combout\,
	datad => \U0|C~_emulated_q\,
	combout => \U0|C~2_combout\);

-- Location: LCCOMB_X18_Y23_N8
\U3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux6~0_combout\ = (\U0|tmp\(2) & (!\U0|tmp\(1) & (\U0|tmp\(3) $ (!\U0|tmp\(0))))) # (!\U0|tmp\(2) & (\U0|tmp\(0) & (\U0|tmp\(3) $ (!\U0|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|tmp\(2),
	datab => \U0|tmp\(3),
	datac => \U0|tmp\(1),
	datad => \U0|tmp\(0),
	combout => \U3|Mux6~0_combout\);

-- Location: LCCOMB_X18_Y23_N6
\U3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux5~0_combout\ = (\U0|tmp\(3) & ((\U0|tmp\(0) & ((\U0|tmp\(1)))) # (!\U0|tmp\(0) & (\U0|tmp\(2))))) # (!\U0|tmp\(3) & (\U0|tmp\(2) & (\U0|tmp\(1) $ (\U0|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|tmp\(2),
	datab => \U0|tmp\(3),
	datac => \U0|tmp\(1),
	datad => \U0|tmp\(0),
	combout => \U3|Mux5~0_combout\);

-- Location: LCCOMB_X18_Y23_N24
\U3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux4~0_combout\ = (\U0|tmp\(2) & (\U0|tmp\(3) & ((\U0|tmp\(1)) # (!\U0|tmp\(0))))) # (!\U0|tmp\(2) & (!\U0|tmp\(3) & (\U0|tmp\(1) & !\U0|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|tmp\(2),
	datab => \U0|tmp\(3),
	datac => \U0|tmp\(1),
	datad => \U0|tmp\(0),
	combout => \U3|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y23_N22
\U3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux3~0_combout\ = (\U0|tmp\(1) & (\U0|tmp\(2) & ((\U0|tmp\(0))))) # (!\U0|tmp\(1) & (!\U0|tmp\(3) & (\U0|tmp\(2) $ (\U0|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|tmp\(2),
	datab => \U0|tmp\(3),
	datac => \U0|tmp\(1),
	datad => \U0|tmp\(0),
	combout => \U3|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y23_N4
\U3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux2~0_combout\ = (\U0|tmp\(1) & (((!\U0|tmp\(3) & \U0|tmp\(0))))) # (!\U0|tmp\(1) & ((\U0|tmp\(2) & (!\U0|tmp\(3))) # (!\U0|tmp\(2) & ((\U0|tmp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|tmp\(2),
	datab => \U0|tmp\(3),
	datac => \U0|tmp\(1),
	datad => \U0|tmp\(0),
	combout => \U3|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y23_N30
\U3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux1~0_combout\ = (\U0|tmp\(0) & (\U0|tmp\(3) $ (((\U0|tmp\(1)) # (!\U0|tmp\(2)))))) # (!\U0|tmp\(0) & (!\U0|tmp\(2) & ((\U0|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|tmp\(2),
	datab => \U0|tmp\(3),
	datac => \U0|tmp\(1),
	datad => \U0|tmp\(0),
	combout => \U3|Mux1~0_combout\);

-- Location: LCCOMB_X18_Y23_N16
\U3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux0~0_combout\ = (\U0|tmp\(0) & ((\U0|tmp\(3)) # (\U0|tmp\(2) $ (\U0|tmp\(1))))) # (!\U0|tmp\(0) & ((\U0|tmp\(1)) # (\U0|tmp\(2) $ (\U0|tmp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|tmp\(2),
	datab => \U0|tmp\(3),
	datac => \U0|tmp\(1),
	datad => \U0|tmp\(0),
	combout => \U3|Mux0~0_combout\);

ww_Carry <= \Carry~output_o\;

ww_output2(0) <= \output2[0]~output_o\;

ww_output2(1) <= \output2[1]~output_o\;

ww_output2(2) <= \output2[2]~output_o\;

ww_output2(3) <= \output2[3]~output_o\;

ww_output2(4) <= \output2[4]~output_o\;

ww_output2(5) <= \output2[5]~output_o\;

ww_output2(6) <= \output2[6]~output_o\;

ww_output3(0) <= \output3[0]~output_o\;

ww_output3(1) <= \output3[1]~output_o\;

ww_output3(2) <= \output3[2]~output_o\;

ww_output3(3) <= \output3[3]~output_o\;

ww_output3(4) <= \output3[4]~output_o\;

ww_output3(5) <= \output3[5]~output_o\;

ww_output3(6) <= \output3[6]~output_o\;
END structure;


