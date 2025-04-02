library verilog;
use verilog.vl_types.all;
entity fu_TEST_vlg_check_tst is
    port(
        MUX1            : in     vl_logic_vector(1 downto 0);
        MUX2            : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end fu_TEST_vlg_check_tst;
