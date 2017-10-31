library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity binary_counter is
	port(C_in, CLR: in std_logic;
				C_out: out std_logic:= '0';
					 O: out std_logic_vector(3 downto 0));
end binary_counter;

architecture Behavioral of binary_counter is
	signal tmp: std_logic_vector(3 downto 0);
	signal overflow: std_logic := '0';
	signal  C : std_logic := '0';
		begin
			overflow <= '1' when (tmp = "1010") else '0';
				process (C_in, CLR, overflow)
					begin
						if (CLR ='0') then
							tmp <="0000";
							C   <='0';
						elsif (overflow ='1') then
							tmp <= "0000";
							C   <= '1' ;
						elsif (C_in'event and C_in ='1') then
							tmp <= tmp + 1;
							C   <= '0';
						end if;
					end process;
				O <= tmp;
				C_out <= C;
end Behavioral;
