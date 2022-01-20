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

-- DATE "09/23/2021 19:19:06"

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

ENTITY 	lab2_1 IS
    PORT (
	sw74 : IN std_logic_vector(3 DOWNTO 0);
	sw30 : IN std_logic_vector(3 DOWNTO 0);
	key : IN std_logic;
	led : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab2_1;

-- Design Ports Information
-- led[0]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw30[1]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw30[0]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw74[0]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw74[1]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw30[3]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw30[2]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw74[2]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw74[3]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab2_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw74 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw30 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_key : std_logic;
SIGNAL ww_led : std_logic_vector(7 DOWNTO 0);
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \led[6]~output_o\ : std_logic;
SIGNAL \led[7]~output_o\ : std_logic;
SIGNAL \sw30[0]~input_o\ : std_logic;
SIGNAL \sw74[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \key~input_o\ : std_logic;
SIGNAL \sw30[1]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[0]~0_combout\ : std_logic;
SIGNAL \led~0_combout\ : std_logic;
SIGNAL \sw74[1]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[0]~1\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[1]~2_combout\ : std_logic;
SIGNAL \led~1_combout\ : std_logic;
SIGNAL \sw74[2]~input_o\ : std_logic;
SIGNAL \sw30[2]~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \sw30[3]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|cs3a[1]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[1]~3\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[2]~4_combout\ : std_logic;
SIGNAL \led~2_combout\ : std_logic;
SIGNAL \sw74[3]~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[0]~1\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[1]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[2]~5\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[3]~6_combout\ : std_logic;
SIGNAL \led~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[1]~3\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[2]~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[3]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[4]~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \led~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[2]~5\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[3]~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[4]~9\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[5]~10_combout\ : std_logic;
SIGNAL \led~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[3]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[4]~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[5]~11\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[6]~12_combout\ : std_logic;
SIGNAL \led~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[6]~13\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[7]~14_combout\ : std_logic;
SIGNAL \led~7_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le4a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le2a\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_sw74 <= sw74;
ww_sw30 <= sw30;
ww_key <= key;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X23_Y0_N16
\led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~0_combout\,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~1_combout\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~2_combout\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~3_combout\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~4_combout\,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\led[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~5_combout\,
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\led[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~6_combout\,
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\led[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~7_combout\,
	devoe => ww_devoe,
	o => \led[7]~output_o\);

-- Location: IOIBUF_X18_Y0_N22
\sw30[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw30(0),
	o => \sw30[0]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\sw74[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw74(0),
	o => \sw74[0]~input_o\);

-- Location: LCCOMB_X18_Y20_N14
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\sw30[0]~input_o\ & (\sw74[0]~input_o\ $ (VCC))) # (!\sw30[0]~input_o\ & (\sw74[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\sw30[0]~input_o\ & \sw74[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[0]~input_o\,
	datab => \sw74[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X18_Y24_N22
\key~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key,
	o => \key~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\sw30[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw30(1),
	o => \sw30[1]~input_o\);

-- Location: LCCOMB_X22_Y20_N0
\Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(0) = LCELL(\sw30[1]~input_o\ $ (((\sw30[0]~input_o\ & \sw74[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[0]~input_o\,
	datac => \sw74[0]~input_o\,
	datad => \sw30[1]~input_o\,
	combout => \Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X22_Y20_N2
\Mult0|auto_generated|add6_result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[0]~0_combout\ = (\sw30[1]~input_o\ & (\Mult0|auto_generated|le5a\(0) $ (VCC))) # (!\sw30[1]~input_o\ & (\Mult0|auto_generated|le5a\(0) & VCC))
-- \Mult0|auto_generated|add6_result[0]~1\ = CARRY((\sw30[1]~input_o\ & \Mult0|auto_generated|le5a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[1]~input_o\,
	datab => \Mult0|auto_generated|le5a\(0),
	datad => VCC,
	combout => \Mult0|auto_generated|add6_result[0]~0_combout\,
	cout => \Mult0|auto_generated|add6_result[0]~1\);

-- Location: LCCOMB_X21_Y17_N0
\led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~0_combout\ = (\key~input_o\ & ((\Mult0|auto_generated|add6_result[0]~0_combout\))) # (!\key~input_o\ & (\Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datac => \key~input_o\,
	datad => \Mult0|auto_generated|add6_result[0]~0_combout\,
	combout => \led~0_combout\);

-- Location: IOIBUF_X18_Y24_N15
\sw74[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw74(1),
	o => \sw74[1]~input_o\);

-- Location: LCCOMB_X18_Y20_N16
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\sw30[1]~input_o\ & ((\sw74[1]~input_o\ & (\Add0~1\ & VCC)) # (!\sw74[1]~input_o\ & (!\Add0~1\)))) # (!\sw30[1]~input_o\ & ((\sw74[1]~input_o\ & (!\Add0~1\)) # (!\sw74[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\sw30[1]~input_o\ & (!\sw74[1]~input_o\ & !\Add0~1\)) # (!\sw30[1]~input_o\ & ((!\Add0~1\) # (!\sw74[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[1]~input_o\,
	datab => \sw74[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X22_Y20_N18
\Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(1) = LCELL((\sw30[0]~input_o\ & (\sw74[1]~input_o\ $ (((\sw30[1]~input_o\))))) # (!\sw30[0]~input_o\ & (((!\sw74[0]~input_o\ & \sw30[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[0]~input_o\,
	datab => \sw74[1]~input_o\,
	datac => \sw74[0]~input_o\,
	datad => \sw30[1]~input_o\,
	combout => \Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X22_Y20_N4
\Mult0|auto_generated|add6_result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[1]~2_combout\ = (\Mult0|auto_generated|le5a\(1) & (!\Mult0|auto_generated|add6_result[0]~1\)) # (!\Mult0|auto_generated|le5a\(1) & ((\Mult0|auto_generated|add6_result[0]~1\) # (GND)))
-- \Mult0|auto_generated|add6_result[1]~3\ = CARRY((!\Mult0|auto_generated|add6_result[0]~1\) # (!\Mult0|auto_generated|le5a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[0]~1\,
	combout => \Mult0|auto_generated|add6_result[1]~2_combout\,
	cout => \Mult0|auto_generated|add6_result[1]~3\);

-- Location: LCCOMB_X21_Y17_N2
\led~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~1_combout\ = (\key~input_o\ & ((\Mult0|auto_generated|add6_result[1]~2_combout\))) # (!\key~input_o\ & (\Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key~input_o\,
	datac => \Add0~2_combout\,
	datad => \Mult0|auto_generated|add6_result[1]~2_combout\,
	combout => \led~1_combout\);

-- Location: IOIBUF_X30_Y0_N8
\sw74[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw74(2),
	o => \sw74[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\sw30[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw30(2),
	o => \sw30[2]~input_o\);

-- Location: LCCOMB_X18_Y20_N18
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\sw74[2]~input_o\ $ (\sw30[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\sw74[2]~input_o\ & ((\sw30[2]~input_o\) # (!\Add0~3\))) # (!\sw74[2]~input_o\ & (\sw30[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw74[2]~input_o\,
	datab => \sw30[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: IOIBUF_X34_Y19_N15
\sw30[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw30(3),
	o => \sw30[3]~input_o\);

-- Location: LCCOMB_X22_Y20_N20
\Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(2) = LCELL((\sw30[0]~input_o\ & (\sw74[2]~input_o\ $ (((\sw30[1]~input_o\))))) # (!\sw30[0]~input_o\ & (((!\sw74[1]~input_o\ & \sw30[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[0]~input_o\,
	datab => \sw74[2]~input_o\,
	datac => \sw74[1]~input_o\,
	datad => \sw30[1]~input_o\,
	combout => \Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X22_Y20_N22
\Mult0|auto_generated|add10_result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add10_result[0]~0_combout\ = (\sw30[3]~input_o\ & (\Mult0|auto_generated|le5a\(2) $ (VCC))) # (!\sw30[3]~input_o\ & (\Mult0|auto_generated|le5a\(2) & VCC))
-- \Mult0|auto_generated|add10_result[0]~1\ = CARRY((\sw30[3]~input_o\ & \Mult0|auto_generated|le5a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[3]~input_o\,
	datab => \Mult0|auto_generated|le5a\(2),
	datad => VCC,
	combout => \Mult0|auto_generated|add10_result[0]~0_combout\,
	cout => \Mult0|auto_generated|add10_result[0]~1\);

-- Location: LCCOMB_X18_Y20_N12
\Mult0|auto_generated|le2a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le2a\(0) = LCELL((\sw30[3]~input_o\ & (\sw30[2]~input_o\ $ (!\sw30[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[2]~input_o\,
	datac => \sw30[3]~input_o\,
	datad => \sw30[1]~input_o\,
	combout => \Mult0|auto_generated|le2a\(0));

-- Location: LCCOMB_X18_Y20_N24
\Mult0|auto_generated|cs3a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|cs3a[1]~0_combout\ = \sw30[2]~input_o\ $ (\sw30[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw30[2]~input_o\,
	datad => \sw30[1]~input_o\,
	combout => \Mult0|auto_generated|cs3a[1]~0_combout\);

-- Location: LCCOMB_X18_Y20_N26
\Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(0) = LCELL((\Mult0|auto_generated|le2a\(0)) # ((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\sw74[0]~input_o\ $ (\sw30[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le2a\(0),
	datab => \sw74[0]~input_o\,
	datac => \sw30[3]~input_o\,
	datad => \Mult0|auto_generated|cs3a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X22_Y20_N6
\Mult0|auto_generated|add6_result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[2]~4_combout\ = ((\Mult0|auto_generated|add10_result[0]~0_combout\ $ (\Mult0|auto_generated|le4a\(0) $ (!\Mult0|auto_generated|add6_result[1]~3\)))) # (GND)
-- \Mult0|auto_generated|add6_result[2]~5\ = CARRY((\Mult0|auto_generated|add10_result[0]~0_combout\ & ((\Mult0|auto_generated|le4a\(0)) # (!\Mult0|auto_generated|add6_result[1]~3\))) # (!\Mult0|auto_generated|add10_result[0]~0_combout\ & 
-- (\Mult0|auto_generated|le4a\(0) & !\Mult0|auto_generated|add6_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add10_result[0]~0_combout\,
	datab => \Mult0|auto_generated|le4a\(0),
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[1]~3\,
	combout => \Mult0|auto_generated|add6_result[2]~4_combout\,
	cout => \Mult0|auto_generated|add6_result[2]~5\);

-- Location: LCCOMB_X21_Y17_N28
\led~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~2_combout\ = (\key~input_o\ & ((\Mult0|auto_generated|add6_result[2]~4_combout\))) # (!\key~input_o\ & (\Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datac => \key~input_o\,
	datad => \Mult0|auto_generated|add6_result[2]~4_combout\,
	combout => \led~2_combout\);

-- Location: IOIBUF_X23_Y24_N15
\sw74[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw74(3),
	o => \sw74[3]~input_o\);

-- Location: LCCOMB_X18_Y20_N20
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\sw74[3]~input_o\ & ((\sw30[3]~input_o\ & (\Add0~5\ & VCC)) # (!\sw30[3]~input_o\ & (!\Add0~5\)))) # (!\sw74[3]~input_o\ & ((\sw30[3]~input_o\ & (!\Add0~5\)) # (!\sw30[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\sw74[3]~input_o\ & (!\sw30[3]~input_o\ & !\Add0~5\)) # (!\sw74[3]~input_o\ & ((!\Add0~5\) # (!\sw30[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw74[3]~input_o\,
	datab => \sw30[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X18_Y20_N0
\Mult0|auto_generated|le2a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le2a\(1) = LCELL((\sw74[0]~input_o\ & (\sw30[2]~input_o\ & ((\sw30[1]~input_o\)))) # (!\sw74[0]~input_o\ & (\sw30[3]~input_o\ & (\sw30[2]~input_o\ $ (!\sw30[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[2]~input_o\,
	datab => \sw74[0]~input_o\,
	datac => \sw30[3]~input_o\,
	datad => \sw30[1]~input_o\,
	combout => \Mult0|auto_generated|le2a\(1));

-- Location: LCCOMB_X18_Y20_N28
\Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(1) = LCELL((\Mult0|auto_generated|le2a\(1)) # ((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\sw74[1]~input_o\ $ (\sw30[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le2a\(1),
	datab => \sw74[1]~input_o\,
	datac => \sw30[3]~input_o\,
	datad => \Mult0|auto_generated|cs3a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X22_Y15_N0
\Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(3) = LCELL((\sw30[0]~input_o\ & (\sw30[1]~input_o\ $ ((\sw74[3]~input_o\)))) # (!\sw30[0]~input_o\ & (\sw30[1]~input_o\ & ((!\sw74[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[1]~input_o\,
	datab => \sw74[3]~input_o\,
	datac => \sw74[2]~input_o\,
	datad => \sw30[0]~input_o\,
	combout => \Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X22_Y20_N24
\Mult0|auto_generated|add10_result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add10_result[1]~2_combout\ = (\Mult0|auto_generated|le5a\(3) & (!\Mult0|auto_generated|add10_result[0]~1\)) # (!\Mult0|auto_generated|le5a\(3) & ((\Mult0|auto_generated|add10_result[0]~1\) # (GND)))
-- \Mult0|auto_generated|add10_result[1]~3\ = CARRY((!\Mult0|auto_generated|add10_result[0]~1\) # (!\Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le5a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|add10_result[0]~1\,
	combout => \Mult0|auto_generated|add10_result[1]~2_combout\,
	cout => \Mult0|auto_generated|add10_result[1]~3\);

-- Location: LCCOMB_X22_Y20_N8
\Mult0|auto_generated|add6_result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[3]~6_combout\ = (\Mult0|auto_generated|le4a\(1) & ((\Mult0|auto_generated|add10_result[1]~2_combout\ & (\Mult0|auto_generated|add6_result[2]~5\ & VCC)) # (!\Mult0|auto_generated|add10_result[1]~2_combout\ & 
-- (!\Mult0|auto_generated|add6_result[2]~5\)))) # (!\Mult0|auto_generated|le4a\(1) & ((\Mult0|auto_generated|add10_result[1]~2_combout\ & (!\Mult0|auto_generated|add6_result[2]~5\)) # (!\Mult0|auto_generated|add10_result[1]~2_combout\ & 
-- ((\Mult0|auto_generated|add6_result[2]~5\) # (GND)))))
-- \Mult0|auto_generated|add6_result[3]~7\ = CARRY((\Mult0|auto_generated|le4a\(1) & (!\Mult0|auto_generated|add10_result[1]~2_combout\ & !\Mult0|auto_generated|add6_result[2]~5\)) # (!\Mult0|auto_generated|le4a\(1) & 
-- ((!\Mult0|auto_generated|add6_result[2]~5\) # (!\Mult0|auto_generated|add10_result[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(1),
	datab => \Mult0|auto_generated|add10_result[1]~2_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[2]~5\,
	combout => \Mult0|auto_generated|add6_result[3]~6_combout\,
	cout => \Mult0|auto_generated|add6_result[3]~7\);

-- Location: LCCOMB_X21_Y17_N6
\led~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~3_combout\ = (\key~input_o\ & ((\Mult0|auto_generated|add6_result[3]~6_combout\))) # (!\key~input_o\ & (\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \key~input_o\,
	datac => \Mult0|auto_generated|add6_result[3]~6_combout\,
	combout => \led~3_combout\);

-- Location: LCCOMB_X22_Y15_N2
\Mult0|auto_generated|le5a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(4) = LCELL((\sw74[3]~input_o\ & (\sw30[0]~input_o\ & !\sw30[1]~input_o\)) # (!\sw74[3]~input_o\ & ((\sw30[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[0]~input_o\,
	datab => \sw74[3]~input_o\,
	datac => \sw30[1]~input_o\,
	combout => \Mult0|auto_generated|le5a\(4));

-- Location: LCCOMB_X22_Y20_N26
\Mult0|auto_generated|add10_result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add10_result[2]~4_combout\ = (\Mult0|auto_generated|le5a\(4) & (\Mult0|auto_generated|add10_result[1]~3\ $ (GND))) # (!\Mult0|auto_generated|le5a\(4) & ((GND) # (!\Mult0|auto_generated|add10_result[1]~3\)))
-- \Mult0|auto_generated|add10_result[2]~5\ = CARRY((!\Mult0|auto_generated|add10_result[1]~3\) # (!\Mult0|auto_generated|le5a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le5a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|add10_result[1]~3\,
	combout => \Mult0|auto_generated|add10_result[2]~4_combout\,
	cout => \Mult0|auto_generated|add10_result[2]~5\);

-- Location: LCCOMB_X18_Y20_N10
\Mult0|auto_generated|le2a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le2a\(2) = LCELL((\sw74[1]~input_o\ & (\sw30[2]~input_o\ & ((\sw30[1]~input_o\)))) # (!\sw74[1]~input_o\ & (\sw30[3]~input_o\ & (\sw30[2]~input_o\ $ (!\sw30[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[2]~input_o\,
	datab => \sw74[1]~input_o\,
	datac => \sw30[3]~input_o\,
	datad => \sw30[1]~input_o\,
	combout => \Mult0|auto_generated|le2a\(2));

-- Location: LCCOMB_X18_Y20_N6
\Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(2) = LCELL((\Mult0|auto_generated|le2a\(2)) # ((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\sw74[2]~input_o\ $ (\sw30[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw74[2]~input_o\,
	datab => \Mult0|auto_generated|cs3a[1]~0_combout\,
	datac => \sw30[3]~input_o\,
	datad => \Mult0|auto_generated|le2a\(2),
	combout => \Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X22_Y20_N10
\Mult0|auto_generated|add6_result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[4]~8_combout\ = ((\Mult0|auto_generated|add10_result[2]~4_combout\ $ (\Mult0|auto_generated|le4a\(2) $ (!\Mult0|auto_generated|add6_result[3]~7\)))) # (GND)
-- \Mult0|auto_generated|add6_result[4]~9\ = CARRY((\Mult0|auto_generated|add10_result[2]~4_combout\ & ((\Mult0|auto_generated|le4a\(2)) # (!\Mult0|auto_generated|add6_result[3]~7\))) # (!\Mult0|auto_generated|add10_result[2]~4_combout\ & 
-- (\Mult0|auto_generated|le4a\(2) & !\Mult0|auto_generated|add6_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add10_result[2]~4_combout\,
	datab => \Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[3]~7\,
	combout => \Mult0|auto_generated|add6_result[4]~8_combout\,
	cout => \Mult0|auto_generated|add6_result[4]~9\);

-- Location: LCCOMB_X18_Y20_N22
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \sw74[3]~input_o\ $ (\sw30[3]~input_o\ $ (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw74[3]~input_o\,
	datab => \sw30[3]~input_o\,
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X21_Y17_N8
\led~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~4_combout\ = (\key~input_o\ & (\Mult0|auto_generated|add6_result[4]~8_combout\)) # (!\key~input_o\ & ((\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key~input_o\,
	datac => \Mult0|auto_generated|add6_result[4]~8_combout\,
	datad => \Add0~8_combout\,
	combout => \led~4_combout\);

-- Location: LCCOMB_X18_Y20_N4
\Mult0|auto_generated|le2a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le2a\(3) = LCELL((\sw74[2]~input_o\ & (((\sw30[2]~input_o\ & \sw30[1]~input_o\)))) # (!\sw74[2]~input_o\ & (\sw30[3]~input_o\ & (\sw30[2]~input_o\ $ (!\sw30[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw74[2]~input_o\,
	datab => \sw30[3]~input_o\,
	datac => \sw30[2]~input_o\,
	datad => \sw30[1]~input_o\,
	combout => \Mult0|auto_generated|le2a\(3));

-- Location: LCCOMB_X18_Y20_N8
\Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(3) = LCELL((\Mult0|auto_generated|le2a\(3)) # ((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\sw74[3]~input_o\ $ (\sw30[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw74[3]~input_o\,
	datab => \Mult0|auto_generated|le2a\(3),
	datac => \sw30[3]~input_o\,
	datad => \Mult0|auto_generated|cs3a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X22_Y20_N28
\Mult0|auto_generated|add10_result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add10_result[3]~6_combout\ = !\Mult0|auto_generated|add10_result[2]~5\
-- \Mult0|auto_generated|add10_result[3]~7\ = CARRY(!\Mult0|auto_generated|add10_result[2]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mult0|auto_generated|add10_result[2]~5\,
	combout => \Mult0|auto_generated|add10_result[3]~6_combout\,
	cout => \Mult0|auto_generated|add10_result[3]~7\);

-- Location: LCCOMB_X22_Y20_N12
\Mult0|auto_generated|add6_result[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[5]~10_combout\ = (\Mult0|auto_generated|le4a\(3) & ((\Mult0|auto_generated|add10_result[3]~6_combout\ & (\Mult0|auto_generated|add6_result[4]~9\ & VCC)) # (!\Mult0|auto_generated|add10_result[3]~6_combout\ & 
-- (!\Mult0|auto_generated|add6_result[4]~9\)))) # (!\Mult0|auto_generated|le4a\(3) & ((\Mult0|auto_generated|add10_result[3]~6_combout\ & (!\Mult0|auto_generated|add6_result[4]~9\)) # (!\Mult0|auto_generated|add10_result[3]~6_combout\ & 
-- ((\Mult0|auto_generated|add6_result[4]~9\) # (GND)))))
-- \Mult0|auto_generated|add6_result[5]~11\ = CARRY((\Mult0|auto_generated|le4a\(3) & (!\Mult0|auto_generated|add10_result[3]~6_combout\ & !\Mult0|auto_generated|add6_result[4]~9\)) # (!\Mult0|auto_generated|le4a\(3) & 
-- ((!\Mult0|auto_generated|add6_result[4]~9\) # (!\Mult0|auto_generated|add10_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(3),
	datab => \Mult0|auto_generated|add10_result[3]~6_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[4]~9\,
	combout => \Mult0|auto_generated|add6_result[5]~10_combout\,
	cout => \Mult0|auto_generated|add6_result[5]~11\);

-- Location: LCCOMB_X21_Y17_N26
\led~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~5_combout\ = (\key~input_o\ & ((\Mult0|auto_generated|add6_result[5]~10_combout\))) # (!\key~input_o\ & (\Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datac => \key~input_o\,
	datad => \Mult0|auto_generated|add6_result[5]~10_combout\,
	combout => \led~5_combout\);

-- Location: LCCOMB_X22_Y20_N30
\Mult0|auto_generated|add10_result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add10_result[4]~8_combout\ = !\Mult0|auto_generated|add10_result[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add10_result[3]~7\,
	combout => \Mult0|auto_generated|add10_result[4]~8_combout\);

-- Location: LCCOMB_X18_Y20_N30
\Mult0|auto_generated|le2a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le2a\(4) = LCELL((\sw74[3]~input_o\ & (\sw30[2]~input_o\ & ((\sw30[1]~input_o\)))) # (!\sw74[3]~input_o\ & (\sw30[3]~input_o\ & (\sw30[2]~input_o\ $ (!\sw30[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[2]~input_o\,
	datab => \sw30[3]~input_o\,
	datac => \sw74[3]~input_o\,
	datad => \sw30[1]~input_o\,
	combout => \Mult0|auto_generated|le2a\(4));

-- Location: LCCOMB_X18_Y20_N2
\Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(4) = LCELL((\Mult0|auto_generated|le2a\(4)) # ((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\sw30[3]~input_o\ $ (\sw74[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le2a\(4),
	datab => \sw30[3]~input_o\,
	datac => \sw74[3]~input_o\,
	datad => \Mult0|auto_generated|cs3a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X22_Y20_N14
\Mult0|auto_generated|add6_result[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[6]~12_combout\ = ((\Mult0|auto_generated|add10_result[4]~8_combout\ $ (\Mult0|auto_generated|le4a\(4) $ (\Mult0|auto_generated|add6_result[5]~11\)))) # (GND)
-- \Mult0|auto_generated|add6_result[6]~13\ = CARRY((\Mult0|auto_generated|add10_result[4]~8_combout\ & ((!\Mult0|auto_generated|add6_result[5]~11\) # (!\Mult0|auto_generated|le4a\(4)))) # (!\Mult0|auto_generated|add10_result[4]~8_combout\ & 
-- (!\Mult0|auto_generated|le4a\(4) & !\Mult0|auto_generated|add6_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add10_result[4]~8_combout\,
	datab => \Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[5]~11\,
	combout => \Mult0|auto_generated|add6_result[6]~12_combout\,
	cout => \Mult0|auto_generated|add6_result[6]~13\);

-- Location: LCCOMB_X21_Y17_N20
\led~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~6_combout\ = (\key~input_o\ & (\Mult0|auto_generated|add6_result[6]~12_combout\)) # (!\key~input_o\ & ((\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key~input_o\,
	datac => \Mult0|auto_generated|add6_result[6]~12_combout\,
	datad => \Add0~8_combout\,
	combout => \led~6_combout\);

-- Location: LCCOMB_X22_Y20_N16
\Mult0|auto_generated|add6_result[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[7]~14_combout\ = !\Mult0|auto_generated|add6_result[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add6_result[6]~13\,
	combout => \Mult0|auto_generated|add6_result[7]~14_combout\);

-- Location: LCCOMB_X21_Y17_N22
\led~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~7_combout\ = (\key~input_o\ & ((\Mult0|auto_generated|add6_result[7]~14_combout\))) # (!\key~input_o\ & (\Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datac => \key~input_o\,
	datad => \Mult0|auto_generated|add6_result[7]~14_combout\,
	combout => \led~7_combout\);

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(5) <= \led[5]~output_o\;

ww_led(6) <= \led[6]~output_o\;

ww_led(7) <= \led[7]~output_o\;
END structure;


