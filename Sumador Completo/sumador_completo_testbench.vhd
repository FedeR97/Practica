LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY sumador_completo_testbench IS 
END sumador_completo_testbench;

ARCHITECTURE behavior OF sumador_completo_testbench IS

COMPONENT Sumador_Completo 
 PORT (
 in_a : in STD_LOGIC;
 in_b : in STD_LOGIC;
 in_cin : in STD_LOGIC;
 clk: : in STD_LOGIC;
 o_f : out STD_LOGIC;
 o_cout : out STD_LOGIC;
 )
END COMPONENT

signal in_a : std_logic :='0';
signal in_b: std_logic :='0';
signal in_cin: std_logic :='0';
signal clk: std_logic :='0';

signal o_f :std_logic;
signal o_cout: std_logic;

constant clocl_period: time :=20ns;

BEGIN 
	uut: Sumador_Completo PORT MAP (
	in_
	)

