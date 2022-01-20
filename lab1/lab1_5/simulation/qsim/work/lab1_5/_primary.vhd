library verilog;
use verilog.vl_types.all;
entity lab1_5 is
    port(
        sw              : in     vl_logic_vector(1 downto 0);
        cin             : in     vl_logic;
        led             : out    vl_logic_vector(1 downto 0)
    );
end lab1_5;
