library verilog;
use verilog.vl_types.all;
entity testing_reg_file is
    port(
        rd_1            : out    vl_logic_vector(7 downto 0);
        RR1             : in     vl_logic_vector(4 downto 0);
        RR2             : in     vl_logic_vector(4 downto 0);
        wData           : in     vl_logic_vector(7 downto 0);
        WR              : in     vl_logic_vector(4 downto 0);
        rd_2            : out    vl_logic_vector(7 downto 0)
    );
end testing_reg_file;
