library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity binary_counter2 is
	port(C_in, CLR: in std_logic;
				C_out: out std_logic:= '0';
					 O: out std_logic_vector(3 downto 0);
					 O2: out std_logic_vector(3 downto 0)
					 );
					 
end binary_counter2;

architecture Behavioral of binary_counter2 is
	signal a: std_logic_vector(3 downto 0);
	signal  C : std_logic := '0';
	signal b : std_logic_vector(3 downto 0);
	
		begin
			process (C_in, CLR)
			variable m0: std_logic_vector(3 downto 0);
			variable m1: std_logic_vector(3 downto 0);
			begin
			if CLR='0' then
				m0 := "0000";
				m1 := "0000";
				a <= m0;
				b <= m1;
			elsif C_in'event and C_in='1' then
				a<=m0;
				b<=m1;
			if m0 /= "1001" then
				m0:= m0+1;
			elsif m0 = "1001" and m1 /= "1001" then
				m0:="0000";
				m1:=m1+1;
			elsif m1 = "1001" then
				m0:="0000";
				m1:="0000";
				
			end if;
			end if;
			
			end process;
			
			O <= a;
			O2 <= b;
				
			
end Behavioral;
