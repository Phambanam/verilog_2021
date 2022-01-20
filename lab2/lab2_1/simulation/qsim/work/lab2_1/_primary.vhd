library verilog;
use verilog.vl_types.all;
entity lab2_1 is
    port(
        sw74            : in     vl_logic_vector(3 downto 0);
        sw30            : in     vl_logic_vector(3 downto 0);
        key             : in     vl_logic;
        led             : out    vl_logic_vector(7 downto 0)
    );
end lab2_1;
