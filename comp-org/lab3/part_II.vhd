library ieee;
use ieee.std_logic_1164.all;
entity part_ii is
	port (
		w, reset, clock : in std_logic;
		z : out std_logic);
end part_ii;

architecture behavior of part_ii is
	type state_type is (a, 
						b, c, d, e, f, g, h, i, 
						j, k, l, m, n, o, p, q);
	signal y_q, y_d : state_type; -- y_q is present state, y_d is next state
	
begin
	process (w, y_q) -- state table
	begin
		case y_q is
		when a =>
			if( w = '0' ) then
				y_d <= b;
			else
				y_d <= j;
			end if;
		when b =>
			if( w = '0' ) then
				y_d <= c;
			else
				y_d <= j;
			end if;
		when c =>
			if( w = '0' ) then
				y_d <= d;
			else
				y_d <= j;
			end if;
		when d =>
			if( w = '0' ) then
				y_d <= e;
			else
				y_d <= j;
			end if;
		when e =>
			if( w = '0' ) then
				y_d <= f;
			else
				y_d <= j;
			end if;
		when f =>
			if( w = '0' ) then
				y_d <= g;
			else
				y_d <= j;
			end if;
		when g =>
			if( w = '0' ) then
				y_d <= h;
			else
				y_d <= j;
			end if;
		when h =>
			if( w = '0' ) then
				y_d <= i;
			else
				y_d <= j;
			end if;
		when i =>
			if( w = '0' ) then
				y_d <= i;
			else
				y_d <= j;
			end if;
		
		when j =>
			if( w = '0' ) then
				y_d <= b;
			else
				y_d <= k;
			end if;
		when k =>
			if( w = '0' ) then
				y_d <= b;
			else
				y_d <= l;
			end if;
		when l =>
			if( w = '0' ) then
				y_d <= b;
			else
				y_d <= m;
			end if;
		when m =>
			if( w = '0' ) then
				y_d <= b;
			else
				y_d <= n;
			end if;
		when n =>
			if( w = '0' ) then
				y_d <= b;
			else
				y_d <= o;
			end if;
		when o =>
			if( w = '0' ) then
				y_d <= b;
			else
				y_d <= p;
			end if;
		when p =>
			if( w = '0' ) then
				y_d <= b;
			else
				y_d <= q;
			end if;
		when q =>
			if( w = '0' ) then
				y_d <= b;
			else
				y_d <= q;
			end if;
		end case;
	end process;
	
	process (clock)
	begin
		if (rising_edge(clock)) then
			if (reset = '1') then
				y_q <= a;
				z <= '0';
			else
				y_q <= y_d;
				case y_q is
				when a =>
				when b =>
				when c =>
				when d =>
				when e =>
				when f =>
				when g =>
				when h =>
					if( w = '0' ) then
						z <= '0';
					end if;
				when i =>
					if( w = '0' ) then
						z <= '0';		
					end if;
				when j =>
				when k =>
				when l =>
				when m =>
				when n =>
				when o =>
				when p =>
					if( w = '1' ) then
						z <= '1';
					end if;
				when q =>
					if( w = '1' ) then
						z <= '1';
					end if;
				end case;
			end if;
		end if;
	end process;
end behavior;