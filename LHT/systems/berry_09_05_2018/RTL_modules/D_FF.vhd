-- FPGA projects using VHDL/ VHDL 
-- fpga4student.com
-- VHDL code for D Flip FLop
-- VHDL code for Rising edge D flip flop with Synchronous Reset input 
Library IEEE;
USE IEEE.Std_logic_1164.all;

entity RisingEdge_DFlipFlop_SyncReset is 
   port(
      Q : out std_logic;    
      Clk :in std_logic;  
	  reset_n: in std_logic;  
      D :in  std_logic    
   );
end RisingEdge_DFlipFlop_SyncReset;
architecture Behavioral of RisingEdge_DFlipFlop_SyncReset is  
begin  
 process(Clk)
 begin 
    if(rising_edge(Clk)) then
	   if(reset_n='1') then 
		Q <= '0';
	   else 
		Q <= D; 
	   end if;
    end if;       
 end process;  
end Behavioral; 