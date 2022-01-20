-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/14/2021 17:16:15"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab4_3 IS
    PORT (
	clk : IN std_logic;
	aclr : IN std_logic;
	led30 : OUT std_logic_vector(3 DOWNTO 0);
	led74 : OUT std_logic_vector(3 DOWNTO 0)
	);
END lab4_3;

-- Design Ports Information
-- led30[0]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led30[1]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led30[2]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led30[3]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led74[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led74[1]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led74[2]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led74[3]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aclr	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4_3 IS
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
SIGNAL ww_aclr : std_logic;
SIGNAL ww_led30 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_led74 : std_logic_vector(3 DOWNTO 0);
SIGNAL \aclr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led30[0]~output_o\ : std_logic;
SIGNAL \led30[1]~output_o\ : std_logic;
SIGNAL \led30[2]~output_o\ : std_logic;
SIGNAL \led30[3]~output_o\ : std_logic;
SIGNAL \led74[0]~output_o\ : std_logic;
SIGNAL \led74[1]~output_o\ : std_logic;
SIGNAL \led74[2]~output_o\ : std_logic;
SIGNAL \led74[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \led30[0]~2_combout\ : std_logic;
SIGNAL \aclr~input_o\ : std_logic;
SIGNAL \aclr~inputclkctrl_outclk\ : std_logic;
SIGNAL \tmp[0]~3_combout\ : std_logic;
SIGNAL \tmp[2]~1_combout\ : std_logic;
SIGNAL \tmp[3]~0_combout\ : std_logic;
SIGNAL \tmp~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \ena~feeder_combout\ : std_logic;
SIGNAL \ena~q\ : std_logic;
SIGNAL \led30[0]~reg0_q\ : std_logic;
SIGNAL \led30~1_combout\ : std_logic;
SIGNAL \led30[2]~reg0_q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \led30[3]~reg0_q\ : std_logic;
SIGNAL \led30~0_combout\ : std_logic;
SIGNAL \led30[1]~reg0_q\ : std_logic;
SIGNAL \led74[0]~3_combout\ : std_logic;
SIGNAL \cout~0_combout\ : std_logic;
SIGNAL \cout~1_combout\ : std_logic;
SIGNAL \cout~q\ : std_logic;
SIGNAL \always2~0_combout\ : std_logic;
SIGNAL \led74[0]~reg0_q\ : std_logic;
SIGNAL \led74[2]~1_combout\ : std_logic;
SIGNAL \led74[2]~reg0_q\ : std_logic;
SIGNAL \led74~2_combout\ : std_logic;
SIGNAL \led74[3]~reg0_q\ : std_logic;
SIGNAL \led74~0_combout\ : std_logic;
SIGNAL \led74[1]~reg0_q\ : std_logic;
SIGNAL tmp : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_aclr <= aclr;
led30 <= ww_led30;
led74 <= ww_led74;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\aclr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \aclr~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y7_N2
\led30[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led30[0]~reg0_q\,
	devoe => ww_devoe,
	o => \led30[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\led30[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led30[1]~reg0_q\,
	devoe => ww_devoe,
	o => \led30[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\led30[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led30[2]~reg0_q\,
	devoe => ww_devoe,
	o => \led30[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\led30[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led30[3]~reg0_q\,
	devoe => ww_devoe,
	o => \led30[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\led74[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led74[0]~reg0_q\,
	devoe => ww_devoe,
	o => \led74[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\led74[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led74[1]~reg0_q\,
	devoe => ww_devoe,
	o => \led74[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\led74[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led74[2]~reg0_q\,
	devoe => ww_devoe,
	o => \led74[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\led74[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led74[3]~reg0_q\,
	devoe => ww_devoe,
	o => \led74[3]~output_o\);

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

-- Location: LCCOMB_X1_Y4_N12
\led30[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \led30[0]~2_combout\ = !\led30[0]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led30[0]~reg0_q\,
	combout => \led30[0]~2_combout\);

-- Location: IOIBUF_X0_Y11_N15
\aclr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aclr,
	o => \aclr~input_o\);

-- Location: CLKCTRL_G4
\aclr~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \aclr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \aclr~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y4_N20
\tmp[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[0]~3_combout\ = !tmp(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(0),
	combout => \tmp[0]~3_combout\);

-- Location: FF_X1_Y4_N21
\tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp[0]~3_combout\,
	clrn => \aclr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(0));

-- Location: LCCOMB_X1_Y4_N4
\tmp[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[2]~1_combout\ = tmp(2) $ (((tmp(1) & tmp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tmp(1),
	datac => tmp(2),
	datad => tmp(0),
	combout => \tmp[2]~1_combout\);

-- Location: FF_X1_Y4_N5
\tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp[2]~1_combout\,
	clrn => \aclr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(2));

-- Location: LCCOMB_X1_Y4_N2
\tmp[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[3]~0_combout\ = tmp(3) $ (((tmp(0) & (tmp(2) & tmp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmp(0),
	datab => tmp(2),
	datac => tmp(3),
	datad => tmp(1),
	combout => \tmp[3]~0_combout\);

-- Location: FF_X1_Y4_N3
\tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp[3]~0_combout\,
	clrn => \aclr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(3));

-- Location: LCCOMB_X1_Y4_N30
\tmp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~2_combout\ = (tmp(0) & (!tmp(1) & ((tmp(3)) # (tmp(2))))) # (!tmp(0) & (((tmp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmp(0),
	datab => tmp(3),
	datac => tmp(1),
	datad => tmp(2),
	combout => \tmp~2_combout\);

-- Location: FF_X1_Y4_N31
\tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp~2_combout\,
	clrn => \aclr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(1));

-- Location: LCCOMB_X1_Y4_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!tmp(1) & (tmp(0) & (!tmp(2) & !tmp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmp(1),
	datab => tmp(0),
	datac => tmp(2),
	datad => tmp(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X2_Y4_N12
\ena~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena~feeder_combout\ = \Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal0~0_combout\,
	combout => \ena~feeder_combout\);

-- Location: FF_X2_Y4_N13
ena : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ena~feeder_combout\,
	clrn => \aclr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena~q\);

-- Location: FF_X1_Y4_N13
\led30[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led30[0]~2_combout\,
	clrn => \aclr~inputclkctrl_outclk\,
	ena => \ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led30[0]~reg0_q\);

-- Location: LCCOMB_X1_Y4_N28
\led30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \led30~1_combout\ = \led30[2]~reg0_q\ $ (((\led30[0]~reg0_q\ & \led30[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led30[0]~reg0_q\,
	datac => \led30[2]~reg0_q\,
	datad => \led30[1]~reg0_q\,
	combout => \led30~1_combout\);

-- Location: FF_X1_Y4_N29
\led30[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led30~1_combout\,
	clrn => \aclr~inputclkctrl_outclk\,
	ena => \ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led30[2]~reg0_q\);

-- Location: LCCOMB_X1_Y4_N22
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\led30[0]~reg0_q\ & ((\led30[1]~reg0_q\ & (\led30[3]~reg0_q\ $ (\led30[2]~reg0_q\))) # (!\led30[1]~reg0_q\ & (\led30[3]~reg0_q\ & \led30[2]~reg0_q\)))) # (!\led30[0]~reg0_q\ & (((\led30[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led30[0]~reg0_q\,
	datab => \led30[1]~reg0_q\,
	datac => \led30[3]~reg0_q\,
	datad => \led30[2]~reg0_q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X1_Y4_N23
\led30[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \aclr~inputclkctrl_outclk\,
	ena => \ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led30[3]~reg0_q\);

-- Location: LCCOMB_X1_Y4_N18
\led30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led30~0_combout\ = (\led30[1]~reg0_q\ & (((!\led30[0]~reg0_q\)))) # (!\led30[1]~reg0_q\ & (\led30[0]~reg0_q\ & ((\led30[2]~reg0_q\) # (!\led30[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led30[3]~reg0_q\,
	datab => \led30[2]~reg0_q\,
	datac => \led30[1]~reg0_q\,
	datad => \led30[0]~reg0_q\,
	combout => \led30~0_combout\);

-- Location: FF_X1_Y4_N19
\led30[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led30~0_combout\,
	clrn => \aclr~inputclkctrl_outclk\,
	ena => \ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led30[1]~reg0_q\);

-- Location: LCCOMB_X2_Y4_N16
\led74[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \led74[0]~3_combout\ = !\led74[0]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led74[0]~reg0_q\,
	combout => \led74[0]~3_combout\);

-- Location: LCCOMB_X1_Y4_N14
\cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cout~0_combout\ = (!\led30[0]~reg0_q\ & (!\led30[1]~reg0_q\ & (\led30[3]~reg0_q\ & !\led30[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led30[0]~reg0_q\,
	datab => \led30[1]~reg0_q\,
	datac => \led30[3]~reg0_q\,
	datad => \led30[2]~reg0_q\,
	combout => \cout~0_combout\);

-- Location: LCCOMB_X2_Y4_N14
\cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cout~1_combout\ = (\aclr~input_o\ & ((\ena~q\ & ((\cout~0_combout\))) # (!\ena~q\ & (\cout~q\)))) # (!\aclr~input_o\ & (((\cout~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aclr~input_o\,
	datab => \ena~q\,
	datac => \cout~q\,
	datad => \cout~0_combout\,
	combout => \cout~1_combout\);

-- Location: FF_X2_Y4_N15
cout : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cout~q\);

-- Location: LCCOMB_X2_Y4_N20
\always2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~0_combout\ = (\cout~q\ & \ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cout~q\,
	datad => \ena~q\,
	combout => \always2~0_combout\);

-- Location: FF_X2_Y4_N17
\led74[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led74[0]~3_combout\,
	clrn => \aclr~inputclkctrl_outclk\,
	ena => \always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led74[0]~reg0_q\);

-- Location: LCCOMB_X2_Y4_N8
\led74[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \led74[2]~1_combout\ = \led74[2]~reg0_q\ $ (((\led74[1]~reg0_q\ & (\led74[0]~reg0_q\ & \always2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led74[1]~reg0_q\,
	datab => \led74[0]~reg0_q\,
	datac => \led74[2]~reg0_q\,
	datad => \always2~0_combout\,
	combout => \led74[2]~1_combout\);

-- Location: FF_X2_Y4_N9
\led74[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led74[2]~1_combout\,
	clrn => \aclr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led74[2]~reg0_q\);

-- Location: LCCOMB_X2_Y4_N22
\led74~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \led74~2_combout\ = (\led74[1]~reg0_q\ & (\led74[3]~reg0_q\ $ (((\led74[0]~reg0_q\ & \led74[2]~reg0_q\))))) # (!\led74[1]~reg0_q\ & (\led74[3]~reg0_q\ & ((\led74[2]~reg0_q\) # (!\led74[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led74[1]~reg0_q\,
	datab => \led74[0]~reg0_q\,
	datac => \led74[3]~reg0_q\,
	datad => \led74[2]~reg0_q\,
	combout => \led74~2_combout\);

-- Location: FF_X2_Y4_N23
\led74[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led74~2_combout\,
	clrn => \aclr~inputclkctrl_outclk\,
	ena => \always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led74[3]~reg0_q\);

-- Location: LCCOMB_X2_Y4_N26
\led74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led74~0_combout\ = (\led74[0]~reg0_q\ & (!\led74[1]~reg0_q\ & ((\led74[2]~reg0_q\) # (!\led74[3]~reg0_q\)))) # (!\led74[0]~reg0_q\ & (((\led74[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led74[3]~reg0_q\,
	datab => \led74[0]~reg0_q\,
	datac => \led74[1]~reg0_q\,
	datad => \led74[2]~reg0_q\,
	combout => \led74~0_combout\);

-- Location: FF_X2_Y4_N27
\led74[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led74~0_combout\,
	clrn => \aclr~inputclkctrl_outclk\,
	ena => \always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led74[1]~reg0_q\);

ww_led30(0) <= \led30[0]~output_o\;

ww_led30(1) <= \led30[1]~output_o\;

ww_led30(2) <= \led30[2]~output_o\;

ww_led30(3) <= \led30[3]~output_o\;

ww_led74(0) <= \led74[0]~output_o\;

ww_led74(1) <= \led74[1]~output_o\;

ww_led74(2) <= \led74[2]~output_o\;

ww_led74(3) <= \led74[3]~output_o\;
END structure;


