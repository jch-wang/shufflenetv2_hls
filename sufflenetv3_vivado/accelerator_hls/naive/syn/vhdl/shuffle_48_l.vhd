-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shuffle_48_l is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    left_r_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    left_r_ce0 : OUT STD_LOGIC;
    left_r_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    output_r_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    output_r_ce0 : OUT STD_LOGIC;
    output_r_we0 : OUT STD_LOGIC;
    output_r_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of shuffle_48_l is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv7_60 : STD_LOGIC_VECTOR (6 downto 0) := "1100000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_98_fu_98_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_98_reg_233 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal co_17_fu_108_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal co_17_reg_240 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_267_cast_fu_132_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_267_cast_reg_245 : STD_LOGIC_VECTOR (9 downto 0);
    signal exitcond2_fu_102_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_269_cast_fu_144_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_269_cast_reg_250 : STD_LOGIC_VECTOR (10 downto 0);
    signal h_17_fu_154_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal h_17_reg_258 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_272_cast_fu_173_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_272_cast_reg_263 : STD_LOGIC_VECTOR (12 downto 0);
    signal exitcond1_fu_148_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_275_cast_fu_186_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_275_cast_reg_268 : STD_LOGIC_VECTOR (13 downto 0);
    signal w_17_fu_200_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal w_17_reg_276 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal exitcond_fu_194_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_165_fu_224_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_165_reg_286 : STD_LOGIC_VECTOR (13 downto 0);
    signal co_reg_65 : STD_LOGIC_VECTOR (6 downto 0);
    signal h_reg_76 : STD_LOGIC_VECTOR (3 downto 0);
    signal w_reg_87 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_276_cast_fu_219_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_277_cast_fu_229_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_114_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_s_fu_124_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_161_fu_136_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_cast_fu_164_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_162_fu_168_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_cast2_fu_160_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_163_fu_181_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_101_cast_fu_210_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_164_fu_214_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_101_cast1_fu_206_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);


begin




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


    co_reg_65_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond1_fu_148_p2 = ap_const_lv1_1))) then 
                co_reg_65 <= co_17_reg_240;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                co_reg_65 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    h_reg_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond_fu_194_p2 = ap_const_lv1_1))) then 
                h_reg_76 <= h_17_reg_258;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond2_fu_102_p2 = ap_const_lv1_0))) then 
                h_reg_76 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    w_reg_87_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond1_fu_148_p2))) then 
                w_reg_87 <= ap_const_lv4_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                w_reg_87 <= w_17_reg_276;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                co_17_reg_240 <= co_17_fu_108_p2;
                tmp_98_reg_233 <= tmp_98_fu_98_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                h_17_reg_258 <= h_17_fu_154_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond_fu_194_p2) and (tmp_98_reg_233 = ap_const_lv1_0))) then
                tmp_165_reg_286 <= tmp_165_fu_224_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond2_fu_102_p2 = ap_const_lv1_0))) then
                    tmp_267_cast_reg_245(8 downto 3) <= tmp_267_cast_fu_132_p1(8 downto 3);
                    tmp_269_cast_reg_250(9 downto 3) <= tmp_269_cast_fu_144_p1(9 downto 3);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond1_fu_148_p2))) then
                    tmp_272_cast_reg_263(12 downto 3) <= tmp_272_cast_fu_173_p3(12 downto 3);
                    tmp_275_cast_reg_268(13 downto 3) <= tmp_275_cast_fu_186_p3(13 downto 3);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                w_17_reg_276 <= w_17_fu_200_p2;
            end if;
        end if;
    end process;
    tmp_267_cast_reg_245(2 downto 0) <= "000";
    tmp_267_cast_reg_245(9) <= '0';
    tmp_269_cast_reg_250(2 downto 0) <= "000";
    tmp_269_cast_reg_250(10) <= '0';
    tmp_272_cast_reg_263(2 downto 0) <= "000";
    tmp_275_cast_reg_268(2 downto 0) <= "000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond2_fu_102_p2, ap_CS_fsm_state3, exitcond1_fu_148_p2, ap_CS_fsm_state4, exitcond_fu_194_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond2_fu_102_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond1_fu_148_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond_fu_194_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond2_fu_102_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond2_fu_102_p2 = ap_const_lv1_1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond2_fu_102_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond2_fu_102_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    co_17_fu_108_p2 <= std_logic_vector(unsigned(ap_const_lv7_1) + unsigned(co_reg_65));
    exitcond1_fu_148_p2 <= "1" when (h_reg_76 = ap_const_lv4_8) else "0";
    exitcond2_fu_102_p2 <= "1" when (co_reg_65 = ap_const_lv7_60) else "0";
    exitcond_fu_194_p2 <= "1" when (w_reg_87 = ap_const_lv4_8) else "0";
    h_17_fu_154_p2 <= std_logic_vector(unsigned(h_reg_76) + unsigned(ap_const_lv4_1));
    left_r_address0 <= tmp_276_cast_fu_219_p1(12 - 1 downto 0);

    left_r_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            left_r_ce0 <= ap_const_logic_1;
        else 
            left_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_r_address0 <= tmp_277_cast_fu_229_p1(13 - 1 downto 0);

    output_r_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            output_r_ce0 <= ap_const_logic_1;
        else 
            output_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_r_d0 <= left_r_q0;

    output_r_we0_assign_proc : process(tmp_98_reg_233, ap_CS_fsm_state5)
    begin
        if (((tmp_98_reg_233 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            output_r_we0 <= ap_const_logic_1;
        else 
            output_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_101_cast1_fu_206_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_reg_87),14));
    tmp_101_cast_fu_210_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_reg_87),13));
    tmp_161_fu_136_p3 <= (co_reg_65 & ap_const_lv3_0);
    tmp_162_fu_168_p2 <= std_logic_vector(unsigned(tmp_cast_fu_164_p1) + unsigned(tmp_267_cast_reg_245));
    tmp_163_fu_181_p2 <= std_logic_vector(unsigned(tmp_cast2_fu_160_p1) + unsigned(tmp_269_cast_reg_250));
    tmp_164_fu_214_p2 <= std_logic_vector(unsigned(tmp_272_cast_reg_263) + unsigned(tmp_101_cast_fu_210_p1));
    tmp_165_fu_224_p2 <= std_logic_vector(unsigned(tmp_275_cast_reg_268) + unsigned(tmp_101_cast1_fu_206_p1));
    tmp_267_cast_fu_132_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_124_p3),10));
    tmp_269_cast_fu_144_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_161_fu_136_p3),11));
    tmp_272_cast_fu_173_p3 <= (tmp_162_fu_168_p2 & ap_const_lv3_0);
    tmp_275_cast_fu_186_p3 <= (tmp_163_fu_181_p2 & ap_const_lv3_0);
    tmp_276_cast_fu_219_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_164_fu_214_p2),64));
    tmp_277_cast_fu_229_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_165_reg_286),64));
    tmp_98_fu_98_p1 <= co_reg_65(1 - 1 downto 0);
    tmp_cast2_fu_160_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_reg_76),11));
    tmp_cast_fu_164_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_reg_76),10));
    tmp_fu_114_p4 <= co_reg_65(6 downto 1);
    tmp_s_fu_124_p3 <= (tmp_fu_114_p4 & ap_const_lv3_0);
    w_17_fu_200_p2 <= std_logic_vector(unsigned(w_reg_87) + unsigned(ap_const_lv4_1));
end behav;
