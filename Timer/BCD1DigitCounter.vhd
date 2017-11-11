library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity BCD1DigitCounter is
	port ( Clock : in std_logic;
		   Clear, En : in std_logic;
		   BCD_OUT : out std_logic_vector(3 downto 0)
		  );
end BCD1DigitCounter;

architecture behavior of BCD1DigitCounter is
	signal PBCD : std_logic_vector(3 downto 0);
begin
	process(Clock)
	begin
		if Clock'EVENT and Clock = '1' then
			if Clear = '1' then
				PBCD <= "0000";
			elsif En = '1' then
				if PBCD = "1001" then
					PBCD <= "0000";
				else
					PBCD <= PBCD + '1';
				end if;
			end if;
		end if;
	end process;

	BCD_OUT <= PBCD;
	
end behavior;
	