library verilog;
use verilog.vl_types.all;
entity counter_debounce_vlg_check_tst is
    port(
        Carry           : in     vl_logic;
        Carry2          : in     vl_logic_vector(6 downto 0);
        output2         : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end counter_debounce_vlg_check_tst;
