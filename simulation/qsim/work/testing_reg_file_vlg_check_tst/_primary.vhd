library verilog;
use verilog.vl_types.all;
entity testing_reg_file_vlg_check_tst is
    port(
        read_o_1        : in     vl_logic_vector(7 downto 0);
        read_o_2        : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end testing_reg_file_vlg_check_tst;
