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

-- DATE "10/04/2021 18:42:03"

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

ENTITY 	lab3_3 IS
    PORT (
	sw54 : IN std_logic_vector(1 DOWNTO 0);
	sw32 : IN std_logic_vector(1 DOWNTO 0);
	sw10 : IN std_logic_vector(1 DOWNTO 0);
	led10 : OUT std_logic_vector(1 DOWNTO 0);
	led32 : OUT std_logic_vector(1 DOWNTO 0)
	);
END lab3_3;

-- Design Ports Information
-- led10[0]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led10[1]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led32[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led32[1]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw54[0]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw32[0]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw10[0]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw54[1]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw10[1]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw32[1]	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3_3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw54 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sw32 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sw10 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led10 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led32 : std_logic_vector(1 DOWNTO 0);
SIGNAL \led10[0]~output_o\ : std_logic;
SIGNAL \led10[1]~output_o\ : std_logic;
SIGNAL \led32[0]~output_o\ : std_logic;
SIGNAL \led32[1]~output_o\ : std_logic;
SIGNAL \sw32[1]~input_o\ : std_logic;
SIGNAL \sw54[0]~input_o\ : std_logic;
SIGNAL \sw32[0]~input_o\ : std_logic;
SIGNAL \sw54[1]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \sw10[1]~input_o\ : std_logic;
SIGNAL \sw10[0]~input_o\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~1_combout\ : std_logic;

BEGIN

ww_sw54 <= sw54;
ww_sw32 <= sw32;
ww_sw10 <= sw10;
led10 <= ww_led10;
led32 <= ww_led32;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Selector1~1_combout\ <= NOT \Selector1~1_combout\;

-- Location: IOOBUF_X0_Y9_N9
\led10[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector1~2_combout\,
	devoe => ww_devoe,
	o => \led10[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\led10[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector0~1_combout\,
	devoe => ww_devoe,
	o => \led10[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\led32[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector2~1_combout\,
	devoe => ww_devoe,
	o => \led32[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\led32[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Selector1~1_combout\,
	devoe => ww_devoe,
	o => \led32[1]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\sw32[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw32(1),
	o => \sw32[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\sw54[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw54(0),
	o => \sw54[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\sw32[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw32(0),
	o => \sw32[0]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\sw54[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw54(1),
	o => \sw54[1]~input_o\);

-- Location: LCCOMB_X1_Y10_N10
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\sw32[1]~input_o\ & (\sw54[1]~input_o\ & (\sw54[0]~input_o\ $ (!\sw32[0]~input_o\)))) # (!\sw32[1]~input_o\ & (!\sw54[1]~input_o\ & (\sw54[0]~input_o\ $ (!\sw32[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw32[1]~input_o\,
	datab => \sw54[0]~input_o\,
	datac => \sw32[0]~input_o\,
	datad => \sw54[1]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: IOIBUF_X0_Y23_N1
\sw10[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw10(1),
	o => \sw10[1]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\sw10[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw10(0),
	o => \sw10[0]~input_o\);

-- Location: LCCOMB_X1_Y10_N16
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\sw54[0]~input_o\ & (\sw10[0]~input_o\ & (\sw54[1]~input_o\ $ (!\sw10[1]~input_o\)))) # (!\sw54[0]~input_o\ & (!\sw10[0]~input_o\ & (\sw54[1]~input_o\ $ (!\sw10[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw54[0]~input_o\,
	datab => \sw54[1]~input_o\,
	datac => \sw10[1]~input_o\,
	datad => \sw10[0]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X1_Y10_N12
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Equal2~0_combout\ & (((\sw32[0]~input_o\)))) # (!\Equal2~0_combout\ & ((\Equal3~0_combout\ & ((\sw10[0]~input_o\))) # (!\Equal3~0_combout\ & (\sw32[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal3~0_combout\,
	datac => \sw32[0]~input_o\,
	datad => \sw10[0]~input_o\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X1_Y10_N22
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\sw32[1]~input_o\ & (\sw10[1]~input_o\ & (\sw32[0]~input_o\ $ (!\sw10[0]~input_o\)))) # (!\sw32[1]~input_o\ & (!\sw10[1]~input_o\ & (\sw32[0]~input_o\ $ (!\sw10[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw32[1]~input_o\,
	datab => \sw10[1]~input_o\,
	datac => \sw32[0]~input_o\,
	datad => \sw10[0]~input_o\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X1_Y10_N0
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\Equal2~0_combout\ & (!\Selector2~0_combout\ & !\Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datac => \Selector2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X1_Y10_N2
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Selector1~1_combout\ & ((\sw54[0]~input_o\))) # (!\Selector1~1_combout\ & (\Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \sw54[0]~input_o\,
	datad => \Selector1~1_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X1_Y10_N4
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Equal2~0_combout\ & (((\sw32[1]~input_o\)))) # (!\Equal2~0_combout\ & ((\Equal3~0_combout\ & (\sw10[1]~input_o\)) # (!\Equal3~0_combout\ & ((\sw32[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \sw10[1]~input_o\,
	datac => \sw32[1]~input_o\,
	datad => \Equal3~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X1_Y10_N6
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector1~1_combout\ & (\sw54[1]~input_o\)) # (!\Selector1~1_combout\ & ((\Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw54[1]~input_o\,
	datac => \Selector0~0_combout\,
	datad => \Selector1~1_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X1_Y10_N24
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\ & ((\Equal2~0_combout\) # (\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datac => \Selector2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \Selector2~1_combout\);

ww_led10(0) <= \led10[0]~output_o\;

ww_led10(1) <= \led10[1]~output_o\;

ww_led32(0) <= \led32[0]~output_o\;

ww_led32(1) <= \led32[1]~output_o\;
END structure;


