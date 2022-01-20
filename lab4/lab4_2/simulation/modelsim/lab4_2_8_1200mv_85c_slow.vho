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

-- DATE "10/09/2021 12:19:22"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab4_2 IS
    PORT (
	clk : IN std_logic;
	key : IN std_logic;
	sw70 : IN std_logic_vector(7 DOWNTO 0);
	led70 : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab4_2;

-- Design Ports Information
-- led70[0]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led70[1]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led70[2]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led70[3]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led70[4]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led70[5]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led70[6]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led70[7]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw70[0]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw70[1]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw70[2]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw70[3]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw70[4]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw70[5]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw70[6]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw70[7]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_key : std_logic;
SIGNAL ww_sw70 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led70 : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led70[0]~output_o\ : std_logic;
SIGNAL \led70[1]~output_o\ : std_logic;
SIGNAL \led70[2]~output_o\ : std_logic;
SIGNAL \led70[3]~output_o\ : std_logic;
SIGNAL \led70[4]~output_o\ : std_logic;
SIGNAL \led70[5]~output_o\ : std_logic;
SIGNAL \led70[6]~output_o\ : std_logic;
SIGNAL \led70[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sw70[0]~input_o\ : std_logic;
SIGNAL \key~input_o\ : std_logic;
SIGNAL \sw70[7]~input_o\ : std_logic;
SIGNAL \sw70[6]~input_o\ : std_logic;
SIGNAL \sw70[5]~input_o\ : std_logic;
SIGNAL \sw70[4]~input_o\ : std_logic;
SIGNAL \sw70[3]~input_o\ : std_logic;
SIGNAL \sw70[1]~input_o\ : std_logic;
SIGNAL \led70~1_combout\ : std_logic;
SIGNAL \temp[0]~3_combout\ : std_logic;
SIGNAL \temp[1]~0_combout\ : std_logic;
SIGNAL \temp[3]~2_combout\ : std_logic;
SIGNAL \temp~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \ena~q\ : std_logic;
SIGNAL \led70[1]~reg0_q\ : std_logic;
SIGNAL \sw70[2]~input_o\ : std_logic;
SIGNAL \led70~2_combout\ : std_logic;
SIGNAL \led70[2]~reg0_q\ : std_logic;
SIGNAL \led70~3_combout\ : std_logic;
SIGNAL \led70[3]~reg0_q\ : std_logic;
SIGNAL \led70~4_combout\ : std_logic;
SIGNAL \led70[4]~reg0_q\ : std_logic;
SIGNAL \led70~5_combout\ : std_logic;
SIGNAL \led70[5]~reg0_q\ : std_logic;
SIGNAL \led70~6_combout\ : std_logic;
SIGNAL \led70[6]~reg0_q\ : std_logic;
SIGNAL \led70~7_combout\ : std_logic;
SIGNAL \led70[7]~reg0_q\ : std_logic;
SIGNAL \led70~0_combout\ : std_logic;
SIGNAL \led70[0]~reg0_q\ : std_logic;
SIGNAL temp : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_key <= key;
ww_sw70 <= sw70;
led70 <= ww_led70;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X28_Y0_N2
\led70[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led70[0]~reg0_q\,
	devoe => ww_devoe,
	o => \led70[0]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\led70[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led70[1]~reg0_q\,
	devoe => ww_devoe,
	o => \led70[1]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\led70[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led70[2]~reg0_q\,
	devoe => ww_devoe,
	o => \led70[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\led70[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led70[3]~reg0_q\,
	devoe => ww_devoe,
	o => \led70[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\led70[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led70[4]~reg0_q\,
	devoe => ww_devoe,
	o => \led70[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\led70[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led70[5]~reg0_q\,
	devoe => ww_devoe,
	o => \led70[5]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\led70[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led70[6]~reg0_q\,
	devoe => ww_devoe,
	o => \led70[6]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\led70[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led70[7]~reg0_q\,
	devoe => ww_devoe,
	o => \led70[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X30_Y0_N8
\sw70[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw70(0),
	o => \sw70[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\key~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key,
	o => \key~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\sw70[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw70(7),
	o => \sw70[7]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\sw70[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw70(6),
	o => \sw70[6]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\sw70[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw70(5),
	o => \sw70[5]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\sw70[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw70(4),
	o => \sw70[4]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\sw70[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw70(3),
	o => \sw70[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\sw70[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw70(1),
	o => \sw70[1]~input_o\);

-- Location: LCCOMB_X30_Y1_N30
\led70~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \led70~1_combout\ = (\key~input_o\ & ((\led70[0]~reg0_q\))) # (!\key~input_o\ & (\sw70[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw70[1]~input_o\,
	datac => \key~input_o\,
	datad => \led70[0]~reg0_q\,
	combout => \led70~1_combout\);

-- Location: LCCOMB_X30_Y1_N22
\temp[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[0]~3_combout\ = !temp(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp(0),
	combout => \temp[0]~3_combout\);

-- Location: FF_X30_Y1_N23
\temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(0));

-- Location: LCCOMB_X30_Y1_N16
\temp[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[1]~0_combout\ = temp(0) $ (temp(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datac => temp(1),
	combout => \temp[1]~0_combout\);

-- Location: FF_X30_Y1_N17
\temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(1));

-- Location: LCCOMB_X30_Y1_N8
\temp[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[3]~2_combout\ = temp(3) $ (((temp(2) & (temp(1) & temp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datab => temp(1),
	datac => temp(3),
	datad => temp(0),
	combout => \temp[3]~2_combout\);

-- Location: FF_X30_Y1_N9
\temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(3));

-- Location: LCCOMB_X30_Y1_N26
\temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~1_combout\ = (temp(0) & ((temp(2) & ((!temp(1)))) # (!temp(2) & (temp(3) & temp(1))))) # (!temp(0) & (((temp(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datab => temp(3),
	datac => temp(2),
	datad => temp(1),
	combout => \temp~1_combout\);

-- Location: FF_X30_Y1_N27
\temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(2));

-- Location: LCCOMB_X30_Y1_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!temp(2) & (!temp(3) & (temp(0) & temp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datab => temp(3),
	datac => temp(0),
	datad => temp(1),
	combout => \Equal0~0_combout\);

-- Location: FF_X30_Y1_N29
ena : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena~q\);

-- Location: FF_X30_Y1_N31
\led70[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led70~1_combout\,
	ena => \ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led70[1]~reg0_q\);

-- Location: IOIBUF_X32_Y0_N22
\sw70[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw70(2),
	o => \sw70[2]~input_o\);

-- Location: LCCOMB_X30_Y1_N20
\led70~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \led70~2_combout\ = (\key~input_o\ & (\led70[1]~reg0_q\)) # (!\key~input_o\ & ((\sw70[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key~input_o\,
	datac => \led70[1]~reg0_q\,
	datad => \sw70[2]~input_o\,
	combout => \led70~2_combout\);

-- Location: FF_X30_Y1_N21
\led70[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led70~2_combout\,
	ena => \ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led70[2]~reg0_q\);

-- Location: LCCOMB_X30_Y1_N18
\led70~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \led70~3_combout\ = (\key~input_o\ & ((\led70[2]~reg0_q\))) # (!\key~input_o\ & (\sw70[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw70[3]~input_o\,
	datac => \key~input_o\,
	datad => \led70[2]~reg0_q\,
	combout => \led70~3_combout\);

-- Location: FF_X30_Y1_N19
\led70[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led70~3_combout\,
	ena => \ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led70[3]~reg0_q\);

-- Location: LCCOMB_X30_Y1_N12
\led70~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \led70~4_combout\ = (\key~input_o\ & ((\led70[3]~reg0_q\))) # (!\key~input_o\ & (\sw70[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key~input_o\,
	datac => \sw70[4]~input_o\,
	datad => \led70[3]~reg0_q\,
	combout => \led70~4_combout\);

-- Location: FF_X30_Y1_N13
\led70[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led70~4_combout\,
	ena => \ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led70[4]~reg0_q\);

-- Location: LCCOMB_X30_Y1_N2
\led70~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \led70~5_combout\ = (\key~input_o\ & ((\led70[4]~reg0_q\))) # (!\key~input_o\ & (\sw70[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw70[5]~input_o\,
	datac => \key~input_o\,
	datad => \led70[4]~reg0_q\,
	combout => \led70~5_combout\);

-- Location: FF_X30_Y1_N3
\led70[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led70~5_combout\,
	ena => \ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led70[5]~reg0_q\);

-- Location: LCCOMB_X30_Y1_N0
\led70~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \led70~6_combout\ = (\key~input_o\ & ((\led70[5]~reg0_q\))) # (!\key~input_o\ & (\sw70[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key~input_o\,
	datac => \sw70[6]~input_o\,
	datad => \led70[5]~reg0_q\,
	combout => \led70~6_combout\);

-- Location: FF_X30_Y1_N1
\led70[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led70~6_combout\,
	ena => \ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led70[6]~reg0_q\);

-- Location: LCCOMB_X30_Y1_N6
\led70~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \led70~7_combout\ = (\key~input_o\ & ((\led70[6]~reg0_q\))) # (!\key~input_o\ & (\sw70[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw70[7]~input_o\,
	datac => \key~input_o\,
	datad => \led70[6]~reg0_q\,
	combout => \led70~7_combout\);

-- Location: FF_X30_Y1_N7
\led70[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led70~7_combout\,
	ena => \ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led70[7]~reg0_q\);

-- Location: LCCOMB_X30_Y1_N24
\led70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led70~0_combout\ = (\key~input_o\ & ((\led70[7]~reg0_q\))) # (!\key~input_o\ & (\sw70[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw70[0]~input_o\,
	datac => \key~input_o\,
	datad => \led70[7]~reg0_q\,
	combout => \led70~0_combout\);

-- Location: FF_X30_Y1_N25
\led70[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led70~0_combout\,
	ena => \ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led70[0]~reg0_q\);

ww_led70(0) <= \led70[0]~output_o\;

ww_led70(1) <= \led70[1]~output_o\;

ww_led70(2) <= \led70[2]~output_o\;

ww_led70(3) <= \led70[3]~output_o\;

ww_led70(4) <= \led70[4]~output_o\;

ww_led70(5) <= \led70[5]~output_o\;

ww_led70(6) <= \led70[6]~output_o\;

ww_led70(7) <= \led70[7]~output_o\;
END structure;


