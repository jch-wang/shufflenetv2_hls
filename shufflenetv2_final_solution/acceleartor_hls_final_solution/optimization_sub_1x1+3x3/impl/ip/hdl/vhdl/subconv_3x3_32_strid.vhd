-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity subconv_3x3_32_strid is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    weight_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    weight_V_ce0 : OUT STD_LOGIC;
    weight_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    bias_V_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    bias_V_ce0 : OUT STD_LOGIC;
    bias_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    output_V_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    output_V_ce0 : OUT STD_LOGIC;
    output_V_we0 : OUT STD_LOGIC;
    output_V_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    conv1_output_p_V_address0 : OUT STD_LOGIC_VECTOR (14 downto 0);
    conv1_output_p_V_ce0 : OUT STD_LOGIC;
    conv1_output_p_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of subconv_3x3_32_strid is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv5_18 : STD_LOGIC_VECTOR (4 downto 0) := "11000";
    constant ap_const_lv5_11 : STD_LOGIC_VECTOR (4 downto 0) := "10001";
    constant ap_const_lv9_2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_100_cast_fu_212_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_100_cast_reg_520 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_86_fu_244_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_86_reg_525 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_88_fu_262_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_88_reg_530 : STD_LOGIC_VECTOR (10 downto 0);
    signal co_4_fu_274_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal co_4_reg_538 : STD_LOGIC_VECTOR (4 downto 0);
    signal bias_V_addr_reg_543 : STD_LOGIC_VECTOR (4 downto 0);
    signal exitcond4_fu_268_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_90_fu_309_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_90_reg_548 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_fu_321_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_reg_556 : STD_LOGIC_VECTOR (5 downto 0);
    signal exitcond5_fu_315_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal output_V_addr_reg_561 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp_s_fu_349_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_s_reg_569 : STD_LOGIC_VECTOR (5 downto 0);
    signal exitcond6_fu_343_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal h_4_fu_357_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_93_fu_378_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_93_reg_579 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal m_4_fu_390_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal m_4_reg_587 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_95_fu_440_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_95_reg_592 : STD_LOGIC_VECTOR (15 downto 0);
    signal exitcond7_fu_384_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal w_4_fu_446_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal w_4_reg_597 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal n_4_fu_472_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal n_4_reg_610 : STD_LOGIC_VECTOR (1 downto 0);
    signal exitcond_fu_466_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal weight_V_load_reg_620 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal conv1_output_p_V_loa_reg_625 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_514_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal co_reg_104 : STD_LOGIC_VECTOR (4 downto 0);
    signal h_reg_115 : STD_LOGIC_VECTOR (4 downto 0);
    signal w_reg_127 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal p_s_reg_139 : STD_LOGIC_VECTOR (7 downto 0);
    signal m_reg_151 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_09_1_reg_162 : STD_LOGIC_VECTOR (7 downto 0);
    signal n_reg_174 : STD_LOGIC_VECTOR (1 downto 0);
    signal co_cast7_fu_185_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_111_cast_fu_338_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_119_cast_fu_461_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_120_cast_fu_502_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_82_fu_194_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_shl4_cast_fu_202_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal co_cast7_cast_fu_190_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_83_fu_206_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_84_fu_216_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_85_fu_228_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_shl3_cast_fu_240_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_shl2_cast_fu_224_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_87_fu_250_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_shl3_cast1_fu_236_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_shl_cast_fu_258_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal h_cast6_cast_fu_280_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_89_fu_284_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_29_fu_297_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_shl5_cast_fu_289_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_shl6_cast_fu_305_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal w_cast5_cast_fu_329_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_91_fu_333_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal m_cast4_cast_fu_363_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_92_fu_367_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_30_fu_372_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp1_fu_396_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp1_cast_fu_402_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_8_fu_406_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_8_cast_cast_fu_411_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_94_fu_415_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_31_fu_428_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_shl8_cast_fu_420_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_shl9_cast_fu_436_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal n_cast3_cast_fu_452_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_96_fu_456_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp2_fu_478_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp2_cast_fu_484_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_3_fu_488_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_3_cast_cast_fu_493_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_97_fu_497_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);

    component ShuffleNetV2_mac_cud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (7 downto 0);
        dout : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    ShuffleNetV2_mac_cud_x_U168 : component ShuffleNetV2_mac_cud
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 8,
        dout_WIDTH => 8)
    port map (
        din0 => weight_V_load_reg_620,
        din1 => conv1_output_p_V_loa_reg_625,
        din2 => p_09_1_reg_162,
        dout => grp_fu_514_p3);





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


    co_reg_104_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond5_fu_315_p2 = ap_const_lv1_1))) then 
                co_reg_104 <= co_4_reg_538;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                co_reg_104 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    h_reg_115_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_268_p2 = ap_const_lv1_0))) then 
                h_reg_115 <= ap_const_lv5_1;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond6_fu_343_p2 = ap_const_lv1_1))) then 
                h_reg_115 <= h_4_fu_357_p2;
            end if; 
        end if;
    end process;

    m_reg_151_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_1 = exitcond_fu_466_p2))) then 
                m_reg_151 <= m_4_reg_587;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond6_fu_343_p2))) then 
                m_reg_151 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    n_reg_174_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond7_fu_384_p2))) then 
                n_reg_174 <= ap_const_lv2_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                n_reg_174 <= n_4_reg_610;
            end if; 
        end if;
    end process;

    p_09_1_reg_162_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond7_fu_384_p2))) then 
                p_09_1_reg_162 <= p_s_reg_139;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                p_09_1_reg_162 <= grp_fu_514_p3;
            end if; 
        end if;
    end process;

    p_s_reg_139_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_1 = exitcond_fu_466_p2))) then 
                p_s_reg_139 <= p_09_1_reg_162;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond6_fu_343_p2))) then 
                p_s_reg_139 <= ap_const_lv8_0;
            end if; 
        end if;
    end process;

    w_reg_127_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond5_fu_315_p2))) then 
                w_reg_127 <= ap_const_lv5_1;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                w_reg_127 <= w_4_reg_597;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_268_p2 = ap_const_lv1_0))) then
                bias_V_addr_reg_543 <= co_cast7_fu_185_p1(5 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                co_4_reg_538 <= co_4_fu_274_p2;
                tmp_100_cast_reg_520 <= tmp_100_cast_fu_212_p1;
                    tmp_86_reg_525(9 downto 1) <= tmp_86_fu_244_p2(9 downto 1);
                    tmp_88_reg_530(10 downto 1) <= tmp_88_fu_262_p2(10 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                conv1_output_p_V_loa_reg_625 <= conv1_output_p_V_q0;
                weight_V_load_reg_620 <= weight_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                m_4_reg_587 <= m_4_fu_390_p2;
                tmp_93_reg_579 <= tmp_93_fu_378_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                n_4_reg_610 <= n_4_fu_472_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                output_V_addr_reg_561 <= tmp_111_cast_fu_338_p1(13 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                    tmp_90_reg_548(13 downto 1) <= tmp_90_fu_309_p2(13 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond7_fu_384_p2))) then
                    tmp_95_reg_592(15 downto 1) <= tmp_95_fu_440_p2(15 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond5_fu_315_p2))) then
                    tmp_reg_556(5 downto 1) <= tmp_fu_321_p3(5 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond6_fu_343_p2))) then
                    tmp_s_reg_569(5 downto 1) <= tmp_s_fu_349_p3(5 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_1 = exitcond7_fu_384_p2))) then
                w_4_reg_597 <= w_4_fu_446_p2;
            end if;
        end if;
    end process;
    tmp_86_reg_525(0) <= '0';
    tmp_88_reg_530(0) <= '0';
    tmp_90_reg_548(0) <= '0';
    tmp_reg_556(0) <= '0';
    tmp_s_reg_569(0) <= '0';
    tmp_95_reg_592(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond4_fu_268_p2, ap_CS_fsm_state3, exitcond5_fu_315_p2, ap_CS_fsm_state4, exitcond6_fu_343_p2, ap_CS_fsm_state5, exitcond7_fu_384_p2, ap_CS_fsm_state6, exitcond_fu_466_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_268_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond5_fu_315_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond6_fu_343_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond7_fu_384_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state9;
                end if;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_1 = exitcond_fu_466_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond4_fu_268_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_268_p2 = ap_const_lv1_1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond4_fu_268_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_268_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bias_V_address0 <= bias_V_addr_reg_543;

    bias_V_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            bias_V_ce0 <= ap_const_logic_1;
        else 
            bias_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    co_4_fu_274_p2 <= std_logic_vector(unsigned(co_reg_104) + unsigned(ap_const_lv5_1));
    co_cast7_cast_fu_190_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(co_reg_104),8));
    co_cast7_fu_185_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(co_reg_104),32));
    conv1_output_p_V_address0 <= tmp_120_cast_fu_502_p1(15 - 1 downto 0);

    conv1_output_p_V_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            conv1_output_p_V_ce0 <= ap_const_logic_1;
        else 
            conv1_output_p_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond4_fu_268_p2 <= "1" when (co_reg_104 = ap_const_lv5_18) else "0";
    exitcond5_fu_315_p2 <= "1" when (h_reg_115 = ap_const_lv5_11) else "0";
    exitcond6_fu_343_p2 <= "1" when (w_reg_127 = ap_const_lv5_11) else "0";
    exitcond7_fu_384_p2 <= "1" when (m_reg_151 = ap_const_lv2_3) else "0";
    exitcond_fu_466_p2 <= "1" when (n_reg_174 = ap_const_lv2_3) else "0";
    h_4_fu_357_p2 <= std_logic_vector(unsigned(h_reg_115) + unsigned(ap_const_lv5_1));
    h_cast6_cast_fu_280_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_reg_115),10));
    m_4_fu_390_p2 <= std_logic_vector(unsigned(ap_const_lv2_1) + unsigned(m_reg_151));
    m_cast4_cast_fu_363_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(m_reg_151),9));
    n_4_fu_472_p2 <= std_logic_vector(unsigned(n_reg_174) + unsigned(ap_const_lv2_1));
    n_cast3_cast_fu_452_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(n_reg_174),9));
    output_V_address0 <= output_V_addr_reg_561;

    output_V_ce0_assign_proc : process(ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            output_V_ce0 <= ap_const_logic_1;
        else 
            output_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_V_d0 <= std_logic_vector(unsigned(bias_V_q0) + unsigned(p_s_reg_139));

    output_V_we0_assign_proc : process(ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            output_V_we0 <= ap_const_logic_1;
        else 
            output_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    p_shl2_cast_fu_224_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_84_fu_216_p3),10));
    p_shl3_cast1_fu_236_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_85_fu_228_p3),11));
    p_shl3_cast_fu_240_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_85_fu_228_p3),10));
    p_shl4_cast_fu_202_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_82_fu_194_p3),8));
    p_shl5_cast_fu_289_p3 <= (tmp_89_fu_284_p2 & ap_const_lv4_0);
    p_shl6_cast_fu_305_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_29_fu_297_p3),14));
    p_shl8_cast_fu_420_p3 <= (tmp_94_fu_415_p2 & ap_const_lv5_0);
    p_shl9_cast_fu_436_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_31_fu_428_p3),16));
    p_shl_cast_fu_258_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_87_fu_250_p3),11));
        tmp1_cast_fu_402_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp1_fu_396_p2),6));

    tmp1_fu_396_p2 <= (m_reg_151 xor ap_const_lv2_2);
        tmp2_cast_fu_484_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp2_fu_478_p2),6));

    tmp2_fu_478_p2 <= (n_reg_174 xor ap_const_lv2_2);
        tmp_100_cast_fu_212_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_83_fu_206_p2),9));

    tmp_111_cast_fu_338_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_91_fu_333_p2),32));
    tmp_119_cast_fu_461_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_96_fu_456_p2),32));
    tmp_120_cast_fu_502_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_97_fu_497_p2),32));
    tmp_29_fu_297_p3 <= (tmp_89_fu_284_p2 & ap_const_lv1_0);
    tmp_30_fu_372_p2 <= std_logic_vector(shift_left(unsigned(tmp_92_fu_367_p2),to_integer(unsigned('0' & ap_const_lv9_2(9-1 downto 0)))));
    tmp_31_fu_428_p3 <= (tmp_94_fu_415_p2 & ap_const_lv1_0);
    tmp_3_cast_cast_fu_493_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_3_fu_488_p2),16));
    tmp_3_fu_488_p2 <= std_logic_vector(unsigned(tmp_s_reg_569) + unsigned(tmp2_cast_fu_484_p1));
    tmp_82_fu_194_p3 <= (co_reg_104 & ap_const_lv2_0);
    tmp_83_fu_206_p2 <= std_logic_vector(unsigned(p_shl4_cast_fu_202_p1) - unsigned(co_cast7_cast_fu_190_p1));
    tmp_84_fu_216_p3 <= (co_reg_104 & ap_const_lv4_0);
    tmp_85_fu_228_p3 <= (co_reg_104 & ap_const_lv1_0);
    tmp_86_fu_244_p2 <= std_logic_vector(unsigned(p_shl3_cast_fu_240_p1) + unsigned(p_shl2_cast_fu_224_p1));
    tmp_87_fu_250_p3 <= (co_reg_104 & ap_const_lv5_0);
    tmp_88_fu_262_p2 <= std_logic_vector(unsigned(p_shl3_cast1_fu_236_p1) + unsigned(p_shl_cast_fu_258_p1));
    tmp_89_fu_284_p2 <= std_logic_vector(unsigned(h_cast6_cast_fu_280_p1) + unsigned(tmp_86_reg_525));
    tmp_8_cast_cast_fu_411_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_8_fu_406_p2),11));
    tmp_8_fu_406_p2 <= std_logic_vector(signed(tmp1_cast_fu_402_p1) + signed(tmp_reg_556));
    tmp_90_fu_309_p2 <= std_logic_vector(unsigned(p_shl5_cast_fu_289_p3) + unsigned(p_shl6_cast_fu_305_p1));
    tmp_91_fu_333_p2 <= std_logic_vector(unsigned(tmp_90_reg_548) + unsigned(w_cast5_cast_fu_329_p1));
    tmp_92_fu_367_p2 <= std_logic_vector(unsigned(m_cast4_cast_fu_363_p1) + unsigned(tmp_100_cast_reg_520));
    tmp_93_fu_378_p2 <= std_logic_vector(unsigned(tmp_30_fu_372_p2) - unsigned(tmp_92_fu_367_p2));
    tmp_94_fu_415_p2 <= std_logic_vector(unsigned(tmp_8_cast_cast_fu_411_p1) + unsigned(tmp_88_reg_530));
    tmp_95_fu_440_p2 <= std_logic_vector(unsigned(p_shl8_cast_fu_420_p3) + unsigned(p_shl9_cast_fu_436_p1));
    tmp_96_fu_456_p2 <= std_logic_vector(unsigned(tmp_93_reg_579) + unsigned(n_cast3_cast_fu_452_p1));
    tmp_97_fu_497_p2 <= std_logic_vector(unsigned(tmp_95_reg_592) + unsigned(tmp_3_cast_cast_fu_493_p1));
    tmp_fu_321_p3 <= (h_reg_115 & ap_const_lv1_0);
    tmp_s_fu_349_p3 <= (w_reg_127 & ap_const_lv1_0);
    w_4_fu_446_p2 <= std_logic_vector(unsigned(w_reg_127) + unsigned(ap_const_lv5_1));
    w_cast5_cast_fu_329_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_reg_127),14));
    weight_V_address0 <= tmp_119_cast_fu_461_p1(8 - 1 downto 0);

    weight_V_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            weight_V_ce0 <= ap_const_logic_1;
        else 
            weight_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

end behav;
