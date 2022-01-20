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

-- DATE "09/24/2021 11:25:27"

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

ENTITY 	lab2_3 IS
    PORT (
	sw76 : IN std_logic_vector(1 DOWNTO 0);
	sw54 : IN std_logic_vector(1 DOWNTO 0);
	sw32 : IN std_logic_vector(1 DOWNTO 0);
	sw10 : IN std_logic_vector(1 DOWNTO 0);
	led76 : OUT std_logic_vector(1 DOWNTO 0);
	led : OUT std_logic_vector(5 DOWNTO 0)
	);
END lab2_3;

-- Design Ports Information
-- led76[0]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led76[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw32[0]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw32[1]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw54[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw54[0]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw10[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw10[1]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw76[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw76[0]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab2_3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw76 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sw54 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sw32 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sw10 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led76 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(5 DOWNTO 0);
SIGNAL \led76[0]~output_o\ : std_logic;
SIGNAL \led76[1]~output_o\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \sw10[1]~input_o\ : std_logic;
SIGNAL \sw76[1]~input_o\ : std_logic;
SIGNAL \led76~3_combout\ : std_logic;
SIGNAL \sw54[0]~input_o\ : std_logic;
SIGNAL \sw32[1]~input_o\ : std_logic;
SIGNAL \sw32[0]~input_o\ : std_logic;
SIGNAL \sw54[1]~input_o\ : std_logic;
SIGNAL \led76~0_combout\ : std_logic;
SIGNAL \led76~1_combout\ : std_logic;
SIGNAL \sw76[0]~input_o\ : std_logic;
SIGNAL \sw10[0]~input_o\ : std_logic;
SIGNAL \led76~2_combout\ : std_logic;
SIGNAL \led76~4_combout\ : std_logic;
SIGNAL \led76~5_combout\ : std_logic;

BEGIN

ww_sw76 <= sw76;
ww_sw54 <= sw54;
ww_sw32 <= sw32;
ww_sw10 <= sw10;
led76 <= ww_led76;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X5_Y0_N23
\led76[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led76~4_combout\,
	devoe => ww_devoe,
	o => \led76[0]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\led76[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led76~5_combout\,
	devoe => ww_devoe,
	o => \led76[1]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\led[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOIBUF_X5_Y0_N15
\sw10[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw10(1),
	o => \sw10[1]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\sw76[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw76(1),
	o => \sw76[1]~input_o\);

-- Location: LCCOMB_X13_Y3_N6
\led76~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \led76~3_combout\ = (\sw10[1]~input_o\) # (\sw76[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw10[1]~input_o\,
	datac => \sw76[1]~input_o\,
	combout => \led76~3_combout\);

-- Location: IOIBUF_X3_Y0_N1
\sw54[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw54(0),
	o => \sw54[0]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\sw32[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw32(1),
	o => \sw32[1]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\sw32[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw32(0),
	o => \sw32[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\sw54[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw54(1),
	o => \sw54[1]~input_o\);

-- Location: LCCOMB_X13_Y3_N0
\led76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led76~0_combout\ = (\sw54[0]~input_o\ & (((\sw32[0]~input_o\) # (\sw54[1]~input_o\)) # (!\sw32[1]~input_o\))) # (!\sw54[0]~input_o\ & (\sw32[0]~input_o\ & ((\sw32[1]~input_o\) # (!\sw54[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw54[0]~input_o\,
	datab => \sw32[1]~input_o\,
	datac => \sw32[0]~input_o\,
	datad => \sw54[1]~input_o\,
	combout => \led76~0_combout\);

-- Location: LCCOMB_X13_Y3_N2
\led76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \led76~1_combout\ = (\sw32[1]~input_o\) # (\sw54[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw32[1]~input_o\,
	datad => \sw54[1]~input_o\,
	combout => \led76~1_combout\);

-- Location: IOIBUF_X1_Y0_N15
\sw76[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw76(0),
	o => \sw76[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\sw10[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw10(0),
	o => \sw10[0]~input_o\);

-- Location: LCCOMB_X13_Y3_N12
\led76~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \led76~2_combout\ = (\sw76[1]~input_o\ & ((\sw76[0]~input_o\) # ((\sw10[0]~input_o\ & \sw10[1]~input_o\)))) # (!\sw76[1]~input_o\ & ((\sw10[0]~input_o\) # ((\sw76[0]~input_o\ & !\sw10[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw76[1]~input_o\,
	datab => \sw76[0]~input_o\,
	datac => \sw10[0]~input_o\,
	datad => \sw10[1]~input_o\,
	combout => \led76~2_combout\);

-- Location: LCCOMB_X13_Y3_N24
\led76~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \led76~4_combout\ = (\led76~3_combout\ & ((\led76~2_combout\) # ((\led76~0_combout\ & \led76~1_combout\)))) # (!\led76~3_combout\ & ((\led76~0_combout\) # ((!\led76~1_combout\ & \led76~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led76~3_combout\,
	datab => \led76~0_combout\,
	datac => \led76~1_combout\,
	datad => \led76~2_combout\,
	combout => \led76~4_combout\);

-- Location: LCCOMB_X13_Y3_N18
\led76~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \led76~5_combout\ = (\sw10[1]~input_o\) # ((\sw32[1]~input_o\) # ((\sw76[1]~input_o\) # (\sw54[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw10[1]~input_o\,
	datab => \sw32[1]~input_o\,
	datac => \sw76[1]~input_o\,
	datad => \sw54[1]~input_o\,
	combout => \led76~5_combout\);

ww_led76(0) <= \led76[0]~output_o\;

ww_led76(1) <= \led76[1]~output_o\;

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(5) <= \led[5]~output_o\;
END structure;


