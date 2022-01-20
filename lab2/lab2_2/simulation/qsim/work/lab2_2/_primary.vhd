library verilog;
use verilog.vl_types.all;
entity lab2_2 is
    port(
        sw              : in     vl_logic_vector(3 downto 0);
        sw7             : in     vl_logic;
        led             : out    vl_logic_vector(7 downto 0)
    );
end lab2_2;
