--=============================================================================
--                        Copyright 2018
--                    Telekom IEEE AP-S Contest
--                     All rights reserved
--
-- Module     : First Demux
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
entity first_demux is
    generic (
		C_M_DATA_WIDHT	: integer 	:= 32; -- width of the transfer chunks equal to 4 Bytes.
		BUFFER_LENGTH	: integer	:= 6132; -- 24.576KB of transfer buffer RX
		TRANSFER_LENGTH   : integer := 5  
    );
    port
    (
	-- INPUT SIGNALS --
    ACLK : in	std_logic;
    ARESETN : in	std_logic;
	I_b0_b1 : in	std_logic;
	I_b2_b3 : in	std_logic;
	I_b4_b5 : in	std_logic;
	I_b6_b7 : in	std_logic;
	I_b8_b9 : in	std_logic;
	I_b10_b11 : in	std_logic;
	I_b12_b13 : in	std_logic;
	I_b14_b15 : in	std_logic;
	Q_b0_b1 : in	std_logic;
	Q_b2_b3 : in	std_logic;
	Q_b4_b5 : in	std_logic;
	Q_b6_b7 : in	std_logic;
	Q_b8_b9 : in	std_logic;
	Q_b10_b11 : in	std_logic;
	Q_b12_b13 : in	std_logic;
	Q_b14_b15 : in	std_logic;
	clk_adc : in	std_logic;
	enable : in	std_logic;
	-- OUTPUT SIGNALS -- 
	--data_out : out std_logic_vector(C_M_DATA_WIDHT-1 downto 0); 
	--data_valid: out std_logic;
    M_AXIS_TVALID : out	std_logic; -- Connected to S_AXIS_TVALID of next FIFO
    M_AXIS_TDATA : out    std_logic_vector(C_M_DATA_WIDHT-1 downto 0) -- Connected to S_AXIS_TDATA of next FIFO 
	--M_AXIS_TLAST : out	std_logic-- Connected to S_AXIS_TLAST of next FIFO
    );
end first_demux;

------------------------------------------------------------------------------
-- Architecture Section
------------------------------------------------------------------------------
architecture behavioral of first_demux is

	-- FSM : Only 3 states. 
	-- IDLE : Wait for enable.
	-- READ_HIGH: Read data in high level (b0,b2,b4 ... b14)
	-- READ_LOW: Read data in low level (b1, b3, b5, ... b15)
    type STATE_TYPE is (IDLE,READ_HIGH, READ_LOW);
    signal state : STATE_TYPE;
	
	-- valid output data signal
	signal tvalid: std_logic;
	-- last output data signal
    --signal tlast : std_logic;
    
    signal enable_nxt: std_logic;
    
    -- Metaestability control
	signal synch_data_0  : std_logic_vector(16 downto 0);
	signal synch_data_1  : std_logic_vector(16 downto 0);
	signal synch_data_2  : std_logic_vector(16 downto 0);
	
	-- Received IQ data. 16 bits resolution. 
	signal I_data: std_logic_vector((C_M_DATA_WIDHT/2)-1 downto 0);
	signal Q_data: std_logic_vector((C_M_DATA_WIDHT/2)-1 downto 0);

	-- Packet counter initialize to 0.
	signal packetCounter : unsigned(31 downto 0) := (others=>'0');
    signal transfer_cnt : unsigned(31 downto 0) := (others=>'0');
	 
begin
   
   synchro_metaestability: process(ACLK) is 
   begin 
		if ACLK'event and ACLK = '1' then
			if ARESETN = '0' then
				--data_odd_and_even <= (others => '0');
				synch_data_0 <= (others => '0');
				synch_data_1 <= (others => '0');
				synch_data_2 <= (others => '0');
			else 		
				synch_data_0 <= Q_b14_b15 & Q_b12_b13 & Q_b10_b11 & Q_b8_b9 & Q_b6_b7 & Q_b4_b5 & Q_b2_b3 & Q_b0_b1 & I_b14_b15 & I_b12_b13 & I_b10_b11 & I_b8_b9 & I_b6_b7 & I_b4_b5 & I_b2_b3 & I_b0_b1 & clk_adc;
				synch_data_1 <= synch_data_0; 
				synch_data_2 <= synch_data_1; 
			end if; 
		end if;   
   end process synchro_metaestability;
   
	-- FSM PROCESS:
	--	IDLE: tlast ='0' and tvalid='0' until S_AXIS_TVALID='1' and M_AXIS_TREADY='1'--> state = READ_NO_SYNCHRO.
	-- 	READ_NO_SYNCHRO: read the no synchro structure, when Magic number =  "A2BB4A9A"  and next Magic number = "C90FDAA2" --> state = READ_SYNCHRO.
	-- 	READ_SYNCHRO: read the synchro structure
	
	StateMachine : process(ACLK) is
    variable state_nxt : STATE_TYPE := IDLE;
	begin
		if ACLK'event and ACLK = '1' then
			if ARESETN = '0' then
				--data_odd_and_even <= (others => '0');
				tvalid <= '0';
				I_data <= (others => '0');
				Q_data <= (others => '0');
				--tlast <= '0'; 
			else 
				case state_nxt is
				    when IDLE => 
				        tvalid <= '0';
				        --tlast <= '0'; 
				        enable_nxt <= enable; 
				        if (enable_nxt = '0' and enable = '1') then 
				            state_nxt := READ_HIGH; 
				        else 
				            state_nxt := IDLE;
				        end if; 		
					when READ_HIGH =>
						tvalid <= '0';
						--tlast <= '0';
						if(enable = '1' and synch_data_2(0)='1' ) then  
							data_acq_1: FOR a IN 0 TO 7 LOOP
							    I_data(2*a) <= synch_data_2(a+1);
								Q_data(2*a) <= synch_data_2(a+9);
							END LOOP data_acq_1;
							state_nxt := READ_LOW; 
						elsif (enable = '0') then 
						     state_nxt := IDLE;
                        end if;
					when READ_LOW =>
						tvalid <= '0';
						if(enable = '1') then  
							if (synch_data_2(0)='0') then 
								data_acq_2: FOR a IN 0 TO 7 LOOP
									I_data(2*a+1) <= synch_data_2(a+1);
									Q_data(2*a+1) <= synch_data_2(a+9);
								END LOOP data_acq_2;
								tvalid <= '1';
							    if (packetCounter= BUFFER_LENGTH-1) then
                                    packetCounter <= (others=>'0');
                                    --tlast <= '1';
                                    transfer_cnt <= transfer_cnt+1;
                                    if (transfer_cnt= TRANSFER_LENGTH-1) then
                                            transfer_cnt <= (others=>'0');
                                            state_nxt := IDLE;
                                    end if;                       
                                else
                                    --tlast <= '0'; 
                                    packetCounter <= packetCounter+1;
                                    state_nxt := READ_HIGH;
                                end if;                             
								 
							end if;
						else 
						     state_nxt := IDLE;
                        end if;
				end case;
				state <= state_nxt;	
			end if;
		end if;
    end process StateMachine;
	-- Signals and output ports connections
	M_AXIS_TDATA <= Q_data & I_data;
	M_AXIS_TVALID <= tvalid;
	--M_AXIS_TLAST <= tlast;
end architecture behavioral;