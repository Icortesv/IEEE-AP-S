--=============================================================================
--                        Copyright 2018
--                    Telekom IEEE AP-S Contest
--                     All rights reserved
--
-- Module     : fifo_dma_synchro
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
--  This module performs the demultiplexing
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

------------------------------------------------------------------------------
-- Entity Section
------------------------------------------------------------------------------
entity fifo_dma_synchro is
    generic (
		C_M_DATA_WIDHT	: integer 	:= 32; -- width of the transfer chunks equal to 4 Bytes.
		BUFFER_LENGTH	: integer	:= 6132 -- 24.576KB of transfer buffer RX 
    );
    port
    (
	-- INPUT SIGNALS --
    ACLK : in	std_logic;
    ARESETN : in	std_logic;
	S_AXIS_TDATA : in    std_logic_vector(C_M_DATA_WIDHT-1 downto 0);
	S_AXIS_TVALID : in	std_logic;
	M_AXIS_TREADY : in	std_logic;
	
	-- OUTPUT SIGNALS -- 
	--data_out : out std_logic_vector(C_M_DATA_WIDHT-1 downto 0); 
	--data_valid: out std_logic;
	S_AXIS_TREADY : out	std_logic;
    M_AXIS_TVALID : out	std_logic; -- Connected to S_AXIS_TVALID of next FIFO
    M_AXIS_TDATA : out    std_logic_vector(C_M_DATA_WIDHT-1 downto 0); -- Connected to S_AXIS_TDATA of next FIFO 
	M_AXIS_TLAST : out	std_logic-- Connected to S_AXIS_TLAST of next FIFO
    );
end fifo_dma_synchro;

------------------------------------------------------------------------------
-- Architecture Section
------------------------------------------------------------------------------
architecture behavioral of fifo_dma_synchro is
	
	-- valid output data signal
	signal m_tvalid: std_logic;
	-- last output data signal
    signal m_tlast : std_logic;
    signal m_data :  std_logic_vector(C_M_DATA_WIDHT-1 downto 0);

	-- Packet counter initialize to 0.
	signal packetCounter : unsigned(31 downto 0) := (others=>'0');
	 
begin

	synchro_dma : process(ACLK) is
	begin
		if ACLK'event and ACLK = '1' then
			if ARESETN = '0' then
				m_tvalid <= '0';
				m_data <= (others => '0');
				m_tlast <= '0'; 
		   else 
                if(M_AXIS_TREADY = '1' ) then  
                    S_AXIS_TREADY <= '1';
                    if(S_AXIS_TVALID = '1' ) then
                        m_data <= S_AXIS_TDATA; 
                        m_tvalid <= '1';	
                        if (packetCounter = BUFFER_LENGTH-1) then
                            packetCounter <= (others=>'0');
                            m_tlast <= '1';                      
                        else
                            m_tlast <= '0'; 
                            packetCounter <= packetCounter+1;
                        end if; 
                    else 
                         m_tvalid <= '0';
                    end if;
                else 
                        m_data <= (others => '0');
                        S_AXIS_TREADY <= '0';
                        m_tvalid <= '0';
                        m_tlast <= '0'; 
                end if; 
		  end if; 
		end if;
    end process synchro_dma;
	-- Signals and output ports connections
	M_AXIS_TDATA <= m_data;
	M_AXIS_TVALID <= m_tvalid;
	M_AXIS_TLAST <= m_tlast;
end architecture behavioral;