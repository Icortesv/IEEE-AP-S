--=============================================================================
--                        Copyright 2018
--                    Telekom IEEE AP-S Contest
--                     All rights reserved
--
-- Module     : Second Demux
-- Title      : <title string>
-- Spec. ref. :
--=============================================================================
-- Author(s)  : Inigo Cortes
--=============================================================================
-- ASSUMPTIONS
-- <cursor>
--
-- LIMITATIONS
-- 
-- 
-- FUNCTIONAL DESCRIPTION
--  This module performs the second demultiplexing
--
-- POSSIBLE IMPROVEMENTS 
--
--=============================================================================
-- $Id$
--=============================================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-------------------------------------------------------------------------------------
-- 
-- Definition of Generics
-- C_M_DATA_WIDHT : Width of the input/output data.
-- BUFFER_LENGTH : Width of the Buffer. 
--
-- Definition of Ports
-- ACLK : Synchronous clock
-- ARESETN : System reset, active low
-- S_AXIS_TREADY : Ready to accept data in
-- S_AXIS_TDATA : Data in
-- S_AXIS_TVALID : Data in is valid
-- M_AXIS_TVALID : Data out is valid
-- M_AXIS_TDATA : Data Out
-- M_AXIS_TLAST : Optional data out qualifier
-- M_AXIS_TREADY : Connected slave device is ready to accept data out
-- cpu_fifo_rd_happened_o: 
-- 
-------------------------------------------------------------------------------
------------------------------------------------------------------------------
-- Entity Section
------------------------------------------------------------------------------
entity second_demux is
    generic (
		C_M_DATA_WIDHT	: integer 	:= 32; -- width of the transfer chunks equal to 4 Bytes.
		BUFFER_LENGTH	: integer	:= 6144 -- 24.576KB of transfer buffer RX 
    );
    port
    (
    ACLK : in	std_logic;
    ARESETN : in	std_logic;
    -- S_AXIS_TREADY : out	std_logic; Commented because this RTL is always ready
    --IQ_data_i  : in	std_logic_vector(C_M_DATA_WIDHT-1 downto 0); 
	--IQ_data_valid_i : in std_logic; 
	S_AXIS_TDATA: in std_logic_vector(C_M_DATA_WIDHT-1 downto 0); 
	S_AXIS_TVALID : in std_logic; 
    M_AXIS_TVALID : out	std_logic; -- Connected to S_AXIS_TVALID of next FIFO
    M_AXIS_TDATA : out	std_logic_vector(C_M_DATA_WIDHT-1 downto 0); -- Connected to S_AXIS_TDATA of next FIFO 
    M_AXIS_TLAST : out	std_logic-- Connected to S_AXIS_TLAST of next FIFO
    --M_AXIS_TREADY : in	std_logic; -- Connected to M_AXIS_TREADY of next FIFO 
    );
end second_demux;

------------------------------------------------------------------------------
-- Architecture Section
------------------------------------------------------------------------------
architecture behavioral of second_demux is
    
	-- tlast signal
    signal tlast : std_logic;
	-- signal that contains the data
	signal tdata : std_logic_vector(C_M_DATA_WIDHT-1 downto 0);
	-- Packet counter initialize to 0.
	signal packetCounter : unsigned(31 downto 0) := (others=>'0');
	-- valid output data signal
	signal tvalid : std_logic;
	 
begin

	
	mux_process : process(ACLK) is
	begin
		if ACLK'event and ACLK = '1' then
			if ARESETN = '0' then
				tvalid <= '0';
				tdata <= (others => '0');
				tlast <= '0';
			else 
				if(S_AXIS_TVALID = '1') then
							tdata <= S_AXIS_TDATA; 
							tvalid <= '1';
							if (packetCounter= BUFFER_LENGTH-1) then
                                packetCounter <= (others=>'0');
                                tlast <= '1';
                            else
                                tlast <= '0'; 
                                packetCounter <= packetCounter+1;
							end if;
                else
                            tvalid <= '0';
                            tlast <='0';
                end if;
			end if;	
		end if;	
    end process mux_process;
	

	-- Signals and output ports connections
	M_AXIS_TVALID <= tvalid;
	M_AXIS_TLAST <= tlast;
	M_AXIS_TDATA <= tdata;

	
end architecture behavioral;