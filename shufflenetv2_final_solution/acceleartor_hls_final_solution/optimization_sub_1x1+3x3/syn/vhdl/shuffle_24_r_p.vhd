-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shuffle_24_r_p is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    output_V_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    output_V_ce0 : OUT STD_LOGIC;
    output_V_we0 : OUT STD_LOGIC;
    output_V_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_23_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_23_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_23_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_22_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_22_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_22_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_11_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_11_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_11_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_6_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_6_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_6_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_5_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_5_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_5_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_4_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_4_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_4_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_3_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_3_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_3_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_2_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_2_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_2_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_1_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_1_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_1_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_21_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_21_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_21_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_20_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_20_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_20_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_19_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_19_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_19_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_18_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_18_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_18_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_17_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_17_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_17_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_16_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_16_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_16_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_15_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_15_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_15_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_14_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_14_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_14_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_13_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_13_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_13_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_12_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_12_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_12_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_10_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_10_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_10_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_9_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_9_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_9_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_8_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_8_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_8_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_7_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_24_16x16_p_7_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_7_q0 : IN STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of shuffle_24_r_p is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv6_30 : STD_LOGIC_VECTOR (5 downto 0) := "110000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv5_12 : STD_LOGIC_VECTOR (4 downto 0) := "10010";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_511_fu_426_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_511_reg_675 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_389_fu_454_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_389_reg_679 : STD_LOGIC_VECTOR (10 downto 0);
    signal co_30_fu_466_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal co_30_reg_687 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_49_reg_692 : STD_LOGIC_VECTOR (4 downto 0);
    signal exitcond3_fu_460_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_391_fu_511_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_391_reg_697 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_394_fu_541_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_394_reg_702 : STD_LOGIC_VECTOR (9 downto 0);
    signal h_30_fu_553_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal h_30_reg_710 : STD_LOGIC_VECTOR (4 downto 0);
    signal output_V_addr_reg_715 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal w_40_fu_616_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal w_40_reg_843 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_fu_622_p26 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_reg_848 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal co_reg_393 : STD_LOGIC_VECTOR (5 downto 0);
    signal exitcond2_fu_547_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal h_reg_404 : STD_LOGIC_VECTOR (4 downto 0);
    signal exitcond_fu_610_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal w_reg_415 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal tmp_509_cast_fu_572_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_510_cast_fu_582_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_s_fu_430_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_388_fu_442_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_shl_cast_fu_438_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_shl1_cast_fu_450_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal h_cast2_cast_fu_482_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_390_fu_486_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_512_fu_499_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_shl4_cast_fu_491_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_shl5_cast_fu_507_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_392_fu_517_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_393_fu_529_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_shl2_cast_fu_525_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_shl3_cast_fu_537_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal w_cast1_cast_fu_563_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_395_fu_567_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal w_cast1_cast6_fu_559_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_396_fu_577_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);

    component ShuffleNetV2_mux_eOg IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        din5_WIDTH : INTEGER;
        din6_WIDTH : INTEGER;
        din7_WIDTH : INTEGER;
        din8_WIDTH : INTEGER;
        din9_WIDTH : INTEGER;
        din10_WIDTH : INTEGER;
        din11_WIDTH : INTEGER;
        din12_WIDTH : INTEGER;
        din13_WIDTH : INTEGER;
        din14_WIDTH : INTEGER;
        din15_WIDTH : INTEGER;
        din16_WIDTH : INTEGER;
        din17_WIDTH : INTEGER;
        din18_WIDTH : INTEGER;
        din19_WIDTH : INTEGER;
        din20_WIDTH : INTEGER;
        din21_WIDTH : INTEGER;
        din22_WIDTH : INTEGER;
        din23_WIDTH : INTEGER;
        din24_WIDTH : INTEGER;
        din25_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (7 downto 0);
        din3 : IN STD_LOGIC_VECTOR (7 downto 0);
        din4 : IN STD_LOGIC_VECTOR (7 downto 0);
        din5 : IN STD_LOGIC_VECTOR (7 downto 0);
        din6 : IN STD_LOGIC_VECTOR (7 downto 0);
        din7 : IN STD_LOGIC_VECTOR (7 downto 0);
        din8 : IN STD_LOGIC_VECTOR (7 downto 0);
        din9 : IN STD_LOGIC_VECTOR (7 downto 0);
        din10 : IN STD_LOGIC_VECTOR (7 downto 0);
        din11 : IN STD_LOGIC_VECTOR (7 downto 0);
        din12 : IN STD_LOGIC_VECTOR (7 downto 0);
        din13 : IN STD_LOGIC_VECTOR (7 downto 0);
        din14 : IN STD_LOGIC_VECTOR (7 downto 0);
        din15 : IN STD_LOGIC_VECTOR (7 downto 0);
        din16 : IN STD_LOGIC_VECTOR (7 downto 0);
        din17 : IN STD_LOGIC_VECTOR (7 downto 0);
        din18 : IN STD_LOGIC_VECTOR (7 downto 0);
        din19 : IN STD_LOGIC_VECTOR (7 downto 0);
        din20 : IN STD_LOGIC_VECTOR (7 downto 0);
        din21 : IN STD_LOGIC_VECTOR (7 downto 0);
        din22 : IN STD_LOGIC_VECTOR (7 downto 0);
        din23 : IN STD_LOGIC_VECTOR (7 downto 0);
        din24 : IN STD_LOGIC_VECTOR (7 downto 0);
        din25 : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    ShuffleNetV2_mux_eOg_x_U173 : component ShuffleNetV2_mux_eOg
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din1_WIDTH => 8,
        din2_WIDTH => 8,
        din3_WIDTH => 8,
        din4_WIDTH => 8,
        din5_WIDTH => 8,
        din6_WIDTH => 8,
        din7_WIDTH => 8,
        din8_WIDTH => 8,
        din9_WIDTH => 8,
        din10_WIDTH => 8,
        din11_WIDTH => 8,
        din12_WIDTH => 8,
        din13_WIDTH => 8,
        din14_WIDTH => 8,
        din15_WIDTH => 8,
        din16_WIDTH => 8,
        din17_WIDTH => 8,
        din18_WIDTH => 8,
        din19_WIDTH => 8,
        din20_WIDTH => 8,
        din21_WIDTH => 8,
        din22_WIDTH => 8,
        din23_WIDTH => 8,
        din24_WIDTH => 8,
        din25_WIDTH => 5,
        dout_WIDTH => 8)
    port map (
        din1 => buffer1_1_24_16x16_p_23_q0,
        din2 => buffer1_1_24_16x16_p_22_q0,
        din3 => buffer1_1_24_16x16_p_11_q0,
        din4 => buffer1_1_24_16x16_p_6_q0,
        din5 => buffer1_1_24_16x16_p_5_q0,
        din6 => buffer1_1_24_16x16_p_4_q0,
        din7 => buffer1_1_24_16x16_p_3_q0,
        din8 => buffer1_1_24_16x16_p_2_q0,
        din9 => buffer1_1_24_16x16_p_1_q0,
        din10 => buffer1_1_24_16x16_p_q0,
        din11 => buffer1_1_24_16x16_p_21_q0,
        din12 => buffer1_1_24_16x16_p_20_q0,
        din13 => buffer1_1_24_16x16_p_19_q0,
        din14 => buffer1_1_24_16x16_p_18_q0,
        din15 => buffer1_1_24_16x16_p_17_q0,
        din16 => buffer1_1_24_16x16_p_16_q0,
        din17 => buffer1_1_24_16x16_p_15_q0,
        din18 => buffer1_1_24_16x16_p_14_q0,
        din19 => buffer1_1_24_16x16_p_13_q0,
        din20 => buffer1_1_24_16x16_p_12_q0,
        din21 => buffer1_1_24_16x16_p_10_q0,
        din22 => buffer1_1_24_16x16_p_9_q0,
        din23 => buffer1_1_24_16x16_p_8_q0,
        din24 => buffer1_1_24_16x16_p_7_q0,
        din25 => tmp_49_reg_692,
        dout => tmp_fu_622_p26);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    co_reg_393_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond2_fu_547_p2 = ap_const_lv1_1))) then 
                co_reg_393 <= co_30_reg_687;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                co_reg_393 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    h_reg_404_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_1 = exitcond_fu_610_p2))) then 
                h_reg_404 <= h_30_reg_710;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond3_fu_460_p2 = ap_const_lv1_0))) then 
                h_reg_404 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    w_reg_415_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond2_fu_547_p2))) then 
                w_reg_415 <= ap_const_lv5_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                w_reg_415 <= w_40_reg_843;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                co_30_reg_687 <= co_30_fu_466_p2;
                    tmp_389_reg_679(10 downto 1) <= tmp_389_fu_454_p2(10 downto 1);
                tmp_511_reg_675 <= tmp_511_fu_426_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                h_30_reg_710 <= h_30_fu_553_p2;
                    tmp_391_reg_697(14 downto 1) <= tmp_391_fu_511_p2(14 downto 1);
                    tmp_394_reg_702(9 downto 1) <= tmp_394_fu_541_p2(9 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                output_V_addr_reg_715 <= tmp_509_cast_fu_572_p1(14 - 1 downto 0);
                w_40_reg_843 <= w_40_fu_616_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond3_fu_460_p2 = ap_const_lv1_0))) then
                tmp_49_reg_692 <= co_reg_393(5 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                tmp_reg_848 <= tmp_fu_622_p26;
            end if;
        end if;
    end process;
    tmp_389_reg_679(0) <= '0';
    tmp_391_reg_697(0) <= '0';
    tmp_394_reg_702(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, tmp_511_reg_675, ap_CS_fsm_state2, exitcond3_fu_460_p2, ap_CS_fsm_state3, ap_CS_fsm_state4, exitcond2_fu_547_p2, exitcond_fu_610_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond3_fu_460_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond2_fu_547_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_1 = exitcond_fu_610_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond_fu_610_p2) and (tmp_511_reg_675 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond3_fu_460_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond3_fu_460_p2 = ap_const_lv1_1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond3_fu_460_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond3_fu_460_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_10_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_10_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_10_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_10_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_11_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_11_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_11_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_11_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_12_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_12_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_12_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_12_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_13_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_13_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_13_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_13_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_14_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_14_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_14_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_14_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_15_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_15_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_15_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_15_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_16_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_16_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_16_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_16_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_17_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_17_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_17_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_17_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_18_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_18_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_18_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_18_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_19_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_19_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_19_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_19_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_1_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_1_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_1_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_20_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_20_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_20_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_20_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_21_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_21_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_21_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_21_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_22_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_22_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_22_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_22_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_23_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_23_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_23_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_23_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_2_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_2_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_2_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_3_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_3_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_3_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_4_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_4_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_4_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_4_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_5_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_5_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_5_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_5_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_6_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_6_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_6_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_6_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_7_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_7_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_7_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_7_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_8_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_8_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_8_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_8_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_9_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_9_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_9_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_9_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_address0 <= tmp_510_cast_fu_582_p1(9 - 1 downto 0);

    buffer1_1_24_16x16_p_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    co_30_fu_466_p2 <= std_logic_vector(unsigned(ap_const_lv6_1) + unsigned(co_reg_393));
    exitcond2_fu_547_p2 <= "1" when (h_reg_404 = ap_const_lv5_12) else "0";
    exitcond3_fu_460_p2 <= "1" when (co_reg_393 = ap_const_lv6_30) else "0";
    exitcond_fu_610_p2 <= "1" when (w_reg_415 = ap_const_lv5_12) else "0";
    h_30_fu_553_p2 <= std_logic_vector(unsigned(h_reg_404) + unsigned(ap_const_lv5_1));
    h_cast2_cast_fu_482_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_reg_404),11));
    output_V_address0 <= output_V_addr_reg_715;

    output_V_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            output_V_ce0 <= ap_const_logic_1;
        else 
            output_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_V_d0 <= tmp_reg_848;

    output_V_we0_assign_proc : process(tmp_511_reg_675, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (tmp_511_reg_675 = ap_const_lv1_1))) then 
            output_V_we0 <= ap_const_logic_1;
        else 
            output_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    p_shl1_cast_fu_450_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_388_fu_442_p3),11));
    p_shl2_cast_fu_525_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_392_fu_517_p3),10));
    p_shl3_cast_fu_537_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_393_fu_529_p3),10));
    p_shl4_cast_fu_491_p3 <= (tmp_390_fu_486_p2 & ap_const_lv4_0);
    p_shl5_cast_fu_507_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_512_fu_499_p3),15));
    p_shl_cast_fu_438_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_430_p3),11));
    tmp_388_fu_442_p3 <= (co_reg_393 & ap_const_lv1_0);
    tmp_389_fu_454_p2 <= std_logic_vector(unsigned(p_shl_cast_fu_438_p1) + unsigned(p_shl1_cast_fu_450_p1));
    tmp_390_fu_486_p2 <= std_logic_vector(unsigned(h_cast2_cast_fu_482_p1) + unsigned(tmp_389_reg_679));
    tmp_391_fu_511_p2 <= std_logic_vector(unsigned(p_shl4_cast_fu_491_p3) + unsigned(p_shl5_cast_fu_507_p1));
    tmp_392_fu_517_p3 <= (h_reg_404 & ap_const_lv4_0);
    tmp_393_fu_529_p3 <= (h_reg_404 & ap_const_lv1_0);
    tmp_394_fu_541_p2 <= std_logic_vector(unsigned(p_shl2_cast_fu_525_p1) + unsigned(p_shl3_cast_fu_537_p1));
    tmp_395_fu_567_p2 <= std_logic_vector(unsigned(tmp_391_reg_697) + unsigned(w_cast1_cast_fu_563_p1));
    tmp_396_fu_577_p2 <= std_logic_vector(unsigned(tmp_394_reg_702) + unsigned(w_cast1_cast6_fu_559_p1));
    tmp_509_cast_fu_572_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_395_fu_567_p2),32));
    tmp_510_cast_fu_582_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_396_fu_577_p2),32));
    tmp_511_fu_426_p1 <= co_reg_393(1 - 1 downto 0);
    tmp_512_fu_499_p3 <= (tmp_390_fu_486_p2 & ap_const_lv1_0);
    tmp_s_fu_430_p3 <= (co_reg_393 & ap_const_lv4_0);
    w_40_fu_616_p2 <= std_logic_vector(unsigned(w_reg_415) + unsigned(ap_const_lv5_1));
    w_cast1_cast6_fu_559_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_reg_415),10));
    w_cast1_cast_fu_563_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_reg_415),15));
end behav;
