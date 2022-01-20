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

-- DATE "09/27/2021 06:17:46"

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

ENTITY 	lab3_1 IS
    PORT (
	sw74 : IN std_logic_vector(3 DOWNTO 0);
	sw30 : IN std_logic_vector(3 DOWNTO 0);
	led74 : OUT std_logic;
	led30 : OUT std_logic
	);
END lab3_1;

-- Design Ports Information
-- led74	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led30	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw30[3]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw30[2]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw74[3]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw30[0]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw30[1]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw74[2]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw74[1]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw74[0]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3_1 IS
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
SIGNAL ww_led74 : std_logic;
SIGNAL ww_led30 : std_logic;
SIGNAL \led74~output_o\ : std_logic;
SIGNAL \led30~output_o\ : std_logic;
SIGNAL \sw30[3]~input_o\ : std_logic;
SIGNAL \sw30[2]~input_o\ : std_logic;
SIGNAL \sw30[0]~input_o\ : std_logic;
SIGNAL \sw30[1]~input_o\ : std_logic;
SIGNAL \sw74[2]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[5]~0_combout\ : std_logic;
SIGNAL \sw74[3]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ : std_logic;
SIGNAL \sw74[1]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[10]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[8]~6_combout\ : std_logic;
SIGNAL \sw74[0]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[10]~12_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[12]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[11]~11_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~17_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~13_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~14_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~15_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~16_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~20_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~28_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~21_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~18_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~19_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~29_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~23_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~22_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~30_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~24_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~31_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~25_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~26_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~32_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~27_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_6~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_6~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_6~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_6~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_op_6~10_combout\ : std_logic;

BEGIN

ww_sw74 <= sw74;
ww_sw30 <= sw30;
led74 <= ww_led74;
led30 <= ww_led30;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~8_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\;
\Div1|auto_generated|divider|divider|ALT_INV_op_6~10_combout\ <= NOT \Div1|auto_generated|divider|divider|op_6~10_combout\;

-- Location: IOOBUF_X34_Y17_N16
\led74~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~8_combout\,
	devoe => ww_devoe,
	o => \led74~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\led30~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div1|auto_generated|divider|divider|ALT_INV_op_6~10_combout\,
	devoe => ww_devoe,
	o => \led30~output_o\);

-- Location: IOIBUF_X34_Y12_N8
\sw30[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw30(3),
	o => \sw30[3]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\sw30[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw30(2),
	o => \sw30[2]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\sw30[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw30(0),
	o => \sw30[0]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\sw30[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw30(1),
	o => \sw30[1]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\sw74[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw74(2),
	o => \sw74[2]~input_o\);

-- Location: LCCOMB_X28_Y16_N0
\Div0|auto_generated|divider|divider|StageOut[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[5]~0_combout\ = (\sw30[0]~input_o\ & ((\sw74[2]~input_o\) # (!\sw30[1]~input_o\))) # (!\sw30[0]~input_o\ & (\sw30[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[0]~input_o\,
	datac => \sw30[1]~input_o\,
	datad => \sw74[2]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[5]~0_combout\);

-- Location: IOIBUF_X30_Y0_N8
\sw74[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw74(3),
	o => \sw74[3]~input_o\);

-- Location: LCCOMB_X28_Y16_N2
\Div0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\sw74[3]~input_o\ & ((\sw30[2]~input_o\) # ((\sw30[3]~input_o\) # (!\Div0|auto_generated|divider|divider|StageOut[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[5]~0_combout\,
	datac => \sw30[3]~input_o\,
	datad => \sw74[3]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: LCCOMB_X28_Y18_N24
\Div0|auto_generated|divider|divider|StageOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ = (\sw30[2]~input_o\) # ((\sw30[3]~input_o\) # ((!\sw74[3]~input_o\ & \sw30[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw74[3]~input_o\,
	datab => \sw30[2]~input_o\,
	datac => \sw30[3]~input_o\,
	datad => \sw30[1]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[4]~2_combout\);

-- Location: LCCOMB_X28_Y18_N2
\Div0|auto_generated|divider|divider|StageOut[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ = (\sw74[2]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[4]~2_combout\) # (!\sw30[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datac => \sw74[2]~input_o\,
	datad => \sw30[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[4]~3_combout\);

-- Location: IOIBUF_X34_Y20_N8
\sw74[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw74(1),
	o => \sw74[1]~input_o\);

-- Location: LCCOMB_X29_Y17_N4
\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\sw30[0]~input_o\ & (\sw74[1]~input_o\ $ (VCC))) # (!\sw30[0]~input_o\ & ((\sw74[1]~input_o\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\sw74[1]~input_o\) # (!\sw30[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[0]~input_o\,
	datab => \sw74[1]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X29_Y17_N6
\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & ((\sw30[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\sw30[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & ((\sw30[1]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # 
-- (!\sw30[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & (\sw30[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & ((\sw30[1]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[4]~3_combout\,
	datab => \sw30[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X29_Y17_N8
\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\sw30[2]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\sw30[2]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ & !\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\sw30[2]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[5]~1_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X29_Y17_N10
\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X29_Y17_N0
\Div0|auto_generated|divider|divider|StageOut[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[10]~4_combout\ = (\sw30[3]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\sw30[3]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \sw30[3]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[10]~4_combout\);

-- Location: LCCOMB_X29_Y17_N2
\Div0|auto_generated|divider|divider|StageOut[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~5_combout\ = (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[4]~3_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\sw30[3]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[4]~3_combout\)) # (!\sw30[3]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[4]~3_combout\,
	datac => \sw30[3]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~5_combout\);

-- Location: LCCOMB_X29_Y17_N12
\Div0|auto_generated|divider|divider|StageOut[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[8]~6_combout\ = (\sw30[3]~input_o\ & (((\sw74[1]~input_o\)))) # (!\sw30[3]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\sw74[1]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \sw74[1]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[8]~6_combout\);

-- Location: IOIBUF_X34_Y17_N22
\sw74[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw74(0),
	o => \sw74[0]~input_o\);

-- Location: LCCOMB_X29_Y17_N22
\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\sw74[0]~input_o\) # (!\sw30[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[0]~input_o\,
	datab => \sw74[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X29_Y17_N24
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[8]~6_combout\ & (\sw30[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[8]~6_combout\ & ((\sw30[1]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[8]~6_combout\,
	datab => \sw30[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X29_Y17_N26
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\sw30[2]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[9]~5_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)) # (!\sw30[2]~input_o\ 
-- & ((\Div0|auto_generated|divider|divider|StageOut[9]~5_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[9]~5_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X29_Y17_N28
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\sw30[3]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[10]~4_combout\))) # 
-- (!\sw30[3]~input_o\ & (!\Div0|auto_generated|divider|divider|StageOut[10]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[10]~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X29_Y17_N30
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X29_Y17_N14
\Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\sw30[0]~input_o\ & (\sw74[1]~input_o\ $ (VCC))) # (!\sw30[0]~input_o\ & ((\sw74[1]~input_o\) # (GND)))
-- \Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\sw74[1]~input_o\) # (!\sw30[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[0]~input_o\,
	datab => \sw74[1]~input_o\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X29_Y17_N16
\Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & ((\sw30[1]~input_o\ & (!\Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\sw30[1]~input_o\ & 
-- (\Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & ((\sw30[1]~input_o\ & ((\Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # 
-- (!\sw30[1]~input_o\ & (!\Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & (\sw30[1]~input_o\ & !\Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & ((\sw30[1]~input_o\) # (!\Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[4]~3_combout\,
	datab => \sw30[1]~input_o\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X29_Y17_N18
\Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\sw30[2]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\sw30[2]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ & !\Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\sw30[2]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[5]~1_combout\) # (!\Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X29_Y17_N20
\Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X28_Y18_N0
\Div1|auto_generated|divider|divider|StageOut[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[10]~12_combout\ = (\Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\sw74[1]~input_o\)))) # (!\Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\sw30[3]~input_o\ & (\sw74[1]~input_o\)) # (!\sw30[3]~input_o\ & ((\Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \sw30[3]~input_o\,
	datac => \sw74[1]~input_o\,
	datad => \Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[10]~12_combout\);

-- Location: LCCOMB_X28_Y18_N14
\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\sw74[0]~input_o\ & ((GND) # (!\sw30[0]~input_o\))) # (!\sw74[0]~input_o\ & (\sw30[0]~input_o\ $ (GND)))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\sw74[0]~input_o\) # (!\sw30[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw74[0]~input_o\,
	datab => \sw30[0]~input_o\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X28_Y18_N16
\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\sw30[1]~input_o\ & ((\Div1|auto_generated|divider|divider|StageOut[10]~12_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[10]~12_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # (!\sw30[1]~input_o\ & ((\Div1|auto_generated|divider|divider|StageOut[10]~12_combout\ & 
-- (\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # (!\Div1|auto_generated|divider|divider|StageOut[10]~12_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\sw30[1]~input_o\ & ((!\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (!\Div1|auto_generated|divider|divider|StageOut[10]~12_combout\))) # (!\sw30[1]~input_o\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[10]~12_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[1]~input_o\,
	datab => \Div1|auto_generated|divider|divider|StageOut[10]~12_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X28_Y18_N4
\Div1|auto_generated|divider|divider|StageOut[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[12]~10_combout\ = (\Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\sw30[3]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\sw30[3]~input_o\ & 
-- ((\Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datac => \sw30[3]~input_o\,
	datad => \Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[12]~10_combout\);

-- Location: LCCOMB_X28_Y18_N30
\Div1|auto_generated|divider|divider|StageOut[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[11]~11_combout\ = (\Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[4]~3_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\sw30[3]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[4]~3_combout\)) # (!\sw30[3]~input_o\ & 
-- ((\Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[4]~3_combout\,
	datac => \sw30[3]~input_o\,
	datad => \Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[11]~11_combout\);

-- Location: LCCOMB_X28_Y18_N18
\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\Div1|auto_generated|divider|divider|StageOut[11]~11_combout\ $ (\sw30[2]~input_o\ $ (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[11]~11_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\) # (!\sw30[2]~input_o\))) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[11]~11_combout\ & (!\sw30[2]~input_o\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[11]~11_combout\,
	datab => \sw30[2]~input_o\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X28_Y18_N20
\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\Div1|auto_generated|divider|divider|StageOut[12]~10_combout\ & ((\sw30[3]~input_o\ & (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # (!\sw30[3]~input_o\ & 
-- (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # (!\Div1|auto_generated|divider|divider|StageOut[12]~10_combout\ & ((\sw30[3]~input_o\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # 
-- (!\sw30[3]~input_o\ & (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[12]~10_combout\ & (\sw30[3]~input_o\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[12]~10_combout\ & ((\sw30[3]~input_o\) # (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[12]~10_combout\,
	datab => \sw30[3]~input_o\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X28_Y18_N22
\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X28_Y18_N28
\Div1|auto_generated|divider|divider|StageOut[16]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~17_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[10]~12_combout\))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[10]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~17_combout\);

-- Location: LCCOMB_X28_Y18_N10
\Div1|auto_generated|divider|divider|StageOut[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~13_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\sw74[0]~input_o\))) # (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datad => \sw74[0]~input_o\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~13_combout\);

-- Location: LCCOMB_X28_Y16_N6
\Div1|auto_generated|divider|divider|op_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_3~1_cout\ = CARRY(!\sw30[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[0]~input_o\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|op_3~1_cout\);

-- Location: LCCOMB_X28_Y16_N8
\Div1|auto_generated|divider|divider|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_3~2_combout\ = (\sw30[1]~input_o\ & ((\Div1|auto_generated|divider|divider|StageOut[15]~13_combout\ & (!\Div1|auto_generated|divider|divider|op_3~1_cout\)) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[15]~13_combout\ & ((\Div1|auto_generated|divider|divider|op_3~1_cout\) # (GND))))) # (!\sw30[1]~input_o\ & ((\Div1|auto_generated|divider|divider|StageOut[15]~13_combout\ & 
-- (\Div1|auto_generated|divider|divider|op_3~1_cout\ & VCC)) # (!\Div1|auto_generated|divider|divider|StageOut[15]~13_combout\ & (!\Div1|auto_generated|divider|divider|op_3~1_cout\))))
-- \Div1|auto_generated|divider|divider|op_3~3\ = CARRY((\sw30[1]~input_o\ & ((!\Div1|auto_generated|divider|divider|op_3~1_cout\) # (!\Div1|auto_generated|divider|divider|StageOut[15]~13_combout\))) # (!\sw30[1]~input_o\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[15]~13_combout\ & !\Div1|auto_generated|divider|divider|op_3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[1]~input_o\,
	datab => \Div1|auto_generated|divider|divider|StageOut[15]~13_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_3~1_cout\,
	combout => \Div1|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Div1|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X28_Y16_N10
\Div1|auto_generated|divider|divider|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_3~4_combout\ = ((\sw30[2]~input_o\ $ (\Div1|auto_generated|divider|divider|StageOut[16]~17_combout\ $ (\Div1|auto_generated|divider|divider|op_3~3\)))) # (GND)
-- \Div1|auto_generated|divider|divider|op_3~5\ = CARRY((\sw30[2]~input_o\ & (\Div1|auto_generated|divider|divider|StageOut[16]~17_combout\ & !\Div1|auto_generated|divider|divider|op_3~3\)) # (!\sw30[2]~input_o\ & 
-- ((\Div1|auto_generated|divider|divider|StageOut[16]~17_combout\) # (!\Div1|auto_generated|divider|divider|op_3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[2]~input_o\,
	datab => \Div1|auto_generated|divider|divider|StageOut[16]~17_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_3~3\,
	combout => \Div1|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Div1|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X28_Y18_N12
\Div1|auto_generated|divider|divider|StageOut[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~14_combout\ = (\Div1|auto_generated|divider|divider|StageOut[12]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|StageOut[12]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~14_combout\);

-- Location: LCCOMB_X28_Y18_N8
\Div1|auto_generated|divider|divider|StageOut[18]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~15_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~15_combout\);

-- Location: LCCOMB_X28_Y18_N26
\Div1|auto_generated|divider|divider|StageOut[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~16_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\Div1|auto_generated|divider|divider|StageOut[11]~11_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[11]~11_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~16_combout\);

-- Location: LCCOMB_X28_Y16_N12
\Div1|auto_generated|divider|divider|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_3~6_combout\ = (\Div1|auto_generated|divider|divider|StageOut[17]~16_combout\ & ((\sw30[3]~input_o\ & (!\Div1|auto_generated|divider|divider|op_3~5\)) # (!\sw30[3]~input_o\ & 
-- (\Div1|auto_generated|divider|divider|op_3~5\ & VCC)))) # (!\Div1|auto_generated|divider|divider|StageOut[17]~16_combout\ & ((\sw30[3]~input_o\ & ((\Div1|auto_generated|divider|divider|op_3~5\) # (GND))) # (!\sw30[3]~input_o\ & 
-- (!\Div1|auto_generated|divider|divider|op_3~5\))))
-- \Div1|auto_generated|divider|divider|op_3~7\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[17]~16_combout\ & (\sw30[3]~input_o\ & !\Div1|auto_generated|divider|divider|op_3~5\)) # (!\Div1|auto_generated|divider|divider|StageOut[17]~16_combout\ & 
-- ((\sw30[3]~input_o\) # (!\Div1|auto_generated|divider|divider|op_3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[17]~16_combout\,
	datab => \sw30[3]~input_o\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_3~5\,
	combout => \Div1|auto_generated|divider|divider|op_3~6_combout\,
	cout => \Div1|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X28_Y16_N14
\Div1|auto_generated|divider|divider|op_3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_3~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[18]~14_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[18]~15_combout\) # (!\Div1|auto_generated|divider|divider|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[18]~14_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[18]~15_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_3~7\,
	cout => \Div1|auto_generated|divider|divider|op_3~9_cout\);

-- Location: LCCOMB_X28_Y16_N16
\Div1|auto_generated|divider|divider|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_3~10_combout\ = !\Div1|auto_generated|divider|divider|op_3~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|op_3~9_cout\,
	combout => \Div1|auto_generated|divider|divider|op_3~10_combout\);

-- Location: LCCOMB_X28_Y16_N26
\Div1|auto_generated|divider|divider|StageOut[23]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~20_combout\ = (\Div1|auto_generated|divider|divider|op_3~6_combout\ & !\Div1|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_3~6_combout\,
	datad => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~20_combout\);

-- Location: LCCOMB_X28_Y18_N6
\Div1|auto_generated|divider|divider|StageOut[23]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~28_combout\ = (\Div1|auto_generated|divider|divider|op_3~10_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\Div1|auto_generated|divider|divider|StageOut[11]~11_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[11]~11_combout\,
	datab => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~28_combout\);

-- Location: LCCOMB_X28_Y16_N20
\Div1|auto_generated|divider|divider|StageOut[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~21_combout\ = (\Div1|auto_generated|divider|divider|op_3~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[16]~17_combout\))) # (!\Div1|auto_generated|divider|divider|op_3~10_combout\ & 
-- (\Div1|auto_generated|divider|divider|op_3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_3~4_combout\,
	datab => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[16]~17_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~21_combout\);

-- Location: LCCOMB_X28_Y16_N28
\Div1|auto_generated|divider|divider|StageOut[21]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~18_combout\ = (\Div1|auto_generated|divider|divider|op_3~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[15]~13_combout\))) # (!\Div1|auto_generated|divider|divider|op_3~10_combout\ & 
-- (\Div1|auto_generated|divider|divider|op_3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	datac => \Div1|auto_generated|divider|divider|op_3~2_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[15]~13_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~18_combout\);

-- Location: LCCOMB_X25_Y18_N0
\Div1|auto_generated|divider|divider|StageOut[20]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~19_combout\ = (\sw30[0]~input_o\ & !\Div1|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[0]~input_o\,
	datac => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~19_combout\);

-- Location: LCCOMB_X25_Y18_N14
\Div1|auto_generated|divider|divider|op_4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_4~1_cout\ = CARRY(!\sw30[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[0]~input_o\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|op_4~1_cout\);

-- Location: LCCOMB_X25_Y18_N16
\Div1|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_4~2_combout\ = (\sw30[1]~input_o\ & ((\Div1|auto_generated|divider|divider|StageOut[20]~19_combout\ & (!\Div1|auto_generated|divider|divider|op_4~1_cout\)) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[20]~19_combout\ & ((\Div1|auto_generated|divider|divider|op_4~1_cout\) # (GND))))) # (!\sw30[1]~input_o\ & ((\Div1|auto_generated|divider|divider|StageOut[20]~19_combout\ & 
-- (\Div1|auto_generated|divider|divider|op_4~1_cout\ & VCC)) # (!\Div1|auto_generated|divider|divider|StageOut[20]~19_combout\ & (!\Div1|auto_generated|divider|divider|op_4~1_cout\))))
-- \Div1|auto_generated|divider|divider|op_4~3\ = CARRY((\sw30[1]~input_o\ & ((!\Div1|auto_generated|divider|divider|op_4~1_cout\) # (!\Div1|auto_generated|divider|divider|StageOut[20]~19_combout\))) # (!\sw30[1]~input_o\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[20]~19_combout\ & !\Div1|auto_generated|divider|divider|op_4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[1]~input_o\,
	datab => \Div1|auto_generated|divider|divider|StageOut[20]~19_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_4~1_cout\,
	combout => \Div1|auto_generated|divider|divider|op_4~2_combout\,
	cout => \Div1|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X25_Y18_N18
\Div1|auto_generated|divider|divider|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_4~4_combout\ = ((\Div1|auto_generated|divider|divider|StageOut[21]~18_combout\ $ (\sw30[2]~input_o\ $ (\Div1|auto_generated|divider|divider|op_4~3\)))) # (GND)
-- \Div1|auto_generated|divider|divider|op_4~5\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[21]~18_combout\ & ((!\Div1|auto_generated|divider|divider|op_4~3\) # (!\sw30[2]~input_o\))) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[21]~18_combout\ & (!\sw30[2]~input_o\ & !\Div1|auto_generated|divider|divider|op_4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[21]~18_combout\,
	datab => \sw30[2]~input_o\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_4~3\,
	combout => \Div1|auto_generated|divider|divider|op_4~4_combout\,
	cout => \Div1|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X25_Y18_N20
\Div1|auto_generated|divider|divider|op_4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_4~6_combout\ = (\Div1|auto_generated|divider|divider|StageOut[22]~21_combout\ & ((\sw30[3]~input_o\ & (!\Div1|auto_generated|divider|divider|op_4~5\)) # (!\sw30[3]~input_o\ & 
-- (\Div1|auto_generated|divider|divider|op_4~5\ & VCC)))) # (!\Div1|auto_generated|divider|divider|StageOut[22]~21_combout\ & ((\sw30[3]~input_o\ & ((\Div1|auto_generated|divider|divider|op_4~5\) # (GND))) # (!\sw30[3]~input_o\ & 
-- (!\Div1|auto_generated|divider|divider|op_4~5\))))
-- \Div1|auto_generated|divider|divider|op_4~7\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[22]~21_combout\ & (\sw30[3]~input_o\ & !\Div1|auto_generated|divider|divider|op_4~5\)) # (!\Div1|auto_generated|divider|divider|StageOut[22]~21_combout\ & 
-- ((\sw30[3]~input_o\) # (!\Div1|auto_generated|divider|divider|op_4~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[22]~21_combout\,
	datab => \sw30[3]~input_o\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_4~5\,
	combout => \Div1|auto_generated|divider|divider|op_4~6_combout\,
	cout => \Div1|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X25_Y18_N22
\Div1|auto_generated|divider|divider|op_4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_4~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[23]~20_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[23]~28_combout\) # (!\Div1|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[23]~20_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[23]~28_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_4~7\,
	cout => \Div1|auto_generated|divider|divider|op_4~9_cout\);

-- Location: LCCOMB_X25_Y18_N24
\Div1|auto_generated|divider|divider|op_4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_4~10_combout\ = !\Div1|auto_generated|divider|divider|op_4~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|op_4~9_cout\,
	combout => \Div1|auto_generated|divider|divider|op_4~10_combout\);

-- Location: LCCOMB_X28_Y16_N22
\Div1|auto_generated|divider|divider|StageOut[28]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~29_combout\ = (\Div1|auto_generated|divider|divider|op_4~10_combout\ & ((\Div1|auto_generated|divider|divider|op_3~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[16]~17_combout\))) # 
-- (!\Div1|auto_generated|divider|divider|op_3~10_combout\ & (\Div1|auto_generated|divider|divider|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_3~4_combout\,
	datab => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	datac => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[16]~17_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~29_combout\);

-- Location: LCCOMB_X25_Y18_N12
\Div1|auto_generated|divider|divider|StageOut[28]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~23_combout\ = (\Div1|auto_generated|divider|divider|op_4~6_combout\ & !\Div1|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_4~6_combout\,
	datad => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~23_combout\);

-- Location: LCCOMB_X25_Y18_N10
\Div1|auto_generated|divider|divider|StageOut[27]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~22_combout\ = (\Div1|auto_generated|divider|divider|op_4~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[21]~18_combout\))) # (!\Div1|auto_generated|divider|divider|op_4~10_combout\ & 
-- (\Div1|auto_generated|divider|divider|op_4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_4~4_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[21]~18_combout\,
	datad => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~22_combout\);

-- Location: LCCOMB_X25_Y18_N8
\Div1|auto_generated|divider|divider|StageOut[26]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~30_combout\ = (\Div1|auto_generated|divider|divider|op_4~10_combout\ & (\sw30[0]~input_o\ & (!\Div1|auto_generated|divider|divider|op_3~10_combout\))) # 
-- (!\Div1|auto_generated|divider|divider|op_4~10_combout\ & (((\Div1|auto_generated|divider|divider|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[0]~input_o\,
	datab => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div1|auto_generated|divider|divider|op_4~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~30_combout\);

-- Location: LCCOMB_X25_Y18_N30
\Div1|auto_generated|divider|divider|StageOut[25]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~24_combout\ = (!\Div1|auto_generated|divider|divider|op_4~10_combout\ & \sw30[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	datac => \sw30[0]~input_o\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~24_combout\);

-- Location: LCCOMB_X25_Y17_N18
\Div1|auto_generated|divider|divider|op_5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_5~1_cout\ = CARRY(!\sw30[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[0]~input_o\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|op_5~1_cout\);

-- Location: LCCOMB_X25_Y17_N20
\Div1|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_5~2_combout\ = (\sw30[1]~input_o\ & ((\Div1|auto_generated|divider|divider|StageOut[25]~24_combout\ & (!\Div1|auto_generated|divider|divider|op_5~1_cout\)) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[25]~24_combout\ & ((\Div1|auto_generated|divider|divider|op_5~1_cout\) # (GND))))) # (!\sw30[1]~input_o\ & ((\Div1|auto_generated|divider|divider|StageOut[25]~24_combout\ & 
-- (\Div1|auto_generated|divider|divider|op_5~1_cout\ & VCC)) # (!\Div1|auto_generated|divider|divider|StageOut[25]~24_combout\ & (!\Div1|auto_generated|divider|divider|op_5~1_cout\))))
-- \Div1|auto_generated|divider|divider|op_5~3\ = CARRY((\sw30[1]~input_o\ & ((!\Div1|auto_generated|divider|divider|op_5~1_cout\) # (!\Div1|auto_generated|divider|divider|StageOut[25]~24_combout\))) # (!\sw30[1]~input_o\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[25]~24_combout\ & !\Div1|auto_generated|divider|divider|op_5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[1]~input_o\,
	datab => \Div1|auto_generated|divider|divider|StageOut[25]~24_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_5~1_cout\,
	combout => \Div1|auto_generated|divider|divider|op_5~2_combout\,
	cout => \Div1|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X25_Y17_N22
\Div1|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_5~4_combout\ = ((\sw30[2]~input_o\ $ (\Div1|auto_generated|divider|divider|StageOut[26]~30_combout\ $ (\Div1|auto_generated|divider|divider|op_5~3\)))) # (GND)
-- \Div1|auto_generated|divider|divider|op_5~5\ = CARRY((\sw30[2]~input_o\ & (\Div1|auto_generated|divider|divider|StageOut[26]~30_combout\ & !\Div1|auto_generated|divider|divider|op_5~3\)) # (!\sw30[2]~input_o\ & 
-- ((\Div1|auto_generated|divider|divider|StageOut[26]~30_combout\) # (!\Div1|auto_generated|divider|divider|op_5~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[2]~input_o\,
	datab => \Div1|auto_generated|divider|divider|StageOut[26]~30_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_5~3\,
	combout => \Div1|auto_generated|divider|divider|op_5~4_combout\,
	cout => \Div1|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X25_Y17_N24
\Div1|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_5~6_combout\ = (\Div1|auto_generated|divider|divider|StageOut[27]~22_combout\ & ((\sw30[3]~input_o\ & (!\Div1|auto_generated|divider|divider|op_5~5\)) # (!\sw30[3]~input_o\ & 
-- (\Div1|auto_generated|divider|divider|op_5~5\ & VCC)))) # (!\Div1|auto_generated|divider|divider|StageOut[27]~22_combout\ & ((\sw30[3]~input_o\ & ((\Div1|auto_generated|divider|divider|op_5~5\) # (GND))) # (!\sw30[3]~input_o\ & 
-- (!\Div1|auto_generated|divider|divider|op_5~5\))))
-- \Div1|auto_generated|divider|divider|op_5~7\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[27]~22_combout\ & (\sw30[3]~input_o\ & !\Div1|auto_generated|divider|divider|op_5~5\)) # (!\Div1|auto_generated|divider|divider|StageOut[27]~22_combout\ & 
-- ((\sw30[3]~input_o\) # (!\Div1|auto_generated|divider|divider|op_5~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[27]~22_combout\,
	datab => \sw30[3]~input_o\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_5~5\,
	combout => \Div1|auto_generated|divider|divider|op_5~6_combout\,
	cout => \Div1|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X25_Y17_N26
\Div1|auto_generated|divider|divider|op_5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_5~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[28]~29_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[28]~23_combout\) # (!\Div1|auto_generated|divider|divider|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[28]~29_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[28]~23_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_5~7\,
	cout => \Div1|auto_generated|divider|divider|op_5~9_cout\);

-- Location: LCCOMB_X25_Y17_N28
\Div1|auto_generated|divider|divider|op_5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_5~10_combout\ = !\Div1|auto_generated|divider|divider|op_5~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|op_5~9_cout\,
	combout => \Div1|auto_generated|divider|divider|op_5~10_combout\);

-- Location: LCCOMB_X25_Y18_N26
\Div1|auto_generated|divider|divider|StageOut[33]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~31_combout\ = (\Div1|auto_generated|divider|divider|op_5~10_combout\ & ((\Div1|auto_generated|divider|divider|op_4~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[21]~18_combout\))) # 
-- (!\Div1|auto_generated|divider|divider|op_4~10_combout\ & (\Div1|auto_generated|divider|divider|op_4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Div1|auto_generated|divider|divider|op_4~4_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[21]~18_combout\,
	datad => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~31_combout\);

-- Location: LCCOMB_X25_Y17_N16
\Div1|auto_generated|divider|divider|StageOut[33]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~25_combout\ = (\Div1|auto_generated|divider|divider|op_5~6_combout\ & !\Div1|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_5~6_combout\,
	datad => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~25_combout\);

-- Location: LCCOMB_X25_Y17_N30
\Div1|auto_generated|divider|divider|StageOut[32]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~26_combout\ = (\Div1|auto_generated|divider|divider|op_5~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[26]~30_combout\))) # (!\Div1|auto_generated|divider|divider|op_5~10_combout\ & 
-- (\Div1|auto_generated|divider|divider|op_5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_5~4_combout\,
	datab => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[26]~30_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~26_combout\);

-- Location: LCCOMB_X25_Y17_N14
\Div1|auto_generated|divider|divider|StageOut[31]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~32_combout\ = (\Div1|auto_generated|divider|divider|op_5~10_combout\ & (!\Div1|auto_generated|divider|divider|op_4~10_combout\ & ((\sw30[0]~input_o\)))) # 
-- (!\Div1|auto_generated|divider|divider|op_5~10_combout\ & (((\Div1|auto_generated|divider|divider|op_5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div1|auto_generated|divider|divider|op_5~2_combout\,
	datac => \sw30[0]~input_o\,
	datad => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~32_combout\);

-- Location: LCCOMB_X25_Y17_N0
\Div1|auto_generated|divider|divider|StageOut[30]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~27_combout\ = (\sw30[0]~input_o\ & !\Div1|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw30[0]~input_o\,
	datad => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~27_combout\);

-- Location: LCCOMB_X25_Y17_N2
\Div1|auto_generated|divider|divider|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_6~1_cout\ = CARRY(!\sw30[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[0]~input_o\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X25_Y17_N4
\Div1|auto_generated|divider|divider|op_6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_6~3_cout\ = CARRY((\sw30[1]~input_o\ & ((!\Div1|auto_generated|divider|divider|op_6~1_cout\) # (!\Div1|auto_generated|divider|divider|StageOut[30]~27_combout\))) # (!\sw30[1]~input_o\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[30]~27_combout\ & !\Div1|auto_generated|divider|divider|op_6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[1]~input_o\,
	datab => \Div1|auto_generated|divider|divider|StageOut[30]~27_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_6~1_cout\,
	cout => \Div1|auto_generated|divider|divider|op_6~3_cout\);

-- Location: LCCOMB_X25_Y17_N6
\Div1|auto_generated|divider|divider|op_6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_6~5_cout\ = CARRY((\sw30[2]~input_o\ & (\Div1|auto_generated|divider|divider|StageOut[31]~32_combout\ & !\Div1|auto_generated|divider|divider|op_6~3_cout\)) # (!\sw30[2]~input_o\ & 
-- ((\Div1|auto_generated|divider|divider|StageOut[31]~32_combout\) # (!\Div1|auto_generated|divider|divider|op_6~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw30[2]~input_o\,
	datab => \Div1|auto_generated|divider|divider|StageOut[31]~32_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_6~3_cout\,
	cout => \Div1|auto_generated|divider|divider|op_6~5_cout\);

-- Location: LCCOMB_X25_Y17_N8
\Div1|auto_generated|divider|divider|op_6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_6~7_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[32]~26_combout\ & (\sw30[3]~input_o\ & !\Div1|auto_generated|divider|divider|op_6~5_cout\)) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[32]~26_combout\ & ((\sw30[3]~input_o\) # (!\Div1|auto_generated|divider|divider|op_6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[32]~26_combout\,
	datab => \sw30[3]~input_o\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_6~5_cout\,
	cout => \Div1|auto_generated|divider|divider|op_6~7_cout\);

-- Location: LCCOMB_X25_Y17_N10
\Div1|auto_generated|divider|divider|op_6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_6~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[33]~31_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[33]~25_combout\) # (!\Div1|auto_generated|divider|divider|op_6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[33]~31_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[33]~25_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_6~7_cout\,
	cout => \Div1|auto_generated|divider|divider|op_6~9_cout\);

-- Location: LCCOMB_X25_Y17_N12
\Div1|auto_generated|divider|divider|op_6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_6~10_combout\ = !\Div1|auto_generated|divider|divider|op_6~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|op_6~9_cout\,
	combout => \Div1|auto_generated|divider|divider|op_6~10_combout\);

ww_led74 <= \led74~output_o\;

ww_led30 <= \led30~output_o\;
END structure;


