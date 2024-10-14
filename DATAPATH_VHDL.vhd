library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplier_4bit_datapath is
    port (
        clk          : in std_logic;
        reset        : in std_logic;
        load         : in std_logic;
        shift        : in std_logic;
        add_en       : in std_logic;
        multiplicand : in std_logic_vector(3 downto 0); -- 4-bit multiplicand
        multiplier   : in std_logic_vector(3 downto 0); -- 4-bit multiplier
        product      : out std_logic_vector(7 downto 0) -- 8-bit product
    );
end entity;

architecture Behavioral of multiplier_4bit_datapath is

	function slv_to_string(slv: std_logic_vector) return string is
    variable result: string(1 to slv'length);
begin
    for i in slv'range loop
        if slv(i) = '1' then
            result(slv'length-(i  )) := '1';
        else
            result(slv'length-(i  )) := '0';
        end if;
    end loop;
    return result;
end function;


    signal  P : std_logic_vector(8 downto 0); -- Registers for  product (will discard 9th bit at end)
    signal B,A    : std_logic_vector(3 downto 0); -- Multiplier register
begin
    process (clk, reset)  
    begin
        if reset = '1' then
            A <= (others => '0');
            B <= (others => '0');
            P <= (others => '0');
        elsif rising_edge(clk) then
            if load = '1' then
                A <= multiplicand; -- Load multiplicand 
                B <= multiplier;  -- Load 4-bit multiplier
                P <= (others => '0'); -- Initialize product to zero
					 report "Loading multiplicand and multiplier";
					 
					 
            elsif shift = '1' then
                P <= std_logic_vector(shift_right(unsigned(P), 1)); -- Shift product right
                B <= std_logic_vector(shift_right(unsigned(B), 1)); -- Shift multiplier right
					 report "Shifting";
					 report "Current product: " & slv_to_string(P);
						report "Multiplicand: " & slv_to_string(A);
						report "Multiplier: " & slv_to_string(B);
					
                        
				elsif add_en = '1' then
                P(8 downto 4) <= std_logic_vector(unsigned(P(8 downto 4)) + unsigned(A(3 downto 0))); -- Add A to P
					 report "Adding ";
						report "Current product: " & slv_to_string(P);
						report "Multiplicand: " & slv_to_string(A);
						report "Multiplier: " & slv_to_string(B);
					 
            end if;
        end if;
    end process;
    
    product <= P(7 downto 0); -- Output the product
	 
end Behavioral;
