library verilog;
use verilog.vl_types.all;
entity Lab2_vlg_sample_tst is
    port(
        GClock          : in     vl_logic;
        GReset          : in     vl_logic;
        RAM_Clock       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Lab2_vlg_sample_tst;
