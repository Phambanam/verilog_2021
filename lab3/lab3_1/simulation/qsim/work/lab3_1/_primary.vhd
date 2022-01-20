library verilog;
use verilog.vl_types.all;
entity lab3_1 is
    port(
        sw74            : in     vl_logic_vector(3 downto 0);
        sw30            : in     vl_logic_vector(3 downto 0);
        led74           : out    vl_logic_vector(3 downto 0);
        led30           : out    vl_logic_vector(3 downto 0)
    );
end lab3_1;
