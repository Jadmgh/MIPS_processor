library verilog;
use verilog.vl_types.all;
entity fu_TEST_vlg_sample_tst is
    port(
        RR1             : in     vl_logic_vector(4 downto 0);
        RR2             : in     vl_logic_vector(4 downto 0);
        RS              : in     vl_logic_vector(4 downto 0);
        RT              : in     vl_logic_vector(4 downto 0);
        WR1             : in     vl_logic;
        WR2             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end fu_TEST_vlg_sample_tst;
