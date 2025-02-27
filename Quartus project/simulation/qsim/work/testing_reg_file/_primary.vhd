library verilog;
use verilog.vl_types.all;
entity testing_reg_file is
    port(
        read_o_1        : out    vl_logic_vector(7 downto 0);
        Read_reg_1      : in     vl_logic_vector(2 downto 0);
        Read_reg_2      : in     vl_logic_vector(2 downto 0);
        write_data      : in     vl_logic_vector(7 downto 0);
        Write_reg       : in     vl_logic_vector(2 downto 0);
        read_o_2        : out    vl_logic_vector(7 downto 0)
    );
end testing_reg_file;
