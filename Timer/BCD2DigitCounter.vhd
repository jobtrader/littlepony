library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity BCD2DigitCounter is
	port ( Clock : in std_logic;
		   BCD_IN1 : in std_logic_vector(3 downto 0);
		   BCD_IN0 : in std_logic_vector(3 downto 0);
		   Load, Clear, En : in std_logic;
		   BCD_OUT1 : out std_logic_vector(3 downto 0);
		   BCD_OUT0 : out std_logic_vector(3 downto 0)
		  );
end BCD2DigitCounter;

architecture behavior of BCD2DigitCounter is
	signal PBCD1 : std_logic_vector(3 downto 0) := "1001";
	signal PBCD0 : std_logic_vector(3 downto 0) := "1001";
begin
	process(Clock)
	begin
		if Clock'EVENT and Clock = '1' then
			if Clear = '1' then
				PBCD1 <= "0000";
				PBCD0 <= "0000";
			elsif En = '1' then
				if PBCD0 = "0000" then
					if PBCD1 /= "0000" then
						PBCD0 <= "1001";
						PBCD1 <= PBCD1 - '1';
					end if;
				else
					PBCD0 <= PBCD0 - '1';
				end if;
			end if;
		end if;
		
		if Load = '1' then
			PBCD1 <= BCD_IN1;
			PBCD0 <= BCD_IN0;
		end if;
	end process;

	BCD_OUT1 <= PBCD1;
	BCD_OUT0 <= PBCD0;
	
end behavior;
	