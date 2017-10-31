library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;	

entity debounce_switch is
	port(CLK : in std_logic;
	button : in std_logic;
	result : out std_logic);
end debounce_switch;

architecture behave of debounce_switch is
	signal inff : std_logic_vector(1 downto 0);
	constant cnt_max : integer := 50000 ;
	signal count : integer range 0 to cnt_max := 0;
	signal keepResult : std_logic := '1';

	begin
		result <= keepResult;
	process(CLK)
	begin
		if(CLK'event and CLK = '1') then
			inff <= inff(0) & button;
			if(inff(0)/=inff(1)) then
				count <= 0;
			elsif(count < cnt_max) then
				count <= count+1;
			else 
				keepResult <= inff(1);
			end if;
		end if;
	end process;
end behave; 
			