library verilog;
use verilog.vl_types.all;
entity test is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        res             : out    vl_logic_vector(15 downto 0)
    );
end test;
