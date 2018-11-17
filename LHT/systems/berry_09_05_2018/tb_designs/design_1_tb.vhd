--=============================================================================
--                        Copyright 2018
--                    Telekom IEEE AP-S Contest
--                     All rights reserved
--
-- Module     : design_1_tb
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
--  
--
-- POSSIBLE IMPROVEMENTS 
--
--=============================================================================
-- $Id$
--=============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

use std.textio.all;
use ieee.std_logic_textio.all;

entity design_1_tb is
end design_1_tb;

architecture Behavioral of design_1_tb is

	--type t_character_file is file of character ;
	 
	 component design_1_wrapper is
		port (
			ACLK				: in	std_logic;	-- clk signal (16MHz)
			ARESETN				: in	std_logic;	-- asynchronous master reset (16MHz)
		
			---------------------------------------------------------------------------
			-- output
			---------------------------------------------------------------------------
			
			-- FIFO
			M_AXIS_TDATA		: out std_logic_vector(32-1 downto 0);
			M_AXIS_TVALID		: out std_logic;
			M_AXIS_TLAST		: out std_logic;
			s_axis_tready		: out std_logic; 
 			
			---------------------------------------------------------------------------
			-- input
			---------------------------------------------------------------------------\
			-- First demux input 
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
			
			-- FIFO M_READY 
			m_axis_tready		: in std_logic			
		);
	end component design_1_wrapper;
		
		
--constant c_1sec : time := 1 sec;
    constant c_clk_period : time := 10 ns; -- T_clk=62.5ns / F_clk=50MHz
	constant c_clk_period_adc : time := 83 ns; -- T_clk=62.5ns / F_clk=12MHz
    signal tb_clk : std_logic := '0';
    signal tb_clk_adc : std_logic:='0';
    signal tb_reset_n : std_logic;
	signal tb_m_axis_tdata : std_logic_vector(32-1 downto 0);
	signal tb_m_axis_tvalid : std_logic;
	signal tb_m_axis_tlast : std_logic;
	signal tb_s_axis_tready : std_logic;
	signal tb_I_b0_b1 : std_logic;
	signal tb_I_b2_b3 :	std_logic;
	signal tb_I_b4_b5 : std_logic;
	signal tb_I_b6_b7 : std_logic;
	signal tb_I_b8_b9 : std_logic;
	signal tb_I_b10_b11 : std_logic;
	signal tb_I_b12_b13 : std_logic;
	signal tb_I_b14_b15 : std_logic;
	signal tb_Q_b0_b1 : std_logic;
	signal tb_Q_b2_b3 : std_logic;
	signal tb_Q_b4_b5 : std_logic;
	signal tb_Q_b6_b7 : std_logic;
	signal tb_Q_b8_b9 : std_logic;
	signal tb_Q_b10_b11 : std_logic;
	signal tb_Q_b12_b13 : std_logic;
	signal tb_Q_b14_b15 : std_logic;
		
	signal tb_enable : std_logic;
	
	signal tb_m_axis_tready : std_logic;

	
	begin -- beh
		DUT: design_1_wrapper
		port map ( ACLK             => tb_clk,                   --[in]
				   ARESETN         => tb_reset_n,               --[in]
				  
				   M_AXIS_TDATA		=> tb_m_axis_tdata,            --[out]
				   M_AXIS_TVALID   => tb_m_axis_tvalid,              --[out]
				   M_AXIS_TLAST         => tb_m_axis_tlast,             --[out]
				   s_axis_tready         => tb_s_axis_tready,             --[out]
                                               
				   I_b0_b1    => tb_I_b0_b1  ,    --[in]
				   I_b2_b3    => tb_I_b2_b3  ,    --[in]
				   I_b4_b5    => tb_I_b4_b5  ,    --[in]
				   I_b6_b7    => tb_I_b6_b7  ,    --[in]
				   I_b8_b9    => tb_I_b8_b9  ,    --[in]
				   I_b10_b11  => tb_I_b10_b11,  --[in]
				   I_b12_b13  => tb_I_b12_b13,  --[in]
				   I_b14_b15  => tb_I_b14_b15,  --[in]
				   Q_b0_b1    => tb_Q_b0_b1  ,    --[in]
				   Q_b2_b3    => tb_Q_b2_b3  ,    --[in]
				   Q_b4_b5    => tb_Q_b4_b5  ,    --[in]
				   Q_b6_b7    => tb_Q_b6_b7  ,    --[in]
				   Q_b8_b9    => tb_Q_b8_b9  ,    --[in]
				   Q_b10_b11  => tb_Q_b10_b11,  --[in]
				   Q_b12_b13  => tb_Q_b12_b13,  --[in]
				   Q_b14_b15  => tb_Q_b14_b15,  --[in]
				   clk_adc    => tb_clk_adc  ,    --[in]
				   enable => tb_enable, --[in]
				   m_axis_tready    => tb_m_axis_tready     --[in]
				  );
		

		
		----------------------------------------------------
		-- generating clock signal, Quarz Signale Erstellung
		----------------------------------------------------
		tb_clk <= not tb_clk after c_clk_period/2.0; 
		tb_clk_adc <= not tb_clk_adc after c_clk_period_adc/2.0; 
		
		process  -- Process in order to generate the test cases
			    --file     iq_in_file    : t_character_file ;
				--file     strobe_file   : text ;
				--file fin : text open read_mode is "DRN_NDS_justagc.iq2048";
				--variable rdline : line;
				--variable hex : std_logic_vector(31 downto 0);
				--file     iq_in_file    : t_character_file ;
				--file     strobe_file   : text ;
				--variable v_char_high   : character ;
				--variable v_char_low    : character ;
				--variable v_re_int      : integer ;
				--variable v_im_int      : integer ;
				--variable v_strobeline  : line;
				--variable v_temp_int    : integer ;
				--variable v_output_line : line ;
				--variable p_count: integer range 0 to 100 := 1;
		begin
			--file_open( iq_in_file , "DRN_NDS_justagc.iq2048" , read_mode );
			--file_open( strobe_file , "target.txt" , write_mode );
		  
		  -- INITIALITATION
			 tb_reset_n <= '0'; --Reset and initial values

			 tb_m_axis_tready <= '0';
			 tb_I_b0_b1    <= '0';
			 tb_I_b2_b3    <= '0';
			 tb_I_b4_b5    <= '0';
			 tb_I_b6_b7    <= '0';
			 tb_I_b8_b9    <= '0';
			 tb_I_b10_b11  <= '0';
			 tb_I_b12_b13  <= '0';
			 tb_I_b14_b15  <= '0';
			 tb_Q_b0_b1    <= '0';
			 tb_Q_b2_b3    <= '0';
			 tb_Q_b4_b5    <= '0';
			 tb_Q_b6_b7    <= '0';
			 tb_Q_b8_b9    <= '0';
			 tb_Q_b10_b11  <= '0';
			 tb_Q_b12_b13  <= '0';
			 tb_Q_b14_b15  <= '0';
			 
			 tb_enable <= '0'; 
			 
			 --tb_cpu_fifo_rd_happened<='0';
			 -- RESET OFF
			 wait for 2*c_clk_period; --100ns
			 tb_reset_n <= '1';
			 
			--file_open( iq_in_file , g_iq_file_name , read_mode );
			--file_open( strobe_file , "strobe.txt" , write_mode );
	
-- WRITE BLOCK ENABLE 

            -- IPL 
			wait for 100*c_clk_period;
			 tb_enable <= '1'; 
			 tb_m_axis_tready <= '1';
			 tb_I_b0_b1    <= '1';
			 tb_I_b2_b3    <= '1';
			 tb_I_b4_b5    <= '1';
			 tb_I_b6_b7    <= '1';
			 tb_I_b8_b9    <= '1';
			 tb_I_b10_b11  <= '1';
			 tb_I_b12_b13  <= '1';
			 tb_I_b14_b15  <= '1';
			wait for 100000*c_clk_period;
              --tb_m_axis_tready <= '0';
              tb_I_b0_b1    <= '1';
              tb_I_b2_b3    <= '0';
              tb_I_b4_b5    <= '0';
              tb_I_b6_b7    <= '0';
              tb_I_b8_b9    <= '0';
              tb_I_b10_b11  <= '0';
              tb_I_b12_b13  <= '0';
              tb_I_b14_b15  <= '0';
			 wait for 100000*c_clk_period;
			 --tb_m_axis_tready <= '1';
             tb_I_b0_b1    <= '0';
             tb_I_b2_b3    <= '0';
             tb_I_b4_b5    <= '0';
             tb_I_b6_b7    <= '0';
             tb_I_b8_b9    <= '0';
             tb_I_b10_b11  <= '0';
             tb_I_b12_b13  <= '0';
             tb_I_b14_b15  <= '0';
 			wait for 100*c_clk_period;
               --tb_enable <= '0'; 
 			wait for 100*c_clk_period;
               --tb_enable <= '1'; 
               tb_I_b0_b1    <= '1';
               tb_I_b2_b3    <= '1';
               tb_I_b4_b5    <= '1';
               tb_I_b6_b7    <= '1';
               tb_I_b8_b9    <= '1';
               tb_I_b10_b11  <= '1';
               tb_I_b12_b13  <= '1';
               tb_I_b14_b15  <= '1';
              		
		 wait;	
			 
	end process;  
end Behavioral;
	
		
		