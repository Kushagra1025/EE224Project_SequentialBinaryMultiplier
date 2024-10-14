library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplier_4bit_fsm is
    port (
        clk        : in std_logic;
        reset      : in std_logic;
        start      : in std_logic;
        B        	 : in std_logic_vector(3 downto 0); -- 4-bit multiplier input
		  zero       : out std_logic; -- Signal indicating end of multiplication
        load       : out std_logic;
        shift      : out std_logic;
        add_en     : out std_logic;
        ready      : out std_logic	
    );
end entity;

architecture Behavioral of multiplier_4bit_fsm is
    type state_type is (IDLE, LOAD0, ADD, SHIFT0, DONE);
    signal state, next_state : state_type;
    signal count : integer range 0 to 4; -- 4-bit multiplier, hence 4 iterations
begin
    process (clk, reset)
    begin
        if reset = '1' then
            state <= IDLE;
            count <= 0;
        elsif rising_edge(clk) then
            state <= next_state;
            if state = LOAD0 then
                count <= 4; -- Set counter for 4-bit multiplication
            elsif state = SHIFT0 and count > 0 then
                count <= count - 1;
            end if;
        end if;
    end process;
    
    process (state, start, count )
    begin
        load <= '0';
        shift <= '0';
        add_en <= '0';
        ready <= '0';
        zero <= '0';
        case state is
            when IDLE =>
                if start = '1' then
                    next_state <= LOAD0;
                else
                    next_state <= IDLE;
                end if;
       
		 when LOAD0 =>
                load <= '1';
                next_state <= ADD;
					 
				
		when ADD =>
                if count > 0 then
                    if B(4-count) = '1' then
                        add_en <= '1'; -- Add if LSB of B is 1
                    end if;
                    next_state <= SHIFT0;
                else
                    next_state <= SHIFT0;
                end if;
					 
		when SHIFT0 =>
                shift <= '1';
                if count = 0 then
							shift<='0';
                    next_state <= DONE;
                else
                    next_state <= ADD;
                end if;
					 
			 
          
            when DONE =>
                ready <= '1';
                zero <= '1'; -- Done signal
                next_state <= IDLE;
            when others =>
                next_state <= IDLE;
        end case;
    end process;
end Behavioral;
