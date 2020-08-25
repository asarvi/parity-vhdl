library ieee;
use ieee.std_logic_1164.all;

package parity_package is 
function  parity_generator ( prt: in  std_logic_vector ) return std_logic_vector;
function  parity_checker ( prt : in std_logic_vector ) return boolean;

end parity_package;

package body parity_package is 
function  parity_generator ( prt: std_logic_vector ) return std_logic_vector is
variable temp : std_logic_vector( prt'high +1  downto 0);
variable ones : integer := 0;

begin
for  i in prt'range loop
if ( prt(i)='1') then
--temp'high := 1;
ones:=ones+1;
end if;
end loop;

 if ones rem 2 = 1 then 
 temp :='0' & prt ;
 else
  temp :='1' & prt;
  end if;

return temp;
end parity_generator;


function parity_checker ( prt : std_logic_vector ) return boolean is
variable ones : integer := 0;
begin
for i in prt'range loop
if ( prt(i)='1') then
--
ones:=ones+1;
end if;
end loop;

 if ones rem 2 = 1 then 
 return true;
 else
 return false;
 end if;
 
 end parity_checker;
 
end parity_package;