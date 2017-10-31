library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;	

entity svSegment is 
	end svSegment;
	

component binary_counter is
	port(C_in, CLR : in std_logic;
			C_out : out std_logic:= '0';
			O : out std_logic_vector(3 downto 0));
end component;	

component debounce_switch is
	port( CLK : in std_logic;
			button : in std_logic;
			result : out std_logic);
			
end component;

component counter_debounce is
	port (In_put, CLR, clk : in std_logic;
					Carry: out std_logic;
					binary_out : out std_logic_vector(3 downto 0);
					output2 : out std_logic_vector(7 downto 0)
					);
end component;

begin
U3: svSegment
			port map (binary_out, output2);
	
end Behavioral;
	
		
		
		  