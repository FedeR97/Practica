library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity Restador_Completo is
	port (
			in_a, in_b, in_bin, clk: in std_logic;
			o_r, o_bout: out std_logic);
end Restador_Completo;

architecture behavioral of Restador_Completo is

component D_FF
	port (D, CLOCK: in std_logic;
			Q: out std_logic);
	end component;

signal a,b,bin,bout,r:std_logic;

begin 
	r <= bin xor (a xor b);
	bout <= (b and not (a)) or (bin and not(a)) or (bin and b) ;

D1: D_FF port map (in_a, clk, a);
D2: D_FF port map (in_b, clk, b);
D3: D_FF port map (in_bin, clk, bin);
D4: D_FF port map (bout, clk, o_bout);
D5: D_FF port map (r, clk, o_r);

end behavioral;