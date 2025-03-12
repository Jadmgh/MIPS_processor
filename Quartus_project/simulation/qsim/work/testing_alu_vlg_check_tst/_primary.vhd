library verilog;
use verilog.vl_types.all;
entity testing_alu_vlg_check_tst is
    port(
        result          : in     vl_logic_vector(31 downto 0);
        resultEITGHTBITS: in     vl_logic_vector(7 downto 0);
        zero            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end testing_alu_vlg_check_tst;
