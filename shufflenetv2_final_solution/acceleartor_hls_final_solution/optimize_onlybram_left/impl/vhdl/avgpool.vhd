-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity avgpool is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    output_V_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    output_V_ce0 : OUT STD_LOGIC;
    output_V_we0 : OUT STD_LOGIC;
    output_V_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    conv_last_output_V_0_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    conv_last_output_V_0_ce0 : OUT STD_LOGIC;
    conv_last_output_V_0_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    conv_last_output_V_1_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    conv_last_output_V_1_ce0 : OUT STD_LOGIC;
    conv_last_output_V_1_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    conv_last_output_V_2_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    conv_last_output_V_2_ce0 : OUT STD_LOGIC;
    conv_last_output_V_2_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    conv_last_output_V_3_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    conv_last_output_V_3_ce0 : OUT STD_LOGIC;
    conv_last_output_V_3_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    conv_last_output_V_4_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    conv_last_output_V_4_ce0 : OUT STD_LOGIC;
    conv_last_output_V_4_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    conv_last_output_V_5_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    conv_last_output_V_5_ce0 : OUT STD_LOGIC;
    conv_last_output_V_5_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    conv_last_output_V_6_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    conv_last_output_V_6_ce0 : OUT STD_LOGIC;
    conv_last_output_V_6_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    conv_last_output_V_7_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    conv_last_output_V_7_ce0 : OUT STD_LOGIC;
    conv_last_output_V_7_q0 : IN STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of avgpool is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv10_200 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv8_7F : STD_LOGIC_VECTOR (7 downto 0) := "01111111";
    constant ap_const_lv8_80 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal co_cast4_fu_243_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal co_cast4_reg_518 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal co_34_fu_253_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal co_34_reg_526 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_2251_fu_259_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_2251_reg_531 : STD_LOGIC_VECTOR (2 downto 0);
    signal exitcond35_fu_247_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_763_cast_fu_281_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_763_cast_reg_536 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_766_cast_fu_294_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_766_cast_reg_541 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal h_35_fu_308_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal h_35_reg_549 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_625_reg_554 : STD_LOGIC_VECTOR (4 downto 0);
    signal exitcond34_fu_302_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal w_45_fu_361_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal w_45_reg_602 : STD_LOGIC_VECTOR (2 downto 0);
    signal isneg_reg_607 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal p_Val2_64_fu_410_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Val2_64_reg_614 : STD_LOGIC_VECTOR (7 downto 0);
    signal newsignbit_reg_620 : STD_LOGIC_VECTOR (0 downto 0);
    signal sum_V_fu_462_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal co_reg_186 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal p_Val2_s_reg_197 : STD_LOGIC_VECTOR (7 downto 0);
    signal exitcond_fu_355_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal h_reg_209 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_Val2_61_reg_220 : STD_LOGIC_VECTOR (7 downto 0);
    signal w_reg_232 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_768_cast_fu_343_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal newIndex_fu_263_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_fu_273_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal h_cast3_cast_fu_285_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_s_fu_289_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_tr_fu_314_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_neg_fu_318_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal w_cast2_cast_fu_334_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_626_fu_338_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_Val2_62_fu_371_p10 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_141_fu_392_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_140_fu_367_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_Val2_63_fu_396_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_143_fu_424_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal isneg_not_fu_438_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge_i_i_i_fu_434_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal underflow_fu_429_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge_fu_443_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_198_mux_fu_448_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Val2_1_fu_455_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_lshr_cast_fu_478_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_73_fu_487_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_74_fu_497_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_2252_fu_470_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_neg_t_fu_481_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_lshr_f_cast_fu_501_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_75_fu_505_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);

    component ShuffleNetV2_mux_Rg6 IS
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
        din9 : IN STD_LOGIC_VECTOR (2 downto 0);
        dout : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    ShuffleNetV2_mux_Rg6_x_U806 : component ShuffleNetV2_mux_Rg6
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
        din9_WIDTH => 3,
        dout_WIDTH => 8)
    port map (
        din1 => conv_last_output_V_0_q0,
        din2 => conv_last_output_V_1_q0,
        din3 => conv_last_output_V_2_q0,
        din4 => conv_last_output_V_3_q0,
        din5 => conv_last_output_V_4_q0,
        din6 => conv_last_output_V_5_q0,
        din7 => conv_last_output_V_6_q0,
        din8 => conv_last_output_V_7_q0,
        din9 => tmp_2251_reg_531,
        dout => p_Val2_62_fu_371_p10);





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


    co_reg_186_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                co_reg_186 <= co_34_reg_526;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                co_reg_186 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;

    h_reg_209_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_1 = exitcond_fu_355_p2))) then 
                h_reg_209 <= h_35_reg_549;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond35_fu_247_p2 = ap_const_lv1_0))) then 
                h_reg_209 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    p_Val2_61_reg_220_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond34_fu_302_p2))) then 
                p_Val2_61_reg_220 <= p_Val2_s_reg_197;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                p_Val2_61_reg_220 <= sum_V_fu_462_p3;
            end if; 
        end if;
    end process;

    p_Val2_s_reg_197_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_1 = exitcond_fu_355_p2))) then 
                p_Val2_s_reg_197 <= p_Val2_61_reg_220;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond35_fu_247_p2 = ap_const_lv1_0))) then 
                p_Val2_s_reg_197 <= ap_const_lv8_0;
            end if; 
        end if;
    end process;

    w_reg_232_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond34_fu_302_p2))) then 
                w_reg_232 <= ap_const_lv3_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                w_reg_232 <= w_45_reg_602;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                co_34_reg_526 <= co_34_fu_253_p2;
                    co_cast4_reg_518(9 downto 0) <= co_cast4_fu_243_p1(9 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                h_35_reg_549 <= h_35_fu_308_p2;
                    tmp_766_cast_reg_541(11 downto 2) <= tmp_766_cast_fu_294_p3(11 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                isneg_reg_607 <= p_Val2_63_fu_396_p2(8 downto 8);
                newsignbit_reg_620 <= p_Val2_64_fu_410_p2(7 downto 7);
                p_Val2_64_reg_614 <= p_Val2_64_fu_410_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond35_fu_247_p2 = ap_const_lv1_0))) then
                tmp_2251_reg_531 <= tmp_2251_fu_259_p1;
                    tmp_763_cast_reg_536(8 downto 2) <= tmp_763_cast_fu_281_p1(8 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond34_fu_302_p2 = ap_const_lv1_1))) then
                tmp_625_reg_554 <= p_neg_fu_318_p2(8 downto 4);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                w_45_reg_602 <= w_45_fu_361_p2;
            end if;
        end if;
    end process;
    co_cast4_reg_518(31 downto 10) <= "0000000000000000000000";
    tmp_763_cast_reg_536(1 downto 0) <= "00";
    tmp_763_cast_reg_536(9) <= '0';
    tmp_766_cast_reg_541(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond35_fu_247_p2, ap_CS_fsm_state3, exitcond34_fu_302_p2, ap_CS_fsm_state4, exitcond_fu_355_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond35_fu_247_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond34_fu_302_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_1 = exitcond_fu_355_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond35_fu_247_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond35_fu_247_p2 = ap_const_lv1_1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond35_fu_247_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond35_fu_247_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    brmerge_fu_443_p2 <= (newsignbit_reg_620 or isneg_not_fu_438_p2);
    brmerge_i_i_i_fu_434_p2 <= (isneg_reg_607 xor newsignbit_reg_620);
    co_34_fu_253_p2 <= std_logic_vector(unsigned(co_reg_186) + unsigned(ap_const_lv10_1));
    co_cast4_fu_243_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(co_reg_186),32));
    conv_last_output_V_0_address0 <= tmp_768_cast_fu_343_p1(10 - 1 downto 0);

    conv_last_output_V_0_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            conv_last_output_V_0_ce0 <= ap_const_logic_1;
        else 
            conv_last_output_V_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    conv_last_output_V_1_address0 <= tmp_768_cast_fu_343_p1(10 - 1 downto 0);

    conv_last_output_V_1_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            conv_last_output_V_1_ce0 <= ap_const_logic_1;
        else 
            conv_last_output_V_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    conv_last_output_V_2_address0 <= tmp_768_cast_fu_343_p1(10 - 1 downto 0);

    conv_last_output_V_2_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            conv_last_output_V_2_ce0 <= ap_const_logic_1;
        else 
            conv_last_output_V_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    conv_last_output_V_3_address0 <= tmp_768_cast_fu_343_p1(10 - 1 downto 0);

    conv_last_output_V_3_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            conv_last_output_V_3_ce0 <= ap_const_logic_1;
        else 
            conv_last_output_V_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    conv_last_output_V_4_address0 <= tmp_768_cast_fu_343_p1(10 - 1 downto 0);

    conv_last_output_V_4_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            conv_last_output_V_4_ce0 <= ap_const_logic_1;
        else 
            conv_last_output_V_4_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    conv_last_output_V_5_address0 <= tmp_768_cast_fu_343_p1(10 - 1 downto 0);

    conv_last_output_V_5_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            conv_last_output_V_5_ce0 <= ap_const_logic_1;
        else 
            conv_last_output_V_5_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    conv_last_output_V_6_address0 <= tmp_768_cast_fu_343_p1(10 - 1 downto 0);

    conv_last_output_V_6_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            conv_last_output_V_6_ce0 <= ap_const_logic_1;
        else 
            conv_last_output_V_6_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    conv_last_output_V_7_address0 <= tmp_768_cast_fu_343_p1(10 - 1 downto 0);

    conv_last_output_V_7_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            conv_last_output_V_7_ce0 <= ap_const_logic_1;
        else 
            conv_last_output_V_7_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond34_fu_302_p2 <= "1" when (h_reg_209 = ap_const_lv3_4) else "0";
    exitcond35_fu_247_p2 <= "1" when (co_reg_186 = ap_const_lv10_200) else "0";
    exitcond_fu_355_p2 <= "1" when (w_reg_232 = ap_const_lv3_4) else "0";
    h_35_fu_308_p2 <= std_logic_vector(unsigned(h_reg_209) + unsigned(ap_const_lv3_1));
    h_cast3_cast_fu_285_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_reg_209),10));
    isneg_not_fu_438_p2 <= (isneg_reg_607 xor ap_const_lv1_1);
    newIndex_fu_263_p4 <= co_reg_186(9 downto 3);
    output_V_address0 <= co_cast4_reg_518(9 - 1 downto 0);

    output_V_ce0_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            output_V_ce0 <= ap_const_logic_1;
        else 
            output_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

        output_V_d0 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_75_fu_505_p3),8));


    output_V_we0_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            output_V_we0 <= ap_const_logic_1;
        else 
            output_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    p_Val2_198_mux_fu_448_p3 <= 
        ap_const_lv8_7F when (brmerge_i_i_i_fu_434_p2(0) = '1') else 
        p_Val2_64_reg_614;
    p_Val2_1_fu_455_p3 <= 
        ap_const_lv8_80 when (underflow_fu_429_p2(0) = '1') else 
        p_Val2_64_reg_614;
    p_Val2_63_fu_396_p2 <= std_logic_vector(signed(tmp_141_fu_392_p1) + signed(tmp_140_fu_367_p1));
    p_Val2_64_fu_410_p2 <= std_logic_vector(unsigned(p_Val2_61_reg_220) + unsigned(p_Val2_62_fu_371_p10));
    p_lshr_cast_fu_478_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_625_reg_554),6));
    p_lshr_f_cast_fu_501_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_74_fu_497_p1),6));
    p_neg_fu_318_p2 <= std_logic_vector(unsigned(ap_const_lv9_0) - unsigned(tmp_tr_fu_314_p1));
    p_neg_t_fu_481_p2 <= std_logic_vector(unsigned(ap_const_lv6_0) - unsigned(p_lshr_cast_fu_478_p1));
    sum_V_fu_462_p3 <= 
        p_Val2_198_mux_fu_448_p3 when (brmerge_fu_443_p2(0) = '1') else 
        p_Val2_1_fu_455_p3;
        tmp_140_fu_367_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Val2_61_reg_220),9));

        tmp_141_fu_392_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Val2_62_fu_371_p10),9));

    tmp_143_fu_424_p2 <= (newsignbit_reg_620 xor ap_const_lv1_1);
    tmp_2251_fu_259_p1 <= co_reg_186(3 - 1 downto 0);
    tmp_2252_fu_470_p3 <= p_Val2_s_reg_197(7 downto 7);
    tmp_626_fu_338_p2 <= std_logic_vector(unsigned(tmp_766_cast_reg_541) + unsigned(w_cast2_cast_fu_334_p1));
    tmp_73_fu_487_p4 <= p_Val2_s_reg_197(7 downto 4);
        tmp_74_fu_497_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_73_fu_487_p4),5));

    tmp_75_fu_505_p3 <= 
        p_neg_t_fu_481_p2 when (tmp_2252_fu_470_p3(0) = '1') else 
        p_lshr_f_cast_fu_501_p1;
    tmp_763_cast_fu_281_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_273_p3),10));
    tmp_766_cast_fu_294_p3 <= (tmp_s_fu_289_p2 & ap_const_lv2_0);
    tmp_768_cast_fu_343_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_626_fu_338_p2),32));
    tmp_fu_273_p3 <= (newIndex_fu_263_p4 & ap_const_lv2_0);
    tmp_s_fu_289_p2 <= std_logic_vector(unsigned(h_cast3_cast_fu_285_p1) + unsigned(tmp_763_cast_reg_536));
        tmp_tr_fu_314_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Val2_s_reg_197),9));

    underflow_fu_429_p2 <= (isneg_reg_607 and tmp_143_fu_424_p2);
    w_45_fu_361_p2 <= std_logic_vector(unsigned(w_reg_232) + unsigned(ap_const_lv3_1));
    w_cast2_cast_fu_334_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_reg_232),12));
end behav;
