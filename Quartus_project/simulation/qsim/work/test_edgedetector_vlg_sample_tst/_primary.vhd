library verilog;
use verilog.vl_types.all;
entity test_edgedetector_vlg_sample_tst is
    port(
        inewd           : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end test_edgedetector_vlg_sample_tst;
