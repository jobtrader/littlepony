library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity ModeControl is
	port ( Clock : in std_logic;
		   Reset, Click : in std_logic;
		   Mode1 : out std_logic;
		   Mode2 : out std_logic;
		   Mode3 : out std_logic
		  );
end ModeControl;

architecture behavior of ModeControl is
	signal TMODE : integer := 1;
	signal TMODE1 : std_logic;
	signal TMODE2 : std_logic;
	signal TMODE3 : std_logic;
begin
	process(Clock)
	begin
		if Clock'EVENT and Clock = '1' then
			if Reset = '1' then
				TMODE <= 1;
				TMODE1 <= '1';
				TMODE2 <= '0';
				TMODE3 <= '0';
			elsif Click = '1' then
				if TMODE = 3 then
					TMODE <= 1;
				else
					TMODE <= TMODE + 1;
				end if;
				
				
			end if;
			
			if TMODE = 1 then
				TMODE1 <= '1';
				TMODE2 <= '0';
				TMODE3 <= '0';
			elsif TMODE = 2 then
				TMODE1 <= '0';
				TMODE2 <= '1';
				TMODE3 <= '0';
			elsif TMODE = 3 then
				TMODE1 <= '0';
				TMODE2 <= '0';
				TMODE3 <= '1';
			elsif TMODE = 4 then
				TMODE1 <= '0';
				TMODE2 <= '0';
				TMODE3 <= '0';
			end if;
		end if;
	end process;

	Mode1 <= TMODE1;
	Mode2 <= TMODE2;
	Mode3 <= TMODE3;
	
end behavior;
	