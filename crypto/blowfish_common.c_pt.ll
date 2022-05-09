; ModuleID = '/llk/IR_all_yes/crypto/blowfish_common.c_pt.bc'
source_filename = "../crypto/blowfish_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+blowfish_setkey\22, \22a\22\09"
module asm "\09.weak\09__crc_blowfish_setkey\09\09\09\09"
module asm "\09.long\09__crc_blowfish_setkey\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blowfish_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22blowfish_setkey\22\09\09\09\09\09"
module asm "__kstrtabns_blowfish_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.bf_ctx = type { [18 x i32], [1024 x i32] }

@bf_sbox = internal constant { [1024 x i32], [1024 x i8] } { [1024 x i32] [i32 -785314906, i32 -1730169428, i32 805139163, i32 -803545161, i32 -1193168915, i32 1780907670, i32 -1166241723, i32 -248741991, i32 614570311, i32 -1282315017, i32 134345442, i32 -2054226922, i32 1667834072, i32 1901547113, i32 -1537671517, i32 -191677058, i32 227898511, i32 1921955416, i32 1904987480, i32 -2112533778, i32 2069144605, i32 -1034266187, i32 -1674521287, i32 720527379, i32 -976113629, i32 677414384, i32 -901678824, i32 -1193592593, i32 -1904616272, i32 1614419982, i32 1822297739, i32 -1340175810, i32 -686458943, i32 -1120842969, i32 2024746970, i32 1432378464, i32 -430627341, i32 -1437226092, i32 1464375394, i32 1676153920, i32 1439316330, i32 715854006, i32 -1261675468, i32 289532110, i32 -1588296017, i32 2087905683, i32 -1276242927, i32 1668267050, i32 732546397, i32 1947742710, i32 -832815594, i32 -1685613794, i32 -1344882125, i32 1814351708, i32 2050118529, i32 680887927, i32 999245976, i32 1800124847, i32 -994056165, i32 1713906067, i32 1641548236, i32 -81679983, i32 1216130144, i32 1575780402, i32 -276538019, i32 -377129551, i32 -601480446, i32 -345695352, i32 596196993, i32 -745100091, i32 258830323, i32 -2081144263, i32 772490370, i32 -1534844924, i32 1774776394, i32 -1642095778, i32 566650946, i32 -152474470, i32 1728879713, i32 -1412200208, i32 1783734482, i32 -665571480, i32 -1777359064, i32 -1420741725, i32 1861159788, i32 326777828, i32 -1170476976, i32 2130389656, i32 -1578015459, i32 967770486, i32 1724537150, i32 -2109534584, i32 -1930525159, i32 1164943284, i32 2105845187, i32 998989502, i32 -529566248, i32 -2050940813, i32 1075463327, i32 1455516326, i32 1322494562, i32 910128902, i32 469688178, i32 1117454909, i32 936433444, i32 -804646328, i32 -619713837, i32 1240580251, i32 122909385, i32 -2137449605, i32 634681816, i32 -152510729, i32 -469872614, i32 -1233564613, i32 -1754472259, i32 79693498, i32 -1045868618, i32 1084186820, i32 1583128258, i32 426386531, i32 1761308591, i32 1047286709, i32 322548459, i32 995290223, i32 1845252383, i32 -1691314900, i32 -863943356, i32 -1352745719, i32 -1092366332, i32 -567063811, i32 1712269319, i32 422464435, i32 -1060394921, i32 1170764815, i32 -771006663, i32 -1177289765, i32 1434042557, i32 442511882, i32 -694091578, i32 1076654713, i32 1738483198, i32 -81812532, i32 -1901729288, i32 -617471240, i32 1014306527, i32 -43947243, i32 793779912, i32 -1392160085, i32 842905082, i32 -48003232, i32 1395751752, i32 1040244610, i32 -1638115397, i32 -898659168, i32 445077038, i32 -552113701, i32 -717051658, i32 679411651, i32 -1402522938, i32 -1940957837, i32 1767581616, i32 -1144366904, i32 -503340195, i32 -1192226400, i32 284835224, i32 -48135240, i32 1258075500, i32 768725851, i32 -1705778055, i32 -1225243291, i32 -762426948, i32 1274779536, i32 -505548070, i32 -1530167757, i32 1660621633, i32 -823867672, i32 -283063590, i32 913787905, i32 -797008130, i32 737222580, i32 -1780753843, i32 -1366257256, i32 -357724559, i32 1804850592, i32 -795946544, i32 -1345903136, i32 -1908647121, i32 -1904896841, i32 -1879645445, i32 -233690268, i32 -2004305902, i32 -1878134756, i32 1336762016, i32 1754252060, i32 -774901359, i32 -1280786003, i32 791618072, i32 -1106372745, i32 -361419266, i32 -1962795103, i32 -442446833, i32 -1250986776, i32 413987798, i32 -829824359, i32 -1264037920, i32 -49028937, i32 2093235073, i32 -760370983, i32 375366246, i32 -2137688315, i32 -1815317740, i32 555357303, i32 -424861595, i32 2008414854, i32 -950779147, i32 -73583153, i32 -338841844, i32 2067696032, i32 -700376109, i32 -1373733303, i32 2428461, i32 544322398, i32 577241275, i32 1471733935, i32 610547355, i32 -267798242, i32 1432588573, i32 1507829418, i32 2025931657, i32 -648391809, i32 545086370, i32 48609733, i32 -2094660746, i32 1653985193, i32 298326376, i32 1316178497, i32 -1287180854, i32 2064951626, i32 458293330, i32 -1705826027, i32 -703637697, i32 -1130641692, i32 727753846, i32 -2115603456, i32 146436021, i32 1461446943, i32 -224990101, i32 705550613, i32 -1235000031, i32 -407242314, i32 -13368018, i32 -981117340, i32 1404054877, i32 -1449160799, i32 146425753, i32 1854211946, i32 1266315497, i32 -1246549692, i32 -613086930, i32 -1004984797, i32 -1385257296, i32 1235738493, i32 -1662099272, i32 -1880247706, i32 -324367247, i32 1771706367, i32 1449415276, i32 -1028546847, i32 422970021, i32 1963543593, i32 -1604775104, i32 -468174274, i32 1062508698, i32 1531092325, i32 1804592342, i32 -1711849514, i32 -1580033017, i32 -269995787, i32 1294809318, i32 -265986623, i32 1289560198, i32 -2072974554, i32 1669523910, i32 35572830, i32 157838143, i32 1052438473, i32 1016535060, i32 1802137761, i32 1753167236, i32 1386275462, i32 -1214491899, i32 -1437595849, i32 1040679964, i32 2145300060, i32 -1904392980, i32 1461121720, i32 -1338320329, i32 -263189491, i32 -266592508, i32 33600511, i32 -1374882534, i32 1018524850, i32 629373528, i32 -603381315, i32 -779021319, i32 2091462646, i32 -1808644237, i32 586499841, i32 988145025, i32 935516892, i32 -927631820, i32 -1695294041, i32 -1455136442, i32 265290510, i32 -322386114, i32 -1535828415, i32 -499593831, i32 1005194799, i32 847297441, i32 406762289, i32 1314163512, i32 1332590856, i32 1866599683, i32 -167115585, i32 750260880, i32 613907577, i32 1450815602, i32 -1129346641, i32 -560302305, i32 -644675568, i32 -1282691566, i32 -590397650, i32 1427272223, i32 778793252, i32 1343938022, i32 -1618686585, i32 2052605720, i32 1946737175, i32 -1130390852, i32 -380928628, i32 -327488454, i32 -612033030, i32 1661551462, i32 -1000029230, i32 -283371449, i32 840292616, i32 -582796489, i32 616741398, i32 312560963, i32 711312465, i32 1351876610, i32 322626781, i32 1910503582, i32 271666773, i32 -2119403562, i32 1594956187, i32 70604529, i32 -677132437, i32 1007753275, i32 1495573769, i32 -225450259, i32 -1745748998, i32 -1631928532, i32 504708206, i32 -2031925904, i32 -353800271, i32 -2045878774, i32 1514023603, i32 1998579484, i32 1312622330, i32 694541497, i32 -1712906993, i32 -2143385130, i32 1382467621, i32 776784248, i32 -1676627094, i32 -971698502, i32 -1797068168, i32 -1510196141, i32 503983604, i32 -218673497, i32 907881277, i32 423175695, i32 432175456, i32 1378068232, i32 -149744970, i32 -340918674, i32 -356311194, i32 -474200683, i32 -1501837181, i32 -1317062703, i32 26017576, i32 -1020076561, i32 -1100195163, i32 1700274565, i32 1756076034, i32 -288447217, i32 -617638597, i32 720338349, i32 1533947780, i32 354530856, i32 688349552, i32 -321042571, i32 1637815568, i32 332179504, i32 -345916010, i32 53804574, i32 -1442618417, i32 -1250730864, i32 1282449977, i32 -711025141, i32 -877994476, i32 -288586052, i32 1617046695, i32 -1666491221, i32 -1292663698, i32 1686838959, i32 431878346, i32 -1608291911, i32 1700445008, i32 1080580658, i32 1009431731, i32 832498133, i32 -1071531785, i32 -1688990951, i32 -2023776103, i32 -1778935426, i32 1648197032, i32 -130578278, i32 -1746719369, i32 300782431, i32 375919233, i32 238389289, i32 -941219882, i32 -1763778655, i32 2019080857, i32 1475708069, i32 455242339, i32 -1685863425, i32 448939670, i32 -843904277, i32 1395535956, i32 -1881585436, i32 1841049896, i32 1491858159, i32 885456874, i32 -30872223, i32 -293847949, i32 1565136089, i32 -396052509, i32 1108368660, i32 540939232, i32 1173283510, i32 -1549095958, i32 -613658859, i32 -87339056, i32 -951913406, i32 -278217803, i32 1699691293, i32 1103962373, i32 -669091426, i32 -2038084153, i32 -464828566, i32 1031889488, i32 -815619598, i32 1535977030, i32 -58162272, i32 -1043876189, i32 2132092099, i32 1774941330, i32 1199868427, i32 1452454533, i32 157007616, i32 -1390851939, i32 342012276, i32 595725824, i32 1480756522, i32 206960106, i32 497939518, i32 591360097, i32 863170706, i32 -1919713727, i32 -698356495, i32 1814182875, i32 2094937945, i32 -873565088, i32 1082520231, i32 -831049106, i32 -1509457788, i32 435703966, i32 -386934699, i32 1641649973, i32 -1452693590, i32 -989067582, i32 1510255612, i32 -2146710820, i32 -1639679442, i32 -1018874748, i32 -36346107, i32 236887753, i32 -613164077, i32 274041037, i32 1734335097, i32 -479771840, i32 -976997275, i32 1899903192, i32 1026095262, i32 -244449504, i32 356393447, i32 -1884275382, i32 -421290197, i32 -612127241, i32 -381855128, i32 -1803468553, i32 -162781668, i32 -1805047500, i32 1091903735, i32 1979897079, i32 -1124832466, i32 -727580568, i32 -737663887, i32 857797738, i32 1136121015, i32 1342202287, i32 507115054, i32 -1759230650, i32 337727348, i32 -1081374656, i32 1301675037, i32 -1766485585, i32 1895095763, i32 1721773893, i32 -1078195732, i32 62756741, i32 2142006736, i32 835421444, i32 -1762973773, i32 1442658625, i32 -635090970, i32 -1412822374, i32 676362277, i32 1392781812, i32 170690266, i32 -373920261, i32 1759253602, i32 -683120384, i32 1745797284, i32 664899054, i32 1329594018, i32 -393761396, i32 -1249058810, i32 2062866102, i32 -1429332356, i32 -751345684, i32 -830954599, i32 1080764994, i32 553557557, i32 -638351943, i32 -298199125, i32 991055499, i32 499776247, i32 1265440854, i32 648242737, i32 -354183246, i32 980351604, i32 -581221582, i32 1749149687, i32 -898096901, i32 -83167922, i32 -654396521, i32 1161844396, i32 -1169648345, i32 1431517754, i32 545492359, i32 -26498633, i32 -795437749, i32 1437099964, i32 -1592419752, i32 -861329053, i32 -1713251533, i32 -1507177898, i32 1060185593, i32 1593081372, i32 -1876348548, i32 -34019326, i32 69676912, i32 -2135222948, i32 86519011, i32 -1782508216, i32 -456757982, i32 1220612927, i32 -955283748, i32 133810670, i32 1090789135, i32 1078426020, i32 1569222167, i32 845107691, i32 -711212847, i32 -222510705, i32 1091646820, i32 628848692, i32 1613405280, i32 -537335645, i32 526609435, i32 236106946, i32 48312990, i32 -1352249391, i32 -892239595, i32 1797494240, i32 859738849, i32 992217954, i32 -289490654, i32 -2051890674, i32 -424014439, i32 -562951028, i32 765654824, i32 -804095931, i32 -1783130883, i32 1685915746, i32 -405998096, i32 1414112111, i32 -2021832454, i32 -1013056217, i32 -214004450, i32 172450625, i32 -1724973196, i32 980381355, i32 -185008841, i32 -1475158944, i32 -1578377736, i32 -1726226100, i32 -613520627, i32 -964995824, i32 1835478071, i32 660984891, i32 -590288892, i32 -248967737, i32 -872349789, i32 -1254551662, i32 1762651403, i32 1719377915, i32 -824476260, i32 -1601057013, i32 -652910941, i32 -1156370552, i32 1364962596, i32 2073328063, i32 1983633131, i32 926494387, i32 -871278215, i32 -2144935273, i32 -198299347, i32 1749200295, i32 -966120645, i32 309677260, i32 2016342300, i32 1779581495, i32 -1215147545, i32 111262694, i32 1274766160, i32 443224088, i32 298511866, i32 1025883608, i32 -488520759, i32 1145181785, i32 168956806, i32 -653464466, i32 -710153686, i32 1689216846, i32 -628709281, i32 -1094719096, i32 1692713982, i32 -1648590761, i32 -252198778, i32 1618508792, i32 1610833997, i32 -771914938, i32 -164094032, i32 2001055236, i32 -684262196, i32 -2092799181, i32 -266425487, i32 -1333771897, i32 1006657119, i32 2006996926, i32 -1108824540, i32 1430667929, i32 -1084739999, i32 1314452623, i32 -220332638, i32 -193663176, i32 -2021016126, i32 1399257539, i32 -927756684, i32 -1267338667, i32 1190975929, i32 2062231137, i32 -1960976508, i32 -2073424263, i32 -1856006686, i32 1181637006, i32 548689776, i32 -1932175983, i32 -922558900, i32 -1190417183, i32 -1149106736, i32 296247880, i32 1970579870, i32 -1216407114, i32 -525738999, i32 1714227617, i32 -1003338189, i32 -396747006, i32 166772364, i32 1251581989, i32 493813264, i32 448347421, i32 195405023, i32 -1584991729, i32 677966185, i32 -591930749, i32 1463355134, i32 -1578971493, i32 1338867538, i32 1343315457, i32 -1492745222, i32 -1610435132, i32 233230375, i32 -1694987225, i32 2000651841, i32 -1017099258, i32 1638401717, i32 -266896856, i32 -1057650976, i32 6314154, i32 819756386, i32 300326615, i32 590932579, i32 1405279636, i32 -1027467724, i32 -1144263082, i32 -1866680610, i32 -335774303, i32 -833020554, i32 1862657033, i32 1266418056, i32 963775037, i32 2089974820, i32 -2031914401, i32 1917689273, i32 448879540, i32 -744572676, i32 -313240200, i32 150775221, i32 -667058989, i32 1303187396, i32 508620638, i32 -1318983944, i32 -1568336679, i32 1817252668, i32 1876281319, i32 1457606340, i32 908771278, i32 -574175177, i32 -677760460, i32 -1838972398, i32 1729034894, i32 1080033504, i32 976866871, i32 -738527793, i32 -1413318857, i32 1522871579, i32 1555064734, i32 1336096578, i32 -746444992, i32 -1715692610, i32 -720269667, i32 -1089506539, i32 -701686658, i32 -956251013, i32 -1215554709, i32 564236357, i32 -1301368386, i32 1781952180, i32 1464380207, i32 -1131123079, i32 -962365742, i32 1699332808, i32 1393555694, i32 1183702653, i32 -713881059, i32 1288719814, i32 691649499, i32 -1447410096, i32 -1399511320, i32 -1101077756, i32 -1577396752, i32 1781354906, i32 1676643554, i32 -1702433246, i32 -1064713544, i32 1126444790, i32 -1524759638, i32 -1661808476, i32 -2084544070, i32 -1679201715, i32 -1880812208, i32 -1167828010, i32 673620729, i32 -1489356063, i32 1269405062, i32 -279616791, i32 -953159725, i32 -145557542, i32 1057255273, i32 2012875353, i32 -2132498155, i32 -2018474495, i32 -1693849939, i32 993977747, i32 -376373926, i32 -1640704105, i32 753973209, i32 36408145, i32 -1764381638, i32 25011837, i32 -774947114, i32 2088578344, i32 530523599, i32 -1376601957, i32 1524020338, i32 1518925132, i32 -534139791, i32 -535190042, i32 1202760957, i32 -309069157, i32 -388774771, i32 674977740, i32 -120232407, i32 2031300136, i32 2019492241, i32 -311074731, i32 -141160892, i32 -472686964, i32 352677332, i32 -1997247046, i32 60907813, i32 90501309, i32 -1007968747, i32 1016092578, i32 -1759044884, i32 -1455814870, i32 457141659, i32 509813237, i32 -174299397, i32 652014361, i32 1966332200, i32 -1319764491, i32 55981186, i32 -1967506245, i32 676427537, i32 -1039476232, i32 -1412673177, i32 -861040033, i32 1307055953, i32 942726286, i32 933058658, i32 -1826555503, i32 -361066302, i32 -79791154, i32 1361170020, i32 2001714738, i32 -1464409218, i32 -1020707514, i32 1222529897, i32 1679025792, i32 -1565652976, i32 -580013532, i32 1770335741, i32 151462246, i32 -1281735158, i32 1682292957, i32 1483529935, i32 471910574, i32 1539241949, i32 458788160, i32 -858652289, i32 1807016891, i32 -576558466, i32 978976581, i32 1043663428, i32 -1129001515, i32 1927990952, i32 -94075717, i32 -1922690386, i32 -1086558393, i32 -761535389, i32 1412390302, i32 -1362987237, i32 -162634896, i32 1947078029, i32 -413461673, i32 -126740879, i32 -1353482915, i32 1077988104, i32 1320477388, i32 886195818, i32 18198404, i32 -508558296, i32 -1785185763, i32 112762804, i32 -831610808, i32 1866414978, i32 891333506, i32 18488651, i32 661792760, i32 1628790961, i32 -409780260, i32 -1153795797, i32 876946877, i32 -1601685023, i32 1372485963, i32 791857591, i32 -1608533303, i32 -534984578, i32 -1127755274, i32 -822013501, i32 -1578587449, i32 445679433, i32 -732971622, i32 -790962485, i32 -720709064, i32 54117162, i32 -963561881, i32 -1913048708, i32 -525259953, i32 -140617289, i32 1140177722, i32 -220915201, i32 668550556, i32 -1080614356, i32 367459370, i32 261225585, i32 -1684794075, i32 -85617823, i32 -826893077, i32 -1029151655, i32 314222801, i32 -1228863650, i32 -486184436, i32 282218597, i32 -888953790, i32 -521376242, i32 379116347, i32 1285071038, i32 846784868, i32 -1625320142, i32 -523005217, i32 -744475605, i32 -1989021154, i32 453669953, i32 1268987020, i32 -977374944, i32 -1015663912, i32 -550133875, i32 -1684459730, i32 -435458233, i32 266596637, i32 -447948204, i32 517658769, i32 -832407089, i32 -851542417, i32 370717030, i32 -47440635, i32 -2070949179, i32 -151313767, i32 -182193321, i32 -1506642397, i32 -1817692879, i32 1456262402, i32 -1393524382, i32 1517677493, i32 1846949527, i32 -1999473716, i32 -560569710, i32 -2118563376, i32 1280348187, i32 1908823572, i32 -423180355, i32 846861322, i32 1172426758, i32 -1007518822, i32 -911584259, i32 1655181056, i32 -1155153950, i32 901632758, i32 1897031941, i32 -1308360158, i32 -1228157060, i32 -847864789, i32 1393639104, i32 373351379, i32 950779232, i32 625454576, i32 -1170726756, i32 -146354570, i32 2007998917, i32 544563296, i32 -2050228658, i32 -1964470824, i32 2058025392, i32 1291430526, i32 424198748, i32 50039436, i32 29584100, i32 -689184263, i32 -1865090967, i32 -1503863136, i32 1057563949, i32 -1039604065, i32 -1219600078, i32 -831004069, i32 1469046755, i32 985887462], [1024 x i8] zeroinitializer }, align 32
@bf_pbox = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 608135816, i32 -2052912941, i32 320440878, i32 57701188, i32 -1542899678, i32 698298832, i32 137296536, i32 -330404727, i32 1160258022, i32 953160567, i32 -1101764913, i32 887688300, i32 -1062458953, i32 -914599715, i32 1065670069, i32 -1253635817, i32 -1843997223, i32 -1988494565], [56 x i8] zeroinitializer }, align 32
@__kstrtab_blowfish_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_blowfish_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab_blowfish_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blowfish_setkey to i32), ptr @__kstrtab_blowfish_setkey, ptr @__kstrtabns_blowfish_setkey }, section "___ksymtab_gpl+blowfish_setkey", align 4
@__UNIQUE_ID_file226 = internal constant [44 x i8] c"blowfish_common.file=crypto/blowfish_common\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [28 x i8] c"blowfish_common.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [61 x i8] c"blowfish_common.description=Blowfish Cipher common functions\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [8 x i8] c"bf_sbox\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 33, i32 18 }
@___asan_gen_.4 = private unnamed_addr constant [8 x i8] c"bf_pbox\00", align 1
@___asan_gen_.5 = private constant [28 x i8] c"../crypto/blowfish_common.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 25, i32 18 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__ksymtab_blowfish_setkey, ptr @bf_sbox, ptr @bf_pbox], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bf_sbox to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bf_pbox to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blowfish_setkey(ptr noundef %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #0 align 64 {
entry:
  %data = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %s = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #3
  %0 = getelementptr inbounds [2 x i32], ptr %data, i32 0, i32 1
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond3.preheader.for.cond3.preheader_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.cond3.preheader.for.cond3.preheader_crit_edge ]
  %i.0163 = phi i16 [ 0, %entry ], [ %inc12, %for.cond3.preheader.for.cond3.preheader_crit_edge ]
  %arrayidx = getelementptr [1024 x i32], ptr @bf_sbox, i32 0, i32 %indvars.iv
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %arrayidx9 = getelementptr i32, ptr %s, i32 %indvars.iv
  %3 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arrayidx9, align 4
  %4 = or i32 %indvars.iv, 1
  %arrayidx.1 = getelementptr [1024 x i32], ptr @bf_sbox, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1, align 4
  %arrayidx9.1 = getelementptr i32, ptr %s, i32 %4
  %7 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx9.1, align 4
  %8 = or i32 %indvars.iv, 2
  %arrayidx.2 = getelementptr [1024 x i32], ptr @bf_sbox, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.2, align 4
  %arrayidx9.2 = getelementptr i32, ptr %s, i32 %8
  %11 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx9.2, align 4
  %12 = or i32 %indvars.iv, 3
  %arrayidx.3 = getelementptr [1024 x i32], ptr @bf_sbox, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.3, align 4
  %arrayidx9.3 = getelementptr i32, ptr %s, i32 %12
  %15 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx9.3, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 4
  %inc12 = add nuw nsw i16 %i.0163, 1
  %cmp = icmp ult i16 %i.0163, 255
  br i1 %cmp, label %for.cond3.preheader.for.cond3.preheader_crit_edge, label %for.body18.preheader

for.cond3.preheader.for.cond3.preheader_crit_edge: ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond3.preheader

for.body18.preheader:                             ; preds = %for.cond3.preheader
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %16 = call ptr @memcpy(ptr %__crt_ctx.i, ptr @bf_pbox, i32 72)
  br label %for.body30

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %for.body18.preheader
  %indvars.iv177 = phi i32 [ 0, %for.body18.preheader ], [ %indvars.iv.next178, %for.body30.for.body30_crit_edge ]
  %j.1167 = phi i32 [ 0, %for.body18.preheader ], [ %rem57, %for.body30.for.body30_crit_edge ]
  %sext160 = shl i32 %j.1167, 16
  %idxprom31 = ashr exact i32 %sext160, 16
  %arrayidx32 = getelementptr i8, ptr %key, i32 %idxprom31
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %18 to i32
  %shl = shl nuw i32 %conv33, 24
  %add = add nsw i32 %idxprom31, 1
  %rem = urem i32 %add, %keylen
  %arrayidx35 = getelementptr i8, ptr %key, i32 %rem
  %19 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %20 to i32
  %shl37 = shl nuw nsw i32 %conv36, 16
  %or = or i32 %shl37, %shl
  %add39 = add nsw i32 %idxprom31, 2
  %rem40 = urem i32 %add39, %keylen
  %arrayidx41 = getelementptr i8, ptr %key, i32 %rem40
  %21 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %22 to i32
  %shl43 = shl nuw nsw i32 %conv42, 8
  %or44 = or i32 %or, %shl43
  %add46 = add nsw i32 %idxprom31, 3
  %rem47 = urem i32 %add46, %keylen
  %arrayidx48 = getelementptr i8, ptr %key, i32 %rem47
  %23 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %24 to i32
  %or50 = or i32 %or44, %conv49
  %arrayidx52 = getelementptr i32, ptr %__crt_ctx.i, i32 %indvars.iv177
  %25 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx52, align 4
  %xor = xor i32 %or50, %26
  store i32 %xor, ptr %arrayidx52, align 4
  %add56 = add nsw i32 %idxprom31, 4
  %rem57 = urem i32 %add56, %keylen
  %indvars.iv.next178 = add nuw nsw i32 %indvars.iv177, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next178, 18
  br i1 %exitcond.not, label %for.end61, label %for.body30.for.body30_crit_edge

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body30

for.end61:                                        ; preds = %for.body30
  %27 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %data, align 4
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %0, align 4
  call fastcc void @encrypt_block(ptr noundef %__crt_ctx.i, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data, align 4
  %31 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %__crt_ctx.i, align 4
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %0, align 4
  %arrayidx77 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %34 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx77, align 4
  call fastcc void @encrypt_block(ptr noundef %__crt_ctx.i, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data, align 4
  %arrayidx73.1 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %37 = ptrtoint ptr %arrayidx73.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx73.1, align 4
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %0, align 4
  %arrayidx77.1 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %40 = ptrtoint ptr %arrayidx77.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx77.1, align 4
  call fastcc void @encrypt_block(ptr noundef %__crt_ctx.i, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data, align 4
  %arrayidx73.2 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %43 = ptrtoint ptr %arrayidx73.2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx73.2, align 4
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %0, align 4
  %arrayidx77.2 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %46 = ptrtoint ptr %arrayidx77.2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx77.2, align 4
  call fastcc void @encrypt_block(ptr noundef %__crt_ctx.i, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data, align 4
  %arrayidx73.3 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %49 = ptrtoint ptr %arrayidx73.3 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx73.3, align 4
  %50 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %0, align 4
  %arrayidx77.3 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 12
  %52 = ptrtoint ptr %arrayidx77.3 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx77.3, align 4
  call fastcc void @encrypt_block(ptr noundef %__crt_ctx.i, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data, align 4
  %arrayidx73.4 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 16
  %55 = ptrtoint ptr %arrayidx73.4 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx73.4, align 4
  %56 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %0, align 4
  %arrayidx77.4 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 20
  %58 = ptrtoint ptr %arrayidx77.4 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx77.4, align 4
  call fastcc void @encrypt_block(ptr noundef %__crt_ctx.i, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %59 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %data, align 4
  %arrayidx73.5 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %61 = ptrtoint ptr %arrayidx73.5 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx73.5, align 4
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %0, align 4
  %arrayidx77.5 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %64 = ptrtoint ptr %arrayidx77.5 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx77.5, align 4
  call fastcc void @encrypt_block(ptr noundef %__crt_ctx.i, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %65 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %data, align 4
  %arrayidx73.6 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 32
  %67 = ptrtoint ptr %arrayidx73.6 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx73.6, align 4
  %68 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %0, align 4
  %arrayidx77.6 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 36
  %70 = ptrtoint ptr %arrayidx77.6 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx77.6, align 4
  call fastcc void @encrypt_block(ptr noundef %__crt_ctx.i, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %71 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %data, align 4
  %arrayidx73.7 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 40
  %73 = ptrtoint ptr %arrayidx73.7 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx73.7, align 4
  %74 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %0, align 4
  %arrayidx77.7 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 44
  %76 = ptrtoint ptr %arrayidx77.7 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %arrayidx77.7, align 4
  call fastcc void @encrypt_block(ptr noundef %__crt_ctx.i, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %77 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %data, align 4
  %arrayidx73.8 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 48
  %79 = ptrtoint ptr %arrayidx73.8 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx73.8, align 4
  %80 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %0, align 4
  %arrayidx77.8 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 52
  %82 = ptrtoint ptr %arrayidx77.8 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %arrayidx77.8, align 4
  br label %for.body94

for.body94:                                       ; preds = %for.body94.for.body94_crit_edge, %for.end61
  %indvars.iv181 = phi i32 [ 0, %for.end61 ], [ %indvars.iv.next182, %for.body94.for.body94_crit_edge ]
  %sext159170 = phi i32 [ 0, %for.end61 ], [ %sext159, %for.body94.for.body94_crit_edge ]
  call fastcc void @encrypt_block(ptr noundef %__crt_ctx.i, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %83 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %data, align 4
  %arrayidx99 = getelementptr i32, ptr %s, i32 %indvars.iv181
  %85 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx99, align 4
  %86 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %0, align 4
  %add102 = or i32 %indvars.iv181, 1
  %arrayidx103 = getelementptr i32, ptr %s, i32 %add102
  %88 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %arrayidx103, align 4
  %indvars.iv.next182 = add nuw nsw i32 %indvars.iv181, 2
  %sext159 = add nuw nsw i32 %sext159170, 131072
  %cmp92 = icmp ult i32 %sext159170, 16646144
  br i1 %cmp92, label %for.body94.for.body94_crit_edge, label %for.body94.for.body94.1_crit_edge

for.body94.for.body94.1_crit_edge:                ; preds = %for.body94
  br label %for.body94.1

for.body94.for.body94_crit_edge:                  ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body94

for.body94.1:                                     ; preds = %for.body94.1.for.body94.1_crit_edge, %for.body94.for.body94.1_crit_edge
  %indvars.iv181.1 = phi i32 [ %indvars.iv.next182.1, %for.body94.1.for.body94.1_crit_edge ], [ 256, %for.body94.for.body94.1_crit_edge ]
  %sext159170.1 = phi i32 [ %sext159.1, %for.body94.1.for.body94.1_crit_edge ], [ 0, %for.body94.for.body94.1_crit_edge ]
  call fastcc void @encrypt_block(ptr noundef %__crt_ctx.i, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %89 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %data, align 4
  %arrayidx99.1 = getelementptr i32, ptr %s, i32 %indvars.iv181.1
  %91 = ptrtoint ptr %arrayidx99.1 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %arrayidx99.1, align 4
  %92 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %0, align 4
  %add102.1 = or i32 %indvars.iv181.1, 1
  %arrayidx103.1 = getelementptr i32, ptr %s, i32 %add102.1
  %94 = ptrtoint ptr %arrayidx103.1 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %arrayidx103.1, align 4
  %indvars.iv.next182.1 = add nuw nsw i32 %indvars.iv181.1, 2
  %sext159.1 = add nuw nsw i32 %sext159170.1, 131072
  %cmp92.1 = icmp ult i32 %sext159170.1, 16646144
  br i1 %cmp92.1, label %for.body94.1.for.body94.1_crit_edge, label %for.body94.1.for.body94.2_crit_edge

for.body94.1.for.body94.2_crit_edge:              ; preds = %for.body94.1
  br label %for.body94.2

for.body94.1.for.body94.1_crit_edge:              ; preds = %for.body94.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body94.1

for.body94.2:                                     ; preds = %for.body94.2.for.body94.2_crit_edge, %for.body94.1.for.body94.2_crit_edge
  %indvars.iv181.2 = phi i32 [ %indvars.iv.next182.2, %for.body94.2.for.body94.2_crit_edge ], [ 512, %for.body94.1.for.body94.2_crit_edge ]
  %sext159170.2 = phi i32 [ %sext159.2, %for.body94.2.for.body94.2_crit_edge ], [ 0, %for.body94.1.for.body94.2_crit_edge ]
  call fastcc void @encrypt_block(ptr noundef %__crt_ctx.i, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %95 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %data, align 4
  %arrayidx99.2 = getelementptr i32, ptr %s, i32 %indvars.iv181.2
  %97 = ptrtoint ptr %arrayidx99.2 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %arrayidx99.2, align 4
  %98 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %0, align 4
  %add102.2 = or i32 %indvars.iv181.2, 1
  %arrayidx103.2 = getelementptr i32, ptr %s, i32 %add102.2
  %100 = ptrtoint ptr %arrayidx103.2 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %arrayidx103.2, align 4
  %indvars.iv.next182.2 = add nuw nsw i32 %indvars.iv181.2, 2
  %sext159.2 = add nuw nsw i32 %sext159170.2, 131072
  %cmp92.2 = icmp ult i32 %sext159170.2, 16646144
  br i1 %cmp92.2, label %for.body94.2.for.body94.2_crit_edge, label %for.body94.2.for.body94.3_crit_edge

for.body94.2.for.body94.3_crit_edge:              ; preds = %for.body94.2
  br label %for.body94.3

for.body94.2.for.body94.2_crit_edge:              ; preds = %for.body94.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body94.2

for.body94.3:                                     ; preds = %for.body94.3.for.body94.3_crit_edge, %for.body94.2.for.body94.3_crit_edge
  %indvars.iv181.3 = phi i32 [ %indvars.iv.next182.3, %for.body94.3.for.body94.3_crit_edge ], [ 768, %for.body94.2.for.body94.3_crit_edge ]
  %sext159170.3 = phi i32 [ %sext159.3, %for.body94.3.for.body94.3_crit_edge ], [ 0, %for.body94.2.for.body94.3_crit_edge ]
  call fastcc void @encrypt_block(ptr noundef %__crt_ctx.i, ptr noundef nonnull %data, ptr noundef nonnull %data)
  %101 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %data, align 4
  %arrayidx99.3 = getelementptr i32, ptr %s, i32 %indvars.iv181.3
  %103 = ptrtoint ptr %arrayidx99.3 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %arrayidx99.3, align 4
  %104 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %0, align 4
  %add102.3 = or i32 %indvars.iv181.3, 1
  %arrayidx103.3 = getelementptr i32, ptr %s, i32 %add102.3
  %106 = ptrtoint ptr %arrayidx103.3 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %arrayidx103.3, align 4
  %indvars.iv.next182.3 = add nuw nsw i32 %indvars.iv181.3, 2
  %sext159.3 = add nuw nsw i32 %sext159170.3, 131072
  %cmp92.3 = icmp ult i32 %sext159170.3, 16646144
  br i1 %cmp92.3, label %for.body94.3.for.body94.3_crit_edge, label %for.inc112.3

for.body94.3.for.body94.3_crit_edge:              ; preds = %for.body94.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body94.3

for.inc112.3:                                     ; preds = %for.body94.3
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #3
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @encrypt_block(ptr noundef readonly %bctx, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %s = getelementptr inbounds %struct.bf_ctx, ptr %bctx, i32 0, i32 1
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src, align 4
  %arrayidx2 = getelementptr i32, ptr %src, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %4 = ptrtoint ptr %bctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bctx, align 4
  %xor = xor i32 %5, %1
  %shr = lshr i32 %xor, 24
  %arrayidx4 = getelementptr i32, ptr %s, i32 %shr
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %shr5 = lshr i32 %xor, 16
  %and6 = and i32 %shr5, 255
  %add = or i32 %and6, 256
  %arrayidx7 = getelementptr i32, ptr %s, i32 %add
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  %add8 = add i32 %9, %7
  %shr9 = lshr i32 %xor, 8
  %and10 = and i32 %shr9, 255
  %add11 = or i32 %and10, 512
  %arrayidx12 = getelementptr i32, ptr %s, i32 %add11
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12, align 4
  %xor13 = xor i32 %add8, %11
  %and14 = and i32 %xor, 255
  %add15 = or i32 %and14, 768
  %arrayidx16 = getelementptr i32, ptr %s, i32 %add15
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %xor13, %13
  %xor18 = xor i32 %add17, %3
  %arrayidx19 = getelementptr i32, ptr %bctx, i32 1
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx19, align 4
  %xor20 = xor i32 %xor18, %15
  %shr22 = lshr i32 %xor20, 24
  %arrayidx24 = getelementptr i32, ptr %s, i32 %shr22
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx24, align 4
  %shr25 = lshr i32 %xor20, 16
  %and26 = and i32 %shr25, 255
  %add27 = or i32 %and26, 256
  %arrayidx28 = getelementptr i32, ptr %s, i32 %add27
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx28, align 4
  %add29 = add i32 %19, %17
  %shr30 = lshr i32 %xor20, 8
  %and31 = and i32 %shr30, 255
  %add32 = or i32 %and31, 512
  %arrayidx33 = getelementptr i32, ptr %s, i32 %add32
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx33, align 4
  %xor34 = xor i32 %add29, %21
  %and35 = and i32 %xor20, 255
  %add36 = or i32 %and35, 768
  %arrayidx37 = getelementptr i32, ptr %s, i32 %add36
  %22 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx37, align 4
  %add38 = add i32 %xor34, %23
  %xor39 = xor i32 %add38, %xor
  %arrayidx40 = getelementptr i32, ptr %bctx, i32 2
  %24 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx40, align 4
  %xor41 = xor i32 %xor39, %25
  %shr43 = lshr i32 %xor41, 24
  %arrayidx45 = getelementptr i32, ptr %s, i32 %shr43
  %26 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx45, align 4
  %shr46 = lshr i32 %xor41, 16
  %and47 = and i32 %shr46, 255
  %add48 = or i32 %and47, 256
  %arrayidx49 = getelementptr i32, ptr %s, i32 %add48
  %28 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx49, align 4
  %add50 = add i32 %29, %27
  %shr51 = lshr i32 %xor41, 8
  %and52 = and i32 %shr51, 255
  %add53 = or i32 %and52, 512
  %arrayidx54 = getelementptr i32, ptr %s, i32 %add53
  %30 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx54, align 4
  %xor55 = xor i32 %add50, %31
  %and56 = and i32 %xor41, 255
  %add57 = or i32 %and56, 768
  %arrayidx58 = getelementptr i32, ptr %s, i32 %add57
  %32 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx58, align 4
  %add59 = add i32 %xor55, %33
  %xor60 = xor i32 %add59, %xor20
  %arrayidx61 = getelementptr i32, ptr %bctx, i32 3
  %34 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx61, align 4
  %xor62 = xor i32 %xor60, %35
  %shr64 = lshr i32 %xor62, 24
  %arrayidx66 = getelementptr i32, ptr %s, i32 %shr64
  %36 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx66, align 4
  %shr67 = lshr i32 %xor62, 16
  %and68 = and i32 %shr67, 255
  %add69 = or i32 %and68, 256
  %arrayidx70 = getelementptr i32, ptr %s, i32 %add69
  %38 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx70, align 4
  %add71 = add i32 %39, %37
  %shr72 = lshr i32 %xor62, 8
  %and73 = and i32 %shr72, 255
  %add74 = or i32 %and73, 512
  %arrayidx75 = getelementptr i32, ptr %s, i32 %add74
  %40 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx75, align 4
  %xor76 = xor i32 %add71, %41
  %and77 = and i32 %xor62, 255
  %add78 = or i32 %and77, 768
  %arrayidx79 = getelementptr i32, ptr %s, i32 %add78
  %42 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx79, align 4
  %add80 = add i32 %xor76, %43
  %xor81 = xor i32 %add80, %xor41
  %arrayidx82 = getelementptr i32, ptr %bctx, i32 4
  %44 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx82, align 4
  %xor83 = xor i32 %xor81, %45
  %shr85 = lshr i32 %xor83, 24
  %arrayidx87 = getelementptr i32, ptr %s, i32 %shr85
  %46 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx87, align 4
  %shr88 = lshr i32 %xor83, 16
  %and89 = and i32 %shr88, 255
  %add90 = or i32 %and89, 256
  %arrayidx91 = getelementptr i32, ptr %s, i32 %add90
  %48 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx91, align 4
  %add92 = add i32 %49, %47
  %shr93 = lshr i32 %xor83, 8
  %and94 = and i32 %shr93, 255
  %add95 = or i32 %and94, 512
  %arrayidx96 = getelementptr i32, ptr %s, i32 %add95
  %50 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx96, align 4
  %xor97 = xor i32 %add92, %51
  %and98 = and i32 %xor83, 255
  %add99 = or i32 %and98, 768
  %arrayidx100 = getelementptr i32, ptr %s, i32 %add99
  %52 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx100, align 4
  %add101 = add i32 %xor97, %53
  %xor102 = xor i32 %add101, %xor62
  %arrayidx103 = getelementptr i32, ptr %bctx, i32 5
  %54 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx103, align 4
  %xor104 = xor i32 %xor102, %55
  %shr106 = lshr i32 %xor104, 24
  %arrayidx108 = getelementptr i32, ptr %s, i32 %shr106
  %56 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx108, align 4
  %shr109 = lshr i32 %xor104, 16
  %and110 = and i32 %shr109, 255
  %add111 = or i32 %and110, 256
  %arrayidx112 = getelementptr i32, ptr %s, i32 %add111
  %58 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx112, align 4
  %add113 = add i32 %59, %57
  %shr114 = lshr i32 %xor104, 8
  %and115 = and i32 %shr114, 255
  %add116 = or i32 %and115, 512
  %arrayidx117 = getelementptr i32, ptr %s, i32 %add116
  %60 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx117, align 4
  %xor118 = xor i32 %add113, %61
  %and119 = and i32 %xor104, 255
  %add120 = or i32 %and119, 768
  %arrayidx121 = getelementptr i32, ptr %s, i32 %add120
  %62 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx121, align 4
  %add122 = add i32 %xor118, %63
  %xor123 = xor i32 %add122, %xor83
  %arrayidx124 = getelementptr i32, ptr %bctx, i32 6
  %64 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx124, align 4
  %xor125 = xor i32 %xor123, %65
  %shr127 = lshr i32 %xor125, 24
  %arrayidx129 = getelementptr i32, ptr %s, i32 %shr127
  %66 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx129, align 4
  %shr130 = lshr i32 %xor125, 16
  %and131 = and i32 %shr130, 255
  %add132 = or i32 %and131, 256
  %arrayidx133 = getelementptr i32, ptr %s, i32 %add132
  %68 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx133, align 4
  %add134 = add i32 %69, %67
  %shr135 = lshr i32 %xor125, 8
  %and136 = and i32 %shr135, 255
  %add137 = or i32 %and136, 512
  %arrayidx138 = getelementptr i32, ptr %s, i32 %add137
  %70 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx138, align 4
  %xor139 = xor i32 %add134, %71
  %and140 = and i32 %xor125, 255
  %add141 = or i32 %and140, 768
  %arrayidx142 = getelementptr i32, ptr %s, i32 %add141
  %72 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx142, align 4
  %add143 = add i32 %xor139, %73
  %xor144 = xor i32 %add143, %xor104
  %arrayidx145 = getelementptr i32, ptr %bctx, i32 7
  %74 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx145, align 4
  %xor146 = xor i32 %xor144, %75
  %shr148 = lshr i32 %xor146, 24
  %arrayidx150 = getelementptr i32, ptr %s, i32 %shr148
  %76 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx150, align 4
  %shr151 = lshr i32 %xor146, 16
  %and152 = and i32 %shr151, 255
  %add153 = or i32 %and152, 256
  %arrayidx154 = getelementptr i32, ptr %s, i32 %add153
  %78 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx154, align 4
  %add155 = add i32 %79, %77
  %shr156 = lshr i32 %xor146, 8
  %and157 = and i32 %shr156, 255
  %add158 = or i32 %and157, 512
  %arrayidx159 = getelementptr i32, ptr %s, i32 %add158
  %80 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx159, align 4
  %xor160 = xor i32 %add155, %81
  %and161 = and i32 %xor146, 255
  %add162 = or i32 %and161, 768
  %arrayidx163 = getelementptr i32, ptr %s, i32 %add162
  %82 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx163, align 4
  %add164 = add i32 %xor160, %83
  %xor165 = xor i32 %add164, %xor125
  %arrayidx166 = getelementptr i32, ptr %bctx, i32 8
  %84 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx166, align 4
  %xor167 = xor i32 %xor165, %85
  %shr169 = lshr i32 %xor167, 24
  %arrayidx171 = getelementptr i32, ptr %s, i32 %shr169
  %86 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx171, align 4
  %shr172 = lshr i32 %xor167, 16
  %and173 = and i32 %shr172, 255
  %add174 = or i32 %and173, 256
  %arrayidx175 = getelementptr i32, ptr %s, i32 %add174
  %88 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx175, align 4
  %add176 = add i32 %89, %87
  %shr177 = lshr i32 %xor167, 8
  %and178 = and i32 %shr177, 255
  %add179 = or i32 %and178, 512
  %arrayidx180 = getelementptr i32, ptr %s, i32 %add179
  %90 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx180, align 4
  %xor181 = xor i32 %add176, %91
  %and182 = and i32 %xor167, 255
  %add183 = or i32 %and182, 768
  %arrayidx184 = getelementptr i32, ptr %s, i32 %add183
  %92 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx184, align 4
  %add185 = add i32 %xor181, %93
  %xor186 = xor i32 %add185, %xor146
  %arrayidx187 = getelementptr i32, ptr %bctx, i32 9
  %94 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx187, align 4
  %xor188 = xor i32 %xor186, %95
  %shr190 = lshr i32 %xor188, 24
  %arrayidx192 = getelementptr i32, ptr %s, i32 %shr190
  %96 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx192, align 4
  %shr193 = lshr i32 %xor188, 16
  %and194 = and i32 %shr193, 255
  %add195 = or i32 %and194, 256
  %arrayidx196 = getelementptr i32, ptr %s, i32 %add195
  %98 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx196, align 4
  %add197 = add i32 %99, %97
  %shr198 = lshr i32 %xor188, 8
  %and199 = and i32 %shr198, 255
  %add200 = or i32 %and199, 512
  %arrayidx201 = getelementptr i32, ptr %s, i32 %add200
  %100 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx201, align 4
  %xor202 = xor i32 %add197, %101
  %and203 = and i32 %xor188, 255
  %add204 = or i32 %and203, 768
  %arrayidx205 = getelementptr i32, ptr %s, i32 %add204
  %102 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx205, align 4
  %add206 = add i32 %xor202, %103
  %xor207 = xor i32 %add206, %xor167
  %arrayidx208 = getelementptr i32, ptr %bctx, i32 10
  %104 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx208, align 4
  %xor209 = xor i32 %xor207, %105
  %shr211 = lshr i32 %xor209, 24
  %arrayidx213 = getelementptr i32, ptr %s, i32 %shr211
  %106 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx213, align 4
  %shr214 = lshr i32 %xor209, 16
  %and215 = and i32 %shr214, 255
  %add216 = or i32 %and215, 256
  %arrayidx217 = getelementptr i32, ptr %s, i32 %add216
  %108 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx217, align 4
  %add218 = add i32 %109, %107
  %shr219 = lshr i32 %xor209, 8
  %and220 = and i32 %shr219, 255
  %add221 = or i32 %and220, 512
  %arrayidx222 = getelementptr i32, ptr %s, i32 %add221
  %110 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx222, align 4
  %xor223 = xor i32 %add218, %111
  %and224 = and i32 %xor209, 255
  %add225 = or i32 %and224, 768
  %arrayidx226 = getelementptr i32, ptr %s, i32 %add225
  %112 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx226, align 4
  %add227 = add i32 %xor223, %113
  %xor228 = xor i32 %add227, %xor188
  %arrayidx229 = getelementptr i32, ptr %bctx, i32 11
  %114 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx229, align 4
  %xor230 = xor i32 %xor228, %115
  %shr232 = lshr i32 %xor230, 24
  %arrayidx234 = getelementptr i32, ptr %s, i32 %shr232
  %116 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx234, align 4
  %shr235 = lshr i32 %xor230, 16
  %and236 = and i32 %shr235, 255
  %add237 = or i32 %and236, 256
  %arrayidx238 = getelementptr i32, ptr %s, i32 %add237
  %118 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx238, align 4
  %add239 = add i32 %119, %117
  %shr240 = lshr i32 %xor230, 8
  %and241 = and i32 %shr240, 255
  %add242 = or i32 %and241, 512
  %arrayidx243 = getelementptr i32, ptr %s, i32 %add242
  %120 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx243, align 4
  %xor244 = xor i32 %add239, %121
  %and245 = and i32 %xor230, 255
  %add246 = or i32 %and245, 768
  %arrayidx247 = getelementptr i32, ptr %s, i32 %add246
  %122 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx247, align 4
  %add248 = add i32 %xor244, %123
  %xor249 = xor i32 %add248, %xor209
  %arrayidx250 = getelementptr i32, ptr %bctx, i32 12
  %124 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx250, align 4
  %xor251 = xor i32 %xor249, %125
  %shr253 = lshr i32 %xor251, 24
  %arrayidx255 = getelementptr i32, ptr %s, i32 %shr253
  %126 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx255, align 4
  %shr256 = lshr i32 %xor251, 16
  %and257 = and i32 %shr256, 255
  %add258 = or i32 %and257, 256
  %arrayidx259 = getelementptr i32, ptr %s, i32 %add258
  %128 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx259, align 4
  %add260 = add i32 %129, %127
  %shr261 = lshr i32 %xor251, 8
  %and262 = and i32 %shr261, 255
  %add263 = or i32 %and262, 512
  %arrayidx264 = getelementptr i32, ptr %s, i32 %add263
  %130 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx264, align 4
  %xor265 = xor i32 %add260, %131
  %and266 = and i32 %xor251, 255
  %add267 = or i32 %and266, 768
  %arrayidx268 = getelementptr i32, ptr %s, i32 %add267
  %132 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx268, align 4
  %add269 = add i32 %xor265, %133
  %xor270 = xor i32 %add269, %xor230
  %arrayidx271 = getelementptr i32, ptr %bctx, i32 13
  %134 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx271, align 4
  %xor272 = xor i32 %xor270, %135
  %shr274 = lshr i32 %xor272, 24
  %arrayidx276 = getelementptr i32, ptr %s, i32 %shr274
  %136 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx276, align 4
  %shr277 = lshr i32 %xor272, 16
  %and278 = and i32 %shr277, 255
  %add279 = or i32 %and278, 256
  %arrayidx280 = getelementptr i32, ptr %s, i32 %add279
  %138 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx280, align 4
  %add281 = add i32 %139, %137
  %shr282 = lshr i32 %xor272, 8
  %and283 = and i32 %shr282, 255
  %add284 = or i32 %and283, 512
  %arrayidx285 = getelementptr i32, ptr %s, i32 %add284
  %140 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx285, align 4
  %xor286 = xor i32 %add281, %141
  %and287 = and i32 %xor272, 255
  %add288 = or i32 %and287, 768
  %arrayidx289 = getelementptr i32, ptr %s, i32 %add288
  %142 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx289, align 4
  %add290 = add i32 %xor286, %143
  %xor291 = xor i32 %add290, %xor251
  %arrayidx292 = getelementptr i32, ptr %bctx, i32 14
  %144 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx292, align 4
  %xor293 = xor i32 %xor291, %145
  %shr295 = lshr i32 %xor293, 24
  %arrayidx297 = getelementptr i32, ptr %s, i32 %shr295
  %146 = ptrtoint ptr %arrayidx297 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx297, align 4
  %shr298 = lshr i32 %xor293, 16
  %and299 = and i32 %shr298, 255
  %add300 = or i32 %and299, 256
  %arrayidx301 = getelementptr i32, ptr %s, i32 %add300
  %148 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx301, align 4
  %add302 = add i32 %149, %147
  %shr303 = lshr i32 %xor293, 8
  %and304 = and i32 %shr303, 255
  %add305 = or i32 %and304, 512
  %arrayidx306 = getelementptr i32, ptr %s, i32 %add305
  %150 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx306, align 4
  %xor307 = xor i32 %add302, %151
  %and308 = and i32 %xor293, 255
  %add309 = or i32 %and308, 768
  %arrayidx310 = getelementptr i32, ptr %s, i32 %add309
  %152 = ptrtoint ptr %arrayidx310 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx310, align 4
  %add311 = add i32 %xor307, %153
  %xor312 = xor i32 %add311, %xor272
  %arrayidx313 = getelementptr i32, ptr %bctx, i32 15
  %154 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx313, align 4
  %xor314 = xor i32 %xor312, %155
  %shr316 = lshr i32 %xor314, 24
  %arrayidx318 = getelementptr i32, ptr %s, i32 %shr316
  %156 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx318, align 4
  %shr319 = lshr i32 %xor314, 16
  %and320 = and i32 %shr319, 255
  %add321 = or i32 %and320, 256
  %arrayidx322 = getelementptr i32, ptr %s, i32 %add321
  %158 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx322, align 4
  %add323 = add i32 %159, %157
  %shr324 = lshr i32 %xor314, 8
  %and325 = and i32 %shr324, 255
  %add326 = or i32 %and325, 512
  %arrayidx327 = getelementptr i32, ptr %s, i32 %add326
  %160 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx327, align 4
  %xor328 = xor i32 %add323, %161
  %and329 = and i32 %xor314, 255
  %add330 = or i32 %and329, 768
  %arrayidx331 = getelementptr i32, ptr %s, i32 %add330
  %162 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx331, align 4
  %add332 = add i32 %xor328, %163
  %xor333 = xor i32 %add332, %xor293
  %arrayidx334 = getelementptr i32, ptr %bctx, i32 16
  %164 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx334, align 4
  %xor335 = xor i32 %xor333, %165
  %arrayidx336 = getelementptr i32, ptr %bctx, i32 17
  %166 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx336, align 4
  %xor337 = xor i32 %167, %xor314
  %168 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %xor337, ptr %dst, align 4
  %arrayidx339 = getelementptr i32, ptr %dst, i32 1
  %169 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %xor335, ptr %arrayidx339, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__ksymtab_blowfish_setkey, !1, !"__ksymtab_blowfish_setkey", i1 false, i1 false}
!1 = !{!"../crypto/blowfish_common.c", i32 394, i32 1}
!2 = !{ptr @__UNIQUE_ID_file226, !3, !"__UNIQUE_ID_file226", i1 false, i1 false}
!3 = !{!"../crypto/blowfish_common.c", i32 396, i32 1}
!4 = !{ptr @__UNIQUE_ID_license227, !3, !"__UNIQUE_ID_license227", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description228, !6, !"__UNIQUE_ID_description228", i1 false, i1 false}
!6 = !{!"../crypto/blowfish_common.c", i32 397, i32 1}
!7 = !{ptr @bf_sbox, !8, !"bf_sbox", i1 false, i1 false}
!8 = !{!"../crypto/blowfish_common.c", i32 33, i32 18}
!9 = !{ptr @bf_pbox, !10, !"bf_pbox", i1 false, i1 false}
!10 = !{!"../crypto/blowfish_common.c", i32 25, i32 18}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
