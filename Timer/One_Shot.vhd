library ieee;
use ieee.std_logic_1164.all;

entity One_Shot is
	PORT ( Clock, SW, Enable : in std_logic;
		   Q_Shot            : out std_logic);
end One_Shot;

architecture behavior of One_Shot is
	signal Temp : std_logic;
	signal Status : std_logic;
	
begin
	process ( Clock, Temp, Status )
	begin
		if Enable = '0' then
			Temp <= '0';
			Status <= '0';
		elsif (Clock'event and clock = '1') then
			if SW = '1' then
				if Temp = '1' then
					Status <= '0';
				else
					Status <= '1';
					Temp <= '1';
				end if;
			else
				Status <= '0';
				Temp <= '0';
			end if;
		end if;
	end process;
	
	Q_Shot <= Status;
	
end behavior;