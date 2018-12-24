-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shuffle_24_l_p is
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
    buffer1_1_24_16x16_p_7_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buffer1_1_24_16x16_p_7_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_7_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_6_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buffer1_1_24_16x16_p_6_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_6_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_5_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buffer1_1_24_16x16_p_5_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_5_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_4_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buffer1_1_24_16x16_p_4_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_4_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_3_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buffer1_1_24_16x16_p_3_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_3_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_2_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buffer1_1_24_16x16_p_2_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_2_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_1_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buffer1_1_24_16x16_p_1_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_1_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buffer1_1_24_16x16_p_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buffer1_1_24_16x16_p_ce0 : OUT STD_LOGIC;
    buffer1_1_24_16x16_p_q0 : IN STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of shuffle_24_l_p is 
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
    constant ap_const_lv6_30 : STD_LOGIC_VECTOR (5 downto 0) := "110000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv5_12 : STD_LOGIC_VECTOR (4 downto 0) := "10010";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_557_fu_213_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_557_reg_458 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal co_31_fu_223_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal co_31_reg_465 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_473_fu_253_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_473_reg_470 : STD_LOGIC_VECTOR (10 downto 0);
    signal exitcond3_fu_217_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal arrayNo_reg_475 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_477_fu_303_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_477_reg_480 : STD_LOGIC_VECTOR (6 downto 0);
    signal h_28_fu_315_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal h_28_reg_488 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_479_fu_354_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_479_reg_493 : STD_LOGIC_VECTOR (14 downto 0);
    signal exitcond2_fu_309_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_481_fu_385_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_481_reg_498 : STD_LOGIC_VECTOR (10 downto 0);
    signal w_33_fu_397_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal w_33_reg_506 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp_482_fu_411_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_482_reg_511 : STD_LOGIC_VECTOR (14 downto 0);
    signal exitcond_fu_391_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_433_p10 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_reg_556 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal co_reg_180 : STD_LOGIC_VECTOR (5 downto 0);
    signal h_reg_191 : STD_LOGIC_VECTOR (4 downto 0);
    signal w_reg_202 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal tmp_608_cast_fu_421_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_607_cast_fu_454_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_fu_229_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_472_fu_241_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_shl3_cast_fu_249_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_shl2_cast_fu_237_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_474_fu_269_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_475_fu_279_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_476_fu_291_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_shl1_cast_fu_299_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_shl_cast_fu_287_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_cast_fu_325_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_478_fu_329_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_558_fu_342_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_shl6_cast_fu_334_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_shl7_cast_fu_350_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_cast9_fu_321_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_480_fu_360_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_559_fu_373_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_shl4_cast_fu_365_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_shl5_cast_fu_381_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_221_cast_fu_407_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_221_cast8_fu_403_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_483_fu_416_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);

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
    ShuffleNetV2_mux_jbC_x_U74 : component ShuffleNetV2_mux_jbC
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
        din1 => buffer1_1_24_16x16_p_7_q0,
        din2 => buffer1_1_24_16x16_p_6_q0,
        din3 => buffer1_1_24_16x16_p_5_q0,
        din4 => buffer1_1_24_16x16_p_4_q0,
        din5 => buffer1_1_24_16x16_p_3_q0,
        din6 => buffer1_1_24_16x16_p_2_q0,
        din7 => buffer1_1_24_16x16_p_1_q0,
        din8 => buffer1_1_24_16x16_p_q0,
        din9 => arrayNo_reg_475,
        dout => tmp_fu_433_p10);





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


    co_reg_180_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond2_fu_309_p2 = ap_const_lv1_1))) then 
                co_reg_180 <= co_31_reg_465;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                co_reg_180 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    h_reg_191_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond_fu_391_p2 = ap_const_lv1_1))) then 
                h_reg_191 <= h_28_reg_488;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond3_fu_217_p2 = ap_const_lv1_0))) then 
                h_reg_191 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    w_reg_202_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond2_fu_309_p2))) then 
                w_reg_202 <= ap_const_lv5_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                w_reg_202 <= w_33_reg_506;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond3_fu_217_p2 = ap_const_lv1_0))) then
                arrayNo_reg_475 <= co_reg_180(3 downto 1);
                    tmp_473_reg_470(10 downto 1) <= tmp_473_fu_253_p2(10 downto 1);
                    tmp_477_reg_480(6 downto 1) <= tmp_477_fu_303_p2(6 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                co_31_reg_465 <= co_31_fu_223_p2;
                tmp_557_reg_458 <= tmp_557_fu_213_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                h_28_reg_488 <= h_28_fu_315_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond2_fu_309_p2))) then
                    tmp_479_reg_493(14 downto 1) <= tmp_479_fu_354_p2(14 downto 1);
                    tmp_481_reg_498(10 downto 1) <= tmp_481_fu_385_p2(10 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond_fu_391_p2) and (tmp_557_reg_458 = ap_const_lv1_0))) then
                tmp_482_reg_511 <= tmp_482_fu_411_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                tmp_reg_556 <= tmp_fu_433_p10;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                w_33_reg_506 <= w_33_fu_397_p2;
            end if;
        end if;
    end process;
    tmp_473_reg_470(0) <= '0';
    tmp_477_reg_480(0) <= '0';
    tmp_479_reg_493(0) <= '0';
    tmp_481_reg_498(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, tmp_557_reg_458, ap_CS_fsm_state2, exitcond3_fu_217_p2, ap_CS_fsm_state3, exitcond2_fu_309_p2, ap_CS_fsm_state4, exitcond_fu_391_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond3_fu_217_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond2_fu_309_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond_fu_391_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond_fu_391_p2) and (tmp_557_reg_458 = ap_const_lv1_1))) then
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

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond3_fu_217_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond3_fu_217_p2 = ap_const_lv1_1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond3_fu_217_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond3_fu_217_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_1_address0 <= tmp_608_cast_fu_421_p1(10 - 1 downto 0);

    buffer1_1_24_16x16_p_1_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_1_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_2_address0 <= tmp_608_cast_fu_421_p1(10 - 1 downto 0);

    buffer1_1_24_16x16_p_2_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_2_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_3_address0 <= tmp_608_cast_fu_421_p1(10 - 1 downto 0);

    buffer1_1_24_16x16_p_3_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_3_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_4_address0 <= tmp_608_cast_fu_421_p1(10 - 1 downto 0);

    buffer1_1_24_16x16_p_4_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_4_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_4_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_5_address0 <= tmp_608_cast_fu_421_p1(10 - 1 downto 0);

    buffer1_1_24_16x16_p_5_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_5_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_5_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_6_address0 <= tmp_608_cast_fu_421_p1(10 - 1 downto 0);

    buffer1_1_24_16x16_p_6_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_6_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_6_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_7_address0 <= tmp_608_cast_fu_421_p1(10 - 1 downto 0);

    buffer1_1_24_16x16_p_7_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_7_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_7_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer1_1_24_16x16_p_address0 <= tmp_608_cast_fu_421_p1(10 - 1 downto 0);

    buffer1_1_24_16x16_p_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buffer1_1_24_16x16_p_ce0 <= ap_const_logic_1;
        else 
            buffer1_1_24_16x16_p_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    co_31_fu_223_p2 <= std_logic_vector(unsigned(ap_const_lv6_1) + unsigned(co_reg_180));
    exitcond2_fu_309_p2 <= "1" when (h_reg_191 = ap_const_lv5_12) else "0";
    exitcond3_fu_217_p2 <= "1" when (co_reg_180 = ap_const_lv6_30) else "0";
    exitcond_fu_391_p2 <= "1" when (w_reg_202 = ap_const_lv5_12) else "0";
    h_28_fu_315_p2 <= std_logic_vector(unsigned(h_reg_191) + unsigned(ap_const_lv5_1));
    output_V_address0 <= tmp_607_cast_fu_454_p1(14 - 1 downto 0);

    output_V_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            output_V_ce0 <= ap_const_logic_1;
        else 
            output_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_V_d0 <= tmp_reg_556;

    output_V_we0_assign_proc : process(tmp_557_reg_458, ap_CS_fsm_state6)
    begin
        if (((tmp_557_reg_458 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            output_V_we0 <= ap_const_logic_1;
        else 
            output_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    p_shl1_cast_fu_299_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_476_fu_291_p3),7));
    p_shl2_cast_fu_237_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_229_p3),11));
    p_shl3_cast_fu_249_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_472_fu_241_p3),11));
    p_shl4_cast_fu_365_p3 <= (tmp_480_fu_360_p2 & ap_const_lv4_0);
    p_shl5_cast_fu_381_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_559_fu_373_p3),11));
    p_shl6_cast_fu_334_p3 <= (tmp_478_fu_329_p2 & ap_const_lv4_0);
    p_shl7_cast_fu_350_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_558_fu_342_p3),15));
    p_shl_cast_fu_287_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_475_fu_279_p3),7));
    tmp_221_cast8_fu_403_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_reg_202),11));
    tmp_221_cast_fu_407_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_reg_202),15));
    tmp_472_fu_241_p3 <= (co_reg_180 & ap_const_lv1_0);
    tmp_473_fu_253_p2 <= std_logic_vector(unsigned(p_shl3_cast_fu_249_p1) + unsigned(p_shl2_cast_fu_237_p1));
    tmp_474_fu_269_p4 <= co_reg_180(5 downto 4);
    tmp_475_fu_279_p3 <= (tmp_474_fu_269_p4 & ap_const_lv4_0);
    tmp_476_fu_291_p3 <= (tmp_474_fu_269_p4 & ap_const_lv1_0);
    tmp_477_fu_303_p2 <= std_logic_vector(unsigned(p_shl1_cast_fu_299_p1) + unsigned(p_shl_cast_fu_287_p1));
    tmp_478_fu_329_p2 <= std_logic_vector(unsigned(tmp_cast_fu_325_p1) + unsigned(tmp_473_reg_470));
    tmp_479_fu_354_p2 <= std_logic_vector(unsigned(p_shl6_cast_fu_334_p3) + unsigned(p_shl7_cast_fu_350_p1));
    tmp_480_fu_360_p2 <= std_logic_vector(unsigned(tmp_cast9_fu_321_p1) + unsigned(tmp_477_reg_480));
    tmp_481_fu_385_p2 <= std_logic_vector(unsigned(p_shl4_cast_fu_365_p3) + unsigned(p_shl5_cast_fu_381_p1));
    tmp_482_fu_411_p2 <= std_logic_vector(unsigned(tmp_479_reg_493) + unsigned(tmp_221_cast_fu_407_p1));
    tmp_483_fu_416_p2 <= std_logic_vector(unsigned(tmp_481_reg_498) + unsigned(tmp_221_cast8_fu_403_p1));
    tmp_557_fu_213_p1 <= co_reg_180(1 - 1 downto 0);
    tmp_558_fu_342_p3 <= (tmp_478_fu_329_p2 & ap_const_lv1_0);
    tmp_559_fu_373_p3 <= (tmp_480_fu_360_p2 & ap_const_lv1_0);
    tmp_607_cast_fu_454_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_482_reg_511),64));
    tmp_608_cast_fu_421_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_483_fu_416_p2),64));
    tmp_cast9_fu_321_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_reg_191),7));
    tmp_cast_fu_325_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_reg_191),11));
    tmp_s_fu_229_p3 <= (co_reg_180 & ap_const_lv4_0);
    w_33_fu_397_p2 <= std_logic_vector(unsigned(w_reg_202) + unsigned(ap_const_lv5_1));
end behav;
