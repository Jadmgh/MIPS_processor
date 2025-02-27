library verilog;
use verilog.vl_types.all;
entity Lab2_vlg_sample_tst is
    port(
        GClock          : in     vl_logic;
        PC_address      : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end Lab2_vlg_sample_tst;
