library verilog;
use verilog.vl_types.all;
entity lab1_4 is
    port(
        sw              : in     vl_logic_vector(1 downto 0);
        led             : out    vl_logic_vector(3 downto 0)
    );
end lab1_4;
