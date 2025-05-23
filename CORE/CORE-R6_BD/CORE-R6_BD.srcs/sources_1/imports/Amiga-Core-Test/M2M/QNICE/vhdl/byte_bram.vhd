-- 8-bit data BRAM with a 16-bit address bus
-- reads and writes on the falling clock edge
-- done by sy2002 in June 2016

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std_unsigned.all;

entity byte_bram is
generic (
   SIZE_BYTES     : integer
);
port (
   clk            : in  std_logic;

   we             : in  std_logic;

   address_i      : in  std_logic_vector(15 downto 0);
   address_o      : in  std_logic_vector(15 downto 0);
   data_i         : in  std_logic_vector(7 downto 0);
   data_o         : out std_logic_vector(7 downto 0)
);
end entity byte_bram;

architecture beh of byte_bram is

begin

-- process for read and write operation
process(clk)
    type ram_t is array (0 to SIZE_BYTES - 1) of bit_vector(7 downto 0);
    variable ram : ram_t;
begin
    if falling_edge(clk) then
        if (we = '1') then
            ram(to_integer(address_i)) := to_bitvector(data_i);
        end if;
        data_o <= to_stdlogicvector(ram(to_integer(address_o)));
    end if;
end process;

end architecture beh;

