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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "04/03/2018 14:21:34"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CONCORRENTE IS
    PORT (
	binario : IN STD.STANDARD.bit_vector(0 TO 3);
	gray : OUT STD.STANDARD.bit_vector(0 TO 3)
	);
END CONCORRENTE;

-- Design Ports Information
-- gray[3]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gray[2]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gray[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gray[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binario[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binario[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binario[1]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binario[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CONCORRENTE IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_binario : std_logic_vector(0 TO 3);
SIGNAL ww_gray : std_logic_vector(0 TO 3);
SIGNAL \gray[3]~output_o\ : std_logic;
SIGNAL \gray[2]~output_o\ : std_logic;
SIGNAL \gray[1]~output_o\ : std_logic;
SIGNAL \gray[0]~output_o\ : std_logic;
SIGNAL \binario[3]~input_o\ : std_logic;
SIGNAL \binario[2]~input_o\ : std_logic;
SIGNAL \gray~0_combout\ : std_logic;
SIGNAL \binario[1]~input_o\ : std_logic;
SIGNAL \gray~1_combout\ : std_logic;
SIGNAL \binario[0]~input_o\ : std_logic;

BEGIN

ww_binario <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(binario);
gray <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_gray);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y25_N9
\gray[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \gray[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\gray[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gray~0_combout\,
	devoe => ww_devoe,
	o => \gray[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\gray[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gray~1_combout\,
	devoe => ww_devoe,
	o => \gray[1]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\gray[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binario[0]~input_o\,
	devoe => ww_devoe,
	o => \gray[0]~output_o\);

-- Location: IOIBUF_X0_Y7_N1
\binario[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binario(3),
	o => \binario[3]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\binario[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binario(2),
	o => \binario[2]~input_o\);

-- Location: LCCOMB_X1_Y8_N16
\gray~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gray~0_combout\ = \binario[3]~input_o\ $ (\binario[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \binario[3]~input_o\,
	datad => \binario[2]~input_o\,
	combout => \gray~0_combout\);

-- Location: IOIBUF_X0_Y7_N8
\binario[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binario(1),
	o => \binario[1]~input_o\);

-- Location: LCCOMB_X1_Y8_N10
\gray~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gray~1_combout\ = \binario[1]~input_o\ $ (\binario[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binario[1]~input_o\,
	datad => \binario[2]~input_o\,
	combout => \gray~1_combout\);

-- Location: IOIBUF_X40_Y34_N1
\binario[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binario(0),
	o => \binario[0]~input_o\);

ww_gray(3) <= \gray[3]~output_o\;

ww_gray(2) <= \gray[2]~output_o\;

ww_gray(1) <= \gray[1]~output_o\;

ww_gray(0) <= \gray[0]~output_o\;
END structure;


