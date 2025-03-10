library verilog;
use verilog.vl_types.all;
entity test_edgedetector_vlg_check_tst is
    port(
        oedut           : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end test_edgedetector_vlg_check_tst;
