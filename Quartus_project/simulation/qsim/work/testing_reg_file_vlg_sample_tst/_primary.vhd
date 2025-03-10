library verilog;
use verilog.vl_types.all;
entity testing_reg_file_vlg_sample_tst is
    port(
        RR1             : in     vl_logic_vector(4 downto 0);
        RR2             : in     vl_logic_vector(4 downto 0);
        wData           : in     vl_logic_vector(7 downto 0);
        WR              : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end testing_reg_file_vlg_sample_tst;
