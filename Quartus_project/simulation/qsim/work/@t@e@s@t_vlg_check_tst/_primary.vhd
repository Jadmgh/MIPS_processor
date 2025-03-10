library verilog;
use verilog.vl_types.all;
entity TEST_vlg_check_tst is
    port(
        RD1             : in     vl_logic_vector(7 downto 0);
        RD2             : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end TEST_vlg_check_tst;
