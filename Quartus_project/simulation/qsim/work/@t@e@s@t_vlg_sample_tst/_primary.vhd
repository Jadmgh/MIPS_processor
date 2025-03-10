library verilog;
use verilog.vl_types.all;
entity TEST_vlg_sample_tst is
    port(
        REGWRITE        : in     vl_logic;
        RR1             : in     vl_logic_vector(4 downto 0);
        RR2             : in     vl_logic_vector(4 downto 0);
        wD              : in     vl_logic_vector(7 downto 0);
        WR              : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end TEST_vlg_sample_tst;
