library verilog;
use verilog.vl_types.all;
entity lab1_3 is
    port(
        sw74            : in     vl_logic_vector(3 downto 0);
        sw30            : in     vl_logic_vector(3 downto 0);
        led             : out    vl_logic_vector(3 downto 0)
    );
end lab1_3;
