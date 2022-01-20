library verilog;
use verilog.vl_types.all;
entity lab2_4 is
    port(
        sw75            : in     vl_logic_vector(2 downto 0);
        sw20            : in     vl_logic_vector(2 downto 0);
        led             : out    vl_logic_vector(7 downto 0)
    );
end lab2_4;
