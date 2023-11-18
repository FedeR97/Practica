LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity sumador_restador is 
Port (
	a : in STD_LOGIC;
	b : in STD_LOGIC;
	cin : in STD_LOGIC;
	f :out STD_LOGIC;
	cout: out STD_LOGIC);
end sumador_restador;

architecture Behavioral of sumador_restador is

begin
 
 f<= a xor b xor cin;
 cout <= (a and b) or (cin and (a xor b));
 
 end Behavioral;
 
 