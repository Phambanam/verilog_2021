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

-- DATE "10/04/2021 13:58:34"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE lab3_2_data_type IS

TYPE ss_out_6_0_type IS ARRAY (6 DOWNTO 0) OF std_logic;
TYPE ss_out_6_0_0_1_type IS ARRAY (0 TO 1) OF ss_out_6_0_type;
SUBTYPE ss_out_type IS ss_out_6_0_0_1_type;

END lab3_2_data_type;

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY WORK;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.LAB3_2_DATA_TYPE.ALL;

ENTITY 	lab3_2 IS
    PORT (
	sw30 : IN std_logic_vector(3 DOWNTO 0);
	sw76 : IN std_logic_vector(1 DOWNTO 0);
	ss_out : OUT ss_out_type
	);
END lab3_2;

-- Design Ports Information
-- ss_out[1][0]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_out[1][1]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_out[1][2]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_out[1][3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_out[1][4]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_out[1][5]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_out[1][6]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_out[0][0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_out[0][1]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_out[0][2]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_out[0][3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_out[0][4]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_out[0][5]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_out[0][6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw30[0]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw30[1]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw30[2]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw30[3]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw76[0]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw76[1]	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw30 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw76 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ss_out : ss_out_type;
SIGNAL \ss_out~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ss_out~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ss_out[1][0]~output_o\ : std_logic;
SIGNAL \ss_out[1][1]~output_o\ : std_logic;
SIGNAL \ss_out[1][2]~output_o\ : std_logic;
SIGNAL \ss_out[1][3]~output_o\ : std_logic;
SIGNAL \ss_out[1][4]~output_o\ : std_logic;
SIGNAL \ss_out[1][5]~output_o\ : std_logic;
SIGNAL \ss_out[1][6]~output_o\ : std_logic;
SIGNAL \ss_out[0][0]~output_o\ : std_logic;
SIGNAL \ss_out[0][1]~output_o\ : std_logic;
SIGNAL \ss_out[0][2]~output_o\ : std_logic;
SIGNAL \ss_out[0][3]~output_o\ : std_logic;
SIGNAL \ss_out[0][4]~output_o\ : std_logic;
SIGNAL \ss_out[0][5]~output_o\ : std_logic;
SIGNAL \ss_out[0][6]~output_o\ : std_logic;
SIGNAL \sw30[1]~input_o\ : std_logic;
SIGNAL \sw30[3]~input_o\ : std_logic;
SIGNAL \sw30[0]~input_o\ : std_logic;
SIGNAL \sw30[2]~input_o\ : std_logic;
SIGNAL \ss_arr~0_combout\ : std_logic;
SIGNAL \sw76[0]~input_o\ : std_logic;
SIGNAL \sw76[1]~input_o\ : std_logic;
SIGNAL \ss_out~0_combout\ : std_logic;
SIGNAL \ss_out~0clkctrl_outclk\ : std_logic;
SIGNAL \ss_out[1][0]$latch~combout\ : std_logic;
SIGNAL \ss_arr~1_combout\ : std_logic;
SIGNAL \ss_out[1][1]$latch~combout\ : std_logic;
SIGNAL \ss_arr~2_combout\ : std_logic;
SIGNAL \ss_out[1][2]$latch~combout\ : std_logic;
SIGNAL \ss_arr~3_combout\ : std_logic;
SIGNAL \ss_out[1][3]$latch~combout\ : std_logic;
SIGNAL \ss_arr~4_combout\ : std_logic;
SIGNAL \ss_out[1][4]$latch~combout\ : std_logic;
SIGNAL \ss_arr~5_combout\ : std_logic;
SIGNAL \ss_out[1][5]$latch~combout\ : std_logic;
SIGNAL \ss_arr~6_combout\ : std_logic;
SIGNAL \ss_out[1][6]$latch~combout\ : std_logic;
SIGNAL \ss_out~1_combout\ : std_logic;
SIGNAL \ss_out~1clkctrl_outclk\ : std_logic;
SIGNAL \ss_out[0][0]$latch~combout\ : std_logic;
SIGNAL \ss_out[0][1]$latch~combout\ : std_logic;
SIGNAL \ss_out[0][2]$latch~combout\ : std_logic;
SIGNAL \ss_out[0][3]$latch~combout\ : std_logic;
SIGNAL \ss_out[0][4]$latch~combout\ : std_logic;
SIGNAL \ss_out[0][5]$latch~combout\ : std_logic;
SIGNAL \ss_out[0][6]$latch~combout\ : std_logic;

BEGIN

ww_sw30 <= sw30;
ww_sw76 <= sw76;
ss_out <= ww_ss_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ss_out~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ss_out~0_combout\);

\ss_out~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ss_out~1_combout\);

-- Location: IOOBUF_X3_Y0_N2
\ss_out[1][0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss_out[1][0]$latch~combout\,
	devoe => ww_devoe,
	o => \ss_out[1][0]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\ss_out[1][1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss_out[1][1]$latch~combout\,
	devoe => ww_devoe,
	o => \ss_out[1][1]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\ss_out[1][2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss_out[1][2]$latch~combout\,
	devoe => ww_devoe,
	o => \ss_out[1][2]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\ss_out[1][3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss_out[1][3]$latch~combout\,
	devoe => ww_devoe,
	o => \ss_out[1][3]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\ss_out[1][4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss_out[1][4]$latch~combout\,
	devoe => ww_devoe,
	o => \ss_out[1][4]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\ss_out[1][5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss_out[1][5]$latch~combout\,
	devoe => ww_devoe,
	o => \ss_out[1][5]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\ss_out[1][6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss_out[1][6]$latch~combout\,
	devoe => ww_devoe,
	o => \ss_out[1][6]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\ss_out[0][0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss_out[0][0]$latch~combout\,
	devoe => ww_devoe,
	o => \ss_out[0][0]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\ss_out[0][1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss_out[0][1]$latch~combout\,
	devoe => ww_devoe,
	o => \ss_out[0][1]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\ss_out[0][2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss_out[0][2]$latch~combout\,
	devoe => ww_devoe,
	o => \ss_out[0][2]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\ss_out[0][3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss_out[0][3]$latch~combout\,
	devoe => ww_devoe,
	o => \ss_out[0][3]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\ss_out[0][4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss_out[0][4]$latch~combout\,
	devoe => ww_devoe,
	o => \ss_out[0][4]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\ss_out[0][5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss_out[0][5]$latch~combout\,
	devoe => ww_devoe,
	o => \ss_out[0][5]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\ss_out[0][6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss_out[0][6]$latch~combout\,
	devoe => ww_devoe,
	o => \ss_out[0][6]~output_o\);

-- Location: IOIBUF_X5_Y0_N15
\sw30[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw30(1),
	o => \sw30[1]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\sw30[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw30(3),
	o => \sw30[3]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\sw30[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw30(0),
	o => \sw30[0]~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\sw30[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw30(2),
	o => \sw30[2]~input_o\);

-- Location: LCCOMB_X8_Y1_N0
\ss_arr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_arr~0_combout\ = (\sw30[3]~input_o\ & (\sw30[0]~input_o\ & (\sw30[1]~input_o\ $ (\sw30[2]~input_o\)))) # (!\sw30[3]~input_o\ & (!\sw30[1]~input_o\ & (\sw30[0]~input_o\ $ (\sw30[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[1]~input_o\,
	datab => \sw30[3]~input_o\,
	datac => \sw30[0]~input_o\,
	datad => \sw30[2]~input_o\,
	combout => \ss_arr~0_combout\);

-- Location: IOIBUF_X0_Y7_N1
\sw76[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw76(0),
	o => \sw76[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\sw76[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw76(1),
	o => \sw76[1]~input_o\);

-- Location: LCCOMB_X3_Y11_N4
\ss_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_out~0_combout\ = (\sw76[0]~input_o\ & !\sw76[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw76[0]~input_o\,
	datad => \sw76[1]~input_o\,
	combout => \ss_out~0_combout\);

-- Location: CLKCTRL_G0
\ss_out~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ss_out~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ss_out~0clkctrl_outclk\);

-- Location: LCCOMB_X8_Y1_N30
\ss_out[1][0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_out[1][0]$latch~combout\ = (GLOBAL(\ss_out~0clkctrl_outclk\) & (\ss_arr~0_combout\)) # (!GLOBAL(\ss_out~0clkctrl_outclk\) & ((\ss_out[1][0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ss_arr~0_combout\,
	datac => \ss_out[1][0]$latch~combout\,
	datad => \ss_out~0clkctrl_outclk\,
	combout => \ss_out[1][0]$latch~combout\);

-- Location: LCCOMB_X8_Y1_N26
\ss_arr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_arr~1_combout\ = (\sw30[1]~input_o\ & ((\sw30[0]~input_o\ & (\sw30[3]~input_o\)) # (!\sw30[0]~input_o\ & ((\sw30[2]~input_o\))))) # (!\sw30[1]~input_o\ & (\sw30[2]~input_o\ & (\sw30[3]~input_o\ $ (\sw30[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[1]~input_o\,
	datab => \sw30[3]~input_o\,
	datac => \sw30[0]~input_o\,
	datad => \sw30[2]~input_o\,
	combout => \ss_arr~1_combout\);

-- Location: LCCOMB_X8_Y1_N16
\ss_out[1][1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_out[1][1]$latch~combout\ = (GLOBAL(\ss_out~0clkctrl_outclk\) & ((\ss_arr~1_combout\))) # (!GLOBAL(\ss_out~0clkctrl_outclk\) & (\ss_out[1][1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ss_out[1][1]$latch~combout\,
	datac => \ss_arr~1_combout\,
	datad => \ss_out~0clkctrl_outclk\,
	combout => \ss_out[1][1]$latch~combout\);

-- Location: LCCOMB_X8_Y1_N12
\ss_arr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_arr~2_combout\ = (\sw30[3]~input_o\ & (\sw30[2]~input_o\ & ((\sw30[1]~input_o\) # (!\sw30[0]~input_o\)))) # (!\sw30[3]~input_o\ & (\sw30[1]~input_o\ & (!\sw30[0]~input_o\ & !\sw30[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[1]~input_o\,
	datab => \sw30[3]~input_o\,
	datac => \sw30[0]~input_o\,
	datad => \sw30[2]~input_o\,
	combout => \ss_arr~2_combout\);

-- Location: LCCOMB_X18_Y20_N0
\ss_out[1][2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_out[1][2]$latch~combout\ = (GLOBAL(\ss_out~0clkctrl_outclk\) & (\ss_arr~2_combout\)) # (!GLOBAL(\ss_out~0clkctrl_outclk\) & ((\ss_out[1][2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ss_arr~2_combout\,
	datac => \ss_out~0clkctrl_outclk\,
	datad => \ss_out[1][2]$latch~combout\,
	combout => \ss_out[1][2]$latch~combout\);

-- Location: LCCOMB_X8_Y1_N6
\ss_arr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_arr~3_combout\ = (\sw30[1]~input_o\ & ((\sw30[0]~input_o\ & ((\sw30[2]~input_o\))) # (!\sw30[0]~input_o\ & (\sw30[3]~input_o\ & !\sw30[2]~input_o\)))) # (!\sw30[1]~input_o\ & (!\sw30[3]~input_o\ & (\sw30[0]~input_o\ $ (\sw30[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[1]~input_o\,
	datab => \sw30[3]~input_o\,
	datac => \sw30[0]~input_o\,
	datad => \sw30[2]~input_o\,
	combout => \ss_arr~3_combout\);

-- Location: LCCOMB_X8_Y1_N10
\ss_out[1][3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_out[1][3]$latch~combout\ = (GLOBAL(\ss_out~0clkctrl_outclk\) & (\ss_arr~3_combout\)) # (!GLOBAL(\ss_out~0clkctrl_outclk\) & ((\ss_out[1][3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ss_arr~3_combout\,
	datac => \ss_out[1][3]$latch~combout\,
	datad => \ss_out~0clkctrl_outclk\,
	combout => \ss_out[1][3]$latch~combout\);

-- Location: LCCOMB_X8_Y1_N8
\ss_arr~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_arr~4_combout\ = (\sw30[1]~input_o\ & (!\sw30[3]~input_o\ & (\sw30[0]~input_o\))) # (!\sw30[1]~input_o\ & ((\sw30[2]~input_o\ & (!\sw30[3]~input_o\)) # (!\sw30[2]~input_o\ & ((\sw30[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[1]~input_o\,
	datab => \sw30[3]~input_o\,
	datac => \sw30[0]~input_o\,
	datad => \sw30[2]~input_o\,
	combout => \ss_arr~4_combout\);

-- Location: LCCOMB_X17_Y5_N0
\ss_out[1][4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_out[1][4]$latch~combout\ = (GLOBAL(\ss_out~0clkctrl_outclk\) & (\ss_arr~4_combout\)) # (!GLOBAL(\ss_out~0clkctrl_outclk\) & ((\ss_out[1][4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ss_arr~4_combout\,
	datac => \ss_out~0clkctrl_outclk\,
	datad => \ss_out[1][4]$latch~combout\,
	combout => \ss_out[1][4]$latch~combout\);

-- Location: LCCOMB_X8_Y1_N2
\ss_arr~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_arr~5_combout\ = (\sw30[1]~input_o\ & (!\sw30[3]~input_o\ & ((\sw30[0]~input_o\) # (!\sw30[2]~input_o\)))) # (!\sw30[1]~input_o\ & (\sw30[0]~input_o\ & (\sw30[3]~input_o\ $ (!\sw30[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[1]~input_o\,
	datab => \sw30[3]~input_o\,
	datac => \sw30[0]~input_o\,
	datad => \sw30[2]~input_o\,
	combout => \ss_arr~5_combout\);

-- Location: LCCOMB_X7_Y8_N24
\ss_out[1][5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_out[1][5]$latch~combout\ = (GLOBAL(\ss_out~0clkctrl_outclk\) & (\ss_arr~5_combout\)) # (!GLOBAL(\ss_out~0clkctrl_outclk\) & ((\ss_out[1][5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ss_arr~5_combout\,
	datac => \ss_out~0clkctrl_outclk\,
	datad => \ss_out[1][5]$latch~combout\,
	combout => \ss_out[1][5]$latch~combout\);

-- Location: LCCOMB_X8_Y1_N4
\ss_arr~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_arr~6_combout\ = (\sw30[0]~input_o\ & ((\sw30[3]~input_o\) # (\sw30[1]~input_o\ $ (\sw30[2]~input_o\)))) # (!\sw30[0]~input_o\ & ((\sw30[1]~input_o\) # (\sw30[3]~input_o\ $ (\sw30[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[1]~input_o\,
	datab => \sw30[3]~input_o\,
	datac => \sw30[0]~input_o\,
	datad => \sw30[2]~input_o\,
	combout => \ss_arr~6_combout\);

-- Location: LCCOMB_X8_Y1_N20
\ss_out[1][6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_out[1][6]$latch~combout\ = (GLOBAL(\ss_out~0clkctrl_outclk\) & ((!\ss_arr~6_combout\))) # (!GLOBAL(\ss_out~0clkctrl_outclk\) & (\ss_out[1][6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ss_out[1][6]$latch~combout\,
	datac => \ss_arr~6_combout\,
	datad => \ss_out~0clkctrl_outclk\,
	combout => \ss_out[1][6]$latch~combout\);

-- Location: LCCOMB_X3_Y11_N24
\ss_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_out~1_combout\ = (\sw76[0]~input_o\) # (\sw76[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw76[0]~input_o\,
	datad => \sw76[1]~input_o\,
	combout => \ss_out~1_combout\);

-- Location: CLKCTRL_G4
\ss_out~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ss_out~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ss_out~1clkctrl_outclk\);

-- Location: LCCOMB_X8_Y1_N22
\ss_out[0][0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_out[0][0]$latch~combout\ = (GLOBAL(\ss_out~1clkctrl_outclk\) & ((\ss_out[0][0]$latch~combout\))) # (!GLOBAL(\ss_out~1clkctrl_outclk\) & (\ss_arr~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ss_arr~0_combout\,
	datac => \ss_out[0][0]$latch~combout\,
	datad => \ss_out~1clkctrl_outclk\,
	combout => \ss_out[0][0]$latch~combout\);

-- Location: LCCOMB_X8_Y1_N24
\ss_out[0][1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_out[0][1]$latch~combout\ = (GLOBAL(\ss_out~1clkctrl_outclk\) & ((\ss_out[0][1]$latch~combout\))) # (!GLOBAL(\ss_out~1clkctrl_outclk\) & (\ss_arr~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ss_arr~1_combout\,
	datac => \ss_out~1clkctrl_outclk\,
	datad => \ss_out[0][1]$latch~combout\,
	combout => \ss_out[0][1]$latch~combout\);

-- Location: LCCOMB_X8_Y1_N18
\ss_out[0][2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_out[0][2]$latch~combout\ = (GLOBAL(\ss_out~1clkctrl_outclk\) & ((\ss_out[0][2]$latch~combout\))) # (!GLOBAL(\ss_out~1clkctrl_outclk\) & (\ss_arr~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ss_arr~2_combout\,
	datac => \ss_out~1clkctrl_outclk\,
	datad => \ss_out[0][2]$latch~combout\,
	combout => \ss_out[0][2]$latch~combout\);

-- Location: LCCOMB_X8_Y1_N28
\ss_out[0][3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_out[0][3]$latch~combout\ = (GLOBAL(\ss_out~1clkctrl_outclk\) & ((\ss_out[0][3]$latch~combout\))) # (!GLOBAL(\ss_out~1clkctrl_outclk\) & (\ss_arr~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ss_arr~3_combout\,
	datac => \ss_out~1clkctrl_outclk\,
	datad => \ss_out[0][3]$latch~combout\,
	combout => \ss_out[0][3]$latch~combout\);

-- Location: LCCOMB_X17_Y5_N2
\ss_out[0][4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_out[0][4]$latch~combout\ = (GLOBAL(\ss_out~1clkctrl_outclk\) & ((\ss_out[0][4]$latch~combout\))) # (!GLOBAL(\ss_out~1clkctrl_outclk\) & (\ss_arr~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ss_arr~4_combout\,
	datac => \ss_out~1clkctrl_outclk\,
	datad => \ss_out[0][4]$latch~combout\,
	combout => \ss_out[0][4]$latch~combout\);

-- Location: LCCOMB_X7_Y8_N10
\ss_out[0][5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_out[0][5]$latch~combout\ = (GLOBAL(\ss_out~1clkctrl_outclk\) & ((\ss_out[0][5]$latch~combout\))) # (!GLOBAL(\ss_out~1clkctrl_outclk\) & (\ss_arr~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ss_arr~5_combout\,
	datac => \ss_out~1clkctrl_outclk\,
	datad => \ss_out[0][5]$latch~combout\,
	combout => \ss_out[0][5]$latch~combout\);

-- Location: LCCOMB_X8_Y1_N14
\ss_out[0][6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_out[0][6]$latch~combout\ = (GLOBAL(\ss_out~1clkctrl_outclk\) & ((\ss_out[0][6]$latch~combout\))) # (!GLOBAL(\ss_out~1clkctrl_outclk\) & (!\ss_arr~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ss_arr~6_combout\,
	datac => \ss_out[0][6]$latch~combout\,
	datad => \ss_out~1clkctrl_outclk\,
	combout => \ss_out[0][6]$latch~combout\);

ww_ss_out(1)(0) <= \ss_out[1][0]~output_o\;

ww_ss_out(1)(1) <= \ss_out[1][1]~output_o\;

ww_ss_out(1)(2) <= \ss_out[1][2]~output_o\;

ww_ss_out(1)(3) <= \ss_out[1][3]~output_o\;

ww_ss_out(1)(4) <= \ss_out[1][4]~output_o\;

ww_ss_out(1)(5) <= \ss_out[1][5]~output_o\;

ww_ss_out(1)(6) <= \ss_out[1][6]~output_o\;

ww_ss_out(0)(0) <= \ss_out[0][0]~output_o\;

ww_ss_out(0)(1) <= \ss_out[0][1]~output_o\;

ww_ss_out(0)(2) <= \ss_out[0][2]~output_o\;

ww_ss_out(0)(3) <= \ss_out[0][3]~output_o\;

ww_ss_out(0)(4) <= \ss_out[0][4]~output_o\;

ww_ss_out(0)(5) <= \ss_out[0][5]~output_o\;

ww_ss_out(0)(6) <= \ss_out[0][6]~output_o\;
END structure;


