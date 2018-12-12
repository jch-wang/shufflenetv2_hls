-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity subconv_3x3_16_no_re is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    input_0_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    input_0_ce0 : OUT STD_LOGIC;
    input_0_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    weight_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    weight_ce0 : OUT STD_LOGIC;
    weight_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    bias_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    bias_ce0 : OUT STD_LOGIC;
    bias_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    output_0_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    output_0_ce0 : OUT STD_LOGIC;
    output_0_we0 : OUT STD_LOGIC;
    output_0_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of subconv_3x3_16_no_re is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (23 downto 0) := "000000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (23 downto 0) := "000000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (23 downto 0) := "000000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (23 downto 0) := "000000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (23 downto 0) := "000000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (23 downto 0) := "000000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (23 downto 0) := "000001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (23 downto 0) := "000010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (23 downto 0) := "000100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (23 downto 0) := "001000000000000000000000";
    constant ap_ST_fsm_state23 : STD_LOGIC_VECTOR (23 downto 0) := "010000000000000000000000";
    constant ap_ST_fsm_state24 : STD_LOGIC_VECTOR (23 downto 0) := "100000000000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_11 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010001";
    constant ap_const_lv32_16 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010110";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_12 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010010";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv5_18 : STD_LOGIC_VECTOR (4 downto 0) := "11000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv9_2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal co_6_fu_196_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal co_6_reg_521 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_107_cast2_fu_219_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_107_cast2_reg_526 : STD_LOGIC_VECTOR (9 downto 0);
    signal exitcond4_fu_190_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_107_cast_fu_223_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_107_cast_reg_531 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_109_cast_fu_245_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_109_cast_reg_536 : STD_LOGIC_VECTOR (8 downto 0);
    signal bias_addr_reg_541 : STD_LOGIC_VECTOR (4 downto 0);
    signal h_cast_fu_249_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal h_cast_reg_546 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal h_6_fu_259_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal h_6_reg_554 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_112_cast_fu_274_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_112_cast_reg_559 : STD_LOGIC_VECTOR (13 downto 0);
    signal exitcond3_fu_253_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal w_cast_fu_282_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal w_cast_reg_564 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal w_6_fu_292_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal w_6_reg_572 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_76_fu_298_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_76_reg_577 : STD_LOGIC_VECTOR (4 downto 0);
    signal exitcond2_fu_286_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal m_6_fu_314_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal m_6_reg_585 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_84_fu_335_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_84_reg_590 : STD_LOGIC_VECTOR (8 downto 0);
    signal exitcond1_fu_308_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_69_fu_351_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_69_reg_595 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_119_cast_fu_381_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_119_cast_reg_600 : STD_LOGIC_VECTOR (13 downto 0);
    signal icmp_fu_399_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_reg_605 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_82_fu_409_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_82_reg_610 : STD_LOGIC_VECTOR (13 downto 0);
    signal n_6_fu_424_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal n_6_reg_618 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal tmp_86_fu_434_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_86_reg_623 : STD_LOGIC_VECTOR (8 downto 0);
    signal exitcond_fu_418_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp5_fu_464_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp5_reg_628 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_88_fu_474_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_88_reg_633 : STD_LOGIC_VECTOR (13 downto 0);
    signal notlhs_fu_479_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal notlhs_reg_638 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal weight_load_reg_653 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal tmp_77_fu_506_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_77_reg_658 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_186_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_78_reg_663 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal grp_fu_180_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state17 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state17 : signal is "none";
    signal bias_load_reg_673 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state18 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state18 : signal is "none";
    signal result_reg_678 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state23 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state23 : signal is "none";
    signal co_reg_99 : STD_LOGIC_VECTOR (4 downto 0);
    signal h_reg_110 : STD_LOGIC_VECTOR (4 downto 0);
    signal w_reg_122 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state24 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state24 : signal is "none";
    signal sum_reg_134 : STD_LOGIC_VECTOR (31 downto 0);
    signal m_reg_146 : STD_LOGIC_VECTOR (1 downto 0);
    signal sum_1_reg_157 : STD_LOGIC_VECTOR (31 downto 0);
    signal n_reg_169 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_fu_202_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_120_cast_fu_484_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_121_cast_fu_488_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_113_cast_fu_514_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_180_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_180_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal ap_CS_fsm_state19 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state19 : signal is "none";
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal tmp_s_fu_211_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_79_fu_227_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_shl_cast_fu_235_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_cast_fu_207_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_80_fu_239_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_cast_41_fu_265_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_81_fu_269_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_67_cast_fu_320_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_83_fu_324_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_74_fu_329_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal m_cast_cast_fu_304_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_68_fu_341_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_68_cast_fu_347_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp4_fu_357_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp4_cast_fu_363_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_70_fu_367_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_71_cast_fu_372_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_85_fu_376_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_75_fu_389_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_66_cast_fu_405_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_72_cast_fu_430_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp5_fu_439_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp5_cast_fu_445_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_73_fu_449_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_87_fu_454_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_75_cast_fu_470_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal n_cast9_fu_414_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp7_fu_496_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp6_fu_492_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp2_fu_500_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (23 downto 0);

    component ShuffleNetV2_faddbkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component ShuffleNetV2_fmulcud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    ShuffleNetV2_faddbkb_x_U45 : component ShuffleNetV2_faddbkb
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_180_p0,
        din1 => grp_fu_180_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_180_p2);

    ShuffleNetV2_fmulcud_x_U46 : component ShuffleNetV2_fmulcud
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => weight_load_reg_653,
        din1 => tmp_77_reg_658,
        ce => ap_const_logic_1,
        dout => grp_fu_186_p2);





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


    co_reg_99_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond3_fu_253_p2 = ap_const_lv1_1))) then 
                co_reg_99 <= co_6_reg_521;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                co_reg_99 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    h_reg_110_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond2_fu_286_p2 = ap_const_lv1_1))) then 
                h_reg_110 <= h_6_reg_554;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_190_p2 = ap_const_lv1_0))) then 
                h_reg_110 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    m_reg_146_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_1 = exitcond_fu_418_p2))) then 
                m_reg_146 <= m_6_reg_585;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond2_fu_286_p2))) then 
                m_reg_146 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    n_reg_169_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond1_fu_308_p2))) then 
                n_reg_169 <= ap_const_lv2_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state17)) then 
                n_reg_169 <= n_6_reg_618;
            end if; 
        end if;
    end process;

    sum_1_reg_157_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond1_fu_308_p2))) then 
                sum_1_reg_157 <= sum_reg_134;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state17)) then 
                sum_1_reg_157 <= grp_fu_180_p2;
            end if; 
        end if;
    end process;

    sum_reg_134_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_1 = exitcond_fu_418_p2))) then 
                sum_reg_134 <= sum_1_reg_157;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond2_fu_286_p2))) then 
                sum_reg_134 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    w_reg_122_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond3_fu_253_p2))) then 
                w_reg_122 <= ap_const_lv5_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state24)) then 
                w_reg_122 <= w_6_reg_572;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_190_p2 = ap_const_lv1_0))) then
                bias_addr_reg_541 <= tmp_fu_202_p1(5 - 1 downto 0);
                    tmp_107_cast2_reg_526(8 downto 4) <= tmp_107_cast2_fu_219_p1(8 downto 4);
                    tmp_107_cast_reg_531(8 downto 4) <= tmp_107_cast_fu_223_p1(8 downto 4);
                tmp_109_cast_reg_536 <= tmp_109_cast_fu_245_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state18)) then
                bias_load_reg_673 <= bias_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                co_6_reg_521 <= co_6_fu_196_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                h_6_reg_554 <= h_6_fu_259_p2;
                    h_cast_reg_546(4 downto 0) <= h_cast_fu_249_p1(4 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_0 = exitcond_fu_418_p2))) then
                icmp5_reg_628 <= icmp5_fu_464_p2;
                notlhs_reg_638 <= notlhs_fu_479_p2;
                tmp_86_reg_623 <= tmp_86_fu_434_p2;
                tmp_88_reg_633 <= tmp_88_fu_474_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond1_fu_308_p2))) then
                icmp_reg_605 <= icmp_fu_399_p2;
                    tmp_119_cast_reg_600(13 downto 4) <= tmp_119_cast_fu_381_p3(13 downto 4);
                tmp_69_reg_595 <= tmp_69_fu_351_p2;
                tmp_84_reg_590 <= tmp_84_fu_335_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                m_6_reg_585 <= m_6_fu_314_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                n_6_reg_618 <= n_6_fu_424_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state23)) then
                result_reg_678 <= grp_fu_180_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond3_fu_253_p2))) then
                    tmp_112_cast_reg_559(13 downto 4) <= tmp_112_cast_fu_274_p3(13 downto 4);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond2_fu_286_p2))) then
                tmp_76_reg_577 <= tmp_76_fu_298_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                tmp_77_reg_658 <= tmp_77_fu_506_p3;
                weight_load_reg_653 <= weight_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state12)) then
                tmp_78_reg_663 <= grp_fu_186_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (exitcond1_fu_308_p2 = ap_const_lv1_1))) then
                tmp_82_reg_610 <= tmp_82_fu_409_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                w_6_reg_572 <= w_6_fu_292_p2;
                    w_cast_reg_564(4 downto 0) <= w_cast_fu_282_p1(4 downto 0);
            end if;
        end if;
    end process;
    tmp_107_cast2_reg_526(3 downto 0) <= "0000";
    tmp_107_cast2_reg_526(9) <= '0';
    tmp_107_cast_reg_531(3 downto 0) <= "0000";
    tmp_107_cast_reg_531(9) <= '0';
    h_cast_reg_546(5) <= '0';
    tmp_112_cast_reg_559(3 downto 0) <= "0000";
    w_cast_reg_564(5) <= '0';
    tmp_119_cast_reg_600(3 downto 0) <= "0000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond4_fu_190_p2, ap_CS_fsm_state3, exitcond3_fu_253_p2, ap_CS_fsm_state4, exitcond2_fu_286_p2, ap_CS_fsm_state5, exitcond1_fu_308_p2, ap_CS_fsm_state6, exitcond_fu_418_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_190_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond3_fu_253_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond2_fu_286_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond1_fu_308_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state18;
                end if;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_1 = exitcond_fu_418_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state18 => 
                ap_NS_fsm <= ap_ST_fsm_state19;
            when ap_ST_fsm_state19 => 
                ap_NS_fsm <= ap_ST_fsm_state20;
            when ap_ST_fsm_state20 => 
                ap_NS_fsm <= ap_ST_fsm_state21;
            when ap_ST_fsm_state21 => 
                ap_NS_fsm <= ap_ST_fsm_state22;
            when ap_ST_fsm_state22 => 
                ap_NS_fsm <= ap_ST_fsm_state23;
            when ap_ST_fsm_state23 => 
                ap_NS_fsm <= ap_ST_fsm_state24;
            when ap_ST_fsm_state24 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state17 <= ap_CS_fsm(16);
    ap_CS_fsm_state18 <= ap_CS_fsm(17);
    ap_CS_fsm_state19 <= ap_CS_fsm(18);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state23 <= ap_CS_fsm(22);
    ap_CS_fsm_state24 <= ap_CS_fsm(23);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond4_fu_190_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_190_p2 = ap_const_lv1_1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond4_fu_190_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_190_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bias_address0 <= bias_addr_reg_541;

    bias_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            bias_ce0 <= ap_const_logic_1;
        else 
            bias_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    co_6_fu_196_p2 <= std_logic_vector(unsigned(co_reg_99) + unsigned(ap_const_lv5_1));
    exitcond1_fu_308_p2 <= "1" when (m_reg_146 = ap_const_lv2_3) else "0";
    exitcond2_fu_286_p2 <= "1" when (w_reg_122 = ap_const_lv5_10) else "0";
    exitcond3_fu_253_p2 <= "1" when (h_reg_110 = ap_const_lv5_10) else "0";
    exitcond4_fu_190_p2 <= "1" when (co_reg_99 = ap_const_lv5_18) else "0";
    exitcond_fu_418_p2 <= "1" when (n_reg_169 = ap_const_lv2_3) else "0";

    grp_fu_180_p0_assign_proc : process(sum_reg_134, sum_1_reg_157, ap_CS_fsm_state13, ap_CS_fsm_state19)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state19)) then 
            grp_fu_180_p0 <= sum_reg_134;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            grp_fu_180_p0 <= sum_1_reg_157;
        else 
            grp_fu_180_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_180_p1_assign_proc : process(tmp_78_reg_663, bias_load_reg_673, ap_CS_fsm_state13, ap_CS_fsm_state19)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state19)) then 
            grp_fu_180_p1 <= bias_load_reg_673;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            grp_fu_180_p1 <= tmp_78_reg_663;
        else 
            grp_fu_180_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    h_6_fu_259_p2 <= std_logic_vector(unsigned(h_reg_110) + unsigned(ap_const_lv5_1));
    h_cast_fu_249_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_reg_110),6));
    icmp5_fu_464_p2 <= "0" when (tmp_87_fu_454_p4 = ap_const_lv2_1) else "1";
    icmp_fu_399_p2 <= "0" when (tmp_75_fu_389_p4 = ap_const_lv2_1) else "1";
    input_0_address0 <= tmp_121_cast_fu_488_p1(13 - 1 downto 0);

    input_0_ce0_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            input_0_ce0 <= ap_const_logic_1;
        else 
            input_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    m_6_fu_314_p2 <= std_logic_vector(unsigned(m_reg_146) + unsigned(ap_const_lv2_1));
    m_cast_cast_fu_304_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(m_reg_146),3));
    n_6_fu_424_p2 <= std_logic_vector(unsigned(n_reg_169) + unsigned(ap_const_lv2_1));
    n_cast9_fu_414_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(n_reg_169),5));
    notlhs_fu_479_p2 <= "0" when (n_cast9_fu_414_p1 = tmp_76_reg_577) else "1";
    output_0_address0 <= tmp_113_cast_fu_514_p1(13 - 1 downto 0);

    output_0_ce0_assign_proc : process(ap_CS_fsm_state24)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state24)) then 
            output_0_ce0 <= ap_const_logic_1;
        else 
            output_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_0_d0 <= result_reg_678;

    output_0_we0_assign_proc : process(ap_CS_fsm_state24)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state24)) then 
            output_0_we0 <= ap_const_logic_1;
        else 
            output_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    p_shl_cast_fu_235_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_79_fu_227_p3),8));
    sel_tmp2_fu_500_p2 <= (tmp7_fu_496_p2 and tmp6_fu_492_p2);
        tmp4_cast_fu_363_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp4_fu_357_p2),6));

    tmp4_fu_357_p2 <= std_logic_vector(signed(ap_const_lv2_3) + signed(m_reg_146));
        tmp5_cast_fu_445_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp5_fu_439_p2),6));

    tmp5_fu_439_p2 <= std_logic_vector(unsigned(n_reg_169) + unsigned(ap_const_lv2_3));
    tmp6_fu_492_p2 <= (icmp_reg_605 and notlhs_reg_638);
    tmp7_fu_496_p2 <= (tmp_69_reg_595 and icmp5_reg_628);
    tmp_107_cast2_fu_219_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_211_p3),10));
    tmp_107_cast_fu_223_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_211_p3),10));
        tmp_109_cast_fu_245_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_80_fu_239_p2),9));

    tmp_112_cast_fu_274_p3 <= (tmp_81_fu_269_p2 & ap_const_lv4_0);
    tmp_113_cast_fu_514_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_82_reg_610),64));
    tmp_119_cast_fu_381_p3 <= (tmp_85_fu_376_p2 & ap_const_lv4_0);
    tmp_120_cast_fu_484_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_86_reg_623),64));
    tmp_121_cast_fu_488_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_88_reg_633),64));
    tmp_66_cast_fu_405_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_reg_122),14));
    tmp_67_cast_fu_320_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(m_reg_146),9));
        tmp_68_cast_fu_347_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_68_fu_341_p2),5));

    tmp_68_fu_341_p2 <= std_logic_vector(unsigned(ap_const_lv3_0) - unsigned(m_cast_cast_fu_304_p1));
    tmp_69_fu_351_p2 <= "0" when (h_reg_110 = tmp_68_cast_fu_347_p1) else "1";
    tmp_70_fu_367_p2 <= std_logic_vector(signed(tmp4_cast_fu_363_p1) + signed(h_cast_reg_546));
        tmp_71_cast_fu_372_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_70_fu_367_p2),10));

    tmp_72_cast_fu_430_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(n_reg_169),9));
    tmp_73_fu_449_p2 <= std_logic_vector(unsigned(w_cast_reg_564) + unsigned(tmp5_cast_fu_445_p1));
    tmp_74_fu_329_p2 <= std_logic_vector(shift_left(unsigned(tmp_83_fu_324_p2),to_integer(unsigned('0' & ap_const_lv9_2(9-1 downto 0)))));
        tmp_75_cast_fu_470_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_73_fu_449_p2),14));

    tmp_75_fu_389_p4 <= tmp_70_fu_367_p2(5 downto 4);
    tmp_76_fu_298_p2 <= std_logic_vector(unsigned(ap_const_lv5_0) - unsigned(w_reg_122));
    tmp_77_fu_506_p3 <= 
        input_0_q0 when (sel_tmp2_fu_500_p2(0) = '1') else 
        ap_const_lv32_0;
    tmp_79_fu_227_p3 <= (co_reg_99 & ap_const_lv2_0);
    tmp_80_fu_239_p2 <= std_logic_vector(unsigned(p_shl_cast_fu_235_p1) - unsigned(tmp_cast_fu_207_p1));
    tmp_81_fu_269_p2 <= std_logic_vector(unsigned(tmp_cast_41_fu_265_p1) + unsigned(tmp_107_cast_reg_531));
    tmp_82_fu_409_p2 <= std_logic_vector(unsigned(tmp_112_cast_reg_559) + unsigned(tmp_66_cast_fu_405_p1));
    tmp_83_fu_324_p2 <= std_logic_vector(unsigned(tmp_67_cast_fu_320_p1) + unsigned(tmp_109_cast_reg_536));
    tmp_84_fu_335_p2 <= std_logic_vector(unsigned(tmp_74_fu_329_p2) - unsigned(tmp_83_fu_324_p2));
    tmp_85_fu_376_p2 <= std_logic_vector(signed(tmp_71_cast_fu_372_p1) + signed(tmp_107_cast2_reg_526));
    tmp_86_fu_434_p2 <= std_logic_vector(unsigned(tmp_84_reg_590) + unsigned(tmp_72_cast_fu_430_p1));
    tmp_87_fu_454_p4 <= tmp_73_fu_449_p2(5 downto 4);
    tmp_88_fu_474_p2 <= std_logic_vector(unsigned(tmp_119_cast_reg_600) + unsigned(tmp_75_cast_fu_470_p1));
    tmp_cast_41_fu_265_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_reg_110),10));
    tmp_cast_fu_207_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(co_reg_99),8));
    tmp_fu_202_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(co_reg_99),64));
    tmp_s_fu_211_p3 <= (co_reg_99 & ap_const_lv4_0);
    w_6_fu_292_p2 <= std_logic_vector(unsigned(w_reg_122) + unsigned(ap_const_lv5_1));
    w_cast_fu_282_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_reg_122),6));
    weight_address0 <= tmp_120_cast_fu_484_p1(8 - 1 downto 0);

    weight_ce0_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            weight_ce0 <= ap_const_logic_1;
        else 
            weight_ce0 <= ap_const_logic_0;
        end if; 
    end process;

end behav;
