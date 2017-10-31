library ieee;
use ieee.std_logic_1164.all;
	

entity counter_debounce is
	port (In_put, CLR, clk : in std_logic;
					Carry: out std_logic;
					--binary_out : out std_logic_vector(3 downto 0);
					output2 : out std_logic_vector(6 downto 0);
					output3 : out std_logic_vector(6 downto 0)
					);	
end counter_debounce;

architecture Structural of counter_debounce is

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

component seven is
	port(In_fb: in std_logic_vector(3 downto 0);
			output: out std_logic_vector(6 downto 0));

end component;

	signal In_pb : std_logic;
	signal In_clr : std_logic;
	signal debounce_1 : std_logic;
	signal debounce_2 : std_logic;
	signal Carry22 : std_logic;
	signal sevenOut2: std_logic_vector(3 downto 0);
	signal sevenOut : std_logic_vector(3 downto 0);
	
	--signal binary_out : std_logic;	signal outtt: std_logic := binary_out;

	begin
		--U0: seven
			--port map (binary_out, output);
		U0: binary_counter
			port map (debounce_1, debounce_2, Carry22, sevenOut);
		U1 : debounce_switch
			port map (clk, In_put, debounce_1);
		U2: debounce_switch
			port map (clk, CLR, debounce_2);
		U3: seven
			port map (sevenOut, output2);
		U4: seven
			port map (sevenOut2, output3);
		
		
end Structural;
