library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity VHD_2DigitCounter is
	port ( Clock : in std_logic;
		   Clear, En : in std_logic;
		   BCD1 : out std_logic_vector(3 downto 0);
		   BCD0 : out std_logic_vector(3 downto 0)
		  );
end VHD_2DigitCounter;

architecture behavior of VHD_2DigitCounter is
	signal PBCD1 : std_logic_vector(3 downto 0);
	signal PBCD0 : std_logic_vector(3 downto 0);
begin
	process(Clock)
	begin
		if Clock'EVENT and Clock = '1' then
			if Clear = '1' then
				PBCD1 <= "0000";
				PBCD0 <= "0000";
			elsif En = '1' then
				if PBCD0 = "1001" then
					PBCD0 <= "0000";
					if PBCD1 = "1001" then
						PBCD1 <= "0000";
					else
						PBCD1 <= PBCD1 + '1';
					end if;
				else
					PBCD0 <= PBCD0 + '1';
				end if;
			end if;
		end if;
	end process;

	BCD1 <= PBCD1;
	BCD0 <= PBCD0;
	
end behavior;
	