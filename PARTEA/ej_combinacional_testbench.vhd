architecture behavior of ej_combinacional_testbench is

COMPONENT ej_combinacional_testbench
PORT (
SW1: in STD_LOGIC;
SW2: IN STD_LOGIC;
LED: OUT STD_LOGIC);

END COMPONENT;

signal SW1 : std_logic:= '0';
signal SW2 : std_logic:= '0';

signal LED : std_logic;

BEGIN
	uut: ej_combinacional PORT MAP (
	SW1 => SW1,
	SW2 => SW2,
	LED => LED);

	STIM_PROC: Process 
	begin
	SW1 <= '0' ; SW2 <='0' ; wait for 10ns;
	SW1 <= '0' ; SW2 <='1' ; wait for 10ns;
	SW1 <= '1' ; SW2 <='0' ; wait for 10ns;
	SW1 <= '1' ; SW2 <='1' ; wait for 10ns;
	wait;
	end process;
END;