library verilog;
use verilog.vl_types.all;
entity counter_debounce_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        CLR             : in     vl_logic;
        In_put          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end counter_debounce_vlg_sample_tst;
