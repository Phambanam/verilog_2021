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

-- DATE "09/24/2021 11:54:25"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab2_4 IS
    PORT (
	sw75 : IN std_logic_vector(2 DOWNTO 0);
	sw20 : IN std_logic_vector(2 DOWNTO 0);
	led : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab2_4;

-- Design Ports Information
-- led[0]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw20[0]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw75[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw20[1]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw20[2]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw75[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw75[2]	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab2_4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw75 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_sw20 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(7 DOWNTO 0);
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \led[6]~output_o\ : std_logic;
SIGNAL \led[7]~output_o\ : std_logic;
SIGNAL \sw20[0]~input_o\ : std_logic;
SIGNAL \sw75[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \sw20[1]~input_o\ : std_logic;
SIGNAL \Mult1|mult_core|mul_lfrg_first_mod|out_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \sw20[2]~input_o\ : std_logic;
SIGNAL \Mult2|mult_core|$00035|left_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult2|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult2|mult_core|$00031|out_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult1|mult_core|$00035|_~0_combout\ : std_logic;
SIGNAL \sw75[1]~input_o\ : std_logic;
SIGNAL \Mult1|mult_core|mul_lfrg_first_mod|out_bit[1]~1_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|_~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \sw75[2]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|$00035|left_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|$00031|out_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Mult2|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult2|mult_core|$00035|left_bit[0]~1_combout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult1|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|mul_lfrg_first_mod|out_bit[2]~2_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|_~1_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|$00035|left_bit[0]~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Mult1|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|_~2_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|_~3_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult1|mult_core|mul_lfrg_last_mod|left_bit[2]~2_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|booth_adder_right|auto_generated|sum_eqn[0]~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;

BEGIN

ww_sw75 <= sw75;
ww_sw20 <= sw20;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X13_Y24_N16
\led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~0_combout\,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~2_combout\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~4_combout\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~6_combout\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~8_combout\,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\led[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~10_combout\,
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\led[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~12_combout\,
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\led[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~14_combout\,
	devoe => ww_devoe,
	o => \led[7]~output_o\);

-- Location: IOIBUF_X3_Y0_N1
\sw20[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw20(0),
	o => \sw20[0]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\sw75[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw75(0),
	o => \sw75[0]~input_o\);

-- Location: LCCOMB_X14_Y3_N2
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\sw20[0]~input_o\ & (\sw75[0]~input_o\ $ (VCC))) # (!\sw20[0]~input_o\ & (\sw75[0]~input_o\ & VCC))
-- \Add1~1\ = CARRY((\sw20[0]~input_o\ & \sw75[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw20[0]~input_o\,
	datab => \sw75[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X0_Y5_N15
\sw20[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw20(1),
	o => \sw20[1]~input_o\);

-- Location: LCCOMB_X2_Y3_N0
\Mult1|mult_core|mul_lfrg_first_mod|out_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|mul_lfrg_first_mod|out_bit[0]~0_combout\ = \sw20[1]~input_o\ $ (((\sw75[0]~input_o\ & \sw20[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw20[1]~input_o\,
	datac => \sw75[0]~input_o\,
	datad => \sw20[0]~input_o\,
	combout => \Mult1|mult_core|mul_lfrg_first_mod|out_bit[0]~0_combout\);

-- Location: LCCOMB_X2_Y3_N12
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\Mult1|mult_core|mul_lfrg_first_mod|out_bit[0]~0_combout\ & (\sw20[1]~input_o\ $ (VCC))) # (!\Mult1|mult_core|mul_lfrg_first_mod|out_bit[0]~0_combout\ & (\sw20[1]~input_o\ & VCC))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\Mult1|mult_core|mul_lfrg_first_mod|out_bit[0]~0_combout\ & \sw20[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|mul_lfrg_first_mod|out_bit[0]~0_combout\,
	datab => \sw20[1]~input_o\,
	datad => VCC,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X14_Y3_N4
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (!\Add1~1\)) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: IOIBUF_X13_Y0_N15
\sw20[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw20(2),
	o => \sw20[2]~input_o\);

-- Location: LCCOMB_X16_Y3_N10
\Mult2|mult_core|$00035|left_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|$00035|left_bit[0]~0_combout\ = (\sw20[1]~input_o\ & (\sw20[0]~input_o\ & !\sw20[2]~input_o\)) # (!\sw20[1]~input_o\ & (!\sw20[0]~input_o\ & \sw20[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw20[1]~input_o\,
	datac => \sw20[0]~input_o\,
	datad => \sw20[2]~input_o\,
	combout => \Mult2|mult_core|$00035|left_bit[0]~0_combout\);

-- Location: LCCOMB_X16_Y3_N12
\Mult2|mult_core|mul_lfrg_first_mod|right_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ = (\sw20[1]~input_o\ & !\sw20[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw20[1]~input_o\,
	datac => \sw20[0]~input_o\,
	combout => \Mult2|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\);

-- Location: LCCOMB_X16_Y3_N6
\Mult2|mult_core|$00031|out_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|$00031|out_bit[0]~0_combout\ = \sw20[1]~input_o\ $ (\sw20[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw20[1]~input_o\,
	datac => \sw20[0]~input_o\,
	combout => \Mult2|mult_core|$00031|out_bit[0]~0_combout\);

-- Location: LCCOMB_X16_Y3_N14
\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ = CARRY((\Mult2|mult_core|$00031|out_bit[0]~0_combout\ & \sw20[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|$00031|out_bit[0]~0_combout\,
	datab => \sw20[1]~input_o\,
	datad => VCC,
	cout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X16_Y3_N16
\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\ = CARRY((!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\) # (!\Mult2|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\,
	datad => VCC,
	cin => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\,
	cout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X16_Y3_N18
\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = (((!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\))) # (GND)
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY(\Mult2|mult_core|$00035|left_bit[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|$00035|left_bit[0]~0_combout\,
	datad => VCC,
	cin => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\,
	combout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X16_Y3_N8
\Mult1|mult_core|$00035|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|$00035|_~0_combout\ = (!\sw20[1]~input_o\ & \sw20[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw20[1]~input_o\,
	datad => \sw20[2]~input_o\,
	combout => \Mult1|mult_core|$00035|_~0_combout\);

-- Location: IOIBUF_X0_Y8_N15
\sw75[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw75(1),
	o => \sw75[1]~input_o\);

-- Location: LCCOMB_X2_Y3_N2
\Mult1|mult_core|mul_lfrg_first_mod|out_bit[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|mul_lfrg_first_mod|out_bit[1]~1_combout\ = (\sw20[0]~input_o\ & (\sw75[1]~input_o\ $ ((\sw20[1]~input_o\)))) # (!\sw20[0]~input_o\ & (((\sw20[1]~input_o\ & !\sw75[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw75[1]~input_o\,
	datab => \sw20[1]~input_o\,
	datac => \sw75[0]~input_o\,
	datad => \sw20[0]~input_o\,
	combout => \Mult1|mult_core|mul_lfrg_first_mod|out_bit[1]~1_combout\);

-- Location: LCCOMB_X2_Y3_N4
\Mult1|mult_core|padder|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|_~0_combout\ = \Mult1|mult_core|mul_lfrg_first_mod|out_bit[1]~1_combout\ $ (((!\sw20[1]~input_o\ & \sw20[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw20[1]~input_o\,
	datac => \sw20[2]~input_o\,
	datad => \Mult1|mult_core|mul_lfrg_first_mod|out_bit[1]~1_combout\,
	combout => \Mult1|mult_core|padder|_~0_combout\);

-- Location: LCCOMB_X2_Y3_N14
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult1|mult_core|$00035|_~0_combout\ & ((\Mult1|mult_core|padder|_~0_combout\ & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\Mult1|mult_core|padder|_~0_combout\ & 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Mult1|mult_core|$00035|_~0_combout\ & ((\Mult1|mult_core|padder|_~0_combout\ & (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult1|mult_core|padder|_~0_combout\ & 
-- ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult1|mult_core|$00035|_~0_combout\ & (!\Mult1|mult_core|padder|_~0_combout\ & !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult1|mult_core|$00035|_~0_combout\ & 
-- ((!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\Mult1|mult_core|padder|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|$00035|_~0_combout\,
	datab => \Mult1|mult_core|padder|_~0_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: IOIBUF_X0_Y11_N8
\sw75[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw75(2),
	o => \sw75[2]~input_o\);

-- Location: LCCOMB_X14_Y4_N0
\Mult0|mult_core|$00035|left_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|$00035|left_bit[0]~0_combout\ = (\sw75[2]~input_o\ & (!\sw75[1]~input_o\ & !\sw75[0]~input_o\)) # (!\sw75[2]~input_o\ & (\sw75[1]~input_o\ & \sw75[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw75[2]~input_o\,
	datac => \sw75[1]~input_o\,
	datad => \sw75[0]~input_o\,
	combout => \Mult0|mult_core|$00035|left_bit[0]~0_combout\);

-- Location: LCCOMB_X14_Y4_N26
\Mult0|mult_core|mul_lfrg_first_mod|right_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ = (\sw75[1]~input_o\ & !\sw75[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw75[1]~input_o\,
	datad => \sw75[0]~input_o\,
	combout => \Mult0|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\);

-- Location: LCCOMB_X14_Y4_N20
\Mult0|mult_core|$00031|out_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|$00031|out_bit[0]~0_combout\ = \sw75[1]~input_o\ $ (\sw75[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw75[1]~input_o\,
	datad => \sw75[0]~input_o\,
	combout => \Mult0|mult_core|$00031|out_bit[0]~0_combout\);

-- Location: LCCOMB_X14_Y4_N6
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ = CARRY((\Mult0|mult_core|$00031|out_bit[0]~0_combout\ & \sw75[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|$00031|out_bit[0]~0_combout\,
	datab => \sw75[1]~input_o\,
	datad => VCC,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X14_Y4_N8
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\ = CARRY((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\) # (!\Mult0|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X14_Y4_N10
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = (((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY(\Mult0|mult_core|$00035|left_bit[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|$00035|left_bit[0]~0_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X14_Y3_N18
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ $ (VCC))) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & 
-- (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & VCC))
-- \Add0~1\ = CARRY((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X14_Y3_N6
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ $ (\Add0~0_combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\Add0~0_combout\) # (!\Add1~3\))) # (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (\Add0~0_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X16_Y3_N28
\Mult2|mult_core|mul_lfrg_last_mod|left_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ = \sw20[1]~input_o\ $ (\sw20[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw20[1]~input_o\,
	datad => \sw20[2]~input_o\,
	combout => \Mult2|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\);

-- Location: LCCOMB_X16_Y3_N2
\Mult2|mult_core|$00035|left_bit[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|$00035|left_bit[0]~1_combout\ = (\sw20[1]~input_o\ & !\sw20[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw20[1]~input_o\,
	datad => \sw20[2]~input_o\,
	combout => \Mult2|mult_core|$00035|left_bit[0]~1_combout\);

-- Location: LCCOMB_X16_Y3_N20
\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Mult2|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & ((\Mult2|mult_core|$00035|left_bit[0]~1_combout\ & (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\Mult2|mult_core|$00035|left_bit[0]~1_combout\ & (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\Mult2|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & ((\Mult2|mult_core|$00035|left_bit[0]~1_combout\ & 
-- (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult2|mult_core|$00035|left_bit[0]~1_combout\ & ((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult2|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & (!\Mult2|mult_core|$00035|left_bit[0]~1_combout\ & !\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\Mult2|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & ((!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult2|mult_core|$00035|left_bit[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\,
	datab => \Mult2|mult_core|$00035|left_bit[0]~1_combout\,
	datad => VCC,
	cin => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X16_Y3_N0
\Mult1|mult_core|mul_lfrg_last_mod|left_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ = (\sw20[2]~input_o\ & (!\sw20[1]~input_o\ & !\sw75[0]~input_o\)) # (!\sw20[2]~input_o\ & (\sw20[1]~input_o\ & \sw75[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw20[2]~input_o\,
	datab => \sw20[1]~input_o\,
	datac => \sw75[0]~input_o\,
	combout => \Mult1|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\);

-- Location: LCCOMB_X2_Y3_N30
\Mult1|mult_core|mul_lfrg_first_mod|out_bit[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|mul_lfrg_first_mod|out_bit[2]~2_combout\ = (\sw20[0]~input_o\ & ((\sw20[1]~input_o\ $ (\sw75[2]~input_o\)))) # (!\sw20[0]~input_o\ & (!\sw75[1]~input_o\ & (\sw20[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw75[1]~input_o\,
	datab => \sw20[1]~input_o\,
	datac => \sw75[2]~input_o\,
	datad => \sw20[0]~input_o\,
	combout => \Mult1|mult_core|mul_lfrg_first_mod|out_bit[2]~2_combout\);

-- Location: LCCOMB_X2_Y3_N8
\Mult1|mult_core|padder|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|_~1_combout\ = \Mult1|mult_core|mul_lfrg_first_mod|out_bit[2]~2_combout\ $ (((\sw20[2]~input_o\ & (!\sw20[1]~input_o\ & \Mult1|mult_core|mul_lfrg_first_mod|out_bit[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw20[2]~input_o\,
	datab => \sw20[1]~input_o\,
	datac => \Mult1|mult_core|mul_lfrg_first_mod|out_bit[2]~2_combout\,
	datad => \Mult1|mult_core|mul_lfrg_first_mod|out_bit[1]~1_combout\,
	combout => \Mult1|mult_core|padder|_~1_combout\);

-- Location: LCCOMB_X2_Y3_N16
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult1|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ $ (\Mult1|mult_core|padder|_~1_combout\ $ (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult1|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & ((\Mult1|mult_core|padder|_~1_combout\) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\Mult1|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & (\Mult1|mult_core|padder|_~1_combout\ & !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\,
	datab => \Mult1|mult_core|padder|_~1_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X14_Y4_N28
\Mult0|mult_core|mul_lfrg_last_mod|left_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ = \sw75[1]~input_o\ $ (\sw75[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw75[1]~input_o\,
	datad => \sw75[2]~input_o\,
	combout => \Mult0|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\);

-- Location: LCCOMB_X14_Y4_N2
\Mult0|mult_core|$00035|left_bit[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|$00035|left_bit[0]~1_combout\ = (\sw75[1]~input_o\ & !\sw75[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw75[1]~input_o\,
	datad => \sw75[2]~input_o\,
	combout => \Mult0|mult_core|$00035|left_bit[0]~1_combout\);

-- Location: LCCOMB_X14_Y4_N12
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Mult0|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & ((\Mult0|mult_core|$00035|left_bit[0]~1_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\Mult0|mult_core|$00035|left_bit[0]~1_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\Mult0|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & ((\Mult0|mult_core|$00035|left_bit[0]~1_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|$00035|left_bit[0]~1_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult0|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & (!\Mult0|mult_core|$00035|left_bit[0]~1_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\Mult0|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult0|mult_core|$00035|left_bit[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\,
	datab => \Mult0|mult_core|$00035|left_bit[0]~1_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X14_Y3_N20
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\Add0~1\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & 
-- (!\Add0~1\)))) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\Add0~1\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Add0~1\) # 
-- (GND)))))
-- \Add0~3\ = CARRY((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & !\Add0~1\)) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((!\Add0~1\) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X14_Y3_N8
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Add0~2_combout\ & (\Add1~5\ & VCC)) # (!\Add0~2_combout\ & (!\Add1~5\)))) # (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Add0~2_combout\ & 
-- (!\Add1~5\)) # (!\Add0~2_combout\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\Add0~2_combout\ & !\Add1~5\)) # (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((!\Add1~5\) # (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X2_Y3_N10
\Mult1|mult_core|mul_lfrg_last_mod|left_bit[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ = (\sw20[2]~input_o\ & (!\sw20[1]~input_o\ & !\sw75[1]~input_o\)) # (!\sw20[2]~input_o\ & (\sw20[1]~input_o\ & \sw75[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw20[2]~input_o\,
	datab => \sw20[1]~input_o\,
	datac => \sw75[1]~input_o\,
	combout => \Mult1|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\);

-- Location: LCCOMB_X2_Y3_N26
\Mult1|mult_core|padder|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|_~2_combout\ = (\sw20[2]~input_o\ & (!\sw20[1]~input_o\ & (\Mult1|mult_core|mul_lfrg_first_mod|out_bit[2]~2_combout\ & \Mult1|mult_core|mul_lfrg_first_mod|out_bit[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw20[2]~input_o\,
	datab => \sw20[1]~input_o\,
	datac => \Mult1|mult_core|mul_lfrg_first_mod|out_bit[2]~2_combout\,
	datad => \Mult1|mult_core|mul_lfrg_first_mod|out_bit[1]~1_combout\,
	combout => \Mult1|mult_core|padder|_~2_combout\);

-- Location: LCCOMB_X2_Y3_N24
\Mult1|mult_core|padder|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|_~3_combout\ = \Mult1|mult_core|padder|_~2_combout\ $ (((\sw20[1]~input_o\ & (!\sw75[2]~input_o\)) # (!\sw20[1]~input_o\ & (\sw75[2]~input_o\ & \sw20[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|_~2_combout\,
	datab => \sw20[1]~input_o\,
	datac => \sw75[2]~input_o\,
	datad => \sw20[0]~input_o\,
	combout => \Mult1|mult_core|padder|_~3_combout\);

-- Location: LCCOMB_X2_Y3_N18
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Mult1|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ & ((\Mult1|mult_core|padder|_~3_combout\ & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\Mult1|mult_core|padder|_~3_combout\ & (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\Mult1|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ & ((\Mult1|mult_core|padder|_~3_combout\ & 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult1|mult_core|padder|_~3_combout\ & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult1|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ & (!\Mult1|mult_core|padder|_~3_combout\ & !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\Mult1|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ & ((!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult1|mult_core|padder|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\,
	datab => \Mult1|mult_core|padder|_~3_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X14_Y4_N14
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = (\Mult0|mult_core|$00035|left_bit[0]~1_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ $ (GND))) # (!\Mult0|mult_core|$00035|left_bit[0]~1_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult0|mult_core|$00035|left_bit[0]~1_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|$00035|left_bit[0]~1_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X14_Y3_N22
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\) # (!\Add0~3\))) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & 
-- (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X16_Y3_N22
\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = (\Mult2|mult_core|$00035|left_bit[0]~1_combout\ & (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\ $ (GND))) # (!\Mult2|mult_core|$00035|left_bit[0]~1_combout\ & 
-- (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\ & VCC))
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult2|mult_core|$00035|left_bit[0]~1_combout\ & !\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|mult_core|$00035|left_bit[0]~1_combout\,
	datad => VCC,
	cin => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X14_Y3_N10
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\Add0~4_combout\ $ (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\Add0~4_combout\ & ((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\) # (!\Add1~7\))) # (!\Add0~4_combout\ & (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X14_Y4_N16
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ $ (\Mult0|mult_core|$00035|left_bit[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|mult_core|$00035|left_bit[0]~1_combout\,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X2_Y3_N6
\Mult1|mult_core|mul_lfrg_last_mod|left_bit[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|mul_lfrg_last_mod|left_bit[2]~2_combout\ = (\sw20[2]~input_o\ & (!\sw20[1]~input_o\ & !\sw75[2]~input_o\)) # (!\sw20[2]~input_o\ & (\sw20[1]~input_o\ & \sw75[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw20[2]~input_o\,
	datab => \sw20[1]~input_o\,
	datac => \sw75[2]~input_o\,
	combout => \Mult1|mult_core|mul_lfrg_last_mod|left_bit[2]~2_combout\);

-- Location: LCCOMB_X2_Y3_N28
\Mult1|mult_core|padder|booth_adder_right|auto_generated|sum_eqn[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|booth_adder_right|auto_generated|sum_eqn[0]~0_combout\ = (!\Mult1|mult_core|padder|_~2_combout\ & ((\sw20[1]~input_o\ & (!\sw75[2]~input_o\)) # (!\sw20[1]~input_o\ & (\sw75[2]~input_o\ & \sw20[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|_~2_combout\,
	datab => \sw20[1]~input_o\,
	datac => \sw75[2]~input_o\,
	datad => \sw20[0]~input_o\,
	combout => \Mult1|mult_core|padder|booth_adder_right|auto_generated|sum_eqn[0]~0_combout\);

-- Location: LCCOMB_X2_Y3_N20
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\Mult1|mult_core|mul_lfrg_last_mod|left_bit[2]~2_combout\ $ (\Mult1|mult_core|padder|booth_adder_right|auto_generated|sum_eqn[0]~0_combout\ $ 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult1|mult_core|mul_lfrg_last_mod|left_bit[2]~2_combout\ & ((\Mult1|mult_core|padder|booth_adder_right|auto_generated|sum_eqn[0]~0_combout\) # 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # (!\Mult1|mult_core|mul_lfrg_last_mod|left_bit[2]~2_combout\ & (\Mult1|mult_core|padder|booth_adder_right|auto_generated|sum_eqn[0]~0_combout\ & 
-- !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|mul_lfrg_last_mod|left_bit[2]~2_combout\,
	datab => \Mult1|mult_core|padder|booth_adder_right|auto_generated|sum_eqn[0]~0_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X14_Y3_N24
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\Add0~5\ & VCC)) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & 
-- (!\Add0~5\)))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (!\Add0~5\)) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\Add0~5\) # 
-- (GND)))))
-- \Add0~7\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & !\Add0~5\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((!\Add0~5\) # 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X16_Y3_N24
\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\ $ (\Mult2|mult_core|$00035|left_bit[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult2|mult_core|$00035|left_bit[0]~1_combout\,
	cin => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X14_Y3_N12
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add0~6_combout\ & ((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (\Add1~9\ & VCC)) # (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\Add1~9\)))) # (!\Add0~6_combout\ & 
-- ((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\Add1~9\)) # (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\Add0~6_combout\ & (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & !\Add1~9\)) # (!\Add0~6_combout\ & ((!\Add1~9\) # (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X2_Y3_N22
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = \Mult1|mult_core|padder|booth_adder_right|auto_generated|sum_eqn[0]~0_combout\ $ (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\ $ 
-- (\Mult1|mult_core|mul_lfrg_last_mod|left_bit[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|mult_core|padder|booth_adder_right|auto_generated|sum_eqn[0]~0_combout\,
	datad => \Mult1|mult_core|mul_lfrg_last_mod|left_bit[2]~2_combout\,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X14_Y3_N26
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ $ (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\) # (!\Add0~7\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X14_Y3_N14
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\Add0~8_combout\ $ (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\Add0~8_combout\ & ((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\) # (!\Add1~11\))) # (!\Add0~8_combout\ & (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X14_Y3_N28
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ $ (\Add0~9\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X14_Y3_N16
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add0~10_combout\ $ (\Add1~13\ $ (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datad => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(5) <= \led[5]~output_o\;

ww_led(6) <= \led[6]~output_o\;

ww_led(7) <= \led[7]~output_o\;
END structure;


