-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity subconv_3x3_8_stride_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    weight_V_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    weight_V_ce0 : OUT STD_LOGIC;
    weight_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    bias_V_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    bias_V_ce0 : OUT STD_LOGIC;
    bias_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    output_V_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    output_V_ce0 : OUT STD_LOGIC;
    output_V_we0 : OUT STD_LOGIC;
    output_V_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    shuffleunit1_7_outpu_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    shuffleunit1_7_outpu_ce0 : OUT STD_LOGIC;
    shuffleunit1_7_outpu_q0 : IN STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of subconv_3x3_8_stride_1 is 
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
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv7_60 : STD_LOGIC_VECTOR (6 downto 0) := "1100000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv11_2 : STD_LOGIC_VECTOR (10 downto 0) := "00000000010";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_3_cast_fu_214_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_3_cast_reg_514 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_7_cast_fu_248_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_7_cast_reg_519 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_s_fu_252_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_s_reg_524 : STD_LOGIC_VECTOR (10 downto 0);
    signal co_1_fu_264_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal co_1_reg_532 : STD_LOGIC_VECTOR (6 downto 0);
    signal bias_V_addr_reg_537 : STD_LOGIC_VECTOR (6 downto 0);
    signal exitcond1_fu_258_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_12_fu_299_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_12_reg_542 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_fu_311_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_reg_550 : STD_LOGIC_VECTOR (3 downto 0);
    signal exitcond2_fu_305_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal output_V_addr_reg_555 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp_2_fu_339_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_2_reg_563 : STD_LOGIC_VECTOR (3 downto 0);
    signal exitcond3_fu_333_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal h_1_fu_347_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_16_fu_368_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_16_reg_573 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal m_1_fu_380_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal m_1_reg_581 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_20_fu_434_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_20_reg_586 : STD_LOGIC_VECTOR (14 downto 0);
    signal exitcond4_fu_374_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal w_1_fu_440_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal w_1_reg_591 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal n_1_fu_466_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal n_1_reg_604 : STD_LOGIC_VECTOR (1 downto 0);
    signal exitcond_fu_460_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal weight_V_load_reg_614 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal shuffleunit1_7_outpu_1_reg_619 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_508_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal co_reg_106 : STD_LOGIC_VECTOR (6 downto 0);
    signal h_reg_117 : STD_LOGIC_VECTOR (2 downto 0);
    signal w_reg_129 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal p_s_reg_141 : STD_LOGIC_VECTOR (7 downto 0);
    signal m_reg_153 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_09_1_reg_164 : STD_LOGIC_VECTOR (7 downto 0);
    signal n_reg_176 : STD_LOGIC_VECTOR (1 downto 0);
    signal co_cast7_fu_187_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_17_cast_fu_328_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_25_cast_fu_455_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_26_cast_fu_496_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_1_fu_196_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_shl4_cast_fu_204_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal co_cast7_cast_fu_192_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_3_fu_208_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_4_fu_218_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_6_fu_230_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_shl2_cast_fu_226_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_shl3_cast_fu_238_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_7_fu_242_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal h_cast6_cast_fu_270_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_10_fu_274_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_11_fu_279_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_shl5_cast_fu_283_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_shl6_cast_fu_291_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal w_cast5_cast_fu_319_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_13_fu_323_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal m_cast4_cast_fu_353_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_14_fu_357_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_15_fu_362_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp1_fu_386_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp1_cast_fu_392_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_5_fu_396_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_5_cast_cast_fu_401_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_17_fu_405_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_18_fu_410_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_19_fu_422_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_shl8_cast_fu_418_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_shl9_cast_fu_430_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal n_cast3_cast_fu_446_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_21_fu_450_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp2_fu_472_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp2_cast_fu_478_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_8_fu_482_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_8_cast_cast_fu_487_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_22_fu_491_p2 : STD_LOGIC_VECTOR (14 downto 0);
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
    ShuffleNetV2_mac_cud_x_U1304 : component ShuffleNetV2_mac_cud
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 8,
        dout_WIDTH => 8)
    port map (
        din0 => weight_V_load_reg_614,
        din1 => shuffleunit1_7_outpu_1_reg_619,
        din2 => p_09_1_reg_164,
        dout => grp_fu_508_p3);





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


    co_reg_106_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond2_fu_305_p2 = ap_const_lv1_1))) then 
                co_reg_106 <= co_1_reg_532;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                co_reg_106 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    h_reg_117_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_258_p2 = ap_const_lv1_0))) then 
                h_reg_117 <= ap_const_lv3_1;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond3_fu_333_p2 = ap_const_lv1_1))) then 
                h_reg_117 <= h_1_fu_347_p2;
            end if; 
        end if;
    end process;

    m_reg_153_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_1 = exitcond_fu_460_p2))) then 
                m_reg_153 <= m_1_reg_581;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond3_fu_333_p2))) then 
                m_reg_153 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    n_reg_176_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond4_fu_374_p2))) then 
                n_reg_176 <= ap_const_lv2_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                n_reg_176 <= n_1_reg_604;
            end if; 
        end if;
    end process;

    p_09_1_reg_164_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond4_fu_374_p2))) then 
                p_09_1_reg_164 <= p_s_reg_141;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                p_09_1_reg_164 <= grp_fu_508_p3;
            end if; 
        end if;
    end process;

    p_s_reg_141_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_1 = exitcond_fu_460_p2))) then 
                p_s_reg_141 <= p_09_1_reg_164;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond3_fu_333_p2))) then 
                p_s_reg_141 <= ap_const_lv8_0;
            end if; 
        end if;
    end process;

    w_reg_129_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond2_fu_305_p2))) then 
                w_reg_129 <= ap_const_lv3_1;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                w_reg_129 <= w_1_reg_591;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_258_p2 = ap_const_lv1_0))) then
                bias_V_addr_reg_537 <= co_cast7_fu_187_p1(7 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                co_1_reg_532 <= co_1_fu_264_p2;
                tmp_3_cast_reg_514 <= tmp_3_cast_fu_214_p1;
                    tmp_7_cast_reg_519(11 downto 1) <= tmp_7_cast_fu_248_p1(11 downto 1);
                    tmp_s_reg_524(10 downto 1) <= tmp_s_fu_252_p2(10 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                m_1_reg_581 <= m_1_fu_380_p2;
                tmp_16_reg_573 <= tmp_16_fu_368_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                n_1_reg_604 <= n_1_fu_466_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                output_V_addr_reg_555 <= tmp_17_cast_fu_328_p1(12 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                shuffleunit1_7_outpu_1_reg_619 <= shuffleunit1_7_outpu_q0;
                weight_V_load_reg_614 <= weight_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                    tmp_12_reg_542(12 downto 1) <= tmp_12_fu_299_p2(12 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond4_fu_374_p2))) then
                    tmp_20_reg_586(14 downto 1) <= tmp_20_fu_434_p2(14 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond3_fu_333_p2))) then
                    tmp_2_reg_563(3 downto 1) <= tmp_2_fu_339_p3(3 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond2_fu_305_p2))) then
                    tmp_reg_550(3 downto 1) <= tmp_fu_311_p3(3 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_1 = exitcond4_fu_374_p2))) then
                w_1_reg_591 <= w_1_fu_440_p2;
            end if;
        end if;
    end process;
    tmp_7_cast_reg_519(0) <= '0';
    tmp_s_reg_524(0) <= '0';
    tmp_12_reg_542(0) <= '0';
    tmp_reg_550(0) <= '0';
    tmp_2_reg_563(0) <= '0';
    tmp_20_reg_586(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond1_fu_258_p2, ap_CS_fsm_state3, exitcond2_fu_305_p2, ap_CS_fsm_state4, exitcond3_fu_333_p2, ap_CS_fsm_state5, exitcond4_fu_374_p2, ap_CS_fsm_state6, exitcond_fu_460_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_258_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond2_fu_305_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond3_fu_333_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond4_fu_374_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state9;
                end if;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_1 = exitcond_fu_460_p2))) then
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

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond1_fu_258_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_258_p2 = ap_const_lv1_1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond1_fu_258_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_258_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bias_V_address0 <= bias_V_addr_reg_537;

    bias_V_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            bias_V_ce0 <= ap_const_logic_1;
        else 
            bias_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    co_1_fu_264_p2 <= std_logic_vector(unsigned(co_reg_106) + unsigned(ap_const_lv7_1));
    co_cast7_cast_fu_192_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(co_reg_106),10));
    co_cast7_fu_187_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(co_reg_106),32));
    exitcond1_fu_258_p2 <= "1" when (co_reg_106 = ap_const_lv7_60) else "0";
    exitcond2_fu_305_p2 <= "1" when (h_reg_117 = ap_const_lv3_5) else "0";
    exitcond3_fu_333_p2 <= "1" when (w_reg_129 = ap_const_lv3_5) else "0";
    exitcond4_fu_374_p2 <= "1" when (m_reg_153 = ap_const_lv2_3) else "0";
    exitcond_fu_460_p2 <= "1" when (n_reg_176 = ap_const_lv2_3) else "0";
    h_1_fu_347_p2 <= std_logic_vector(unsigned(h_reg_117) + unsigned(ap_const_lv3_1));
    h_cast6_cast_fu_270_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_reg_117),12));
    m_1_fu_380_p2 <= std_logic_vector(unsigned(ap_const_lv2_1) + unsigned(m_reg_153));
    m_cast4_cast_fu_353_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(m_reg_153),11));
    n_1_fu_466_p2 <= std_logic_vector(unsigned(n_reg_176) + unsigned(ap_const_lv2_1));
    n_cast3_cast_fu_446_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(n_reg_176),11));
    output_V_address0 <= output_V_addr_reg_555;

    output_V_ce0_assign_proc : process(ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            output_V_ce0 <= ap_const_logic_1;
        else 
            output_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_V_d0 <= std_logic_vector(unsigned(bias_V_q0) + unsigned(p_s_reg_141));

    output_V_we0_assign_proc : process(ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            output_V_we0 <= ap_const_logic_1;
        else 
            output_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    p_shl2_cast_fu_226_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_4_fu_218_p3),11));
    p_shl3_cast_fu_238_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_6_fu_230_p3),11));
    p_shl4_cast_fu_204_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_196_p3),10));
    p_shl5_cast_fu_283_p3 <= (tmp_11_fu_279_p1 & ap_const_lv3_0);
    p_shl6_cast_fu_291_p3 <= (tmp_10_fu_274_p2 & ap_const_lv1_0);
    p_shl8_cast_fu_418_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_18_fu_410_p3),15));
    p_shl9_cast_fu_430_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_19_fu_422_p3),15));
    shuffleunit1_7_outpu_address0 <= tmp_26_cast_fu_496_p1(14 - 1 downto 0);

    shuffleunit1_7_outpu_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            shuffleunit1_7_outpu_ce0 <= ap_const_logic_1;
        else 
            shuffleunit1_7_outpu_ce0 <= ap_const_logic_0;
        end if; 
    end process;

        tmp1_cast_fu_392_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp1_fu_386_p2),4));

    tmp1_fu_386_p2 <= (m_reg_153 xor ap_const_lv2_2);
        tmp2_cast_fu_478_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp2_fu_472_p2),4));

    tmp2_fu_472_p2 <= (n_reg_176 xor ap_const_lv2_2);
    tmp_10_fu_274_p2 <= std_logic_vector(unsigned(h_cast6_cast_fu_270_p1) + unsigned(tmp_7_cast_reg_519));
    tmp_11_fu_279_p1 <= tmp_10_fu_274_p2(10 - 1 downto 0);
    tmp_12_fu_299_p2 <= std_logic_vector(unsigned(p_shl5_cast_fu_283_p3) - unsigned(p_shl6_cast_fu_291_p3));
    tmp_13_fu_323_p2 <= std_logic_vector(unsigned(tmp_12_reg_542) + unsigned(w_cast5_cast_fu_319_p1));
    tmp_14_fu_357_p2 <= std_logic_vector(unsigned(m_cast4_cast_fu_353_p1) + unsigned(tmp_3_cast_reg_514));
    tmp_15_fu_362_p2 <= std_logic_vector(shift_left(unsigned(tmp_14_fu_357_p2),to_integer(unsigned('0' & ap_const_lv11_2(11-1 downto 0)))));
    tmp_16_fu_368_p2 <= std_logic_vector(unsigned(tmp_15_fu_362_p2) - unsigned(tmp_14_fu_357_p2));
    tmp_17_cast_fu_328_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_13_fu_323_p2),32));
    tmp_17_fu_405_p2 <= std_logic_vector(unsigned(tmp_5_cast_cast_fu_401_p1) + unsigned(tmp_s_reg_524));
    tmp_18_fu_410_p3 <= (tmp_17_fu_405_p2 & ap_const_lv3_0);
    tmp_19_fu_422_p3 <= (tmp_17_fu_405_p2 & ap_const_lv1_0);
    tmp_1_fu_196_p3 <= (co_reg_106 & ap_const_lv2_0);
    tmp_20_fu_434_p2 <= std_logic_vector(unsigned(p_shl8_cast_fu_418_p1) + unsigned(p_shl9_cast_fu_430_p1));
    tmp_21_fu_450_p2 <= std_logic_vector(unsigned(tmp_16_reg_573) + unsigned(n_cast3_cast_fu_446_p1));
    tmp_22_fu_491_p2 <= std_logic_vector(unsigned(tmp_20_reg_586) + unsigned(tmp_8_cast_cast_fu_487_p1));
    tmp_25_cast_fu_455_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_21_fu_450_p2),32));
    tmp_26_cast_fu_496_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_22_fu_491_p2),32));
    tmp_2_fu_339_p3 <= (w_reg_129 & ap_const_lv1_0);
        tmp_3_cast_fu_214_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_3_fu_208_p2),11));

    tmp_3_fu_208_p2 <= std_logic_vector(unsigned(p_shl4_cast_fu_204_p1) - unsigned(co_cast7_cast_fu_192_p1));
    tmp_4_fu_218_p3 <= (co_reg_106 & ap_const_lv3_0);
    tmp_5_cast_cast_fu_401_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_5_fu_396_p2),11));
    tmp_5_fu_396_p2 <= std_logic_vector(signed(tmp1_cast_fu_392_p1) + signed(tmp_reg_550));
    tmp_6_fu_230_p3 <= (co_reg_106 & ap_const_lv1_0);
        tmp_7_cast_fu_248_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_7_fu_242_p2),12));

    tmp_7_fu_242_p2 <= std_logic_vector(unsigned(p_shl2_cast_fu_226_p1) - unsigned(p_shl3_cast_fu_238_p1));
    tmp_8_cast_cast_fu_487_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_8_fu_482_p2),15));
    tmp_8_fu_482_p2 <= std_logic_vector(unsigned(tmp_2_reg_563) + unsigned(tmp2_cast_fu_478_p1));
    tmp_fu_311_p3 <= (h_reg_117 & ap_const_lv1_0);
    tmp_s_fu_252_p2 <= std_logic_vector(unsigned(p_shl3_cast_fu_238_p1) + unsigned(p_shl2_cast_fu_226_p1));
    w_1_fu_440_p2 <= std_logic_vector(unsigned(w_reg_129) + unsigned(ap_const_lv3_1));
    w_cast5_cast_fu_319_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_reg_129),13));
    weight_V_address0 <= tmp_25_cast_fu_455_p1(10 - 1 downto 0);

    weight_V_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            weight_V_ce0 <= ap_const_logic_1;
        else 
            weight_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

end behav;
