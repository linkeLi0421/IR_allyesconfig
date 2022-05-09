; ModuleID = '/llk/IR_all_yes/crypto/twofish_common.c_pt.bc'
source_filename = "../crypto/twofish_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__twofish_setkey\22, \22a\22\09"
module asm "\09.weak\09__crc___twofish_setkey\09\09\09\09"
module asm "\09.long\09__crc___twofish_setkey\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___twofish_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22__twofish_setkey\22\09\09\09\09\09"
module asm "__kstrtabns___twofish_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+twofish_setkey\22, \22a\22\09"
module asm "\09.weak\09__crc_twofish_setkey\09\09\09\09"
module asm "\09.long\09__crc_twofish_setkey\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twofish_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22twofish_setkey\22\09\09\09\09\09"
module asm "__kstrtabns_twofish_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.twofish_ctx = type { [4 x [256 x i32]], [8 x i32], [32 x i32] }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@poly_to_exp = internal constant { [255 x i8], [33 x i8] } { [255 x i8] c"\00\01\17\02.\18S\03j/\93\194TE\04\\k\B60\A6\94K\1A\8C5\81U\AAF\0D\05$]\87l\9B\B7\C11+\A7\A3\95\98L\CA\1B\E6\8Ds6\CD\82\12Vb\AB\F0GO\0E\BD\06\D4%\D2^'\88fm\D6\9Cy\B8\08\C2\DF2h,\FD\A8\8A\A4Z\96)\99\22M`\CB\E4\1C{\E7;\8E\9Et\F47\D8\CE\F9\83o\13\B2W\E1c\DC\AC\C4\F1\AFH\0APB\0F\BA\BE\C7\07\DE\D5x&e\D3\D1_\E3(!\89Yg\FCn\B1\D7\F8\9D\F3z:\B9\C6\09A\C3\AE\E0\DB3Di\92-R\FE\16\A9\0C\8B\80\A5J[\B5\97\C9*\A2\9A\C0#\86N\BCa\EF\CC\11\E5r\1D=|\EB\E8\E9<\EA\8F}\9F\ECu\1E\F5>8\F6\D9?\CFv\FA\1F\84\A0p\ED\14\90\B3~X\FB\E2 d\D0\DDw\AD\DA\C5@\F29\B0\F7I\B4\0B\7FQ\15C\91\10q\BB\EE\BF\85\C8\A1", [33 x i8] zeroinitializer }, align 32
@exp_to_poly = internal constant { [492 x i8], [116 x i8] } { [492 x i8] c"\01\02\04\08\10 @\80M\9Ay\F2\A9\1F>|\F8\BD7n\DC\F5\A7\03\06\0C\180`\C0\CD\D7\E3\8B[\B6!B\84E\8AY\B2)R\A4\05\0A\14(P\A0\0D\1A4h\D0\ED\97c\C6\C1\CF\D3\EB\9B{\F6\A1\0F\1E<x\F0\AD\17.\\\B8=z\F4\A5\07\0E\1C8p\E0\8DW\AE\11\22D\88]\BA9r\E4\85G\8EQ\A2\09\12$H\90m\DA\F9\BF3f\CC\D5\E7\83K\96a\C2\C9\DF\F3\AB\1B6l\D8\FD\B7#F\8CU\AA\192d\C8\DD\F7\A3\0B\16,X\B0-Z\B4%J\94e\CA\D9\FF\B3+V\AC\15*T\A8\1D:t\E8\9Dw\EE\91o\DE\F1\AF\13&L\98}\FA\B9?~\FC\B5'N\9Cu\EA\99\7F\FE\B1/^\BC5j\D4\E5\87C\86A\82I\92i\D2\E9\9Fs\E6\81O\9Eq\E2\89_\BE1b\C4\C5\C7\C3\CB\DB\FB\BB;v\EC\95g\CE\D1\EF\93k\D6\E1\8FS\A6\01\02\04\08\10 @\80M\9Ay\F2\A9\1F>|\F8\BD7n\DC\F5\A7\03\06\0C\180`\C0\CD\D7\E3\8B[\B6!B\84E\8AY\B2)R\A4\05\0A\14(P\A0\0D\1A4h\D0\ED\97c\C6\C1\CF\D3\EB\9B{\F6\A1\0F\1E<x\F0\AD\17.\\\B8=z\F4\A5\07\0E\1C8p\E0\8DW\AE\11\22D\88]\BA9r\E4\85G\8EQ\A2\09\12$H\90m\DA\F9\BF3f\CC\D5\E7\83K\96a\C2\C9\DF\F3\AB\1B6l\D8\FD\B7#F\8CU\AA\192d\C8\DD\F7\A3\0B\16,X\B0-Z\B4%J\94e\CA\D9\FF\B3+V\AC\15*T\A8\1D:t\E8\9Dw\EE\91o\DE\F1\AF\13&L\98}\FA\B9?~\FC\B5'N\9Cu\EA\99\7F\FE\B1/^\BC5j\D4\E5\87C\86A\82I\92i\D2\E9\9Fs\E6\81O\9Eq\E2\89_\BE1b\C4\C5\C7\C3\CB", [116 x i8] zeroinitializer }, align 32
@mds = internal constant { [4 x [256 x i32]], [1024 x i8] } { [4 x [256 x i32]] [[256 x i32] [i32 -1128517003, i32 -320069133, i32 538985414, i32 -1280062988, i32 -623246373, i32 33721211, i32 -488494085, i32 -1633748280, i32 -909513654, i32 -724301357, i32 404253670, i32 505323371, i32 -1734865339, i32 -1296942979, i32 -1499016472, i32 640071499, i32 1010587606, i32 -1819047374, i32 -2105348392, i32 1381144829, i32 2071712823, i32 -1145358479, i32 1532729329, i32 1195869153, i32 606354480, i32 1364320783, i32 -1162164488, i32 1246425883, i32 -1077983097, i32 218984698, i32 -1330597114, i32 1970658879, i32 -757924514, i32 2105352378, i32 1717973422, i32 976921435, i32 1499012234, i32 0, i32 -842165316, i32 437969053, i32 -1364317075, i32 2139073473, i32 724289457, i32 -1094797042, i32 -522149760, i32 -1970663331, i32 993743570, i32 1684323029, i32 -656897888, i32 -404249212, i32 1600120839, i32 454758676, i32 741130933, i32 -50547568, i32 825304876, i32 -2139069021, i32 1936927410, i32 202146163, i32 2037997388, i32 1802191188, i32 1263207058, i32 1397975412, i32 -1802203338, i32 -2088558767, i32 707409464, i32 -993747792, i32 572704957, i32 -707397542, i32 -1111636996, i32 1212708960, i32 -12702, i32 1280051094, i32 1094809452, i32 -943200702, i32 -336911113, i32 471602192, i32 1566401404, i32 909517352, i32 1734852647, i32 -370561140, i32 1145370899, i32 336915093, i32 -168445028, i32 -808511289, i32 1061104932, i32 -1061100730, i32 1920129851, i32 1414818928, i32 690572490, i32 -252693021, i32 134807173, i32 -960096309, i32 -202158319, i32 -1936923440, i32 -1532733037, i32 -892692808, i32 1751661478, i32 -1195881085, i32 943204384, i32 -437965057, i32 -1381149025, i32 185304183, i32 -926409277, i32 -1717960756, i32 1482222851, i32 421108335, i32 235801096, i32 -1785364801, i32 1886408768, i32 -134795033, i32 1852755755, i32 522153698, i32 -1246413447, i32 151588620, i32 1633760426, i32 1465325186, i32 -1616966847, i32 -1650622406, i32 286352618, i32 623234489, i32 -1347428892, i32 1162152090, i32 -538997340, i32 -1549575017, i32 -353708674, i32 892688602, i32 -303181702, i32 1128528919, i32 -117912730, i32 -67391084, i32 926405537, i32 -84262883, i32 -1027446723, i32 -1263219472, i32 842161630, i32 -1667468877, i32 1448535819, i32 -471606670, i32 -2021171033, i32 353704732, i32 -101106961, i32 1667481553, i32 875866451, i32 -1701149378, i32 -1313783153, i32 2088554803, i32 -2004313306, i32 1027450463, i32 -1583228948, i32 -454762634, i32 -2122214358, i32 -1852767927, i32 252705665, i32 -286348664, i32 370565614, i32 -673746143, i32 -1751648828, i32 -1515870182, i32 -16891925, i32 1835906521, i32 2021174981, i32 -976917191, i32 488498585, i32 1987486925, i32 1044307117, i32 -875862223, i32 -1229568117, i32 -269526271, i32 303177240, i32 1616954659, i32 1785376989, i32 1296954911, i32 -825300658, i32 -555844563, i32 1431674361, i32 2122209864, i32 555856463, i32 50559730, i32 -1600117147, i32 1583225230, i32 1515873912, i32 1701137244, i32 1650609752, i32 -33733351, i32 101119117, i32 1077970661, i32 -218972520, i32 859024471, i32 387420263, i32 84250239, i32 -387424763, i32 1330609508, i32 -1987482961, i32 269522275, i32 1953771446, i32 168457726, i32 1549570805, i32 -1684310857, i32 757936956, i32 808507045, i32 774785486, i32 1229556201, i32 1179021928, i32 2004309316, i32 -1465329440, i32 -1768553395, i32 673758531, i32 -1448531607, i32 -640059095, i32 -2038001362, i32 -774797396, i32 -185316843, i32 -1920133799, i32 -690584920, i32 -1179010038, i32 1111625118, i32 -151600786, i32 791656519, i32 -572717345, i32 589510964, i32 -859020747, i32 -235813782, i32 -1044311345, i32 -2054820900, i32 -1886413278, i32 1903272393, i32 -1869549376, i32 -1431678053, i32 16904585, i32 -1953766956, i32 1313770733, i32 -1903267925, i32 -1414815214, i32 1869561506, i32 -421112819, i32 -606342574, i32 -1835893829, i32 -1212697086, i32 1768540719, i32 960092585, i32 -741143337, i32 -1482218655, i32 -1566397154, i32 -1010591308, i32 1819034704, i32 117900548, i32 67403766, i32 656885442, i32 -1397971178, i32 -791644635, i32 1347425158, i32 -589498538, i32 -2071717291, i32 -505327351, i32 2054825406, i32 320073617], [256 x i32] [i32 -1445381831, i32 1737496343, i32 -1284399972, i32 -388847962, i32 67438343, i32 -40349102, i32 -1553629056, i32 1994384612, i32 -1710734011, i32 -1845343413, i32 -2136940320, i32 2019973722, i32 -455233617, i32 -575640982, i32 -775986333, i32 943073834, i32 223667942, i32 -968679392, i32 895667404, i32 -1732316430, i32 404623890, i32 -148575253, i32 -321412703, i32 1819754817, i32 1136470056, i32 1966259388, i32 936672123, i32 647727240, i32 -93319923, i32 335103044, i32 -1800274949, i32 1213890174, i32 -226884861, i32 -790328180, i32 -1958234442, i32 809247780, i32 -2069501977, i32 1413573483, i32 -553198115, i32 600137824, i32 424017405, i32 1537423930, i32 1030275778, i32 1494584717, i32 -215880468, i32 -1372494234, i32 -1572966545, i32 -2112465065, i32 1670713360, i32 22802415, i32 -2092058440, i32 781289094, i32 -642421395, i32 1361019779, i32 -1689015638, i32 2086886749, i32 -1506056088, i32 -348127490, i32 -1512689616, i32 -1104840070, i32 380087468, i32 202311945, i32 -483004176, i32 1629726631, i32 -1057976176, i32 -1934628375, i32 981507485, i32 -174957476, i32 1937837068, i32 740766001, i32 628543696, i32 199710294, i32 -1149529454, i32 1323945678, i32 -1980694271, i32 1805590046, i32 1403597876, i32 1791291889, i32 -1264991293, i32 -241738917, i32 -511490233, i32 -429189096, i32 -1110957534, i32 1158584472, i32 -496099553, i32 -188107853, i32 -1238403980, i32 1724643576, i32 -855664231, i32 -1779821548, i32 65886296, i32 1459084508, i32 -723416181, i32 471536917, i32 514695842, i32 -687025197, i32 -81009950, i32 -1021458232, i32 -1910940066, i32 -1245565908, i32 -376878775, i32 -820854335, i32 -1082223211, i32 -1172275843, i32 -362540783, i32 2005142283, i32 963495365, i32 -1351972471, i32 869366908, i32 -912166543, i32 1657733119, i32 1899477947, i32 -2114253041, i32 2034087349, i32 156361185, i32 -1378075074, i32 606945087, i32 -844859786, i32 -107129515, i32 -655457662, i32 -444186560, i32 -978421640, i32 -1177737947, i32 1292146326, i32 1146451831, i32 134876686, i32 -2045554608, i32 -416221193, i32 -1579993289, i32 490797818, i32 -1439407775, i32 -309572018, i32 112439472, i32 1886147668, i32 -1305840781, i32 -766362821, i32 1091280799, i32 2072707586, i32 -1601644328, i32 290452467, i32 828885963, i32 -1035589849, i32 666920807, i32 -1867186948, i32 539506744, i32 -159448060, i32 1618495560, i32 -13703707, i32 -1777906612, i32 1548445029, i32 -1312347349, i32 -1418752370, i32 -1643298238, i32 -1665403403, i32 1391647707, i32 468929098, i32 1604730173, i32 -1822841692, i32 180140473, i32 -281347591, i32 -1846602989, i32 -2046949368, i32 1224839569, i32 -295627242, i32 763158238, i32 1337073953, i32 -1891454543, i32 1004237426, i32 1203253039, i32 -2025275457, i32 1831644846, i32 1189331136, i32 -698926020, i32 1048943258, i32 1764338089, i32 1685933903, i32 714375553, i32 -834064850, i32 -887634234, i32 801794409, i32 -54280771, i32 -1755536477, i32 90106088, i32 2060512749, i32 -1400385071, i32 2140013829, i32 -709204892, i32 447260069, i32 1270294054, i32 247054014, i32 -1486846073, i32 1526257109, i32 673330742, i32 336665371, i32 1071543669, i32 695851481, i32 -2002063634, i32 1009986861, i32 1281325433, i32 45529015, i32 -1198077238, i32 -631753419, i32 -1331903292, i32 402408259, i32 1427801220, i32 536235341, i32 -1977853607, i32 2100867762, i32 1470903091, i32 -954675249, i32 -1913387514, i32 1953059667, i32 -1217094757, i32 -990537833, i32 -1621709395, i32 1926947811, i32 2127948522, i32 357233908, i32 580816783, i32 312650667, i32 1481532002, i32 132669279, i32 -1713038051, i32 876159779, i32 1858205430, i32 1346661484, i32 -564317646, i32 1752319558, i32 1697030304, i32 -1131164211, i32 -620504358, i32 -121193798, i32 -923099490, i32 -1467820330, i32 735014510, i32 1079013488, i32 -588544635, i32 -25884150, i32 847942547, i32 -1534205985, i32 -900978391, i32 269753372, i32 561240023, i32 -255019852, i32 -754330412, i32 1561365130, i32 266490193, i32 0, i32 1872369945, i32 -1646257638, i32 915379348, i32 1122420679, i32 1257032137, i32 1593692882, i32 -1045725313, i32 -522671960], [256 x i32] [i32 -1133134798, i32 -319558623, i32 549855299, i32 -1275808823, i32 -623126013, i32 41616011, i32 -486809045, i32 -1631019270, i32 -917845524, i32 -724315127, i32 417732715, i32 510336671, i32 -1740269554, i32 -1300385224, i32 -1494702382, i32 642459319, i32 1020673111, i32 -1825401974, i32 -2099739922, i32 1392333464, i32 2067233748, i32 -1150174409, i32 1542544279, i32 1205946243, i32 607134780, i32 1359958498, i32 -1158104378, i32 1243302643, i32 -1081622712, i32 234491248, i32 -1341738829, i32 1967093214, i32 -765537539, i32 2109373728, i32 1722705457, i32 979057315, i32 1502239004, i32 0, i32 -843264621, i32 446503648, i32 -1368543700, i32 2143387563, i32 733031367, i32 -1106329927, i32 -528424800, i32 -1973581296, i32 1003633490, i32 1691706554, i32 -660547448, i32 -410720347, i32 1594318824, i32 454302481, i32 750070978, i32 -57606988, i32 824979751, i32 -2136768411, i32 1941074730, i32 208866433, i32 2035054943, i32 1800694593, i32 1267878658, i32 1400132457, i32 -1808362353, i32 -2091810017, i32 708323894, i32 -995048292, i32 582820552, i32 -715467272, i32 -1107509821, i32 1214269560, i32 -10289202, i32 1284918279, i32 1097613687, i32 -951924762, i32 -336073948, i32 470817812, i32 1568431459, i32 908604962, i32 1730635712, i32 -376641105, i32 1142113529, i32 345314538, i32 -174262853, i32 -808988904, i32 1059340077, i32 -1069104925, i32 1916498651, i32 1416647788, i32 701114700, i32 -253497291, i32 142936318, i32 -959724009, i32 -216927409, i32 -1932489500, i32 -1533828007, i32 -893859178, i32 1755736123, i32 -1199327155, i32 941635624, i32 -436214482, i32 -1382044330, i32 192351108, i32 -926693347, i32 -1714644481, i32 1476614381, i32 426711450, i32 235408906, i32 -1782606466, i32 1883271248, i32 -135792848, i32 1848340175, i32 534912878, i32 -1250314947, i32 151783695, i32 1638555956, i32 1468159766, i32 -1623089397, i32 -1657102976, i32 300552548, i32 632890829, i32 -1343967267, i32 1167738120, i32 -542842995, i32 -1550343332, i32 -360781099, i32 903492952, i32 -310710832, i32 1125598204, i32 -127469365, i32 -74122319, i32 933312467, i32 -98698688, i32 -1036139928, i32 -1259293492, i32 853422685, i32 -1665950607, i32 1443583719, i32 -479009830, i32 -2019063968, i32 354161947, i32 -101713606, i32 1674666943, i32 877868201, i32 -1707173243, i32 -1315983038, i32 2083749073, i32 -2010740581, i32 1029651878, i32 -1578327593, i32 -461970209, i32 -2127920748, i32 -1857449727, i32 260116475, i32 -293015894, i32 384702049, i32 -685648013, i32 -1748723723, i32 -1524980312, i32 -18088385, i32 1842965941, i32 2026207406, i32 -986069651, i32 496573925, i32 1993176740, i32 1051541212, i32 -885929113, i32 -1232357817, i32 -285085861, i32 303567390, i32 1612931269, i32 1792895664, i32 1293897206, i32 -833696023, i32 -567419268, i32 1442403741, i32 2118680154, i32 558834098, i32 66192250, i32 -1603952602, i32 1586388505, i32 1517836902, i32 1700554059, i32 1649959502, i32 -48628411, i32 109905652, i32 1088766086, i32 -224857410, i32 861352876, i32 392632208, i32 92210574, i32 -402266018, i32 1331974013, i32 -1984984726, i32 274927765, i32 1958114351, i32 184420981, i32 1559583890, i32 -1682465932, i32 758918451, i32 816132310, i32 785264201, i32 1240025481, i32 1181238898, i32 2000975701, i32 -1461671720, i32 -1773300220, i32 675489981, i32 -1452693207, i32 -651568775, i32 -2043771247, i32 -777203321, i32 -199887798, i32 -1923511019, i32 -693578110, i32 -1190479428, i32 1117667853, i32 -160500031, i32 793194424, i32 -572531450, i32 590619449, i32 -868889502, i32 -244649532, i32 -1043349230, i32 -2049145365, i32 -1893560418, i32 1909027233, i32 -1866428176, i32 -1432638893, i32 25756145, i32 -1949004831, i32 1324174988, i32 -1901359505, i32 -1424839774, i32 1872916286, i32 -435296684, i32 -615326734, i32 -1833201029, i32 -1224558666, i32 1764714954, i32 967391705, i32 -740830452, i32 -1486772445, i32 -1575050579, i32 -1011563623, i32 1817209924, i32 117704453, i32 83231871, i32 667035462, i32 -1407800153, i32 -802828170, i32 1350979603, i32 -598287113, i32 -2074770406, i32 -519446191, i32 2059303461, i32 328274927], [256 x i32] [i32 -650532391, i32 -1877514352, i32 1906094961, i32 -760813358, i32 84345861, i32 -1739391592, i32 1702929253, i32 -538675489, i32 138779144, i32 38507010, i32 -1595899744, i32 1717205094, i32 -575675171, i32 -1335173712, i32 -1083977281, i32 908736566, i32 1424362836, i32 1126221379, i32 1657550178, i32 -1091397442, i32 504502302, i32 619444004, i32 -677253929, i32 2000776311, i32 -1121434691, i32 851211570, i32 -730122284, i32 -1685576037, i32 1879964272, i32 -112978951, i32 -1308912463, i32 1518225498, i32 2047079034, i32 -460533532, i32 1203145543, i32 1009004604, i32 -1511553883, i32 1097552961, i32 115203846, i32 -983555131, i32 1174214981, i32 -1556456541, i32 1757560168, i32 361584917, i32 569176865, i32 828812849, i32 1047503422, i32 374833686, i32 -1794088043, i32 1542390107, i32 1303937869, i32 -1853477231, i32 -1251092043, i32 528699679, i32 1403689811, i32 1667071075, i32 996714043, i32 1073670975, i32 -701454890, i32 628801061, i32 -1481894233, i32 252251151, i32 904979253, i32 598171939, i32 -258948880, i32 -1343648593, i32 -2137179520, i32 -1839401582, i32 -2129890431, i32 657533991, i32 1993352566, i32 -413791257, i32 2073213819, i32 -372355351, i32 -251557391, i32 -1625396321, i32 -1456188503, i32 -990811452, i32 -1715227495, i32 -1755582057, i32 -2092441213, i32 1796793963, i32 -937247288, i32 244860174, i32 1847583342, i32 -910953271, i32 796177967, i32 -872913205, i32 -6697729, i32 -367749654, i32 -312998931, i32 -136554761, i32 -510929695, i32 454368283, i32 -1381884243, i32 215209740, i32 736295723, i32 499696413, i32 425627161, i32 -1037257278, i32 -1991644791, i32 314691346, i32 2123743102, i32 545110560, i32 1678895716, i32 -2079623292, i32 1841641837, i32 1787408234, i32 -780389423, i32 -1586378335, i32 -822123826, i32 935031095, i32 -82869765, i32 1035303229, i32 1373702481, i32 -599872036, i32 759112749, i32 -1535717980, i32 -1655309923, i32 -293414674, i32 -2042567290, i32 -1367816786, i32 -853165619, i32 76958980, i32 1433879637, i32 168691722, i32 324044307, i32 821552944, i32 -751328813, i32 1090133312, i32 878815796, i32 -1940984436, i32 -1280309581, i32 1817473132, i32 712225322, i32 1379652178, i32 194986251, i32 -1962771573, i32 -1999069048, i32 1341329743, i32 1741369703, i32 1177010758, i32 -1066981440, i32 -1258516300, i32 674766888, i32 2131031679, i32 2018009208, i32 786825006, i32 122459655, i32 1264933963, i32 -953437753, i32 1871620975, i32 222469645, i32 -1141531461, i32 -220507406, i32 -213246989, i32 -1505927258, i32 1503957849, i32 -1128723780, i32 989458234, i32 -283930129, i32 -32995842, i32 26298625, i32 1628892769, i32 2094935420, i32 -1306439758, i32 1118932802, i32 -613270565, i32 -1204861000, i32 1220511560, i32 749628716, i32 -473938205, i32 1463604823, i32 -2053489019, i32 698968361, i32 2102355069, i32 -1803474284, i32 1227804233, i32 398904087, i32 -899076150, i32 -1010959165, i32 1554224988, i32 1592264030, i32 -789742896, i32 -2016301945, i32 -1912242290, i32 -1167796806, i32 -1465574744, i32 -1222227017, i32 -1178726727, i32 1619502944, i32 -120235272, i32 573974562, i32 286987281, i32 -562741282, i32 2044275065, i32 -1427208022, i32 858602547, i32 1601784927, i32 -1229520202, i32 -1765099370, i32 1479924312, i32 -1664831332, i32 -62711812, i32 444880154, i32 -162717706, i32 475630108, i32 951221560, i32 -1405921364, i32 416270104, i32 -200897036, i32 1767076969, i32 1956362100, i32 -174603019, i32 1454219094, i32 -622628134, i32 -706052395, i32 1257510218, i32 -1634786658, i32 -1565846878, i32 1315067982, i32 -396425240, i32 -451044891, i32 958608441, i32 -1040814399, i32 1147949124, i32 1563614813, i32 1917216882, i32 648045862, i32 -1815233389, i32 64674563, i32 -960825146, i32 -90257158, i32 -2099861374, i32 -814863409, i32 1349533776, i32 -343548693, i32 1963654773, i32 -1970064758, i32 -1914723187, i32 1277807180, i32 337383444, i32 1943478643, i32 -860557108, i32 164942601, i32 277503248, i32 -498003998, i32 0, i32 -1709609062, i32 -535126560, i32 -1886112113, i32 -423148826, i32 -322352404, i32 -36544771, i32 -1417690709, i32 -660021032]], [1024 x i8] zeroinitializer }, align 32
@q0 = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\A9g\B3\E8\04\FD\A3v\9A\92\80x\E4\DD\D18\0D\C65\98\18\F7\EClCu7&\FA\13\94H\F2\D0\8B0\84T\DF#\19[=Y\F3\AE\A2\82c\01\83.\D9Q\9B|\A6\EB\A5\BE\16\0C\E3a\C0\8C:\F5s,%\0B\BBN\89kSj\B4\F1\E1\E6\BDE\E2\F4\B6f\CC\95\03V\D4\1C\1E\D7\FB\C3\8E\B5\E9\CF\BF\BA\EAw9\AF3\C9bq\81y\09\AD$\CD\F9\D8\E5\C5\B9MD\08\86\E7\A1\1D\AA\ED\06p\B2\D2A{\A0\111\C2'\90 \F6`\FF\96\\\B1\AB\9E\9CR\1B_\93\0A\EF\91\85I\EE-O\8F;G\87mF\D6>id*\CE\CB/\FC\97\05z\AC\7F\D5\1AK\0E\A7Z(\14?)\88<L\02\B8\DA\B0\17U\1F\8A}W\C7\8Dt\B7\C4\9Fr~\15\22\12X\07\994nP\DEhe\BC\DB\F8\C8\A8+@\DC\FE2\A4\CA\10!\F0\D3]\0F\00o\9D6BJ^\C1\E0", [64 x i8] zeroinitializer }, align 32
@q1 = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"u\F3\C6\F4\DB{\FB\C8J\D3\E6kE}\E8K\D62\D8\FD7q\F1\E10\0F\F8\1B\87\FA\06?^\BA\AE[\8A\00\BC\9Dm\C1\B1\0E\80]\D2\D5\A0\84\07\14\B5\90,\A3\B2sLT\92t6Q8\B0\BDZ\FC`b\96lB\F7\10|('\8C\13\95\9C\C7$F;p\CA\E3\85\CB\11\D0\93\B8\A6\83 \FF\9Fw\C3\CC\03o\08\BF@\E7+\E2y\0C\AA\82A:\EA\B9\E4\9A\A4\97~\DAz\17f\94\A1\1D=\F0\DE\B3\0Br\A7\1C\EF\D1S>\8F3&_\ECv*I\81\88\EE!\C4\1A\EB\D9\C59\99\CD\AD1\8B\01\18#\DD\1FN-\F9HO\F2e\8Ex\\X\19\8D\E5\98Wg\7F\05d\AFc\B6\FE\F5\B7<\A5\CE\E9hD\E0MCi).\AC\15Y\A8\0A\9EnG\DF45j\CF\DC\22\C9\C0\9B\89\D4\ED\AB\12\A2\0DR\BB\02/\A9\D7a\1E\B4P\04\F6\C2\16%\86VU\09\BE\91", [64 x i8] zeroinitializer }, align 32
@calc_sb_tbl = internal constant { [512 x i8], [128 x i8] } { [512 x i8] c"\A9ug\F3\B3\C6\E8\F4\04\DB\FD{\A3\FBv\C8\9AJ\92\D3\80\E6xk\E4E\DD}\D1\E88K\0D\D6\C625\D8\98\FD\187\F7q\EC\F1l\E1C0u\0F7\F8&\1B\FA\87\13\FA\94\06H?\F2^\D0\BA\8B\AE0[\84\8AT\00\DF\BC#\9D\19m[\C1=\B1Y\0E\F3\80\AE]\A2\D2\82\D5c\A0\01\84\83\07.\14\D9\B5Q\90\9B,|\A3\A6\B2\EBs\A5L\BET\16\92\0Ct\E36aQ\C08\8C\B0:\BD\F5Zs\FC,`%b\0B\96\BBlNB\89\F7k\10S|j(\B4'\F1\8C\E1\13\E6\95\BD\9CE\C7\E2$\F4F\B6;fp\CC\CA\95\E3\03\85V\CB\D4\11\1C\D0\1E\93\D7\B8\FB\A6\C3\83\8E \B5\FF\E9\9F\CFw\BF\C3\BA\CC\EA\03wo9\08\AF\BF3@\C9\E7b+q\E2\81yy\0C\09\AA\AD\82$A\CD:\F9\EA\D8\B9\E5\E4\C5\9A\B9\A4M\97D~\08\DA\86z\E7\17\A1f\1D\94\AA\A1\ED\1D\06=p\F0\B2\DE\D2\B3A\0B{r\A0\A7\11\1C1\EF\C2\D1'S\90> \8F\F63`&\FF_\96\EC\\v\B1*\ABI\9E\81\9C\88R\EE\1B!_\C4\93\1A\0A\EB\EF\D9\91\C5\859I\99\EE\CD-\ADO1\8F\8B;\01G\18\87#m\DDF\1F\D6N>-i\F9dH*O\CE\F2\CBe/\8E\FCx\97\\\05Xz\19\AC\8D\7F\E5\D5\98\1AWKg\0E\7F\A7\05Zd(\AF\14c?\B6)\FE\88\F5<\B7L<\02\A5\B8\CE\DA\E9\B0h\17DU\E0\1FM\8AC}iW)\C7.\8D\ACt\15\B7Y\C4\A8\9F\0Ar\9E~n\15G\22\DF\124X5\07j\99\CF4\DCn\22P\C9\DE\C0h\9Be\89\BC\D4\DB\ED\F8\AB\C8\12\A8\A2+\0D@R\DC\BB\FE\022/\A4\A9\CA\D7\10a!\1E\F0\B4\D3P]\04\0F\F6\00\C2o\16\9D%6\86BVJU^\09\C1\BE\E0\91", [128 x i8] zeroinitializer }, align 32
@__kstrtab___twofish_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns___twofish_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab___twofish_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__twofish_setkey to i32), ptr @__kstrtab___twofish_setkey, ptr @__kstrtabns___twofish_setkey }, section "___ksymtab_gpl+__twofish_setkey", align 4
@__kstrtab_twofish_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_twofish_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab_twofish_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twofish_setkey to i32), ptr @__kstrtab_twofish_setkey, ptr @__kstrtabns_twofish_setkey }, section "___ksymtab_gpl+twofish_setkey", align 4
@__UNIQUE_ID_file173 = internal constant [42 x i8] c"twofish_common.file=crypto/twofish_common\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [27 x i8] c"twofish_common.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description175 = internal constant [59 x i8] c"twofish_common.description=Twofish cipher common functions\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 32]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 32]
@___asan_gen_.2 = private unnamed_addr constant [12 x i8] c"poly_to_exp\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 324, i32 17 }
@___asan_gen_.5 = private unnamed_addr constant [12 x i8] c"exp_to_poly\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 349, i32 17 }
@___asan_gen_.8 = private unnamed_addr constant [4 x i8] c"mds\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 109, i32 18 }
@___asan_gen_.11 = private unnamed_addr constant [3 x i8] c"q0\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 46, i32 17 }
@___asan_gen_.14 = private unnamed_addr constant [3 x i8] c"q1\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 71, i32 17 }
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"calc_sb_tbl\00", align 1
@___asan_gen_.18 = private constant [27 x i8] c"../crypto/twofish_common.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 396, i32 17 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_description175, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__ksymtab___twofish_setkey, ptr @__ksymtab_twofish_setkey, ptr @poly_to_exp, ptr @exp_to_poly, ptr @mds, ptr @q0, ptr @q1, ptr @calc_sb_tbl], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poly_to_exp to i32), i32 255, i32 288, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exp_to_poly to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mds to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q0 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q1 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_sb_tbl to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__twofish_setkey(ptr noundef writeonly %ctx, ptr noundef readonly %key, i32 noundef %key_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %key_len, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.if.end31_crit_edge, label %if.then2

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end31

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %conv = zext i8 %1 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx4 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %arrayidx6 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %conv5
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6, align 1
  %add11 = add nuw nsw i32 %conv5, 45
  %arrayidx12 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add11
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx12, align 1
  %add18 = add nuw nsw i32 %conv5, 1
  %arrayidx19 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add18
  %8 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx19, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then2, %if.end.if.end31_crit_edge
  %sa.0 = phi i8 [ %5, %if.then2 ], [ 0, %if.end.if.end31_crit_edge ]
  %sc.0 = phi i8 [ %9, %if.then2 ], [ 0, %if.end.if.end31_crit_edge ]
  %sd.0 = phi i8 [ %7, %if.then2 ], [ 0, %if.end.if.end31_crit_edge ]
  %arrayidx32 = getelementptr i8, ptr %key, i32 1
  %10 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool33.not = icmp eq i8 %11, 0
  br i1 %tobool33.not, label %if.end31.if.end67_crit_edge, label %if.then34

if.end31.if.end67_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end67

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #4
  %conv36 = zext i8 %11 to i32
  %sub37 = add nsw i32 %conv36, -1
  %arrayidx38 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub37
  %12 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %13 to i32
  %add40 = add nuw nsw i32 %conv39, 45
  %arrayidx41 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add40
  %14 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx41, align 1
  %xor443303 = xor i8 %15, %sa.0
  %add47 = add nuw nsw i32 %conv39, 164
  %arrayidx48 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add47
  %16 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx48, align 1
  %xor513304 = xor i8 %17, %sd.0
  %add54 = add nuw nsw i32 %conv39, 68
  %arrayidx55 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add54
  %18 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx55, align 1
  %xor583305 = xor i8 %19, %sc.0
  %add61 = add nuw nsw i32 %conv39, 138
  %arrayidx62 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add61
  %20 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx62, align 1
  %xor653306 = xor i8 %21, %sd.0
  br label %if.end67

if.end67:                                         ; preds = %if.then34, %if.end31.if.end67_crit_edge
  %sa.1 = phi i8 [ %xor443303, %if.then34 ], [ %sa.0, %if.end31.if.end67_crit_edge ]
  %sb.1 = phi i8 [ %xor513304, %if.then34 ], [ %sd.0, %if.end31.if.end67_crit_edge ]
  %sc.1 = phi i8 [ %xor583305, %if.then34 ], [ %sc.0, %if.end31.if.end67_crit_edge ]
  %sd.1 = phi i8 [ %xor653306, %if.then34 ], [ %sd.0, %if.end31.if.end67_crit_edge ]
  %arrayidx68 = getelementptr i8, ptr %key, i32 2
  %22 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool69.not = icmp eq i8 %23, 0
  br i1 %tobool69.not, label %if.end67.if.end103_crit_edge, label %if.then70

if.end67.if.end103_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end103

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #4
  %conv72 = zext i8 %23 to i32
  %sub73 = add nsw i32 %conv72, -1
  %arrayidx74 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub73
  %24 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %25 to i32
  %add76 = add nuw nsw i32 %conv75, 138
  %arrayidx77 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add76
  %26 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx77, align 1
  %xor803299 = xor i8 %27, %sa.1
  %add83 = add nuw nsw i32 %conv75, 213
  %arrayidx84 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add83
  %28 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx84, align 1
  %xor873300 = xor i8 %29, %sb.1
  %add90 = add nuw nsw i32 %conv75, 191
  %arrayidx91 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add90
  %30 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx91, align 1
  %xor943301 = xor i8 %31, %sc.1
  %add97 = add nuw nsw i32 %conv75, 209
  %arrayidx98 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add97
  %32 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx98, align 1
  %xor1013302 = xor i8 %33, %sd.1
  br label %if.end103

if.end103:                                        ; preds = %if.then70, %if.end67.if.end103_crit_edge
  %sa.2 = phi i8 [ %xor803299, %if.then70 ], [ %sa.1, %if.end67.if.end103_crit_edge ]
  %sb.2 = phi i8 [ %xor873300, %if.then70 ], [ %sb.1, %if.end67.if.end103_crit_edge ]
  %sc.2 = phi i8 [ %xor943301, %if.then70 ], [ %sc.1, %if.end67.if.end103_crit_edge ]
  %sd.2 = phi i8 [ %xor1013302, %if.then70 ], [ %sd.1, %if.end67.if.end103_crit_edge ]
  %arrayidx104 = getelementptr i8, ptr %key, i32 3
  %34 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx104, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool105.not = icmp eq i8 %35, 0
  br i1 %tobool105.not, label %if.end103.if.end139_crit_edge, label %if.then106

if.end103.if.end139_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end139

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #4
  %conv108 = zext i8 %35 to i32
  %sub109 = add nsw i32 %conv108, -1
  %arrayidx110 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub109
  %36 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %37 to i32
  %add112 = add nuw nsw i32 %conv111, 209
  %arrayidx113 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add112
  %38 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx113, align 1
  %xor1163295 = xor i8 %39, %sa.2
  %add119 = add nuw nsw i32 %conv111, 127
  %arrayidx120 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add119
  %40 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx120, align 1
  %xor1233296 = xor i8 %41, %sb.2
  %add126 = add nuw nsw i32 %conv111, 61
  %arrayidx127 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add126
  %42 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx127, align 1
  %xor1303297 = xor i8 %43, %sc.2
  %add133 = add nuw nsw i32 %conv111, 153
  %arrayidx134 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add133
  %44 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx134, align 1
  %xor1373298 = xor i8 %45, %sd.2
  br label %if.end139

if.end139:                                        ; preds = %if.then106, %if.end103.if.end139_crit_edge
  %sa.3 = phi i8 [ %xor1163295, %if.then106 ], [ %sa.2, %if.end103.if.end139_crit_edge ]
  %sb.3 = phi i8 [ %xor1233296, %if.then106 ], [ %sb.2, %if.end103.if.end139_crit_edge ]
  %sc.3 = phi i8 [ %xor1303297, %if.then106 ], [ %sc.2, %if.end103.if.end139_crit_edge ]
  %sd.3 = phi i8 [ %xor1373298, %if.then106 ], [ %sd.2, %if.end103.if.end139_crit_edge ]
  %arrayidx140 = getelementptr i8, ptr %key, i32 4
  %46 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx140, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool141.not = icmp eq i8 %47, 0
  br i1 %tobool141.not, label %if.end139.if.end175_crit_edge, label %if.then142

if.end139.if.end175_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end175

if.then142:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #4
  %conv144 = zext i8 %47 to i32
  %sub145 = add nsw i32 %conv144, -1
  %arrayidx146 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub145
  %48 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx146, align 1
  %conv147 = zext i8 %49 to i32
  %add148 = add nuw nsw i32 %conv147, 153
  %arrayidx149 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add148
  %50 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx149, align 1
  %xor1523291 = xor i8 %51, %sa.3
  %add155 = add nuw nsw i32 %conv147, 70
  %arrayidx156 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add155
  %52 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx156, align 1
  %xor1593292 = xor i8 %53, %sb.3
  %add162 = add nuw nsw i32 %conv147, 102
  %arrayidx163 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add162
  %54 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx163, align 1
  %xor1663293 = xor i8 %55, %sc.3
  %add169 = add nuw nsw i32 %conv147, 150
  %arrayidx170 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add169
  %56 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx170, align 1
  %xor1733294 = xor i8 %57, %sd.3
  br label %if.end175

if.end175:                                        ; preds = %if.then142, %if.end139.if.end175_crit_edge
  %sa.4 = phi i8 [ %xor1523291, %if.then142 ], [ %sa.3, %if.end139.if.end175_crit_edge ]
  %sb.4 = phi i8 [ %xor1593292, %if.then142 ], [ %sb.3, %if.end139.if.end175_crit_edge ]
  %sc.4 = phi i8 [ %xor1663293, %if.then142 ], [ %sc.3, %if.end139.if.end175_crit_edge ]
  %sd.4 = phi i8 [ %xor1733294, %if.then142 ], [ %sd.3, %if.end139.if.end175_crit_edge ]
  %arrayidx176 = getelementptr i8, ptr %key, i32 5
  %58 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx176, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool177.not = icmp eq i8 %59, 0
  br i1 %tobool177.not, label %if.end175.if.end211_crit_edge, label %if.then178

if.end175.if.end211_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end211

if.then178:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #4
  %conv180 = zext i8 %59 to i32
  %sub181 = add nsw i32 %conv180, -1
  %arrayidx182 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub181
  %60 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx182, align 1
  %conv183 = zext i8 %61 to i32
  %add184 = add nuw nsw i32 %conv183, 150
  %arrayidx185 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add184
  %62 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx185, align 1
  %xor1883287 = xor i8 %63, %sa.4
  %add191 = add nuw nsw i32 %conv183, 60
  %arrayidx192 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add191
  %64 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx192, align 1
  %xor1953288 = xor i8 %65, %sb.4
  %add198 = add nuw nsw i32 %conv183, 91
  %arrayidx199 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add198
  %66 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx199, align 1
  %xor2023289 = xor i8 %67, %sc.4
  %add205 = add nuw nsw i32 %conv183, 237
  %arrayidx206 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add205
  %68 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx206, align 1
  %xor2093290 = xor i8 %69, %sd.4
  br label %if.end211

if.end211:                                        ; preds = %if.then178, %if.end175.if.end211_crit_edge
  %sa.5 = phi i8 [ %xor1883287, %if.then178 ], [ %sa.4, %if.end175.if.end211_crit_edge ]
  %sb.5 = phi i8 [ %xor1953288, %if.then178 ], [ %sb.4, %if.end175.if.end211_crit_edge ]
  %sc.5 = phi i8 [ %xor2023289, %if.then178 ], [ %sc.4, %if.end175.if.end211_crit_edge ]
  %sd.5 = phi i8 [ %xor2093290, %if.then178 ], [ %sd.4, %if.end175.if.end211_crit_edge ]
  %arrayidx212 = getelementptr i8, ptr %key, i32 6
  %70 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx212, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool213.not = icmp eq i8 %71, 0
  br i1 %tobool213.not, label %if.end211.if.end247_crit_edge, label %if.then214

if.end211.if.end247_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end247

if.then214:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #4
  %conv216 = zext i8 %71 to i32
  %sub217 = add nsw i32 %conv216, -1
  %arrayidx218 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub217
  %72 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx218, align 1
  %conv219 = zext i8 %73 to i32
  %add220 = add nuw nsw i32 %conv219, 237
  %arrayidx221 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add220
  %74 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx221, align 1
  %xor2243283 = xor i8 %75, %sa.5
  %add227 = add nuw nsw i32 %conv219, 55
  %arrayidx228 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add227
  %76 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx228, align 1
  %xor2313284 = xor i8 %77, %sb.5
  %add234 = add nuw nsw i32 %conv219, 79
  %arrayidx235 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add234
  %78 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx235, align 1
  %xor2383285 = xor i8 %79, %sc.5
  %add241 = add nuw nsw i32 %conv219, 224
  %arrayidx242 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add241
  %80 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx242, align 1
  %xor2453286 = xor i8 %81, %sd.5
  br label %if.end247

if.end247:                                        ; preds = %if.then214, %if.end211.if.end247_crit_edge
  %sa.6 = phi i8 [ %xor2243283, %if.then214 ], [ %sa.5, %if.end211.if.end247_crit_edge ]
  %sb.6 = phi i8 [ %xor2313284, %if.then214 ], [ %sb.5, %if.end211.if.end247_crit_edge ]
  %sc.6 = phi i8 [ %xor2383285, %if.then214 ], [ %sc.5, %if.end211.if.end247_crit_edge ]
  %sd.6 = phi i8 [ %xor2453286, %if.then214 ], [ %sd.5, %if.end211.if.end247_crit_edge ]
  %arrayidx248 = getelementptr i8, ptr %key, i32 7
  %82 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx248, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool249.not = icmp eq i8 %83, 0
  br i1 %tobool249.not, label %if.end247.if.end283_crit_edge, label %if.then250

if.end247.if.end283_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end283

if.then250:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #4
  %conv252 = zext i8 %83 to i32
  %sub253 = add nsw i32 %conv252, -1
  %arrayidx254 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub253
  %84 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx254, align 1
  %conv255 = zext i8 %85 to i32
  %add256 = add nuw nsw i32 %conv255, 224
  %arrayidx257 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add256
  %86 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx257, align 1
  %xor2603279 = xor i8 %87, %sa.6
  %add263 = add nuw nsw i32 %conv255, 208
  %arrayidx264 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add263
  %88 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx264, align 1
  %xor2673280 = xor i8 %89, %sb.6
  %add270 = add nuw nsw i32 %conv255, 140
  %arrayidx271 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add270
  %90 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx271, align 1
  %xor2743281 = xor i8 %91, %sc.6
  %add277 = add nuw nsw i32 %conv255, 23
  %arrayidx278 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add277
  %92 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx278, align 1
  %xor2813282 = xor i8 %93, %sd.6
  br label %if.end283

if.end283:                                        ; preds = %if.then250, %if.end247.if.end283_crit_edge
  %sa.7 = phi i8 [ %xor2603279, %if.then250 ], [ %sa.6, %if.end247.if.end283_crit_edge ]
  %sb.7 = phi i8 [ %xor2673280, %if.then250 ], [ %sb.6, %if.end247.if.end283_crit_edge ]
  %sc.7 = phi i8 [ %xor2743281, %if.then250 ], [ %sc.6, %if.end247.if.end283_crit_edge ]
  %sd.7 = phi i8 [ %xor2813282, %if.then250 ], [ %sd.6, %if.end247.if.end283_crit_edge ]
  %arrayidx284 = getelementptr i8, ptr %key, i32 8
  %94 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx284, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool285.not = icmp eq i8 %95, 0
  br i1 %tobool285.not, label %if.end283.if.end319_crit_edge, label %if.then286

if.end283.if.end319_crit_edge:                    ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end319

if.then286:                                       ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #4
  %conv288 = zext i8 %95 to i32
  %sub289 = add nsw i32 %conv288, -1
  %arrayidx290 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub289
  %96 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx290, align 1
  %conv291 = zext i8 %97 to i32
  %arrayidx293 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %conv291
  %98 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx293, align 1
  %add299 = add nuw nsw i32 %conv291, 45
  %arrayidx300 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add299
  %100 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx300, align 1
  %add306 = add nuw nsw i32 %conv291, 1
  %arrayidx307 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add306
  %102 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx307, align 1
  br label %if.end319

if.end319:                                        ; preds = %if.then286, %if.end283.if.end319_crit_edge
  %se.0 = phi i8 [ %99, %if.then286 ], [ 0, %if.end283.if.end319_crit_edge ]
  %sg.0 = phi i8 [ %103, %if.then286 ], [ 0, %if.end283.if.end319_crit_edge ]
  %sh.0 = phi i8 [ %101, %if.then286 ], [ 0, %if.end283.if.end319_crit_edge ]
  %arrayidx320 = getelementptr i8, ptr %key, i32 9
  %104 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx320, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool321.not = icmp eq i8 %105, 0
  br i1 %tobool321.not, label %if.end319.if.end355_crit_edge, label %if.then322

if.end319.if.end355_crit_edge:                    ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end355

if.then322:                                       ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #4
  %conv324 = zext i8 %105 to i32
  %sub325 = add nsw i32 %conv324, -1
  %arrayidx326 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub325
  %106 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx326, align 1
  %conv327 = zext i8 %107 to i32
  %add328 = add nuw nsw i32 %conv327, 45
  %arrayidx329 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add328
  %108 = ptrtoint ptr %arrayidx329 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx329, align 1
  %xor3323275 = xor i8 %109, %se.0
  %add335 = add nuw nsw i32 %conv327, 164
  %arrayidx336 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add335
  %110 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx336, align 1
  %xor3393276 = xor i8 %111, %sh.0
  %add342 = add nuw nsw i32 %conv327, 68
  %arrayidx343 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add342
  %112 = ptrtoint ptr %arrayidx343 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx343, align 1
  %xor3463277 = xor i8 %113, %sg.0
  %add349 = add nuw nsw i32 %conv327, 138
  %arrayidx350 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add349
  %114 = ptrtoint ptr %arrayidx350 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx350, align 1
  %xor3533278 = xor i8 %115, %sh.0
  br label %if.end355

if.end355:                                        ; preds = %if.then322, %if.end319.if.end355_crit_edge
  %se.1 = phi i8 [ %xor3323275, %if.then322 ], [ %se.0, %if.end319.if.end355_crit_edge ]
  %sf.1 = phi i8 [ %xor3393276, %if.then322 ], [ %sh.0, %if.end319.if.end355_crit_edge ]
  %sg.1 = phi i8 [ %xor3463277, %if.then322 ], [ %sg.0, %if.end319.if.end355_crit_edge ]
  %sh.1 = phi i8 [ %xor3533278, %if.then322 ], [ %sh.0, %if.end319.if.end355_crit_edge ]
  %arrayidx356 = getelementptr i8, ptr %key, i32 10
  %116 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx356, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool357.not = icmp eq i8 %117, 0
  br i1 %tobool357.not, label %if.end355.if.end391_crit_edge, label %if.then358

if.end355.if.end391_crit_edge:                    ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end391

if.then358:                                       ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #4
  %conv360 = zext i8 %117 to i32
  %sub361 = add nsw i32 %conv360, -1
  %arrayidx362 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub361
  %118 = ptrtoint ptr %arrayidx362 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx362, align 1
  %conv363 = zext i8 %119 to i32
  %add364 = add nuw nsw i32 %conv363, 138
  %arrayidx365 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add364
  %120 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx365, align 1
  %xor3683271 = xor i8 %121, %se.1
  %add371 = add nuw nsw i32 %conv363, 213
  %arrayidx372 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add371
  %122 = ptrtoint ptr %arrayidx372 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx372, align 1
  %xor3753272 = xor i8 %123, %sf.1
  %add378 = add nuw nsw i32 %conv363, 191
  %arrayidx379 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add378
  %124 = ptrtoint ptr %arrayidx379 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx379, align 1
  %xor3823273 = xor i8 %125, %sg.1
  %add385 = add nuw nsw i32 %conv363, 209
  %arrayidx386 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add385
  %126 = ptrtoint ptr %arrayidx386 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx386, align 1
  %xor3893274 = xor i8 %127, %sh.1
  br label %if.end391

if.end391:                                        ; preds = %if.then358, %if.end355.if.end391_crit_edge
  %se.2 = phi i8 [ %xor3683271, %if.then358 ], [ %se.1, %if.end355.if.end391_crit_edge ]
  %sf.2 = phi i8 [ %xor3753272, %if.then358 ], [ %sf.1, %if.end355.if.end391_crit_edge ]
  %sg.2 = phi i8 [ %xor3823273, %if.then358 ], [ %sg.1, %if.end355.if.end391_crit_edge ]
  %sh.2 = phi i8 [ %xor3893274, %if.then358 ], [ %sh.1, %if.end355.if.end391_crit_edge ]
  %arrayidx392 = getelementptr i8, ptr %key, i32 11
  %128 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx392, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool393.not = icmp eq i8 %129, 0
  br i1 %tobool393.not, label %if.end391.if.end427_crit_edge, label %if.then394

if.end391.if.end427_crit_edge:                    ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end427

if.then394:                                       ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #4
  %conv396 = zext i8 %129 to i32
  %sub397 = add nsw i32 %conv396, -1
  %arrayidx398 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub397
  %130 = ptrtoint ptr %arrayidx398 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx398, align 1
  %conv399 = zext i8 %131 to i32
  %add400 = add nuw nsw i32 %conv399, 209
  %arrayidx401 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add400
  %132 = ptrtoint ptr %arrayidx401 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx401, align 1
  %xor4043267 = xor i8 %133, %se.2
  %add407 = add nuw nsw i32 %conv399, 127
  %arrayidx408 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add407
  %134 = ptrtoint ptr %arrayidx408 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx408, align 1
  %xor4113268 = xor i8 %135, %sf.2
  %add414 = add nuw nsw i32 %conv399, 61
  %arrayidx415 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add414
  %136 = ptrtoint ptr %arrayidx415 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx415, align 1
  %xor4183269 = xor i8 %137, %sg.2
  %add421 = add nuw nsw i32 %conv399, 153
  %arrayidx422 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add421
  %138 = ptrtoint ptr %arrayidx422 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx422, align 1
  %xor4253270 = xor i8 %139, %sh.2
  br label %if.end427

if.end427:                                        ; preds = %if.then394, %if.end391.if.end427_crit_edge
  %se.3 = phi i8 [ %xor4043267, %if.then394 ], [ %se.2, %if.end391.if.end427_crit_edge ]
  %sf.3 = phi i8 [ %xor4113268, %if.then394 ], [ %sf.2, %if.end391.if.end427_crit_edge ]
  %sg.3 = phi i8 [ %xor4183269, %if.then394 ], [ %sg.2, %if.end391.if.end427_crit_edge ]
  %sh.3 = phi i8 [ %xor4253270, %if.then394 ], [ %sh.2, %if.end391.if.end427_crit_edge ]
  %arrayidx428 = getelementptr i8, ptr %key, i32 12
  %140 = ptrtoint ptr %arrayidx428 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx428, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool429.not = icmp eq i8 %141, 0
  br i1 %tobool429.not, label %if.end427.if.end463_crit_edge, label %if.then430

if.end427.if.end463_crit_edge:                    ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end463

if.then430:                                       ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #4
  %conv432 = zext i8 %141 to i32
  %sub433 = add nsw i32 %conv432, -1
  %arrayidx434 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub433
  %142 = ptrtoint ptr %arrayidx434 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx434, align 1
  %conv435 = zext i8 %143 to i32
  %add436 = add nuw nsw i32 %conv435, 153
  %arrayidx437 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add436
  %144 = ptrtoint ptr %arrayidx437 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx437, align 1
  %xor4403263 = xor i8 %145, %se.3
  %add443 = add nuw nsw i32 %conv435, 70
  %arrayidx444 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add443
  %146 = ptrtoint ptr %arrayidx444 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx444, align 1
  %xor4473264 = xor i8 %147, %sf.3
  %add450 = add nuw nsw i32 %conv435, 102
  %arrayidx451 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add450
  %148 = ptrtoint ptr %arrayidx451 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx451, align 1
  %xor4543265 = xor i8 %149, %sg.3
  %add457 = add nuw nsw i32 %conv435, 150
  %arrayidx458 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add457
  %150 = ptrtoint ptr %arrayidx458 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx458, align 1
  %xor4613266 = xor i8 %151, %sh.3
  br label %if.end463

if.end463:                                        ; preds = %if.then430, %if.end427.if.end463_crit_edge
  %se.4 = phi i8 [ %xor4403263, %if.then430 ], [ %se.3, %if.end427.if.end463_crit_edge ]
  %sf.4 = phi i8 [ %xor4473264, %if.then430 ], [ %sf.3, %if.end427.if.end463_crit_edge ]
  %sg.4 = phi i8 [ %xor4543265, %if.then430 ], [ %sg.3, %if.end427.if.end463_crit_edge ]
  %sh.4 = phi i8 [ %xor4613266, %if.then430 ], [ %sh.3, %if.end427.if.end463_crit_edge ]
  %arrayidx464 = getelementptr i8, ptr %key, i32 13
  %152 = ptrtoint ptr %arrayidx464 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx464, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool465.not = icmp eq i8 %153, 0
  br i1 %tobool465.not, label %if.end463.if.end499_crit_edge, label %if.then466

if.end463.if.end499_crit_edge:                    ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end499

if.then466:                                       ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #4
  %conv468 = zext i8 %153 to i32
  %sub469 = add nsw i32 %conv468, -1
  %arrayidx470 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub469
  %154 = ptrtoint ptr %arrayidx470 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx470, align 1
  %conv471 = zext i8 %155 to i32
  %add472 = add nuw nsw i32 %conv471, 150
  %arrayidx473 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add472
  %156 = ptrtoint ptr %arrayidx473 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx473, align 1
  %xor4763259 = xor i8 %157, %se.4
  %add479 = add nuw nsw i32 %conv471, 60
  %arrayidx480 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add479
  %158 = ptrtoint ptr %arrayidx480 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx480, align 1
  %xor4833260 = xor i8 %159, %sf.4
  %add486 = add nuw nsw i32 %conv471, 91
  %arrayidx487 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add486
  %160 = ptrtoint ptr %arrayidx487 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx487, align 1
  %xor4903261 = xor i8 %161, %sg.4
  %add493 = add nuw nsw i32 %conv471, 237
  %arrayidx494 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add493
  %162 = ptrtoint ptr %arrayidx494 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx494, align 1
  %xor4973262 = xor i8 %163, %sh.4
  br label %if.end499

if.end499:                                        ; preds = %if.then466, %if.end463.if.end499_crit_edge
  %se.5 = phi i8 [ %xor4763259, %if.then466 ], [ %se.4, %if.end463.if.end499_crit_edge ]
  %sf.5 = phi i8 [ %xor4833260, %if.then466 ], [ %sf.4, %if.end463.if.end499_crit_edge ]
  %sg.5 = phi i8 [ %xor4903261, %if.then466 ], [ %sg.4, %if.end463.if.end499_crit_edge ]
  %sh.5 = phi i8 [ %xor4973262, %if.then466 ], [ %sh.4, %if.end463.if.end499_crit_edge ]
  %arrayidx500 = getelementptr i8, ptr %key, i32 14
  %164 = ptrtoint ptr %arrayidx500 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx500, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool501.not = icmp eq i8 %165, 0
  br i1 %tobool501.not, label %if.end499.if.end535_crit_edge, label %if.then502

if.end499.if.end535_crit_edge:                    ; preds = %if.end499
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end535

if.then502:                                       ; preds = %if.end499
  call void @__sanitizer_cov_trace_pc() #4
  %conv504 = zext i8 %165 to i32
  %sub505 = add nsw i32 %conv504, -1
  %arrayidx506 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub505
  %166 = ptrtoint ptr %arrayidx506 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx506, align 1
  %conv507 = zext i8 %167 to i32
  %add508 = add nuw nsw i32 %conv507, 237
  %arrayidx509 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add508
  %168 = ptrtoint ptr %arrayidx509 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx509, align 1
  %xor5123255 = xor i8 %169, %se.5
  %add515 = add nuw nsw i32 %conv507, 55
  %arrayidx516 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add515
  %170 = ptrtoint ptr %arrayidx516 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx516, align 1
  %xor5193256 = xor i8 %171, %sf.5
  %add522 = add nuw nsw i32 %conv507, 79
  %arrayidx523 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add522
  %172 = ptrtoint ptr %arrayidx523 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx523, align 1
  %xor5263257 = xor i8 %173, %sg.5
  %add529 = add nuw nsw i32 %conv507, 224
  %arrayidx530 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add529
  %174 = ptrtoint ptr %arrayidx530 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx530, align 1
  %xor5333258 = xor i8 %175, %sh.5
  br label %if.end535

if.end535:                                        ; preds = %if.then502, %if.end499.if.end535_crit_edge
  %se.6 = phi i8 [ %xor5123255, %if.then502 ], [ %se.5, %if.end499.if.end535_crit_edge ]
  %sf.6 = phi i8 [ %xor5193256, %if.then502 ], [ %sf.5, %if.end499.if.end535_crit_edge ]
  %sg.6 = phi i8 [ %xor5263257, %if.then502 ], [ %sg.5, %if.end499.if.end535_crit_edge ]
  %sh.6 = phi i8 [ %xor5333258, %if.then502 ], [ %sh.5, %if.end499.if.end535_crit_edge ]
  %arrayidx536 = getelementptr i8, ptr %key, i32 15
  %176 = ptrtoint ptr %arrayidx536 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx536, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool537.not = icmp eq i8 %177, 0
  br i1 %tobool537.not, label %if.end535.if.end571_crit_edge, label %if.then538

if.end535.if.end571_crit_edge:                    ; preds = %if.end535
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end571

if.then538:                                       ; preds = %if.end535
  call void @__sanitizer_cov_trace_pc() #4
  %conv540 = zext i8 %177 to i32
  %sub541 = add nsw i32 %conv540, -1
  %arrayidx542 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub541
  %178 = ptrtoint ptr %arrayidx542 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx542, align 1
  %conv543 = zext i8 %179 to i32
  %add544 = add nuw nsw i32 %conv543, 224
  %arrayidx545 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add544
  %180 = ptrtoint ptr %arrayidx545 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx545, align 1
  %xor5483251 = xor i8 %181, %se.6
  %add551 = add nuw nsw i32 %conv543, 208
  %arrayidx552 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add551
  %182 = ptrtoint ptr %arrayidx552 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx552, align 1
  %xor5553252 = xor i8 %183, %sf.6
  %add558 = add nuw nsw i32 %conv543, 140
  %arrayidx559 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add558
  %184 = ptrtoint ptr %arrayidx559 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx559, align 1
  %xor5623253 = xor i8 %185, %sg.6
  %add565 = add nuw nsw i32 %conv543, 23
  %arrayidx566 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add565
  %186 = ptrtoint ptr %arrayidx566 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx566, align 1
  %xor5693254 = xor i8 %187, %sh.6
  br label %if.end571

if.end571:                                        ; preds = %if.then538, %if.end535.if.end571_crit_edge
  %se.7 = phi i8 [ %xor5483251, %if.then538 ], [ %se.6, %if.end535.if.end571_crit_edge ]
  %sf.7 = phi i8 [ %xor5553252, %if.then538 ], [ %sf.6, %if.end535.if.end571_crit_edge ]
  %sg.7 = phi i8 [ %xor5623253, %if.then538 ], [ %sg.6, %if.end535.if.end571_crit_edge ]
  %sh.7 = phi i8 [ %xor5693254, %if.then538 ], [ %sh.6, %if.end535.if.end571_crit_edge ]
  %188 = zext i32 %key_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %188, ptr @__sancov_gen_cov_switch_values)
  switch i32 %key_len, label %if.end571.if.end864_crit_edge [
    i32 32, label %if.end571.if.then575_crit_edge
    i32 24, label %if.end571.if.then575_crit_edge3345
  ]

if.end571.if.then575_crit_edge3345:               ; preds = %if.end571
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then575

if.end571.if.then575_crit_edge:                   ; preds = %if.end571
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then575

if.end571.if.end864_crit_edge:                    ; preds = %if.end571
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end864

if.then575:                                       ; preds = %if.end571.if.then575_crit_edge, %if.end571.if.then575_crit_edge3345
  %arrayidx576 = getelementptr i8, ptr %key, i32 16
  %189 = ptrtoint ptr %arrayidx576 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx576, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool577.not = icmp eq i8 %190, 0
  br i1 %tobool577.not, label %if.then575.if.end611_crit_edge, label %if.then578

if.then575.if.end611_crit_edge:                   ; preds = %if.then575
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end611

if.then578:                                       ; preds = %if.then575
  call void @__sanitizer_cov_trace_pc() #4
  %conv580 = zext i8 %190 to i32
  %sub581 = add nsw i32 %conv580, -1
  %arrayidx582 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub581
  %191 = ptrtoint ptr %arrayidx582 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx582, align 1
  %conv583 = zext i8 %192 to i32
  %arrayidx585 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %conv583
  %193 = ptrtoint ptr %arrayidx585 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx585, align 1
  %add591 = add nuw nsw i32 %conv583, 45
  %arrayidx592 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add591
  %195 = ptrtoint ptr %arrayidx592 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx592, align 1
  %add598 = add nuw nsw i32 %conv583, 1
  %arrayidx599 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add598
  %197 = ptrtoint ptr %arrayidx599 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx599, align 1
  br label %if.end611

if.end611:                                        ; preds = %if.then578, %if.then575.if.end611_crit_edge
  %si.0 = phi i8 [ %194, %if.then578 ], [ 0, %if.then575.if.end611_crit_edge ]
  %sk.0 = phi i8 [ %198, %if.then578 ], [ 0, %if.then575.if.end611_crit_edge ]
  %sl.0 = phi i8 [ %196, %if.then578 ], [ 0, %if.then575.if.end611_crit_edge ]
  %arrayidx612 = getelementptr i8, ptr %key, i32 17
  %199 = ptrtoint ptr %arrayidx612 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx612, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool613.not = icmp eq i8 %200, 0
  br i1 %tobool613.not, label %if.end611.if.end647_crit_edge, label %if.then614

if.end611.if.end647_crit_edge:                    ; preds = %if.end611
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end647

if.then614:                                       ; preds = %if.end611
  call void @__sanitizer_cov_trace_pc() #4
  %conv616 = zext i8 %200 to i32
  %sub617 = add nsw i32 %conv616, -1
  %arrayidx618 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub617
  %201 = ptrtoint ptr %arrayidx618 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx618, align 1
  %conv619 = zext i8 %202 to i32
  %add620 = add nuw nsw i32 %conv619, 45
  %arrayidx621 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add620
  %203 = ptrtoint ptr %arrayidx621 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx621, align 1
  %xor6243247 = xor i8 %204, %si.0
  %add627 = add nuw nsw i32 %conv619, 164
  %arrayidx628 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add627
  %205 = ptrtoint ptr %arrayidx628 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx628, align 1
  %xor6313248 = xor i8 %206, %sl.0
  %add634 = add nuw nsw i32 %conv619, 68
  %arrayidx635 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add634
  %207 = ptrtoint ptr %arrayidx635 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx635, align 1
  %xor6383249 = xor i8 %208, %sk.0
  %add641 = add nuw nsw i32 %conv619, 138
  %arrayidx642 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add641
  %209 = ptrtoint ptr %arrayidx642 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx642, align 1
  %xor6453250 = xor i8 %210, %sl.0
  br label %if.end647

if.end647:                                        ; preds = %if.then614, %if.end611.if.end647_crit_edge
  %si.1 = phi i8 [ %xor6243247, %if.then614 ], [ %si.0, %if.end611.if.end647_crit_edge ]
  %sj.1 = phi i8 [ %xor6313248, %if.then614 ], [ %sl.0, %if.end611.if.end647_crit_edge ]
  %sk.1 = phi i8 [ %xor6383249, %if.then614 ], [ %sk.0, %if.end611.if.end647_crit_edge ]
  %sl.1 = phi i8 [ %xor6453250, %if.then614 ], [ %sl.0, %if.end611.if.end647_crit_edge ]
  %arrayidx648 = getelementptr i8, ptr %key, i32 18
  %211 = ptrtoint ptr %arrayidx648 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx648, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool649.not = icmp eq i8 %212, 0
  br i1 %tobool649.not, label %if.end647.if.end683_crit_edge, label %if.then650

if.end647.if.end683_crit_edge:                    ; preds = %if.end647
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end683

if.then650:                                       ; preds = %if.end647
  call void @__sanitizer_cov_trace_pc() #4
  %conv652 = zext i8 %212 to i32
  %sub653 = add nsw i32 %conv652, -1
  %arrayidx654 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub653
  %213 = ptrtoint ptr %arrayidx654 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx654, align 1
  %conv655 = zext i8 %214 to i32
  %add656 = add nuw nsw i32 %conv655, 138
  %arrayidx657 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add656
  %215 = ptrtoint ptr %arrayidx657 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx657, align 1
  %xor6603243 = xor i8 %216, %si.1
  %add663 = add nuw nsw i32 %conv655, 213
  %arrayidx664 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add663
  %217 = ptrtoint ptr %arrayidx664 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx664, align 1
  %xor6673244 = xor i8 %218, %sj.1
  %add670 = add nuw nsw i32 %conv655, 191
  %arrayidx671 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add670
  %219 = ptrtoint ptr %arrayidx671 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx671, align 1
  %xor6743245 = xor i8 %220, %sk.1
  %add677 = add nuw nsw i32 %conv655, 209
  %arrayidx678 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add677
  %221 = ptrtoint ptr %arrayidx678 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx678, align 1
  %xor6813246 = xor i8 %222, %sl.1
  br label %if.end683

if.end683:                                        ; preds = %if.then650, %if.end647.if.end683_crit_edge
  %si.2 = phi i8 [ %xor6603243, %if.then650 ], [ %si.1, %if.end647.if.end683_crit_edge ]
  %sj.2 = phi i8 [ %xor6673244, %if.then650 ], [ %sj.1, %if.end647.if.end683_crit_edge ]
  %sk.2 = phi i8 [ %xor6743245, %if.then650 ], [ %sk.1, %if.end647.if.end683_crit_edge ]
  %sl.2 = phi i8 [ %xor6813246, %if.then650 ], [ %sl.1, %if.end647.if.end683_crit_edge ]
  %arrayidx684 = getelementptr i8, ptr %key, i32 19
  %223 = ptrtoint ptr %arrayidx684 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx684, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool685.not = icmp eq i8 %224, 0
  br i1 %tobool685.not, label %if.end683.if.end719_crit_edge, label %if.then686

if.end683.if.end719_crit_edge:                    ; preds = %if.end683
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end719

if.then686:                                       ; preds = %if.end683
  call void @__sanitizer_cov_trace_pc() #4
  %conv688 = zext i8 %224 to i32
  %sub689 = add nsw i32 %conv688, -1
  %arrayidx690 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub689
  %225 = ptrtoint ptr %arrayidx690 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx690, align 1
  %conv691 = zext i8 %226 to i32
  %add692 = add nuw nsw i32 %conv691, 209
  %arrayidx693 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add692
  %227 = ptrtoint ptr %arrayidx693 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx693, align 1
  %xor6963239 = xor i8 %228, %si.2
  %add699 = add nuw nsw i32 %conv691, 127
  %arrayidx700 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add699
  %229 = ptrtoint ptr %arrayidx700 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %arrayidx700, align 1
  %xor7033240 = xor i8 %230, %sj.2
  %add706 = add nuw nsw i32 %conv691, 61
  %arrayidx707 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add706
  %231 = ptrtoint ptr %arrayidx707 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx707, align 1
  %xor7103241 = xor i8 %232, %sk.2
  %add713 = add nuw nsw i32 %conv691, 153
  %arrayidx714 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add713
  %233 = ptrtoint ptr %arrayidx714 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx714, align 1
  %xor7173242 = xor i8 %234, %sl.2
  br label %if.end719

if.end719:                                        ; preds = %if.then686, %if.end683.if.end719_crit_edge
  %si.3 = phi i8 [ %xor6963239, %if.then686 ], [ %si.2, %if.end683.if.end719_crit_edge ]
  %sj.3 = phi i8 [ %xor7033240, %if.then686 ], [ %sj.2, %if.end683.if.end719_crit_edge ]
  %sk.3 = phi i8 [ %xor7103241, %if.then686 ], [ %sk.2, %if.end683.if.end719_crit_edge ]
  %sl.3 = phi i8 [ %xor7173242, %if.then686 ], [ %sl.2, %if.end683.if.end719_crit_edge ]
  %arrayidx720 = getelementptr i8, ptr %key, i32 20
  %235 = ptrtoint ptr %arrayidx720 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx720, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %tobool721.not = icmp eq i8 %236, 0
  br i1 %tobool721.not, label %if.end719.if.end755_crit_edge, label %if.then722

if.end719.if.end755_crit_edge:                    ; preds = %if.end719
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end755

if.then722:                                       ; preds = %if.end719
  call void @__sanitizer_cov_trace_pc() #4
  %conv724 = zext i8 %236 to i32
  %sub725 = add nsw i32 %conv724, -1
  %arrayidx726 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub725
  %237 = ptrtoint ptr %arrayidx726 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %arrayidx726, align 1
  %conv727 = zext i8 %238 to i32
  %add728 = add nuw nsw i32 %conv727, 153
  %arrayidx729 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add728
  %239 = ptrtoint ptr %arrayidx729 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx729, align 1
  %xor7323235 = xor i8 %240, %si.3
  %add735 = add nuw nsw i32 %conv727, 70
  %arrayidx736 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add735
  %241 = ptrtoint ptr %arrayidx736 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx736, align 1
  %xor7393236 = xor i8 %242, %sj.3
  %add742 = add nuw nsw i32 %conv727, 102
  %arrayidx743 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add742
  %243 = ptrtoint ptr %arrayidx743 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx743, align 1
  %xor7463237 = xor i8 %244, %sk.3
  %add749 = add nuw nsw i32 %conv727, 150
  %arrayidx750 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add749
  %245 = ptrtoint ptr %arrayidx750 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx750, align 1
  %xor7533238 = xor i8 %246, %sl.3
  br label %if.end755

if.end755:                                        ; preds = %if.then722, %if.end719.if.end755_crit_edge
  %si.4 = phi i8 [ %xor7323235, %if.then722 ], [ %si.3, %if.end719.if.end755_crit_edge ]
  %sj.4 = phi i8 [ %xor7393236, %if.then722 ], [ %sj.3, %if.end719.if.end755_crit_edge ]
  %sk.4 = phi i8 [ %xor7463237, %if.then722 ], [ %sk.3, %if.end719.if.end755_crit_edge ]
  %sl.4 = phi i8 [ %xor7533238, %if.then722 ], [ %sl.3, %if.end719.if.end755_crit_edge ]
  %arrayidx756 = getelementptr i8, ptr %key, i32 21
  %247 = ptrtoint ptr %arrayidx756 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx756, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %tobool757.not = icmp eq i8 %248, 0
  br i1 %tobool757.not, label %if.end755.if.end791_crit_edge, label %if.then758

if.end755.if.end791_crit_edge:                    ; preds = %if.end755
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end791

if.then758:                                       ; preds = %if.end755
  call void @__sanitizer_cov_trace_pc() #4
  %conv760 = zext i8 %248 to i32
  %sub761 = add nsw i32 %conv760, -1
  %arrayidx762 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub761
  %249 = ptrtoint ptr %arrayidx762 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx762, align 1
  %conv763 = zext i8 %250 to i32
  %add764 = add nuw nsw i32 %conv763, 150
  %arrayidx765 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add764
  %251 = ptrtoint ptr %arrayidx765 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %arrayidx765, align 1
  %xor7683231 = xor i8 %252, %si.4
  %add771 = add nuw nsw i32 %conv763, 60
  %arrayidx772 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add771
  %253 = ptrtoint ptr %arrayidx772 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %arrayidx772, align 1
  %xor7753232 = xor i8 %254, %sj.4
  %add778 = add nuw nsw i32 %conv763, 91
  %arrayidx779 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add778
  %255 = ptrtoint ptr %arrayidx779 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %arrayidx779, align 1
  %xor7823233 = xor i8 %256, %sk.4
  %add785 = add nuw nsw i32 %conv763, 237
  %arrayidx786 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add785
  %257 = ptrtoint ptr %arrayidx786 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %arrayidx786, align 1
  %xor7893234 = xor i8 %258, %sl.4
  br label %if.end791

if.end791:                                        ; preds = %if.then758, %if.end755.if.end791_crit_edge
  %si.5 = phi i8 [ %xor7683231, %if.then758 ], [ %si.4, %if.end755.if.end791_crit_edge ]
  %sj.5 = phi i8 [ %xor7753232, %if.then758 ], [ %sj.4, %if.end755.if.end791_crit_edge ]
  %sk.5 = phi i8 [ %xor7823233, %if.then758 ], [ %sk.4, %if.end755.if.end791_crit_edge ]
  %sl.5 = phi i8 [ %xor7893234, %if.then758 ], [ %sl.4, %if.end755.if.end791_crit_edge ]
  %arrayidx792 = getelementptr i8, ptr %key, i32 22
  %259 = ptrtoint ptr %arrayidx792 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %arrayidx792, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %260)
  %tobool793.not = icmp eq i8 %260, 0
  br i1 %tobool793.not, label %if.end791.if.end827_crit_edge, label %if.then794

if.end791.if.end827_crit_edge:                    ; preds = %if.end791
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end827

if.then794:                                       ; preds = %if.end791
  call void @__sanitizer_cov_trace_pc() #4
  %conv796 = zext i8 %260 to i32
  %sub797 = add nsw i32 %conv796, -1
  %arrayidx798 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub797
  %261 = ptrtoint ptr %arrayidx798 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %arrayidx798, align 1
  %conv799 = zext i8 %262 to i32
  %add800 = add nuw nsw i32 %conv799, 237
  %arrayidx801 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add800
  %263 = ptrtoint ptr %arrayidx801 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %arrayidx801, align 1
  %xor8043227 = xor i8 %264, %si.5
  %add807 = add nuw nsw i32 %conv799, 55
  %arrayidx808 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add807
  %265 = ptrtoint ptr %arrayidx808 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx808, align 1
  %xor8113228 = xor i8 %266, %sj.5
  %add814 = add nuw nsw i32 %conv799, 79
  %arrayidx815 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add814
  %267 = ptrtoint ptr %arrayidx815 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %arrayidx815, align 1
  %xor8183229 = xor i8 %268, %sk.5
  %add821 = add nuw nsw i32 %conv799, 224
  %arrayidx822 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add821
  %269 = ptrtoint ptr %arrayidx822 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %arrayidx822, align 1
  %xor8253230 = xor i8 %270, %sl.5
  br label %if.end827

if.end827:                                        ; preds = %if.then794, %if.end791.if.end827_crit_edge
  %si.6 = phi i8 [ %xor8043227, %if.then794 ], [ %si.5, %if.end791.if.end827_crit_edge ]
  %sj.6 = phi i8 [ %xor8113228, %if.then794 ], [ %sj.5, %if.end791.if.end827_crit_edge ]
  %sk.6 = phi i8 [ %xor8183229, %if.then794 ], [ %sk.5, %if.end791.if.end827_crit_edge ]
  %sl.6 = phi i8 [ %xor8253230, %if.then794 ], [ %sl.5, %if.end791.if.end827_crit_edge ]
  %arrayidx828 = getelementptr i8, ptr %key, i32 23
  %271 = ptrtoint ptr %arrayidx828 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx828, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %272)
  %tobool829.not = icmp eq i8 %272, 0
  br i1 %tobool829.not, label %if.end827.if.end864_crit_edge, label %if.then830

if.end827.if.end864_crit_edge:                    ; preds = %if.end827
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end864

if.then830:                                       ; preds = %if.end827
  call void @__sanitizer_cov_trace_pc() #4
  %conv832 = zext i8 %272 to i32
  %sub833 = add nsw i32 %conv832, -1
  %arrayidx834 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub833
  %273 = ptrtoint ptr %arrayidx834 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %arrayidx834, align 1
  %conv835 = zext i8 %274 to i32
  %add836 = add nuw nsw i32 %conv835, 224
  %arrayidx837 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add836
  %275 = ptrtoint ptr %arrayidx837 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %arrayidx837, align 1
  %xor8403223 = xor i8 %276, %si.6
  %add843 = add nuw nsw i32 %conv835, 208
  %arrayidx844 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add843
  %277 = ptrtoint ptr %arrayidx844 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %arrayidx844, align 1
  %xor8473224 = xor i8 %278, %sj.6
  %add850 = add nuw nsw i32 %conv835, 140
  %arrayidx851 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add850
  %279 = ptrtoint ptr %arrayidx851 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %arrayidx851, align 1
  %xor8543225 = xor i8 %280, %sk.6
  %add857 = add nuw nsw i32 %conv835, 23
  %arrayidx858 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add857
  %281 = ptrtoint ptr %arrayidx858 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx858, align 1
  %xor8613226 = xor i8 %282, %sl.6
  br label %if.end864

if.end864:                                        ; preds = %if.then830, %if.end827.if.end864_crit_edge, %if.end571.if.end864_crit_edge
  %si.7 = phi i8 [ %xor8403223, %if.then830 ], [ %si.6, %if.end827.if.end864_crit_edge ], [ 0, %if.end571.if.end864_crit_edge ]
  %sj.7 = phi i8 [ %xor8473224, %if.then830 ], [ %sj.6, %if.end827.if.end864_crit_edge ], [ 0, %if.end571.if.end864_crit_edge ]
  %sk.7 = phi i8 [ %xor8543225, %if.then830 ], [ %sk.6, %if.end827.if.end864_crit_edge ], [ 0, %if.end571.if.end864_crit_edge ]
  %sl.7 = phi i8 [ %xor8613226, %if.then830 ], [ %sl.6, %if.end827.if.end864_crit_edge ], [ 0, %if.end571.if.end864_crit_edge ]
  %283 = zext i32 %key_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %283, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %key_len, label %if.end864.for.body2021_crit_edge [
    i32 32, label %if.then867
    i32 24, label %if.end864.for.body1635_crit_edge
  ]

if.end864.for.body1635_crit_edge:                 ; preds = %if.end864
  br label %for.body1635

if.end864.for.body2021_crit_edge:                 ; preds = %if.end864
  br label %for.body2021

if.then867:                                       ; preds = %if.end864
  %arrayidx868 = getelementptr i8, ptr %key, i32 24
  %284 = ptrtoint ptr %arrayidx868 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %arrayidx868, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %285)
  %tobool869.not = icmp eq i8 %285, 0
  br i1 %tobool869.not, label %if.then867.if.end903_crit_edge, label %if.then870

if.then867.if.end903_crit_edge:                   ; preds = %if.then867
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end903

if.then870:                                       ; preds = %if.then867
  call void @__sanitizer_cov_trace_pc() #4
  %conv872 = zext i8 %285 to i32
  %sub873 = add nsw i32 %conv872, -1
  %arrayidx874 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub873
  %286 = ptrtoint ptr %arrayidx874 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx874, align 1
  %conv875 = zext i8 %287 to i32
  %arrayidx877 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %conv875
  %288 = ptrtoint ptr %arrayidx877 to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %arrayidx877, align 1
  %add883 = add nuw nsw i32 %conv875, 45
  %arrayidx884 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add883
  %290 = ptrtoint ptr %arrayidx884 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %arrayidx884, align 1
  %add890 = add nuw nsw i32 %conv875, 1
  %arrayidx891 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add890
  %292 = ptrtoint ptr %arrayidx891 to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %arrayidx891, align 1
  br label %if.end903

if.end903:                                        ; preds = %if.then870, %if.then867.if.end903_crit_edge
  %sm.0 = phi i8 [ %289, %if.then870 ], [ 0, %if.then867.if.end903_crit_edge ]
  %so.0 = phi i8 [ %293, %if.then870 ], [ 0, %if.then867.if.end903_crit_edge ]
  %sp.0 = phi i8 [ %291, %if.then870 ], [ 0, %if.then867.if.end903_crit_edge ]
  %arrayidx904 = getelementptr i8, ptr %key, i32 25
  %294 = ptrtoint ptr %arrayidx904 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %arrayidx904, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %295)
  %tobool905.not = icmp eq i8 %295, 0
  br i1 %tobool905.not, label %if.end903.if.end939_crit_edge, label %if.then906

if.end903.if.end939_crit_edge:                    ; preds = %if.end903
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end939

if.then906:                                       ; preds = %if.end903
  call void @__sanitizer_cov_trace_pc() #4
  %conv908 = zext i8 %295 to i32
  %sub909 = add nsw i32 %conv908, -1
  %arrayidx910 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub909
  %296 = ptrtoint ptr %arrayidx910 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %arrayidx910, align 1
  %conv911 = zext i8 %297 to i32
  %add912 = add nuw nsw i32 %conv911, 45
  %arrayidx913 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add912
  %298 = ptrtoint ptr %arrayidx913 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %arrayidx913, align 1
  %xor9163219 = xor i8 %299, %sm.0
  %add919 = add nuw nsw i32 %conv911, 164
  %arrayidx920 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add919
  %300 = ptrtoint ptr %arrayidx920 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %arrayidx920, align 1
  %xor9233220 = xor i8 %301, %sp.0
  %add926 = add nuw nsw i32 %conv911, 68
  %arrayidx927 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add926
  %302 = ptrtoint ptr %arrayidx927 to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %arrayidx927, align 1
  %xor9303221 = xor i8 %303, %so.0
  %add933 = add nuw nsw i32 %conv911, 138
  %arrayidx934 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add933
  %304 = ptrtoint ptr %arrayidx934 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %arrayidx934, align 1
  %xor9373222 = xor i8 %305, %sp.0
  br label %if.end939

if.end939:                                        ; preds = %if.then906, %if.end903.if.end939_crit_edge
  %sm.1 = phi i8 [ %xor9163219, %if.then906 ], [ %sm.0, %if.end903.if.end939_crit_edge ]
  %sn.1 = phi i8 [ %xor9233220, %if.then906 ], [ %sp.0, %if.end903.if.end939_crit_edge ]
  %so.1 = phi i8 [ %xor9303221, %if.then906 ], [ %so.0, %if.end903.if.end939_crit_edge ]
  %sp.1 = phi i8 [ %xor9373222, %if.then906 ], [ %sp.0, %if.end903.if.end939_crit_edge ]
  %arrayidx940 = getelementptr i8, ptr %key, i32 26
  %306 = ptrtoint ptr %arrayidx940 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %arrayidx940, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %307)
  %tobool941.not = icmp eq i8 %307, 0
  br i1 %tobool941.not, label %if.end939.if.end975_crit_edge, label %if.then942

if.end939.if.end975_crit_edge:                    ; preds = %if.end939
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end975

if.then942:                                       ; preds = %if.end939
  call void @__sanitizer_cov_trace_pc() #4
  %conv944 = zext i8 %307 to i32
  %sub945 = add nsw i32 %conv944, -1
  %arrayidx946 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub945
  %308 = ptrtoint ptr %arrayidx946 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %arrayidx946, align 1
  %conv947 = zext i8 %309 to i32
  %add948 = add nuw nsw i32 %conv947, 138
  %arrayidx949 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add948
  %310 = ptrtoint ptr %arrayidx949 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx949, align 1
  %xor9523215 = xor i8 %311, %sm.1
  %add955 = add nuw nsw i32 %conv947, 213
  %arrayidx956 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add955
  %312 = ptrtoint ptr %arrayidx956 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %arrayidx956, align 1
  %xor9593216 = xor i8 %313, %sn.1
  %add962 = add nuw nsw i32 %conv947, 191
  %arrayidx963 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add962
  %314 = ptrtoint ptr %arrayidx963 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %arrayidx963, align 1
  %xor9663217 = xor i8 %315, %so.1
  %add969 = add nuw nsw i32 %conv947, 209
  %arrayidx970 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add969
  %316 = ptrtoint ptr %arrayidx970 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx970, align 1
  %xor9733218 = xor i8 %317, %sp.1
  br label %if.end975

if.end975:                                        ; preds = %if.then942, %if.end939.if.end975_crit_edge
  %sm.2 = phi i8 [ %xor9523215, %if.then942 ], [ %sm.1, %if.end939.if.end975_crit_edge ]
  %sn.2 = phi i8 [ %xor9593216, %if.then942 ], [ %sn.1, %if.end939.if.end975_crit_edge ]
  %so.2 = phi i8 [ %xor9663217, %if.then942 ], [ %so.1, %if.end939.if.end975_crit_edge ]
  %sp.2 = phi i8 [ %xor9733218, %if.then942 ], [ %sp.1, %if.end939.if.end975_crit_edge ]
  %arrayidx976 = getelementptr i8, ptr %key, i32 27
  %318 = ptrtoint ptr %arrayidx976 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %arrayidx976, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %319)
  %tobool977.not = icmp eq i8 %319, 0
  br i1 %tobool977.not, label %if.end975.if.end1011_crit_edge, label %if.then978

if.end975.if.end1011_crit_edge:                   ; preds = %if.end975
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1011

if.then978:                                       ; preds = %if.end975
  call void @__sanitizer_cov_trace_pc() #4
  %conv980 = zext i8 %319 to i32
  %sub981 = add nsw i32 %conv980, -1
  %arrayidx982 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub981
  %320 = ptrtoint ptr %arrayidx982 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx982, align 1
  %conv983 = zext i8 %321 to i32
  %add984 = add nuw nsw i32 %conv983, 209
  %arrayidx985 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add984
  %322 = ptrtoint ptr %arrayidx985 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx985, align 1
  %xor9883211 = xor i8 %323, %sm.2
  %add991 = add nuw nsw i32 %conv983, 127
  %arrayidx992 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add991
  %324 = ptrtoint ptr %arrayidx992 to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %arrayidx992, align 1
  %xor9953212 = xor i8 %325, %sn.2
  %add998 = add nuw nsw i32 %conv983, 61
  %arrayidx999 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add998
  %326 = ptrtoint ptr %arrayidx999 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx999, align 1
  %xor10023213 = xor i8 %327, %so.2
  %add1005 = add nuw nsw i32 %conv983, 153
  %arrayidx1006 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add1005
  %328 = ptrtoint ptr %arrayidx1006 to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx1006, align 1
  %xor10093214 = xor i8 %329, %sp.2
  br label %if.end1011

if.end1011:                                       ; preds = %if.then978, %if.end975.if.end1011_crit_edge
  %sm.3 = phi i8 [ %xor9883211, %if.then978 ], [ %sm.2, %if.end975.if.end1011_crit_edge ]
  %sn.3 = phi i8 [ %xor9953212, %if.then978 ], [ %sn.2, %if.end975.if.end1011_crit_edge ]
  %so.3 = phi i8 [ %xor10023213, %if.then978 ], [ %so.2, %if.end975.if.end1011_crit_edge ]
  %sp.3 = phi i8 [ %xor10093214, %if.then978 ], [ %sp.2, %if.end975.if.end1011_crit_edge ]
  %arrayidx1012 = getelementptr i8, ptr %key, i32 28
  %330 = ptrtoint ptr %arrayidx1012 to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %arrayidx1012, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %331)
  %tobool1013.not = icmp eq i8 %331, 0
  br i1 %tobool1013.not, label %if.end1011.if.end1047_crit_edge, label %if.then1014

if.end1011.if.end1047_crit_edge:                  ; preds = %if.end1011
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1047

if.then1014:                                      ; preds = %if.end1011
  call void @__sanitizer_cov_trace_pc() #4
  %conv1016 = zext i8 %331 to i32
  %sub1017 = add nsw i32 %conv1016, -1
  %arrayidx1018 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub1017
  %332 = ptrtoint ptr %arrayidx1018 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %arrayidx1018, align 1
  %conv1019 = zext i8 %333 to i32
  %add1020 = add nuw nsw i32 %conv1019, 153
  %arrayidx1021 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add1020
  %334 = ptrtoint ptr %arrayidx1021 to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %arrayidx1021, align 1
  %xor10243207 = xor i8 %335, %sm.3
  %add1027 = add nuw nsw i32 %conv1019, 70
  %arrayidx1028 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add1027
  %336 = ptrtoint ptr %arrayidx1028 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %arrayidx1028, align 1
  %xor10313208 = xor i8 %337, %sn.3
  %add1034 = add nuw nsw i32 %conv1019, 102
  %arrayidx1035 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add1034
  %338 = ptrtoint ptr %arrayidx1035 to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %arrayidx1035, align 1
  %xor10383209 = xor i8 %339, %so.3
  %add1041 = add nuw nsw i32 %conv1019, 150
  %arrayidx1042 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add1041
  %340 = ptrtoint ptr %arrayidx1042 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %arrayidx1042, align 1
  %xor10453210 = xor i8 %341, %sp.3
  br label %if.end1047

if.end1047:                                       ; preds = %if.then1014, %if.end1011.if.end1047_crit_edge
  %sm.4 = phi i8 [ %xor10243207, %if.then1014 ], [ %sm.3, %if.end1011.if.end1047_crit_edge ]
  %sn.4 = phi i8 [ %xor10313208, %if.then1014 ], [ %sn.3, %if.end1011.if.end1047_crit_edge ]
  %so.4 = phi i8 [ %xor10383209, %if.then1014 ], [ %so.3, %if.end1011.if.end1047_crit_edge ]
  %sp.4 = phi i8 [ %xor10453210, %if.then1014 ], [ %sp.3, %if.end1011.if.end1047_crit_edge ]
  %arrayidx1048 = getelementptr i8, ptr %key, i32 29
  %342 = ptrtoint ptr %arrayidx1048 to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %arrayidx1048, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %343)
  %tobool1049.not = icmp eq i8 %343, 0
  br i1 %tobool1049.not, label %if.end1047.if.end1083_crit_edge, label %if.then1050

if.end1047.if.end1083_crit_edge:                  ; preds = %if.end1047
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1083

if.then1050:                                      ; preds = %if.end1047
  call void @__sanitizer_cov_trace_pc() #4
  %conv1052 = zext i8 %343 to i32
  %sub1053 = add nsw i32 %conv1052, -1
  %arrayidx1054 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub1053
  %344 = ptrtoint ptr %arrayidx1054 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %arrayidx1054, align 1
  %conv1055 = zext i8 %345 to i32
  %add1056 = add nuw nsw i32 %conv1055, 150
  %arrayidx1057 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add1056
  %346 = ptrtoint ptr %arrayidx1057 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %arrayidx1057, align 1
  %xor10603203 = xor i8 %347, %sm.4
  %add1063 = add nuw nsw i32 %conv1055, 60
  %arrayidx1064 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add1063
  %348 = ptrtoint ptr %arrayidx1064 to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %arrayidx1064, align 1
  %xor10673204 = xor i8 %349, %sn.4
  %add1070 = add nuw nsw i32 %conv1055, 91
  %arrayidx1071 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add1070
  %350 = ptrtoint ptr %arrayidx1071 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %arrayidx1071, align 1
  %xor10743205 = xor i8 %351, %so.4
  %add1077 = add nuw nsw i32 %conv1055, 237
  %arrayidx1078 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add1077
  %352 = ptrtoint ptr %arrayidx1078 to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %arrayidx1078, align 1
  %xor10813206 = xor i8 %353, %sp.4
  br label %if.end1083

if.end1083:                                       ; preds = %if.then1050, %if.end1047.if.end1083_crit_edge
  %sm.5 = phi i8 [ %xor10603203, %if.then1050 ], [ %sm.4, %if.end1047.if.end1083_crit_edge ]
  %sn.5 = phi i8 [ %xor10673204, %if.then1050 ], [ %sn.4, %if.end1047.if.end1083_crit_edge ]
  %so.5 = phi i8 [ %xor10743205, %if.then1050 ], [ %so.4, %if.end1047.if.end1083_crit_edge ]
  %sp.5 = phi i8 [ %xor10813206, %if.then1050 ], [ %sp.4, %if.end1047.if.end1083_crit_edge ]
  %arrayidx1084 = getelementptr i8, ptr %key, i32 30
  %354 = ptrtoint ptr %arrayidx1084 to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %arrayidx1084, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %355)
  %tobool1085.not = icmp eq i8 %355, 0
  br i1 %tobool1085.not, label %if.end1083.if.end1119_crit_edge, label %if.then1086

if.end1083.if.end1119_crit_edge:                  ; preds = %if.end1083
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1119

if.then1086:                                      ; preds = %if.end1083
  call void @__sanitizer_cov_trace_pc() #4
  %conv1088 = zext i8 %355 to i32
  %sub1089 = add nsw i32 %conv1088, -1
  %arrayidx1090 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub1089
  %356 = ptrtoint ptr %arrayidx1090 to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %arrayidx1090, align 1
  %conv1091 = zext i8 %357 to i32
  %add1092 = add nuw nsw i32 %conv1091, 237
  %arrayidx1093 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add1092
  %358 = ptrtoint ptr %arrayidx1093 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %arrayidx1093, align 1
  %xor10963199 = xor i8 %359, %sm.5
  %add1099 = add nuw nsw i32 %conv1091, 55
  %arrayidx1100 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add1099
  %360 = ptrtoint ptr %arrayidx1100 to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %arrayidx1100, align 1
  %xor11033200 = xor i8 %361, %sn.5
  %add1106 = add nuw nsw i32 %conv1091, 79
  %arrayidx1107 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add1106
  %362 = ptrtoint ptr %arrayidx1107 to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %arrayidx1107, align 1
  %xor11103201 = xor i8 %363, %so.5
  %add1113 = add nuw nsw i32 %conv1091, 224
  %arrayidx1114 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add1113
  %364 = ptrtoint ptr %arrayidx1114 to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %arrayidx1114, align 1
  %xor11173202 = xor i8 %365, %sp.5
  br label %if.end1119

if.end1119:                                       ; preds = %if.then1086, %if.end1083.if.end1119_crit_edge
  %sm.6 = phi i8 [ %xor10963199, %if.then1086 ], [ %sm.5, %if.end1083.if.end1119_crit_edge ]
  %sn.6 = phi i8 [ %xor11033200, %if.then1086 ], [ %sn.5, %if.end1083.if.end1119_crit_edge ]
  %so.6 = phi i8 [ %xor11103201, %if.then1086 ], [ %so.5, %if.end1083.if.end1119_crit_edge ]
  %sp.6 = phi i8 [ %xor11173202, %if.then1086 ], [ %sp.5, %if.end1083.if.end1119_crit_edge ]
  %arrayidx1120 = getelementptr i8, ptr %key, i32 31
  %366 = ptrtoint ptr %arrayidx1120 to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %arrayidx1120, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %367)
  %tobool1121.not = icmp eq i8 %367, 0
  br i1 %tobool1121.not, label %if.end1119.if.end1155_crit_edge, label %if.then1122

if.end1119.if.end1155_crit_edge:                  ; preds = %if.end1119
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1155

if.then1122:                                      ; preds = %if.end1119
  call void @__sanitizer_cov_trace_pc() #4
  %conv1124 = zext i8 %367 to i32
  %sub1125 = add nsw i32 %conv1124, -1
  %arrayidx1126 = getelementptr [255 x i8], ptr @poly_to_exp, i32 0, i32 %sub1125
  %368 = ptrtoint ptr %arrayidx1126 to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %arrayidx1126, align 1
  %conv1127 = zext i8 %369 to i32
  %add1128 = add nuw nsw i32 %conv1127, 224
  %arrayidx1129 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add1128
  %370 = ptrtoint ptr %arrayidx1129 to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %arrayidx1129, align 1
  %xor11323195 = xor i8 %371, %sm.6
  %add1135 = add nuw nsw i32 %conv1127, 208
  %arrayidx1136 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add1135
  %372 = ptrtoint ptr %arrayidx1136 to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %arrayidx1136, align 1
  %xor11393196 = xor i8 %373, %sn.6
  %add1142 = add nuw nsw i32 %conv1127, 140
  %arrayidx1143 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add1142
  %374 = ptrtoint ptr %arrayidx1143 to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %arrayidx1143, align 1
  %xor11463197 = xor i8 %375, %so.6
  %add1149 = add nuw nsw i32 %conv1127, 23
  %arrayidx1150 = getelementptr [492 x i8], ptr @exp_to_poly, i32 0, i32 %add1149
  %376 = ptrtoint ptr %arrayidx1150 to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %arrayidx1150, align 1
  %xor11533198 = xor i8 %377, %sp.6
  br label %if.end1155

if.end1155:                                       ; preds = %if.then1122, %if.end1119.if.end1155_crit_edge
  %sm.7 = phi i8 [ %xor11323195, %if.then1122 ], [ %sm.6, %if.end1119.if.end1155_crit_edge ]
  %sn.7 = phi i8 [ %xor11393196, %if.then1122 ], [ %sn.6, %if.end1119.if.end1155_crit_edge ]
  %so.7 = phi i8 [ %xor11463197, %if.then1122 ], [ %so.6, %if.end1119.if.end1155_crit_edge ]
  %sp.7 = phi i8 [ %xor11533198, %if.then1122 ], [ %sp.6, %if.end1119.if.end1155_crit_edge ]
  br label %for.body

for.cond1239.preheader:                           ; preds = %for.body
  %arrayidx1250 = getelementptr i8, ptr %key, i32 16
  %arrayidx1271 = getelementptr i8, ptr %key, i32 17
  %arrayidx1293 = getelementptr i8, ptr %key, i32 18
  %arrayidx1315 = getelementptr i8, ptr %key, i32 19
  %arrayidx1338 = getelementptr i8, ptr %key, i32 20
  %arrayidx1360 = getelementptr i8, ptr %key, i32 21
  %arrayidx1383 = getelementptr i8, ptr %key, i32 22
  %arrayidx1406 = getelementptr i8, ptr %key, i32 23
  br label %for.body1242

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end1155
  %k.03327 = phi i32 [ 1, %if.end1155 ], [ %add1238, %for.body.for.body_crit_edge ]
  %j.03326 = phi i32 [ 0, %if.end1155 ], [ %add1237, %for.body.for.body_crit_edge ]
  %i.03325 = phi i32 [ 0, %if.end1155 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx1158 = getelementptr [512 x i8], ptr @calc_sb_tbl, i32 0, i32 %k.03327
  %378 = ptrtoint ptr %arrayidx1158 to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %arrayidx1158, align 1
  %xor11613179 = xor i8 %379, %sa.7
  %xor1161 = zext i8 %xor11613179 to i32
  %arrayidx1162 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1161
  %380 = ptrtoint ptr %arrayidx1162 to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %arrayidx1162, align 1
  %xor11653180 = xor i8 %381, %se.7
  %xor1165 = zext i8 %xor11653180 to i32
  %arrayidx1166 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1165
  %382 = ptrtoint ptr %arrayidx1166 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %arrayidx1166, align 1
  %xor11693181 = xor i8 %383, %si.7
  %xor1169 = zext i8 %xor11693181 to i32
  %arrayidx1170 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1169
  %384 = ptrtoint ptr %arrayidx1170 to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %arrayidx1170, align 1
  %xor11733182 = xor i8 %385, %sm.7
  %xor1173 = zext i8 %xor11733182 to i32
  %arrayidx1174 = getelementptr [256 x i32], ptr @mds, i32 0, i32 %xor1173
  %386 = ptrtoint ptr %arrayidx1174 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %arrayidx1174, align 4
  %arrayidx1176 = getelementptr [256 x i32], ptr %ctx, i32 0, i32 %i.03325
  %388 = ptrtoint ptr %arrayidx1176 to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 %387, ptr %arrayidx1176, align 4
  %arrayidx1177 = getelementptr [512 x i8], ptr @calc_sb_tbl, i32 0, i32 %j.03326
  %389 = ptrtoint ptr %arrayidx1177 to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %arrayidx1177, align 1
  %xor11803183 = xor i8 %390, %sb.7
  %xor1180 = zext i8 %xor11803183 to i32
  %arrayidx1181 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1180
  %391 = ptrtoint ptr %arrayidx1181 to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %arrayidx1181, align 1
  %xor11843184 = xor i8 %392, %sf.7
  %xor1184 = zext i8 %xor11843184 to i32
  %arrayidx1185 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1184
  %393 = ptrtoint ptr %arrayidx1185 to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %arrayidx1185, align 1
  %xor11883185 = xor i8 %394, %sj.7
  %xor1188 = zext i8 %xor11883185 to i32
  %arrayidx1189 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1188
  %395 = ptrtoint ptr %arrayidx1189 to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %arrayidx1189, align 1
  %xor11923186 = xor i8 %396, %sn.7
  %xor1192 = zext i8 %xor11923186 to i32
  %arrayidx1193 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 1, i32 %xor1192
  %397 = ptrtoint ptr %arrayidx1193 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %arrayidx1193, align 4
  %arrayidx1196 = getelementptr [4 x [256 x i32]], ptr %ctx, i32 0, i32 1, i32 %i.03325
  %399 = ptrtoint ptr %arrayidx1196 to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %398, ptr %arrayidx1196, align 4
  %xor12003187 = xor i8 %390, %sc.7
  %xor1200 = zext i8 %xor12003187 to i32
  %arrayidx1201 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1200
  %400 = ptrtoint ptr %arrayidx1201 to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %arrayidx1201, align 1
  %xor12043188 = xor i8 %401, %sg.7
  %xor1204 = zext i8 %xor12043188 to i32
  %arrayidx1205 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1204
  %402 = ptrtoint ptr %arrayidx1205 to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %arrayidx1205, align 1
  %xor12083189 = xor i8 %403, %sk.7
  %xor1208 = zext i8 %xor12083189 to i32
  %arrayidx1209 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1208
  %404 = ptrtoint ptr %arrayidx1209 to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %arrayidx1209, align 1
  %xor12123190 = xor i8 %405, %so.7
  %xor1212 = zext i8 %xor12123190 to i32
  %arrayidx1213 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 2, i32 %xor1212
  %406 = ptrtoint ptr %arrayidx1213 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %arrayidx1213, align 4
  %arrayidx1216 = getelementptr [4 x [256 x i32]], ptr %ctx, i32 0, i32 2, i32 %i.03325
  %408 = ptrtoint ptr %arrayidx1216 to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %407, ptr %arrayidx1216, align 4
  %xor12203191 = xor i8 %379, %sd.7
  %xor1220 = zext i8 %xor12203191 to i32
  %arrayidx1221 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1220
  %409 = ptrtoint ptr %arrayidx1221 to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %arrayidx1221, align 1
  %xor12243192 = xor i8 %410, %sh.7
  %xor1224 = zext i8 %xor12243192 to i32
  %arrayidx1225 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1224
  %411 = ptrtoint ptr %arrayidx1225 to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %arrayidx1225, align 1
  %xor12283193 = xor i8 %412, %sl.7
  %xor1228 = zext i8 %xor12283193 to i32
  %arrayidx1229 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1228
  %413 = ptrtoint ptr %arrayidx1229 to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %arrayidx1229, align 1
  %xor12323194 = xor i8 %414, %sp.7
  %xor1232 = zext i8 %xor12323194 to i32
  %arrayidx1233 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 3, i32 %xor1232
  %415 = ptrtoint ptr %arrayidx1233 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %arrayidx1233, align 4
  %arrayidx1236 = getelementptr [4 x [256 x i32]], ptr %ctx, i32 0, i32 3, i32 %i.03325
  %417 = ptrtoint ptr %arrayidx1236 to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 %416, ptr %arrayidx1236, align 4
  %inc = add nuw nsw i32 %i.03325, 1
  %add1237 = add nuw nsw i32 %j.03326, 2
  %add1238 = add nuw nsw i32 %k.03327, 2
  %exitcond3337.not = icmp eq i32 %inc, 256
  br i1 %exitcond3337.not, label %for.cond1239.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body1242:                                     ; preds = %for.body1242.for.body1242_crit_edge, %for.cond1239.preheader
  %i.13328 = phi i32 [ 0, %for.cond1239.preheader ], [ %add1429, %for.body1242.for.body1242_crit_edge ]
  %arrayidx1243 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %i.13328
  %418 = ptrtoint ptr %arrayidx1243 to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %arrayidx1243, align 1
  %420 = ptrtoint ptr %arrayidx868 to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %arrayidx868, align 1
  %xor12473147 = xor i8 %421, %419
  %xor1247 = zext i8 %xor12473147 to i32
  %arrayidx1248 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1247
  %422 = ptrtoint ptr %arrayidx1248 to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %arrayidx1248, align 1
  %424 = ptrtoint ptr %arrayidx1250 to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %arrayidx1250, align 1
  %xor12523148 = xor i8 %425, %423
  %xor1252 = zext i8 %xor12523148 to i32
  %arrayidx1253 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1252
  %426 = ptrtoint ptr %arrayidx1253 to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %arrayidx1253, align 1
  %428 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %arrayidx284, align 1
  %xor12573149 = xor i8 %429, %427
  %xor1257 = zext i8 %xor12573149 to i32
  %arrayidx1258 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1257
  %430 = ptrtoint ptr %arrayidx1258 to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %arrayidx1258, align 1
  %432 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %key, align 1
  %xor12623150 = xor i8 %433, %431
  %xor1262 = zext i8 %xor12623150 to i32
  %arrayidx1263 = getelementptr [256 x i32], ptr @mds, i32 0, i32 %xor1262
  %434 = ptrtoint ptr %arrayidx1263 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %arrayidx1263, align 4
  %arrayidx1264 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %i.13328
  %436 = ptrtoint ptr %arrayidx1264 to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %arrayidx1264, align 1
  %438 = ptrtoint ptr %arrayidx904 to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %arrayidx904, align 1
  %xor12683151 = xor i8 %439, %437
  %xor1268 = zext i8 %xor12683151 to i32
  %arrayidx1269 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1268
  %440 = ptrtoint ptr %arrayidx1269 to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %arrayidx1269, align 1
  %442 = ptrtoint ptr %arrayidx1271 to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %arrayidx1271, align 1
  %xor12733152 = xor i8 %443, %441
  %xor1273 = zext i8 %xor12733152 to i32
  %arrayidx1274 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1273
  %444 = ptrtoint ptr %arrayidx1274 to i32
  call void @__asan_load1_noabort(i32 %444)
  %445 = load i8, ptr %arrayidx1274, align 1
  %446 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %arrayidx320, align 1
  %xor12783153 = xor i8 %447, %445
  %xor1278 = zext i8 %xor12783153 to i32
  %arrayidx1279 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1278
  %448 = ptrtoint ptr %arrayidx1279 to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %arrayidx1279, align 1
  %450 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %arrayidx32, align 1
  %xor12833154 = xor i8 %451, %449
  %xor1283 = zext i8 %xor12833154 to i32
  %arrayidx1284 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 1, i32 %xor1283
  %452 = ptrtoint ptr %arrayidx1284 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %arrayidx1284, align 4
  %xor1285 = xor i32 %453, %435
  %454 = ptrtoint ptr %arrayidx940 to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %arrayidx940, align 1
  %xor12903155 = xor i8 %455, %437
  %xor1290 = zext i8 %xor12903155 to i32
  %arrayidx1291 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1290
  %456 = ptrtoint ptr %arrayidx1291 to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %arrayidx1291, align 1
  %458 = ptrtoint ptr %arrayidx1293 to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %arrayidx1293, align 1
  %xor12953156 = xor i8 %459, %457
  %xor1295 = zext i8 %xor12953156 to i32
  %arrayidx1296 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1295
  %460 = ptrtoint ptr %arrayidx1296 to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %arrayidx1296, align 1
  %462 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %arrayidx356, align 1
  %xor13003157 = xor i8 %463, %461
  %xor1300 = zext i8 %xor13003157 to i32
  %arrayidx1301 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1300
  %464 = ptrtoint ptr %arrayidx1301 to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %arrayidx1301, align 1
  %466 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %466)
  %467 = load i8, ptr %arrayidx68, align 1
  %xor13053158 = xor i8 %467, %465
  %xor1305 = zext i8 %xor13053158 to i32
  %arrayidx1306 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 2, i32 %xor1305
  %468 = ptrtoint ptr %arrayidx1306 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %arrayidx1306, align 4
  %xor1307 = xor i32 %xor1285, %469
  %470 = ptrtoint ptr %arrayidx976 to i32
  call void @__asan_load1_noabort(i32 %470)
  %471 = load i8, ptr %arrayidx976, align 1
  %xor13123159 = xor i8 %471, %419
  %xor1312 = zext i8 %xor13123159 to i32
  %arrayidx1313 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1312
  %472 = ptrtoint ptr %arrayidx1313 to i32
  call void @__asan_load1_noabort(i32 %472)
  %473 = load i8, ptr %arrayidx1313, align 1
  %474 = ptrtoint ptr %arrayidx1315 to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %arrayidx1315, align 1
  %xor13173160 = xor i8 %475, %473
  %xor1317 = zext i8 %xor13173160 to i32
  %arrayidx1318 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1317
  %476 = ptrtoint ptr %arrayidx1318 to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %arrayidx1318, align 1
  %478 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_load1_noabort(i32 %478)
  %479 = load i8, ptr %arrayidx392, align 1
  %xor13223161 = xor i8 %479, %477
  %xor1322 = zext i8 %xor13223161 to i32
  %arrayidx1323 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1322
  %480 = ptrtoint ptr %arrayidx1323 to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %arrayidx1323, align 1
  %482 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %arrayidx104, align 1
  %xor13273162 = xor i8 %483, %481
  %xor1327 = zext i8 %xor13273162 to i32
  %arrayidx1328 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 3, i32 %xor1327
  %484 = ptrtoint ptr %arrayidx1328 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %arrayidx1328, align 4
  %xor1329 = xor i32 %xor1307, %485
  %add1330 = or i32 %i.13328, 1
  %arrayidx1331 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %add1330
  %486 = ptrtoint ptr %arrayidx1331 to i32
  call void @__asan_load1_noabort(i32 %486)
  %487 = load i8, ptr %arrayidx1331, align 1
  %488 = ptrtoint ptr %arrayidx1012 to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %arrayidx1012, align 1
  %xor13353163 = xor i8 %489, %487
  %xor1335 = zext i8 %xor13353163 to i32
  %arrayidx1336 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1335
  %490 = ptrtoint ptr %arrayidx1336 to i32
  call void @__asan_load1_noabort(i32 %490)
  %491 = load i8, ptr %arrayidx1336, align 1
  %492 = ptrtoint ptr %arrayidx1338 to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %arrayidx1338, align 1
  %xor13403164 = xor i8 %493, %491
  %xor1340 = zext i8 %xor13403164 to i32
  %arrayidx1341 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1340
  %494 = ptrtoint ptr %arrayidx1341 to i32
  call void @__asan_load1_noabort(i32 %494)
  %495 = load i8, ptr %arrayidx1341, align 1
  %496 = ptrtoint ptr %arrayidx428 to i32
  call void @__asan_load1_noabort(i32 %496)
  %497 = load i8, ptr %arrayidx428, align 1
  %xor13453165 = xor i8 %497, %495
  %xor1345 = zext i8 %xor13453165 to i32
  %arrayidx1346 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1345
  %498 = ptrtoint ptr %arrayidx1346 to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %arrayidx1346, align 1
  %500 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %arrayidx140, align 1
  %xor13503166 = xor i8 %501, %499
  %xor1350 = zext i8 %xor13503166 to i32
  %arrayidx1351 = getelementptr [256 x i32], ptr @mds, i32 0, i32 %xor1350
  %502 = ptrtoint ptr %arrayidx1351 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %arrayidx1351, align 4
  %arrayidx1353 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %add1330
  %504 = ptrtoint ptr %arrayidx1353 to i32
  call void @__asan_load1_noabort(i32 %504)
  %505 = load i8, ptr %arrayidx1353, align 1
  %506 = ptrtoint ptr %arrayidx1048 to i32
  call void @__asan_load1_noabort(i32 %506)
  %507 = load i8, ptr %arrayidx1048, align 1
  %xor13573167 = xor i8 %507, %505
  %xor1357 = zext i8 %xor13573167 to i32
  %arrayidx1358 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1357
  %508 = ptrtoint ptr %arrayidx1358 to i32
  call void @__asan_load1_noabort(i32 %508)
  %509 = load i8, ptr %arrayidx1358, align 1
  %510 = ptrtoint ptr %arrayidx1360 to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %arrayidx1360, align 1
  %xor13623168 = xor i8 %511, %509
  %xor1362 = zext i8 %xor13623168 to i32
  %arrayidx1363 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1362
  %512 = ptrtoint ptr %arrayidx1363 to i32
  call void @__asan_load1_noabort(i32 %512)
  %513 = load i8, ptr %arrayidx1363, align 1
  %514 = ptrtoint ptr %arrayidx464 to i32
  call void @__asan_load1_noabort(i32 %514)
  %515 = load i8, ptr %arrayidx464, align 1
  %xor13673169 = xor i8 %515, %513
  %xor1367 = zext i8 %xor13673169 to i32
  %arrayidx1368 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1367
  %516 = ptrtoint ptr %arrayidx1368 to i32
  call void @__asan_load1_noabort(i32 %516)
  %517 = load i8, ptr %arrayidx1368, align 1
  %518 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %518)
  %519 = load i8, ptr %arrayidx176, align 1
  %xor13723170 = xor i8 %519, %517
  %xor1372 = zext i8 %xor13723170 to i32
  %arrayidx1373 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 1, i32 %xor1372
  %520 = ptrtoint ptr %arrayidx1373 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %arrayidx1373, align 4
  %xor1374 = xor i32 %521, %503
  %522 = ptrtoint ptr %arrayidx1084 to i32
  call void @__asan_load1_noabort(i32 %522)
  %523 = load i8, ptr %arrayidx1084, align 1
  %xor13803171 = xor i8 %523, %505
  %xor1380 = zext i8 %xor13803171 to i32
  %arrayidx1381 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1380
  %524 = ptrtoint ptr %arrayidx1381 to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %arrayidx1381, align 1
  %526 = ptrtoint ptr %arrayidx1383 to i32
  call void @__asan_load1_noabort(i32 %526)
  %527 = load i8, ptr %arrayidx1383, align 1
  %xor13853172 = xor i8 %527, %525
  %xor1385 = zext i8 %xor13853172 to i32
  %arrayidx1386 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1385
  %528 = ptrtoint ptr %arrayidx1386 to i32
  call void @__asan_load1_noabort(i32 %528)
  %529 = load i8, ptr %arrayidx1386, align 1
  %530 = ptrtoint ptr %arrayidx500 to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %arrayidx500, align 1
  %xor13903173 = xor i8 %531, %529
  %xor1390 = zext i8 %xor13903173 to i32
  %arrayidx1391 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1390
  %532 = ptrtoint ptr %arrayidx1391 to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %arrayidx1391, align 1
  %534 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load1_noabort(i32 %534)
  %535 = load i8, ptr %arrayidx212, align 1
  %xor13953174 = xor i8 %535, %533
  %xor1395 = zext i8 %xor13953174 to i32
  %arrayidx1396 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 2, i32 %xor1395
  %536 = ptrtoint ptr %arrayidx1396 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %arrayidx1396, align 4
  %xor1397 = xor i32 %xor1374, %537
  %538 = ptrtoint ptr %arrayidx1120 to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %arrayidx1120, align 1
  %xor14033175 = xor i8 %539, %487
  %xor1403 = zext i8 %xor14033175 to i32
  %arrayidx1404 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1403
  %540 = ptrtoint ptr %arrayidx1404 to i32
  call void @__asan_load1_noabort(i32 %540)
  %541 = load i8, ptr %arrayidx1404, align 1
  %542 = ptrtoint ptr %arrayidx1406 to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %arrayidx1406, align 1
  %xor14083176 = xor i8 %543, %541
  %xor1408 = zext i8 %xor14083176 to i32
  %arrayidx1409 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1408
  %544 = ptrtoint ptr %arrayidx1409 to i32
  call void @__asan_load1_noabort(i32 %544)
  %545 = load i8, ptr %arrayidx1409, align 1
  %546 = ptrtoint ptr %arrayidx536 to i32
  call void @__asan_load1_noabort(i32 %546)
  %547 = load i8, ptr %arrayidx536, align 1
  %xor14133177 = xor i8 %547, %545
  %xor1413 = zext i8 %xor14133177 to i32
  %arrayidx1414 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1413
  %548 = ptrtoint ptr %arrayidx1414 to i32
  call void @__asan_load1_noabort(i32 %548)
  %549 = load i8, ptr %arrayidx1414, align 1
  %550 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load1_noabort(i32 %550)
  %551 = load i8, ptr %arrayidx248, align 1
  %xor14183178 = xor i8 %551, %549
  %xor1418 = zext i8 %xor14183178 to i32
  %arrayidx1419 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 3, i32 %xor1418
  %552 = ptrtoint ptr %arrayidx1419 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %arrayidx1419, align 4
  %xor1420 = xor i32 %xor1397, %553
  %or.i = tail call i32 @llvm.fshl.i32(i32 %xor1420, i32 %xor1420, i32 8) #2
  %add1421 = add i32 %or.i, %xor1329
  %add1422 = add i32 %add1421, %or.i
  %arrayidx1423 = getelementptr %struct.twofish_ctx, ptr %ctx, i32 0, i32 1, i32 %i.13328
  %554 = ptrtoint ptr %arrayidx1423 to i32
  call void @__asan_store4_noabort(i32 %554)
  store i32 %add1421, ptr %arrayidx1423, align 4
  %or.i3307 = tail call i32 @llvm.fshl.i32(i32 %add1422, i32 %add1422, i32 9) #2
  %arrayidx1427 = getelementptr %struct.twofish_ctx, ptr %ctx, i32 0, i32 1, i32 %add1330
  %555 = ptrtoint ptr %arrayidx1427 to i32
  call void @__asan_store4_noabort(i32 %555)
  store i32 %or.i3307, ptr %arrayidx1427, align 4
  %add1429 = add nuw nsw i32 %i.13328, 2
  %cmp1240 = icmp ult i32 %i.13328, 6
  br i1 %cmp1240, label %for.body1242.for.body1242_crit_edge, label %for.body1242.for.body1434_crit_edge

for.body1242.for.body1434_crit_edge:              ; preds = %for.body1242
  br label %for.body1434

for.body1242.for.body1242_crit_edge:              ; preds = %for.body1242
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body1242

for.body1434:                                     ; preds = %for.body1434.for.body1434_crit_edge, %for.body1242.for.body1434_crit_edge
  %i.23329 = phi i32 [ %add1627, %for.body1434.for.body1434_crit_edge ], [ 0, %for.body1242.for.body1434_crit_edge ]
  %add1435 = add nuw nsw i32 %i.23329, 8
  %arrayidx1436 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %add1435
  %556 = ptrtoint ptr %arrayidx1436 to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %arrayidx1436, align 1
  %558 = ptrtoint ptr %arrayidx868 to i32
  call void @__asan_load1_noabort(i32 %558)
  %559 = load i8, ptr %arrayidx868, align 1
  %xor14403115 = xor i8 %559, %557
  %xor1440 = zext i8 %xor14403115 to i32
  %arrayidx1441 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1440
  %560 = ptrtoint ptr %arrayidx1441 to i32
  call void @__asan_load1_noabort(i32 %560)
  %561 = load i8, ptr %arrayidx1441, align 1
  %562 = ptrtoint ptr %arrayidx1250 to i32
  call void @__asan_load1_noabort(i32 %562)
  %563 = load i8, ptr %arrayidx1250, align 1
  %xor14453116 = xor i8 %563, %561
  %xor1445 = zext i8 %xor14453116 to i32
  %arrayidx1446 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1445
  %564 = ptrtoint ptr %arrayidx1446 to i32
  call void @__asan_load1_noabort(i32 %564)
  %565 = load i8, ptr %arrayidx1446, align 1
  %566 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_load1_noabort(i32 %566)
  %567 = load i8, ptr %arrayidx284, align 1
  %xor14503117 = xor i8 %567, %565
  %xor1450 = zext i8 %xor14503117 to i32
  %arrayidx1451 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1450
  %568 = ptrtoint ptr %arrayidx1451 to i32
  call void @__asan_load1_noabort(i32 %568)
  %569 = load i8, ptr %arrayidx1451, align 1
  %570 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %key, align 1
  %xor14553118 = xor i8 %571, %569
  %xor1455 = zext i8 %xor14553118 to i32
  %arrayidx1456 = getelementptr [256 x i32], ptr @mds, i32 0, i32 %xor1455
  %572 = ptrtoint ptr %arrayidx1456 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %arrayidx1456, align 4
  %arrayidx1458 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %add1435
  %574 = ptrtoint ptr %arrayidx1458 to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %arrayidx1458, align 1
  %576 = ptrtoint ptr %arrayidx904 to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %arrayidx904, align 1
  %xor14623119 = xor i8 %577, %575
  %xor1462 = zext i8 %xor14623119 to i32
  %arrayidx1463 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1462
  %578 = ptrtoint ptr %arrayidx1463 to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %arrayidx1463, align 1
  %580 = ptrtoint ptr %arrayidx1271 to i32
  call void @__asan_load1_noabort(i32 %580)
  %581 = load i8, ptr %arrayidx1271, align 1
  %xor14673120 = xor i8 %581, %579
  %xor1467 = zext i8 %xor14673120 to i32
  %arrayidx1468 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1467
  %582 = ptrtoint ptr %arrayidx1468 to i32
  call void @__asan_load1_noabort(i32 %582)
  %583 = load i8, ptr %arrayidx1468, align 1
  %584 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_load1_noabort(i32 %584)
  %585 = load i8, ptr %arrayidx320, align 1
  %xor14723121 = xor i8 %585, %583
  %xor1472 = zext i8 %xor14723121 to i32
  %arrayidx1473 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1472
  %586 = ptrtoint ptr %arrayidx1473 to i32
  call void @__asan_load1_noabort(i32 %586)
  %587 = load i8, ptr %arrayidx1473, align 1
  %588 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %588)
  %589 = load i8, ptr %arrayidx32, align 1
  %xor14773122 = xor i8 %589, %587
  %xor1477 = zext i8 %xor14773122 to i32
  %arrayidx1478 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 1, i32 %xor1477
  %590 = ptrtoint ptr %arrayidx1478 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %arrayidx1478, align 4
  %xor1479 = xor i32 %591, %573
  %592 = ptrtoint ptr %arrayidx940 to i32
  call void @__asan_load1_noabort(i32 %592)
  %593 = load i8, ptr %arrayidx940, align 1
  %xor14853123 = xor i8 %593, %575
  %xor1485 = zext i8 %xor14853123 to i32
  %arrayidx1486 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1485
  %594 = ptrtoint ptr %arrayidx1486 to i32
  call void @__asan_load1_noabort(i32 %594)
  %595 = load i8, ptr %arrayidx1486, align 1
  %596 = ptrtoint ptr %arrayidx1293 to i32
  call void @__asan_load1_noabort(i32 %596)
  %597 = load i8, ptr %arrayidx1293, align 1
  %xor14903124 = xor i8 %597, %595
  %xor1490 = zext i8 %xor14903124 to i32
  %arrayidx1491 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1490
  %598 = ptrtoint ptr %arrayidx1491 to i32
  call void @__asan_load1_noabort(i32 %598)
  %599 = load i8, ptr %arrayidx1491, align 1
  %600 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load1_noabort(i32 %600)
  %601 = load i8, ptr %arrayidx356, align 1
  %xor14953125 = xor i8 %601, %599
  %xor1495 = zext i8 %xor14953125 to i32
  %arrayidx1496 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1495
  %602 = ptrtoint ptr %arrayidx1496 to i32
  call void @__asan_load1_noabort(i32 %602)
  %603 = load i8, ptr %arrayidx1496, align 1
  %604 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %604)
  %605 = load i8, ptr %arrayidx68, align 1
  %xor15003126 = xor i8 %605, %603
  %xor1500 = zext i8 %xor15003126 to i32
  %arrayidx1501 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 2, i32 %xor1500
  %606 = ptrtoint ptr %arrayidx1501 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load i32, ptr %arrayidx1501, align 4
  %xor1502 = xor i32 %xor1479, %607
  %608 = ptrtoint ptr %arrayidx976 to i32
  call void @__asan_load1_noabort(i32 %608)
  %609 = load i8, ptr %arrayidx976, align 1
  %xor15083127 = xor i8 %609, %557
  %xor1508 = zext i8 %xor15083127 to i32
  %arrayidx1509 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1508
  %610 = ptrtoint ptr %arrayidx1509 to i32
  call void @__asan_load1_noabort(i32 %610)
  %611 = load i8, ptr %arrayidx1509, align 1
  %612 = ptrtoint ptr %arrayidx1315 to i32
  call void @__asan_load1_noabort(i32 %612)
  %613 = load i8, ptr %arrayidx1315, align 1
  %xor15133128 = xor i8 %613, %611
  %xor1513 = zext i8 %xor15133128 to i32
  %arrayidx1514 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1513
  %614 = ptrtoint ptr %arrayidx1514 to i32
  call void @__asan_load1_noabort(i32 %614)
  %615 = load i8, ptr %arrayidx1514, align 1
  %616 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_load1_noabort(i32 %616)
  %617 = load i8, ptr %arrayidx392, align 1
  %xor15183129 = xor i8 %617, %615
  %xor1518 = zext i8 %xor15183129 to i32
  %arrayidx1519 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1518
  %618 = ptrtoint ptr %arrayidx1519 to i32
  call void @__asan_load1_noabort(i32 %618)
  %619 = load i8, ptr %arrayidx1519, align 1
  %620 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %620)
  %621 = load i8, ptr %arrayidx104, align 1
  %xor15233130 = xor i8 %621, %619
  %xor1523 = zext i8 %xor15233130 to i32
  %arrayidx1524 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 3, i32 %xor1523
  %622 = ptrtoint ptr %arrayidx1524 to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load i32, ptr %arrayidx1524, align 4
  %xor1525 = xor i32 %xor1502, %623
  %add1526 = add nuw nsw i32 %i.23329, 9
  %arrayidx1527 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %add1526
  %624 = ptrtoint ptr %arrayidx1527 to i32
  call void @__asan_load1_noabort(i32 %624)
  %625 = load i8, ptr %arrayidx1527, align 1
  %626 = ptrtoint ptr %arrayidx1012 to i32
  call void @__asan_load1_noabort(i32 %626)
  %627 = load i8, ptr %arrayidx1012, align 1
  %xor15313131 = xor i8 %627, %625
  %xor1531 = zext i8 %xor15313131 to i32
  %arrayidx1532 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1531
  %628 = ptrtoint ptr %arrayidx1532 to i32
  call void @__asan_load1_noabort(i32 %628)
  %629 = load i8, ptr %arrayidx1532, align 1
  %630 = ptrtoint ptr %arrayidx1338 to i32
  call void @__asan_load1_noabort(i32 %630)
  %631 = load i8, ptr %arrayidx1338, align 1
  %xor15363132 = xor i8 %631, %629
  %xor1536 = zext i8 %xor15363132 to i32
  %arrayidx1537 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1536
  %632 = ptrtoint ptr %arrayidx1537 to i32
  call void @__asan_load1_noabort(i32 %632)
  %633 = load i8, ptr %arrayidx1537, align 1
  %634 = ptrtoint ptr %arrayidx428 to i32
  call void @__asan_load1_noabort(i32 %634)
  %635 = load i8, ptr %arrayidx428, align 1
  %xor15413133 = xor i8 %635, %633
  %xor1541 = zext i8 %xor15413133 to i32
  %arrayidx1542 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1541
  %636 = ptrtoint ptr %arrayidx1542 to i32
  call void @__asan_load1_noabort(i32 %636)
  %637 = load i8, ptr %arrayidx1542, align 1
  %638 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %638)
  %639 = load i8, ptr %arrayidx140, align 1
  %xor15463134 = xor i8 %639, %637
  %xor1546 = zext i8 %xor15463134 to i32
  %arrayidx1547 = getelementptr [256 x i32], ptr @mds, i32 0, i32 %xor1546
  %640 = ptrtoint ptr %arrayidx1547 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load i32, ptr %arrayidx1547, align 4
  %arrayidx1549 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %add1526
  %642 = ptrtoint ptr %arrayidx1549 to i32
  call void @__asan_load1_noabort(i32 %642)
  %643 = load i8, ptr %arrayidx1549, align 1
  %644 = ptrtoint ptr %arrayidx1048 to i32
  call void @__asan_load1_noabort(i32 %644)
  %645 = load i8, ptr %arrayidx1048, align 1
  %xor15533135 = xor i8 %645, %643
  %xor1553 = zext i8 %xor15533135 to i32
  %arrayidx1554 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1553
  %646 = ptrtoint ptr %arrayidx1554 to i32
  call void @__asan_load1_noabort(i32 %646)
  %647 = load i8, ptr %arrayidx1554, align 1
  %648 = ptrtoint ptr %arrayidx1360 to i32
  call void @__asan_load1_noabort(i32 %648)
  %649 = load i8, ptr %arrayidx1360, align 1
  %xor15583136 = xor i8 %649, %647
  %xor1558 = zext i8 %xor15583136 to i32
  %arrayidx1559 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1558
  %650 = ptrtoint ptr %arrayidx1559 to i32
  call void @__asan_load1_noabort(i32 %650)
  %651 = load i8, ptr %arrayidx1559, align 1
  %652 = ptrtoint ptr %arrayidx464 to i32
  call void @__asan_load1_noabort(i32 %652)
  %653 = load i8, ptr %arrayidx464, align 1
  %xor15633137 = xor i8 %653, %651
  %xor1563 = zext i8 %xor15633137 to i32
  %arrayidx1564 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1563
  %654 = ptrtoint ptr %arrayidx1564 to i32
  call void @__asan_load1_noabort(i32 %654)
  %655 = load i8, ptr %arrayidx1564, align 1
  %656 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %656)
  %657 = load i8, ptr %arrayidx176, align 1
  %xor15683138 = xor i8 %657, %655
  %xor1568 = zext i8 %xor15683138 to i32
  %arrayidx1569 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 1, i32 %xor1568
  %658 = ptrtoint ptr %arrayidx1569 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %arrayidx1569, align 4
  %xor1570 = xor i32 %659, %641
  %660 = ptrtoint ptr %arrayidx1084 to i32
  call void @__asan_load1_noabort(i32 %660)
  %661 = load i8, ptr %arrayidx1084, align 1
  %xor15763139 = xor i8 %661, %643
  %xor1576 = zext i8 %xor15763139 to i32
  %arrayidx1577 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1576
  %662 = ptrtoint ptr %arrayidx1577 to i32
  call void @__asan_load1_noabort(i32 %662)
  %663 = load i8, ptr %arrayidx1577, align 1
  %664 = ptrtoint ptr %arrayidx1383 to i32
  call void @__asan_load1_noabort(i32 %664)
  %665 = load i8, ptr %arrayidx1383, align 1
  %xor15813140 = xor i8 %665, %663
  %xor1581 = zext i8 %xor15813140 to i32
  %arrayidx1582 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1581
  %666 = ptrtoint ptr %arrayidx1582 to i32
  call void @__asan_load1_noabort(i32 %666)
  %667 = load i8, ptr %arrayidx1582, align 1
  %668 = ptrtoint ptr %arrayidx500 to i32
  call void @__asan_load1_noabort(i32 %668)
  %669 = load i8, ptr %arrayidx500, align 1
  %xor15863141 = xor i8 %669, %667
  %xor1586 = zext i8 %xor15863141 to i32
  %arrayidx1587 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1586
  %670 = ptrtoint ptr %arrayidx1587 to i32
  call void @__asan_load1_noabort(i32 %670)
  %671 = load i8, ptr %arrayidx1587, align 1
  %672 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load1_noabort(i32 %672)
  %673 = load i8, ptr %arrayidx212, align 1
  %xor15913142 = xor i8 %673, %671
  %xor1591 = zext i8 %xor15913142 to i32
  %arrayidx1592 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 2, i32 %xor1591
  %674 = ptrtoint ptr %arrayidx1592 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load i32, ptr %arrayidx1592, align 4
  %xor1593 = xor i32 %xor1570, %675
  %676 = ptrtoint ptr %arrayidx1120 to i32
  call void @__asan_load1_noabort(i32 %676)
  %677 = load i8, ptr %arrayidx1120, align 1
  %xor15993143 = xor i8 %677, %625
  %xor1599 = zext i8 %xor15993143 to i32
  %arrayidx1600 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1599
  %678 = ptrtoint ptr %arrayidx1600 to i32
  call void @__asan_load1_noabort(i32 %678)
  %679 = load i8, ptr %arrayidx1600, align 1
  %680 = ptrtoint ptr %arrayidx1406 to i32
  call void @__asan_load1_noabort(i32 %680)
  %681 = load i8, ptr %arrayidx1406, align 1
  %xor16043144 = xor i8 %681, %679
  %xor1604 = zext i8 %xor16043144 to i32
  %arrayidx1605 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1604
  %682 = ptrtoint ptr %arrayidx1605 to i32
  call void @__asan_load1_noabort(i32 %682)
  %683 = load i8, ptr %arrayidx1605, align 1
  %684 = ptrtoint ptr %arrayidx536 to i32
  call void @__asan_load1_noabort(i32 %684)
  %685 = load i8, ptr %arrayidx536, align 1
  %xor16093145 = xor i8 %685, %683
  %xor1609 = zext i8 %xor16093145 to i32
  %arrayidx1610 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1609
  %686 = ptrtoint ptr %arrayidx1610 to i32
  call void @__asan_load1_noabort(i32 %686)
  %687 = load i8, ptr %arrayidx1610, align 1
  %688 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load1_noabort(i32 %688)
  %689 = load i8, ptr %arrayidx248, align 1
  %xor16143146 = xor i8 %689, %687
  %xor1614 = zext i8 %xor16143146 to i32
  %arrayidx1615 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 3, i32 %xor1614
  %690 = ptrtoint ptr %arrayidx1615 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load i32, ptr %arrayidx1615, align 4
  %xor1616 = xor i32 %xor1593, %691
  %or.i3308 = tail call i32 @llvm.fshl.i32(i32 %xor1616, i32 %xor1616, i32 8) #2
  %add1618 = add i32 %or.i3308, %xor1525
  %add1619 = add i32 %add1618, %or.i3308
  %arrayidx1621 = getelementptr %struct.twofish_ctx, ptr %ctx, i32 0, i32 2, i32 %i.23329
  %692 = ptrtoint ptr %arrayidx1621 to i32
  call void @__asan_store4_noabort(i32 %692)
  store i32 %add1618, ptr %arrayidx1621, align 4
  %or.i3309 = tail call i32 @llvm.fshl.i32(i32 %add1619, i32 %add1619, i32 9) #2
  %add1624 = or i32 %i.23329, 1
  %arrayidx1625 = getelementptr %struct.twofish_ctx, ptr %ctx, i32 0, i32 2, i32 %add1624
  %693 = ptrtoint ptr %arrayidx1625 to i32
  call void @__asan_store4_noabort(i32 %693)
  store i32 %or.i3309, ptr %arrayidx1625, align 4
  %add1627 = add nuw nsw i32 %i.23329, 2
  %cmp1432 = icmp ult i32 %i.23329, 30
  br i1 %cmp1432, label %for.body1434.for.body1434_crit_edge, label %for.body1434.cleanup_crit_edge

for.body1434.cleanup_crit_edge:                   ; preds = %for.body1434
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body1434.for.body1434_crit_edge:              ; preds = %for.body1434
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body1434

for.cond1705.preheader:                           ; preds = %for.body1635
  %arrayidx1711 = getelementptr i8, ptr %key, i32 16
  %arrayidx1727 = getelementptr i8, ptr %key, i32 17
  %arrayidx1744 = getelementptr i8, ptr %key, i32 18
  %arrayidx1761 = getelementptr i8, ptr %key, i32 19
  %arrayidx1779 = getelementptr i8, ptr %key, i32 20
  %arrayidx1796 = getelementptr i8, ptr %key, i32 21
  %arrayidx1814 = getelementptr i8, ptr %key, i32 22
  %arrayidx1832 = getelementptr i8, ptr %key, i32 23
  br label %for.body1708

for.body1635:                                     ; preds = %for.body1635.for.body1635_crit_edge, %if.end864.for.body1635_crit_edge
  %k.13322 = phi i32 [ %add1703, %for.body1635.for.body1635_crit_edge ], [ 1, %if.end864.for.body1635_crit_edge ]
  %j.13321 = phi i32 [ %add1702, %for.body1635.for.body1635_crit_edge ], [ 0, %if.end864.for.body1635_crit_edge ]
  %i.33320 = phi i32 [ %inc1701, %for.body1635.for.body1635_crit_edge ], [ 0, %if.end864.for.body1635_crit_edge ]
  %arrayidx1636 = getelementptr [512 x i8], ptr @calc_sb_tbl, i32 0, i32 %k.13322
  %694 = ptrtoint ptr %arrayidx1636 to i32
  call void @__asan_load1_noabort(i32 %694)
  %695 = load i8, ptr %arrayidx1636, align 1
  %xor16393103 = xor i8 %695, %sa.7
  %xor1639 = zext i8 %xor16393103 to i32
  %arrayidx1640 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1639
  %696 = ptrtoint ptr %arrayidx1640 to i32
  call void @__asan_load1_noabort(i32 %696)
  %697 = load i8, ptr %arrayidx1640, align 1
  %xor16433104 = xor i8 %697, %se.7
  %xor1643 = zext i8 %xor16433104 to i32
  %arrayidx1644 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1643
  %698 = ptrtoint ptr %arrayidx1644 to i32
  call void @__asan_load1_noabort(i32 %698)
  %699 = load i8, ptr %arrayidx1644, align 1
  %xor16473105 = xor i8 %699, %si.7
  %xor1647 = zext i8 %xor16473105 to i32
  %arrayidx1648 = getelementptr [256 x i32], ptr @mds, i32 0, i32 %xor1647
  %700 = ptrtoint ptr %arrayidx1648 to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load i32, ptr %arrayidx1648, align 4
  %arrayidx1651 = getelementptr [256 x i32], ptr %ctx, i32 0, i32 %i.33320
  %702 = ptrtoint ptr %arrayidx1651 to i32
  call void @__asan_store4_noabort(i32 %702)
  store i32 %701, ptr %arrayidx1651, align 4
  %xor16553106 = xor i8 %695, %sb.7
  %xor1655 = zext i8 %xor16553106 to i32
  %arrayidx1656 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1655
  %703 = ptrtoint ptr %arrayidx1656 to i32
  call void @__asan_load1_noabort(i32 %703)
  %704 = load i8, ptr %arrayidx1656, align 1
  %xor16593107 = xor i8 %704, %sf.7
  %xor1659 = zext i8 %xor16593107 to i32
  %arrayidx1660 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1659
  %705 = ptrtoint ptr %arrayidx1660 to i32
  call void @__asan_load1_noabort(i32 %705)
  %706 = load i8, ptr %arrayidx1660, align 1
  %xor16633108 = xor i8 %706, %sj.7
  %xor1663 = zext i8 %xor16633108 to i32
  %arrayidx1664 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 1, i32 %xor1663
  %707 = ptrtoint ptr %arrayidx1664 to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load i32, ptr %arrayidx1664, align 4
  %arrayidx1667 = getelementptr [4 x [256 x i32]], ptr %ctx, i32 0, i32 1, i32 %i.33320
  %709 = ptrtoint ptr %arrayidx1667 to i32
  call void @__asan_store4_noabort(i32 %709)
  store i32 %708, ptr %arrayidx1667, align 4
  %arrayidx1668 = getelementptr [512 x i8], ptr @calc_sb_tbl, i32 0, i32 %j.13321
  %710 = ptrtoint ptr %arrayidx1668 to i32
  call void @__asan_load1_noabort(i32 %710)
  %711 = load i8, ptr %arrayidx1668, align 1
  %xor16713109 = xor i8 %711, %sc.7
  %xor1671 = zext i8 %xor16713109 to i32
  %arrayidx1672 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1671
  %712 = ptrtoint ptr %arrayidx1672 to i32
  call void @__asan_load1_noabort(i32 %712)
  %713 = load i8, ptr %arrayidx1672, align 1
  %xor16753110 = xor i8 %713, %sg.7
  %xor1675 = zext i8 %xor16753110 to i32
  %arrayidx1676 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1675
  %714 = ptrtoint ptr %arrayidx1676 to i32
  call void @__asan_load1_noabort(i32 %714)
  %715 = load i8, ptr %arrayidx1676, align 1
  %xor16793111 = xor i8 %715, %sk.7
  %xor1679 = zext i8 %xor16793111 to i32
  %arrayidx1680 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 2, i32 %xor1679
  %716 = ptrtoint ptr %arrayidx1680 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load i32, ptr %arrayidx1680, align 4
  %arrayidx1683 = getelementptr [4 x [256 x i32]], ptr %ctx, i32 0, i32 2, i32 %i.33320
  %718 = ptrtoint ptr %arrayidx1683 to i32
  call void @__asan_store4_noabort(i32 %718)
  store i32 %717, ptr %arrayidx1683, align 4
  %xor16873112 = xor i8 %711, %sd.7
  %xor1687 = zext i8 %xor16873112 to i32
  %arrayidx1688 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1687
  %719 = ptrtoint ptr %arrayidx1688 to i32
  call void @__asan_load1_noabort(i32 %719)
  %720 = load i8, ptr %arrayidx1688, align 1
  %xor16913113 = xor i8 %720, %sh.7
  %xor1691 = zext i8 %xor16913113 to i32
  %arrayidx1692 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1691
  %721 = ptrtoint ptr %arrayidx1692 to i32
  call void @__asan_load1_noabort(i32 %721)
  %722 = load i8, ptr %arrayidx1692, align 1
  %xor16953114 = xor i8 %722, %sl.7
  %xor1695 = zext i8 %xor16953114 to i32
  %arrayidx1696 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 3, i32 %xor1695
  %723 = ptrtoint ptr %arrayidx1696 to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load i32, ptr %arrayidx1696, align 4
  %arrayidx1699 = getelementptr [4 x [256 x i32]], ptr %ctx, i32 0, i32 3, i32 %i.33320
  %725 = ptrtoint ptr %arrayidx1699 to i32
  call void @__asan_store4_noabort(i32 %725)
  store i32 %724, ptr %arrayidx1699, align 4
  %inc1701 = add nuw nsw i32 %i.33320, 1
  %add1702 = add nuw nsw i32 %j.13321, 2
  %add1703 = add nuw nsw i32 %k.13322, 2
  %exitcond.not = icmp eq i32 %inc1701, 256
  br i1 %exitcond.not, label %for.cond1705.preheader, label %for.body1635.for.body1635_crit_edge

for.body1635.for.body1635_crit_edge:              ; preds = %for.body1635
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body1635

for.body1708:                                     ; preds = %for.body1708.for.body1708_crit_edge, %for.cond1705.preheader
  %i.43323 = phi i32 [ 0, %for.cond1705.preheader ], [ %add1857, %for.body1708.for.body1708_crit_edge ]
  %arrayidx1709 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %i.43323
  %726 = ptrtoint ptr %arrayidx1709 to i32
  call void @__asan_load1_noabort(i32 %726)
  %727 = load i8, ptr %arrayidx1709, align 1
  %728 = ptrtoint ptr %arrayidx1711 to i32
  call void @__asan_load1_noabort(i32 %728)
  %729 = load i8, ptr %arrayidx1711, align 1
  %xor17133079 = xor i8 %729, %727
  %xor1713 = zext i8 %xor17133079 to i32
  %arrayidx1714 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1713
  %730 = ptrtoint ptr %arrayidx1714 to i32
  call void @__asan_load1_noabort(i32 %730)
  %731 = load i8, ptr %arrayidx1714, align 1
  %732 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_load1_noabort(i32 %732)
  %733 = load i8, ptr %arrayidx284, align 1
  %xor17183080 = xor i8 %733, %731
  %xor1718 = zext i8 %xor17183080 to i32
  %arrayidx1719 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1718
  %734 = ptrtoint ptr %arrayidx1719 to i32
  call void @__asan_load1_noabort(i32 %734)
  %735 = load i8, ptr %arrayidx1719, align 1
  %736 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %736)
  %737 = load i8, ptr %key, align 1
  %xor17233081 = xor i8 %737, %735
  %xor1723 = zext i8 %xor17233081 to i32
  %arrayidx1724 = getelementptr [256 x i32], ptr @mds, i32 0, i32 %xor1723
  %738 = ptrtoint ptr %arrayidx1724 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load i32, ptr %arrayidx1724, align 4
  %740 = ptrtoint ptr %arrayidx1727 to i32
  call void @__asan_load1_noabort(i32 %740)
  %741 = load i8, ptr %arrayidx1727, align 1
  %xor17293082 = xor i8 %741, %727
  %xor1729 = zext i8 %xor17293082 to i32
  %arrayidx1730 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1729
  %742 = ptrtoint ptr %arrayidx1730 to i32
  call void @__asan_load1_noabort(i32 %742)
  %743 = load i8, ptr %arrayidx1730, align 1
  %744 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_load1_noabort(i32 %744)
  %745 = load i8, ptr %arrayidx320, align 1
  %xor17343083 = xor i8 %745, %743
  %xor1734 = zext i8 %xor17343083 to i32
  %arrayidx1735 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1734
  %746 = ptrtoint ptr %arrayidx1735 to i32
  call void @__asan_load1_noabort(i32 %746)
  %747 = load i8, ptr %arrayidx1735, align 1
  %748 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %748)
  %749 = load i8, ptr %arrayidx32, align 1
  %xor17393084 = xor i8 %749, %747
  %xor1739 = zext i8 %xor17393084 to i32
  %arrayidx1740 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 1, i32 %xor1739
  %750 = ptrtoint ptr %arrayidx1740 to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load i32, ptr %arrayidx1740, align 4
  %xor1741 = xor i32 %751, %739
  %arrayidx1742 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %i.43323
  %752 = ptrtoint ptr %arrayidx1742 to i32
  call void @__asan_load1_noabort(i32 %752)
  %753 = load i8, ptr %arrayidx1742, align 1
  %754 = ptrtoint ptr %arrayidx1744 to i32
  call void @__asan_load1_noabort(i32 %754)
  %755 = load i8, ptr %arrayidx1744, align 1
  %xor17463085 = xor i8 %755, %753
  %xor1746 = zext i8 %xor17463085 to i32
  %arrayidx1747 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1746
  %756 = ptrtoint ptr %arrayidx1747 to i32
  call void @__asan_load1_noabort(i32 %756)
  %757 = load i8, ptr %arrayidx1747, align 1
  %758 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load1_noabort(i32 %758)
  %759 = load i8, ptr %arrayidx356, align 1
  %xor17513086 = xor i8 %759, %757
  %xor1751 = zext i8 %xor17513086 to i32
  %arrayidx1752 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1751
  %760 = ptrtoint ptr %arrayidx1752 to i32
  call void @__asan_load1_noabort(i32 %760)
  %761 = load i8, ptr %arrayidx1752, align 1
  %762 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %762)
  %763 = load i8, ptr %arrayidx68, align 1
  %xor17563087 = xor i8 %763, %761
  %xor1756 = zext i8 %xor17563087 to i32
  %arrayidx1757 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 2, i32 %xor1756
  %764 = ptrtoint ptr %arrayidx1757 to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load i32, ptr %arrayidx1757, align 4
  %xor1758 = xor i32 %xor1741, %765
  %766 = ptrtoint ptr %arrayidx1761 to i32
  call void @__asan_load1_noabort(i32 %766)
  %767 = load i8, ptr %arrayidx1761, align 1
  %xor17633088 = xor i8 %767, %753
  %xor1763 = zext i8 %xor17633088 to i32
  %arrayidx1764 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1763
  %768 = ptrtoint ptr %arrayidx1764 to i32
  call void @__asan_load1_noabort(i32 %768)
  %769 = load i8, ptr %arrayidx1764, align 1
  %770 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_load1_noabort(i32 %770)
  %771 = load i8, ptr %arrayidx392, align 1
  %xor17683089 = xor i8 %771, %769
  %xor1768 = zext i8 %xor17683089 to i32
  %arrayidx1769 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1768
  %772 = ptrtoint ptr %arrayidx1769 to i32
  call void @__asan_load1_noabort(i32 %772)
  %773 = load i8, ptr %arrayidx1769, align 1
  %774 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %774)
  %775 = load i8, ptr %arrayidx104, align 1
  %xor17733090 = xor i8 %775, %773
  %xor1773 = zext i8 %xor17733090 to i32
  %arrayidx1774 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 3, i32 %xor1773
  %776 = ptrtoint ptr %arrayidx1774 to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load i32, ptr %arrayidx1774, align 4
  %xor1775 = xor i32 %xor1758, %777
  %add1776 = or i32 %i.43323, 1
  %arrayidx1777 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %add1776
  %778 = ptrtoint ptr %arrayidx1777 to i32
  call void @__asan_load1_noabort(i32 %778)
  %779 = load i8, ptr %arrayidx1777, align 1
  %780 = ptrtoint ptr %arrayidx1779 to i32
  call void @__asan_load1_noabort(i32 %780)
  %781 = load i8, ptr %arrayidx1779, align 1
  %xor17813091 = xor i8 %781, %779
  %xor1781 = zext i8 %xor17813091 to i32
  %arrayidx1782 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1781
  %782 = ptrtoint ptr %arrayidx1782 to i32
  call void @__asan_load1_noabort(i32 %782)
  %783 = load i8, ptr %arrayidx1782, align 1
  %784 = ptrtoint ptr %arrayidx428 to i32
  call void @__asan_load1_noabort(i32 %784)
  %785 = load i8, ptr %arrayidx428, align 1
  %xor17863092 = xor i8 %785, %783
  %xor1786 = zext i8 %xor17863092 to i32
  %arrayidx1787 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1786
  %786 = ptrtoint ptr %arrayidx1787 to i32
  call void @__asan_load1_noabort(i32 %786)
  %787 = load i8, ptr %arrayidx1787, align 1
  %788 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %788)
  %789 = load i8, ptr %arrayidx140, align 1
  %xor17913093 = xor i8 %789, %787
  %xor1791 = zext i8 %xor17913093 to i32
  %arrayidx1792 = getelementptr [256 x i32], ptr @mds, i32 0, i32 %xor1791
  %790 = ptrtoint ptr %arrayidx1792 to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load i32, ptr %arrayidx1792, align 4
  %792 = ptrtoint ptr %arrayidx1796 to i32
  call void @__asan_load1_noabort(i32 %792)
  %793 = load i8, ptr %arrayidx1796, align 1
  %xor17983094 = xor i8 %793, %779
  %xor1798 = zext i8 %xor17983094 to i32
  %arrayidx1799 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1798
  %794 = ptrtoint ptr %arrayidx1799 to i32
  call void @__asan_load1_noabort(i32 %794)
  %795 = load i8, ptr %arrayidx1799, align 1
  %796 = ptrtoint ptr %arrayidx464 to i32
  call void @__asan_load1_noabort(i32 %796)
  %797 = load i8, ptr %arrayidx464, align 1
  %xor18033095 = xor i8 %797, %795
  %xor1803 = zext i8 %xor18033095 to i32
  %arrayidx1804 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1803
  %798 = ptrtoint ptr %arrayidx1804 to i32
  call void @__asan_load1_noabort(i32 %798)
  %799 = load i8, ptr %arrayidx1804, align 1
  %800 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %800)
  %801 = load i8, ptr %arrayidx176, align 1
  %xor18083096 = xor i8 %801, %799
  %xor1808 = zext i8 %xor18083096 to i32
  %arrayidx1809 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 1, i32 %xor1808
  %802 = ptrtoint ptr %arrayidx1809 to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load i32, ptr %arrayidx1809, align 4
  %xor1810 = xor i32 %803, %791
  %arrayidx1812 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %add1776
  %804 = ptrtoint ptr %arrayidx1812 to i32
  call void @__asan_load1_noabort(i32 %804)
  %805 = load i8, ptr %arrayidx1812, align 1
  %806 = ptrtoint ptr %arrayidx1814 to i32
  call void @__asan_load1_noabort(i32 %806)
  %807 = load i8, ptr %arrayidx1814, align 1
  %xor18163097 = xor i8 %807, %805
  %xor1816 = zext i8 %xor18163097 to i32
  %arrayidx1817 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1816
  %808 = ptrtoint ptr %arrayidx1817 to i32
  call void @__asan_load1_noabort(i32 %808)
  %809 = load i8, ptr %arrayidx1817, align 1
  %810 = ptrtoint ptr %arrayidx500 to i32
  call void @__asan_load1_noabort(i32 %810)
  %811 = load i8, ptr %arrayidx500, align 1
  %xor18213098 = xor i8 %811, %809
  %xor1821 = zext i8 %xor18213098 to i32
  %arrayidx1822 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1821
  %812 = ptrtoint ptr %arrayidx1822 to i32
  call void @__asan_load1_noabort(i32 %812)
  %813 = load i8, ptr %arrayidx1822, align 1
  %814 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load1_noabort(i32 %814)
  %815 = load i8, ptr %arrayidx212, align 1
  %xor18263099 = xor i8 %815, %813
  %xor1826 = zext i8 %xor18263099 to i32
  %arrayidx1827 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 2, i32 %xor1826
  %816 = ptrtoint ptr %arrayidx1827 to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load i32, ptr %arrayidx1827, align 4
  %xor1828 = xor i32 %xor1810, %817
  %818 = ptrtoint ptr %arrayidx1832 to i32
  call void @__asan_load1_noabort(i32 %818)
  %819 = load i8, ptr %arrayidx1832, align 1
  %xor18343100 = xor i8 %819, %805
  %xor1834 = zext i8 %xor18343100 to i32
  %arrayidx1835 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1834
  %820 = ptrtoint ptr %arrayidx1835 to i32
  call void @__asan_load1_noabort(i32 %820)
  %821 = load i8, ptr %arrayidx1835, align 1
  %822 = ptrtoint ptr %arrayidx536 to i32
  call void @__asan_load1_noabort(i32 %822)
  %823 = load i8, ptr %arrayidx536, align 1
  %xor18393101 = xor i8 %823, %821
  %xor1839 = zext i8 %xor18393101 to i32
  %arrayidx1840 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1839
  %824 = ptrtoint ptr %arrayidx1840 to i32
  call void @__asan_load1_noabort(i32 %824)
  %825 = load i8, ptr %arrayidx1840, align 1
  %826 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load1_noabort(i32 %826)
  %827 = load i8, ptr %arrayidx248, align 1
  %xor18443102 = xor i8 %827, %825
  %xor1844 = zext i8 %xor18443102 to i32
  %arrayidx1845 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 3, i32 %xor1844
  %828 = ptrtoint ptr %arrayidx1845 to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load i32, ptr %arrayidx1845, align 4
  %xor1846 = xor i32 %xor1828, %829
  %or.i3310 = tail call i32 @llvm.fshl.i32(i32 %xor1846, i32 %xor1846, i32 8) #2
  %add1848 = add i32 %or.i3310, %xor1775
  %add1849 = add i32 %add1848, %or.i3310
  %arrayidx1851 = getelementptr %struct.twofish_ctx, ptr %ctx, i32 0, i32 1, i32 %i.43323
  %830 = ptrtoint ptr %arrayidx1851 to i32
  call void @__asan_store4_noabort(i32 %830)
  store i32 %add1848, ptr %arrayidx1851, align 4
  %or.i3311 = tail call i32 @llvm.fshl.i32(i32 %add1849, i32 %add1849, i32 9) #2
  %arrayidx1855 = getelementptr %struct.twofish_ctx, ptr %ctx, i32 0, i32 1, i32 %add1776
  %831 = ptrtoint ptr %arrayidx1855 to i32
  call void @__asan_store4_noabort(i32 %831)
  store i32 %or.i3311, ptr %arrayidx1855, align 4
  %add1857 = add nuw nsw i32 %i.43323, 2
  %cmp1706 = icmp ult i32 %i.43323, 6
  br i1 %cmp1706, label %for.body1708.for.body1708_crit_edge, label %for.body1708.for.body1862_crit_edge

for.body1708.for.body1862_crit_edge:              ; preds = %for.body1708
  br label %for.body1862

for.body1708.for.body1708_crit_edge:              ; preds = %for.body1708
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body1708

for.body1862:                                     ; preds = %for.body1862.for.body1862_crit_edge, %for.body1708.for.body1862_crit_edge
  %i.53324 = phi i32 [ %add2015, %for.body1862.for.body1862_crit_edge ], [ 0, %for.body1708.for.body1862_crit_edge ]
  %add1863 = add nuw nsw i32 %i.53324, 8
  %arrayidx1864 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %add1863
  %832 = ptrtoint ptr %arrayidx1864 to i32
  call void @__asan_load1_noabort(i32 %832)
  %833 = load i8, ptr %arrayidx1864, align 1
  %834 = ptrtoint ptr %arrayidx1711 to i32
  call void @__asan_load1_noabort(i32 %834)
  %835 = load i8, ptr %arrayidx1711, align 1
  %xor18683055 = xor i8 %835, %833
  %xor1868 = zext i8 %xor18683055 to i32
  %arrayidx1869 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1868
  %836 = ptrtoint ptr %arrayidx1869 to i32
  call void @__asan_load1_noabort(i32 %836)
  %837 = load i8, ptr %arrayidx1869, align 1
  %838 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_load1_noabort(i32 %838)
  %839 = load i8, ptr %arrayidx284, align 1
  %xor18733056 = xor i8 %839, %837
  %xor1873 = zext i8 %xor18733056 to i32
  %arrayidx1874 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1873
  %840 = ptrtoint ptr %arrayidx1874 to i32
  call void @__asan_load1_noabort(i32 %840)
  %841 = load i8, ptr %arrayidx1874, align 1
  %842 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %842)
  %843 = load i8, ptr %key, align 1
  %xor18783057 = xor i8 %843, %841
  %xor1878 = zext i8 %xor18783057 to i32
  %arrayidx1879 = getelementptr [256 x i32], ptr @mds, i32 0, i32 %xor1878
  %844 = ptrtoint ptr %arrayidx1879 to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load i32, ptr %arrayidx1879, align 4
  %846 = ptrtoint ptr %arrayidx1727 to i32
  call void @__asan_load1_noabort(i32 %846)
  %847 = load i8, ptr %arrayidx1727, align 1
  %xor18853058 = xor i8 %847, %833
  %xor1885 = zext i8 %xor18853058 to i32
  %arrayidx1886 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1885
  %848 = ptrtoint ptr %arrayidx1886 to i32
  call void @__asan_load1_noabort(i32 %848)
  %849 = load i8, ptr %arrayidx1886, align 1
  %850 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_load1_noabort(i32 %850)
  %851 = load i8, ptr %arrayidx320, align 1
  %xor18903059 = xor i8 %851, %849
  %xor1890 = zext i8 %xor18903059 to i32
  %arrayidx1891 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1890
  %852 = ptrtoint ptr %arrayidx1891 to i32
  call void @__asan_load1_noabort(i32 %852)
  %853 = load i8, ptr %arrayidx1891, align 1
  %854 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %854)
  %855 = load i8, ptr %arrayidx32, align 1
  %xor18953060 = xor i8 %855, %853
  %xor1895 = zext i8 %xor18953060 to i32
  %arrayidx1896 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 1, i32 %xor1895
  %856 = ptrtoint ptr %arrayidx1896 to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load i32, ptr %arrayidx1896, align 4
  %xor1897 = xor i32 %857, %845
  %arrayidx1899 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %add1863
  %858 = ptrtoint ptr %arrayidx1899 to i32
  call void @__asan_load1_noabort(i32 %858)
  %859 = load i8, ptr %arrayidx1899, align 1
  %860 = ptrtoint ptr %arrayidx1744 to i32
  call void @__asan_load1_noabort(i32 %860)
  %861 = load i8, ptr %arrayidx1744, align 1
  %xor19033061 = xor i8 %861, %859
  %xor1903 = zext i8 %xor19033061 to i32
  %arrayidx1904 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1903
  %862 = ptrtoint ptr %arrayidx1904 to i32
  call void @__asan_load1_noabort(i32 %862)
  %863 = load i8, ptr %arrayidx1904, align 1
  %864 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load1_noabort(i32 %864)
  %865 = load i8, ptr %arrayidx356, align 1
  %xor19083062 = xor i8 %865, %863
  %xor1908 = zext i8 %xor19083062 to i32
  %arrayidx1909 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1908
  %866 = ptrtoint ptr %arrayidx1909 to i32
  call void @__asan_load1_noabort(i32 %866)
  %867 = load i8, ptr %arrayidx1909, align 1
  %868 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %868)
  %869 = load i8, ptr %arrayidx68, align 1
  %xor19133063 = xor i8 %869, %867
  %xor1913 = zext i8 %xor19133063 to i32
  %arrayidx1914 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 2, i32 %xor1913
  %870 = ptrtoint ptr %arrayidx1914 to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load i32, ptr %arrayidx1914, align 4
  %xor1915 = xor i32 %xor1897, %871
  %872 = ptrtoint ptr %arrayidx1761 to i32
  call void @__asan_load1_noabort(i32 %872)
  %873 = load i8, ptr %arrayidx1761, align 1
  %xor19213064 = xor i8 %873, %859
  %xor1921 = zext i8 %xor19213064 to i32
  %arrayidx1922 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1921
  %874 = ptrtoint ptr %arrayidx1922 to i32
  call void @__asan_load1_noabort(i32 %874)
  %875 = load i8, ptr %arrayidx1922, align 1
  %876 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_load1_noabort(i32 %876)
  %877 = load i8, ptr %arrayidx392, align 1
  %xor19263065 = xor i8 %877, %875
  %xor1926 = zext i8 %xor19263065 to i32
  %arrayidx1927 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1926
  %878 = ptrtoint ptr %arrayidx1927 to i32
  call void @__asan_load1_noabort(i32 %878)
  %879 = load i8, ptr %arrayidx1927, align 1
  %880 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %880)
  %881 = load i8, ptr %arrayidx104, align 1
  %xor19313066 = xor i8 %881, %879
  %xor1931 = zext i8 %xor19313066 to i32
  %arrayidx1932 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 3, i32 %xor1931
  %882 = ptrtoint ptr %arrayidx1932 to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load i32, ptr %arrayidx1932, align 4
  %xor1933 = xor i32 %xor1915, %883
  %add1934 = add nuw nsw i32 %i.53324, 9
  %arrayidx1935 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %add1934
  %884 = ptrtoint ptr %arrayidx1935 to i32
  call void @__asan_load1_noabort(i32 %884)
  %885 = load i8, ptr %arrayidx1935, align 1
  %886 = ptrtoint ptr %arrayidx1779 to i32
  call void @__asan_load1_noabort(i32 %886)
  %887 = load i8, ptr %arrayidx1779, align 1
  %xor19393067 = xor i8 %887, %885
  %xor1939 = zext i8 %xor19393067 to i32
  %arrayidx1940 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1939
  %888 = ptrtoint ptr %arrayidx1940 to i32
  call void @__asan_load1_noabort(i32 %888)
  %889 = load i8, ptr %arrayidx1940, align 1
  %890 = ptrtoint ptr %arrayidx428 to i32
  call void @__asan_load1_noabort(i32 %890)
  %891 = load i8, ptr %arrayidx428, align 1
  %xor19443068 = xor i8 %891, %889
  %xor1944 = zext i8 %xor19443068 to i32
  %arrayidx1945 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1944
  %892 = ptrtoint ptr %arrayidx1945 to i32
  call void @__asan_load1_noabort(i32 %892)
  %893 = load i8, ptr %arrayidx1945, align 1
  %894 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %894)
  %895 = load i8, ptr %arrayidx140, align 1
  %xor19493069 = xor i8 %895, %893
  %xor1949 = zext i8 %xor19493069 to i32
  %arrayidx1950 = getelementptr [256 x i32], ptr @mds, i32 0, i32 %xor1949
  %896 = ptrtoint ptr %arrayidx1950 to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load i32, ptr %arrayidx1950, align 4
  %898 = ptrtoint ptr %arrayidx1796 to i32
  call void @__asan_load1_noabort(i32 %898)
  %899 = load i8, ptr %arrayidx1796, align 1
  %xor19563070 = xor i8 %899, %885
  %xor1956 = zext i8 %xor19563070 to i32
  %arrayidx1957 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1956
  %900 = ptrtoint ptr %arrayidx1957 to i32
  call void @__asan_load1_noabort(i32 %900)
  %901 = load i8, ptr %arrayidx1957, align 1
  %902 = ptrtoint ptr %arrayidx464 to i32
  call void @__asan_load1_noabort(i32 %902)
  %903 = load i8, ptr %arrayidx464, align 1
  %xor19613071 = xor i8 %903, %901
  %xor1961 = zext i8 %xor19613071 to i32
  %arrayidx1962 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1961
  %904 = ptrtoint ptr %arrayidx1962 to i32
  call void @__asan_load1_noabort(i32 %904)
  %905 = load i8, ptr %arrayidx1962, align 1
  %906 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %906)
  %907 = load i8, ptr %arrayidx176, align 1
  %xor19663072 = xor i8 %907, %905
  %xor1966 = zext i8 %xor19663072 to i32
  %arrayidx1967 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 1, i32 %xor1966
  %908 = ptrtoint ptr %arrayidx1967 to i32
  call void @__asan_load4_noabort(i32 %908)
  %909 = load i32, ptr %arrayidx1967, align 4
  %xor1968 = xor i32 %909, %897
  %arrayidx1970 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %add1934
  %910 = ptrtoint ptr %arrayidx1970 to i32
  call void @__asan_load1_noabort(i32 %910)
  %911 = load i8, ptr %arrayidx1970, align 1
  %912 = ptrtoint ptr %arrayidx1814 to i32
  call void @__asan_load1_noabort(i32 %912)
  %913 = load i8, ptr %arrayidx1814, align 1
  %xor19743073 = xor i8 %913, %911
  %xor1974 = zext i8 %xor19743073 to i32
  %arrayidx1975 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor1974
  %914 = ptrtoint ptr %arrayidx1975 to i32
  call void @__asan_load1_noabort(i32 %914)
  %915 = load i8, ptr %arrayidx1975, align 1
  %916 = ptrtoint ptr %arrayidx500 to i32
  call void @__asan_load1_noabort(i32 %916)
  %917 = load i8, ptr %arrayidx500, align 1
  %xor19793074 = xor i8 %917, %915
  %xor1979 = zext i8 %xor19793074 to i32
  %arrayidx1980 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1979
  %918 = ptrtoint ptr %arrayidx1980 to i32
  call void @__asan_load1_noabort(i32 %918)
  %919 = load i8, ptr %arrayidx1980, align 1
  %920 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load1_noabort(i32 %920)
  %921 = load i8, ptr %arrayidx212, align 1
  %xor19843075 = xor i8 %921, %919
  %xor1984 = zext i8 %xor19843075 to i32
  %arrayidx1985 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 2, i32 %xor1984
  %922 = ptrtoint ptr %arrayidx1985 to i32
  call void @__asan_load4_noabort(i32 %922)
  %923 = load i32, ptr %arrayidx1985, align 4
  %xor1986 = xor i32 %xor1968, %923
  %924 = ptrtoint ptr %arrayidx1832 to i32
  call void @__asan_load1_noabort(i32 %924)
  %925 = load i8, ptr %arrayidx1832, align 1
  %xor19923076 = xor i8 %925, %911
  %xor1992 = zext i8 %xor19923076 to i32
  %arrayidx1993 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1992
  %926 = ptrtoint ptr %arrayidx1993 to i32
  call void @__asan_load1_noabort(i32 %926)
  %927 = load i8, ptr %arrayidx1993, align 1
  %928 = ptrtoint ptr %arrayidx536 to i32
  call void @__asan_load1_noabort(i32 %928)
  %929 = load i8, ptr %arrayidx536, align 1
  %xor19973077 = xor i8 %929, %927
  %xor1997 = zext i8 %xor19973077 to i32
  %arrayidx1998 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor1997
  %930 = ptrtoint ptr %arrayidx1998 to i32
  call void @__asan_load1_noabort(i32 %930)
  %931 = load i8, ptr %arrayidx1998, align 1
  %932 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load1_noabort(i32 %932)
  %933 = load i8, ptr %arrayidx248, align 1
  %xor20023078 = xor i8 %933, %931
  %xor2002 = zext i8 %xor20023078 to i32
  %arrayidx2003 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 3, i32 %xor2002
  %934 = ptrtoint ptr %arrayidx2003 to i32
  call void @__asan_load4_noabort(i32 %934)
  %935 = load i32, ptr %arrayidx2003, align 4
  %xor2004 = xor i32 %xor1986, %935
  %or.i3312 = tail call i32 @llvm.fshl.i32(i32 %xor2004, i32 %xor2004, i32 8) #2
  %add2006 = add i32 %or.i3312, %xor1933
  %add2007 = add i32 %add2006, %or.i3312
  %arrayidx2009 = getelementptr %struct.twofish_ctx, ptr %ctx, i32 0, i32 2, i32 %i.53324
  %936 = ptrtoint ptr %arrayidx2009 to i32
  call void @__asan_store4_noabort(i32 %936)
  store i32 %add2006, ptr %arrayidx2009, align 4
  %or.i3313 = tail call i32 @llvm.fshl.i32(i32 %add2007, i32 %add2007, i32 9) #2
  %add2012 = or i32 %i.53324, 1
  %arrayidx2013 = getelementptr %struct.twofish_ctx, ptr %ctx, i32 0, i32 2, i32 %add2012
  %937 = ptrtoint ptr %arrayidx2013 to i32
  call void @__asan_store4_noabort(i32 %937)
  store i32 %or.i3313, ptr %arrayidx2013, align 4
  %add2015 = add nuw nsw i32 %i.53324, 2
  %cmp1860 = icmp ult i32 %i.53324, 30
  br i1 %cmp1860, label %for.body1862.for.body1862_crit_edge, label %for.body1862.cleanup_crit_edge

for.body1862.cleanup_crit_edge:                   ; preds = %for.body1862
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body1862.for.body1862_crit_edge:              ; preds = %for.body1862
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body1862

for.body2021:                                     ; preds = %for.body2021.for.body2021_crit_edge, %if.end864.for.body2021_crit_edge
  %k.23332 = phi i32 [ %add2073, %for.body2021.for.body2021_crit_edge ], [ 1, %if.end864.for.body2021_crit_edge ]
  %j.23331 = phi i32 [ %add2072, %for.body2021.for.body2021_crit_edge ], [ 0, %if.end864.for.body2021_crit_edge ]
  %i.63330 = phi i32 [ %inc2071, %for.body2021.for.body2021_crit_edge ], [ 0, %if.end864.for.body2021_crit_edge ]
  %arrayidx2022 = getelementptr [512 x i8], ptr @calc_sb_tbl, i32 0, i32 %j.23331
  %938 = ptrtoint ptr %arrayidx2022 to i32
  call void @__asan_load1_noabort(i32 %938)
  %939 = load i8, ptr %arrayidx2022, align 1
  %xor20253047 = xor i8 %939, %sa.7
  %xor2025 = zext i8 %xor20253047 to i32
  %arrayidx2026 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor2025
  %940 = ptrtoint ptr %arrayidx2026 to i32
  call void @__asan_load1_noabort(i32 %940)
  %941 = load i8, ptr %arrayidx2026, align 1
  %xor20293048 = xor i8 %941, %se.7
  %xor2029 = zext i8 %xor20293048 to i32
  %arrayidx2030 = getelementptr [256 x i32], ptr @mds, i32 0, i32 %xor2029
  %942 = ptrtoint ptr %arrayidx2030 to i32
  call void @__asan_load4_noabort(i32 %942)
  %943 = load i32, ptr %arrayidx2030, align 4
  %arrayidx2033 = getelementptr [256 x i32], ptr %ctx, i32 0, i32 %i.63330
  %944 = ptrtoint ptr %arrayidx2033 to i32
  call void @__asan_store4_noabort(i32 %944)
  store i32 %943, ptr %arrayidx2033, align 4
  %arrayidx2034 = getelementptr [512 x i8], ptr @calc_sb_tbl, i32 0, i32 %k.23332
  %945 = ptrtoint ptr %arrayidx2034 to i32
  call void @__asan_load1_noabort(i32 %945)
  %946 = load i8, ptr %arrayidx2034, align 1
  %xor20373049 = xor i8 %946, %sb.7
  %xor2037 = zext i8 %xor20373049 to i32
  %arrayidx2038 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor2037
  %947 = ptrtoint ptr %arrayidx2038 to i32
  call void @__asan_load1_noabort(i32 %947)
  %948 = load i8, ptr %arrayidx2038, align 1
  %xor20413050 = xor i8 %948, %sf.7
  %xor2041 = zext i8 %xor20413050 to i32
  %arrayidx2042 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 1, i32 %xor2041
  %949 = ptrtoint ptr %arrayidx2042 to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load i32, ptr %arrayidx2042, align 4
  %arrayidx2045 = getelementptr [4 x [256 x i32]], ptr %ctx, i32 0, i32 1, i32 %i.63330
  %951 = ptrtoint ptr %arrayidx2045 to i32
  call void @__asan_store4_noabort(i32 %951)
  store i32 %950, ptr %arrayidx2045, align 4
  %xor20493051 = xor i8 %939, %sc.7
  %xor2049 = zext i8 %xor20493051 to i32
  %arrayidx2050 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor2049
  %952 = ptrtoint ptr %arrayidx2050 to i32
  call void @__asan_load1_noabort(i32 %952)
  %953 = load i8, ptr %arrayidx2050, align 1
  %xor20533052 = xor i8 %953, %sg.7
  %xor2053 = zext i8 %xor20533052 to i32
  %arrayidx2054 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 2, i32 %xor2053
  %954 = ptrtoint ptr %arrayidx2054 to i32
  call void @__asan_load4_noabort(i32 %954)
  %955 = load i32, ptr %arrayidx2054, align 4
  %arrayidx2057 = getelementptr [4 x [256 x i32]], ptr %ctx, i32 0, i32 2, i32 %i.63330
  %956 = ptrtoint ptr %arrayidx2057 to i32
  call void @__asan_store4_noabort(i32 %956)
  store i32 %955, ptr %arrayidx2057, align 4
  %xor20613053 = xor i8 %946, %sd.7
  %xor2061 = zext i8 %xor20613053 to i32
  %arrayidx2062 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor2061
  %957 = ptrtoint ptr %arrayidx2062 to i32
  call void @__asan_load1_noabort(i32 %957)
  %958 = load i8, ptr %arrayidx2062, align 1
  %xor20653054 = xor i8 %958, %sh.7
  %xor2065 = zext i8 %xor20653054 to i32
  %arrayidx2066 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 3, i32 %xor2065
  %959 = ptrtoint ptr %arrayidx2066 to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load i32, ptr %arrayidx2066, align 4
  %arrayidx2069 = getelementptr [4 x [256 x i32]], ptr %ctx, i32 0, i32 3, i32 %i.63330
  %961 = ptrtoint ptr %arrayidx2069 to i32
  call void @__asan_store4_noabort(i32 %961)
  store i32 %960, ptr %arrayidx2069, align 4
  %inc2071 = add nuw nsw i32 %i.63330, 1
  %add2072 = add nuw nsw i32 %j.23331, 2
  %add2073 = add nuw nsw i32 %k.23332, 2
  %exitcond3338.not = icmp eq i32 %inc2071, 256
  br i1 %exitcond3338.not, label %for.body2021.for.body2078_crit_edge, label %for.body2021.for.body2021_crit_edge

for.body2021.for.body2021_crit_edge:              ; preds = %for.body2021
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body2021

for.body2021.for.body2078_crit_edge:              ; preds = %for.body2021
  br label %for.body2078

for.body2078:                                     ; preds = %for.body2078.for.body2078_crit_edge, %for.body2021.for.body2078_crit_edge
  %i.73333 = phi i32 [ %add2187, %for.body2078.for.body2078_crit_edge ], [ 0, %for.body2021.for.body2078_crit_edge ]
  %arrayidx2079 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %i.73333
  %962 = ptrtoint ptr %arrayidx2079 to i32
  call void @__asan_load1_noabort(i32 %962)
  %963 = load i8, ptr %arrayidx2079, align 1
  %964 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_load1_noabort(i32 %964)
  %965 = load i8, ptr %arrayidx284, align 1
  %xor20833031 = xor i8 %965, %963
  %xor2083 = zext i8 %xor20833031 to i32
  %arrayidx2084 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor2083
  %966 = ptrtoint ptr %arrayidx2084 to i32
  call void @__asan_load1_noabort(i32 %966)
  %967 = load i8, ptr %arrayidx2084, align 1
  %968 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %968)
  %969 = load i8, ptr %key, align 1
  %xor20883032 = xor i8 %969, %967
  %xor2088 = zext i8 %xor20883032 to i32
  %arrayidx2089 = getelementptr [256 x i32], ptr @mds, i32 0, i32 %xor2088
  %970 = ptrtoint ptr %arrayidx2089 to i32
  call void @__asan_load4_noabort(i32 %970)
  %971 = load i32, ptr %arrayidx2089, align 4
  %arrayidx2090 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %i.73333
  %972 = ptrtoint ptr %arrayidx2090 to i32
  call void @__asan_load1_noabort(i32 %972)
  %973 = load i8, ptr %arrayidx2090, align 1
  %974 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_load1_noabort(i32 %974)
  %975 = load i8, ptr %arrayidx320, align 1
  %xor20943033 = xor i8 %975, %973
  %xor2094 = zext i8 %xor20943033 to i32
  %arrayidx2095 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor2094
  %976 = ptrtoint ptr %arrayidx2095 to i32
  call void @__asan_load1_noabort(i32 %976)
  %977 = load i8, ptr %arrayidx2095, align 1
  %978 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %978)
  %979 = load i8, ptr %arrayidx32, align 1
  %xor20993034 = xor i8 %979, %977
  %xor2099 = zext i8 %xor20993034 to i32
  %arrayidx2100 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 1, i32 %xor2099
  %980 = ptrtoint ptr %arrayidx2100 to i32
  call void @__asan_load4_noabort(i32 %980)
  %981 = load i32, ptr %arrayidx2100, align 4
  %xor2101 = xor i32 %981, %971
  %982 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load1_noabort(i32 %982)
  %983 = load i8, ptr %arrayidx356, align 1
  %xor21063035 = xor i8 %983, %963
  %xor2106 = zext i8 %xor21063035 to i32
  %arrayidx2107 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor2106
  %984 = ptrtoint ptr %arrayidx2107 to i32
  call void @__asan_load1_noabort(i32 %984)
  %985 = load i8, ptr %arrayidx2107, align 1
  %986 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %986)
  %987 = load i8, ptr %arrayidx68, align 1
  %xor21113036 = xor i8 %987, %985
  %xor2111 = zext i8 %xor21113036 to i32
  %arrayidx2112 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 2, i32 %xor2111
  %988 = ptrtoint ptr %arrayidx2112 to i32
  call void @__asan_load4_noabort(i32 %988)
  %989 = load i32, ptr %arrayidx2112, align 4
  %xor2113 = xor i32 %xor2101, %989
  %990 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_load1_noabort(i32 %990)
  %991 = load i8, ptr %arrayidx392, align 1
  %xor21183037 = xor i8 %991, %973
  %xor2118 = zext i8 %xor21183037 to i32
  %arrayidx2119 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor2118
  %992 = ptrtoint ptr %arrayidx2119 to i32
  call void @__asan_load1_noabort(i32 %992)
  %993 = load i8, ptr %arrayidx2119, align 1
  %994 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %994)
  %995 = load i8, ptr %arrayidx104, align 1
  %xor21233038 = xor i8 %995, %993
  %xor2123 = zext i8 %xor21233038 to i32
  %arrayidx2124 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 3, i32 %xor2123
  %996 = ptrtoint ptr %arrayidx2124 to i32
  call void @__asan_load4_noabort(i32 %996)
  %997 = load i32, ptr %arrayidx2124, align 4
  %xor2125 = xor i32 %xor2113, %997
  %add2126 = or i32 %i.73333, 1
  %arrayidx2127 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %add2126
  %998 = ptrtoint ptr %arrayidx2127 to i32
  call void @__asan_load1_noabort(i32 %998)
  %999 = load i8, ptr %arrayidx2127, align 1
  %1000 = ptrtoint ptr %arrayidx428 to i32
  call void @__asan_load1_noabort(i32 %1000)
  %1001 = load i8, ptr %arrayidx428, align 1
  %xor21313039 = xor i8 %1001, %999
  %xor2131 = zext i8 %xor21313039 to i32
  %arrayidx2132 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor2131
  %1002 = ptrtoint ptr %arrayidx2132 to i32
  call void @__asan_load1_noabort(i32 %1002)
  %1003 = load i8, ptr %arrayidx2132, align 1
  %1004 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %1004)
  %1005 = load i8, ptr %arrayidx140, align 1
  %xor21363040 = xor i8 %1005, %1003
  %xor2136 = zext i8 %xor21363040 to i32
  %arrayidx2137 = getelementptr [256 x i32], ptr @mds, i32 0, i32 %xor2136
  %1006 = ptrtoint ptr %arrayidx2137 to i32
  call void @__asan_load4_noabort(i32 %1006)
  %1007 = load i32, ptr %arrayidx2137, align 4
  %arrayidx2139 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %add2126
  %1008 = ptrtoint ptr %arrayidx2139 to i32
  call void @__asan_load1_noabort(i32 %1008)
  %1009 = load i8, ptr %arrayidx2139, align 1
  %1010 = ptrtoint ptr %arrayidx464 to i32
  call void @__asan_load1_noabort(i32 %1010)
  %1011 = load i8, ptr %arrayidx464, align 1
  %xor21433041 = xor i8 %1011, %1009
  %xor2143 = zext i8 %xor21433041 to i32
  %arrayidx2144 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor2143
  %1012 = ptrtoint ptr %arrayidx2144 to i32
  call void @__asan_load1_noabort(i32 %1012)
  %1013 = load i8, ptr %arrayidx2144, align 1
  %1014 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %1014)
  %1015 = load i8, ptr %arrayidx176, align 1
  %xor21483042 = xor i8 %1015, %1013
  %xor2148 = zext i8 %xor21483042 to i32
  %arrayidx2149 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 1, i32 %xor2148
  %1016 = ptrtoint ptr %arrayidx2149 to i32
  call void @__asan_load4_noabort(i32 %1016)
  %1017 = load i32, ptr %arrayidx2149, align 4
  %xor2150 = xor i32 %1017, %1007
  %1018 = ptrtoint ptr %arrayidx500 to i32
  call void @__asan_load1_noabort(i32 %1018)
  %1019 = load i8, ptr %arrayidx500, align 1
  %xor21563043 = xor i8 %1019, %999
  %xor2156 = zext i8 %xor21563043 to i32
  %arrayidx2157 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor2156
  %1020 = ptrtoint ptr %arrayidx2157 to i32
  call void @__asan_load1_noabort(i32 %1020)
  %1021 = load i8, ptr %arrayidx2157, align 1
  %1022 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load1_noabort(i32 %1022)
  %1023 = load i8, ptr %arrayidx212, align 1
  %xor21613044 = xor i8 %1023, %1021
  %xor2161 = zext i8 %xor21613044 to i32
  %arrayidx2162 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 2, i32 %xor2161
  %1024 = ptrtoint ptr %arrayidx2162 to i32
  call void @__asan_load4_noabort(i32 %1024)
  %1025 = load i32, ptr %arrayidx2162, align 4
  %xor2163 = xor i32 %xor2150, %1025
  %1026 = ptrtoint ptr %arrayidx536 to i32
  call void @__asan_load1_noabort(i32 %1026)
  %1027 = load i8, ptr %arrayidx536, align 1
  %xor21693045 = xor i8 %1027, %1009
  %xor2169 = zext i8 %xor21693045 to i32
  %arrayidx2170 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor2169
  %1028 = ptrtoint ptr %arrayidx2170 to i32
  call void @__asan_load1_noabort(i32 %1028)
  %1029 = load i8, ptr %arrayidx2170, align 1
  %1030 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load1_noabort(i32 %1030)
  %1031 = load i8, ptr %arrayidx248, align 1
  %xor21743046 = xor i8 %1031, %1029
  %xor2174 = zext i8 %xor21743046 to i32
  %arrayidx2175 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 3, i32 %xor2174
  %1032 = ptrtoint ptr %arrayidx2175 to i32
  call void @__asan_load4_noabort(i32 %1032)
  %1033 = load i32, ptr %arrayidx2175, align 4
  %xor2176 = xor i32 %xor2163, %1033
  %or.i3314 = tail call i32 @llvm.fshl.i32(i32 %xor2176, i32 %xor2176, i32 8) #2
  %add2178 = add i32 %or.i3314, %xor2125
  %add2179 = add i32 %add2178, %or.i3314
  %arrayidx2181 = getelementptr %struct.twofish_ctx, ptr %ctx, i32 0, i32 1, i32 %i.73333
  %1034 = ptrtoint ptr %arrayidx2181 to i32
  call void @__asan_store4_noabort(i32 %1034)
  store i32 %add2178, ptr %arrayidx2181, align 4
  %or.i3315 = tail call i32 @llvm.fshl.i32(i32 %add2179, i32 %add2179, i32 9) #2
  %arrayidx2185 = getelementptr %struct.twofish_ctx, ptr %ctx, i32 0, i32 1, i32 %add2126
  %1035 = ptrtoint ptr %arrayidx2185 to i32
  call void @__asan_store4_noabort(i32 %1035)
  store i32 %or.i3315, ptr %arrayidx2185, align 4
  %add2187 = add nuw nsw i32 %i.73333, 2
  %cmp2076 = icmp ult i32 %i.73333, 6
  br i1 %cmp2076, label %for.body2078.for.body2078_crit_edge, label %for.body2078.for.body2192_crit_edge

for.body2078.for.body2192_crit_edge:              ; preds = %for.body2078
  br label %for.body2192

for.body2078.for.body2078_crit_edge:              ; preds = %for.body2078
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body2078

for.body2192:                                     ; preds = %for.body2192.for.body2192_crit_edge, %for.body2078.for.body2192_crit_edge
  %i.83334 = phi i32 [ %add2305, %for.body2192.for.body2192_crit_edge ], [ 0, %for.body2078.for.body2192_crit_edge ]
  %add2193 = add nuw nsw i32 %i.83334, 8
  %arrayidx2194 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %add2193
  %1036 = ptrtoint ptr %arrayidx2194 to i32
  call void @__asan_load1_noabort(i32 %1036)
  %1037 = load i8, ptr %arrayidx2194, align 1
  %1038 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_load1_noabort(i32 %1038)
  %1039 = load i8, ptr %arrayidx284, align 1
  %xor21983015 = xor i8 %1039, %1037
  %xor2198 = zext i8 %xor21983015 to i32
  %arrayidx2199 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor2198
  %1040 = ptrtoint ptr %arrayidx2199 to i32
  call void @__asan_load1_noabort(i32 %1040)
  %1041 = load i8, ptr %arrayidx2199, align 1
  %1042 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %1042)
  %1043 = load i8, ptr %key, align 1
  %xor22033016 = xor i8 %1043, %1041
  %xor2203 = zext i8 %xor22033016 to i32
  %arrayidx2204 = getelementptr [256 x i32], ptr @mds, i32 0, i32 %xor2203
  %1044 = ptrtoint ptr %arrayidx2204 to i32
  call void @__asan_load4_noabort(i32 %1044)
  %1045 = load i32, ptr %arrayidx2204, align 4
  %arrayidx2206 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %add2193
  %1046 = ptrtoint ptr %arrayidx2206 to i32
  call void @__asan_load1_noabort(i32 %1046)
  %1047 = load i8, ptr %arrayidx2206, align 1
  %1048 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_load1_noabort(i32 %1048)
  %1049 = load i8, ptr %arrayidx320, align 1
  %xor22103017 = xor i8 %1049, %1047
  %xor2210 = zext i8 %xor22103017 to i32
  %arrayidx2211 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor2210
  %1050 = ptrtoint ptr %arrayidx2211 to i32
  call void @__asan_load1_noabort(i32 %1050)
  %1051 = load i8, ptr %arrayidx2211, align 1
  %1052 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %1052)
  %1053 = load i8, ptr %arrayidx32, align 1
  %xor22153018 = xor i8 %1053, %1051
  %xor2215 = zext i8 %xor22153018 to i32
  %arrayidx2216 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 1, i32 %xor2215
  %1054 = ptrtoint ptr %arrayidx2216 to i32
  call void @__asan_load4_noabort(i32 %1054)
  %1055 = load i32, ptr %arrayidx2216, align 4
  %xor2217 = xor i32 %1055, %1045
  %1056 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load1_noabort(i32 %1056)
  %1057 = load i8, ptr %arrayidx356, align 1
  %xor22233019 = xor i8 %1057, %1037
  %xor2223 = zext i8 %xor22233019 to i32
  %arrayidx2224 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor2223
  %1058 = ptrtoint ptr %arrayidx2224 to i32
  call void @__asan_load1_noabort(i32 %1058)
  %1059 = load i8, ptr %arrayidx2224, align 1
  %1060 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %1060)
  %1061 = load i8, ptr %arrayidx68, align 1
  %xor22283020 = xor i8 %1061, %1059
  %xor2228 = zext i8 %xor22283020 to i32
  %arrayidx2229 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 2, i32 %xor2228
  %1062 = ptrtoint ptr %arrayidx2229 to i32
  call void @__asan_load4_noabort(i32 %1062)
  %1063 = load i32, ptr %arrayidx2229, align 4
  %xor2230 = xor i32 %xor2217, %1063
  %1064 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_load1_noabort(i32 %1064)
  %1065 = load i8, ptr %arrayidx392, align 1
  %xor22363021 = xor i8 %1065, %1047
  %xor2236 = zext i8 %xor22363021 to i32
  %arrayidx2237 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor2236
  %1066 = ptrtoint ptr %arrayidx2237 to i32
  call void @__asan_load1_noabort(i32 %1066)
  %1067 = load i8, ptr %arrayidx2237, align 1
  %1068 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %1068)
  %1069 = load i8, ptr %arrayidx104, align 1
  %xor22413022 = xor i8 %1069, %1067
  %xor2241 = zext i8 %xor22413022 to i32
  %arrayidx2242 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 3, i32 %xor2241
  %1070 = ptrtoint ptr %arrayidx2242 to i32
  call void @__asan_load4_noabort(i32 %1070)
  %1071 = load i32, ptr %arrayidx2242, align 4
  %xor2243 = xor i32 %xor2230, %1071
  %add2244 = add nuw nsw i32 %i.83334, 9
  %arrayidx2245 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %add2244
  %1072 = ptrtoint ptr %arrayidx2245 to i32
  call void @__asan_load1_noabort(i32 %1072)
  %1073 = load i8, ptr %arrayidx2245, align 1
  %1074 = ptrtoint ptr %arrayidx428 to i32
  call void @__asan_load1_noabort(i32 %1074)
  %1075 = load i8, ptr %arrayidx428, align 1
  %xor22493023 = xor i8 %1075, %1073
  %xor2249 = zext i8 %xor22493023 to i32
  %arrayidx2250 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor2249
  %1076 = ptrtoint ptr %arrayidx2250 to i32
  call void @__asan_load1_noabort(i32 %1076)
  %1077 = load i8, ptr %arrayidx2250, align 1
  %1078 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %1078)
  %1079 = load i8, ptr %arrayidx140, align 1
  %xor22543024 = xor i8 %1079, %1077
  %xor2254 = zext i8 %xor22543024 to i32
  %arrayidx2255 = getelementptr [256 x i32], ptr @mds, i32 0, i32 %xor2254
  %1080 = ptrtoint ptr %arrayidx2255 to i32
  call void @__asan_load4_noabort(i32 %1080)
  %1081 = load i32, ptr %arrayidx2255, align 4
  %arrayidx2257 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %add2244
  %1082 = ptrtoint ptr %arrayidx2257 to i32
  call void @__asan_load1_noabort(i32 %1082)
  %1083 = load i8, ptr %arrayidx2257, align 1
  %1084 = ptrtoint ptr %arrayidx464 to i32
  call void @__asan_load1_noabort(i32 %1084)
  %1085 = load i8, ptr %arrayidx464, align 1
  %xor22613025 = xor i8 %1085, %1083
  %xor2261 = zext i8 %xor22613025 to i32
  %arrayidx2262 = getelementptr [256 x i8], ptr @q0, i32 0, i32 %xor2261
  %1086 = ptrtoint ptr %arrayidx2262 to i32
  call void @__asan_load1_noabort(i32 %1086)
  %1087 = load i8, ptr %arrayidx2262, align 1
  %1088 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %1088)
  %1089 = load i8, ptr %arrayidx176, align 1
  %xor22663026 = xor i8 %1089, %1087
  %xor2266 = zext i8 %xor22663026 to i32
  %arrayidx2267 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 1, i32 %xor2266
  %1090 = ptrtoint ptr %arrayidx2267 to i32
  call void @__asan_load4_noabort(i32 %1090)
  %1091 = load i32, ptr %arrayidx2267, align 4
  %xor2268 = xor i32 %1091, %1081
  %1092 = ptrtoint ptr %arrayidx500 to i32
  call void @__asan_load1_noabort(i32 %1092)
  %1093 = load i8, ptr %arrayidx500, align 1
  %xor22743027 = xor i8 %1093, %1073
  %xor2274 = zext i8 %xor22743027 to i32
  %arrayidx2275 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor2274
  %1094 = ptrtoint ptr %arrayidx2275 to i32
  call void @__asan_load1_noabort(i32 %1094)
  %1095 = load i8, ptr %arrayidx2275, align 1
  %1096 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load1_noabort(i32 %1096)
  %1097 = load i8, ptr %arrayidx212, align 1
  %xor22793028 = xor i8 %1097, %1095
  %xor2279 = zext i8 %xor22793028 to i32
  %arrayidx2280 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 2, i32 %xor2279
  %1098 = ptrtoint ptr %arrayidx2280 to i32
  call void @__asan_load4_noabort(i32 %1098)
  %1099 = load i32, ptr %arrayidx2280, align 4
  %xor2281 = xor i32 %xor2268, %1099
  %1100 = ptrtoint ptr %arrayidx536 to i32
  call void @__asan_load1_noabort(i32 %1100)
  %1101 = load i8, ptr %arrayidx536, align 1
  %xor22873029 = xor i8 %1101, %1083
  %xor2287 = zext i8 %xor22873029 to i32
  %arrayidx2288 = getelementptr [256 x i8], ptr @q1, i32 0, i32 %xor2287
  %1102 = ptrtoint ptr %arrayidx2288 to i32
  call void @__asan_load1_noabort(i32 %1102)
  %1103 = load i8, ptr %arrayidx2288, align 1
  %1104 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load1_noabort(i32 %1104)
  %1105 = load i8, ptr %arrayidx248, align 1
  %xor22923030 = xor i8 %1105, %1103
  %xor2292 = zext i8 %xor22923030 to i32
  %arrayidx2293 = getelementptr [4 x [256 x i32]], ptr @mds, i32 0, i32 3, i32 %xor2292
  %1106 = ptrtoint ptr %arrayidx2293 to i32
  call void @__asan_load4_noabort(i32 %1106)
  %1107 = load i32, ptr %arrayidx2293, align 4
  %xor2294 = xor i32 %xor2281, %1107
  %or.i3316 = tail call i32 @llvm.fshl.i32(i32 %xor2294, i32 %xor2294, i32 8) #2
  %add2296 = add i32 %or.i3316, %xor2243
  %add2297 = add i32 %add2296, %or.i3316
  %arrayidx2299 = getelementptr %struct.twofish_ctx, ptr %ctx, i32 0, i32 2, i32 %i.83334
  %1108 = ptrtoint ptr %arrayidx2299 to i32
  call void @__asan_store4_noabort(i32 %1108)
  store i32 %add2296, ptr %arrayidx2299, align 4
  %or.i3317 = tail call i32 @llvm.fshl.i32(i32 %add2297, i32 %add2297, i32 9) #2
  %add2302 = or i32 %i.83334, 1
  %arrayidx2303 = getelementptr %struct.twofish_ctx, ptr %ctx, i32 0, i32 2, i32 %add2302
  %1109 = ptrtoint ptr %arrayidx2303 to i32
  call void @__asan_store4_noabort(i32 %1109)
  store i32 %or.i3317, ptr %arrayidx2303, align 4
  %add2305 = add nuw nsw i32 %i.83334, 2
  %cmp2190 = icmp ult i32 %i.83334, 30
  br i1 %cmp2190, label %for.body2192.for.body2192_crit_edge, label %for.body2192.cleanup_crit_edge

for.body2192.cleanup_crit_edge:                   ; preds = %for.body2192
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body2192.for.body2192_crit_edge:              ; preds = %for.body2192
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body2192

cleanup:                                          ; preds = %for.body2192.cleanup_crit_edge, %for.body1862.cleanup_crit_edge, %for.body1434.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.body2192.cleanup_crit_edge ], [ 0, %for.body1434.cleanup_crit_edge ], [ 0, %for.body1862.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @twofish_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %key_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %call1 = tail call i32 @__twofish_setkey(ptr noundef %__crt_ctx.i, ptr noundef %key, i32 noundef %key_len)
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__ksymtab___twofish_setkey, !1, !"__ksymtab___twofish_setkey", i1 false, i1 false}
!1 = !{!"../crypto/twofish_common.c", i32 684, i32 1}
!2 = !{ptr @__ksymtab_twofish_setkey, !3, !"__ksymtab_twofish_setkey", i1 false, i1 false}
!3 = !{!"../crypto/twofish_common.c", i32 690, i32 1}
!4 = !{ptr @__UNIQUE_ID_file173, !5, !"__UNIQUE_ID_file173", i1 false, i1 false}
!5 = !{!"../crypto/twofish_common.c", i32 692, i32 1}
!6 = !{ptr @__UNIQUE_ID_license174, !5, !"__UNIQUE_ID_license174", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description175, !8, !"__UNIQUE_ID_description175", i1 false, i1 false}
!8 = !{!"../crypto/twofish_common.c", i32 693, i32 1}
!9 = !{ptr @poly_to_exp, !10, !"poly_to_exp", i1 false, i1 false}
!10 = !{!"../crypto/twofish_common.c", i32 324, i32 17}
!11 = !{ptr @exp_to_poly, !12, !"exp_to_poly", i1 false, i1 false}
!12 = !{!"../crypto/twofish_common.c", i32 349, i32 17}
!13 = !{ptr @mds, !14, !"mds", i1 false, i1 false}
!14 = !{!"../crypto/twofish_common.c", i32 109, i32 18}
!15 = !{ptr @q0, !16, !"q0", i1 false, i1 false}
!16 = !{!"../crypto/twofish_common.c", i32 46, i32 17}
!17 = !{ptr @q1, !18, !"q1", i1 false, i1 false}
!18 = !{!"../crypto/twofish_common.c", i32 71, i32 17}
!19 = !{ptr @calc_sb_tbl, !20, !"calc_sb_tbl", i1 false, i1 false}
!20 = !{!"../crypto/twofish_common.c", i32 396, i32 17}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
