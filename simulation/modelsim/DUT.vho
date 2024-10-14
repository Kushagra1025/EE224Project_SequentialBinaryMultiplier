-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/13/2024 11:53:39"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DUT IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	multiplicand : IN std_logic_vector(3 DOWNTO 0);
	multiplier : IN std_logic_vector(3 DOWNTO 0);
	product : BUFFER std_logic_vector(7 DOWNTO 0);
	ready : BUFFER std_logic
	);
END DUT;

-- Design Ports Information
-- product[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[3]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[4]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[5]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[7]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ready	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[0]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[1]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[3]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[0]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[2]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[3]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DUT IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_multiplicand : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_multiplier : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_product : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ready : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \product[0]~output_o\ : std_logic;
SIGNAL \product[1]~output_o\ : std_logic;
SIGNAL \product[2]~output_o\ : std_logic;
SIGNAL \product[3]~output_o\ : std_logic;
SIGNAL \product[4]~output_o\ : std_logic;
SIGNAL \product[5]~output_o\ : std_logic;
SIGNAL \product[6]~output_o\ : std_logic;
SIGNAL \product[7]~output_o\ : std_logic;
SIGNAL \ready~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \multiplicand[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \fsm_inst|Selector1~0_combout\ : std_logic;
SIGNAL \fsm_inst|state.ADD~q\ : std_logic;
SIGNAL \fsm_inst|state.SHIFT0~feeder_combout\ : std_logic;
SIGNAL \fsm_inst|state.SHIFT0~q\ : std_logic;
SIGNAL \fsm_inst|count[1]~6_combout\ : std_logic;
SIGNAL \fsm_inst|count[2]~3_combout\ : std_logic;
SIGNAL \fsm_inst|count[2]~4_combout\ : std_logic;
SIGNAL \fsm_inst|shift~0_combout\ : std_logic;
SIGNAL \fsm_inst|count[0]~5_combout\ : std_logic;
SIGNAL \fsm_inst|next_state.DONE~0_combout\ : std_logic;
SIGNAL \fsm_inst|state.DONE~q\ : std_logic;
SIGNAL \fsm_inst|Selector0~0_combout\ : std_logic;
SIGNAL \fsm_inst|state.IDLE~q\ : std_logic;
SIGNAL \fsm_inst|next_state.LOAD0~0_combout\ : std_logic;
SIGNAL \fsm_inst|state.LOAD0~q\ : std_logic;
SIGNAL \datapath_inst|Add0~0_combout\ : std_logic;
SIGNAL \fsm_inst|add_en~0_combout\ : std_logic;
SIGNAL \multiplier[1]~input_o\ : std_logic;
SIGNAL \multiplier[2]~input_o\ : std_logic;
SIGNAL \multiplier[3]~input_o\ : std_logic;
SIGNAL \multiplier[0]~input_o\ : std_logic;
SIGNAL \fsm_inst|Mux0~0_combout\ : std_logic;
SIGNAL \fsm_inst|Mux0~1_combout\ : std_logic;
SIGNAL \datapath_inst|P~10_combout\ : std_logic;
SIGNAL \multiplicand[3]~input_o\ : std_logic;
SIGNAL \multiplicand[2]~input_o\ : std_logic;
SIGNAL \multiplicand[1]~input_o\ : std_logic;
SIGNAL \datapath_inst|Add0~1\ : std_logic;
SIGNAL \datapath_inst|Add0~3\ : std_logic;
SIGNAL \datapath_inst|Add0~5\ : std_logic;
SIGNAL \datapath_inst|Add0~7\ : std_logic;
SIGNAL \datapath_inst|Add0~8_combout\ : std_logic;
SIGNAL \datapath_inst|P~11_combout\ : std_logic;
SIGNAL \datapath_inst|Add0~6_combout\ : std_logic;
SIGNAL \datapath_inst|P~9_combout\ : std_logic;
SIGNAL \datapath_inst|P[4]~6_combout\ : std_logic;
SIGNAL \datapath_inst|Add0~4_combout\ : std_logic;
SIGNAL \datapath_inst|P~8_combout\ : std_logic;
SIGNAL \datapath_inst|Add0~2_combout\ : std_logic;
SIGNAL \datapath_inst|P~7_combout\ : std_logic;
SIGNAL \datapath_inst|P~5_combout\ : std_logic;
SIGNAL \datapath_inst|P~4_combout\ : std_logic;
SIGNAL \datapath_inst|P[0]~1_combout\ : std_logic;
SIGNAL \datapath_inst|P~3_combout\ : std_logic;
SIGNAL \datapath_inst|P~2_combout\ : std_logic;
SIGNAL \datapath_inst|P~0_combout\ : std_logic;
SIGNAL \datapath_inst|P\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \datapath_inst|A\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fsm_inst|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_start <= start;
ww_multiplicand <= multiplicand;
ww_multiplier <= multiplier;
product <= ww_product;
ready <= ww_ready;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y14_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X10_Y18_N9
\product[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|P\(0),
	devoe => ww_devoe,
	o => \product[0]~output_o\);

-- Location: IOOBUF_X10_Y18_N2
\product[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|P\(1),
	devoe => ww_devoe,
	o => \product[1]~output_o\);

-- Location: IOOBUF_X10_Y18_N16
\product[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|P\(2),
	devoe => ww_devoe,
	o => \product[2]~output_o\);

-- Location: IOOBUF_X10_Y19_N9
\product[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|P\(3),
	devoe => ww_devoe,
	o => \product[3]~output_o\);

-- Location: IOOBUF_X10_Y15_N23
\product[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|P\(4),
	devoe => ww_devoe,
	o => \product[4]~output_o\);

-- Location: IOOBUF_X6_Y10_N23
\product[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|P\(5),
	devoe => ww_devoe,
	o => \product[5]~output_o\);

-- Location: IOOBUF_X10_Y15_N16
\product[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|P\(6),
	devoe => ww_devoe,
	o => \product[6]~output_o\);

-- Location: IOOBUF_X10_Y15_N9
\product[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|P\(7),
	devoe => ww_devoe,
	o => \product[7]~output_o\);

-- Location: IOOBUF_X10_Y15_N2
\ready~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|state.DONE~q\,
	devoe => ww_devoe,
	o => \ready~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: IOIBUF_X10_Y19_N15
\multiplicand[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(0),
	o => \multiplicand[0]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X6_Y10_N1
\start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X13_Y15_N16
\fsm_inst|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector1~0_combout\ = (\fsm_inst|shift~0_combout\) # (\fsm_inst|state.LOAD0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm_inst|shift~0_combout\,
	datad => \fsm_inst|state.LOAD0~q\,
	combout => \fsm_inst|Selector1~0_combout\);

-- Location: FF_X13_Y15_N17
\fsm_inst|state.ADD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm_inst|Selector1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|state.ADD~q\);

-- Location: LCCOMB_X13_Y15_N10
\fsm_inst|state.SHIFT0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm_inst|state.SHIFT0~feeder_combout\ = \fsm_inst|state.ADD~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|state.ADD~q\,
	combout => \fsm_inst|state.SHIFT0~feeder_combout\);

-- Location: FF_X13_Y15_N11
\fsm_inst|state.SHIFT0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm_inst|state.SHIFT0~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|state.SHIFT0~q\);

-- Location: LCCOMB_X13_Y15_N26
\fsm_inst|count[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm_inst|count[1]~6_combout\ = (\fsm_inst|shift~0_combout\ & (\fsm_inst|count\(1) $ (((!\fsm_inst|count\(0) & !\fsm_inst|state.LOAD0~q\))))) # (!\fsm_inst|shift~0_combout\ & (((\fsm_inst|count\(1) & !\fsm_inst|state.LOAD0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|count\(0),
	datab => \fsm_inst|shift~0_combout\,
	datac => \fsm_inst|count\(1),
	datad => \fsm_inst|state.LOAD0~q\,
	combout => \fsm_inst|count[1]~6_combout\);

-- Location: FF_X13_Y15_N27
\fsm_inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm_inst|count[1]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|count\(1));

-- Location: LCCOMB_X13_Y15_N12
\fsm_inst|count[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm_inst|count[2]~3_combout\ = (\fsm_inst|state.LOAD0~q\) # (\fsm_inst|count\(2) $ (((!\fsm_inst|count\(1) & !\fsm_inst|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|count\(1),
	datab => \fsm_inst|count\(2),
	datac => \fsm_inst|count\(0),
	datad => \fsm_inst|state.LOAD0~q\,
	combout => \fsm_inst|count[2]~3_combout\);

-- Location: LCCOMB_X13_Y15_N4
\fsm_inst|count[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm_inst|count[2]~4_combout\ = (\fsm_inst|shift~0_combout\ & ((\fsm_inst|state.LOAD0~q\ & (\fsm_inst|count\(2))) # (!\fsm_inst|state.LOAD0~q\ & ((\fsm_inst|count[2]~3_combout\))))) # (!\fsm_inst|shift~0_combout\ & ((\fsm_inst|state.LOAD0~q\ & 
-- ((\fsm_inst|count[2]~3_combout\))) # (!\fsm_inst|state.LOAD0~q\ & (\fsm_inst|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|shift~0_combout\,
	datab => \fsm_inst|state.LOAD0~q\,
	datac => \fsm_inst|count\(2),
	datad => \fsm_inst|count[2]~3_combout\,
	combout => \fsm_inst|count[2]~4_combout\);

-- Location: FF_X13_Y15_N5
\fsm_inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm_inst|count[2]~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|count\(2));

-- Location: LCCOMB_X13_Y15_N22
\fsm_inst|shift~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm_inst|shift~0_combout\ = (\fsm_inst|state.SHIFT0~q\ & ((\fsm_inst|count\(0)) # ((\fsm_inst|count\(1)) # (\fsm_inst|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|state.SHIFT0~q\,
	datab => \fsm_inst|count\(0),
	datac => \fsm_inst|count\(1),
	datad => \fsm_inst|count\(2),
	combout => \fsm_inst|shift~0_combout\);

-- Location: LCCOMB_X13_Y15_N20
\fsm_inst|count[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm_inst|count[0]~5_combout\ = (\fsm_inst|shift~0_combout\ & (\fsm_inst|count\(0) $ (!\fsm_inst|state.LOAD0~q\))) # (!\fsm_inst|shift~0_combout\ & (\fsm_inst|count\(0) & !\fsm_inst|state.LOAD0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|shift~0_combout\,
	datac => \fsm_inst|count\(0),
	datad => \fsm_inst|state.LOAD0~q\,
	combout => \fsm_inst|count[0]~5_combout\);

-- Location: FF_X13_Y15_N21
\fsm_inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm_inst|count[0]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|count\(0));

-- Location: LCCOMB_X13_Y15_N24
\fsm_inst|next_state.DONE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm_inst|next_state.DONE~0_combout\ = (!\fsm_inst|count\(0) & (!\fsm_inst|count\(2) & (!\fsm_inst|count\(1) & \fsm_inst|state.SHIFT0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|count\(0),
	datab => \fsm_inst|count\(2),
	datac => \fsm_inst|count\(1),
	datad => \fsm_inst|state.SHIFT0~q\,
	combout => \fsm_inst|next_state.DONE~0_combout\);

-- Location: FF_X13_Y15_N25
\fsm_inst|state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm_inst|next_state.DONE~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|state.DONE~q\);

-- Location: LCCOMB_X12_Y15_N26
\fsm_inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector0~0_combout\ = (!\fsm_inst|state.DONE~q\ & ((\start~input_o\) # (\fsm_inst|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \fsm_inst|state.IDLE~q\,
	datad => \fsm_inst|state.DONE~q\,
	combout => \fsm_inst|Selector0~0_combout\);

-- Location: FF_X12_Y15_N27
\fsm_inst|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm_inst|Selector0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|state.IDLE~q\);

-- Location: LCCOMB_X12_Y15_N18
\fsm_inst|next_state.LOAD0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm_inst|next_state.LOAD0~0_combout\ = (!\fsm_inst|state.IDLE~q\ & \start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|state.IDLE~q\,
	datac => \start~input_o\,
	combout => \fsm_inst|next_state.LOAD0~0_combout\);

-- Location: FF_X12_Y15_N19
\fsm_inst|state.LOAD0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm_inst|next_state.LOAD0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|state.LOAD0~q\);

-- Location: FF_X11_Y15_N11
\datapath_inst|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multiplicand[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fsm_inst|state.LOAD0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_inst|A\(0));

-- Location: LCCOMB_X11_Y15_N10
\datapath_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Add0~0_combout\ = (\datapath_inst|A\(0) & (\datapath_inst|P\(4) $ (VCC))) # (!\datapath_inst|A\(0) & (\datapath_inst|P\(4) & VCC))
-- \datapath_inst|Add0~1\ = CARRY((\datapath_inst|A\(0) & \datapath_inst|P\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|A\(0),
	datab => \datapath_inst|P\(4),
	datad => VCC,
	combout => \datapath_inst|Add0~0_combout\,
	cout => \datapath_inst|Add0~1\);

-- Location: LCCOMB_X13_Y15_N30
\fsm_inst|add_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm_inst|add_en~0_combout\ = (\fsm_inst|state.ADD~q\ & ((\fsm_inst|count\(1)) # ((\fsm_inst|count\(0)) # (\fsm_inst|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|count\(1),
	datab => \fsm_inst|count\(0),
	datac => \fsm_inst|count\(2),
	datad => \fsm_inst|state.ADD~q\,
	combout => \fsm_inst|add_en~0_combout\);

-- Location: IOIBUF_X10_Y16_N1
\multiplier[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(1),
	o => \multiplier[1]~input_o\);

-- Location: IOIBUF_X10_Y18_N22
\multiplier[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(2),
	o => \multiplier[2]~input_o\);

-- Location: IOIBUF_X10_Y17_N8
\multiplier[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(3),
	o => \multiplier[3]~input_o\);

-- Location: IOIBUF_X10_Y17_N1
\multiplier[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(0),
	o => \multiplier[0]~input_o\);

-- Location: LCCOMB_X13_Y15_N28
\fsm_inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm_inst|Mux0~0_combout\ = (\fsm_inst|count\(1) & (((\fsm_inst|count\(0))))) # (!\fsm_inst|count\(1) & ((\fsm_inst|count\(0) & (\multiplier[3]~input_o\)) # (!\fsm_inst|count\(0) & ((\multiplier[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier[3]~input_o\,
	datab => \multiplier[0]~input_o\,
	datac => \fsm_inst|count\(1),
	datad => \fsm_inst|count\(0),
	combout => \fsm_inst|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y15_N18
\fsm_inst|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm_inst|Mux0~1_combout\ = (\fsm_inst|count\(1) & ((\fsm_inst|Mux0~0_combout\ & (\multiplier[1]~input_o\)) # (!\fsm_inst|Mux0~0_combout\ & ((\multiplier[2]~input_o\))))) # (!\fsm_inst|count\(1) & (((\fsm_inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier[1]~input_o\,
	datab => \multiplier[2]~input_o\,
	datac => \fsm_inst|count\(1),
	datad => \fsm_inst|Mux0~0_combout\,
	combout => \fsm_inst|Mux0~1_combout\);

-- Location: LCCOMB_X13_Y15_N2
\datapath_inst|P~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|P~10_combout\ = (\fsm_inst|add_en~0_combout\ & \fsm_inst|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm_inst|add_en~0_combout\,
	datad => \fsm_inst|Mux0~1_combout\,
	combout => \datapath_inst|P~10_combout\);

-- Location: IOIBUF_X10_Y16_N8
\multiplicand[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(3),
	o => \multiplicand[3]~input_o\);

-- Location: FF_X11_Y15_N17
\datapath_inst|A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multiplicand[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fsm_inst|state.LOAD0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_inst|A\(3));

-- Location: IOIBUF_X10_Y19_N1
\multiplicand[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(2),
	o => \multiplicand[2]~input_o\);

-- Location: FF_X11_Y15_N15
\datapath_inst|A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multiplicand[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fsm_inst|state.LOAD0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_inst|A\(2));

-- Location: IOIBUF_X10_Y19_N22
\multiplicand[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(1),
	o => \multiplicand[1]~input_o\);

-- Location: FF_X11_Y15_N13
\datapath_inst|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multiplicand[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fsm_inst|state.LOAD0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_inst|A\(1));

-- Location: LCCOMB_X11_Y15_N12
\datapath_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Add0~2_combout\ = (\datapath_inst|A\(1) & ((\datapath_inst|P\(5) & (\datapath_inst|Add0~1\ & VCC)) # (!\datapath_inst|P\(5) & (!\datapath_inst|Add0~1\)))) # (!\datapath_inst|A\(1) & ((\datapath_inst|P\(5) & (!\datapath_inst|Add0~1\)) # 
-- (!\datapath_inst|P\(5) & ((\datapath_inst|Add0~1\) # (GND)))))
-- \datapath_inst|Add0~3\ = CARRY((\datapath_inst|A\(1) & (!\datapath_inst|P\(5) & !\datapath_inst|Add0~1\)) # (!\datapath_inst|A\(1) & ((!\datapath_inst|Add0~1\) # (!\datapath_inst|P\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|A\(1),
	datab => \datapath_inst|P\(5),
	datad => VCC,
	cin => \datapath_inst|Add0~1\,
	combout => \datapath_inst|Add0~2_combout\,
	cout => \datapath_inst|Add0~3\);

-- Location: LCCOMB_X11_Y15_N14
\datapath_inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Add0~4_combout\ = ((\datapath_inst|P\(6) $ (\datapath_inst|A\(2) $ (!\datapath_inst|Add0~3\)))) # (GND)
-- \datapath_inst|Add0~5\ = CARRY((\datapath_inst|P\(6) & ((\datapath_inst|A\(2)) # (!\datapath_inst|Add0~3\))) # (!\datapath_inst|P\(6) & (\datapath_inst|A\(2) & !\datapath_inst|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|P\(6),
	datab => \datapath_inst|A\(2),
	datad => VCC,
	cin => \datapath_inst|Add0~3\,
	combout => \datapath_inst|Add0~4_combout\,
	cout => \datapath_inst|Add0~5\);

-- Location: LCCOMB_X11_Y15_N16
\datapath_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Add0~6_combout\ = (\datapath_inst|P\(7) & ((\datapath_inst|A\(3) & (\datapath_inst|Add0~5\ & VCC)) # (!\datapath_inst|A\(3) & (!\datapath_inst|Add0~5\)))) # (!\datapath_inst|P\(7) & ((\datapath_inst|A\(3) & (!\datapath_inst|Add0~5\)) # 
-- (!\datapath_inst|A\(3) & ((\datapath_inst|Add0~5\) # (GND)))))
-- \datapath_inst|Add0~7\ = CARRY((\datapath_inst|P\(7) & (!\datapath_inst|A\(3) & !\datapath_inst|Add0~5\)) # (!\datapath_inst|P\(7) & ((!\datapath_inst|Add0~5\) # (!\datapath_inst|A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|P\(7),
	datab => \datapath_inst|A\(3),
	datad => VCC,
	cin => \datapath_inst|Add0~5\,
	combout => \datapath_inst|Add0~6_combout\,
	cout => \datapath_inst|Add0~7\);

-- Location: LCCOMB_X11_Y15_N18
\datapath_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Add0~8_combout\ = \datapath_inst|Add0~7\ $ (!\datapath_inst|P\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \datapath_inst|P\(8),
	cin => \datapath_inst|Add0~7\,
	combout => \datapath_inst|Add0~8_combout\);

-- Location: LCCOMB_X12_Y15_N24
\datapath_inst|P~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|P~11_combout\ = (!\fsm_inst|shift~0_combout\ & ((\datapath_inst|P~10_combout\ & ((\datapath_inst|Add0~8_combout\))) # (!\datapath_inst|P~10_combout\ & (\datapath_inst|P\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|P~10_combout\,
	datab => \fsm_inst|shift~0_combout\,
	datac => \datapath_inst|P\(8),
	datad => \datapath_inst|Add0~8_combout\,
	combout => \datapath_inst|P~11_combout\);

-- Location: FF_X12_Y15_N25
\datapath_inst|P[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath_inst|P~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \fsm_inst|state.LOAD0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_inst|P\(8));

-- Location: LCCOMB_X12_Y15_N30
\datapath_inst|P~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|P~9_combout\ = (\fsm_inst|shift~0_combout\ & (\datapath_inst|P\(8))) # (!\fsm_inst|shift~0_combout\ & ((\datapath_inst|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath_inst|P\(8),
	datac => \datapath_inst|Add0~6_combout\,
	datad => \fsm_inst|shift~0_combout\,
	combout => \datapath_inst|P~9_combout\);

-- Location: LCCOMB_X12_Y15_N12
\datapath_inst|P[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|P[4]~6_combout\ = \fsm_inst|shift~0_combout\ $ (\fsm_inst|state.LOAD0~q\ $ (((\fsm_inst|add_en~0_combout\ & \fsm_inst|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|add_en~0_combout\,
	datab => \fsm_inst|shift~0_combout\,
	datac => \fsm_inst|state.LOAD0~q\,
	datad => \fsm_inst|Mux0~1_combout\,
	combout => \datapath_inst|P[4]~6_combout\);

-- Location: FF_X12_Y15_N31
\datapath_inst|P[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath_inst|P~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \fsm_inst|state.LOAD0~q\,
	ena => \datapath_inst|P[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_inst|P\(7));

-- Location: LCCOMB_X12_Y15_N4
\datapath_inst|P~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|P~8_combout\ = (\fsm_inst|shift~0_combout\ & (\datapath_inst|P\(7))) # (!\fsm_inst|shift~0_combout\ & ((\datapath_inst|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm_inst|shift~0_combout\,
	datac => \datapath_inst|P\(7),
	datad => \datapath_inst|Add0~4_combout\,
	combout => \datapath_inst|P~8_combout\);

-- Location: FF_X12_Y15_N5
\datapath_inst|P[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath_inst|P~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \fsm_inst|state.LOAD0~q\,
	ena => \datapath_inst|P[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_inst|P\(6));

-- Location: LCCOMB_X12_Y15_N22
\datapath_inst|P~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|P~7_combout\ = (\fsm_inst|shift~0_combout\ & (\datapath_inst|P\(6))) # (!\fsm_inst|shift~0_combout\ & ((\datapath_inst|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm_inst|shift~0_combout\,
	datac => \datapath_inst|P\(6),
	datad => \datapath_inst|Add0~2_combout\,
	combout => \datapath_inst|P~7_combout\);

-- Location: FF_X12_Y15_N23
\datapath_inst|P[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath_inst|P~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \fsm_inst|state.LOAD0~q\,
	ena => \datapath_inst|P[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_inst|P\(5));

-- Location: LCCOMB_X12_Y15_N28
\datapath_inst|P~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|P~5_combout\ = (\fsm_inst|shift~0_combout\ & ((\datapath_inst|P\(5)))) # (!\fsm_inst|shift~0_combout\ & (\datapath_inst|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|Add0~0_combout\,
	datac => \datapath_inst|P\(5),
	datad => \fsm_inst|shift~0_combout\,
	combout => \datapath_inst|P~5_combout\);

-- Location: FF_X12_Y15_N29
\datapath_inst|P[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath_inst|P~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \fsm_inst|state.LOAD0~q\,
	ena => \datapath_inst|P[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_inst|P\(4));

-- Location: LCCOMB_X11_Y15_N22
\datapath_inst|P~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|P~4_combout\ = (\datapath_inst|P\(4) & !\fsm_inst|state.LOAD0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath_inst|P\(4),
	datad => \fsm_inst|state.LOAD0~q\,
	combout => \datapath_inst|P~4_combout\);

-- Location: LCCOMB_X11_Y15_N24
\datapath_inst|P[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|P[0]~1_combout\ = \fsm_inst|state.LOAD0~q\ $ (\fsm_inst|shift~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm_inst|state.LOAD0~q\,
	datad => \fsm_inst|shift~0_combout\,
	combout => \datapath_inst|P[0]~1_combout\);

-- Location: FF_X11_Y15_N23
\datapath_inst|P[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath_inst|P~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \datapath_inst|P[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_inst|P\(3));

-- Location: LCCOMB_X11_Y15_N28
\datapath_inst|P~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|P~3_combout\ = (\datapath_inst|P\(3) & !\fsm_inst|state.LOAD0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath_inst|P\(3),
	datad => \fsm_inst|state.LOAD0~q\,
	combout => \datapath_inst|P~3_combout\);

-- Location: FF_X11_Y15_N29
\datapath_inst|P[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath_inst|P~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \datapath_inst|P[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_inst|P\(2));

-- Location: LCCOMB_X11_Y15_N26
\datapath_inst|P~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|P~2_combout\ = (\datapath_inst|P\(2) & !\fsm_inst|state.LOAD0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath_inst|P\(2),
	datad => \fsm_inst|state.LOAD0~q\,
	combout => \datapath_inst|P~2_combout\);

-- Location: FF_X11_Y15_N27
\datapath_inst|P[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath_inst|P~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \datapath_inst|P[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_inst|P\(1));

-- Location: LCCOMB_X11_Y15_N8
\datapath_inst|P~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|P~0_combout\ = (\datapath_inst|P\(1) & !\fsm_inst|state.LOAD0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath_inst|P\(1),
	datad => \fsm_inst|state.LOAD0~q\,
	combout => \datapath_inst|P~0_combout\);

-- Location: FF_X11_Y15_N9
\datapath_inst|P[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath_inst|P~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \datapath_inst|P[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_inst|P\(0));

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_product(0) <= \product[0]~output_o\;

ww_product(1) <= \product[1]~output_o\;

ww_product(2) <= \product[2]~output_o\;

ww_product(3) <= \product[3]~output_o\;

ww_product(4) <= \product[4]~output_o\;

ww_product(5) <= \product[5]~output_o\;

ww_product(6) <= \product[6]~output_o\;

ww_product(7) <= \product[7]~output_o\;

ww_ready <= \ready~output_o\;
END structure;


