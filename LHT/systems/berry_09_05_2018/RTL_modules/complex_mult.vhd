--=============================================================================
--                        Copyright 2018
--                    Telekom IEEE AP-S Contest
--                     All rights reserved
--
-- Module     : Complex Mult
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
--  This module performs the downconversion
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
entity complex_mult is
    generic (
		C_M_DATA_WIDHT	: integer 	:= 32; -- width of the transfer chunks equal to 4 Bytes.
		--BUFFER_LENGTH	: integer	:= 6700 -- 6700 bytes equal to the size of one processed transmission frame in mode I. 
    );
    port
    (
	-- INPUT SIGNALS --
	data_acq : in std_logic_vector(C_M_DATA_WIDHT-1 downto 0);
	exp  in std_logic_vector(C_M_DATA_WIDHT-1 downto 0); 
	enable : in	std_logic;
	
	-- OUTPUT SIGNALS -- 
	data_out : out std_logic_vector(C_M_DATA_WIDHT-1 downto 0); 
	data_valid: out std_logic
    );
end complex_mult;

------------------------------------------------------------------------------
-- Architecture Section
------------------------------------------------------------------------------
architecture behavioral of complex_mult is
	signal tvalid: std_logic;
	signal I_data: std_logic_vector((C_M_DATA_WIDHT/2)-1 downto 0);
	signal Q_data: std_logic_vector((C_M_DATA_WIDHT/2)-1 downto 0);
	signal I_data_trunk: std_logic_vector((C_M_DATA_WIDHT/2)-1 downto 0);
	signal Q_data_trunk: std_logic_vector((C_M_DATA_WIDHT/2)-1 downto 0);
	signal sin_data: std_logic_vector((C_M_DATA_WIDHT/2)-1 downto 0);
	signal cos_data: std_logic_vector((C_M_DATA_WIDHT/2)-1 downto 0);
	signal data_bb : std_logic_vector(C_M_DATA_WIDHT-1 downto 0);
begin
	-- FSM PROCESS:
	--	IDLE: tlast ='0' and tvalid='0' until S_AXIS_TVALID='1' and M_AXIS_TREADY='1'--> state = READ_NO_SYNCHRO.
	-- 	READ_NO_SYNCHRO: read the no synchro structure, when Magic number =  "A2BB4A9A"  and next Magic number = "C90FDAA2" --> state = READ_SYNCHRO.
	-- 	READ_SYNCHRO: read the synchro structure
	
	-- primero truncamos las señal 
	
	StateMachine : process(ACLK) is
    variable state_nxt : STATE_TYPE := IDLE;
	begin
		if ACLK'event and ACLK = '1' then
			if ARESETN = '0' then
				I_data <= (others => '0');
				Q_data <= (others => '0');
				I_data_trunk <= (others => '0');
				Q_data_trunk <= (others => '0');
				tvalid <= '0';
				sin_data <= (others => '0');
				cos_data <= '0';
			else 
				if enable = '1' then 
					I_data <= (others => '0');
					Q_data <= (others => '0');
					I_data_trunk <= (others => '0');
					Q_data_trunk <= (others => '0');
					tvalid <= '0';
					sin_data <= (others => '0');
					cos_data <= '0';	
				end if; 
		end if;
    end process StateMachine;
	-- Signals and output ports connections
	data_out <= data_bb;
	data_valid <= tvalid;

	
end architecture behavioral;