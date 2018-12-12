-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity subconv_3x3_8_no_rel is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    input_0_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    input_0_ce0 : OUT STD_LOGIC;
    input_0_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    weight_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    weight_ce0 : OUT STD_LOGIC;
    weight_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    bias_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    bias_ce0 : OUT STD_LOGIC;
    bias_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    output_0_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    output_0_ce0 : OUT STD_LOGIC;
    output_0_we0 : OUT STD_LOGIC;
    output_0_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of subconv_3x3_8_no_rel is 
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
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_12 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010010";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv6_30 : STD_LOGIC_VECTOR (5 downto 0) := "110000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv10_2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal co_2_fu_198_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal co_2_reg_523 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_35_cast2_fu_221_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_35_cast2_reg_528 : STD_LOGIC_VECTOR (9 downto 0);
    signal exitcond4_fu_192_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_35_cast_fu_225_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_35_cast_reg_533 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_37_cast_fu_247_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_37_cast_reg_538 : STD_LOGIC_VECTOR (9 downto 0);
    signal bias_addr_reg_543 : STD_LOGIC_VECTOR (5 downto 0);
    signal h_cast_fu_251_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal h_cast_reg_548 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal h_2_fu_261_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal h_2_reg_556 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_40_cast_fu_276_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_40_cast_reg_561 : STD_LOGIC_VECTOR (12 downto 0);
    signal exitcond3_fu_255_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal w_cast_fu_284_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal w_cast_reg_566 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal w_2_fu_294_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal w_2_reg_574 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_23_fu_300_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_23_reg_579 : STD_LOGIC_VECTOR (3 downto 0);
    signal exitcond2_fu_288_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal m_2_fu_316_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal m_2_reg_587 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_28_fu_337_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_28_reg_592 : STD_LOGIC_VECTOR (9 downto 0);
    signal exitcond1_fu_310_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_17_fu_353_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_17_reg_597 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_47_cast_fu_383_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_47_cast_reg_602 : STD_LOGIC_VECTOR (12 downto 0);
    signal icmp_fu_401_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_reg_607 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_24_fu_411_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_24_reg_612 : STD_LOGIC_VECTOR (12 downto 0);
    signal n_2_fu_426_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal n_2_reg_620 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal tmp_31_fu_436_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_31_reg_625 : STD_LOGIC_VECTOR (9 downto 0);
    signal exitcond_fu_420_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp5_fu_466_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp5_reg_630 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_33_fu_476_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_33_reg_635 : STD_LOGIC_VECTOR (12 downto 0);
    signal notlhs_fu_481_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal notlhs_reg_640 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal weight_load_reg_655 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal tmp_25_fu_508_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_25_reg_660 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_188_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_26_reg_665 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal grp_fu_182_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state17 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state17 : signal is "none";
    signal bias_load_reg_675 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state18 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state18 : signal is "none";
    signal result_reg_680 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state23 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state23 : signal is "none";
    signal co_reg_101 : STD_LOGIC_VECTOR (5 downto 0);
    signal h_reg_112 : STD_LOGIC_VECTOR (3 downto 0);
    signal w_reg_124 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state24 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state24 : signal is "none";
    signal sum_reg_136 : STD_LOGIC_VECTOR (31 downto 0);
    signal m_reg_148 : STD_LOGIC_VECTOR (1 downto 0);
    signal sum_1_reg_159 : STD_LOGIC_VECTOR (31 downto 0);
    signal n_reg_171 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_fu_204_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_48_cast_fu_486_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_49_cast_fu_490_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_41_cast_fu_516_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_182_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_182_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal ap_CS_fsm_state19 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state19 : signal is "none";
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal tmp_s_fu_213_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_19_fu_229_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_shl_cast_fu_237_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_cast_fu_209_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_20_fu_241_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_cast_21_fu_267_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_22_fu_271_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_15_cast_fu_322_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_27_fu_326_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_15_fu_331_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal m_cast_cast_fu_306_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_16_fu_343_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_16_cast_fu_349_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp4_fu_359_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp4_cast_fu_365_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_18_fu_369_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_19_cast_fu_374_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_29_fu_378_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_30_fu_391_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_14_cast_fu_407_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_20_cast_fu_432_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp5_fu_441_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp5_cast_fu_447_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_21_fu_451_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_32_fu_456_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_23_cast_fu_472_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal n_cast9_fu_416_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp7_fu_498_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp6_fu_494_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp2_fu_502_p2 : STD_LOGIC_VECTOR (0 downto 0);
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
    ShuffleNetV2_faddbkb_x_U96 : component ShuffleNetV2_faddbkb
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_182_p0,
        din1 => grp_fu_182_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_182_p2);

    ShuffleNetV2_fmulcud_x_U97 : component ShuffleNetV2_fmulcud
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => weight_load_reg_655,
        din1 => tmp_25_reg_660,
        ce => ap_const_logic_1,
        dout => grp_fu_188_p2);





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


    co_reg_101_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond3_fu_255_p2 = ap_const_lv1_1))) then 
                co_reg_101 <= co_2_reg_523;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                co_reg_101 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    h_reg_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond2_fu_288_p2 = ap_const_lv1_1))) then 
                h_reg_112 <= h_2_reg_556;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_192_p2 = ap_const_lv1_0))) then 
                h_reg_112 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    m_reg_148_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_1 = exitcond_fu_420_p2))) then 
                m_reg_148 <= m_2_reg_587;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond2_fu_288_p2))) then 
                m_reg_148 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    n_reg_171_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond1_fu_310_p2))) then 
                n_reg_171 <= ap_const_lv2_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state17)) then 
                n_reg_171 <= n_2_reg_620;
            end if; 
        end if;
    end process;

    sum_1_reg_159_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond1_fu_310_p2))) then 
                sum_1_reg_159 <= sum_reg_136;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state17)) then 
                sum_1_reg_159 <= grp_fu_182_p2;
            end if; 
        end if;
    end process;

    sum_reg_136_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_1 = exitcond_fu_420_p2))) then 
                sum_reg_136 <= sum_1_reg_159;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond2_fu_288_p2))) then 
                sum_reg_136 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    w_reg_124_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond3_fu_255_p2))) then 
                w_reg_124 <= ap_const_lv4_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state24)) then 
                w_reg_124 <= w_2_reg_574;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_192_p2 = ap_const_lv1_0))) then
                bias_addr_reg_543 <= tmp_fu_204_p1(6 - 1 downto 0);
                    tmp_35_cast2_reg_528(8 downto 3) <= tmp_35_cast2_fu_221_p1(8 downto 3);
                    tmp_35_cast_reg_533(8 downto 3) <= tmp_35_cast_fu_225_p1(8 downto 3);
                tmp_37_cast_reg_538 <= tmp_37_cast_fu_247_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state18)) then
                bias_load_reg_675 <= bias_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                co_2_reg_523 <= co_2_fu_198_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                h_2_reg_556 <= h_2_fu_261_p2;
                    h_cast_reg_548(3 downto 0) <= h_cast_fu_251_p1(3 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_0 = exitcond_fu_420_p2))) then
                icmp5_reg_630 <= icmp5_fu_466_p2;
                notlhs_reg_640 <= notlhs_fu_481_p2;
                tmp_31_reg_625 <= tmp_31_fu_436_p2;
                tmp_33_reg_635 <= tmp_33_fu_476_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond1_fu_310_p2))) then
                icmp_reg_607 <= icmp_fu_401_p2;
                tmp_17_reg_597 <= tmp_17_fu_353_p2;
                tmp_28_reg_592 <= tmp_28_fu_337_p2;
                    tmp_47_cast_reg_602(12 downto 3) <= tmp_47_cast_fu_383_p3(12 downto 3);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                m_2_reg_587 <= m_2_fu_316_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                n_2_reg_620 <= n_2_fu_426_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state23)) then
                result_reg_680 <= grp_fu_182_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond2_fu_288_p2))) then
                tmp_23_reg_579 <= tmp_23_fu_300_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (exitcond1_fu_310_p2 = ap_const_lv1_1))) then
                tmp_24_reg_612 <= tmp_24_fu_411_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                tmp_25_reg_660 <= tmp_25_fu_508_p3;
                weight_load_reg_655 <= weight_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state12)) then
                tmp_26_reg_665 <= grp_fu_188_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond3_fu_255_p2))) then
                    tmp_40_cast_reg_561(12 downto 3) <= tmp_40_cast_fu_276_p3(12 downto 3);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                w_2_reg_574 <= w_2_fu_294_p2;
                    w_cast_reg_566(3 downto 0) <= w_cast_fu_284_p1(3 downto 0);
            end if;
        end if;
    end process;
    tmp_35_cast2_reg_528(2 downto 0) <= "000";
    tmp_35_cast2_reg_528(9) <= '0';
    tmp_35_cast_reg_533(2 downto 0) <= "000";
    tmp_35_cast_reg_533(9) <= '0';
    h_cast_reg_548(4) <= '0';
    tmp_40_cast_reg_561(2 downto 0) <= "000";
    w_cast_reg_566(4) <= '0';
    tmp_47_cast_reg_602(2 downto 0) <= "000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond4_fu_192_p2, ap_CS_fsm_state3, exitcond3_fu_255_p2, ap_CS_fsm_state4, exitcond2_fu_288_p2, ap_CS_fsm_state5, exitcond1_fu_310_p2, ap_CS_fsm_state6, exitcond_fu_420_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_192_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond3_fu_255_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond2_fu_288_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond1_fu_310_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state18;
                end if;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_1 = exitcond_fu_420_p2))) then
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

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond4_fu_192_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_192_p2 = ap_const_lv1_1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond4_fu_192_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_192_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bias_address0 <= bias_addr_reg_543;

    bias_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            bias_ce0 <= ap_const_logic_1;
        else 
            bias_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    co_2_fu_198_p2 <= std_logic_vector(unsigned(co_reg_101) + unsigned(ap_const_lv6_1));
    exitcond1_fu_310_p2 <= "1" when (m_reg_148 = ap_const_lv2_3) else "0";
    exitcond2_fu_288_p2 <= "1" when (w_reg_124 = ap_const_lv4_8) else "0";
    exitcond3_fu_255_p2 <= "1" when (h_reg_112 = ap_const_lv4_8) else "0";
    exitcond4_fu_192_p2 <= "1" when (co_reg_101 = ap_const_lv6_30) else "0";
    exitcond_fu_420_p2 <= "1" when (n_reg_171 = ap_const_lv2_3) else "0";

    grp_fu_182_p0_assign_proc : process(sum_reg_136, sum_1_reg_159, ap_CS_fsm_state13, ap_CS_fsm_state19)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state19)) then 
            grp_fu_182_p0 <= sum_reg_136;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            grp_fu_182_p0 <= sum_1_reg_159;
        else 
            grp_fu_182_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_182_p1_assign_proc : process(tmp_26_reg_665, bias_load_reg_675, ap_CS_fsm_state13, ap_CS_fsm_state19)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state19)) then 
            grp_fu_182_p1 <= bias_load_reg_675;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            grp_fu_182_p1 <= tmp_26_reg_665;
        else 
            grp_fu_182_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    h_2_fu_261_p2 <= std_logic_vector(unsigned(h_reg_112) + unsigned(ap_const_lv4_1));
    h_cast_fu_251_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_reg_112),5));
    icmp5_fu_466_p2 <= "0" when (tmp_32_fu_456_p4 = ap_const_lv2_1) else "1";
    icmp_fu_401_p2 <= "0" when (tmp_30_fu_391_p4 = ap_const_lv2_1) else "1";
    input_0_address0 <= tmp_49_cast_fu_490_p1(12 - 1 downto 0);

    input_0_ce0_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            input_0_ce0 <= ap_const_logic_1;
        else 
            input_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    m_2_fu_316_p2 <= std_logic_vector(unsigned(m_reg_148) + unsigned(ap_const_lv2_1));
    m_cast_cast_fu_306_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(m_reg_148),3));
    n_2_fu_426_p2 <= std_logic_vector(unsigned(n_reg_171) + unsigned(ap_const_lv2_1));
    n_cast9_fu_416_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(n_reg_171),4));
    notlhs_fu_481_p2 <= "0" when (n_cast9_fu_416_p1 = tmp_23_reg_579) else "1";
    output_0_address0 <= tmp_41_cast_fu_516_p1(12 - 1 downto 0);

    output_0_ce0_assign_proc : process(ap_CS_fsm_state24)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state24)) then 
            output_0_ce0 <= ap_const_logic_1;
        else 
            output_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_0_d0 <= result_reg_680;

    output_0_we0_assign_proc : process(ap_CS_fsm_state24)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state24)) then 
            output_0_we0 <= ap_const_logic_1;
        else 
            output_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    p_shl_cast_fu_237_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_19_fu_229_p3),9));
    sel_tmp2_fu_502_p2 <= (tmp7_fu_498_p2 and tmp6_fu_494_p2);
        tmp4_cast_fu_365_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp4_fu_359_p2),5));

    tmp4_fu_359_p2 <= std_logic_vector(signed(ap_const_lv2_3) + signed(m_reg_148));
        tmp5_cast_fu_447_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp5_fu_441_p2),5));

    tmp5_fu_441_p2 <= std_logic_vector(unsigned(n_reg_171) + unsigned(ap_const_lv2_3));
    tmp6_fu_494_p2 <= (icmp_reg_607 and notlhs_reg_640);
    tmp7_fu_498_p2 <= (tmp_17_reg_597 and icmp5_reg_630);
    tmp_14_cast_fu_407_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_reg_124),13));
    tmp_15_cast_fu_322_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(m_reg_148),10));
    tmp_15_fu_331_p2 <= std_logic_vector(shift_left(unsigned(tmp_27_fu_326_p2),to_integer(unsigned('0' & ap_const_lv10_2(10-1 downto 0)))));
        tmp_16_cast_fu_349_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_16_fu_343_p2),4));

    tmp_16_fu_343_p2 <= std_logic_vector(unsigned(ap_const_lv3_0) - unsigned(m_cast_cast_fu_306_p1));
    tmp_17_fu_353_p2 <= "0" when (h_reg_112 = tmp_16_cast_fu_349_p1) else "1";
    tmp_18_fu_369_p2 <= std_logic_vector(signed(tmp4_cast_fu_365_p1) + signed(h_cast_reg_548));
        tmp_19_cast_fu_374_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_18_fu_369_p2),10));

    tmp_19_fu_229_p3 <= (co_reg_101 & ap_const_lv2_0);
    tmp_20_cast_fu_432_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(n_reg_171),10));
    tmp_20_fu_241_p2 <= std_logic_vector(unsigned(p_shl_cast_fu_237_p1) - unsigned(tmp_cast_fu_209_p1));
    tmp_21_fu_451_p2 <= std_logic_vector(unsigned(w_cast_reg_566) + unsigned(tmp5_cast_fu_447_p1));
    tmp_22_fu_271_p2 <= std_logic_vector(unsigned(tmp_cast_21_fu_267_p1) + unsigned(tmp_35_cast_reg_533));
        tmp_23_cast_fu_472_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_21_fu_451_p2),13));

    tmp_23_fu_300_p2 <= std_logic_vector(unsigned(ap_const_lv4_0) - unsigned(w_reg_124));
    tmp_24_fu_411_p2 <= std_logic_vector(unsigned(tmp_40_cast_reg_561) + unsigned(tmp_14_cast_fu_407_p1));
    tmp_25_fu_508_p3 <= 
        input_0_q0 when (sel_tmp2_fu_502_p2(0) = '1') else 
        ap_const_lv32_0;
    tmp_27_fu_326_p2 <= std_logic_vector(unsigned(tmp_15_cast_fu_322_p1) + unsigned(tmp_37_cast_reg_538));
    tmp_28_fu_337_p2 <= std_logic_vector(unsigned(tmp_15_fu_331_p2) - unsigned(tmp_27_fu_326_p2));
    tmp_29_fu_378_p2 <= std_logic_vector(signed(tmp_19_cast_fu_374_p1) + signed(tmp_35_cast2_reg_528));
    tmp_30_fu_391_p4 <= tmp_18_fu_369_p2(4 downto 3);
    tmp_31_fu_436_p2 <= std_logic_vector(unsigned(tmp_28_reg_592) + unsigned(tmp_20_cast_fu_432_p1));
    tmp_32_fu_456_p4 <= tmp_21_fu_451_p2(4 downto 3);
    tmp_33_fu_476_p2 <= std_logic_vector(unsigned(tmp_47_cast_reg_602) + unsigned(tmp_23_cast_fu_472_p1));
    tmp_35_cast2_fu_221_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_213_p3),10));
    tmp_35_cast_fu_225_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_213_p3),10));
        tmp_37_cast_fu_247_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_20_fu_241_p2),10));

    tmp_40_cast_fu_276_p3 <= (tmp_22_fu_271_p2 & ap_const_lv3_0);
    tmp_41_cast_fu_516_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_24_reg_612),64));
    tmp_47_cast_fu_383_p3 <= (tmp_29_fu_378_p2 & ap_const_lv3_0);
    tmp_48_cast_fu_486_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_31_reg_625),64));
    tmp_49_cast_fu_490_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_33_reg_635),64));
    tmp_cast_21_fu_267_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_reg_112),10));
    tmp_cast_fu_209_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(co_reg_101),9));
    tmp_fu_204_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(co_reg_101),64));
    tmp_s_fu_213_p3 <= (co_reg_101 & ap_const_lv3_0);
    w_2_fu_294_p2 <= std_logic_vector(unsigned(w_reg_124) + unsigned(ap_const_lv4_1));
    w_cast_fu_284_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_reg_124),5));
    weight_address0 <= tmp_48_cast_fu_486_p1(9 - 1 downto 0);

    weight_ce0_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            weight_ce0 <= ap_const_logic_1;
        else 
            weight_ce0 <= ap_const_logic_0;
        end if; 
    end process;

end behav;
