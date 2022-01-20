library verilog;
use verilog.vl_types.all;
entity lab4_1 is
    port(
        clk             : in     vl_logic;
        sclr            : in     vl_logic;
        asset           : in     vl_logic;
        ena             : in     vl_logic;
        load            : in     vl_logic;
        dir             : in     vl_logic;
        din             : in     vl_logic_vector(3 downto 0);
        q               : out    vl_logic_vector(3 downto 0)
    );
end lab4_1;
