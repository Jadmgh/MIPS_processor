library verilog;
use verilog.vl_types.all;
entity Lab3 is
    port(
        Address_to_w_r_MEM: out    vl_logic_vector(7 downto 0);
        GClock          : in     vl_logic;
        Instruction_MEM : out    vl_logic_vector(31 downto 0);
        RAM_Clock       : in     vl_logic;
        GReset          : in     vl_logic;
        Instruction_IF  : out    vl_logic_vector(31 downto 0);
        PCValue         : out    vl_logic_vector(7 downto 0);
        Instruction_EX  : out    vl_logic_vector(31 downto 0);
        ALU_Control     : out    vl_logic_vector(2 downto 0);
        ALUop1          : out    vl_logic_vector(7 downto 0);
        ALUop2          : out    vl_logic_vector(7 downto 0);
        ALUResultEX     : out    vl_logic_vector(7 downto 0);
        Data_from_address_MEM: out    vl_logic_vector(7 downto 0);
        Data_goingtobe  : out    vl_logic_vector(7 downto 0);
        DataRS          : out    vl_logic_vector(7 downto 0);
        DataRT          : out    vl_logic_vector(7 downto 0);
        Instruction_ID  : out    vl_logic_vector(31 downto 0);
        Instruction_WB  : out    vl_logic_vector(31 downto 0);
        rsIF            : out    vl_logic_vector(4 downto 0);
        rtIF            : out    vl_logic_vector(4 downto 0)
    );
end Lab3;
