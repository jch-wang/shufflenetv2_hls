-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shuffle_96_p is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    left_V_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    left_V_ce0 : OUT STD_LOGIC;
    left_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    output_V_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    output_V_ce0 : OUT STD_LOGIC;
    output_V_we0 : OUT STD_LOGIC;
    output_V_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_96_4x4_p_V_8_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_96_4x4_p_V_8_ce0 : OUT STD_LOGIC;
    buffer1_1_96_4x4_p_V_8_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_96_4x4_p_V_1_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_96_4x4_p_V_1_ce0 : OUT STD_LOGIC;
    buffer1_1_96_4x4_p_V_1_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_96_4x4_p_V_2_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_96_4x4_p_V_2_ce0 : OUT STD_LOGIC;
    buffer1_1_96_4x4_p_V_2_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_96_4x4_p_V_3_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_96_4x4_p_V_3_ce0 : OUT STD_LOGIC;
    buffer1_1_96_4x4_p_V_3_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_96_4x4_p_V_4_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_96_4x4_p_V_4_ce0 : OUT STD_LOGIC;
    buffer1_1_96_4x4_p_V_4_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_96_4x4_p_V_5_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_96_4x4_p_V_5_ce0 : OUT STD_LOGIC;
    buffer1_1_96_4x4_p_V_5_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_96_4x4_p_V_6_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_96_4x4_p_V_6_ce0 : OUT STD_LOGIC;
    buffer1_1_96_4x4_p_V_6_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_96_4x4_p_V_7_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer1_1_96_4x4_p_V_7_ce0 : OUT STD_LOGIC;
    buffer1_1_96_4x4_p_V_7_q0 : IN STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of shuffle_96_p is 
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
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv8_C0 : STD_LOGIC_VECTOR (7 downto 0) := "11000000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_510_fu_242_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_510_reg_589 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal co_24_fu_252_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal co_24_reg_596 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_437_cast_fu_288_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_437_cast_reg_601 : STD_LOGIC_VECTOR (12 downto 0);
    signal exitcond5_fu_246_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_442_cast_fu_332_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_442_cast_reg_606 : STD_LOGIC_VECTOR (11 downto 0);
    signal arrayNo_reg_611 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_447_cast_fu_386_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_447_cast_reg_616 : STD_LOGIC_VECTOR (8 downto 0);
    signal h_21_fu_396_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal h_21_reg_624 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_378_fu_439_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_378_reg_629 : STD_LOGIC_VECTOR (12 downto 0);
    signal exitcond4_fu_390_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_380_fu_470_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_380_reg_634 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_382_fu_501_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_382_reg_639 : STD_LOGIC_VECTOR (9 downto 0);
    signal w_26_fu_513_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal w_26_reg_647 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal exitcond_fu_507_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal output_V_addr_reg_657 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_fu_568_p10 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal co_reg_199 : STD_LOGIC_VECTOR (7 downto 0);
    signal h_reg_210 : STD_LOGIC_VECTOR (2 downto 0);
    signal w_reg_221 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal storemerge_reg_232 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_460_cast_fu_536_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_461_cast_fu_546_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_462_cast_fu_556_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_fu_258_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_367_fu_270_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_shl4_cast_fu_266_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_shl5_cast_fu_278_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_368_fu_282_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_369_fu_292_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_370_fu_302_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_371_fu_314_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_shl2_cast_fu_310_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_shl3_cast_fu_322_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_372_fu_326_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_373_fu_346_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_374_fu_356_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_375_fu_368_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal p_shl_cast_fu_364_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_shl1_cast_fu_376_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_376_fu_380_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_211_cast_fu_410_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_377_fu_414_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_511_fu_419_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_shl10_cast_fu_423_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_shl11_cast_fu_431_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_211_cast2_fu_406_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_379_fu_445_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_512_fu_450_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_shl8_cast_fu_454_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_shl9_cast_fu_462_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_211_cast1_fu_402_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_381_fu_476_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_513_fu_481_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_shl6_cast_fu_485_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_shl7_cast_fu_493_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_212_cast_fu_527_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_383_fu_531_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_212_cast2_fu_523_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_384_fu_541_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_212_cast1_fu_519_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_385_fu_551_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);

    component ShuffleNetV2_mux_jbC IS
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
    ShuffleNetV2_mux_jbC_x_U300 : component ShuffleNetV2_mux_jbC
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
        din1 => buffer1_1_96_4x4_p_V_8_q0,
        din2 => buffer1_1_96_4x4_p_V_1_q0,
        din3 => buffer1_1_96_4x4_p_V_2_q0,
        din4 => buffer1_1_96_4x4_p_V_3_q0,
        din5 => buffer1_1_96_4x4_p_V_4_q0,
        din6 => buffer1_1_96_4x4_p_V_5_q0,
        din7 => buffer1_1_96_4x4_p_V_6_q0,
        din8 => buffer1_1_96_4x4_p_V_7_q0,
        din9 => arrayNo_reg_611,
        dout => tmp_fu_568_p10);





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


    co_reg_199_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond4_fu_390_p2 = ap_const_lv1_1))) then 
                co_reg_199 <= co_24_reg_596;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                co_reg_199 <= ap_const_lv8_0;
            end if; 
        end if;
    end process;

    h_reg_210_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond_fu_507_p2 = ap_const_lv1_1))) then 
                h_reg_210 <= h_21_reg_624;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond5_fu_246_p2 = ap_const_lv1_0))) then 
                h_reg_210 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    storemerge_reg_232_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                storemerge_reg_232 <= tmp_fu_568_p10;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                storemerge_reg_232 <= left_V_q0;
            end if; 
        end if;
    end process;

    w_reg_221_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond4_fu_390_p2))) then 
                w_reg_221 <= ap_const_lv3_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                w_reg_221 <= w_26_reg_647;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond5_fu_246_p2 = ap_const_lv1_0))) then
                arrayNo_reg_611 <= co_reg_199(3 downto 1);
                    tmp_437_cast_reg_601(12 downto 1) <= tmp_437_cast_fu_288_p1(12 downto 1);
                    tmp_442_cast_reg_606(11 downto 1) <= tmp_442_cast_fu_332_p1(11 downto 1);
                    tmp_447_cast_reg_616(8 downto 1) <= tmp_447_cast_fu_386_p1(8 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                co_24_reg_596 <= co_24_fu_252_p2;
                tmp_510_reg_589 <= tmp_510_fu_242_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                h_21_reg_624 <= h_21_fu_396_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond_fu_507_p2))) then
                output_V_addr_reg_657 <= tmp_461_cast_fu_546_p1(13 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond4_fu_390_p2))) then
                    tmp_378_reg_629(12 downto 1) <= tmp_378_fu_439_p2(12 downto 1);
                    tmp_380_reg_634(13 downto 1) <= tmp_380_fu_470_p2(13 downto 1);
                    tmp_382_reg_639(9 downto 1) <= tmp_382_fu_501_p2(9 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                w_26_reg_647 <= w_26_fu_513_p2;
            end if;
        end if;
    end process;
    tmp_437_cast_reg_601(0) <= '0';
    tmp_442_cast_reg_606(0) <= '0';
    tmp_447_cast_reg_616(0) <= '0';
    tmp_378_reg_629(0) <= '0';
    tmp_380_reg_634(0) <= '0';
    tmp_382_reg_639(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, tmp_510_reg_589, ap_CS_fsm_state2, exitcond5_fu_246_p2, ap_CS_fsm_state3, exitcond4_fu_390_p2, ap_CS_fsm_state4, exitcond_fu_507_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond5_fu_246_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond4_fu_390_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond_fu_507_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond_fu_507_p2) and (tmp_510_reg_589 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
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

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond5_fu_246_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond5_fu_246_p2 = ap_const_lv1_1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond5_fu_246_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond5_fu_246_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_96_4x4_p_V_1_address0 <= tmp_462_cast_fu_556_p1(9 - 1 downto 0);

    buffer1_1_96_4x4_p_V_1_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_96_4x4_p_V_1_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_96_4x4_p_V_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_96_4x4_p_V_2_address0 <= tmp_462_cast_fu_556_p1(9 - 1 downto 0);

    buffer1_1_96_4x4_p_V_2_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_96_4x4_p_V_2_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_96_4x4_p_V_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_96_4x4_p_V_3_address0 <= tmp_462_cast_fu_556_p1(9 - 1 downto 0);

    buffer1_1_96_4x4_p_V_3_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_96_4x4_p_V_3_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_96_4x4_p_V_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_96_4x4_p_V_4_address0 <= tmp_462_cast_fu_556_p1(9 - 1 downto 0);

    buffer1_1_96_4x4_p_V_4_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_96_4x4_p_V_4_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_96_4x4_p_V_4_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_96_4x4_p_V_5_address0 <= tmp_462_cast_fu_556_p1(9 - 1 downto 0);

    buffer1_1_96_4x4_p_V_5_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_96_4x4_p_V_5_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_96_4x4_p_V_5_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_96_4x4_p_V_6_address0 <= tmp_462_cast_fu_556_p1(9 - 1 downto 0);

    buffer1_1_96_4x4_p_V_6_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_96_4x4_p_V_6_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_96_4x4_p_V_6_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_96_4x4_p_V_7_address0 <= tmp_462_cast_fu_556_p1(9 - 1 downto 0);

    buffer1_1_96_4x4_p_V_7_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_96_4x4_p_V_7_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_96_4x4_p_V_7_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_96_4x4_p_V_8_address0 <= tmp_462_cast_fu_556_p1(9 - 1 downto 0);

    buffer1_1_96_4x4_p_V_8_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_96_4x4_p_V_8_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_96_4x4_p_V_8_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    co_24_fu_252_p2 <= std_logic_vector(unsigned(ap_const_lv8_1) + unsigned(co_reg_199));
    exitcond4_fu_390_p2 <= "1" when (h_reg_210 = ap_const_lv3_6) else "0";
    exitcond5_fu_246_p2 <= "1" when (co_reg_199 = ap_const_lv8_C0) else "0";
    exitcond_fu_507_p2 <= "1" when (w_reg_221 = ap_const_lv3_6) else "0";
    h_21_fu_396_p2 <= std_logic_vector(unsigned(h_reg_210) + unsigned(ap_const_lv3_1));
    left_V_address0 <= tmp_460_cast_fu_536_p1(12 - 1 downto 0);

    left_V_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            left_V_ce0 <= ap_const_logic_1;
        else 
            left_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_V_address0 <= output_V_addr_reg_657;

    output_V_ce0_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            output_V_ce0 <= ap_const_logic_1;
        else 
            output_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_V_d0 <= storemerge_reg_232;

    output_V_we0_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            output_V_we0 <= ap_const_logic_1;
        else 
            output_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    p_shl10_cast_fu_423_p3 <= (tmp_511_fu_419_p1 & ap_const_lv3_0);
    p_shl11_cast_fu_431_p3 <= (tmp_377_fu_414_p2 & ap_const_lv1_0);
    p_shl1_cast_fu_376_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_375_fu_368_p3),8));
    p_shl2_cast_fu_310_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_370_fu_302_p3),11));
    p_shl3_cast_fu_322_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_371_fu_314_p3),11));
    p_shl4_cast_fu_266_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_258_p3),12));
    p_shl5_cast_fu_278_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_367_fu_270_p3),12));
    p_shl6_cast_fu_485_p3 <= (tmp_513_fu_481_p1 & ap_const_lv3_0);
    p_shl7_cast_fu_493_p3 <= (tmp_381_fu_476_p2 & ap_const_lv1_0);
    p_shl8_cast_fu_454_p3 <= (tmp_512_fu_450_p1 & ap_const_lv3_0);
    p_shl9_cast_fu_462_p3 <= (tmp_379_fu_445_p2 & ap_const_lv1_0);
    p_shl_cast_fu_364_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_374_fu_356_p3),8));
    tmp_211_cast1_fu_402_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_reg_210),9));
    tmp_211_cast2_fu_406_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_reg_210),13));
    tmp_211_cast_fu_410_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_reg_210),12));
    tmp_212_cast1_fu_519_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_reg_221),10));
    tmp_212_cast2_fu_523_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_reg_221),14));
    tmp_212_cast_fu_527_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_reg_221),13));
    tmp_367_fu_270_p3 <= (co_reg_199 & ap_const_lv1_0);
    tmp_368_fu_282_p2 <= std_logic_vector(unsigned(p_shl4_cast_fu_266_p1) - unsigned(p_shl5_cast_fu_278_p1));
    tmp_369_fu_292_p4 <= co_reg_199(7 downto 1);
    tmp_370_fu_302_p3 <= (tmp_369_fu_292_p4 & ap_const_lv3_0);
    tmp_371_fu_314_p3 <= (tmp_369_fu_292_p4 & ap_const_lv1_0);
    tmp_372_fu_326_p2 <= std_logic_vector(unsigned(p_shl2_cast_fu_310_p1) - unsigned(p_shl3_cast_fu_322_p1));
    tmp_373_fu_346_p4 <= co_reg_199(7 downto 4);
    tmp_374_fu_356_p3 <= (tmp_373_fu_346_p4 & ap_const_lv3_0);
    tmp_375_fu_368_p3 <= (tmp_373_fu_346_p4 & ap_const_lv1_0);
    tmp_376_fu_380_p2 <= std_logic_vector(unsigned(p_shl_cast_fu_364_p1) - unsigned(p_shl1_cast_fu_376_p1));
    tmp_377_fu_414_p2 <= std_logic_vector(unsigned(tmp_211_cast_fu_410_p1) + unsigned(tmp_442_cast_reg_606));
    tmp_378_fu_439_p2 <= std_logic_vector(unsigned(p_shl10_cast_fu_423_p3) - unsigned(p_shl11_cast_fu_431_p3));
    tmp_379_fu_445_p2 <= std_logic_vector(unsigned(tmp_211_cast2_fu_406_p1) + unsigned(tmp_437_cast_reg_601));
    tmp_380_fu_470_p2 <= std_logic_vector(unsigned(p_shl8_cast_fu_454_p3) - unsigned(p_shl9_cast_fu_462_p3));
    tmp_381_fu_476_p2 <= std_logic_vector(unsigned(tmp_211_cast1_fu_402_p1) + unsigned(tmp_447_cast_reg_616));
    tmp_382_fu_501_p2 <= std_logic_vector(unsigned(p_shl6_cast_fu_485_p3) - unsigned(p_shl7_cast_fu_493_p3));
    tmp_383_fu_531_p2 <= std_logic_vector(unsigned(tmp_378_reg_629) + unsigned(tmp_212_cast_fu_527_p1));
    tmp_384_fu_541_p2 <= std_logic_vector(unsigned(tmp_380_reg_634) + unsigned(tmp_212_cast2_fu_523_p1));
    tmp_385_fu_551_p2 <= std_logic_vector(unsigned(tmp_382_reg_639) + unsigned(tmp_212_cast1_fu_519_p1));
        tmp_437_cast_fu_288_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_368_fu_282_p2),13));

        tmp_442_cast_fu_332_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_372_fu_326_p2),12));

        tmp_447_cast_fu_386_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_376_fu_380_p2),9));

    tmp_460_cast_fu_536_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_383_fu_531_p2),64));
    tmp_461_cast_fu_546_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_384_fu_541_p2),64));
    tmp_462_cast_fu_556_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_385_fu_551_p2),64));
    tmp_510_fu_242_p1 <= co_reg_199(1 - 1 downto 0);
    tmp_511_fu_419_p1 <= tmp_377_fu_414_p2(10 - 1 downto 0);
    tmp_512_fu_450_p1 <= tmp_379_fu_445_p2(11 - 1 downto 0);
    tmp_513_fu_481_p1 <= tmp_381_fu_476_p2(7 - 1 downto 0);
    tmp_s_fu_258_p3 <= (co_reg_199 & ap_const_lv3_0);
    w_26_fu_513_p2 <= std_logic_vector(unsigned(w_reg_221) + unsigned(ap_const_lv3_1));
end behav;
