library verilog;
use verilog.vl_types.all;
entity testing_reg_file_vlg_sample_tst is
    port(
        Read_reg_1      : in     vl_logic_vector(2 downto 0);
        Read_reg_2      : in     vl_logic_vector(2 downto 0);
        write_data      : in     vl_logic_vector(7 downto 0);
        Write_reg       : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end testing_reg_file_vlg_sample_tst;
