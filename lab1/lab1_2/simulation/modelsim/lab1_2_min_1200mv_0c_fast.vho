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

-- DATE "09/15/2021 20:32:46"

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

ENTITY 	lab1_2 IS
    PORT (
	sw74 : IN std_logic_vector(3 DOWNTO 0);
	sw30 : IN std_logic_vector(3 DOWNTO 0);
	pba : IN std_logic;
	led : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END lab1_2;

-- Design Ports Information
-- led[0]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw74[0]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw30[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pba	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw74[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw30[1]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw74[2]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw30[2]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw74[3]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw30[3]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab1_2 IS
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
SIGNAL ww_pba : std_logic;
SIGNAL ww_led : std_logic_vector(3 DOWNTO 0);
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \sw30[0]~input_o\ : std_logic;
SIGNAL \pba~input_o\ : std_logic;
SIGNAL \sw74[0]~input_o\ : std_logic;
SIGNAL \led~0_combout\ : std_logic;
SIGNAL \sw30[1]~input_o\ : std_logic;
SIGNAL \sw74[1]~input_o\ : std_logic;
SIGNAL \led~1_combout\ : std_logic;
SIGNAL \sw30[2]~input_o\ : std_logic;
SIGNAL \sw74[2]~input_o\ : std_logic;
SIGNAL \led~2_combout\ : std_logic;
SIGNAL \sw74[3]~input_o\ : std_logic;
SIGNAL \sw30[3]~input_o\ : std_logic;
SIGNAL \led~3_combout\ : std_logic;

BEGIN

ww_sw74 <= sw74;
ww_sw30 <= sw30;
ww_pba <= pba;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y7_N2
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

-- Location: IOOBUF_X0_Y9_N9
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

-- Location: IOOBUF_X0_Y23_N16
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

-- Location: IOOBUF_X1_Y24_N2
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

-- Location: IOIBUF_X1_Y0_N22
\sw30[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw30(0),
	o => \sw30[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\pba~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pba,
	o => \pba~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\sw74[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw74(0),
	o => \sw74[0]~input_o\);

-- Location: LCCOMB_X2_Y7_N8
\led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~0_combout\ = (\pba~input_o\ & ((\sw74[0]~input_o\))) # (!\pba~input_o\ & (\sw30[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw30[0]~input_o\,
	datac => \pba~input_o\,
	datad => \sw74[0]~input_o\,
	combout => \led~0_combout\);

-- Location: IOIBUF_X0_Y6_N15
\sw30[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw30(1),
	o => \sw30[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\sw74[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw74(1),
	o => \sw74[1]~input_o\);

-- Location: LCCOMB_X2_Y7_N2
\led~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~1_combout\ = (\pba~input_o\ & ((\sw74[1]~input_o\))) # (!\pba~input_o\ & (\sw30[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pba~input_o\,
	datab => \sw30[1]~input_o\,
	datac => \sw74[1]~input_o\,
	combout => \led~1_combout\);

-- Location: IOIBUF_X5_Y0_N22
\sw30[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw30(2),
	o => \sw30[2]~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\sw74[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw74(2),
	o => \sw74[2]~input_o\);

-- Location: LCCOMB_X2_Y7_N12
\led~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~2_combout\ = (\pba~input_o\ & ((\sw74[2]~input_o\))) # (!\pba~input_o\ & (\sw30[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw30[2]~input_o\,
	datac => \pba~input_o\,
	datad => \sw74[2]~input_o\,
	combout => \led~2_combout\);

-- Location: IOIBUF_X3_Y0_N1
\sw74[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw74(3),
	o => \sw74[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\sw30[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw30(3),
	o => \sw30[3]~input_o\);

-- Location: LCCOMB_X2_Y7_N6
\led~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~3_combout\ = (\pba~input_o\ & (\sw74[3]~input_o\)) # (!\pba~input_o\ & ((\sw30[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw74[3]~input_o\,
	datac => \pba~input_o\,
	datad => \sw30[3]~input_o\,
	combout => \led~3_combout\);

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;
END structure;


