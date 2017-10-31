library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;	

entity seven2 is 
	port(In_fb: in std_logic_vector(3 downto 0);
			output: out std_logic_vector(6 downto 0));
end seven2;
	
architecture Behavioral of seven2 is
begin process (In_fb)
begin
output <= "0000000";
case In_fb is
	when "0000" =>
		output <= not("0111111");
	when "0001" =>
		output <= not("0000110");
	when "0010" =>
		output <= not("1011011");
	when "0011" =>
		output <= not("1001111");
	when "0100" =>
		output <= not("1100110");
	when "0101" =>
		output <= not("1101101");
	when "0110" =>
		output <= not("1111101");
	when "0111" =>
		output <= not("0000111");
	when "1000" =>
		output <= not("1111111");
	when "1001" =>
		output <= not("1101111");
	when "1010" =>
		output <= not("1011111");
	when "1011" =>
		output <= not("1111100");
	when "1100" =>
		output <= not("0111001");
	when "1101" =>
		output <= not("1011110");
	when "1110" =>
		output <= not("1111001");
	when "1111" =>
		output <= not("1110001");
	when others =>
		output <= not("1111111");

end case;
end process;
end Behavioral;