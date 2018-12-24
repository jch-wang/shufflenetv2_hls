#include "subconv_1x1_8_p.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void subconv_1x1_8_p::thread_tmp_971_fu_13067_p3() {
    tmp_971_fu_13067_p3 = p_Val2_94_18_reg_18229.read().range(14, 14);
}

void subconv_1x1_8_p::thread_tmp_974_fu_5628_p3() {
    tmp_974_fu_5628_p3 = p_Val2_89_19_fu_5601_p2.read().range(13, 13);
}

void subconv_1x1_8_p::thread_tmp_975_fu_5642_p3() {
    tmp_975_fu_5642_p3 = p_Val2_91_19_fu_5636_p2.read().range(7, 7);
}

void subconv_1x1_8_p::thread_tmp_976_fu_7702_p3() {
    tmp_976_fu_7702_p3 = p_Val2_89_19_reg_16548.read().range(14, 14);
}

void subconv_1x1_8_p::thread_tmp_979_fu_11076_p3() {
    tmp_979_fu_11076_p3 = p_Val2_94_19_fu_11049_p2.read().range(13, 13);
}

void subconv_1x1_8_p::thread_tmp_980_fu_11090_p3() {
    tmp_980_fu_11090_p3 = p_Val2_96_19_fu_11084_p2.read().range(7, 7);
}

void subconv_1x1_8_p::thread_tmp_981_fu_13150_p3() {
    tmp_981_fu_13150_p3 = p_Val2_94_19_reg_18276.read().range(14, 14);
}

void subconv_1x1_8_p::thread_tmp_984_fu_5742_p3() {
    tmp_984_fu_5742_p3 = p_Val2_89_20_fu_5715_p2.read().range(13, 13);
}

void subconv_1x1_8_p::thread_tmp_985_fu_5756_p3() {
    tmp_985_fu_5756_p3 = p_Val2_91_20_fu_5750_p2.read().range(7, 7);
}

void subconv_1x1_8_p::thread_tmp_986_fu_7785_p3() {
    tmp_986_fu_7785_p3 = p_Val2_89_20_reg_16595.read().range(14, 14);
}

void subconv_1x1_8_p::thread_tmp_989_fu_11190_p3() {
    tmp_989_fu_11190_p3 = p_Val2_94_20_fu_11163_p2.read().range(13, 13);
}

void subconv_1x1_8_p::thread_tmp_990_fu_11204_p3() {
    tmp_990_fu_11204_p3 = p_Val2_96_20_fu_11198_p2.read().range(7, 7);
}

void subconv_1x1_8_p::thread_tmp_991_fu_13233_p3() {
    tmp_991_fu_13233_p3 = p_Val2_94_20_reg_18323.read().range(14, 14);
}

void subconv_1x1_8_p::thread_tmp_994_fu_5856_p3() {
    tmp_994_fu_5856_p3 = p_Val2_89_21_fu_5829_p2.read().range(13, 13);
}

void subconv_1x1_8_p::thread_tmp_995_fu_5870_p3() {
    tmp_995_fu_5870_p3 = p_Val2_91_21_fu_5864_p2.read().range(7, 7);
}

void subconv_1x1_8_p::thread_tmp_996_fu_7868_p3() {
    tmp_996_fu_7868_p3 = p_Val2_89_21_reg_16642.read().range(14, 14);
}

void subconv_1x1_8_p::thread_tmp_999_fu_11304_p3() {
    tmp_999_fu_11304_p3 = p_Val2_94_21_fu_11277_p2.read().range(13, 13);
}

void subconv_1x1_8_p::thread_tmp_s_fu_3306_p3() {
    tmp_s_fu_3306_p3 = esl_concat<8,6>(reg_2094.read(), ap_const_lv6_0);
}

void subconv_1x1_8_p::thread_underflow_10_fu_6944_p2() {
    underflow_10_fu_6944_p2 = (tmp_872_reg_16083.read() & tmp41_fu_6938_p2.read());
}

void subconv_1x1_8_p::thread_underflow_11_fu_7027_p2() {
    underflow_11_fu_7027_p2 = (tmp_882_reg_16130.read() & tmp45_fu_7021_p2.read());
}

void subconv_1x1_8_p::thread_underflow_12_fu_7110_p2() {
    underflow_12_fu_7110_p2 = (tmp_892_reg_16177.read() & tmp49_fu_7104_p2.read());
}

void subconv_1x1_8_p::thread_underflow_13_fu_7193_p2() {
    underflow_13_fu_7193_p2 = (tmp_902_reg_16224.read() & tmp53_fu_7187_p2.read());
}

void subconv_1x1_8_p::thread_underflow_14_fu_7276_p2() {
    underflow_14_fu_7276_p2 = (tmp_912_reg_16271.read() & tmp57_fu_7270_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_10_fu_12475_p2() {
    underflow_15_10_fu_12475_p2 = (tmp_887_reg_17858.read() & tmp47_fu_12469_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_11_fu_12558_p2() {
    underflow_15_11_fu_12558_p2 = (tmp_897_reg_17905.read() & tmp51_fu_12552_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_12_fu_12641_p2() {
    underflow_15_12_fu_12641_p2 = (tmp_907_reg_17952.read() & tmp55_fu_12635_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_13_fu_12724_p2() {
    underflow_15_13_fu_12724_p2 = (tmp_917_reg_17999.read() & tmp59_fu_12718_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_14_fu_12807_p2() {
    underflow_15_14_fu_12807_p2 = (tmp_927_reg_18046.read() & tmp63_fu_12801_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_15_fu_12890_p2() {
    underflow_15_15_fu_12890_p2 = (tmp_937_reg_18093.read() & tmp67_fu_12884_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_16_fu_12973_p2() {
    underflow_15_16_fu_12973_p2 = (tmp_947_reg_18140.read() & tmp71_fu_12967_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_17_fu_13056_p2() {
    underflow_15_17_fu_13056_p2 = (tmp_957_reg_18187.read() & tmp75_fu_13050_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_18_fu_13139_p2() {
    underflow_15_18_fu_13139_p2 = (tmp_967_reg_18234.read() & tmp79_fu_13133_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_19_fu_13222_p2() {
    underflow_15_19_fu_13222_p2 = (tmp_977_reg_18281.read() & tmp83_fu_13216_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_1_fu_11645_p2() {
    underflow_15_1_fu_11645_p2 = (tmp_787_reg_17388.read() & tmp7_fu_11639_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_20_fu_13305_p2() {
    underflow_15_20_fu_13305_p2 = (tmp_987_reg_18328.read() & tmp87_fu_13299_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_21_fu_13388_p2() {
    underflow_15_21_fu_13388_p2 = (tmp_997_reg_18375.read() & tmp91_fu_13382_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_22_fu_13471_p2() {
    underflow_15_22_fu_13471_p2 = (tmp_1007_reg_18422.read() & tmp95_fu_13465_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_2_fu_11728_p2() {
    underflow_15_2_fu_11728_p2 = (tmp_797_reg_17435.read() & tmp11_fu_11722_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_3_fu_11811_p2() {
    underflow_15_3_fu_11811_p2 = (tmp_807_reg_17482.read() & tmp15_fu_11805_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_4_fu_11894_p2() {
    underflow_15_4_fu_11894_p2 = (tmp_817_reg_17529.read() & tmp19_fu_11888_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_5_fu_11977_p2() {
    underflow_15_5_fu_11977_p2 = (tmp_827_reg_17576.read() & tmp23_fu_11971_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_6_fu_12060_p2() {
    underflow_15_6_fu_12060_p2 = (tmp_837_reg_17623.read() & tmp27_fu_12054_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_7_fu_12143_p2() {
    underflow_15_7_fu_12143_p2 = (tmp_847_reg_17670.read() & tmp31_fu_12137_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_8_fu_12226_p2() {
    underflow_15_8_fu_12226_p2 = (tmp_857_reg_17717.read() & tmp35_fu_12220_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_9_fu_12309_p2() {
    underflow_15_9_fu_12309_p2 = (tmp_867_reg_17764.read() & tmp39_fu_12303_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_fu_11562_p2() {
    underflow_15_fu_11562_p2 = (tmp_777_reg_17341.read() & tmp3_fu_11556_p2.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_10_fu_13816_p2() {
    underflow_15_not_10_fu_13816_p2 = (tmp48_fu_13812_p2.read() | p_38_i_i_s_reg_18739.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_11_fu_13846_p2() {
    underflow_15_not_11_fu_13846_p2 = (tmp52_fu_13842_p2.read() | p_38_i_i_11_reg_18764.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_12_fu_13876_p2() {
    underflow_15_not_12_fu_13876_p2 = (tmp56_fu_13872_p2.read() | p_38_i_i_12_reg_18789.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_13_fu_13906_p2() {
    underflow_15_not_13_fu_13906_p2 = (tmp60_fu_13902_p2.read() | p_38_i_i_13_reg_18814.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_14_fu_13936_p2() {
    underflow_15_not_14_fu_13936_p2 = (tmp64_fu_13932_p2.read() | p_38_i_i_14_reg_18839.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_15_fu_13966_p2() {
    underflow_15_not_15_fu_13966_p2 = (tmp68_fu_13962_p2.read() | p_38_i_i_15_reg_18864.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_16_fu_13996_p2() {
    underflow_15_not_16_fu_13996_p2 = (tmp72_fu_13992_p2.read() | p_38_i_i_16_reg_18889.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_17_fu_14026_p2() {
    underflow_15_not_17_fu_14026_p2 = (tmp76_fu_14022_p2.read() | p_38_i_i_17_reg_18914.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_18_fu_14056_p2() {
    underflow_15_not_18_fu_14056_p2 = (tmp80_fu_14052_p2.read() | p_38_i_i_18_reg_18939.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_19_fu_14086_p2() {
    underflow_15_not_19_fu_14086_p2 = (tmp84_fu_14082_p2.read() | p_38_i_i_19_reg_18964.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_1_fu_13516_p2() {
    underflow_15_not_1_fu_13516_p2 = (tmp8_fu_13512_p2.read() | p_38_i_i_1_reg_18489.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_20_fu_14116_p2() {
    underflow_15_not_20_fu_14116_p2 = (tmp88_fu_14112_p2.read() | p_38_i_i_20_reg_18989.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_21_fu_14146_p2() {
    underflow_15_not_21_fu_14146_p2 = (tmp92_fu_14142_p2.read() | p_38_i_i_21_reg_19014.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_22_fu_14176_p2() {
    underflow_15_not_22_fu_14176_p2 = (tmp96_fu_14172_p2.read() | p_38_i_i_22_reg_19039.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_2_fu_13546_p2() {
    underflow_15_not_2_fu_13546_p2 = (tmp12_fu_13542_p2.read() | p_38_i_i_2_reg_18514.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_3_fu_13576_p2() {
    underflow_15_not_3_fu_13576_p2 = (tmp16_fu_13572_p2.read() | p_38_i_i_3_reg_18539.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_4_fu_13606_p2() {
    underflow_15_not_4_fu_13606_p2 = (tmp20_fu_13602_p2.read() | p_38_i_i_4_reg_18564.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_5_fu_13636_p2() {
    underflow_15_not_5_fu_13636_p2 = (tmp24_fu_13632_p2.read() | p_38_i_i_5_reg_18589.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_6_fu_13666_p2() {
    underflow_15_not_6_fu_13666_p2 = (tmp28_fu_13662_p2.read() | p_38_i_i_6_reg_18614.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_7_fu_13696_p2() {
    underflow_15_not_7_fu_13696_p2 = (tmp32_fu_13692_p2.read() | p_38_i_i_7_reg_18639.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_8_fu_13726_p2() {
    underflow_15_not_8_fu_13726_p2 = (tmp36_fu_13722_p2.read() | p_38_i_i_8_reg_18664.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_9_fu_13756_p2() {
    underflow_15_not_9_fu_13756_p2 = (tmp40_fu_13752_p2.read() | p_38_i_i_9_reg_18689.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_fu_13486_p2() {
    underflow_15_not_fu_13486_p2 = (tmp4_fu_13482_p2.read() | p_38_i_i_reg_18464.read());
}

void subconv_1x1_8_p::thread_underflow_15_not_s_fu_13786_p2() {
    underflow_15_not_s_fu_13786_p2 = (tmp44_fu_13782_p2.read() | p_38_i_i_10_reg_18714.read());
}

void subconv_1x1_8_p::thread_underflow_15_s_fu_12392_p2() {
    underflow_15_s_fu_12392_p2 = (tmp_877_reg_17811.read() & tmp43_fu_12386_p2.read());
}

void subconv_1x1_8_p::thread_underflow_16_fu_7442_p2() {
    underflow_16_fu_7442_p2 = (tmp_932_reg_16365.read() & tmp65_fu_7436_p2.read());
}

void subconv_1x1_8_p::thread_underflow_17_fu_7525_p2() {
    underflow_17_fu_7525_p2 = (tmp_942_reg_16412.read() & tmp69_fu_7519_p2.read());
}

void subconv_1x1_8_p::thread_underflow_18_fu_7608_p2() {
    underflow_18_fu_7608_p2 = (tmp_952_reg_16459.read() & tmp73_fu_7602_p2.read());
}

void subconv_1x1_8_p::thread_underflow_19_fu_7691_p2() {
    underflow_19_fu_7691_p2 = (tmp_962_reg_16506.read() & tmp77_fu_7685_p2.read());
}

void subconv_1x1_8_p::thread_underflow_1_fu_6197_p2() {
    underflow_1_fu_6197_p2 = (tmp_782_reg_15660.read() & tmp5_fu_6191_p2.read());
}

void subconv_1x1_8_p::thread_underflow_20_fu_7774_p2() {
    underflow_20_fu_7774_p2 = (tmp_972_reg_16553.read() & tmp81_fu_7768_p2.read());
}

void subconv_1x1_8_p::thread_underflow_21_fu_7857_p2() {
    underflow_21_fu_7857_p2 = (tmp_982_reg_16600.read() & tmp85_fu_7851_p2.read());
}

void subconv_1x1_8_p::thread_underflow_22_fu_7940_p2() {
    underflow_22_fu_7940_p2 = (tmp_992_reg_16647.read() & tmp89_fu_7934_p2.read());
}

void subconv_1x1_8_p::thread_underflow_23_fu_8023_p2() {
    underflow_23_fu_8023_p2 = (tmp_1002_reg_16694.read() & tmp93_fu_8017_p2.read());
}

void subconv_1x1_8_p::thread_underflow_2_fu_6280_p2() {
    underflow_2_fu_6280_p2 = (tmp_792_reg_15707.read() & tmp9_fu_6274_p2.read());
}

void subconv_1x1_8_p::thread_underflow_3_fu_6363_p2() {
    underflow_3_fu_6363_p2 = (tmp_802_reg_15754.read() & tmp13_fu_6357_p2.read());
}

void subconv_1x1_8_p::thread_underflow_4_fu_6446_p2() {
    underflow_4_fu_6446_p2 = (tmp_812_reg_15801.read() & tmp17_fu_6440_p2.read());
}

void subconv_1x1_8_p::thread_underflow_5_fu_6529_p2() {
    underflow_5_fu_6529_p2 = (tmp_822_reg_15848.read() & tmp21_fu_6523_p2.read());
}

void subconv_1x1_8_p::thread_underflow_6_fu_6612_p2() {
    underflow_6_fu_6612_p2 = (tmp_832_reg_15895.read() & tmp25_fu_6606_p2.read());
}

void subconv_1x1_8_p::thread_underflow_7_fu_6695_p2() {
    underflow_7_fu_6695_p2 = (tmp_842_reg_15942.read() & tmp29_fu_6689_p2.read());
}

void subconv_1x1_8_p::thread_underflow_8_fu_6778_p2() {
    underflow_8_fu_6778_p2 = (tmp_852_reg_15989.read() & tmp33_fu_6772_p2.read());
}

void subconv_1x1_8_p::thread_underflow_9_fu_6861_p2() {
    underflow_9_fu_6861_p2 = (tmp_862_reg_16036.read() & tmp37_fu_6855_p2.read());
}

void subconv_1x1_8_p::thread_underflow_fu_6114_p2() {
    underflow_fu_6114_p2 = (tmp_772_reg_15613.read() & tmp1_fu_6108_p2.read());
}

void subconv_1x1_8_p::thread_underflow_not_10_fu_8338_p2() {
    underflow_not_10_fu_8338_p2 = (tmp42_fu_8334_p2.read() | p_38_i_i8_s_reg_16986.read());
}

void subconv_1x1_8_p::thread_underflow_not_11_fu_8398_p2() {
    underflow_not_11_fu_8398_p2 = (tmp50_fu_8394_p2.read() | p_38_i_i8_11_reg_17036.read());
}

void subconv_1x1_8_p::thread_underflow_not_12_fu_8428_p2() {
    underflow_not_12_fu_8428_p2 = (tmp54_fu_8424_p2.read() | p_38_i_i8_12_reg_17061.read());
}

void subconv_1x1_8_p::thread_underflow_not_13_fu_8458_p2() {
    underflow_not_13_fu_8458_p2 = (tmp58_fu_8454_p2.read() | p_38_i_i8_13_reg_17086.read());
}

void subconv_1x1_8_p::thread_underflow_not_14_fu_8488_p2() {
    underflow_not_14_fu_8488_p2 = (tmp62_fu_8484_p2.read() | p_38_i_i8_14_reg_17111.read());
}

void subconv_1x1_8_p::thread_underflow_not_15_fu_8518_p2() {
    underflow_not_15_fu_8518_p2 = (tmp66_fu_8514_p2.read() | p_38_i_i8_15_reg_17136.read());
}

void subconv_1x1_8_p::thread_underflow_not_16_fu_8548_p2() {
    underflow_not_16_fu_8548_p2 = (tmp70_fu_8544_p2.read() | p_38_i_i8_16_reg_17161.read());
}

void subconv_1x1_8_p::thread_underflow_not_17_fu_8578_p2() {
    underflow_not_17_fu_8578_p2 = (tmp74_fu_8574_p2.read() | p_38_i_i8_17_reg_17186.read());
}

void subconv_1x1_8_p::thread_underflow_not_18_fu_8608_p2() {
    underflow_not_18_fu_8608_p2 = (tmp78_fu_8604_p2.read() | p_38_i_i8_18_reg_17211.read());
}

void subconv_1x1_8_p::thread_underflow_not_19_fu_8638_p2() {
    underflow_not_19_fu_8638_p2 = (tmp82_fu_8634_p2.read() | p_38_i_i8_19_reg_17236.read());
}

void subconv_1x1_8_p::thread_underflow_not_1_fu_8068_p2() {
    underflow_not_1_fu_8068_p2 = (tmp6_fu_8064_p2.read() | p_38_i_i8_1_reg_16761.read());
}

void subconv_1x1_8_p::thread_underflow_not_20_fu_8668_p2() {
    underflow_not_20_fu_8668_p2 = (tmp86_fu_8664_p2.read() | p_38_i_i8_20_reg_17261.read());
}

void subconv_1x1_8_p::thread_underflow_not_21_fu_8698_p2() {
    underflow_not_21_fu_8698_p2 = (tmp90_fu_8694_p2.read() | p_38_i_i8_21_reg_17286.read());
}

void subconv_1x1_8_p::thread_underflow_not_22_fu_8728_p2() {
    underflow_not_22_fu_8728_p2 = (tmp94_fu_8724_p2.read() | p_38_i_i8_22_reg_17311.read());
}

void subconv_1x1_8_p::thread_underflow_not_2_fu_8098_p2() {
    underflow_not_2_fu_8098_p2 = (tmp10_fu_8094_p2.read() | p_38_i_i8_2_reg_16786.read());
}

void subconv_1x1_8_p::thread_underflow_not_3_fu_8128_p2() {
    underflow_not_3_fu_8128_p2 = (tmp14_fu_8124_p2.read() | p_38_i_i8_3_reg_16811.read());
}

void subconv_1x1_8_p::thread_underflow_not_4_fu_8158_p2() {
    underflow_not_4_fu_8158_p2 = (tmp18_fu_8154_p2.read() | p_38_i_i8_4_reg_16836.read());
}

void subconv_1x1_8_p::thread_underflow_not_5_fu_8188_p2() {
    underflow_not_5_fu_8188_p2 = (tmp22_fu_8184_p2.read() | p_38_i_i8_5_reg_16861.read());
}

void subconv_1x1_8_p::thread_underflow_not_6_fu_8218_p2() {
    underflow_not_6_fu_8218_p2 = (tmp26_fu_8214_p2.read() | p_38_i_i8_6_reg_16886.read());
}

void subconv_1x1_8_p::thread_underflow_not_7_fu_8248_p2() {
    underflow_not_7_fu_8248_p2 = (tmp30_fu_8244_p2.read() | p_38_i_i8_7_reg_16911.read());
}

void subconv_1x1_8_p::thread_underflow_not_8_fu_8278_p2() {
    underflow_not_8_fu_8278_p2 = (tmp34_fu_8274_p2.read() | p_38_i_i8_8_reg_16936.read());
}

void subconv_1x1_8_p::thread_underflow_not_9_fu_8308_p2() {
    underflow_not_9_fu_8308_p2 = (tmp38_fu_8304_p2.read() | p_38_i_i8_9_reg_16961.read());
}

void subconv_1x1_8_p::thread_underflow_not_fu_8038_p2() {
    underflow_not_fu_8038_p2 = (tmp2_fu_8034_p2.read() | p_38_i_i8_reg_16736.read());
}

void subconv_1x1_8_p::thread_underflow_not_s_fu_8368_p2() {
    underflow_not_s_fu_8368_p2 = (tmp46_fu_8364_p2.read() | p_38_i_i8_10_reg_17011.read());
}

void subconv_1x1_8_p::thread_underflow_s_fu_7359_p2() {
    underflow_s_fu_7359_p2 = (tmp_922_reg_16318.read() & tmp61_fu_7353_p2.read());
}

void subconv_1x1_8_p::thread_w2_cast_cast4_fu_2481_p1() {
    w2_cast_cast4_fu_2481_p1 = esl_zext<14,4>(w2_reg_1798.read());
}

void subconv_1x1_8_p::thread_w2_cast_cast5_fu_2485_p1() {
    w2_cast_cast5_fu_2485_p1 = esl_zext<9,4>(w2_reg_1798.read());
}

void subconv_1x1_8_p::thread_w2_cast_cast_fu_2489_p1() {
    w2_cast_cast_fu_2489_p1 = esl_zext<8,4>(w2_reg_1798.read());
}

void subconv_1x1_8_p::thread_w6_cast_cast_fu_14398_p1() {
    w6_cast_cast_fu_14398_p1 = esl_zext<9,4>(w6_mid2_reg_19098.read());
}

void subconv_1x1_8_p::thread_w6_mid2_fu_14307_p3() {
    w6_mid2_fu_14307_p3 = (!tmp_304_fu_14302_p2.read()[0].is_01())? sc_lv<4>(): ((tmp_304_fu_14302_p2.read()[0].to_bool())? ap_const_lv4_1: w6_phi_fu_1870_p4.read());
}

void subconv_1x1_8_p::thread_w6_phi_fu_1870_p4() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp1_iter1_exitcond_flatten6_reg_19064.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter2.read()) && 
         esl_seteq<1,1,1>(ap_block_pp1_stage0_flag00000000.read(), ap_const_boolean_0))) {
        w6_phi_fu_1870_p4 = w_17_fu_14407_p2.read();
    } else {
        w6_phi_fu_1870_p4 = w6_reg_1866.read();
    }
}

void subconv_1x1_8_p::thread_w_15_fu_2292_p2() {
    w_15_fu_2292_p2 = (!w_mid2_reg_14534.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(w_mid2_reg_14534.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void subconv_1x1_8_p::thread_w_16_fu_2724_p2() {
    w_16_fu_2724_p2 = (!w2_reg_1798.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(w2_reg_1798.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void subconv_1x1_8_p::thread_w_17_fu_14407_p2() {
    w_17_fu_14407_p2 = (!w6_mid2_reg_19098.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(w6_mid2_reg_19098.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void subconv_1x1_8_p::thread_w_cast_cast_fu_2395_p1() {
    w_cast_cast_fu_2395_p1 = esl_zext<9,4>(ap_reg_pp0_iter8_w_mid2_reg_14534.read());
}

void subconv_1x1_8_p::thread_w_mid2_fu_2276_p3() {
    w_mid2_fu_2276_p3 = (!tmp_291_fu_2271_p2.read()[0].is_01())? sc_lv<4>(): ((tmp_291_fu_2271_p2.read()[0].to_bool())? ap_const_lv4_1: w_phi_fu_1778_p4.read());
}

void subconv_1x1_8_p::thread_w_phi_fu_1778_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_reg_pp0_iter1_exitcond_flatten4_reg_14505.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00000000.read(), ap_const_boolean_0))) {
        w_phi_fu_1778_p4 = w_15_fu_2292_p2.read();
    } else {
        w_phi_fu_1778_p4 = w_reg_1774.read();
    }
}

void subconv_1x1_8_p::thread_weight_0_V_address0() {
    weight_0_V_address0 = weight_0_V_addr_reg_14847.read();
}

void subconv_1x1_8_p::thread_weight_0_V_address1() {
    weight_0_V_address1 = weight_0_V_addr_4_reg_14852.read();
}

void subconv_1x1_8_p::thread_weight_0_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_0_V_ce0 = ap_const_logic_1;
    } else {
        weight_0_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_0_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_0_V_ce1 = ap_const_logic_1;
    } else {
        weight_0_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_10_V_address0() {
    weight_10_V_address0 = weight_10_V_addr_reg_14947.read();
}

void subconv_1x1_8_p::thread_weight_10_V_address1() {
    weight_10_V_address1 = weight_10_V_addr_4_reg_14952.read();
}

void subconv_1x1_8_p::thread_weight_10_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_10_V_ce0 = ap_const_logic_1;
    } else {
        weight_10_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_10_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_10_V_ce1 = ap_const_logic_1;
    } else {
        weight_10_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_11_V_address0() {
    weight_11_V_address0 = weight_11_V_addr_reg_14957.read();
}

void subconv_1x1_8_p::thread_weight_11_V_address1() {
    weight_11_V_address1 = weight_11_V_addr_4_reg_14962.read();
}

void subconv_1x1_8_p::thread_weight_11_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_11_V_ce0 = ap_const_logic_1;
    } else {
        weight_11_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_11_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_11_V_ce1 = ap_const_logic_1;
    } else {
        weight_11_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_12_V_address0() {
    weight_12_V_address0 = weight_12_V_addr_reg_14967.read();
}

void subconv_1x1_8_p::thread_weight_12_V_address1() {
    weight_12_V_address1 = weight_12_V_addr_4_reg_14972.read();
}

void subconv_1x1_8_p::thread_weight_12_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_12_V_ce0 = ap_const_logic_1;
    } else {
        weight_12_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_12_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_12_V_ce1 = ap_const_logic_1;
    } else {
        weight_12_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_13_V_address0() {
    weight_13_V_address0 = weight_13_V_addr_reg_14977.read();
}

void subconv_1x1_8_p::thread_weight_13_V_address1() {
    weight_13_V_address1 = weight_13_V_addr_4_reg_14982.read();
}

void subconv_1x1_8_p::thread_weight_13_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_13_V_ce0 = ap_const_logic_1;
    } else {
        weight_13_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_13_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_13_V_ce1 = ap_const_logic_1;
    } else {
        weight_13_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_14_V_address0() {
    weight_14_V_address0 = weight_14_V_addr_reg_14987.read();
}

void subconv_1x1_8_p::thread_weight_14_V_address1() {
    weight_14_V_address1 = weight_14_V_addr_4_reg_14992.read();
}

void subconv_1x1_8_p::thread_weight_14_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_14_V_ce0 = ap_const_logic_1;
    } else {
        weight_14_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_14_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_14_V_ce1 = ap_const_logic_1;
    } else {
        weight_14_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_15_V_address0() {
    weight_15_V_address0 = weight_15_V_addr_reg_14997.read();
}

void subconv_1x1_8_p::thread_weight_15_V_address1() {
    weight_15_V_address1 = weight_15_V_addr_4_reg_15002.read();
}

void subconv_1x1_8_p::thread_weight_15_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_15_V_ce0 = ap_const_logic_1;
    } else {
        weight_15_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_15_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_15_V_ce1 = ap_const_logic_1;
    } else {
        weight_15_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_16_V_address0() {
    weight_16_V_address0 = weight_16_V_addr_reg_15007.read();
}

void subconv_1x1_8_p::thread_weight_16_V_address1() {
    weight_16_V_address1 = weight_16_V_addr_4_reg_15012.read();
}

void subconv_1x1_8_p::thread_weight_16_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_16_V_ce0 = ap_const_logic_1;
    } else {
        weight_16_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_16_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_16_V_ce1 = ap_const_logic_1;
    } else {
        weight_16_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_17_V_address0() {
    weight_17_V_address0 = weight_17_V_addr_reg_15017.read();
}

void subconv_1x1_8_p::thread_weight_17_V_address1() {
    weight_17_V_address1 = weight_17_V_addr_4_reg_15022.read();
}

void subconv_1x1_8_p::thread_weight_17_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_17_V_ce0 = ap_const_logic_1;
    } else {
        weight_17_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_17_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_17_V_ce1 = ap_const_logic_1;
    } else {
        weight_17_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_18_V_address0() {
    weight_18_V_address0 = weight_18_V_addr_reg_15027.read();
}

void subconv_1x1_8_p::thread_weight_18_V_address1() {
    weight_18_V_address1 = weight_18_V_addr_4_reg_15032.read();
}

void subconv_1x1_8_p::thread_weight_18_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_18_V_ce0 = ap_const_logic_1;
    } else {
        weight_18_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_18_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_18_V_ce1 = ap_const_logic_1;
    } else {
        weight_18_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_19_V_address0() {
    weight_19_V_address0 = weight_19_V_addr_reg_15037.read();
}

void subconv_1x1_8_p::thread_weight_19_V_address1() {
    weight_19_V_address1 = weight_19_V_addr_4_reg_15042.read();
}

void subconv_1x1_8_p::thread_weight_19_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_19_V_ce0 = ap_const_logic_1;
    } else {
        weight_19_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_19_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_19_V_ce1 = ap_const_logic_1;
    } else {
        weight_19_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_1_V_address0() {
    weight_1_V_address0 = weight_1_V_addr_reg_14857.read();
}

void subconv_1x1_8_p::thread_weight_1_V_address1() {
    weight_1_V_address1 = weight_1_V_addr_4_reg_14862.read();
}

void subconv_1x1_8_p::thread_weight_1_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_1_V_ce0 = ap_const_logic_1;
    } else {
        weight_1_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_1_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_1_V_ce1 = ap_const_logic_1;
    } else {
        weight_1_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_20_V_address0() {
    weight_20_V_address0 = weight_20_V_addr_reg_15047.read();
}

void subconv_1x1_8_p::thread_weight_20_V_address1() {
    weight_20_V_address1 = weight_20_V_addr_4_reg_15052.read();
}

void subconv_1x1_8_p::thread_weight_20_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_20_V_ce0 = ap_const_logic_1;
    } else {
        weight_20_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_20_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_20_V_ce1 = ap_const_logic_1;
    } else {
        weight_20_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_21_V_address0() {
    weight_21_V_address0 = weight_21_V_addr_reg_15057.read();
}

void subconv_1x1_8_p::thread_weight_21_V_address1() {
    weight_21_V_address1 = weight_21_V_addr_4_reg_15062.read();
}

void subconv_1x1_8_p::thread_weight_21_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_21_V_ce0 = ap_const_logic_1;
    } else {
        weight_21_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_21_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_21_V_ce1 = ap_const_logic_1;
    } else {
        weight_21_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_22_V_address0() {
    weight_22_V_address0 = weight_22_V_addr_reg_15067.read();
}

void subconv_1x1_8_p::thread_weight_22_V_address1() {
    weight_22_V_address1 = weight_22_V_addr_4_reg_15072.read();
}

void subconv_1x1_8_p::thread_weight_22_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_22_V_ce0 = ap_const_logic_1;
    } else {
        weight_22_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_22_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_22_V_ce1 = ap_const_logic_1;
    } else {
        weight_22_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_23_V_address0() {
    weight_23_V_address0 = weight_23_V_addr_reg_15077.read();
}

void subconv_1x1_8_p::thread_weight_23_V_address1() {
    weight_23_V_address1 = weight_23_V_addr_4_reg_15082.read();
}

void subconv_1x1_8_p::thread_weight_23_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_23_V_ce0 = ap_const_logic_1;
    } else {
        weight_23_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_23_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_23_V_ce1 = ap_const_logic_1;
    } else {
        weight_23_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_2_V_address0() {
    weight_2_V_address0 = weight_2_V_addr_reg_14867.read();
}

void subconv_1x1_8_p::thread_weight_2_V_address1() {
    weight_2_V_address1 = weight_2_V_addr_4_reg_14872.read();
}

void subconv_1x1_8_p::thread_weight_2_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_2_V_ce0 = ap_const_logic_1;
    } else {
        weight_2_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_2_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_2_V_ce1 = ap_const_logic_1;
    } else {
        weight_2_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_3_V_address0() {
    weight_3_V_address0 = weight_3_V_addr_reg_14877.read();
}

void subconv_1x1_8_p::thread_weight_3_V_address1() {
    weight_3_V_address1 = weight_3_V_addr_4_reg_14882.read();
}

void subconv_1x1_8_p::thread_weight_3_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_3_V_ce0 = ap_const_logic_1;
    } else {
        weight_3_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_3_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_3_V_ce1 = ap_const_logic_1;
    } else {
        weight_3_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_4_V_address0() {
    weight_4_V_address0 = weight_4_V_addr_reg_14887.read();
}

void subconv_1x1_8_p::thread_weight_4_V_address1() {
    weight_4_V_address1 = weight_4_V_addr_4_reg_14892.read();
}

void subconv_1x1_8_p::thread_weight_4_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_4_V_ce0 = ap_const_logic_1;
    } else {
        weight_4_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_4_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_4_V_ce1 = ap_const_logic_1;
    } else {
        weight_4_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_5_V_address0() {
    weight_5_V_address0 = weight_5_V_addr_reg_14897.read();
}

void subconv_1x1_8_p::thread_weight_5_V_address1() {
    weight_5_V_address1 = weight_5_V_addr_4_reg_14902.read();
}

void subconv_1x1_8_p::thread_weight_5_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_5_V_ce0 = ap_const_logic_1;
    } else {
        weight_5_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_5_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_5_V_ce1 = ap_const_logic_1;
    } else {
        weight_5_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_6_V_address0() {
    weight_6_V_address0 = weight_6_V_addr_reg_14907.read();
}

void subconv_1x1_8_p::thread_weight_6_V_address1() {
    weight_6_V_address1 = weight_6_V_addr_4_reg_14912.read();
}

void subconv_1x1_8_p::thread_weight_6_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_6_V_ce0 = ap_const_logic_1;
    } else {
        weight_6_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_6_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_6_V_ce1 = ap_const_logic_1;
    } else {
        weight_6_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_7_V_address0() {
    weight_7_V_address0 = weight_7_V_addr_reg_14917.read();
}

void subconv_1x1_8_p::thread_weight_7_V_address1() {
    weight_7_V_address1 = weight_7_V_addr_4_reg_14922.read();
}

void subconv_1x1_8_p::thread_weight_7_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_7_V_ce0 = ap_const_logic_1;
    } else {
        weight_7_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_7_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_7_V_ce1 = ap_const_logic_1;
    } else {
        weight_7_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_8_V_address0() {
    weight_8_V_address0 = weight_8_V_addr_reg_14927.read();
}

void subconv_1x1_8_p::thread_weight_8_V_address1() {
    weight_8_V_address1 = weight_8_V_addr_4_reg_14932.read();
}

void subconv_1x1_8_p::thread_weight_8_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_8_V_ce0 = ap_const_logic_1;
    } else {
        weight_8_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_8_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_8_V_ce1 = ap_const_logic_1;
    } else {
        weight_8_V_ce1 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_9_V_address0() {
    weight_9_V_address0 = weight_9_V_addr_reg_14937.read();
}

void subconv_1x1_8_p::thread_weight_9_V_address1() {
    weight_9_V_address1 = weight_9_V_addr_4_reg_14942.read();
}

void subconv_1x1_8_p::thread_weight_9_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_9_V_ce0 = ap_const_logic_1;
    } else {
        weight_9_V_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_8_p::thread_weight_9_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        weight_9_V_ce1 = ap_const_logic_1;
    } else {
        weight_9_V_ce1 = ap_const_logic_0;
    }
}

}

