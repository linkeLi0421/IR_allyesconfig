; ModuleID = '/llk/IR_all_yes/drivers/isdn/mISDN/dsp_blowfish.c_pt.bc'
source_filename = "../drivers/isdn/mISDN/dsp_blowfish.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dsp = type { %struct.list_head, %struct.mISDNchannel, ptr, [64 x i8], i32, %struct.dsp_echo, i32, i32, i32, %struct.dsp_tone, %struct.dsp_dtmf, i32, i32, %struct.work_struct, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [32768 x i8], [32768 x i8], i32, i32, i32, i32, %struct.dsp_features, i32, i32, i32, i32, i32, i32, i32, i32, [18 x i32], [1024 x i32], i32, [9 x i8], [9 x i8], i32, i32, [16 x i8], [9 x i8], i32, %struct.dsp_pipeline }
%struct.list_head = type { ptr, ptr }
%struct.mISDNchannel = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.dsp_echo = type { i32, i32 }
%struct.dsp_tone = type { i32, i32, i32, ptr, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dsp_dtmf = type { i32, i32, i32, i32, i32, [102 x i16], i8, i8, i32, [16 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.dsp_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsp_pipeline = type { %struct.rwlock_t, %struct.list_head, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@dsp_audio_law2seven = external dso_local local_unnamed_addr global [256 x i8], align 1
@dsp_debug = external dso_local local_unnamed_addr global i32, align 4
@dsp_bf_decrypt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017DSP BLOWFISH: received corrupt frame, checksumme is not correct\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsp_bf_decrypt\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/isdn/mISDN/dsp_blowfish.c\00", [62 x i8] zeroinitializer }, align 32
@dsp_bf_decrypt._entry_ptr = internal global ptr @dsp_bf_decrypt._entry, section ".printk_index", align 4
@dsp_audio_seven2law = external dso_local local_unnamed_addr global [128 x i8], align 1
@dsp_silence = external dso_local local_unnamed_addr global i8, align 1
@bf_sbox = internal constant { [1024 x i32], [1024 x i8] } { [1024 x i32] [i32 -785314906, i32 -1730169428, i32 805139163, i32 -803545161, i32 -1193168915, i32 1780907670, i32 -1166241723, i32 -248741991, i32 614570311, i32 -1282315017, i32 134345442, i32 -2054226922, i32 1667834072, i32 1901547113, i32 -1537671517, i32 -191677058, i32 227898511, i32 1921955416, i32 1904987480, i32 -2112533778, i32 2069144605, i32 -1034266187, i32 -1674521287, i32 720527379, i32 -976113629, i32 677414384, i32 -901678824, i32 -1193592593, i32 -1904616272, i32 1614419982, i32 1822297739, i32 -1340175810, i32 -686458943, i32 -1120842969, i32 2024746970, i32 1432378464, i32 -430627341, i32 -1437226092, i32 1464375394, i32 1676153920, i32 1439316330, i32 715854006, i32 -1261675468, i32 289532110, i32 -1588296017, i32 2087905683, i32 -1276242927, i32 1668267050, i32 732546397, i32 1947742710, i32 -832815594, i32 -1685613794, i32 -1344882125, i32 1814351708, i32 2050118529, i32 680887927, i32 999245976, i32 1800124847, i32 -994056165, i32 1713906067, i32 1641548236, i32 -81679983, i32 1216130144, i32 1575780402, i32 -276538019, i32 -377129551, i32 -601480446, i32 -345695352, i32 596196993, i32 -745100091, i32 258830323, i32 -2081144263, i32 772490370, i32 -1534844924, i32 1774776394, i32 -1642095778, i32 566650946, i32 -152474470, i32 1728879713, i32 -1412200208, i32 1783734482, i32 -665571480, i32 -1777359064, i32 -1420741725, i32 1861159788, i32 326777828, i32 -1170476976, i32 2130389656, i32 -1578015459, i32 967770486, i32 1724537150, i32 -2109534584, i32 -1930525159, i32 1164943284, i32 2105845187, i32 998989502, i32 -529566248, i32 -2050940813, i32 1075463327, i32 1455516326, i32 1322494562, i32 910128902, i32 469688178, i32 1117454909, i32 936433444, i32 -804646328, i32 -619713837, i32 1240580251, i32 122909385, i32 -2137449605, i32 634681816, i32 -152510729, i32 -469872614, i32 -1233564613, i32 -1754472259, i32 79693498, i32 -1045868618, i32 1084186820, i32 1583128258, i32 426386531, i32 1761308591, i32 1047286709, i32 322548459, i32 995290223, i32 1845252383, i32 -1691314900, i32 -863943356, i32 -1352745719, i32 -1092366332, i32 -567063811, i32 1712269319, i32 422464435, i32 -1060394921, i32 1170764815, i32 -771006663, i32 -1177289765, i32 1434042557, i32 442511882, i32 -694091578, i32 1076654713, i32 1738483198, i32 -81812532, i32 -1901729288, i32 -617471240, i32 1014306527, i32 -43947243, i32 793779912, i32 -1392160085, i32 842905082, i32 -48003232, i32 1395751752, i32 1040244610, i32 -1638115397, i32 -898659168, i32 445077038, i32 -552113701, i32 -717051658, i32 679411651, i32 -1402522938, i32 -1940957837, i32 1767581616, i32 -1144366904, i32 -503340195, i32 -1192226400, i32 284835224, i32 -48135240, i32 1258075500, i32 768725851, i32 -1705778055, i32 -1225243291, i32 -762426948, i32 1274779536, i32 -505548070, i32 -1530167757, i32 1660621633, i32 -823867672, i32 -283063590, i32 913787905, i32 -797008130, i32 737222580, i32 -1780753843, i32 -1366257256, i32 -357724559, i32 1804850592, i32 -795946544, i32 -1345903136, i32 -1908647121, i32 -1904896841, i32 -1879645445, i32 -233690268, i32 -2004305902, i32 -1878134756, i32 1336762016, i32 1754252060, i32 -774901359, i32 -1280786003, i32 791618072, i32 -1106372745, i32 -361419266, i32 -1962795103, i32 -442446833, i32 -1250986776, i32 413987798, i32 -829824359, i32 -1264037920, i32 -49028937, i32 2093235073, i32 -760370983, i32 375366246, i32 -2137688315, i32 -1815317740, i32 555357303, i32 -424861595, i32 2008414854, i32 -950779147, i32 -73583153, i32 -338841844, i32 2067696032, i32 -700376109, i32 -1373733303, i32 2428461, i32 544322398, i32 577241275, i32 1471733935, i32 610547355, i32 -267798242, i32 1432588573, i32 1507829418, i32 2025931657, i32 -648391809, i32 545086370, i32 48609733, i32 -2094660746, i32 1653985193, i32 298326376, i32 1316178497, i32 -1287180854, i32 2064951626, i32 458293330, i32 -1705826027, i32 -703637697, i32 -1130641692, i32 727753846, i32 -2115603456, i32 146436021, i32 1461446943, i32 -224990101, i32 705550613, i32 -1235000031, i32 -407242314, i32 -13368018, i32 -981117340, i32 1404054877, i32 -1449160799, i32 146425753, i32 1854211946, i32 1266315497, i32 -1246549692, i32 -613086930, i32 -1004984797, i32 -1385257296, i32 1235738493, i32 -1662099272, i32 -1880247706, i32 -324367247, i32 1771706367, i32 1449415276, i32 -1028546847, i32 422970021, i32 1963543593, i32 -1604775104, i32 -468174274, i32 1062508698, i32 1531092325, i32 1804592342, i32 -1711849514, i32 -1580033017, i32 -269995787, i32 1294809318, i32 -265986623, i32 1289560198, i32 -2072974554, i32 1669523910, i32 35572830, i32 157838143, i32 1052438473, i32 1016535060, i32 1802137761, i32 1753167236, i32 1386275462, i32 -1214491899, i32 -1437595849, i32 1040679964, i32 2145300060, i32 -1904392980, i32 1461121720, i32 -1338320329, i32 -263189491, i32 -266592508, i32 33600511, i32 -1374882534, i32 1018524850, i32 629373528, i32 -603381315, i32 -779021319, i32 2091462646, i32 -1808644237, i32 586499841, i32 988145025, i32 935516892, i32 -927631820, i32 -1695294041, i32 -1455136442, i32 265290510, i32 -322386114, i32 -1535828415, i32 -499593831, i32 1005194799, i32 847297441, i32 406762289, i32 1314163512, i32 1332590856, i32 1866599683, i32 -167115585, i32 750260880, i32 613907577, i32 1450815602, i32 -1129346641, i32 -560302305, i32 -644675568, i32 -1282691566, i32 -590397650, i32 1427272223, i32 778793252, i32 1343938022, i32 -1618686585, i32 2052605720, i32 1946737175, i32 -1130390852, i32 -380928628, i32 -327488454, i32 -612033030, i32 1661551462, i32 -1000029230, i32 -283371449, i32 840292616, i32 -582796489, i32 616741398, i32 312560963, i32 711312465, i32 1351876610, i32 322626781, i32 1910503582, i32 271666773, i32 -2119403562, i32 1594956187, i32 70604529, i32 -677132437, i32 1007753275, i32 1495573769, i32 -225450259, i32 -1745748998, i32 -1631928532, i32 504708206, i32 -2031925904, i32 -353800271, i32 -2045878774, i32 1514023603, i32 1998579484, i32 1312622330, i32 694541497, i32 -1712906993, i32 -2143385130, i32 1382467621, i32 776784248, i32 -1676627094, i32 -971698502, i32 -1797068168, i32 -1510196141, i32 503983604, i32 -218673497, i32 907881277, i32 423175695, i32 432175456, i32 1378068232, i32 -149744970, i32 -340918674, i32 -356311194, i32 -474200683, i32 -1501837181, i32 -1317062703, i32 26017576, i32 -1020076561, i32 -1100195163, i32 1700274565, i32 1756076034, i32 -288447217, i32 -617638597, i32 720338349, i32 1533947780, i32 354530856, i32 688349552, i32 -321042571, i32 1637815568, i32 332179504, i32 -345916010, i32 53804574, i32 -1442618417, i32 -1250730864, i32 1282449977, i32 -711025141, i32 -877994476, i32 -288586052, i32 1617046695, i32 -1666491221, i32 -1292663698, i32 1686838959, i32 431878346, i32 -1608291911, i32 1700445008, i32 1080580658, i32 1009431731, i32 832498133, i32 -1071531785, i32 -1688990951, i32 -2023776103, i32 -1778935426, i32 1648197032, i32 -130578278, i32 -1746719369, i32 300782431, i32 375919233, i32 238389289, i32 -941219882, i32 -1763778655, i32 2019080857, i32 1475708069, i32 455242339, i32 -1685863425, i32 448939670, i32 -843904277, i32 1395535956, i32 -1881585436, i32 1841049896, i32 1491858159, i32 885456874, i32 -30872223, i32 -293847949, i32 1565136089, i32 -396052509, i32 1108368660, i32 540939232, i32 1173283510, i32 -1549095958, i32 -613658859, i32 -87339056, i32 -951913406, i32 -278217803, i32 1699691293, i32 1103962373, i32 -669091426, i32 -2038084153, i32 -464828566, i32 1031889488, i32 -815619598, i32 1535977030, i32 -58162272, i32 -1043876189, i32 2132092099, i32 1774941330, i32 1199868427, i32 1452454533, i32 157007616, i32 -1390851939, i32 342012276, i32 595725824, i32 1480756522, i32 206960106, i32 497939518, i32 591360097, i32 863170706, i32 -1919713727, i32 -698356495, i32 1814182875, i32 2094937945, i32 -873565088, i32 1082520231, i32 -831049106, i32 -1509457788, i32 435703966, i32 -386934699, i32 1641649973, i32 -1452693590, i32 -989067582, i32 1510255612, i32 -2146710820, i32 -1639679442, i32 -1018874748, i32 -36346107, i32 236887753, i32 -613164077, i32 274041037, i32 1734335097, i32 -479771840, i32 -976997275, i32 1899903192, i32 1026095262, i32 -244449504, i32 356393447, i32 -1884275382, i32 -421290197, i32 -612127241, i32 -381855128, i32 -1803468553, i32 -162781668, i32 -1805047500, i32 1091903735, i32 1979897079, i32 -1124832466, i32 -727580568, i32 -737663887, i32 857797738, i32 1136121015, i32 1342202287, i32 507115054, i32 -1759230650, i32 337727348, i32 -1081374656, i32 1301675037, i32 -1766485585, i32 1895095763, i32 1721773893, i32 -1078195732, i32 62756741, i32 2142006736, i32 835421444, i32 -1762973773, i32 1442658625, i32 -635090970, i32 -1412822374, i32 676362277, i32 1392781812, i32 170690266, i32 -373920261, i32 1759253602, i32 -683120384, i32 1745797284, i32 664899054, i32 1329594018, i32 -393761396, i32 -1249058810, i32 2062866102, i32 -1429332356, i32 -751345684, i32 -830954599, i32 1080764994, i32 553557557, i32 -638351943, i32 -298199125, i32 991055499, i32 499776247, i32 1265440854, i32 648242737, i32 -354183246, i32 980351604, i32 -581221582, i32 1749149687, i32 -898096901, i32 -83167922, i32 -654396521, i32 1161844396, i32 -1169648345, i32 1431517754, i32 545492359, i32 -26498633, i32 -795437749, i32 1437099964, i32 -1592419752, i32 -861329053, i32 -1713251533, i32 -1507177898, i32 1060185593, i32 1593081372, i32 -1876348548, i32 -34019326, i32 69676912, i32 -2135222948, i32 86519011, i32 -1782508216, i32 -456757982, i32 1220612927, i32 -955283748, i32 133810670, i32 1090789135, i32 1078426020, i32 1569222167, i32 845107691, i32 -711212847, i32 -222510705, i32 1091646820, i32 628848692, i32 1613405280, i32 -537335645, i32 526609435, i32 236106946, i32 48312990, i32 -1352249391, i32 -892239595, i32 1797494240, i32 859738849, i32 992217954, i32 -289490654, i32 -2051890674, i32 -424014439, i32 -562951028, i32 765654824, i32 -804095931, i32 -1783130883, i32 1685915746, i32 -405998096, i32 1414112111, i32 -2021832454, i32 -1013056217, i32 -214004450, i32 172450625, i32 -1724973196, i32 980381355, i32 -185008841, i32 -1475158944, i32 -1578377736, i32 -1726226100, i32 -613520627, i32 -964995824, i32 1835478071, i32 660984891, i32 -590288892, i32 -248967737, i32 -872349789, i32 -1254551662, i32 1762651403, i32 1719377915, i32 -824476260, i32 -1601057013, i32 -652910941, i32 -1156370552, i32 1364962596, i32 2073328063, i32 1983633131, i32 926494387, i32 -871278215, i32 -2144935273, i32 -198299347, i32 1749200295, i32 -966120645, i32 309677260, i32 2016342300, i32 1779581495, i32 -1215147545, i32 111262694, i32 1274766160, i32 443224088, i32 298511866, i32 1025883608, i32 -488520759, i32 1145181785, i32 168956806, i32 -653464466, i32 -710153686, i32 1689216846, i32 -628709281, i32 -1094719096, i32 1692713982, i32 -1648590761, i32 -252198778, i32 1618508792, i32 1610833997, i32 -771914938, i32 -164094032, i32 2001055236, i32 -684262196, i32 -2092799181, i32 -266425487, i32 -1333771897, i32 1006657119, i32 2006996926, i32 -1108824540, i32 1430667929, i32 -1084739999, i32 1314452623, i32 -220332638, i32 -193663176, i32 -2021016126, i32 1399257539, i32 -927756684, i32 -1267338667, i32 1190975929, i32 2062231137, i32 -1960976508, i32 -2073424263, i32 -1856006686, i32 1181637006, i32 548689776, i32 -1932175983, i32 -922558900, i32 -1190417183, i32 -1149106736, i32 296247880, i32 1970579870, i32 -1216407114, i32 -525738999, i32 1714227617, i32 -1003338189, i32 -396747006, i32 166772364, i32 1251581989, i32 493813264, i32 448347421, i32 195405023, i32 -1584991729, i32 677966185, i32 -591930749, i32 1463355134, i32 -1578971493, i32 1338867538, i32 1343315457, i32 -1492745222, i32 -1610435132, i32 233230375, i32 -1694987225, i32 2000651841, i32 -1017099258, i32 1638401717, i32 -266896856, i32 -1057650976, i32 6314154, i32 819756386, i32 300326615, i32 590932579, i32 1405279636, i32 -1027467724, i32 -1144263082, i32 -1866680610, i32 -335774303, i32 -833020554, i32 1862657033, i32 1266418056, i32 963775037, i32 2089974820, i32 -2031914401, i32 1917689273, i32 448879540, i32 -744572676, i32 -313240200, i32 150775221, i32 -667058989, i32 1303187396, i32 508620638, i32 -1318983944, i32 -1568336679, i32 1817252668, i32 1876281319, i32 1457606340, i32 908771278, i32 -574175177, i32 -677760460, i32 -1838972398, i32 1729034894, i32 1080033504, i32 976866871, i32 -738527793, i32 -1413318857, i32 1522871579, i32 1555064734, i32 1336096578, i32 -746444992, i32 -1715692610, i32 -720269667, i32 -1089506539, i32 -701686658, i32 -956251013, i32 -1215554709, i32 564236357, i32 -1301368386, i32 1781952180, i32 1464380207, i32 -1131123079, i32 -962365742, i32 1699332808, i32 1393555694, i32 1183702653, i32 -713881059, i32 1288719814, i32 691649499, i32 -1447410096, i32 -1399511320, i32 -1101077756, i32 -1577396752, i32 1781354906, i32 1676643554, i32 -1702433246, i32 -1064713544, i32 1126444790, i32 -1524759638, i32 -1661808476, i32 -2084544070, i32 -1679201715, i32 -1880812208, i32 -1167828010, i32 673620729, i32 -1489356063, i32 1269405062, i32 -279616791, i32 -953159725, i32 -145557542, i32 1057255273, i32 2012875353, i32 -2132498155, i32 -2018474495, i32 -1693849939, i32 993977747, i32 -376373926, i32 -1640704105, i32 753973209, i32 36408145, i32 -1764381638, i32 25011837, i32 -774947114, i32 2088578344, i32 530523599, i32 -1376601957, i32 1524020338, i32 1518925132, i32 -534139791, i32 -535190042, i32 1202760957, i32 -309069157, i32 -388774771, i32 674977740, i32 -120232407, i32 2031300136, i32 2019492241, i32 -311074731, i32 -141160892, i32 -472686964, i32 352677332, i32 -1997247046, i32 60907813, i32 90501309, i32 -1007968747, i32 1016092578, i32 -1759044884, i32 -1455814870, i32 457141659, i32 509813237, i32 -174299397, i32 652014361, i32 1966332200, i32 -1319764491, i32 55981186, i32 -1967506245, i32 676427537, i32 -1039476232, i32 -1412673177, i32 -861040033, i32 1307055953, i32 942726286, i32 933058658, i32 -1826555503, i32 -361066302, i32 -79791154, i32 1361170020, i32 2001714738, i32 -1464409218, i32 -1020707514, i32 1222529897, i32 1679025792, i32 -1565652976, i32 -580013532, i32 1770335741, i32 151462246, i32 -1281735158, i32 1682292957, i32 1483529935, i32 471910574, i32 1539241949, i32 458788160, i32 -858652289, i32 1807016891, i32 -576558466, i32 978976581, i32 1043663428, i32 -1129001515, i32 1927990952, i32 -94075717, i32 -1922690386, i32 -1086558393, i32 -761535389, i32 1412390302, i32 -1362987237, i32 -162634896, i32 1947078029, i32 -413461673, i32 -126740879, i32 -1353482915, i32 1077988104, i32 1320477388, i32 886195818, i32 18198404, i32 -508558296, i32 -1785185763, i32 112762804, i32 -831610808, i32 1866414978, i32 891333506, i32 18488651, i32 661792760, i32 1628790961, i32 -409780260, i32 -1153795797, i32 876946877, i32 -1601685023, i32 1372485963, i32 791857591, i32 -1608533303, i32 -534984578, i32 -1127755274, i32 -822013501, i32 -1578587449, i32 445679433, i32 -732971622, i32 -790962485, i32 -720709064, i32 54117162, i32 -963561881, i32 -1913048708, i32 -525259953, i32 -140617289, i32 1140177722, i32 -220915201, i32 668550556, i32 -1080614356, i32 367459370, i32 261225585, i32 -1684794075, i32 -85617823, i32 -826893077, i32 -1029151655, i32 314222801, i32 -1228863650, i32 -486184436, i32 282218597, i32 -888953790, i32 -521376242, i32 379116347, i32 1285071038, i32 846784868, i32 -1625320142, i32 -523005217, i32 -744475605, i32 -1989021154, i32 453669953, i32 1268987020, i32 -977374944, i32 -1015663912, i32 -550133875, i32 -1684459730, i32 -435458233, i32 266596637, i32 -447948204, i32 517658769, i32 -832407089, i32 -851542417, i32 370717030, i32 -47440635, i32 -2070949179, i32 -151313767, i32 -182193321, i32 -1506642397, i32 -1817692879, i32 1456262402, i32 -1393524382, i32 1517677493, i32 1846949527, i32 -1999473716, i32 -560569710, i32 -2118563376, i32 1280348187, i32 1908823572, i32 -423180355, i32 846861322, i32 1172426758, i32 -1007518822, i32 -911584259, i32 1655181056, i32 -1155153950, i32 901632758, i32 1897031941, i32 -1308360158, i32 -1228157060, i32 -847864789, i32 1393639104, i32 373351379, i32 950779232, i32 625454576, i32 -1170726756, i32 -146354570, i32 2007998917, i32 544563296, i32 -2050228658, i32 -1964470824, i32 2058025392, i32 1291430526, i32 424198748, i32 50039436, i32 29584100, i32 -689184263, i32 -1865090967, i32 -1503863136, i32 1057563949, i32 -1039604065, i32 -1219600078, i32 -831004069, i32 1469046755, i32 985887462], [1024 x i8] zeroinitializer }, align 32
@bf_pbox = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 608135816, i32 -2052912941, i32 320440878, i32 57701188, i32 -1542899678, i32 698298832, i32 137296536, i32 -330404727, i32 1160258022, i32 953160567, i32 -1101764913, i32 887688300, i32 -1062458953, i32 -914599715, i32 1065670069, i32 -1253635817, i32 -1843997223, i32 -1988494565], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 513, i32 5 }
@___asan_gen_.15 = private unnamed_addr constant [8 x i8] c"bf_sbox\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 89, i32 18 }
@___asan_gen_.18 = private unnamed_addr constant [8 x i8] c"bf_pbox\00", align 1
@___asan_gen_.19 = private constant [37 x i8] c"../drivers/isdn/mISDN/dsp_blowfish.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 81, i32 18 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @dsp_bf_decrypt._entry, ptr @dsp_bf_decrypt._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @bf_sbox, ptr @bf_pbox], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_bf_decrypt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bf_sbox to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bf_pbox to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_bf_encrypt(ptr noundef %dsp, ptr nocapture noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bf_crypt_pos = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 44
  %0 = ptrtoint ptr %bf_crypt_pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bf_crypt_pos, align 4
  %bf_data_in1 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 45
  %bf_crypt_out2 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 46
  %bf_p = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 42
  %bf_s = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp772 = icmp sgt i32 %len, 0
  br i1 %cmp772, label %while.body.lr.ph.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %arrayidx11 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 45, i32 1
  %arrayidx16 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 45, i32 2
  %arrayidx22 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 45, i32 3
  %arrayidx27 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 45, i32 4
  %arrayidx35 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 45, i32 5
  %arrayidx41 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 45, i32 6
  %arrayidx47 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 45, i32 7
  %arrayidx53 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 45, i32 8
  %arrayidx81 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 1
  %arrayidx104 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 2
  %arrayidx127 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 3
  %arrayidx150 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 4
  %arrayidx173 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 5
  %arrayidx196 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 6
  %arrayidx219 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 7
  %arrayidx242 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 8
  %arrayidx265 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 9
  %arrayidx288 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 10
  %arrayidx311 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 11
  %arrayidx334 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 12
  %arrayidx357 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 13
  %arrayidx380 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 14
  %arrayidx403 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 15
  %arrayidx425 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 16
  %arrayidx427 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 17
  %arrayidx480 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 46, i32 1
  %arrayidx484 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 46, i32 2
  %arrayidx488 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 46, i32 3
  %arrayidx495 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 46, i32 4
  %arrayidx502 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 46, i32 5
  %arrayidx509 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 46, i32 6
  %arrayidx515 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 46, i32 7
  %arrayidx517 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 46, i32 8
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %cmp776 = phi i1 [ true, %while.body.lr.ph.lr.ph ], [ %cmp, %if.then.while.body.lr.ph_crit_edge ]
  %j.0.ph775 = phi i32 [ %1, %while.body.lr.ph.lr.ph ], [ %inc, %if.then.while.body.lr.ph_crit_edge ]
  %i.0.ph774 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %inc8, %if.then.while.body.lr.ph_crit_edge ]
  %data.addr.0.ph773 = phi ptr [ %data, %while.body.lr.ph.lr.ph ], [ %incdec.ptr, %if.then.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %j.0770 = phi i32 [ %j.0.ph775, %while.body.lr.ph ], [ 0, %if.end.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %j.0770)
  %cmp6 = icmp slt i32 %j.0770, 9
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %2 = ptrtoint ptr %data.addr.0.ph773 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data.addr.0.ph773, align 1
  %arrayidx = getelementptr i8, ptr %bf_data_in1, i32 %j.0770
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %arrayidx, align 1
  %inc = add nsw i32 %j.0770, 1
  %arrayidx7 = getelementptr i8, ptr %bf_crypt_out2, i32 %j.0770
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7, align 1
  %incdec.ptr = getelementptr i8, ptr %data.addr.0.ph773, i32 1
  store i8 %6, ptr %data.addr.0.ph773, align 1
  %inc8 = add nuw nsw i32 %i.0.ph774, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc8, i32 %len)
  %cmp = icmp slt i32 %inc8, %len
  %exitcond.not = icmp eq i32 %inc8, %len
  br i1 %exitcond.not, label %if.then.while.end_crit_edge, label %if.then.while.body.lr.ph_crit_edge

if.then.while.body.lr.ph_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end:                                           ; preds = %while.body
  %7 = ptrtoint ptr %bf_data_in1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bf_data_in1, align 1
  %idxprom = zext i8 %8 to i32
  %arrayidx10 = getelementptr [256 x i8], ptr @dsp_audio_law2seven, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx10, align 1
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx11, align 1
  %idxprom12 = zext i8 %12 to i32
  %arrayidx13 = getelementptr [256 x i8], ptr @dsp_audio_law2seven, i32 0, i32 %idxprom12
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %14 to i32
  %15 = shl nuw nsw i32 %conv, 14
  %16 = shl nuw nsw i32 %conv14, 7
  %shl15 = or i32 %16, %15
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx16, align 1
  %idxprom17 = zext i8 %18 to i32
  %arrayidx18 = getelementptr [256 x i8], ptr @dsp_audio_law2seven, i32 0, i32 %idxprom17
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %20 to i32
  %or20 = or i32 %shl15, %conv19
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx22, align 1
  %idxprom23 = zext i8 %22 to i32
  %arrayidx24 = getelementptr [256 x i8], ptr @dsp_audio_law2seven, i32 0, i32 %idxprom23
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %24 to i32
  %25 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx27, align 1
  %idxprom28 = zext i8 %26 to i32
  %arrayidx29 = getelementptr [256 x i8], ptr @dsp_audio_law2seven, i32 0, i32 %idxprom28
  %27 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %28 to i32
  %29 = shl i32 %or20, 11
  %30 = shl nuw nsw i32 %conv25, 4
  %shl31 = or i32 %30, %29
  %31 = lshr i32 %conv30, 3
  %or33 = or i32 %shl31, %31
  %32 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx35, align 1
  %idxprom36 = zext i8 %33 to i32
  %arrayidx37 = getelementptr [256 x i8], ptr @dsp_audio_law2seven, i32 0, i32 %idxprom36
  %34 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %35 to i32
  %36 = shl nuw nsw i32 %conv30, 14
  %37 = shl nuw nsw i32 %conv38, 7
  %shl40 = or i32 %37, %36
  %38 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx41, align 1
  %idxprom42 = zext i8 %39 to i32
  %arrayidx43 = getelementptr [256 x i8], ptr @dsp_audio_law2seven, i32 0, i32 %idxprom42
  %40 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %41 to i32
  %or45 = or i32 %shl40, %conv44
  %42 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx47, align 1
  %idxprom48 = zext i8 %43 to i32
  %arrayidx49 = getelementptr [256 x i8], ptr @dsp_audio_law2seven, i32 0, i32 %idxprom48
  %44 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %45 to i32
  %46 = shl i32 %or45, 14
  %47 = shl nuw nsw i32 %conv50, 7
  %shl52 = or i32 %47, %46
  %48 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx53, align 1
  %idxprom54 = zext i8 %49 to i32
  %arrayidx55 = getelementptr [256 x i8], ptr @dsp_audio_law2seven, i32 0, i32 %idxprom54
  %50 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %51 to i32
  %or57 = or i32 %shl52, %conv56
  %shl58 = shl i32 %or57, 1
  %and = and i32 %idxprom, 1
  %or61 = or i32 %shl58, %and
  %52 = ptrtoint ptr %bf_p to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bf_p, align 4
  %xor = xor i32 %53, %or33
  %shr63 = lshr i32 %xor, 24
  %arrayidx65 = getelementptr i32, ptr %bf_s, i32 %shr63
  %54 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx65, align 4
  %shr66 = lshr i32 %xor, 16
  %and67 = and i32 %shr66, 255
  %add = or i32 %and67, 256
  %arrayidx68 = getelementptr i32, ptr %bf_s, i32 %add
  %56 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx68, align 4
  %add69 = add i32 %57, %55
  %shr70 = lshr i32 %xor, 8
  %and71 = and i32 %shr70, 255
  %add72 = or i32 %and71, 512
  %arrayidx73 = getelementptr i32, ptr %bf_s, i32 %add72
  %58 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx73, align 4
  %xor74 = xor i32 %add69, %59
  %and75 = and i32 %xor, 255
  %add76 = or i32 %and75, 768
  %arrayidx77 = getelementptr i32, ptr %bf_s, i32 %add76
  %60 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx77, align 4
  %add78 = add i32 %xor74, %61
  %xor79 = xor i32 %add78, %or61
  %62 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx81, align 4
  %xor82 = xor i32 %xor79, %63
  %shr83 = lshr i32 %xor82, 24
  %arrayidx85 = getelementptr i32, ptr %bf_s, i32 %shr83
  %64 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx85, align 4
  %shr86 = lshr i32 %xor82, 16
  %and87 = and i32 %shr86, 255
  %add88 = or i32 %and87, 256
  %arrayidx89 = getelementptr i32, ptr %bf_s, i32 %add88
  %66 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx89, align 4
  %add90 = add i32 %67, %65
  %shr91 = lshr i32 %xor82, 8
  %and92 = and i32 %shr91, 255
  %add93 = or i32 %and92, 512
  %arrayidx94 = getelementptr i32, ptr %bf_s, i32 %add93
  %68 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx94, align 4
  %xor95 = xor i32 %add90, %69
  %and96 = and i32 %xor82, 255
  %add97 = or i32 %and96, 768
  %arrayidx98 = getelementptr i32, ptr %bf_s, i32 %add97
  %70 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx98, align 4
  %add99 = add i32 %xor95, %71
  %xor100 = xor i32 %add99, %xor
  %72 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx104, align 4
  %xor105 = xor i32 %xor100, %73
  %shr106 = lshr i32 %xor105, 24
  %arrayidx108 = getelementptr i32, ptr %bf_s, i32 %shr106
  %74 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx108, align 4
  %shr109 = lshr i32 %xor105, 16
  %and110 = and i32 %shr109, 255
  %add111 = or i32 %and110, 256
  %arrayidx112 = getelementptr i32, ptr %bf_s, i32 %add111
  %76 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx112, align 4
  %add113 = add i32 %77, %75
  %shr114 = lshr i32 %xor105, 8
  %and115 = and i32 %shr114, 255
  %add116 = or i32 %and115, 512
  %arrayidx117 = getelementptr i32, ptr %bf_s, i32 %add116
  %78 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx117, align 4
  %xor118 = xor i32 %add113, %79
  %and119 = and i32 %xor105, 255
  %add120 = or i32 %and119, 768
  %arrayidx121 = getelementptr i32, ptr %bf_s, i32 %add120
  %80 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx121, align 4
  %add122 = add i32 %xor118, %81
  %xor123 = xor i32 %add122, %xor82
  %82 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx127, align 4
  %xor128 = xor i32 %xor123, %83
  %shr129 = lshr i32 %xor128, 24
  %arrayidx131 = getelementptr i32, ptr %bf_s, i32 %shr129
  %84 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx131, align 4
  %shr132 = lshr i32 %xor128, 16
  %and133 = and i32 %shr132, 255
  %add134 = or i32 %and133, 256
  %arrayidx135 = getelementptr i32, ptr %bf_s, i32 %add134
  %86 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx135, align 4
  %add136 = add i32 %87, %85
  %shr137 = lshr i32 %xor128, 8
  %and138 = and i32 %shr137, 255
  %add139 = or i32 %and138, 512
  %arrayidx140 = getelementptr i32, ptr %bf_s, i32 %add139
  %88 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx140, align 4
  %xor141 = xor i32 %add136, %89
  %and142 = and i32 %xor128, 255
  %add143 = or i32 %and142, 768
  %arrayidx144 = getelementptr i32, ptr %bf_s, i32 %add143
  %90 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx144, align 4
  %add145 = add i32 %xor141, %91
  %xor146 = xor i32 %add145, %xor105
  %92 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx150, align 4
  %xor151 = xor i32 %xor146, %93
  %shr152 = lshr i32 %xor151, 24
  %arrayidx154 = getelementptr i32, ptr %bf_s, i32 %shr152
  %94 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx154, align 4
  %shr155 = lshr i32 %xor151, 16
  %and156 = and i32 %shr155, 255
  %add157 = or i32 %and156, 256
  %arrayidx158 = getelementptr i32, ptr %bf_s, i32 %add157
  %96 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx158, align 4
  %add159 = add i32 %97, %95
  %shr160 = lshr i32 %xor151, 8
  %and161 = and i32 %shr160, 255
  %add162 = or i32 %and161, 512
  %arrayidx163 = getelementptr i32, ptr %bf_s, i32 %add162
  %98 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx163, align 4
  %xor164 = xor i32 %add159, %99
  %and165 = and i32 %xor151, 255
  %add166 = or i32 %and165, 768
  %arrayidx167 = getelementptr i32, ptr %bf_s, i32 %add166
  %100 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx167, align 4
  %add168 = add i32 %xor164, %101
  %xor169 = xor i32 %add168, %xor128
  %102 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx173, align 4
  %xor174 = xor i32 %xor169, %103
  %shr175 = lshr i32 %xor174, 24
  %arrayidx177 = getelementptr i32, ptr %bf_s, i32 %shr175
  %104 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx177, align 4
  %shr178 = lshr i32 %xor174, 16
  %and179 = and i32 %shr178, 255
  %add180 = or i32 %and179, 256
  %arrayidx181 = getelementptr i32, ptr %bf_s, i32 %add180
  %106 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx181, align 4
  %add182 = add i32 %107, %105
  %shr183 = lshr i32 %xor174, 8
  %and184 = and i32 %shr183, 255
  %add185 = or i32 %and184, 512
  %arrayidx186 = getelementptr i32, ptr %bf_s, i32 %add185
  %108 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx186, align 4
  %xor187 = xor i32 %add182, %109
  %and188 = and i32 %xor174, 255
  %add189 = or i32 %and188, 768
  %arrayidx190 = getelementptr i32, ptr %bf_s, i32 %add189
  %110 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx190, align 4
  %add191 = add i32 %xor187, %111
  %xor192 = xor i32 %add191, %xor151
  %112 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx196, align 4
  %xor197 = xor i32 %xor192, %113
  %shr198 = lshr i32 %xor197, 24
  %arrayidx200 = getelementptr i32, ptr %bf_s, i32 %shr198
  %114 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx200, align 4
  %shr201 = lshr i32 %xor197, 16
  %and202 = and i32 %shr201, 255
  %add203 = or i32 %and202, 256
  %arrayidx204 = getelementptr i32, ptr %bf_s, i32 %add203
  %116 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx204, align 4
  %add205 = add i32 %117, %115
  %shr206 = lshr i32 %xor197, 8
  %and207 = and i32 %shr206, 255
  %add208 = or i32 %and207, 512
  %arrayidx209 = getelementptr i32, ptr %bf_s, i32 %add208
  %118 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx209, align 4
  %xor210 = xor i32 %add205, %119
  %and211 = and i32 %xor197, 255
  %add212 = or i32 %and211, 768
  %arrayidx213 = getelementptr i32, ptr %bf_s, i32 %add212
  %120 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx213, align 4
  %add214 = add i32 %xor210, %121
  %xor215 = xor i32 %add214, %xor174
  %122 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx219, align 4
  %xor220 = xor i32 %xor215, %123
  %shr221 = lshr i32 %xor220, 24
  %arrayidx223 = getelementptr i32, ptr %bf_s, i32 %shr221
  %124 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx223, align 4
  %shr224 = lshr i32 %xor220, 16
  %and225 = and i32 %shr224, 255
  %add226 = or i32 %and225, 256
  %arrayidx227 = getelementptr i32, ptr %bf_s, i32 %add226
  %126 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx227, align 4
  %add228 = add i32 %127, %125
  %shr229 = lshr i32 %xor220, 8
  %and230 = and i32 %shr229, 255
  %add231 = or i32 %and230, 512
  %arrayidx232 = getelementptr i32, ptr %bf_s, i32 %add231
  %128 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx232, align 4
  %xor233 = xor i32 %add228, %129
  %and234 = and i32 %xor220, 255
  %add235 = or i32 %and234, 768
  %arrayidx236 = getelementptr i32, ptr %bf_s, i32 %add235
  %130 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx236, align 4
  %add237 = add i32 %xor233, %131
  %xor238 = xor i32 %add237, %xor197
  %132 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx242, align 4
  %xor243 = xor i32 %xor238, %133
  %shr244 = lshr i32 %xor243, 24
  %arrayidx246 = getelementptr i32, ptr %bf_s, i32 %shr244
  %134 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx246, align 4
  %shr247 = lshr i32 %xor243, 16
  %and248 = and i32 %shr247, 255
  %add249 = or i32 %and248, 256
  %arrayidx250 = getelementptr i32, ptr %bf_s, i32 %add249
  %136 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx250, align 4
  %add251 = add i32 %137, %135
  %shr252 = lshr i32 %xor243, 8
  %and253 = and i32 %shr252, 255
  %add254 = or i32 %and253, 512
  %arrayidx255 = getelementptr i32, ptr %bf_s, i32 %add254
  %138 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx255, align 4
  %xor256 = xor i32 %add251, %139
  %and257 = and i32 %xor243, 255
  %add258 = or i32 %and257, 768
  %arrayidx259 = getelementptr i32, ptr %bf_s, i32 %add258
  %140 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx259, align 4
  %add260 = add i32 %xor256, %141
  %xor261 = xor i32 %add260, %xor220
  %142 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx265, align 4
  %xor266 = xor i32 %xor261, %143
  %shr267 = lshr i32 %xor266, 24
  %arrayidx269 = getelementptr i32, ptr %bf_s, i32 %shr267
  %144 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx269, align 4
  %shr270 = lshr i32 %xor266, 16
  %and271 = and i32 %shr270, 255
  %add272 = or i32 %and271, 256
  %arrayidx273 = getelementptr i32, ptr %bf_s, i32 %add272
  %146 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx273, align 4
  %add274 = add i32 %147, %145
  %shr275 = lshr i32 %xor266, 8
  %and276 = and i32 %shr275, 255
  %add277 = or i32 %and276, 512
  %arrayidx278 = getelementptr i32, ptr %bf_s, i32 %add277
  %148 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx278, align 4
  %xor279 = xor i32 %add274, %149
  %and280 = and i32 %xor266, 255
  %add281 = or i32 %and280, 768
  %arrayidx282 = getelementptr i32, ptr %bf_s, i32 %add281
  %150 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx282, align 4
  %add283 = add i32 %xor279, %151
  %xor284 = xor i32 %add283, %xor243
  %152 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx288, align 4
  %xor289 = xor i32 %xor284, %153
  %shr290 = lshr i32 %xor289, 24
  %arrayidx292 = getelementptr i32, ptr %bf_s, i32 %shr290
  %154 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx292, align 4
  %shr293 = lshr i32 %xor289, 16
  %and294 = and i32 %shr293, 255
  %add295 = or i32 %and294, 256
  %arrayidx296 = getelementptr i32, ptr %bf_s, i32 %add295
  %156 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx296, align 4
  %add297 = add i32 %157, %155
  %shr298 = lshr i32 %xor289, 8
  %and299 = and i32 %shr298, 255
  %add300 = or i32 %and299, 512
  %arrayidx301 = getelementptr i32, ptr %bf_s, i32 %add300
  %158 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx301, align 4
  %xor302 = xor i32 %add297, %159
  %and303 = and i32 %xor289, 255
  %add304 = or i32 %and303, 768
  %arrayidx305 = getelementptr i32, ptr %bf_s, i32 %add304
  %160 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx305, align 4
  %add306 = add i32 %xor302, %161
  %xor307 = xor i32 %add306, %xor266
  %162 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx311, align 4
  %xor312 = xor i32 %xor307, %163
  %shr313 = lshr i32 %xor312, 24
  %arrayidx315 = getelementptr i32, ptr %bf_s, i32 %shr313
  %164 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx315, align 4
  %shr316 = lshr i32 %xor312, 16
  %and317 = and i32 %shr316, 255
  %add318 = or i32 %and317, 256
  %arrayidx319 = getelementptr i32, ptr %bf_s, i32 %add318
  %166 = ptrtoint ptr %arrayidx319 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx319, align 4
  %add320 = add i32 %167, %165
  %shr321 = lshr i32 %xor312, 8
  %and322 = and i32 %shr321, 255
  %add323 = or i32 %and322, 512
  %arrayidx324 = getelementptr i32, ptr %bf_s, i32 %add323
  %168 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx324, align 4
  %xor325 = xor i32 %add320, %169
  %and326 = and i32 %xor312, 255
  %add327 = or i32 %and326, 768
  %arrayidx328 = getelementptr i32, ptr %bf_s, i32 %add327
  %170 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx328, align 4
  %add329 = add i32 %xor325, %171
  %xor330 = xor i32 %add329, %xor289
  %172 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx334, align 4
  %xor335 = xor i32 %xor330, %173
  %shr336 = lshr i32 %xor335, 24
  %arrayidx338 = getelementptr i32, ptr %bf_s, i32 %shr336
  %174 = ptrtoint ptr %arrayidx338 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx338, align 4
  %shr339 = lshr i32 %xor335, 16
  %and340 = and i32 %shr339, 255
  %add341 = or i32 %and340, 256
  %arrayidx342 = getelementptr i32, ptr %bf_s, i32 %add341
  %176 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx342, align 4
  %add343 = add i32 %177, %175
  %shr344 = lshr i32 %xor335, 8
  %and345 = and i32 %shr344, 255
  %add346 = or i32 %and345, 512
  %arrayidx347 = getelementptr i32, ptr %bf_s, i32 %add346
  %178 = ptrtoint ptr %arrayidx347 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx347, align 4
  %xor348 = xor i32 %add343, %179
  %and349 = and i32 %xor335, 255
  %add350 = or i32 %and349, 768
  %arrayidx351 = getelementptr i32, ptr %bf_s, i32 %add350
  %180 = ptrtoint ptr %arrayidx351 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx351, align 4
  %add352 = add i32 %xor348, %181
  %xor353 = xor i32 %add352, %xor312
  %182 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx357, align 4
  %xor358 = xor i32 %xor353, %183
  %shr359 = lshr i32 %xor358, 24
  %arrayidx361 = getelementptr i32, ptr %bf_s, i32 %shr359
  %184 = ptrtoint ptr %arrayidx361 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx361, align 4
  %shr362 = lshr i32 %xor358, 16
  %and363 = and i32 %shr362, 255
  %add364 = or i32 %and363, 256
  %arrayidx365 = getelementptr i32, ptr %bf_s, i32 %add364
  %186 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx365, align 4
  %add366 = add i32 %187, %185
  %shr367 = lshr i32 %xor358, 8
  %and368 = and i32 %shr367, 255
  %add369 = or i32 %and368, 512
  %arrayidx370 = getelementptr i32, ptr %bf_s, i32 %add369
  %188 = ptrtoint ptr %arrayidx370 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx370, align 4
  %xor371 = xor i32 %add366, %189
  %and372 = and i32 %xor358, 255
  %add373 = or i32 %and372, 768
  %arrayidx374 = getelementptr i32, ptr %bf_s, i32 %add373
  %190 = ptrtoint ptr %arrayidx374 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx374, align 4
  %add375 = add i32 %xor371, %191
  %xor376 = xor i32 %add375, %xor335
  %192 = ptrtoint ptr %arrayidx380 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx380, align 4
  %xor381 = xor i32 %xor376, %193
  %shr382 = lshr i32 %xor381, 24
  %arrayidx384 = getelementptr i32, ptr %bf_s, i32 %shr382
  %194 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx384, align 4
  %shr385 = lshr i32 %xor381, 16
  %and386 = and i32 %shr385, 255
  %add387 = or i32 %and386, 256
  %arrayidx388 = getelementptr i32, ptr %bf_s, i32 %add387
  %196 = ptrtoint ptr %arrayidx388 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx388, align 4
  %add389 = add i32 %197, %195
  %shr390 = lshr i32 %xor381, 8
  %and391 = and i32 %shr390, 255
  %add392 = or i32 %and391, 512
  %arrayidx393 = getelementptr i32, ptr %bf_s, i32 %add392
  %198 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx393, align 4
  %xor394 = xor i32 %add389, %199
  %and395 = and i32 %xor381, 255
  %add396 = or i32 %and395, 768
  %arrayidx397 = getelementptr i32, ptr %bf_s, i32 %add396
  %200 = ptrtoint ptr %arrayidx397 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx397, align 4
  %add398 = add i32 %xor394, %201
  %xor399 = xor i32 %add398, %xor358
  %202 = ptrtoint ptr %arrayidx403 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx403, align 4
  %xor404 = xor i32 %xor399, %203
  %shr405 = lshr i32 %xor404, 24
  %arrayidx407 = getelementptr i32, ptr %bf_s, i32 %shr405
  %204 = ptrtoint ptr %arrayidx407 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx407, align 4
  %shr408 = lshr i32 %xor404, 16
  %and409 = and i32 %shr408, 255
  %add410 = or i32 %and409, 256
  %arrayidx411 = getelementptr i32, ptr %bf_s, i32 %add410
  %206 = ptrtoint ptr %arrayidx411 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx411, align 4
  %add412 = add i32 %207, %205
  %shr413 = lshr i32 %xor404, 8
  %and414 = and i32 %shr413, 255
  %add415 = or i32 %and414, 512
  %arrayidx416 = getelementptr i32, ptr %bf_s, i32 %add415
  %208 = ptrtoint ptr %arrayidx416 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx416, align 4
  %xor417 = xor i32 %add412, %209
  %and418 = and i32 %xor404, 255
  %add419 = or i32 %and418, 768
  %arrayidx420 = getelementptr i32, ptr %bf_s, i32 %add419
  %210 = ptrtoint ptr %arrayidx420 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx420, align 4
  %add421 = add i32 %xor417, %211
  %xor422 = xor i32 %add421, %xor381
  %212 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx425, align 4
  %xor426 = xor i32 %xor422, %213
  %214 = ptrtoint ptr %arrayidx427 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx427, align 4
  %xor428 = xor i32 %215, %xor404
  %shr429 = lshr i32 %xor426, 3
  %xor430 = xor i32 %shr429, %xor426
  %shr431 = lshr i32 %xor426, 6
  %xor432 = xor i32 %xor430, %shr431
  %shr433 = lshr i32 %xor426, 9
  %xor434 = xor i32 %xor432, %shr433
  %shr435 = lshr i32 %xor426, 12
  %xor436 = xor i32 %xor434, %shr435
  %shr437 = lshr i32 %xor426, 15
  %xor438 = xor i32 %xor436, %shr437
  %shr439 = lshr i32 %xor426, 18
  %xor440 = xor i32 %xor438, %shr439
  %shr441 = lshr i32 %xor426, 21
  %xor442 = xor i32 %xor440, %shr441
  %shr443 = lshr i32 %xor426, 24
  %xor444 = xor i32 %xor442, %shr443
  %shr445 = lshr i32 %xor426, 27
  %xor446 = xor i32 %xor444, %shr445
  %shr447 = lshr i32 %xor426, 30
  %xor448 = xor i32 %xor446, %shr447
  %shl449 = shl i32 %xor428, 2
  %xor450 = xor i32 %xor448, %shl449
  %shr451 = lshr i32 %xor428, 1
  %xor452 = xor i32 %xor450, %shr451
  %shr453 = lshr i32 %xor428, 4
  %xor454 = xor i32 %xor452, %shr453
  %shr455 = lshr i32 %xor428, 7
  %xor456 = xor i32 %xor454, %shr455
  %shr457 = lshr i32 %xor428, 10
  %xor458 = xor i32 %xor456, %shr457
  %shr459 = lshr i32 %xor428, 13
  %xor460 = xor i32 %xor458, %shr459
  %shr461 = lshr i32 %xor428, 16
  %xor462 = xor i32 %xor460, %shr461
  %shr463 = lshr i32 %xor428, 19
  %xor464 = xor i32 %xor462, %shr463
  %shr465 = lshr i32 %xor428, 22
  %xor466 = xor i32 %xor464, %shr465
  %shr467 = lshr i32 %xor428, 25
  %xor468 = xor i32 %xor466, %shr467
  %shr469 = lshr i32 %xor428, 28
  %xor470 = xor i32 %xor468, %shr469
  %shr471 = lshr i32 %xor428, 31
  %xor472 = xor i32 %xor470, %shr471
  %shr473 = lshr i32 %xor426, 25
  %216 = trunc i32 %shr473 to i8
  %conv475 = or i8 %216, -128
  %217 = ptrtoint ptr %bf_crypt_out2 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %conv475, ptr %bf_crypt_out2, align 1
  %218 = trunc i32 %shr439 to i8
  %conv479 = and i8 %218, 127
  %219 = ptrtoint ptr %arrayidx480 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %conv479, ptr %arrayidx480, align 1
  %shr481 = lshr i32 %xor426, 11
  %220 = trunc i32 %shr481 to i8
  %conv483 = and i8 %220, 127
  %221 = ptrtoint ptr %arrayidx484 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %conv483, ptr %arrayidx484, align 1
  %shr485 = lshr i32 %xor426, 4
  %222 = trunc i32 %shr485 to i8
  %conv487 = and i8 %222, 127
  %223 = ptrtoint ptr %arrayidx488 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %conv487, ptr %arrayidx488, align 1
  %shl489 = shl i32 %xor426, 3
  %and490 = and i32 %shl489, 120
  %shr491 = lshr i32 %xor428, 29
  %or493 = or i32 %and490, %shr491
  %conv494 = trunc i32 %or493 to i8
  %224 = ptrtoint ptr %arrayidx495 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %conv494, ptr %arrayidx495, align 1
  %and497 = and i32 %shr465, 127
  %shl498 = shl i32 %xor470, 5
  %and499 = and i32 %shl498, 128
  %or500 = or i32 %and499, %and497
  %conv501 = trunc i32 %or500 to i8
  %225 = ptrtoint ptr %arrayidx502 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %conv501, ptr %arrayidx502, align 1
  %shr503 = lshr i32 %xor428, 15
  %and504 = and i32 %shr503, 127
  %shl505 = shl i32 %xor470, 6
  %and506 = and i32 %shl505, 128
  %or507 = or i32 %and506, %and504
  %conv508 = trunc i32 %or507 to i8
  %226 = ptrtoint ptr %arrayidx509 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %conv508, ptr %arrayidx509, align 1
  %shr510 = lshr i32 %xor428, 8
  %and511 = and i32 %shr510, 127
  %shl512 = shl i32 %xor472, 7
  %or513 = or i32 %shl512, %and511
  %conv514 = trunc i32 %or513 to i8
  %227 = ptrtoint ptr %arrayidx515 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %conv514, ptr %arrayidx515, align 1
  %conv516 = trunc i32 %xor428 to i8
  %228 = ptrtoint ptr %arrayidx517 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %conv516, ptr %arrayidx517, align 1
  br i1 %cmp776, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %if.then.while.end_crit_edge, %entry.while.end_crit_edge
  %j.0.lcssa = phi i32 [ %1, %entry.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ], [ %inc, %if.then.while.end_crit_edge ]
  %229 = ptrtoint ptr %bf_crypt_pos to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %j.0.lcssa, ptr %bf_crypt_pos, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_bf_decrypt(ptr noundef %dsp, ptr nocapture noundef %data, i32 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bf_decrypt_in_pos = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 47
  %0 = ptrtoint ptr %bf_decrypt_in_pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bf_decrypt_in_pos, align 4
  %conv = trunc i32 %1 to i8
  %bf_decrypt_out_pos = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 48
  %2 = ptrtoint ptr %bf_decrypt_out_pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bf_decrypt_out_pos, align 4
  %conv1 = trunc i32 %3 to i8
  %bf_crypt_inring2 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 49
  %bf_data_out3 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 50
  %bf_sync = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 51
  %4 = ptrtoint ptr %bf_sync to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bf_sync, align 4
  %conv5 = trunc i32 %5 to i16
  %bf_p = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 42
  %bf_s = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp838 = icmp sgt i32 %len, 0
  br i1 %cmp838, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %arrayidx156 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 17
  %arrayidx158 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 16
  %arrayidx178 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 15
  %arrayidx201 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 14
  %arrayidx224 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 13
  %arrayidx247 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 12
  %arrayidx270 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 11
  %arrayidx293 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 10
  %arrayidx316 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 9
  %arrayidx339 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 8
  %arrayidx362 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 7
  %arrayidx385 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 6
  %arrayidx408 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 5
  %arrayidx431 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 4
  %arrayidx454 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 3
  %arrayidx477 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 2
  %arrayidx500 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 1
  %arrayidx534 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 50, i32 1
  %arrayidx538 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 50, i32 2
  %arrayidx542 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 50, i32 3
  %arrayidx549 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 50, i32 4
  %arrayidx553 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 50, i32 5
  %arrayidx557 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 50, i32 6
  %arrayidx561 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 50, i32 7
  %arrayidx565 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 50, i32 8
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %data.addr.0843 = phi ptr [ %data, %while.body.lr.ph ], [ %incdec.ptr, %while.cond.backedge.while.body_crit_edge ]
  %sync.0842 = phi i16 [ %conv5, %while.body.lr.ph ], [ %or, %while.cond.backedge.while.body_crit_edge ]
  %k.0841 = phi i8 [ %conv1, %while.body.lr.ph ], [ %k.0.be, %while.cond.backedge.while.body_crit_edge ]
  %j.0840 = phi i8 [ %conv, %while.body.lr.ph ], [ %inc, %while.cond.backedge.while.body_crit_edge ]
  %i.0839 = phi i32 [ 0, %while.body.lr.ph ], [ %inc15, %while.cond.backedge.while.body_crit_edge ]
  %shl = shl i16 %sync.0842, 1
  %6 = ptrtoint ptr %data.addr.0843 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data.addr.0843, align 1
  %8 = lshr i8 %7, 7
  %9 = zext i8 %8 to i16
  %or = or i16 %shl, %9
  %inc = add i8 %j.0840, 1
  %10 = and i8 %j.0840, 15
  %and = zext i8 %10 to i32
  %arrayidx = getelementptr i8, ptr %bf_crypt_inring2, i32 %and
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %7, ptr %arrayidx, align 1
  %inc13 = add i8 %k.0841, 1
  %idxprom = zext i8 %k.0841 to i32
  %arrayidx14 = getelementptr i8, ptr %bf_data_out3, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx14, align 1
  %incdec.ptr = getelementptr i8, ptr %data.addr.0843, i32 1
  store i8 %13, ptr %data.addr.0843, align 1
  %inc15 = add nuw nsw i32 %i.0839, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %inc13)
  %cmp17 = icmp eq i8 %inc13, 9
  %spec.store.select = select i1 %cmp17, i8 0, i8 %inc13
  %14 = and i16 %sync.0842, 248
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %14)
  %cmp21.not = icmp eq i16 %14, 128
  br i1 %cmp21.not, label %if.end24, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.end24:                                         ; preds = %while.body
  %sub = add i8 %j.0840, 8
  %inc27 = add i8 %j.0840, 9
  %15 = and i8 %sub, 15
  %and29 = zext i8 %15 to i32
  %arrayidx30 = getelementptr i8, ptr %bf_crypt_inring2, i32 %and29
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %17 to i32
  %inc33 = add i8 %j.0840, 10
  %18 = and i8 %inc27, 15
  %and35 = zext i8 %18 to i32
  %arrayidx36 = getelementptr i8, ptr %bf_crypt_inring2, i32 %and35
  %19 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %20 to i32
  %21 = shl nuw nsw i32 %conv31, 14
  %22 = shl nuw nsw i32 %conv37, 7
  %shl39 = or i32 %22, %21
  %inc40 = add i8 %j.0840, 11
  %23 = and i8 %inc33, 15
  %and42 = zext i8 %23 to i32
  %arrayidx43 = getelementptr i8, ptr %bf_crypt_inring2, i32 %and42
  %24 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %25 to i32
  %or45 = or i32 %shl39, %conv44
  %inc47 = add i8 %j.0840, 12
  %26 = and i8 %inc40, 15
  %and49 = zext i8 %26 to i32
  %arrayidx50 = getelementptr i8, ptr %bf_crypt_inring2, i32 %and49
  %27 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %28 to i32
  %inc53 = add i8 %j.0840, 13
  %29 = and i8 %inc47, 15
  %and55 = zext i8 %29 to i32
  %arrayidx56 = getelementptr i8, ptr %bf_crypt_inring2, i32 %and55
  %30 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %31 to i32
  %32 = shl i32 %or45, 11
  %33 = shl nuw nsw i32 %conv51, 4
  %shl58 = or i32 %32, %33
  %34 = lshr i32 %conv57, 3
  %or61 = or i32 %shl58, %34
  %inc62 = add i8 %j.0840, 14
  %35 = and i8 %inc53, 15
  %and64 = zext i8 %35 to i32
  %arrayidx65 = getelementptr i8, ptr %bf_crypt_inring2, i32 %and64
  %36 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx65, align 1
  %conv67 = zext i8 %37 to i32
  %inc70 = add i8 %j.0840, 15
  %38 = and i8 %inc62, 15
  %and72 = zext i8 %38 to i32
  %arrayidx73 = getelementptr i8, ptr %bf_crypt_inring2, i32 %and72
  %39 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx73, align 1
  %41 = shl nuw nsw i32 %conv57, 14
  %and68 = shl nuw nsw i32 %conv67, 7
  %42 = and i32 %and68, 16256
  %shl74 = or i32 %42, %41
  %conv75 = zext i8 %40 to i32
  %and76 = and i32 %conv75, 127
  %or77 = or i32 %shl74, %and76
  %43 = and i8 %inc70, 15
  %and80 = zext i8 %43 to i32
  %arrayidx81 = getelementptr i8, ptr %bf_crypt_inring2, i32 %and80
  %44 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx81, align 1
  %conv83 = zext i8 %45 to i32
  %46 = shl i32 %or77, 15
  %and84 = shl nuw nsw i32 %conv83, 8
  %47 = and i32 %and84, 32512
  %shl86 = or i32 %46, %47
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx, align 1
  %conv91 = zext i8 %49 to i32
  %or92 = or i32 %shl86, %conv91
  %shr93 = lshr i32 %or61, 3
  %shr94 = lshr i32 %shl58, 6
  %shr96 = lshr i32 %shl58, 9
  %shr98 = lshr i32 %32, 12
  %shr100 = lshr i32 %32, 15
  %shr102 = lshr i32 %32, 18
  %shr104 = lshr i32 %32, 21
  %shr106 = lshr i32 %32, 24
  %shr108 = lshr i32 %32, 27
  %shr110 = lshr i32 %32, 30
  %shl112 = shl i32 %or92, 2
  %shr114 = lshr i32 %or92, 1
  %shr116 = lshr i32 %or92, 4
  %shr118 = lshr i32 %or92, 7
  %shr120 = lshr i32 %shl86, 10
  %shr122 = lshr i32 %shl86, 13
  %shr124 = lshr i32 %46, 16
  %shr126 = lshr i32 %46, 19
  %shr128 = lshr i32 %46, 22
  %shr130 = lshr i32 %46, 25
  %shr132 = lshr i32 %46, 28
  %shr134 = lshr i32 %46, 31
  %xor = xor i32 %shr100, %shr98
  %xor95 = xor i32 %xor, %shr102
  %xor97 = xor i32 %xor95, %shr104
  %xor99 = xor i32 %xor97, %shr106
  %xor101 = xor i32 %xor99, %shr108
  %xor103 = xor i32 %xor101, %shr110
  %xor105 = xor i32 %xor103, %or61
  %xor107 = xor i32 %xor105, %shr94
  %xor109 = xor i32 %xor107, %shr96
  %xor111 = xor i32 %xor109, %shr93
  %xor113 = xor i32 %xor111, %shr124
  %xor115 = xor i32 %xor113, %shr126
  %xor117 = xor i32 %xor115, %shr128
  %xor119 = xor i32 %xor117, %shr130
  %xor121 = xor i32 %xor119, %shr132
  %xor123 = xor i32 %xor121, %shr120
  %xor125 = xor i32 %xor123, %shr122
  %xor127 = xor i32 %xor125, %shl112
  %xor129 = xor i32 %xor127, %shr114
  %xor131.masked = xor i32 %xor129, %shr116
  %xor133.masked = xor i32 %xor131.masked, %shr118
  %xor133.masked.masked = and i32 %xor133.masked, 7
  %and138 = xor i32 %xor133.masked.masked, %shr134
  %50 = lshr i32 %conv67, 5
  %and141 = and i32 %50, 4
  %51 = lshr i32 %conv75, 6
  %and144 = and i32 %51, 2
  %or145 = or i32 %and144, %and141
  %52 = lshr i32 %conv83, 7
  %or148 = or i32 %or145, %52
  call void @__sanitizer_cov_trace_cmp4(i32 %and138, i32 %or148)
  %cmp149.not = icmp eq i32 %and138, %or148
  br i1 %cmp149.not, label %if.end155, label %if.then151

if.then151:                                       ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %53 = load i32, ptr @dsp_debug, align 4
  %and152 = and i32 %53, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool.not = icmp eq i32 %and152, 0
  br i1 %tobool.not, label %if.then151.while.cond.backedge_crit_edge, label %do.end

if.then151.while.cond.backedge_crit_edge:         ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

do.end:                                           ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end155, %do.end, %if.then151.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %k.0.be = phi i8 [ %spec.store.select, %while.body.while.cond.backedge_crit_edge ], [ 0, %if.end155 ], [ %spec.store.select, %do.end ], [ %spec.store.select, %if.then151.while.cond.backedge_crit_edge ]
  %exitcond.not = icmp eq i32 %inc15, %len
  br i1 %exitcond.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end155:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx156, align 4
  %xor157 = xor i32 %55, %or92
  %56 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx158, align 4
  %xor159 = xor i32 %57, %or61
  %shr161 = lshr i32 %xor157, 24
  %arrayidx163 = getelementptr i32, ptr %bf_s, i32 %shr161
  %58 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx163, align 4
  %shr164 = lshr i32 %xor157, 16
  %and165 = and i32 %shr164, 255
  %add = or i32 %and165, 256
  %arrayidx166 = getelementptr i32, ptr %bf_s, i32 %add
  %60 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx166, align 4
  %add167 = add i32 %61, %59
  %shr168 = lshr i32 %xor157, 8
  %and169 = and i32 %shr168, 255
  %add170 = or i32 %and169, 512
  %arrayidx171 = getelementptr i32, ptr %bf_s, i32 %add170
  %62 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx171, align 4
  %xor172 = xor i32 %add167, %63
  %and173 = and i32 %xor157, 255
  %add174 = or i32 %and173, 768
  %arrayidx175 = getelementptr i32, ptr %bf_s, i32 %add174
  %64 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx175, align 4
  %add176 = add i32 %xor172, %65
  %xor177 = xor i32 %xor159, %add176
  %66 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx178, align 4
  %xor179 = xor i32 %67, %xor157
  %shr183 = lshr i32 %xor177, 24
  %arrayidx185 = getelementptr i32, ptr %bf_s, i32 %shr183
  %68 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx185, align 4
  %shr186 = lshr i32 %xor177, 16
  %and187 = and i32 %shr186, 255
  %add188 = or i32 %and187, 256
  %arrayidx189 = getelementptr i32, ptr %bf_s, i32 %add188
  %70 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx189, align 4
  %add190 = add i32 %71, %69
  %shr191 = lshr i32 %xor177, 8
  %and192 = and i32 %shr191, 255
  %add193 = or i32 %and192, 512
  %arrayidx194 = getelementptr i32, ptr %bf_s, i32 %add193
  %72 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx194, align 4
  %xor195 = xor i32 %add190, %73
  %and196 = and i32 %xor177, 255
  %add197 = or i32 %and196, 768
  %arrayidx198 = getelementptr i32, ptr %bf_s, i32 %add197
  %74 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx198, align 4
  %add199 = add i32 %xor195, %75
  %xor200 = xor i32 %xor179, %add199
  %76 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx201, align 4
  %xor202 = xor i32 %77, %xor177
  %shr206 = lshr i32 %xor200, 24
  %arrayidx208 = getelementptr i32, ptr %bf_s, i32 %shr206
  %78 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx208, align 4
  %shr209 = lshr i32 %xor200, 16
  %and210 = and i32 %shr209, 255
  %add211 = or i32 %and210, 256
  %arrayidx212 = getelementptr i32, ptr %bf_s, i32 %add211
  %80 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx212, align 4
  %add213 = add i32 %81, %79
  %shr214 = lshr i32 %xor200, 8
  %and215 = and i32 %shr214, 255
  %add216 = or i32 %and215, 512
  %arrayidx217 = getelementptr i32, ptr %bf_s, i32 %add216
  %82 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx217, align 4
  %xor218 = xor i32 %add213, %83
  %and219 = and i32 %xor200, 255
  %add220 = or i32 %and219, 768
  %arrayidx221 = getelementptr i32, ptr %bf_s, i32 %add220
  %84 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx221, align 4
  %add222 = add i32 %xor218, %85
  %xor223 = xor i32 %xor202, %add222
  %86 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx224, align 4
  %xor225 = xor i32 %87, %xor200
  %shr229 = lshr i32 %xor223, 24
  %arrayidx231 = getelementptr i32, ptr %bf_s, i32 %shr229
  %88 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx231, align 4
  %shr232 = lshr i32 %xor223, 16
  %and233 = and i32 %shr232, 255
  %add234 = or i32 %and233, 256
  %arrayidx235 = getelementptr i32, ptr %bf_s, i32 %add234
  %90 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx235, align 4
  %add236 = add i32 %91, %89
  %shr237 = lshr i32 %xor223, 8
  %and238 = and i32 %shr237, 255
  %add239 = or i32 %and238, 512
  %arrayidx240 = getelementptr i32, ptr %bf_s, i32 %add239
  %92 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx240, align 4
  %xor241 = xor i32 %add236, %93
  %and242 = and i32 %xor223, 255
  %add243 = or i32 %and242, 768
  %arrayidx244 = getelementptr i32, ptr %bf_s, i32 %add243
  %94 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx244, align 4
  %add245 = add i32 %xor241, %95
  %xor246 = xor i32 %xor225, %add245
  %96 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx247, align 4
  %xor248 = xor i32 %97, %xor223
  %shr252 = lshr i32 %xor246, 24
  %arrayidx254 = getelementptr i32, ptr %bf_s, i32 %shr252
  %98 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx254, align 4
  %shr255 = lshr i32 %xor246, 16
  %and256 = and i32 %shr255, 255
  %add257 = or i32 %and256, 256
  %arrayidx258 = getelementptr i32, ptr %bf_s, i32 %add257
  %100 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx258, align 4
  %add259 = add i32 %101, %99
  %shr260 = lshr i32 %xor246, 8
  %and261 = and i32 %shr260, 255
  %add262 = or i32 %and261, 512
  %arrayidx263 = getelementptr i32, ptr %bf_s, i32 %add262
  %102 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx263, align 4
  %xor264 = xor i32 %add259, %103
  %and265 = and i32 %xor246, 255
  %add266 = or i32 %and265, 768
  %arrayidx267 = getelementptr i32, ptr %bf_s, i32 %add266
  %104 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx267, align 4
  %add268 = add i32 %xor264, %105
  %xor269 = xor i32 %xor248, %add268
  %106 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx270, align 4
  %xor271 = xor i32 %107, %xor246
  %shr275 = lshr i32 %xor269, 24
  %arrayidx277 = getelementptr i32, ptr %bf_s, i32 %shr275
  %108 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx277, align 4
  %shr278 = lshr i32 %xor269, 16
  %and279 = and i32 %shr278, 255
  %add280 = or i32 %and279, 256
  %arrayidx281 = getelementptr i32, ptr %bf_s, i32 %add280
  %110 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx281, align 4
  %add282 = add i32 %111, %109
  %shr283 = lshr i32 %xor269, 8
  %and284 = and i32 %shr283, 255
  %add285 = or i32 %and284, 512
  %arrayidx286 = getelementptr i32, ptr %bf_s, i32 %add285
  %112 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx286, align 4
  %xor287 = xor i32 %add282, %113
  %and288 = and i32 %xor269, 255
  %add289 = or i32 %and288, 768
  %arrayidx290 = getelementptr i32, ptr %bf_s, i32 %add289
  %114 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx290, align 4
  %add291 = add i32 %xor287, %115
  %xor292 = xor i32 %xor271, %add291
  %116 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx293, align 4
  %xor294 = xor i32 %117, %xor269
  %shr298 = lshr i32 %xor292, 24
  %arrayidx300 = getelementptr i32, ptr %bf_s, i32 %shr298
  %118 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx300, align 4
  %shr301 = lshr i32 %xor292, 16
  %and302 = and i32 %shr301, 255
  %add303 = or i32 %and302, 256
  %arrayidx304 = getelementptr i32, ptr %bf_s, i32 %add303
  %120 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx304, align 4
  %add305 = add i32 %121, %119
  %shr306 = lshr i32 %xor292, 8
  %and307 = and i32 %shr306, 255
  %add308 = or i32 %and307, 512
  %arrayidx309 = getelementptr i32, ptr %bf_s, i32 %add308
  %122 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx309, align 4
  %xor310 = xor i32 %add305, %123
  %and311 = and i32 %xor292, 255
  %add312 = or i32 %and311, 768
  %arrayidx313 = getelementptr i32, ptr %bf_s, i32 %add312
  %124 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx313, align 4
  %add314 = add i32 %xor310, %125
  %xor315 = xor i32 %xor294, %add314
  %126 = ptrtoint ptr %arrayidx316 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx316, align 4
  %xor317 = xor i32 %127, %xor292
  %shr321 = lshr i32 %xor315, 24
  %arrayidx323 = getelementptr i32, ptr %bf_s, i32 %shr321
  %128 = ptrtoint ptr %arrayidx323 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx323, align 4
  %shr324 = lshr i32 %xor315, 16
  %and325 = and i32 %shr324, 255
  %add326 = or i32 %and325, 256
  %arrayidx327 = getelementptr i32, ptr %bf_s, i32 %add326
  %130 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx327, align 4
  %add328 = add i32 %131, %129
  %shr329 = lshr i32 %xor315, 8
  %and330 = and i32 %shr329, 255
  %add331 = or i32 %and330, 512
  %arrayidx332 = getelementptr i32, ptr %bf_s, i32 %add331
  %132 = ptrtoint ptr %arrayidx332 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx332, align 4
  %xor333 = xor i32 %add328, %133
  %and334 = and i32 %xor315, 255
  %add335 = or i32 %and334, 768
  %arrayidx336 = getelementptr i32, ptr %bf_s, i32 %add335
  %134 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx336, align 4
  %add337 = add i32 %xor333, %135
  %xor338 = xor i32 %xor317, %add337
  %136 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx339, align 4
  %xor340 = xor i32 %137, %xor315
  %shr344 = lshr i32 %xor338, 24
  %arrayidx346 = getelementptr i32, ptr %bf_s, i32 %shr344
  %138 = ptrtoint ptr %arrayidx346 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx346, align 4
  %shr347 = lshr i32 %xor338, 16
  %and348 = and i32 %shr347, 255
  %add349 = or i32 %and348, 256
  %arrayidx350 = getelementptr i32, ptr %bf_s, i32 %add349
  %140 = ptrtoint ptr %arrayidx350 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx350, align 4
  %add351 = add i32 %141, %139
  %shr352 = lshr i32 %xor338, 8
  %and353 = and i32 %shr352, 255
  %add354 = or i32 %and353, 512
  %arrayidx355 = getelementptr i32, ptr %bf_s, i32 %add354
  %142 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx355, align 4
  %xor356 = xor i32 %add351, %143
  %and357 = and i32 %xor338, 255
  %add358 = or i32 %and357, 768
  %arrayidx359 = getelementptr i32, ptr %bf_s, i32 %add358
  %144 = ptrtoint ptr %arrayidx359 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx359, align 4
  %add360 = add i32 %xor356, %145
  %xor361 = xor i32 %xor340, %add360
  %146 = ptrtoint ptr %arrayidx362 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx362, align 4
  %xor363 = xor i32 %147, %xor338
  %shr367 = lshr i32 %xor361, 24
  %arrayidx369 = getelementptr i32, ptr %bf_s, i32 %shr367
  %148 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx369, align 4
  %shr370 = lshr i32 %xor361, 16
  %and371 = and i32 %shr370, 255
  %add372 = or i32 %and371, 256
  %arrayidx373 = getelementptr i32, ptr %bf_s, i32 %add372
  %150 = ptrtoint ptr %arrayidx373 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx373, align 4
  %add374 = add i32 %151, %149
  %shr375 = lshr i32 %xor361, 8
  %and376 = and i32 %shr375, 255
  %add377 = or i32 %and376, 512
  %arrayidx378 = getelementptr i32, ptr %bf_s, i32 %add377
  %152 = ptrtoint ptr %arrayidx378 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx378, align 4
  %xor379 = xor i32 %add374, %153
  %and380 = and i32 %xor361, 255
  %add381 = or i32 %and380, 768
  %arrayidx382 = getelementptr i32, ptr %bf_s, i32 %add381
  %154 = ptrtoint ptr %arrayidx382 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx382, align 4
  %add383 = add i32 %xor379, %155
  %xor384 = xor i32 %xor363, %add383
  %156 = ptrtoint ptr %arrayidx385 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx385, align 4
  %xor386 = xor i32 %157, %xor361
  %shr390 = lshr i32 %xor384, 24
  %arrayidx392 = getelementptr i32, ptr %bf_s, i32 %shr390
  %158 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx392, align 4
  %shr393 = lshr i32 %xor384, 16
  %and394 = and i32 %shr393, 255
  %add395 = or i32 %and394, 256
  %arrayidx396 = getelementptr i32, ptr %bf_s, i32 %add395
  %160 = ptrtoint ptr %arrayidx396 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx396, align 4
  %add397 = add i32 %161, %159
  %shr398 = lshr i32 %xor384, 8
  %and399 = and i32 %shr398, 255
  %add400 = or i32 %and399, 512
  %arrayidx401 = getelementptr i32, ptr %bf_s, i32 %add400
  %162 = ptrtoint ptr %arrayidx401 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx401, align 4
  %xor402 = xor i32 %add397, %163
  %and403 = and i32 %xor384, 255
  %add404 = or i32 %and403, 768
  %arrayidx405 = getelementptr i32, ptr %bf_s, i32 %add404
  %164 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx405, align 4
  %add406 = add i32 %xor402, %165
  %xor407 = xor i32 %xor386, %add406
  %166 = ptrtoint ptr %arrayidx408 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx408, align 4
  %xor409 = xor i32 %167, %xor384
  %shr413 = lshr i32 %xor407, 24
  %arrayidx415 = getelementptr i32, ptr %bf_s, i32 %shr413
  %168 = ptrtoint ptr %arrayidx415 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx415, align 4
  %shr416 = lshr i32 %xor407, 16
  %and417 = and i32 %shr416, 255
  %add418 = or i32 %and417, 256
  %arrayidx419 = getelementptr i32, ptr %bf_s, i32 %add418
  %170 = ptrtoint ptr %arrayidx419 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx419, align 4
  %add420 = add i32 %171, %169
  %shr421 = lshr i32 %xor407, 8
  %and422 = and i32 %shr421, 255
  %add423 = or i32 %and422, 512
  %arrayidx424 = getelementptr i32, ptr %bf_s, i32 %add423
  %172 = ptrtoint ptr %arrayidx424 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx424, align 4
  %xor425 = xor i32 %add420, %173
  %and426 = and i32 %xor407, 255
  %add427 = or i32 %and426, 768
  %arrayidx428 = getelementptr i32, ptr %bf_s, i32 %add427
  %174 = ptrtoint ptr %arrayidx428 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx428, align 4
  %add429 = add i32 %xor425, %175
  %xor430 = xor i32 %xor409, %add429
  %176 = ptrtoint ptr %arrayidx431 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx431, align 4
  %xor432 = xor i32 %177, %xor407
  %shr436 = lshr i32 %xor430, 24
  %arrayidx438 = getelementptr i32, ptr %bf_s, i32 %shr436
  %178 = ptrtoint ptr %arrayidx438 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx438, align 4
  %shr439 = lshr i32 %xor430, 16
  %and440 = and i32 %shr439, 255
  %add441 = or i32 %and440, 256
  %arrayidx442 = getelementptr i32, ptr %bf_s, i32 %add441
  %180 = ptrtoint ptr %arrayidx442 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx442, align 4
  %add443 = add i32 %181, %179
  %shr444 = lshr i32 %xor430, 8
  %and445 = and i32 %shr444, 255
  %add446 = or i32 %and445, 512
  %arrayidx447 = getelementptr i32, ptr %bf_s, i32 %add446
  %182 = ptrtoint ptr %arrayidx447 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx447, align 4
  %xor448 = xor i32 %add443, %183
  %and449 = and i32 %xor430, 255
  %add450 = or i32 %and449, 768
  %arrayidx451 = getelementptr i32, ptr %bf_s, i32 %add450
  %184 = ptrtoint ptr %arrayidx451 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx451, align 4
  %add452 = add i32 %xor448, %185
  %xor453 = xor i32 %xor432, %add452
  %186 = ptrtoint ptr %arrayidx454 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx454, align 4
  %xor455 = xor i32 %187, %xor430
  %shr459 = lshr i32 %xor453, 24
  %arrayidx461 = getelementptr i32, ptr %bf_s, i32 %shr459
  %188 = ptrtoint ptr %arrayidx461 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx461, align 4
  %shr462 = lshr i32 %xor453, 16
  %and463 = and i32 %shr462, 255
  %add464 = or i32 %and463, 256
  %arrayidx465 = getelementptr i32, ptr %bf_s, i32 %add464
  %190 = ptrtoint ptr %arrayidx465 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx465, align 4
  %add466 = add i32 %191, %189
  %shr467 = lshr i32 %xor453, 8
  %and468 = and i32 %shr467, 255
  %add469 = or i32 %and468, 512
  %arrayidx470 = getelementptr i32, ptr %bf_s, i32 %add469
  %192 = ptrtoint ptr %arrayidx470 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx470, align 4
  %xor471 = xor i32 %add466, %193
  %and472 = and i32 %xor453, 255
  %add473 = or i32 %and472, 768
  %arrayidx474 = getelementptr i32, ptr %bf_s, i32 %add473
  %194 = ptrtoint ptr %arrayidx474 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx474, align 4
  %add475 = add i32 %xor471, %195
  %xor476 = xor i32 %xor455, %add475
  %196 = ptrtoint ptr %arrayidx477 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx477, align 4
  %xor478 = xor i32 %197, %xor453
  %shr482 = lshr i32 %xor476, 24
  %arrayidx484 = getelementptr i32, ptr %bf_s, i32 %shr482
  %198 = ptrtoint ptr %arrayidx484 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx484, align 4
  %shr485 = lshr i32 %xor476, 16
  %and486 = and i32 %shr485, 255
  %add487 = or i32 %and486, 256
  %arrayidx488 = getelementptr i32, ptr %bf_s, i32 %add487
  %200 = ptrtoint ptr %arrayidx488 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx488, align 4
  %add489 = add i32 %201, %199
  %shr490 = lshr i32 %xor476, 8
  %and491 = and i32 %shr490, 255
  %add492 = or i32 %and491, 512
  %arrayidx493 = getelementptr i32, ptr %bf_s, i32 %add492
  %202 = ptrtoint ptr %arrayidx493 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx493, align 4
  %xor494 = xor i32 %add489, %203
  %and495 = and i32 %xor476, 255
  %add496 = or i32 %and495, 768
  %arrayidx497 = getelementptr i32, ptr %bf_s, i32 %add496
  %204 = ptrtoint ptr %arrayidx497 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx497, align 4
  %add498 = add i32 %xor494, %205
  %xor499 = xor i32 %xor478, %add498
  %206 = ptrtoint ptr %arrayidx500 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx500, align 4
  %xor501 = xor i32 %207, %xor476
  %shr505 = lshr i32 %xor499, 24
  %arrayidx507 = getelementptr i32, ptr %bf_s, i32 %shr505
  %208 = ptrtoint ptr %arrayidx507 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx507, align 4
  %shr508 = lshr i32 %xor499, 16
  %and509 = and i32 %shr508, 255
  %add510 = or i32 %and509, 256
  %arrayidx511 = getelementptr i32, ptr %bf_s, i32 %add510
  %210 = ptrtoint ptr %arrayidx511 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx511, align 4
  %add512 = add i32 %211, %209
  %shr513 = lshr i32 %xor499, 8
  %and514 = and i32 %shr513, 255
  %add515 = or i32 %and514, 512
  %arrayidx516 = getelementptr i32, ptr %bf_s, i32 %add515
  %212 = ptrtoint ptr %arrayidx516 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx516, align 4
  %xor517 = xor i32 %add512, %213
  %and518 = and i32 %xor499, 255
  %add519 = or i32 %and518, 768
  %arrayidx520 = getelementptr i32, ptr %bf_s, i32 %add519
  %214 = ptrtoint ptr %arrayidx520 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx520, align 4
  %add521 = add i32 %xor517, %215
  %xor522 = xor i32 %xor501, %add521
  %216 = ptrtoint ptr %bf_p to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %bf_p, align 4
  %xor524 = xor i32 %217, %xor499
  %shr527 = lshr i32 %xor524, 25
  %arrayidx529 = getelementptr [128 x i8], ptr @dsp_audio_seven2law, i32 0, i32 %shr527
  %218 = ptrtoint ptr %arrayidx529 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx529, align 1
  %220 = ptrtoint ptr %bf_data_out3 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %219, ptr %bf_data_out3, align 1
  %shr531 = lshr i32 %xor524, 18
  %and532 = and i32 %shr531, 127
  %arrayidx533 = getelementptr [128 x i8], ptr @dsp_audio_seven2law, i32 0, i32 %and532
  %221 = ptrtoint ptr %arrayidx533 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx533, align 1
  %223 = ptrtoint ptr %arrayidx534 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %222, ptr %arrayidx534, align 1
  %shr535 = lshr i32 %xor524, 11
  %and536 = and i32 %shr535, 127
  %arrayidx537 = getelementptr [128 x i8], ptr @dsp_audio_seven2law, i32 0, i32 %and536
  %224 = ptrtoint ptr %arrayidx537 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx537, align 1
  %226 = ptrtoint ptr %arrayidx538 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %arrayidx538, align 1
  %shr539 = lshr i32 %xor524, 4
  %and540 = and i32 %shr539, 127
  %arrayidx541 = getelementptr [128 x i8], ptr @dsp_audio_seven2law, i32 0, i32 %and540
  %227 = ptrtoint ptr %arrayidx541 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx541, align 1
  %229 = ptrtoint ptr %arrayidx542 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %228, ptr %arrayidx542, align 1
  %shl543 = shl i32 %xor524, 3
  %and544 = and i32 %shl543, 120
  %shr545 = lshr i32 %xor522, 29
  %or547 = or i32 %and544, %shr545
  %arrayidx548 = getelementptr [128 x i8], ptr @dsp_audio_seven2law, i32 0, i32 %or547
  %230 = ptrtoint ptr %arrayidx548 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx548, align 1
  %232 = ptrtoint ptr %arrayidx549 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %231, ptr %arrayidx549, align 1
  %shr550 = lshr i32 %xor522, 22
  %and551 = and i32 %shr550, 127
  %arrayidx552 = getelementptr [128 x i8], ptr @dsp_audio_seven2law, i32 0, i32 %and551
  %233 = ptrtoint ptr %arrayidx552 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx552, align 1
  %235 = ptrtoint ptr %arrayidx553 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %234, ptr %arrayidx553, align 1
  %shr554 = lshr i32 %xor522, 15
  %and555 = and i32 %shr554, 127
  %arrayidx556 = getelementptr [128 x i8], ptr @dsp_audio_seven2law, i32 0, i32 %and555
  %236 = ptrtoint ptr %arrayidx556 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %arrayidx556, align 1
  %238 = ptrtoint ptr %arrayidx557 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %237, ptr %arrayidx557, align 1
  %shr558 = lshr i32 %xor522, 8
  %and559 = and i32 %shr558, 127
  %arrayidx560 = getelementptr [128 x i8], ptr @dsp_audio_seven2law, i32 0, i32 %and559
  %239 = ptrtoint ptr %arrayidx560 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx560, align 1
  %241 = ptrtoint ptr %arrayidx561 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %240, ptr %arrayidx561, align 1
  %shr562 = lshr i32 %xor522, 1
  %and563 = and i32 %shr562, 127
  %arrayidx564 = getelementptr [128 x i8], ptr @dsp_audio_seven2law, i32 0, i32 %and563
  %242 = ptrtoint ptr %arrayidx564 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx564, align 1
  %244 = ptrtoint ptr %arrayidx565 to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %243, ptr %arrayidx565, align 1
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  %j.0.lcssa = phi i8 [ %conv, %entry.while.end_crit_edge ], [ %inc, %while.cond.backedge.while.end_crit_edge ]
  %k.0.lcssa = phi i8 [ %conv1, %entry.while.end_crit_edge ], [ %k.0.be, %while.cond.backedge.while.end_crit_edge ]
  %sync.0.lcssa = phi i16 [ %conv5, %entry.while.end_crit_edge ], [ %or, %while.cond.backedge.while.end_crit_edge ]
  %conv566 = zext i8 %j.0.lcssa to i32
  %245 = ptrtoint ptr %bf_decrypt_in_pos to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %conv566, ptr %bf_decrypt_in_pos, align 4
  %conv568 = zext i8 %k.0.lcssa to i32
  %246 = ptrtoint ptr %bf_decrypt_out_pos to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %conv568, ptr %bf_decrypt_out_pos, align 4
  %conv570 = zext i16 %sync.0.lcssa to i32
  %247 = ptrtoint ptr %bf_sync to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %conv570, ptr %bf_sync, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsp_bf_init(ptr noundef %dsp, ptr nocapture noundef readonly %key, i32 noundef %keylen) local_unnamed_addr #4 align 64 {
entry:
  %data = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #7
  %0 = getelementptr inbounds [2 x i32], ptr %data, i32 0, i32 1
  %bf_p = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42
  %bf_s = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 43
  %1 = add i32 %keylen, -57
  call void @__sanitizer_cov_trace_const_cmp4(i32 -53, i32 %1)
  %2 = icmp ult i32 %1, -53
  br i1 %2, label %entry.cleanup_crit_edge, label %while.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %arrayidx = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 46, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %arrayidx, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dsp_silence to i32))
  %4 = load i8, ptr @dsp_silence, align 1
  %arrayidx6 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 50, i32 0
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx6, align 1
  %arrayidx.1 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 46, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %arrayidx.1, align 1
  %7 = load i8, ptr @dsp_silence, align 1
  %arrayidx6.1 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 50, i32 1
  %8 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx6.1, align 1
  %arrayidx.2 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 46, i32 2
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %arrayidx.2, align 1
  %10 = load i8, ptr @dsp_silence, align 1
  %arrayidx6.2 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 50, i32 2
  %11 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx6.2, align 1
  %arrayidx.3 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 46, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %arrayidx.3, align 1
  %13 = load i8, ptr @dsp_silence, align 1
  %arrayidx6.3 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 50, i32 3
  %14 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx6.3, align 1
  %arrayidx.4 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 46, i32 4
  %15 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %arrayidx.4, align 1
  %16 = load i8, ptr @dsp_silence, align 1
  %arrayidx6.4 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 50, i32 4
  %17 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx6.4, align 1
  %arrayidx.5 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 46, i32 5
  %18 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %arrayidx.5, align 1
  %19 = load i8, ptr @dsp_silence, align 1
  %arrayidx6.5 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 50, i32 5
  %20 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx6.5, align 1
  %arrayidx.6 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 46, i32 6
  %21 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %arrayidx.6, align 1
  %22 = load i8, ptr @dsp_silence, align 1
  %arrayidx6.6 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 50, i32 6
  %23 = ptrtoint ptr %arrayidx6.6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx6.6, align 1
  %arrayidx.7 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 46, i32 7
  %24 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %arrayidx.7, align 1
  %25 = load i8, ptr @dsp_silence, align 1
  %arrayidx6.7 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 50, i32 7
  %26 = ptrtoint ptr %arrayidx6.7 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx6.7, align 1
  %arrayidx.8 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 46, i32 8
  %27 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %arrayidx.8, align 1
  %28 = load i8, ptr @dsp_silence, align 1
  %arrayidx6.8 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 50, i32 8
  %29 = ptrtoint ptr %arrayidx6.8 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx6.8, align 1
  %bf_crypt_pos = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 44
  %30 = ptrtoint ptr %bf_crypt_pos to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %bf_crypt_pos, align 4
  %bf_decrypt_in_pos = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 47
  %31 = ptrtoint ptr %bf_decrypt_in_pos to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %bf_decrypt_in_pos, align 4
  %bf_decrypt_out_pos = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 48
  %32 = ptrtoint ptr %bf_decrypt_out_pos to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %bf_decrypt_out_pos, align 4
  %bf_sync = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 51
  %33 = ptrtoint ptr %bf_sync to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 511, ptr %bf_sync, align 4
  %bf_enable = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 41
  %34 = ptrtoint ptr %bf_enable to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %bf_enable, align 4
  br label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond10.preheader.for.cond10.preheader_crit_edge, %while.body.preheader
  %indvars.iv = phi i32 [ 0, %while.body.preheader ], [ %indvars.iv.next, %for.cond10.preheader.for.cond10.preheader_crit_edge ]
  %i.1195 = phi i16 [ 0, %while.body.preheader ], [ %inc22, %for.cond10.preheader.for.cond10.preheader_crit_edge ]
  %arrayidx16 = getelementptr [1024 x i32], ptr @bf_sbox, i32 0, i32 %indvars.iv
  %35 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx16, align 4
  %arrayidx18 = getelementptr i32, ptr %bf_s, i32 %indvars.iv
  %37 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx18, align 4
  %38 = or i32 %indvars.iv, 1
  %arrayidx16.1 = getelementptr [1024 x i32], ptr @bf_sbox, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx16.1, align 4
  %arrayidx18.1 = getelementptr i32, ptr %bf_s, i32 %38
  %41 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx18.1, align 4
  %42 = or i32 %indvars.iv, 2
  %arrayidx16.2 = getelementptr [1024 x i32], ptr @bf_sbox, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx16.2, align 4
  %arrayidx18.2 = getelementptr i32, ptr %bf_s, i32 %42
  %45 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx18.2, align 4
  %46 = or i32 %indvars.iv, 3
  %arrayidx16.3 = getelementptr [1024 x i32], ptr @bf_sbox, i32 0, i32 %46
  %47 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx16.3, align 4
  %arrayidx18.3 = getelementptr i32, ptr %bf_s, i32 %46
  %49 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx18.3, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 4
  %inc22 = add nuw nsw i16 %i.1195, 1
  %cmp8 = icmp ult i16 %i.1195, 255
  br i1 %cmp8, label %for.cond10.preheader.for.cond10.preheader_crit_edge, label %for.body28.preheader

for.cond10.preheader.for.cond10.preheader_crit_edge: ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond10.preheader

for.body28.preheader:                             ; preds = %for.cond10.preheader
  %50 = call ptr @memcpy(ptr %bf_p, ptr @bf_pbox, i32 72)
  br label %for.body40

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %for.body28.preheader
  %indvars.iv209 = phi i32 [ 0, %for.body28.preheader ], [ %indvars.iv.next210, %for.body40.for.body40_crit_edge ]
  %j.1199 = phi i32 [ 0, %for.body28.preheader ], [ %rem67, %for.body40.for.body40_crit_edge ]
  %sext191 = shl i32 %j.1199, 16
  %idxprom41 = ashr exact i32 %sext191, 16
  %arrayidx42 = getelementptr i8, ptr %key, i32 %idxprom41
  %51 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %52 to i32
  %shl = shl nuw i32 %conv43, 24
  %add = add nsw i32 %idxprom41, 1
  %rem = urem i32 %add, %keylen
  %arrayidx45 = getelementptr i8, ptr %key, i32 %rem
  %53 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %54 to i32
  %shl47 = shl nuw nsw i32 %conv46, 16
  %or = or i32 %shl47, %shl
  %add49 = add nsw i32 %idxprom41, 2
  %rem50 = urem i32 %add49, %keylen
  %arrayidx51 = getelementptr i8, ptr %key, i32 %rem50
  %55 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %56 to i32
  %shl53 = shl nuw nsw i32 %conv52, 8
  %or54 = or i32 %or, %shl53
  %add56 = add nsw i32 %idxprom41, 3
  %rem57 = urem i32 %add56, %keylen
  %arrayidx58 = getelementptr i8, ptr %key, i32 %rem57
  %57 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %58 to i32
  %or60 = or i32 %or54, %conv59
  %arrayidx62 = getelementptr i32, ptr %bf_p, i32 %indvars.iv209
  %59 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx62, align 4
  %xor = xor i32 %or60, %60
  store i32 %xor, ptr %arrayidx62, align 4
  %add66 = add nsw i32 %idxprom41, 4
  %rem67 = urem i32 %add66, %keylen
  %indvars.iv.next210 = add nuw nsw i32 %indvars.iv209, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next210, 18
  br i1 %exitcond.not, label %for.end71, label %for.body40.for.body40_crit_edge

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body40

for.end71:                                        ; preds = %for.body40
  %61 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %data, align 4
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %0, align 4
  call fastcc void @encrypt_block(ptr noundef %bf_p, ptr noundef %bf_s, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %data, align 4
  %65 = ptrtoint ptr %bf_p to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %bf_p, align 4
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %0, align 4
  %arrayidx87 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 1
  %68 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx87, align 4
  call fastcc void @encrypt_block(ptr noundef %bf_p, ptr noundef %bf_s, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %data, align 4
  %arrayidx83.1 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 2
  %71 = ptrtoint ptr %arrayidx83.1 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx83.1, align 4
  %72 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %0, align 4
  %arrayidx87.1 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 3
  %74 = ptrtoint ptr %arrayidx87.1 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx87.1, align 4
  call fastcc void @encrypt_block(ptr noundef %bf_p, ptr noundef %bf_s, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %75 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %data, align 4
  %arrayidx83.2 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 4
  %77 = ptrtoint ptr %arrayidx83.2 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx83.2, align 4
  %78 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %0, align 4
  %arrayidx87.2 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 5
  %80 = ptrtoint ptr %arrayidx87.2 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx87.2, align 4
  call fastcc void @encrypt_block(ptr noundef %bf_p, ptr noundef %bf_s, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %81 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %data, align 4
  %arrayidx83.3 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 6
  %83 = ptrtoint ptr %arrayidx83.3 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %arrayidx83.3, align 4
  %84 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %0, align 4
  %arrayidx87.3 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 7
  %86 = ptrtoint ptr %arrayidx87.3 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %arrayidx87.3, align 4
  call fastcc void @encrypt_block(ptr noundef %bf_p, ptr noundef %bf_s, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %87 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %data, align 4
  %arrayidx83.4 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 8
  %89 = ptrtoint ptr %arrayidx83.4 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %arrayidx83.4, align 4
  %90 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %0, align 4
  %arrayidx87.4 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 9
  %92 = ptrtoint ptr %arrayidx87.4 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %arrayidx87.4, align 4
  call fastcc void @encrypt_block(ptr noundef %bf_p, ptr noundef %bf_s, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %93 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %data, align 4
  %arrayidx83.5 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 10
  %95 = ptrtoint ptr %arrayidx83.5 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %arrayidx83.5, align 4
  %96 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %0, align 4
  %arrayidx87.5 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 11
  %98 = ptrtoint ptr %arrayidx87.5 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %arrayidx87.5, align 4
  call fastcc void @encrypt_block(ptr noundef %bf_p, ptr noundef %bf_s, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %99 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %data, align 4
  %arrayidx83.6 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 12
  %101 = ptrtoint ptr %arrayidx83.6 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %arrayidx83.6, align 4
  %102 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %0, align 4
  %arrayidx87.6 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 13
  %104 = ptrtoint ptr %arrayidx87.6 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %arrayidx87.6, align 4
  call fastcc void @encrypt_block(ptr noundef %bf_p, ptr noundef %bf_s, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %105 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %data, align 4
  %arrayidx83.7 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 14
  %107 = ptrtoint ptr %arrayidx83.7 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %arrayidx83.7, align 4
  %108 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %0, align 4
  %arrayidx87.7 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 15
  %110 = ptrtoint ptr %arrayidx87.7 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %arrayidx87.7, align 4
  call fastcc void @encrypt_block(ptr noundef %bf_p, ptr noundef %bf_s, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %111 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %data, align 4
  %arrayidx83.8 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 16
  %113 = ptrtoint ptr %arrayidx83.8 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %arrayidx83.8, align 4
  %114 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %0, align 4
  %arrayidx87.8 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 42, i32 17
  %116 = ptrtoint ptr %arrayidx87.8 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %arrayidx87.8, align 4
  br label %for.body104

for.body104:                                      ; preds = %for.body104.for.body104_crit_edge, %for.end71
  %indvars.iv213 = phi i32 [ 0, %for.end71 ], [ %indvars.iv.next214, %for.body104.for.body104_crit_edge ]
  %sext190202 = phi i32 [ 0, %for.end71 ], [ %sext190, %for.body104.for.body104_crit_edge ]
  call fastcc void @encrypt_block(ptr noundef %bf_p, ptr noundef %bf_s, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %117 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %data, align 4
  %arrayidx109 = getelementptr i32, ptr %bf_s, i32 %indvars.iv213
  %119 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %arrayidx109, align 4
  %120 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %0, align 4
  %add112 = or i32 %indvars.iv213, 1
  %arrayidx113 = getelementptr i32, ptr %bf_s, i32 %add112
  %122 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %arrayidx113, align 4
  %indvars.iv.next214 = add nuw nsw i32 %indvars.iv213, 2
  %sext190 = add nuw nsw i32 %sext190202, 131072
  %cmp102 = icmp ult i32 %sext190202, 16646144
  br i1 %cmp102, label %for.body104.for.body104_crit_edge, label %for.body104.for.body104.1_crit_edge

for.body104.for.body104.1_crit_edge:              ; preds = %for.body104
  br label %for.body104.1

for.body104.for.body104_crit_edge:                ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body104

for.body104.1:                                    ; preds = %for.body104.1.for.body104.1_crit_edge, %for.body104.for.body104.1_crit_edge
  %indvars.iv213.1 = phi i32 [ %indvars.iv.next214.1, %for.body104.1.for.body104.1_crit_edge ], [ 256, %for.body104.for.body104.1_crit_edge ]
  %sext190202.1 = phi i32 [ %sext190.1, %for.body104.1.for.body104.1_crit_edge ], [ 0, %for.body104.for.body104.1_crit_edge ]
  call fastcc void @encrypt_block(ptr noundef %bf_p, ptr noundef %bf_s, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %123 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %data, align 4
  %arrayidx109.1 = getelementptr i32, ptr %bf_s, i32 %indvars.iv213.1
  %125 = ptrtoint ptr %arrayidx109.1 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %arrayidx109.1, align 4
  %126 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %0, align 4
  %add112.1 = or i32 %indvars.iv213.1, 1
  %arrayidx113.1 = getelementptr i32, ptr %bf_s, i32 %add112.1
  %128 = ptrtoint ptr %arrayidx113.1 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %arrayidx113.1, align 4
  %indvars.iv.next214.1 = add nuw nsw i32 %indvars.iv213.1, 2
  %sext190.1 = add nuw nsw i32 %sext190202.1, 131072
  %cmp102.1 = icmp ult i32 %sext190202.1, 16646144
  br i1 %cmp102.1, label %for.body104.1.for.body104.1_crit_edge, label %for.body104.1.for.body104.2_crit_edge

for.body104.1.for.body104.2_crit_edge:            ; preds = %for.body104.1
  br label %for.body104.2

for.body104.1.for.body104.1_crit_edge:            ; preds = %for.body104.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body104.1

for.body104.2:                                    ; preds = %for.body104.2.for.body104.2_crit_edge, %for.body104.1.for.body104.2_crit_edge
  %indvars.iv213.2 = phi i32 [ %indvars.iv.next214.2, %for.body104.2.for.body104.2_crit_edge ], [ 512, %for.body104.1.for.body104.2_crit_edge ]
  %sext190202.2 = phi i32 [ %sext190.2, %for.body104.2.for.body104.2_crit_edge ], [ 0, %for.body104.1.for.body104.2_crit_edge ]
  call fastcc void @encrypt_block(ptr noundef %bf_p, ptr noundef %bf_s, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %129 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %data, align 4
  %arrayidx109.2 = getelementptr i32, ptr %bf_s, i32 %indvars.iv213.2
  %131 = ptrtoint ptr %arrayidx109.2 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %arrayidx109.2, align 4
  %132 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %0, align 4
  %add112.2 = or i32 %indvars.iv213.2, 1
  %arrayidx113.2 = getelementptr i32, ptr %bf_s, i32 %add112.2
  %134 = ptrtoint ptr %arrayidx113.2 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %arrayidx113.2, align 4
  %indvars.iv.next214.2 = add nuw nsw i32 %indvars.iv213.2, 2
  %sext190.2 = add nuw nsw i32 %sext190202.2, 131072
  %cmp102.2 = icmp ult i32 %sext190202.2, 16646144
  br i1 %cmp102.2, label %for.body104.2.for.body104.2_crit_edge, label %for.body104.2.for.body104.3_crit_edge

for.body104.2.for.body104.3_crit_edge:            ; preds = %for.body104.2
  br label %for.body104.3

for.body104.2.for.body104.2_crit_edge:            ; preds = %for.body104.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body104.2

for.body104.3:                                    ; preds = %for.body104.3.for.body104.3_crit_edge, %for.body104.2.for.body104.3_crit_edge
  %indvars.iv213.3 = phi i32 [ %indvars.iv.next214.3, %for.body104.3.for.body104.3_crit_edge ], [ 768, %for.body104.2.for.body104.3_crit_edge ]
  %sext190202.3 = phi i32 [ %sext190.3, %for.body104.3.for.body104.3_crit_edge ], [ 0, %for.body104.2.for.body104.3_crit_edge ]
  call fastcc void @encrypt_block(ptr noundef %bf_p, ptr noundef %bf_s, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %135 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %data, align 4
  %arrayidx109.3 = getelementptr i32, ptr %bf_s, i32 %indvars.iv213.3
  %137 = ptrtoint ptr %arrayidx109.3 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %arrayidx109.3, align 4
  %138 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %0, align 4
  %add112.3 = or i32 %indvars.iv213.3, 1
  %arrayidx113.3 = getelementptr i32, ptr %bf_s, i32 %add112.3
  %140 = ptrtoint ptr %arrayidx113.3 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %arrayidx113.3, align 4
  %indvars.iv.next214.3 = add nuw nsw i32 %indvars.iv213.3, 2
  %sext190.3 = add nuw nsw i32 %sext190202.3, 131072
  %cmp102.3 = icmp ult i32 %sext190202.3, 16646144
  br i1 %cmp102.3, label %for.body104.3.for.body104.3_crit_edge, label %for.body104.3.cleanup_crit_edge

for.body104.3.cleanup_crit_edge:                  ; preds = %for.body104.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body104.3.for.body104.3_crit_edge:            ; preds = %for.body104.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body104.3

cleanup:                                          ; preds = %for.body104.3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %for.body104.3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @encrypt_block(ptr nocapture noundef readonly %P, ptr noundef readonly %S, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src, align 4
  %arrayidx1 = getelementptr i32, ptr %src, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %4 = ptrtoint ptr %P to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %P, align 4
  %xor = xor i32 %5, %1
  %shr = lshr i32 %xor, 24
  %arrayidx3 = getelementptr i32, ptr %S, i32 %shr
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %shr4 = lshr i32 %xor, 16
  %and5 = and i32 %shr4, 255
  %add = or i32 %and5, 256
  %arrayidx6 = getelementptr i32, ptr %S, i32 %add
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %add7 = add i32 %9, %7
  %shr8 = lshr i32 %xor, 8
  %and9 = and i32 %shr8, 255
  %add10 = or i32 %and9, 512
  %arrayidx11 = getelementptr i32, ptr %S, i32 %add10
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11, align 4
  %xor12 = xor i32 %add7, %11
  %and13 = and i32 %xor, 255
  %add14 = or i32 %and13, 768
  %arrayidx15 = getelementptr i32, ptr %S, i32 %add14
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx15, align 4
  %add16 = add i32 %xor12, %13
  %xor17 = xor i32 %add16, %3
  %arrayidx19 = getelementptr i32, ptr %P, i32 1
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx19, align 4
  %xor20 = xor i32 %xor17, %15
  %shr21 = lshr i32 %xor20, 24
  %arrayidx23 = getelementptr i32, ptr %S, i32 %shr21
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx23, align 4
  %shr24 = lshr i32 %xor20, 16
  %and25 = and i32 %shr24, 255
  %add26 = or i32 %and25, 256
  %arrayidx27 = getelementptr i32, ptr %S, i32 %add26
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %19, %17
  %shr29 = lshr i32 %xor20, 8
  %and30 = and i32 %shr29, 255
  %add31 = or i32 %and30, 512
  %arrayidx32 = getelementptr i32, ptr %S, i32 %add31
  %20 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx32, align 4
  %xor33 = xor i32 %add28, %21
  %and34 = and i32 %xor20, 255
  %add35 = or i32 %and34, 768
  %arrayidx36 = getelementptr i32, ptr %S, i32 %add35
  %22 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx36, align 4
  %add37 = add i32 %xor33, %23
  %xor38 = xor i32 %add37, %xor
  %arrayidx42 = getelementptr i32, ptr %P, i32 2
  %24 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx42, align 4
  %xor43 = xor i32 %xor38, %25
  %shr44 = lshr i32 %xor43, 24
  %arrayidx46 = getelementptr i32, ptr %S, i32 %shr44
  %26 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx46, align 4
  %shr47 = lshr i32 %xor43, 16
  %and48 = and i32 %shr47, 255
  %add49 = or i32 %and48, 256
  %arrayidx50 = getelementptr i32, ptr %S, i32 %add49
  %28 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx50, align 4
  %add51 = add i32 %29, %27
  %shr52 = lshr i32 %xor43, 8
  %and53 = and i32 %shr52, 255
  %add54 = or i32 %and53, 512
  %arrayidx55 = getelementptr i32, ptr %S, i32 %add54
  %30 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx55, align 4
  %xor56 = xor i32 %add51, %31
  %and57 = and i32 %xor43, 255
  %add58 = or i32 %and57, 768
  %arrayidx59 = getelementptr i32, ptr %S, i32 %add58
  %32 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx59, align 4
  %add60 = add i32 %xor56, %33
  %xor61 = xor i32 %add60, %xor20
  %arrayidx65 = getelementptr i32, ptr %P, i32 3
  %34 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx65, align 4
  %xor66 = xor i32 %xor61, %35
  %shr67 = lshr i32 %xor66, 24
  %arrayidx69 = getelementptr i32, ptr %S, i32 %shr67
  %36 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx69, align 4
  %shr70 = lshr i32 %xor66, 16
  %and71 = and i32 %shr70, 255
  %add72 = or i32 %and71, 256
  %arrayidx73 = getelementptr i32, ptr %S, i32 %add72
  %38 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx73, align 4
  %add74 = add i32 %39, %37
  %shr75 = lshr i32 %xor66, 8
  %and76 = and i32 %shr75, 255
  %add77 = or i32 %and76, 512
  %arrayidx78 = getelementptr i32, ptr %S, i32 %add77
  %40 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx78, align 4
  %xor79 = xor i32 %add74, %41
  %and80 = and i32 %xor66, 255
  %add81 = or i32 %and80, 768
  %arrayidx82 = getelementptr i32, ptr %S, i32 %add81
  %42 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx82, align 4
  %add83 = add i32 %xor79, %43
  %xor84 = xor i32 %add83, %xor43
  %arrayidx88 = getelementptr i32, ptr %P, i32 4
  %44 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx88, align 4
  %xor89 = xor i32 %xor84, %45
  %shr90 = lshr i32 %xor89, 24
  %arrayidx92 = getelementptr i32, ptr %S, i32 %shr90
  %46 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx92, align 4
  %shr93 = lshr i32 %xor89, 16
  %and94 = and i32 %shr93, 255
  %add95 = or i32 %and94, 256
  %arrayidx96 = getelementptr i32, ptr %S, i32 %add95
  %48 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx96, align 4
  %add97 = add i32 %49, %47
  %shr98 = lshr i32 %xor89, 8
  %and99 = and i32 %shr98, 255
  %add100 = or i32 %and99, 512
  %arrayidx101 = getelementptr i32, ptr %S, i32 %add100
  %50 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx101, align 4
  %xor102 = xor i32 %add97, %51
  %and103 = and i32 %xor89, 255
  %add104 = or i32 %and103, 768
  %arrayidx105 = getelementptr i32, ptr %S, i32 %add104
  %52 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx105, align 4
  %add106 = add i32 %xor102, %53
  %xor107 = xor i32 %add106, %xor66
  %arrayidx111 = getelementptr i32, ptr %P, i32 5
  %54 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx111, align 4
  %xor112 = xor i32 %xor107, %55
  %shr113 = lshr i32 %xor112, 24
  %arrayidx115 = getelementptr i32, ptr %S, i32 %shr113
  %56 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx115, align 4
  %shr116 = lshr i32 %xor112, 16
  %and117 = and i32 %shr116, 255
  %add118 = or i32 %and117, 256
  %arrayidx119 = getelementptr i32, ptr %S, i32 %add118
  %58 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx119, align 4
  %add120 = add i32 %59, %57
  %shr121 = lshr i32 %xor112, 8
  %and122 = and i32 %shr121, 255
  %add123 = or i32 %and122, 512
  %arrayidx124 = getelementptr i32, ptr %S, i32 %add123
  %60 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx124, align 4
  %xor125 = xor i32 %add120, %61
  %and126 = and i32 %xor112, 255
  %add127 = or i32 %and126, 768
  %arrayidx128 = getelementptr i32, ptr %S, i32 %add127
  %62 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx128, align 4
  %add129 = add i32 %xor125, %63
  %xor130 = xor i32 %add129, %xor89
  %arrayidx134 = getelementptr i32, ptr %P, i32 6
  %64 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx134, align 4
  %xor135 = xor i32 %xor130, %65
  %shr136 = lshr i32 %xor135, 24
  %arrayidx138 = getelementptr i32, ptr %S, i32 %shr136
  %66 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx138, align 4
  %shr139 = lshr i32 %xor135, 16
  %and140 = and i32 %shr139, 255
  %add141 = or i32 %and140, 256
  %arrayidx142 = getelementptr i32, ptr %S, i32 %add141
  %68 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx142, align 4
  %add143 = add i32 %69, %67
  %shr144 = lshr i32 %xor135, 8
  %and145 = and i32 %shr144, 255
  %add146 = or i32 %and145, 512
  %arrayidx147 = getelementptr i32, ptr %S, i32 %add146
  %70 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx147, align 4
  %xor148 = xor i32 %add143, %71
  %and149 = and i32 %xor135, 255
  %add150 = or i32 %and149, 768
  %arrayidx151 = getelementptr i32, ptr %S, i32 %add150
  %72 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx151, align 4
  %add152 = add i32 %xor148, %73
  %xor153 = xor i32 %add152, %xor112
  %arrayidx157 = getelementptr i32, ptr %P, i32 7
  %74 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx157, align 4
  %xor158 = xor i32 %xor153, %75
  %shr159 = lshr i32 %xor158, 24
  %arrayidx161 = getelementptr i32, ptr %S, i32 %shr159
  %76 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx161, align 4
  %shr162 = lshr i32 %xor158, 16
  %and163 = and i32 %shr162, 255
  %add164 = or i32 %and163, 256
  %arrayidx165 = getelementptr i32, ptr %S, i32 %add164
  %78 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx165, align 4
  %add166 = add i32 %79, %77
  %shr167 = lshr i32 %xor158, 8
  %and168 = and i32 %shr167, 255
  %add169 = or i32 %and168, 512
  %arrayidx170 = getelementptr i32, ptr %S, i32 %add169
  %80 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx170, align 4
  %xor171 = xor i32 %add166, %81
  %and172 = and i32 %xor158, 255
  %add173 = or i32 %and172, 768
  %arrayidx174 = getelementptr i32, ptr %S, i32 %add173
  %82 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx174, align 4
  %add175 = add i32 %xor171, %83
  %xor176 = xor i32 %add175, %xor135
  %arrayidx180 = getelementptr i32, ptr %P, i32 8
  %84 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx180, align 4
  %xor181 = xor i32 %xor176, %85
  %shr182 = lshr i32 %xor181, 24
  %arrayidx184 = getelementptr i32, ptr %S, i32 %shr182
  %86 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx184, align 4
  %shr185 = lshr i32 %xor181, 16
  %and186 = and i32 %shr185, 255
  %add187 = or i32 %and186, 256
  %arrayidx188 = getelementptr i32, ptr %S, i32 %add187
  %88 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx188, align 4
  %add189 = add i32 %89, %87
  %shr190 = lshr i32 %xor181, 8
  %and191 = and i32 %shr190, 255
  %add192 = or i32 %and191, 512
  %arrayidx193 = getelementptr i32, ptr %S, i32 %add192
  %90 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx193, align 4
  %xor194 = xor i32 %add189, %91
  %and195 = and i32 %xor181, 255
  %add196 = or i32 %and195, 768
  %arrayidx197 = getelementptr i32, ptr %S, i32 %add196
  %92 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx197, align 4
  %add198 = add i32 %xor194, %93
  %xor199 = xor i32 %add198, %xor158
  %arrayidx203 = getelementptr i32, ptr %P, i32 9
  %94 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx203, align 4
  %xor204 = xor i32 %xor199, %95
  %shr205 = lshr i32 %xor204, 24
  %arrayidx207 = getelementptr i32, ptr %S, i32 %shr205
  %96 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx207, align 4
  %shr208 = lshr i32 %xor204, 16
  %and209 = and i32 %shr208, 255
  %add210 = or i32 %and209, 256
  %arrayidx211 = getelementptr i32, ptr %S, i32 %add210
  %98 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx211, align 4
  %add212 = add i32 %99, %97
  %shr213 = lshr i32 %xor204, 8
  %and214 = and i32 %shr213, 255
  %add215 = or i32 %and214, 512
  %arrayidx216 = getelementptr i32, ptr %S, i32 %add215
  %100 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx216, align 4
  %xor217 = xor i32 %add212, %101
  %and218 = and i32 %xor204, 255
  %add219 = or i32 %and218, 768
  %arrayidx220 = getelementptr i32, ptr %S, i32 %add219
  %102 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx220, align 4
  %add221 = add i32 %xor217, %103
  %xor222 = xor i32 %add221, %xor181
  %arrayidx226 = getelementptr i32, ptr %P, i32 10
  %104 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx226, align 4
  %xor227 = xor i32 %xor222, %105
  %shr228 = lshr i32 %xor227, 24
  %arrayidx230 = getelementptr i32, ptr %S, i32 %shr228
  %106 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx230, align 4
  %shr231 = lshr i32 %xor227, 16
  %and232 = and i32 %shr231, 255
  %add233 = or i32 %and232, 256
  %arrayidx234 = getelementptr i32, ptr %S, i32 %add233
  %108 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx234, align 4
  %add235 = add i32 %109, %107
  %shr236 = lshr i32 %xor227, 8
  %and237 = and i32 %shr236, 255
  %add238 = or i32 %and237, 512
  %arrayidx239 = getelementptr i32, ptr %S, i32 %add238
  %110 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx239, align 4
  %xor240 = xor i32 %add235, %111
  %and241 = and i32 %xor227, 255
  %add242 = or i32 %and241, 768
  %arrayidx243 = getelementptr i32, ptr %S, i32 %add242
  %112 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx243, align 4
  %add244 = add i32 %xor240, %113
  %xor245 = xor i32 %add244, %xor204
  %arrayidx249 = getelementptr i32, ptr %P, i32 11
  %114 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx249, align 4
  %xor250 = xor i32 %xor245, %115
  %shr251 = lshr i32 %xor250, 24
  %arrayidx253 = getelementptr i32, ptr %S, i32 %shr251
  %116 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx253, align 4
  %shr254 = lshr i32 %xor250, 16
  %and255 = and i32 %shr254, 255
  %add256 = or i32 %and255, 256
  %arrayidx257 = getelementptr i32, ptr %S, i32 %add256
  %118 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx257, align 4
  %add258 = add i32 %119, %117
  %shr259 = lshr i32 %xor250, 8
  %and260 = and i32 %shr259, 255
  %add261 = or i32 %and260, 512
  %arrayidx262 = getelementptr i32, ptr %S, i32 %add261
  %120 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx262, align 4
  %xor263 = xor i32 %add258, %121
  %and264 = and i32 %xor250, 255
  %add265 = or i32 %and264, 768
  %arrayidx266 = getelementptr i32, ptr %S, i32 %add265
  %122 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx266, align 4
  %add267 = add i32 %xor263, %123
  %xor268 = xor i32 %add267, %xor227
  %arrayidx272 = getelementptr i32, ptr %P, i32 12
  %124 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx272, align 4
  %xor273 = xor i32 %xor268, %125
  %shr274 = lshr i32 %xor273, 24
  %arrayidx276 = getelementptr i32, ptr %S, i32 %shr274
  %126 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx276, align 4
  %shr277 = lshr i32 %xor273, 16
  %and278 = and i32 %shr277, 255
  %add279 = or i32 %and278, 256
  %arrayidx280 = getelementptr i32, ptr %S, i32 %add279
  %128 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx280, align 4
  %add281 = add i32 %129, %127
  %shr282 = lshr i32 %xor273, 8
  %and283 = and i32 %shr282, 255
  %add284 = or i32 %and283, 512
  %arrayidx285 = getelementptr i32, ptr %S, i32 %add284
  %130 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx285, align 4
  %xor286 = xor i32 %add281, %131
  %and287 = and i32 %xor273, 255
  %add288 = or i32 %and287, 768
  %arrayidx289 = getelementptr i32, ptr %S, i32 %add288
  %132 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx289, align 4
  %add290 = add i32 %xor286, %133
  %xor291 = xor i32 %add290, %xor250
  %arrayidx295 = getelementptr i32, ptr %P, i32 13
  %134 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx295, align 4
  %xor296 = xor i32 %xor291, %135
  %shr297 = lshr i32 %xor296, 24
  %arrayidx299 = getelementptr i32, ptr %S, i32 %shr297
  %136 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx299, align 4
  %shr300 = lshr i32 %xor296, 16
  %and301 = and i32 %shr300, 255
  %add302 = or i32 %and301, 256
  %arrayidx303 = getelementptr i32, ptr %S, i32 %add302
  %138 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx303, align 4
  %add304 = add i32 %139, %137
  %shr305 = lshr i32 %xor296, 8
  %and306 = and i32 %shr305, 255
  %add307 = or i32 %and306, 512
  %arrayidx308 = getelementptr i32, ptr %S, i32 %add307
  %140 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx308, align 4
  %xor309 = xor i32 %add304, %141
  %and310 = and i32 %xor296, 255
  %add311 = or i32 %and310, 768
  %arrayidx312 = getelementptr i32, ptr %S, i32 %add311
  %142 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx312, align 4
  %add313 = add i32 %xor309, %143
  %xor314 = xor i32 %add313, %xor273
  %arrayidx318 = getelementptr i32, ptr %P, i32 14
  %144 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx318, align 4
  %xor319 = xor i32 %xor314, %145
  %shr320 = lshr i32 %xor319, 24
  %arrayidx322 = getelementptr i32, ptr %S, i32 %shr320
  %146 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx322, align 4
  %shr323 = lshr i32 %xor319, 16
  %and324 = and i32 %shr323, 255
  %add325 = or i32 %and324, 256
  %arrayidx326 = getelementptr i32, ptr %S, i32 %add325
  %148 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx326, align 4
  %add327 = add i32 %149, %147
  %shr328 = lshr i32 %xor319, 8
  %and329 = and i32 %shr328, 255
  %add330 = or i32 %and329, 512
  %arrayidx331 = getelementptr i32, ptr %S, i32 %add330
  %150 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx331, align 4
  %xor332 = xor i32 %add327, %151
  %and333 = and i32 %xor319, 255
  %add334 = or i32 %and333, 768
  %arrayidx335 = getelementptr i32, ptr %S, i32 %add334
  %152 = ptrtoint ptr %arrayidx335 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx335, align 4
  %add336 = add i32 %xor332, %153
  %xor337 = xor i32 %add336, %xor296
  %arrayidx341 = getelementptr i32, ptr %P, i32 15
  %154 = ptrtoint ptr %arrayidx341 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx341, align 4
  %xor342 = xor i32 %xor337, %155
  %shr343 = lshr i32 %xor342, 24
  %arrayidx345 = getelementptr i32, ptr %S, i32 %shr343
  %156 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx345, align 4
  %shr346 = lshr i32 %xor342, 16
  %and347 = and i32 %shr346, 255
  %add348 = or i32 %and347, 256
  %arrayidx349 = getelementptr i32, ptr %S, i32 %add348
  %158 = ptrtoint ptr %arrayidx349 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx349, align 4
  %add350 = add i32 %159, %157
  %shr351 = lshr i32 %xor342, 8
  %and352 = and i32 %shr351, 255
  %add353 = or i32 %and352, 512
  %arrayidx354 = getelementptr i32, ptr %S, i32 %add353
  %160 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx354, align 4
  %xor355 = xor i32 %add350, %161
  %and356 = and i32 %xor342, 255
  %add357 = or i32 %and356, 768
  %arrayidx358 = getelementptr i32, ptr %S, i32 %add357
  %162 = ptrtoint ptr %arrayidx358 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx358, align 4
  %add359 = add i32 %xor355, %163
  %xor360 = xor i32 %add359, %xor319
  %arrayidx363 = getelementptr i32, ptr %P, i32 16
  %164 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx363, align 4
  %xor364 = xor i32 %xor360, %165
  %arrayidx365 = getelementptr i32, ptr %P, i32 17
  %166 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx365, align 4
  %xor366 = xor i32 %167, %xor342
  %168 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %xor366, ptr %dst, align 4
  %arrayidx368 = getelementptr i32, ptr %dst, i32 1
  %169 = ptrtoint ptr %arrayidx368 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %xor364, ptr %arrayidx368, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dsp_bf_cleanup(ptr nocapture noundef writeonly %dsp) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bf_enable = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 41
  %0 = ptrtoint ptr %bf_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bf_enable, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/isdn/mISDN/dsp_blowfish.c", i32 513, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dsp_bf_decrypt._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dsp_bf_decrypt._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @bf_sbox, !7, !"bf_sbox", i1 false, i1 false}
!7 = !{!"../drivers/isdn/mISDN/dsp_blowfish.c", i32 89, i32 18}
!8 = !{ptr @bf_pbox, !9, !"bf_pbox", i1 false, i1 false}
!9 = !{!"../drivers/isdn/mISDN/dsp_blowfish.c", i32 81, i32 18}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
