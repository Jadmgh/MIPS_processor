library verilog;
use verilog.vl_types.all;
entity test_alucontrol_vlg_sample_tst is
    port(
        aluop           : in     vl_logic_vector(1 downto 0);
        func            : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end test_alucontrol_vlg_sample_tst;
