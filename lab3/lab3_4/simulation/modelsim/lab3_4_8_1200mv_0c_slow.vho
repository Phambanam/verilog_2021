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

-- DATE "10/04/2021 19:21:47"

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

ENTITY 	lab3_4 IS
    PORT (
	sw76 : IN std_logic_vector(1 DOWNTO 0);
	sw54 : IN std_logic_vector(1 DOWNTO 0);
	sw32 : IN std_logic_vector(1 DOWNTO 0);
	sw10 : IN std_logic_vector(1 DOWNTO 0);
	led76 : OUT std_logic_vector(1 DOWNTO 0);
	led54 : OUT std_logic_vector(1 DOWNTO 0);
	led32 : OUT std_logic_vector(1 DOWNTO 0);
	led10 : OUT std_logic_vector(1 DOWNTO 0)
	);
END lab3_4;

-- Design Ports Information
-- led76[0]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led76[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led54[0]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led54[1]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led32[0]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led32[1]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led10[0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led10[1]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw54[0]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw76[0]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw76[1]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw54[1]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw32[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw32[1]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw10[0]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw10[1]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3_4 IS
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
SIGNAL ww_led54 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led32 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led10 : std_logic_vector(1 DOWNTO 0);
SIGNAL \led76[0]~output_o\ : std_logic;
SIGNAL \led76[1]~output_o\ : std_logic;
SIGNAL \led54[0]~output_o\ : std_logic;
SIGNAL \led54[1]~output_o\ : std_logic;
SIGNAL \led32[0]~output_o\ : std_logic;
SIGNAL \led32[1]~output_o\ : std_logic;
SIGNAL \led10[0]~output_o\ : std_logic;
SIGNAL \led10[1]~output_o\ : std_logic;
SIGNAL \sw10[0]~input_o\ : std_logic;
SIGNAL \sw32[1]~input_o\ : std_logic;
SIGNAL \sw76[1]~input_o\ : std_logic;
SIGNAL \sw76[0]~input_o\ : std_logic;
SIGNAL \sw54[0]~input_o\ : std_logic;
SIGNAL \sw54[1]~input_o\ : std_logic;
SIGNAL \led76~0_combout\ : std_logic;
SIGNAL \sw32[0]~input_o\ : std_logic;
SIGNAL \led76~1_combout\ : std_logic;
SIGNAL \led76~2_combout\ : std_logic;
SIGNAL \sw10[1]~input_o\ : std_logic;
SIGNAL \led76~3_combout\ : std_logic;
SIGNAL \led76~4_combout\ : std_logic;
SIGNAL \led76~5_combout\ : std_logic;
SIGNAL \led54~3_combout\ : std_logic;
SIGNAL \led10~1_combout\ : std_logic;
SIGNAL \led10~0_combout\ : std_logic;
SIGNAL \led32~0_combout\ : std_logic;
SIGNAL \led54~1_combout\ : std_logic;
SIGNAL \led32~1_combout\ : std_logic;
SIGNAL \led54~0_combout\ : std_logic;
SIGNAL \led54~2_combout\ : std_logic;
SIGNAL \led54~4_combout\ : std_logic;
SIGNAL \led54~5_combout\ : std_logic;
SIGNAL \led32~3_combout\ : std_logic;
SIGNAL \led10~2_combout\ : std_logic;
SIGNAL \led32~2_combout\ : std_logic;
SIGNAL \led10~3_combout\ : std_logic;
SIGNAL \led32~4_combout\ : std_logic;
SIGNAL \led32~5_combout\ : std_logic;
SIGNAL \led10~4_combout\ : std_logic;
SIGNAL \led10~5_combout\ : std_logic;

BEGIN

ww_sw76 <= sw76;
ww_sw54 <= sw54;
ww_sw32 <= sw32;
ww_sw10 <= sw10;
led76 <= ww_led76;
led54 <= ww_led54;
led32 <= ww_led32;
led10 <= ww_led10;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X23_Y24_N2
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

-- Location: IOOBUF_X23_Y24_N16
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

-- Location: IOOBUF_X34_Y17_N16
\led54[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led54~4_combout\,
	devoe => ww_devoe,
	o => \led54[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\led54[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led54~5_combout\,
	devoe => ww_devoe,
	o => \led54[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\led32[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led32~4_combout\,
	devoe => ww_devoe,
	o => \led32[0]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\led32[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led32~5_combout\,
	devoe => ww_devoe,
	o => \led32[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\led10[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led10~4_combout\,
	devoe => ww_devoe,
	o => \led10[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\led10[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led10~5_combout\,
	devoe => ww_devoe,
	o => \led10[1]~output_o\);

-- Location: IOIBUF_X23_Y0_N8
\sw10[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw10(0),
	o => \sw10[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\sw32[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw32(1),
	o => \sw32[1]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\sw76[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw76(1),
	o => \sw76[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\sw76[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw76(0),
	o => \sw76[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\sw54[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw54(0),
	o => \sw54[0]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\sw54[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw54(1),
	o => \sw54[1]~input_o\);

-- Location: LCCOMB_X22_Y16_N24
\led76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led76~0_combout\ = (\sw76[1]~input_o\ & ((\sw76[0]~input_o\) # ((\sw54[0]~input_o\ & \sw54[1]~input_o\)))) # (!\sw76[1]~input_o\ & ((\sw54[0]~input_o\) # ((\sw76[0]~input_o\ & !\sw54[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw76[1]~input_o\,
	datab => \sw76[0]~input_o\,
	datac => \sw54[0]~input_o\,
	datad => \sw54[1]~input_o\,
	combout => \led76~0_combout\);

-- Location: IOIBUF_X16_Y24_N8
\sw32[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw32(0),
	o => \sw32[0]~input_o\);

-- Location: LCCOMB_X28_Y16_N0
\led76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \led76~1_combout\ = (\sw76[1]~input_o\) # (\sw54[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw76[1]~input_o\,
	datac => \sw54[1]~input_o\,
	combout => \led76~1_combout\);

-- Location: LCCOMB_X22_Y16_N10
\led76~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \led76~2_combout\ = (\sw32[1]~input_o\ & ((\sw32[0]~input_o\) # ((\led76~0_combout\ & \led76~1_combout\)))) # (!\sw32[1]~input_o\ & ((\led76~0_combout\) # ((\sw32[0]~input_o\ & !\led76~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw32[1]~input_o\,
	datab => \led76~0_combout\,
	datac => \sw32[0]~input_o\,
	datad => \led76~1_combout\,
	combout => \led76~2_combout\);

-- Location: IOIBUF_X25_Y0_N1
\sw10[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw10(1),
	o => \sw10[1]~input_o\);

-- Location: LCCOMB_X25_Y16_N24
\led76~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \led76~3_combout\ = (\sw76[1]~input_o\) # ((\sw32[1]~input_o\) # (\sw54[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw76[1]~input_o\,
	datab => \sw32[1]~input_o\,
	datad => \sw54[1]~input_o\,
	combout => \led76~3_combout\);

-- Location: LCCOMB_X25_Y16_N2
\led76~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \led76~4_combout\ = (\sw10[0]~input_o\ & ((\led76~2_combout\) # ((\sw10[1]~input_o\) # (!\led76~3_combout\)))) # (!\sw10[0]~input_o\ & (\led76~2_combout\ & ((\led76~3_combout\) # (!\sw10[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw10[0]~input_o\,
	datab => \led76~2_combout\,
	datac => \sw10[1]~input_o\,
	datad => \led76~3_combout\,
	combout => \led76~4_combout\);

-- Location: LCCOMB_X25_Y16_N28
\led76~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \led76~5_combout\ = (\sw76[1]~input_o\) # ((\sw32[1]~input_o\) # ((\sw10[1]~input_o\) # (\sw54[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw76[1]~input_o\,
	datab => \sw32[1]~input_o\,
	datac => \sw10[1]~input_o\,
	datad => \sw54[1]~input_o\,
	combout => \led76~5_combout\);

-- Location: LCCOMB_X25_Y16_N10
\led54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \led54~3_combout\ = (\sw76[1]~input_o\ & ((\sw32[1]~input_o\) # (\sw54[1]~input_o\))) # (!\sw76[1]~input_o\ & (\sw32[1]~input_o\ & \sw54[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw76[1]~input_o\,
	datab => \sw32[1]~input_o\,
	datad => \sw54[1]~input_o\,
	combout => \led54~3_combout\);

-- Location: LCCOMB_X25_Y16_N20
\led10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \led10~1_combout\ = (\sw10[1]~input_o\ & ((\sw76[1]~input_o\) # ((\sw32[1]~input_o\) # (\sw54[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw76[1]~input_o\,
	datab => \sw32[1]~input_o\,
	datac => \sw10[1]~input_o\,
	datad => \sw54[1]~input_o\,
	combout => \led10~1_combout\);

-- Location: LCCOMB_X25_Y16_N22
\led10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led10~0_combout\ = (\sw10[0]~input_o\ & ((\led76~2_combout\) # ((!\sw10[1]~input_o\ & \led76~3_combout\)))) # (!\sw10[0]~input_o\ & (\led76~2_combout\ & (\sw10[1]~input_o\ & !\led76~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw10[0]~input_o\,
	datab => \led76~2_combout\,
	datac => \sw10[1]~input_o\,
	datad => \led76~3_combout\,
	combout => \led10~0_combout\);

-- Location: LCCOMB_X22_Y16_N6
\led32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led32~0_combout\ = (\sw32[1]~input_o\ & (\led76~0_combout\ & ((\sw32[0]~input_o\) # (!\led76~1_combout\)))) # (!\sw32[1]~input_o\ & (\sw32[0]~input_o\ & ((\led76~0_combout\) # (\led76~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw32[1]~input_o\,
	datab => \led76~0_combout\,
	datac => \sw32[0]~input_o\,
	datad => \led76~1_combout\,
	combout => \led32~0_combout\);

-- Location: LCCOMB_X22_Y16_N0
\led54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \led54~1_combout\ = (\sw76[1]~input_o\ & \sw54[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw76[1]~input_o\,
	datad => \sw54[1]~input_o\,
	combout => \led54~1_combout\);

-- Location: LCCOMB_X25_Y16_N16
\led32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \led32~1_combout\ = (\sw32[1]~input_o\ & ((\sw76[1]~input_o\) # (\sw54[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw76[1]~input_o\,
	datab => \sw32[1]~input_o\,
	datad => \sw54[1]~input_o\,
	combout => \led32~1_combout\);

-- Location: LCCOMB_X22_Y16_N12
\led54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led54~0_combout\ = (\sw76[1]~input_o\ & (\sw54[0]~input_o\ & ((\sw76[0]~input_o\) # (!\sw54[1]~input_o\)))) # (!\sw76[1]~input_o\ & (\sw76[0]~input_o\ & ((\sw54[0]~input_o\) # (\sw54[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw76[1]~input_o\,
	datab => \sw76[0]~input_o\,
	datac => \sw54[0]~input_o\,
	datad => \sw54[1]~input_o\,
	combout => \led54~0_combout\);

-- Location: LCCOMB_X22_Y16_N26
\led54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \led54~2_combout\ = (\led32~0_combout\ & (((\led32~1_combout\) # (\led54~0_combout\)) # (!\led54~1_combout\))) # (!\led32~0_combout\ & (\led54~0_combout\ & ((\led54~1_combout\) # (!\led32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led32~0_combout\,
	datab => \led54~1_combout\,
	datac => \led32~1_combout\,
	datad => \led54~0_combout\,
	combout => \led54~2_combout\);

-- Location: LCCOMB_X25_Y16_N14
\led54~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \led54~4_combout\ = (\led54~3_combout\ & ((\led54~2_combout\) # ((\led10~1_combout\ & \led10~0_combout\)))) # (!\led54~3_combout\ & ((\led10~0_combout\) # ((!\led10~1_combout\ & \led54~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led54~3_combout\,
	datab => \led10~1_combout\,
	datac => \led10~0_combout\,
	datad => \led54~2_combout\,
	combout => \led54~4_combout\);

-- Location: LCCOMB_X25_Y16_N0
\led54~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \led54~5_combout\ = (\sw76[1]~input_o\ & ((\sw32[1]~input_o\) # ((\sw10[1]~input_o\) # (\sw54[1]~input_o\)))) # (!\sw76[1]~input_o\ & ((\sw32[1]~input_o\ & ((\sw10[1]~input_o\) # (\sw54[1]~input_o\))) # (!\sw32[1]~input_o\ & (\sw10[1]~input_o\ & 
-- \sw54[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw76[1]~input_o\,
	datab => \sw32[1]~input_o\,
	datac => \sw10[1]~input_o\,
	datad => \sw54[1]~input_o\,
	combout => \led54~5_combout\);

-- Location: LCCOMB_X25_Y16_N30
\led32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \led32~3_combout\ = (\sw76[1]~input_o\ & (\sw32[1]~input_o\ & \sw54[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw76[1]~input_o\,
	datab => \sw32[1]~input_o\,
	datad => \sw54[1]~input_o\,
	combout => \led32~3_combout\);

-- Location: LCCOMB_X25_Y16_N18
\led10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \led10~2_combout\ = (\led54~3_combout\ & (\led10~0_combout\ & ((\led54~2_combout\) # (!\led10~1_combout\)))) # (!\led54~3_combout\ & (\led54~2_combout\ & ((\led10~1_combout\) # (\led10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led54~3_combout\,
	datab => \led10~1_combout\,
	datac => \led10~0_combout\,
	datad => \led54~2_combout\,
	combout => \led10~2_combout\);

-- Location: LCCOMB_X22_Y16_N28
\led32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \led32~2_combout\ = (\led32~0_combout\ & ((\led54~0_combout\) # ((\led54~1_combout\ & !\led32~1_combout\)))) # (!\led32~0_combout\ & (!\led54~1_combout\ & (\led32~1_combout\ & \led54~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led32~0_combout\,
	datab => \led54~1_combout\,
	datac => \led32~1_combout\,
	datad => \led54~0_combout\,
	combout => \led32~2_combout\);

-- Location: LCCOMB_X25_Y16_N12
\led10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \led10~3_combout\ = (\sw10[1]~input_o\ & ((\sw76[1]~input_o\ & ((\sw32[1]~input_o\) # (\sw54[1]~input_o\))) # (!\sw76[1]~input_o\ & (\sw32[1]~input_o\ & \sw54[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw76[1]~input_o\,
	datab => \sw32[1]~input_o\,
	datac => \sw10[1]~input_o\,
	datad => \sw54[1]~input_o\,
	combout => \led10~3_combout\);

-- Location: LCCOMB_X25_Y16_N8
\led32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \led32~4_combout\ = (\led32~3_combout\ & ((\led32~2_combout\) # ((\led10~2_combout\ & \led10~3_combout\)))) # (!\led32~3_combout\ & ((\led10~2_combout\) # ((\led32~2_combout\ & !\led10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led32~3_combout\,
	datab => \led10~2_combout\,
	datac => \led32~2_combout\,
	datad => \led10~3_combout\,
	combout => \led32~4_combout\);

-- Location: LCCOMB_X25_Y16_N26
\led32~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \led32~5_combout\ = (\sw76[1]~input_o\ & ((\sw32[1]~input_o\ & ((\sw10[1]~input_o\) # (\sw54[1]~input_o\))) # (!\sw32[1]~input_o\ & (\sw10[1]~input_o\ & \sw54[1]~input_o\)))) # (!\sw76[1]~input_o\ & (\sw32[1]~input_o\ & (\sw10[1]~input_o\ & 
-- \sw54[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw76[1]~input_o\,
	datab => \sw32[1]~input_o\,
	datac => \sw10[1]~input_o\,
	datad => \sw54[1]~input_o\,
	combout => \led32~5_combout\);

-- Location: LCCOMB_X25_Y16_N4
\led10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \led10~4_combout\ = (\led32~3_combout\ & (\led10~2_combout\ & ((\led32~2_combout\) # (!\led10~3_combout\)))) # (!\led32~3_combout\ & (\led32~2_combout\ & ((\led10~2_combout\) # (\led10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led32~3_combout\,
	datab => \led10~2_combout\,
	datac => \led32~2_combout\,
	datad => \led10~3_combout\,
	combout => \led10~4_combout\);

-- Location: LCCOMB_X25_Y16_N6
\led10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \led10~5_combout\ = (\sw76[1]~input_o\ & (\sw32[1]~input_o\ & (\sw10[1]~input_o\ & \sw54[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw76[1]~input_o\,
	datab => \sw32[1]~input_o\,
	datac => \sw10[1]~input_o\,
	datad => \sw54[1]~input_o\,
	combout => \led10~5_combout\);

ww_led76(0) <= \led76[0]~output_o\;

ww_led76(1) <= \led76[1]~output_o\;

ww_led54(0) <= \led54[0]~output_o\;

ww_led54(1) <= \led54[1]~output_o\;

ww_led32(0) <= \led32[0]~output_o\;

ww_led32(1) <= \led32[1]~output_o\;

ww_led10(0) <= \led10[0]~output_o\;

ww_led10(1) <= \led10[1]~output_o\;
END structure;


