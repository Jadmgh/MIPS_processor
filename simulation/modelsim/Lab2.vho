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

-- DATE "02/26/2025 13:58:45"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab2 IS
    PORT (
	q : OUT std_logic_vector(31 DOWNTO 0);
	GClock : IN std_logic;
	PC_address : IN std_logic_vector(7 DOWNTO 0)
	);
END Lab2;

-- Design Ports Information
-- q[31]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[30]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[29]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[28]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[27]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[26]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[25]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[24]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[23]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[22]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[21]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[20]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[19]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[18]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[17]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[16]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[15]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[14]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[13]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[12]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[11]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[10]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GClock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_address[0]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_address[1]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_address[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_address[3]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_address[4]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_address[5]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_address[6]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_address[7]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_GClock : std_logic;
SIGNAL ww_PC_address : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \GClock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[31]~output_o\ : std_logic;
SIGNAL \q[30]~output_o\ : std_logic;
SIGNAL \q[29]~output_o\ : std_logic;
SIGNAL \q[28]~output_o\ : std_logic;
SIGNAL \q[27]~output_o\ : std_logic;
SIGNAL \q[26]~output_o\ : std_logic;
SIGNAL \q[25]~output_o\ : std_logic;
SIGNAL \q[24]~output_o\ : std_logic;
SIGNAL \q[23]~output_o\ : std_logic;
SIGNAL \q[22]~output_o\ : std_logic;
SIGNAL \q[21]~output_o\ : std_logic;
SIGNAL \q[20]~output_o\ : std_logic;
SIGNAL \q[19]~output_o\ : std_logic;
SIGNAL \q[18]~output_o\ : std_logic;
SIGNAL \q[17]~output_o\ : std_logic;
SIGNAL \q[16]~output_o\ : std_logic;
SIGNAL \q[15]~output_o\ : std_logic;
SIGNAL \q[14]~output_o\ : std_logic;
SIGNAL \q[13]~output_o\ : std_logic;
SIGNAL \q[12]~output_o\ : std_logic;
SIGNAL \q[11]~output_o\ : std_logic;
SIGNAL \q[10]~output_o\ : std_logic;
SIGNAL \q[9]~output_o\ : std_logic;
SIGNAL \q[8]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \GClock~input_o\ : std_logic;
SIGNAL \GClock~inputclkctrl_outclk\ : std_logic;
SIGNAL \PC_address[0]~input_o\ : std_logic;
SIGNAL \PC_address[1]~input_o\ : std_logic;
SIGNAL \PC_address[2]~input_o\ : std_logic;
SIGNAL \PC_address[3]~input_o\ : std_logic;
SIGNAL \PC_address[4]~input_o\ : std_logic;
SIGNAL \PC_address[5]~input_o\ : std_logic;
SIGNAL \PC_address[6]~input_o\ : std_logic;
SIGNAL \PC_address[7]~input_o\ : std_logic;
SIGNAL \inst|srom|rom_block|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);

BEGIN

q <= ww_q;
ww_GClock <= GClock;
ww_PC_address <= PC_address;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\PC_address[7]~input_o\ & \PC_address[6]~input_o\ & \PC_address[5]~input_o\ & \PC_address[4]~input_o\ & \PC_address[3]~input_o\ & \PC_address[2]~input_o\ & \PC_address[1]~input_o\ & 
\PC_address[0]~input_o\);

\inst|srom|rom_block|auto_generated|q_a\(0) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|srom|rom_block|auto_generated|q_a\(1) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|srom|rom_block|auto_generated|q_a\(2) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|srom|rom_block|auto_generated|q_a\(3) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst|srom|rom_block|auto_generated|q_a\(4) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst|srom|rom_block|auto_generated|q_a\(5) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst|srom|rom_block|auto_generated|q_a\(6) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst|srom|rom_block|auto_generated|q_a\(7) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst|srom|rom_block|auto_generated|q_a\(8) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst|srom|rom_block|auto_generated|q_a\(9) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst|srom|rom_block|auto_generated|q_a\(10) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst|srom|rom_block|auto_generated|q_a\(11) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst|srom|rom_block|auto_generated|q_a\(12) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst|srom|rom_block|auto_generated|q_a\(13) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst|srom|rom_block|auto_generated|q_a\(14) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst|srom|rom_block|auto_generated|q_a\(15) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\inst|srom|rom_block|auto_generated|q_a\(16) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\inst|srom|rom_block|auto_generated|q_a\(17) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\inst|srom|rom_block|auto_generated|q_a\(18) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\inst|srom|rom_block|auto_generated|q_a\(19) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\inst|srom|rom_block|auto_generated|q_a\(20) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\inst|srom|rom_block|auto_generated|q_a\(21) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\inst|srom|rom_block|auto_generated|q_a\(22) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\inst|srom|rom_block|auto_generated|q_a\(23) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\inst|srom|rom_block|auto_generated|q_a\(24) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\inst|srom|rom_block|auto_generated|q_a\(25) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\inst|srom|rom_block|auto_generated|q_a\(26) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\inst|srom|rom_block|auto_generated|q_a\(27) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\inst|srom|rom_block|auto_generated|q_a\(28) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\inst|srom|rom_block|auto_generated|q_a\(29) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\inst|srom|rom_block|auto_generated|q_a\(30) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\inst|srom|rom_block|auto_generated|q_a\(31) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);

\GClock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GClock~input_o\);

-- Location: IOOBUF_X7_Y0_N9
\q[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \q[31]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\q[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \q[30]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\q[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \q[29]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\q[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \q[28]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\q[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \q[27]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\q[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \q[26]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\q[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \q[25]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\q[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \q[24]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\q[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \q[23]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\q[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \q[22]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\q[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \q[21]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\q[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \q[20]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\q[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \q[19]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\q[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \q[18]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\q[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \q[17]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\q[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \q[16]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\q[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \q[15]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\q[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \q[14]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\q[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \q[13]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\q[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \q[12]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\q[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \q[11]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\q[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \q[10]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\q[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \q[9]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\q[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \q[8]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\GClock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GClock,
	o => \GClock~input_o\);

-- Location: CLKCTRL_G2
\GClock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GClock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GClock~inputclkctrl_outclk\);

-- Location: IOIBUF_X20_Y0_N22
\PC_address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_address(0),
	o => \PC_address[0]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\PC_address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_address(1),
	o => \PC_address[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\PC_address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_address(2),
	o => \PC_address[2]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\PC_address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_address(3),
	o => \PC_address[3]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\PC_address[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_address(4),
	o => \PC_address[4]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\PC_address[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_address(5),
	o => \PC_address[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\PC_address[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_address(6),
	o => \PC_address[6]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\PC_address[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_address(7),
	o => \PC_address[7]~input_o\);

-- Location: M9K_X15_Y4_N0
\inst|srom|rom_block|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001021FFFA00000000000000000000000000001022FFFF0000000000000000000000000000AC01000300000000000000000000000000000043082000000000000000000000000000008C03000100000000000000000000000000008C020000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "instruction_mem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom:inst|altrom:srom|altsyncram:rom_block|altsyncram_6511:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 36,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \GClock~inputclkctrl_outclk\,
	clk1 => GND,
	portaaddr => \inst|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

ww_q(31) <= \q[31]~output_o\;

ww_q(30) <= \q[30]~output_o\;

ww_q(29) <= \q[29]~output_o\;

ww_q(28) <= \q[28]~output_o\;

ww_q(27) <= \q[27]~output_o\;

ww_q(26) <= \q[26]~output_o\;

ww_q(25) <= \q[25]~output_o\;

ww_q(24) <= \q[24]~output_o\;

ww_q(23) <= \q[23]~output_o\;

ww_q(22) <= \q[22]~output_o\;

ww_q(21) <= \q[21]~output_o\;

ww_q(20) <= \q[20]~output_o\;

ww_q(19) <= \q[19]~output_o\;

ww_q(18) <= \q[18]~output_o\;

ww_q(17) <= \q[17]~output_o\;

ww_q(16) <= \q[16]~output_o\;

ww_q(15) <= \q[15]~output_o\;

ww_q(14) <= \q[14]~output_o\;

ww_q(13) <= \q[13]~output_o\;

ww_q(12) <= \q[12]~output_o\;

ww_q(11) <= \q[11]~output_o\;

ww_q(10) <= \q[10]~output_o\;

ww_q(9) <= \q[9]~output_o\;

ww_q(8) <= \q[8]~output_o\;

ww_q(7) <= \q[7]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(0) <= \q[0]~output_o\;
END structure;


