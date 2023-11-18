library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity Restador_Completo_Testbench is

end Restador_Completo_Testbench;

architecture behavioral of Restador_Completo_Testbench is

	component Restador_Completo
	port (
		in_a	: in STD_LOGIC;
		in_b 	: in STD_LOGIC;
		in_bin: in STD_LOGIC;
		clk	: in STD_LOGIC;
		o_r	: out STD_LOGIC;
		o_bout: out STD_LOGIC);
	end component;

	signal in_a : std_logic :='0';
	signal in_b : std_logic :='0';
	signal in_bin: std_logic:='0';
	signal clk: std_logic:='0';

	signal o_r: std_logic;
	signal o_bout: std_logic;

	constant clock_period : time := 20ns;

	begin 
	uut: restador_Completo PORT MAP(
			in_a   =>  in_a,
			in_b   =>  in_b,
			in_bin =>  in_bin,
			clk    =>  clk,
			o_r    =>  o_r,
			o_bout =>  o_bout
			);

	clock_process:process
	begin
		clk<='0';
		wait for clock_period/2;
		clk<='1';
		wait for clock_period/2;
	end process;

	stim_proc: process
	begin
			in_a <= '0';	in_b <= '0';	in_bin <=  '0'; wait for 30ns;
			in_a <= '0';	in_b <= '0';	in_bin <=  '1'; wait for 30ns;
			in_a <= '0';	in_b <= '1';	in_bin <=  '0'; wait for 30ns;
			in_a <= '0';	in_b <= '1';	in_bin <=  '1'; wait for 30ns;
			in_a <= '1';	in_b <= '0';	in_bin <=  '0'; wait for 30ns;
			in_a <= '1';	in_b <= '0';	in_bin <=  '1'; wait for 30ns;
			in_a <= '1';	in_b <= '1';	in_bin <=  '0'; wait for 30ns;
			in_a <= '1';	in_b <= '1';	in_bin <=  '1'; wait for 30ns;
			wait;
	end process;
end;
		