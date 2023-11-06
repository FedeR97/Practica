library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity JK_FF is 
PORT(J,K,CLOCK: in std_logic;
		Q : buffer std_logic);
end JK_FF;

architecture behavioral of JK_FF is
begin
process (CLOCK)
	begin
		if (CLOCK= '1' and CLOCK'event) then 
		Q <= (J and not(Q)) or  ((not (K)) and Q);
		end if;
	end process;
end behavioral; 