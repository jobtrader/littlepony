library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;	

entity ClockDivider is
	port(
		Clock : in std_logic;
		Q1Hz : out std_logic
		);
end ClockDivider;

architecture behave of ClockDivider is
	constant cnt_max : integer := 50000000 ;
	signal count : integer range 0 to cnt_max := 0;
	signal pulse : std_logic;
begin
	process(Clock)
	begin
		if(Clock'event and Clock = '1') then
			if count < cnt_max then
				count <= count+1;
			else 
				pulse <= not pulse;
				count <= 0;
			end if;
		end if;
	end process;
	
	Q1Hz <= pulse;
	
end behave; 
			