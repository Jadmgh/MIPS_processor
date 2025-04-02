library verilog;
use verilog.vl_types.all;
entity Lab3_vlg_check_tst is
    port(
        Address_to_w_r_MEM: in     vl_logic_vector(7 downto 0);
        ALU_Control     : in     vl_logic_vector(2 downto 0);
        ALUop1          : in     vl_logic_vector(7 downto 0);
        ALUop2          : in     vl_logic_vector(7 downto 0);
        ALUResultEX     : in     vl_logic_vector(7 downto 0);
        Data_from_address_MEM: in     vl_logic_vector(7 downto 0);
        Data_goingtobe  : in     vl_logic_vector(7 downto 0);
        DataRS          : in     vl_logic_vector(7 downto 0);
        DataRT          : in     vl_logic_vector(7 downto 0);
        Instruction_EX  : in     vl_logic_vector(31 downto 0);
        Instruction_ID  : in     vl_logic_vector(31 downto 0);
        Instruction_IF  : in     vl_logic_vector(31 downto 0);
        Instruction_MEM : in     vl_logic_vector(31 downto 0);
        Instruction_WB  : in     vl_logic_vector(31 downto 0);
        PCValue         : in     vl_logic_vector(7 downto 0);
        rsIF            : in     vl_logic_vector(4 downto 0);
        rtIF            : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end Lab3_vlg_check_tst;
