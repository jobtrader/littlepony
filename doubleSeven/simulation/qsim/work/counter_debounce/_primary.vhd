library verilog;
use verilog.vl_types.all;
entity counter_debounce is
    port(
        In_put          : in     vl_logic;
        CLR             : in     vl_logic;
        clk             : in     vl_logic;
        Carry           : out    vl_logic;
        output2         : out    vl_logic_vector(6 downto 0);
        output3         : out    vl_logic_vector(6 downto 0)
    );
end counter_debounce;
