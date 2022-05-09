; ModuleID = '/llk/IR_all_yes/crypto/camellia_generic.c_pt.bc'
source_filename = "../crypto/camellia_generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@camellia_alg = internal global %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, i32 16, i32 276, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"camellia\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"camellia-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon { %struct.cipher_alg { i32 16, i32 32, ptr @camellia_set_key, ptr @camellia_encrypt, ptr @camellia_decrypt } }, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef }, align 128
@__initcall__kmod_camellia_generic__173_1067_camellia_init4 = internal global ptr @camellia_init, section ".initcall4.init", align 4
@__exitcall_camellia_fini = internal global ptr @camellia_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description174 = internal constant [55 x i8] c"camellia_generic.description=Camellia Cipher Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [46 x i8] c"camellia_generic.file=crypto/camellia_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [29 x i8] c"camellia_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace177 = internal constant [32 x i8] c"camellia_generic.alias=camellia\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto178 = internal constant [39 x i8] c"camellia_generic.alias=crypto-camellia\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace179 = internal constant [40 x i8] c"camellia_generic.alias=camellia-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto180 = internal constant [47 x i8] c"camellia_generic.alias=crypto-camellia-generic\00", section ".modinfo", align 1
@camellia_sp1110 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 1886416896, i32 -2105376256, i32 741092352, i32 -320017408, i32 -1280068864, i32 656877312, i32 -1061109760, i32 -437918464, i32 -454761472, i32 -2054847232, i32 1465341696, i32 892679424, i32 -353703424, i32 202116096, i32 -1364283904, i32 1094795520, i32 589505280, i32 -269488384, i32 1802201856, i32 -1819045120, i32 1162167552, i32 421075200, i32 -1515870976, i32 555819264, i32 -303174400, i32 235802112, i32 1330597632, i32 1313754624, i32 488447232, i32 1701143808, i32 -1835888128, i32 -1111638784, i32 -2038004224, i32 -1195853824, i32 -1347440896, i32 -1886417152, i32 2088532992, i32 -336860416, i32 522133248, i32 -825307648, i32 1044266496, i32 808464384, i32 -589505536, i32 1600085760, i32 1583242752, i32 -976894720, i32 185273088, i32 437918208, i32 -1499027968, i32 -505290496, i32 960051456, i32 -892679680, i32 -707406592, i32 1195853568, i32 1566399744, i32 1027423488, i32 -640034560, i32 16843008, i32 1515870720, i32 -690563584, i32 1364283648, i32 1448498688, i32 1819044864, i32 1296911616, i32 -1953789184, i32 218959104, i32 -1701144064, i32 1717986816, i32 -67372288, i32 -858993664, i32 -1330597888, i32 757935360, i32 1953788928, i32 303174144, i32 724249344, i32 538976256, i32 -252645376, i32 -1313754880, i32 -2071690240, i32 -1717987072, i32 -538976512, i32 1280068608, i32 -875836672, i32 -1027423744, i32 875836416, i32 2122219008, i32 1987474944, i32 84215040, i32 1835887872, i32 -1212696832, i32 -1448498944, i32 825307392, i32 -774778624, i32 387389184, i32 67372032, i32 -673720576, i32 336860160, i32 1482184704, i32 976894464, i32 1633771776, i32 -555819520, i32 454761216, i32 286331136, i32 471604224, i32 842150400, i32 252645120, i32 -1667458048, i32 370546176, i32 1397969664, i32 404232192, i32 -218959360, i32 572662272, i32 -16843264, i32 1145324544, i32 -808464640, i32 -1296911872, i32 -1010580736, i32 -1246382848, i32 2054846976, i32 -1852731136, i32 606348288, i32 134744064, i32 -387389440, i32 -1465341952, i32 1616928768, i32 -50529280, i32 1768515840, i32 1347440640, i32 -1431655936, i32 -791621632, i32 -1600086016, i32 2105376000, i32 -1583243008, i32 -1987475200, i32 1650614784, i32 -1751673088, i32 1414812672, i32 1532713728, i32 505290240, i32 -1785359104, i32 -522133504, i32 -256, i32 1684300800, i32 -757935616, i32 269488128, i32 -993737728, i32 0, i32 1212696576, i32 -1549556992, i32 -134744320, i32 1970631936, i32 -606348544, i32 -1970632192, i32 50529024, i32 -421075456, i32 -623191552, i32 151587072, i32 1061109504, i32 -572662528, i32 -1802202112, i32 -2021161216, i32 1549556736, i32 -2088533248, i32 33686016, i32 -842150656, i32 1246382592, i32 -1869574144, i32 858993408, i32 1936945920, i32 1734829824, i32 -151587328, i32 -202116352, i32 -1650615040, i32 2139062016, i32 -1077952768, i32 -488447488, i32 1381126656, i32 -1684301056, i32 -656877568, i32 640034304, i32 -926365696, i32 926365440, i32 -960051712, i32 993737472, i32 -2122219264, i32 -1768516096, i32 1869573888, i32 1263225600, i32 320017152, i32 -1094795776, i32 1667457792, i32 774778368, i32 -370546432, i32 2038003968, i32 -1482184960, i32 -1936946176, i32 -1616929024, i32 1852730880, i32 -1128481792, i32 -1903260160, i32 690563328, i32 -168430336, i32 -101058304, i32 -1229539840, i32 791621376, i32 -33686272, i32 -1263225856, i32 1499027712, i32 2021160960, i32 -1734830080, i32 101058048, i32 1785358848, i32 -404232448, i32 1179010560, i32 1903259904, i32 -1162167808, i32 -724249600, i32 623191296, i32 -1414812928, i32 1111638528, i32 -2004318208, i32 -1566400000, i32 -1920103168, i32 -84215296, i32 1920102912, i32 117901056, i32 -1179010816, i32 1431655680, i32 -117901312, i32 -286331392, i32 -1397969920, i32 168430080, i32 909522432, i32 1229539584, i32 707406336, i32 1751672832, i32 1010580480, i32 943208448, i32 -235802368, i32 -1532713984, i32 1077952512, i32 673720320, i32 -741092608, i32 2071689984, i32 -1145324800, i32 -909522688, i32 1128481536, i32 -1044266752, i32 353703168, i32 -471604480, i32 -1381126912, i32 -185273344, i32 2004317952, i32 -943208704, i32 -2139062272, i32 -1633772032], [256 x i8] zeroinitializer }, align 32
@camellia_sp0222 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 14737632, i32 328965, i32 5789784, i32 14277081, i32 6776679, i32 5131854, i32 8487297, i32 13355979, i32 13224393, i32 723723, i32 11447982, i32 6974058, i32 14013909, i32 1579032, i32 6118749, i32 8553090, i32 4605510, i32 14671839, i32 14079702, i32 2565927, i32 9079434, i32 3289650, i32 4934475, i32 4342338, i32 14408667, i32 1842204, i32 10395294, i32 10263708, i32 3815994, i32 13290186, i32 2434341, i32 8092539, i32 855309, i32 7434609, i32 6250335, i32 2039583, i32 16316664, i32 14145495, i32 4079166, i32 10329501, i32 8158332, i32 6316128, i32 12171705, i32 12500670, i32 12369084, i32 9145227, i32 1447446, i32 3421236, i32 5066061, i32 12829635, i32 7500402, i32 9803157, i32 11250603, i32 9342606, i32 12237498, i32 8026746, i32 11776947, i32 131586, i32 11842740, i32 11382189, i32 10658466, i32 11316396, i32 14211288, i32 10132122, i32 1513239, i32 1710618, i32 3487029, i32 13421772, i32 16250871, i32 10066329, i32 6381921, i32 5921370, i32 15263976, i32 2368548, i32 5658198, i32 4210752, i32 14803425, i32 6513507, i32 592137, i32 3355443, i32 12566463, i32 10000536, i32 9934743, i32 8750469, i32 6842472, i32 16579836, i32 15527148, i32 657930, i32 14342874, i32 7303023, i32 5460819, i32 6447714, i32 10724259, i32 3026478, i32 526344, i32 11513775, i32 2631720, i32 11579568, i32 7631988, i32 12763842, i32 12434877, i32 3552822, i32 2236962, i32 3684408, i32 6579300, i32 1973790, i32 3750201, i32 2894892, i32 10921638, i32 3158064, i32 15066597, i32 4473924, i32 16645629, i32 8947848, i32 10461087, i32 6645093, i32 8882055, i32 7039851, i32 16053492, i32 2302755, i32 4737096, i32 1052688, i32 13750737, i32 5329233, i32 12632256, i32 16382457, i32 13816530, i32 10526880, i32 5592405, i32 10592673, i32 4276545, i32 16448250, i32 4408131, i32 1250067, i32 12895428, i32 3092271, i32 11053224, i32 11974326, i32 3947580, i32 2829099, i32 12698049, i32 16777215, i32 13158600, i32 10855845, i32 2105376, i32 9013641, i32 0, i32 9474192, i32 4671303, i32 15724527, i32 15395562, i32 12040119, i32 1381653, i32 394758, i32 13487565, i32 11908533, i32 1184274, i32 8289918, i32 12303291, i32 2697513, i32 986895, i32 12105912, i32 460551, i32 263172, i32 10197915, i32 9737364, i32 2171169, i32 6710886, i32 15132390, i32 13553358, i32 15592941, i32 15198183, i32 3881787, i32 16711422, i32 8355711, i32 12961221, i32 10790052, i32 3618615, i32 11645361, i32 5000268, i32 9539985, i32 7237230, i32 9276813, i32 7763574, i32 197379, i32 2960685, i32 14606046, i32 9868950, i32 2500134, i32 8224125, i32 13027014, i32 6052956, i32 13882323, i32 15921906, i32 5197647, i32 1644825, i32 4144959, i32 14474460, i32 7960953, i32 1907997, i32 5395026, i32 15461355, i32 15987699, i32 7171437, i32 6184542, i32 16514043, i32 6908265, i32 11711154, i32 15790320, i32 3223857, i32 789516, i32 13948116, i32 13619151, i32 9211020, i32 14869218, i32 7697781, i32 11119017, i32 4868682, i32 5723991, i32 8684676, i32 1118481, i32 4539717, i32 1776411, i32 16119285, i32 15000804, i32 921102, i32 7566195, i32 11184810, i32 15856113, i32 14540253, i32 5855577, i32 1315860, i32 7105644, i32 9605778, i32 5526612, i32 13684944, i32 7895160, i32 7368816, i32 14935011, i32 4802889, i32 8421504, i32 5263440, i32 10987431, i32 16185078, i32 7829367, i32 9671571, i32 8816262, i32 8618883, i32 2763306, i32 13092807, i32 5987163, i32 15329769, i32 15658734, i32 9408399, i32 65793, i32 4013373], [256 x i8] zeroinitializer }, align 32
@camellia_sp3033 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 939538488, i32 1090535745, i32 369104406, i32 1979741814, i32 -654255655, i32 -1828678765, i32 1610637408, i32 -234818830, i32 1912631922, i32 -1040137534, i32 -1426019413, i32 -1711236454, i32 1962964341, i32 100664838, i32 1459640151, i32 -1610571616, i32 -1862233711, i32 -150931465, i32 -1258244683, i32 -922695223, i32 -1577016670, i32 -1946121076, i32 -771697966, i32 -1879011184, i32 -167708938, i32 117442311, i32 -1493129305, i32 654321447, i32 -1912566130, i32 -1308577102, i32 1224755529, i32 -570368290, i32 1124090691, i32 1543527516, i32 -687810601, i32 -956250169, i32 1040203326, i32 -184486411, i32 -1895788657, i32 1728079719, i32 520101663, i32 402659352, i32 1845522030, i32 -1358909521, i32 788541231, i32 -503258398, i32 -2063563387, i32 218107149, i32 1392530259, i32 -268373776, i32 -1677681508, i32 1694524773, i32 -369038614, i32 -1560239197, i32 -1375686994, i32 -1644126562, i32 -335483668, i32 -2147450752, i32 754986285, i32 1795189611, i32 -1476351832, i32 721431339, i32 905983542, i32 -1509906778, i32 -989805115, i32 -2046785914, i32 1291865421, i32 855651123, i32 -50266627, i32 1711302246, i32 1476417624, i32 -1778346346, i32 973093434, i32 150997257, i32 -1795123819, i32 268439568, i32 2013296760, i32 -671033128, i32 1107313218, i32 -872362804, i32 -285151249, i32 637543974, i32 -452925979, i32 1627414881, i32 436214298, i32 1056980799, i32 989870907, i32 -2113895806, i32 -1241467210, i32 -620700709, i32 -738143020, i32 -1744791400, i32 -402593560, i32 -1962898549, i32 33554946, i32 -352261141, i32 167774730, i32 738208812, i32 486546717, i32 -1342132048, i32 1862299503, i32 -1929343603, i32 -2013230968, i32 234884622, i32 419436825, i32 -2030008441, i32 1308642894, i32 184552203, i32 -1459574359, i32 201329676, i32 2030074233, i32 285217041, i32 2130739071, i32 570434082, i32 -419371033, i32 1493195097, i32 -520035871, i32 -637478182, i32 1023425853, i32 -939472696, i32 301994514, i32 67109892, i32 1946186868, i32 1409307732, i32 805318704, i32 2113961598, i32 -1275022156, i32 671098920, i32 1426085205, i32 1744857192, i32 1342197840, i32 -1107247426, i32 -805252912, i32 -1006582588, i32 822096177, i32 -889140277, i32 704653866, i32 -1392464467, i32 251662095, i32 -905917750, i32 1879076976, i32 -16711681, i32 838873650, i32 1761634665, i32 134219784, i32 1644192354, i32 0, i32 603989028, i32 -788475439, i32 -83821573, i32 -1174357318, i32 -318706195, i32 1157645637, i32 -2130673279, i32 1929409395, i32 1828744557, i32 -2080340860, i32 -1627349089, i32 -301928722, i32 1241533002, i32 -1023360061, i32 771763758, i32 -1056915007, i32 16777473, i32 -436148506, i32 620766501, i32 1207978056, i32 -1728013927, i32 -1191134791, i32 -1291799629, i32 2063629179, i32 -117376519, i32 -838807858, i32 -1090469953, i32 -553590817, i32 1895854449, i32 687876393, i32 -855585331, i32 1811967084, i32 318771987, i32 1677747300, i32 -1694458981, i32 1660969827, i32 -1660904035, i32 -1073692480, i32 1258310475, i32 -1224689737, i32 -1526684251, i32 -1996453495, i32 1593859935, i32 -1325354575, i32 385881879, i32 -201263884, i32 -1140802372, i32 -754920493, i32 1174423110, i32 -822030385, i32 922761015, i32 1577082462, i32 1191200583, i32 -1811901292, i32 -100599046, i32 -67044100, i32 1526750043, i32 -1761568873, i32 -33489154, i32 1509972570, i32 -1409241940, i32 1006648380, i32 1275087948, i32 50332419, i32 889206069, i32 -218041357, i32 587211555, i32 -1207912264, i32 1560304989, i32 1778412138, i32 -1845456238, i32 -721365547, i32 553656609, i32 1140868164, i32 1358975313, i32 -973027642, i32 2097184125, i32 956315961, i32 -2097118333, i32 -603923236, i32 -1442796886, i32 2080406652, i32 1996519287, i32 1442862678, i32 83887365, i32 452991771, i32 -1543461724, i32 352326933, i32 872428596, i32 503324190, i32 469769244, i32 -134153992, i32 1375752786, i32 536879136, i32 335549460, i32 -385816087, i32 -1124024899, i32 -587145763, i32 -469703452, i32 -1593794143, i32 -536813344, i32 -1979676022, i32 -251596303, i32 -704588074, i32 2046851706, i32 -1157579845, i32 -486480925, i32 1073758272, i32 1325420367], [256 x i8] zeroinitializer }, align 32
@camellia_sp4404 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 1886388336, i32 741081132, i32 -1280114509, i32 -1061158720, i32 -454819612, i32 1465319511, i32 -353763094, i32 -1364328274, i32 589496355, i32 1802174571, i32 1162149957, i32 -1515913051, i32 -303234835, i32 1330577487, i32 488439837, i32 -1835925358, i32 -2038038394, i32 -1347485521, i32 2088501372, i32 522125343, i32 1044250686, i32 -589561636, i32 1583218782, i32 185270283, i32 -1499070298, i32 960036921, i32 -707460907, i32 1566376029, i32 -640089895, i32 1515847770, i32 1364262993, i32 1819017324, i32 -1953824629, i32 -1701183334, i32 -67436293, i32 -1330642768, i32 1953759348, i32 724238379, i32 -252706576, i32 -2071723900, i32 -539033377, i32 -875888437, i32 875823156, i32 1987444854, i32 1835860077, i32 -1448542039, i32 -774831919, i32 67371012, i32 336855060, i32 976879674, i32 -555876130, i32 286326801, i32 842137650, i32 -1667497828, i32 1397948499, i32 -219021070, i32 -16908034, i32 -808517425, i32 -1010630461, i32 2054815866, i32 606339108, i32 -387448600, i32 1616904288, i32 1768489065, i32 -1431699286, i32 -1600126816, i32 -1583284063, i32 1650589794, i32 1414791252, i32 505282590, i32 -522190624, i32 1684275300, i32 269484048, i32 0, i32 -1549598557, i32 1970602101, i32 -1970667382, i32 -421134106, i32 151584777, i32 -572718883, i32 -2021195641, i32 -2088566653, i32 -842202931, i32 -1869610864, i32 1936916595, i32 -151650058, i32 -1650655075, i32 -1078001473, i32 1381105746, i32 -656932648, i32 -926416696, i32 -960102202, i32 -2122252159, i32 1869545583, i32 320012307, i32 1667432547, i32 -370605847, i32 -1482227545, i32 -1616969569, i32 -1128529732, i32 690552873, i32 -101121799, i32 791609391, i32 -1263271756, i32 2021130360, i32 101056518, i32 -404291353, i32 1903231089, i32 -724303660, i32 -1414856533, i32 -2004352888, i32 -1920139123, i32 1920073842, i32 -1179057991, i32 -117964552, i32 -1398013780, i32 909508662, i32 707395626, i32 1010565180, i32 -235863823, i32 1077936192, i32 -741146413, i32 -1145372485, i32 1128464451, i32 353697813, i32 -1381171027, i32 2004287607, i32 -2139094912, i32 -2105409406, i32 -320077588, i32 656867367, i32 -437976859, i32 -2054881147, i32 892665909, i32 202113036, i32 1094778945, i32 -269549329, i32 -1819082605, i32 421068825, i32 555810849, i32 235798542, i32 1313734734, i32 1701118053, i32 -1111686979, i32 -1195900744, i32 -1886453617, i32 -336920341, i32 -825360178, i32 808452144, i32 1600061535, i32 -976944955, i32 437911578, i32 -505347871, i32 -892731190, i32 1195835463, i32 1027407933, i32 16842753, i32 -690618154, i32 1448476758, i32 1296891981, i32 218955789, i32 1717960806, i32 -859045684, i32 757923885, i32 303169554, i32 538968096, i32 -1313800015, i32 -1718026087, i32 1280049228, i32 -1027473214, i32 2122186878, i32 84213765, i32 -1212743497, i32 825294897, i32 387383319, i32 -673775401, i32 1482162264, i32 1633747041, i32 454754331, i32 471597084, i32 252641295, i32 370540566, i32 404226072, i32 572653602, i32 1145307204, i32 -1296957262, i32 -1246429003, i32 -1852768111, i32 134742024, i32 -1465384792, i32 -50593540, i32 1347420240, i32 -791674672, i32 2105344125, i32 -1987510135, i32 -1751711593, i32 1532690523, i32 -1785397099, i32 -65281, i32 -757989166, i32 -993787708, i32 1212678216, i32 -134807305, i32 -606404389, i32 50528259, i32 -623247142, i32 1061093439, i32 -1802239852, i32 1549533276, i32 33685506, i32 1246363722, i32 858980403, i32 1734803559, i32 -202178317, i32 2139029631, i32 -488505118, i32 -1684340581, i32 640024614, i32 926351415, i32 993722427, i32 -1768554346, i32 1263206475, i32 -1094844226, i32 774766638, i32 2037973113, i32 -1936981876, i32 1852702830, i32 -1903296370, i32 -168492811, i32 -1229586250, i32 -33750787, i32 1499005017, i32 -1734868840, i32 1785331818, i32 1178992710, i32 -1162215238, i32 623181861, i32 1111621698, i32 -1566441310, i32 -84279046, i32 117899271, i32 1431634005, i32 -286392082, i32 168427530, i32 1229520969, i32 1751646312, i32 943194168, i32 -1532755804, i32 673710120, i32 2071658619, i32 -909573943, i32 -1044315967, i32 -471662365, i32 -185335564, i32 -943259449, i32 -1633812322], [256 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.2 = private unnamed_addr constant [16 x i8] c"camellia_sp1110\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 20, i32 18 }
@___asan_gen_.5 = private unnamed_addr constant [16 x i8] c"camellia_sp0222\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 87, i32 18 }
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"camellia_sp3033\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 154, i32 18 }
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"camellia_sp4404\00", align 1
@___asan_gen_.12 = private constant [29 x i8] c"../crypto/camellia_generic.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 221, i32 18 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias_crypto178, ptr @__UNIQUE_ID_alias_crypto180, ptr @__UNIQUE_ID_alias_userspace177, ptr @__UNIQUE_ID_alias_userspace179, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_camellia_fini, ptr @__initcall__kmod_camellia_generic__173_1067_camellia_init4, ptr @camellia_fini, ptr @camellia_sp1110, ptr @camellia_sp0222, ptr @camellia_sp3033, ptr @camellia_sp4404], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camellia_sp1110 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camellia_sp0222 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camellia_sp3033 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camellia_sp4404 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @camellia_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_alg(ptr noundef nonnull @camellia_alg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @camellia_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_alg(ptr noundef nonnull @camellia_alg) #5
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @camellia_set_key(ptr noundef %tfm, ptr nocapture noundef readonly %in_key, i32 noundef %key_len) #2 align 64 {
entry:
  %kk.i = alloca [32 x i8], align 1
  %subL.i = alloca [26 x i32], align 4
  %subR.i = alloca [26 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %key_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %key_len, label %entry.cleanup_crit_edge [
    i32 16, label %entry.if.end_crit_edge
    i32 24, label %entry.if.end_crit_edge21
    i32 32, label %entry.if.end_crit_edge22
  ]

entry.if.end_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge21, %entry.if.end_crit_edge22
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %1 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %key_len, ptr %__crt_ctx.i, align 4
  %2 = zext i32 %key_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %key_len, label %if.end.cleanup_crit_edge [
    i32 16, label %sw.bb
    i32 24, label %sw.bb4
    i32 32, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %key_table = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %subL.i) #5
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %subR.i) #5
  %3 = ptrtoint ptr %in_key to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %in_key, align 1
  %add.ptr.i = getelementptr i8, ptr %in_key, i32 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %add.ptr.i, align 1
  %add.ptr2.i = getelementptr i8, ptr %in_key, i32 8
  %7 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %add.ptr2.i, align 1
  %add.ptr4.i = getelementptr i8, ptr %in_key, i32 12
  %9 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr4.i, align 1
  %11 = ptrtoint ptr %subL.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %4, ptr %subL.i, align 4
  %12 = ptrtoint ptr %subR.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %6, ptr %subR.i, align 4
  %arrayidx7.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %8, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %10, ptr %arrayidx8.i, align 4
  %add.i = tail call i32 @llvm.fshl.i32(i32 %4, i32 %6, i32 15) #5
  %add11.i = tail call i32 @llvm.fshl.i32(i32 %6, i32 %8, i32 15) #5
  %add14.i = tail call i32 @llvm.fshl.i32(i32 %8, i32 %10, i32 15) #5
  %add17.i = tail call i32 @llvm.fshl.i32(i32 %10, i32 %4, i32 15) #5
  %arrayidx18.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.i, ptr %arrayidx18.i, align 4
  %arrayidx19.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add11.i, ptr %arrayidx19.i, align 4
  %arrayidx20.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add14.i, ptr %arrayidx20.i, align 4
  %arrayidx21.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 5
  %18 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add17.i, ptr %arrayidx21.i, align 4
  %add24.i = tail call i32 @llvm.fshl.i32(i32 %add.i, i32 %add11.i, i32 30) #5
  %add27.i = tail call i32 @llvm.fshl.i32(i32 %add11.i, i32 %add14.i, i32 30) #5
  %add30.i = tail call i32 @llvm.fshl.i32(i32 %add14.i, i32 %add17.i, i32 30) #5
  %add34.i = tail call i32 @llvm.fshl.i32(i32 %add17.i, i32 %add.i, i32 30) #5
  %arrayidx35.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 10
  %19 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add24.i, ptr %arrayidx35.i, align 4
  %arrayidx36.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 10
  %20 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add27.i, ptr %arrayidx36.i, align 4
  %arrayidx37.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 11
  %21 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add30.i, ptr %arrayidx37.i, align 4
  %arrayidx38.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 11
  %22 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add34.i, ptr %arrayidx38.i, align 4
  %add41.i = tail call i32 @llvm.fshl.i32(i32 %add24.i, i32 %add27.i, i32 15) #5
  %add44.i = tail call i32 @llvm.fshl.i32(i32 %add27.i, i32 %add30.i, i32 15) #5
  %add47.i = tail call i32 @llvm.fshl.i32(i32 %add30.i, i32 %add34.i, i32 15) #5
  %add51.i = tail call i32 @llvm.fshl.i32(i32 %add34.i, i32 %add24.i, i32 15) #5
  %arrayidx52.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 13
  %23 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add47.i, ptr %arrayidx52.i, align 4
  %arrayidx53.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 13
  %24 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add51.i, ptr %arrayidx53.i, align 4
  %add56.i = tail call i32 @llvm.fshl.i32(i32 %add41.i, i32 %add44.i, i32 17) #5
  %add59.i = tail call i32 @llvm.fshl.i32(i32 %add44.i, i32 %add47.i, i32 17) #5
  %add62.i = tail call i32 @llvm.fshl.i32(i32 %add47.i, i32 %add51.i, i32 17) #5
  %add66.i = tail call i32 @llvm.fshl.i32(i32 %add51.i, i32 %add41.i, i32 17) #5
  %arrayidx67.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 16
  %25 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add56.i, ptr %arrayidx67.i, align 4
  %arrayidx68.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add59.i, ptr %arrayidx68.i, align 4
  %arrayidx69.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 17
  %27 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add62.i, ptr %arrayidx69.i, align 4
  %arrayidx70.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 17
  %28 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add66.i, ptr %arrayidx70.i, align 4
  %add73.i = tail call i32 @llvm.fshl.i32(i32 %add56.i, i32 %add59.i, i32 17) #5
  %add76.i = tail call i32 @llvm.fshl.i32(i32 %add59.i, i32 %add62.i, i32 17) #5
  %add79.i = tail call i32 @llvm.fshl.i32(i32 %add62.i, i32 %add66.i, i32 17) #5
  %add83.i = tail call i32 @llvm.fshl.i32(i32 %add66.i, i32 %add56.i, i32 17) #5
  %arrayidx84.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 18
  %29 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add73.i, ptr %arrayidx84.i, align 4
  %arrayidx85.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 18
  %30 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add76.i, ptr %arrayidx85.i, align 4
  %arrayidx86.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 19
  %31 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add79.i, ptr %arrayidx86.i, align 4
  %arrayidx87.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 19
  %32 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add83.i, ptr %arrayidx87.i, align 4
  %add90.i = tail call i32 @llvm.fshl.i32(i32 %add73.i, i32 %add76.i, i32 17) #5
  %add93.i = tail call i32 @llvm.fshl.i32(i32 %add76.i, i32 %add79.i, i32 17) #5
  %add96.i = tail call i32 @llvm.fshl.i32(i32 %add79.i, i32 %add83.i, i32 17) #5
  %add100.i = tail call i32 @llvm.fshl.i32(i32 %add83.i, i32 %add73.i, i32 17) #5
  %arrayidx101.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 22
  %33 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add90.i, ptr %arrayidx101.i, align 4
  %arrayidx102.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 22
  %34 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add93.i, ptr %arrayidx102.i, align 4
  %arrayidx103.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 23
  %35 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add96.i, ptr %arrayidx103.i, align 4
  %arrayidx104.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 23
  %36 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add100.i, ptr %arrayidx104.i, align 4
  %xor.i = xor i32 %4, -1600231809
  %xor109.i = xor i32 %6, 1003262091
  %shr110.i = lshr i32 %xor.i, 16
  %shr111.i = lshr i32 %xor109.i, 16
  %idxprom.i = and i32 %xor109.i, 255
  %arrayidx112.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom.i
  %37 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx112.i, align 4
  %shr113.i = lshr i32 %xor109.i, 24
  %arrayidx116.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr113.i
  %39 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx116.i, align 4
  %xor117.i = xor i32 %40, %38
  %idxprom119.i = and i32 %shr111.i, 255
  %arrayidx120.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom119.i
  %41 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx120.i, align 4
  %xor121.i = xor i32 %xor117.i, %42
  %shr122.i = lshr i32 %xor109.i, 8
  %idxprom124.i = and i32 %shr122.i, 255
  %arrayidx125.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom124.i
  %43 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx125.i, align 4
  %xor126.i = xor i32 %xor121.i, %44
  %shr127.i = lshr i32 %xor.i, 24
  %arrayidx130.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr127.i
  %45 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx130.i, align 4
  %idxprom132.i = and i32 %shr110.i, 255
  %arrayidx133.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom132.i
  %47 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx133.i, align 4
  %xor134.i = xor i32 %48, %46
  %shr135.i = lshr i32 %xor.i, 8
  %idxprom137.i = and i32 %shr135.i, 255
  %arrayidx138.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom137.i
  %49 = ptrtoint ptr %arrayidx138.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx138.i, align 4
  %xor139.i = xor i32 %xor134.i, %50
  %idxprom141.i = and i32 %xor.i, 255
  %arrayidx142.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom141.i
  %51 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx142.i, align 4
  %xor143.i = xor i32 %xor139.i, %52
  %xor144.i = xor i32 %xor126.i, %xor143.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %xor143.i, i32 %xor143.i, i32 24) #5
  %xor147.i = xor i32 %or.i.i, %xor144.i
  %53 = xor i32 %8, %xor144.i
  %xor150.i = xor i32 %53, -1233459112
  %54 = xor i32 %10, %xor147.i
  %xor151.i = xor i32 %54, 1286239154
  %shr152.i = lshr i32 %xor150.i, 16
  %shr153.i = lshr i32 %xor151.i, 16
  %idxprom155.i = and i32 %xor151.i, 255
  %arrayidx156.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom155.i
  %55 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx156.i, align 4
  %shr157.i = lshr i32 %xor151.i, 24
  %arrayidx160.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr157.i
  %57 = ptrtoint ptr %arrayidx160.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx160.i, align 4
  %xor161.i = xor i32 %58, %56
  %idxprom163.i = and i32 %shr153.i, 255
  %arrayidx164.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom163.i
  %59 = ptrtoint ptr %arrayidx164.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx164.i, align 4
  %xor165.i = xor i32 %xor161.i, %60
  %shr166.i = lshr i32 %xor151.i, 8
  %idxprom168.i = and i32 %shr166.i, 255
  %arrayidx169.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom168.i
  %61 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx169.i, align 4
  %xor170.i = xor i32 %xor165.i, %62
  %shr171.i = lshr i32 %xor150.i, 24
  %arrayidx174.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr171.i
  %63 = ptrtoint ptr %arrayidx174.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx174.i, align 4
  %idxprom176.i = and i32 %shr152.i, 255
  %arrayidx177.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom176.i
  %65 = ptrtoint ptr %arrayidx177.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx177.i, align 4
  %xor178.i = xor i32 %66, %64
  %shr179.i = lshr i32 %xor150.i, 8
  %idxprom181.i = and i32 %shr179.i, 255
  %arrayidx182.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom181.i
  %67 = ptrtoint ptr %arrayidx182.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx182.i, align 4
  %xor183.i = xor i32 %xor178.i, %68
  %idxprom185.i = and i32 %xor150.i, 255
  %arrayidx186.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom185.i
  %69 = ptrtoint ptr %arrayidx186.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx186.i, align 4
  %xor187.i = xor i32 %xor183.i, %70
  %xor188.i = xor i32 %xor170.i, %xor187.i
  %or.i619.i = tail call i32 @llvm.fshl.i32(i32 %xor187.i, i32 %xor187.i, i32 24) #5
  %xor191.i = xor i32 %or.i619.i, %xor188.i
  %xor192.i = xor i32 %xor188.i, -957401297
  %xor193.i = xor i32 %xor191.i, -380665154
  %shr194.i = lshr i32 %xor192.i, 16
  %shr195.i = lshr i32 %xor193.i, 16
  %idxprom197.i = and i32 %xor193.i, 255
  %arrayidx198.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom197.i
  %71 = ptrtoint ptr %arrayidx198.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx198.i, align 4
  %shr199.i = lshr i32 %xor193.i, 24
  %arrayidx202.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr199.i
  %73 = ptrtoint ptr %arrayidx202.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx202.i, align 4
  %xor203.i = xor i32 %74, %72
  %idxprom205.i = and i32 %shr195.i, 255
  %arrayidx206.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom205.i
  %75 = ptrtoint ptr %arrayidx206.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx206.i, align 4
  %xor207.i = xor i32 %xor203.i, %76
  %shr208.i = lshr i32 %xor193.i, 8
  %idxprom210.i = and i32 %shr208.i, 255
  %arrayidx211.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom210.i
  %77 = ptrtoint ptr %arrayidx211.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx211.i, align 4
  %xor212.i = xor i32 %xor207.i, %78
  %shr213.i = lshr i32 %xor192.i, 24
  %arrayidx216.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr213.i
  %79 = ptrtoint ptr %arrayidx216.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx216.i, align 4
  %idxprom218.i = and i32 %shr194.i, 255
  %arrayidx219.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom218.i
  %81 = ptrtoint ptr %arrayidx219.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx219.i, align 4
  %xor220.i = xor i32 %82, %80
  %shr221.i = lshr i32 %xor192.i, 8
  %idxprom223.i = and i32 %shr221.i, 255
  %arrayidx224.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom223.i
  %83 = ptrtoint ptr %arrayidx224.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx224.i, align 4
  %xor225.i = xor i32 %xor220.i, %84
  %idxprom227.i = and i32 %xor192.i, 255
  %arrayidx228.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom227.i
  %85 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx228.i, align 4
  %xor229.i = xor i32 %xor225.i, %86
  %xor230.i = xor i32 %xor212.i, %xor229.i
  %or.i620.i = tail call i32 @llvm.fshl.i32(i32 %xor229.i, i32 %xor229.i, i32 24) #5
  %xor234.i = xor i32 %xor230.i, %xor144.i
  %xor233.i = xor i32 %xor230.i, %xor147.i
  %xor235.i = xor i32 %xor233.i, %or.i620.i
  %xor236.i = xor i32 %xor234.i, 1426019237
  %xor237.i = xor i32 %xor235.i, -237801700
  %shr238.i = lshr i32 %xor236.i, 16
  %shr239.i = lshr i32 %xor237.i, 16
  %idxprom241.i = and i32 %xor237.i, 255
  %arrayidx242.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom241.i
  %87 = ptrtoint ptr %arrayidx242.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx242.i, align 4
  %shr243.i = lshr i32 %xor237.i, 24
  %arrayidx246.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr243.i
  %89 = ptrtoint ptr %arrayidx246.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx246.i, align 4
  %xor247.i = xor i32 %90, %88
  %idxprom249.i = and i32 %shr239.i, 255
  %arrayidx250.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom249.i
  %91 = ptrtoint ptr %arrayidx250.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx250.i, align 4
  %xor251.i = xor i32 %xor247.i, %92
  %shr252.i = lshr i32 %xor237.i, 8
  %idxprom254.i = and i32 %shr252.i, 255
  %arrayidx255.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom254.i
  %93 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx255.i, align 4
  %xor256.i = xor i32 %xor251.i, %94
  %shr257.i = lshr i32 %xor236.i, 24
  %arrayidx260.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr257.i
  %95 = ptrtoint ptr %arrayidx260.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx260.i, align 4
  %idxprom262.i = and i32 %shr238.i, 255
  %arrayidx263.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom262.i
  %97 = ptrtoint ptr %arrayidx263.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx263.i, align 4
  %xor264.i = xor i32 %98, %96
  %shr265.i = lshr i32 %xor236.i, 8
  %idxprom267.i = and i32 %shr265.i, 255
  %arrayidx268.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom267.i
  %99 = ptrtoint ptr %arrayidx268.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx268.i, align 4
  %xor269.i = xor i32 %xor264.i, %100
  %idxprom271.i = and i32 %xor236.i, 255
  %arrayidx272.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom271.i
  %101 = ptrtoint ptr %arrayidx272.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx272.i, align 4
  %xor273.i = xor i32 %xor269.i, %102
  %xor274.i = xor i32 %xor256.i, %xor273.i
  %or.i621.i = tail call i32 @llvm.fshl.i32(i32 %xor273.i, i32 %xor273.i, i32 24) #5
  %xor278.i = xor i32 %xor274.i, %xor188.i
  %xor277.i = xor i32 %xor274.i, %xor191.i
  %xor279.i = xor i32 %xor277.i, %or.i621.i
  %arrayidx280.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 2
  %103 = ptrtoint ptr %arrayidx280.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %xor278.i, ptr %arrayidx280.i, align 4
  %arrayidx281.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 2
  %104 = ptrtoint ptr %arrayidx281.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %xor279.i, ptr %arrayidx281.i, align 4
  %arrayidx282.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 3
  %105 = ptrtoint ptr %arrayidx282.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %xor234.i, ptr %arrayidx282.i, align 4
  %arrayidx283.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 3
  %106 = ptrtoint ptr %arrayidx283.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %xor235.i, ptr %arrayidx283.i, align 4
  %add286.i = tail call i32 @llvm.fshl.i32(i32 %xor278.i, i32 %xor279.i, i32 15) #5
  %add289.i = tail call i32 @llvm.fshl.i32(i32 %xor279.i, i32 %xor234.i, i32 15) #5
  %add292.i = tail call i32 @llvm.fshl.i32(i32 %xor234.i, i32 %xor235.i, i32 15) #5
  %add296.i = tail call i32 @llvm.fshl.i32(i32 %xor235.i, i32 %xor278.i, i32 15) #5
  %arrayidx297.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 6
  %107 = ptrtoint ptr %arrayidx297.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add286.i, ptr %arrayidx297.i, align 4
  %arrayidx298.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 6
  %108 = ptrtoint ptr %arrayidx298.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %add289.i, ptr %arrayidx298.i, align 4
  %arrayidx299.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 7
  %109 = ptrtoint ptr %arrayidx299.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %add292.i, ptr %arrayidx299.i, align 4
  %arrayidx300.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 7
  %110 = ptrtoint ptr %arrayidx300.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %add296.i, ptr %arrayidx300.i, align 4
  %add303.i = tail call i32 @llvm.fshl.i32(i32 %add286.i, i32 %add289.i, i32 15) #5
  %add306.i = tail call i32 @llvm.fshl.i32(i32 %add289.i, i32 %add292.i, i32 15) #5
  %add309.i = tail call i32 @llvm.fshl.i32(i32 %add292.i, i32 %add296.i, i32 15) #5
  %add313.i = tail call i32 @llvm.fshl.i32(i32 %add296.i, i32 %add286.i, i32 15) #5
  %arrayidx314.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 8
  %111 = ptrtoint ptr %arrayidx314.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %add303.i, ptr %arrayidx314.i, align 4
  %arrayidx315.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 8
  %112 = ptrtoint ptr %arrayidx315.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %add306.i, ptr %arrayidx315.i, align 4
  %arrayidx316.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 9
  %113 = ptrtoint ptr %arrayidx316.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %add309.i, ptr %arrayidx316.i, align 4
  %arrayidx317.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 9
  %114 = ptrtoint ptr %arrayidx317.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %add313.i, ptr %arrayidx317.i, align 4
  %add320.i = tail call i32 @llvm.fshl.i32(i32 %add303.i, i32 %add306.i, i32 15) #5
  %add323.i = tail call i32 @llvm.fshl.i32(i32 %add306.i, i32 %add309.i, i32 15) #5
  %add326.i = tail call i32 @llvm.fshl.i32(i32 %add309.i, i32 %add313.i, i32 15) #5
  %add330.i = tail call i32 @llvm.fshl.i32(i32 %add313.i, i32 %add303.i, i32 15) #5
  %arrayidx331.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 12
  %115 = ptrtoint ptr %arrayidx331.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %add320.i, ptr %arrayidx331.i, align 4
  %arrayidx332.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 12
  %116 = ptrtoint ptr %arrayidx332.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %add323.i, ptr %arrayidx332.i, align 4
  %add335.i = tail call i32 @llvm.fshl.i32(i32 %add320.i, i32 %add323.i, i32 15) #5
  %add338.i = tail call i32 @llvm.fshl.i32(i32 %add323.i, i32 %add326.i, i32 15) #5
  %add341.i = tail call i32 @llvm.fshl.i32(i32 %add326.i, i32 %add330.i, i32 15) #5
  %add345.i = tail call i32 @llvm.fshl.i32(i32 %add330.i, i32 %add320.i, i32 15) #5
  %arrayidx346.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 14
  %117 = ptrtoint ptr %arrayidx346.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %add335.i, ptr %arrayidx346.i, align 4
  %arrayidx347.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 14
  %118 = ptrtoint ptr %arrayidx347.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %add338.i, ptr %arrayidx347.i, align 4
  %arrayidx348.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 15
  %119 = ptrtoint ptr %arrayidx348.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %add341.i, ptr %arrayidx348.i, align 4
  %arrayidx349.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 15
  %120 = ptrtoint ptr %arrayidx349.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %add345.i, ptr %arrayidx349.i, align 4
  %add352.i = tail call i32 @llvm.fshl.i32(i32 %add338.i, i32 %add341.i, i32 2) #5
  %add355.i = tail call i32 @llvm.fshl.i32(i32 %add341.i, i32 %add345.i, i32 2) #5
  %add358.i = tail call i32 @llvm.fshl.i32(i32 %add345.i, i32 %add335.i, i32 2) #5
  %add362.i = tail call i32 @llvm.fshl.i32(i32 %add335.i, i32 %add338.i, i32 2) #5
  %arrayidx363.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 20
  %121 = ptrtoint ptr %arrayidx363.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %add352.i, ptr %arrayidx363.i, align 4
  %arrayidx364.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 20
  %122 = ptrtoint ptr %arrayidx364.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %add355.i, ptr %arrayidx364.i, align 4
  %arrayidx365.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 21
  %123 = ptrtoint ptr %arrayidx365.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %add358.i, ptr %arrayidx365.i, align 4
  %arrayidx366.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 21
  %124 = ptrtoint ptr %arrayidx366.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %add362.i, ptr %arrayidx366.i, align 4
  %add369.i = tail call i32 @llvm.fshl.i32(i32 %add352.i, i32 %add355.i, i32 17) #5
  %add372.i = tail call i32 @llvm.fshl.i32(i32 %add355.i, i32 %add358.i, i32 17) #5
  %add375.i = tail call i32 @llvm.fshl.i32(i32 %add358.i, i32 %add362.i, i32 17) #5
  %add379.i = tail call i32 @llvm.fshl.i32(i32 %add362.i, i32 %add352.i, i32 17) #5
  %arrayidx380.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 24
  %125 = ptrtoint ptr %arrayidx380.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %add369.i, ptr %arrayidx380.i, align 4
  %arrayidx381.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 24
  %126 = ptrtoint ptr %arrayidx381.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %add372.i, ptr %arrayidx381.i, align 4
  %arrayidx382.i = getelementptr inbounds [26 x i32], ptr %subL.i, i32 0, i32 25
  %127 = ptrtoint ptr %arrayidx382.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %add375.i, ptr %arrayidx382.i, align 4
  %arrayidx383.i = getelementptr inbounds [26 x i32], ptr %subR.i, i32 0, i32 25
  %128 = ptrtoint ptr %arrayidx383.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %add379.i, ptr %arrayidx383.i, align 4
  call fastcc void @camellia_setup_tail(ptr noundef %key_table, ptr noundef nonnull %subL.i, ptr noundef nonnull %subR.i, i32 noundef 24) #5
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %subR.i) #5
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %subL.i) #5
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %key_table5 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %kk.i) #5
  %129 = getelementptr inbounds [32 x i8], ptr %kk.i, i32 0, i32 24
  %130 = getelementptr inbounds [32 x i8], ptr %kk.i, i32 0, i32 28
  %131 = call ptr @memcpy(ptr %kk.i, ptr %in_key, i32 24)
  %add.ptr.i20 = getelementptr i8, ptr %in_key, i32 16
  %132 = ptrtoint ptr %add.ptr.i20 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %krll.0.copyload.i = load i32, ptr %add.ptr.i20, align 1
  %add.ptr1.i = getelementptr i8, ptr %in_key, i32 20
  %133 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %krlr.0.copyload.i = load i32, ptr %add.ptr1.i, align 1
  %neg.i = xor i32 %krll.0.copyload.i, -1
  %neg2.i = xor i32 %krlr.0.copyload.i, -1
  %134 = ptrtoint ptr %129 to i32
  call void @__asan_storeN_noabort(i32 %134, i32 4)
  store i32 %neg.i, ptr %129, align 1
  %135 = ptrtoint ptr %130 to i32
  call void @__asan_storeN_noabort(i32 %135, i32 4)
  store i32 %neg2.i, ptr %130, align 1
  call fastcc void @camellia_setup256(ptr noundef nonnull %kk.i, ptr noundef %key_table5) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %kk.i) #5
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %key_table8 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  tail call fastcc void @camellia_setup256(ptr noundef %in_key, ptr noundef %key_table8)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %sw.bb4, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.bb7 ], [ 0, %sw.bb4 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @camellia_encrypt(ptr noundef readonly %tfm, ptr nocapture noundef writeonly %out, ptr nocapture noundef readonly %in) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %in to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %in, align 1
  %add.ptr = getelementptr i8, ptr %in, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %add.ptr4 = getelementptr i8, ptr %in, i32 8
  %4 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr4, align 1
  %add.ptr7 = getelementptr i8, ptr %in, i32 12
  %6 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr7, align 1
  %8 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__crt_ctx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp = icmp eq i32 %9, 16
  %key_table = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %10 = ptrtoint ptr %key_table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_table, align 4
  %xor.i = xor i32 %11, %1
  %arrayidx2.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.i, align 4
  %xor4.i = xor i32 %13, %3
  %arrayidx5.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5.i, align 4
  %xor7.i = xor i32 %15, %5
  %arrayidx8.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8.i, align 4
  %xor10.i = xor i32 %17, %7
  %idxprom.i = and i32 %xor4.i, 255
  %arrayidx12.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx12.i, align 4
  %shr.i = lshr i32 %xor.i, 24
  %arrayidx16.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr.i
  %20 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx16.i, align 4
  %shr18.i = lshr i32 %xor4.i, 24
  %arrayidx21.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr18.i
  %22 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx21.i, align 4
  %xor22.i = xor i32 %23, %19
  %shr24.i = lshr i32 %xor.i, 16
  %idxprom26.i = and i32 %shr24.i, 255
  %arrayidx27.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom26.i
  %24 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx27.i, align 4
  %xor28.i = xor i32 %25, %21
  %shr30.i = lshr i32 %xor4.i, 16
  %idxprom32.i = and i32 %shr30.i, 255
  %arrayidx33.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom32.i
  %26 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx33.i, align 4
  %xor34.i = xor i32 %xor22.i, %27
  %shr36.i = lshr i32 %xor.i, 8
  %idxprom38.i = and i32 %shr36.i, 255
  %arrayidx39.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom38.i
  %28 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx39.i, align 4
  %xor40.i = xor i32 %xor28.i, %29
  %shr42.i = lshr i32 %xor4.i, 8
  %idxprom44.i = and i32 %shr42.i, 255
  %arrayidx45.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom44.i
  %30 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx45.i, align 4
  %xor46.i = xor i32 %xor34.i, %31
  %idxprom49.i = and i32 %xor.i, 255
  %arrayidx50.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom49.i
  %32 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx50.i, align 4
  %xor51.i = xor i32 %xor40.i, %33
  %xor52.i = xor i32 %xor46.i, %xor51.i
  %xor54.i = xor i32 %xor7.i, %xor52.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %xor51.i, i32 %xor51.i, i32 24) #5
  %xor55.i = xor i32 %xor10.i, %xor52.i
  %xor57.i = xor i32 %xor55.i, %or.i.i
  %arrayidx58.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 12
  %34 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx58.i, align 4
  %xor60.i = xor i32 %35, %xor.i
  %arrayidx61.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 16
  %36 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx61.i, align 4
  %xor63.i = xor i32 %37, %xor4.i
  %idxprom66.i = and i32 %xor57.i, 255
  %arrayidx67.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom66.i
  %38 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx67.i, align 4
  %shr69.i = lshr i32 %xor54.i, 24
  %arrayidx72.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr69.i
  %40 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx72.i, align 4
  %shr74.i = lshr i32 %xor57.i, 24
  %arrayidx77.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr74.i
  %42 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx77.i, align 4
  %xor78.i = xor i32 %43, %39
  %shr80.i = lshr i32 %xor54.i, 16
  %idxprom82.i = and i32 %shr80.i, 255
  %arrayidx83.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom82.i
  %44 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx83.i, align 4
  %xor84.i = xor i32 %45, %41
  %shr86.i = lshr i32 %xor57.i, 16
  %idxprom88.i = and i32 %shr86.i, 255
  %arrayidx89.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom88.i
  %46 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx89.i, align 4
  %xor90.i = xor i32 %xor78.i, %47
  %shr92.i = lshr i32 %xor54.i, 8
  %idxprom94.i = and i32 %shr92.i, 255
  %arrayidx95.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom94.i
  %48 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx95.i, align 4
  %xor96.i = xor i32 %xor84.i, %49
  %shr98.i = lshr i32 %xor57.i, 8
  %idxprom100.i = and i32 %shr98.i, 255
  %arrayidx101.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom100.i
  %50 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx101.i, align 4
  %xor102.i = xor i32 %xor90.i, %51
  %idxprom105.i = and i32 %xor54.i, 255
  %arrayidx106.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom105.i
  %52 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx106.i, align 4
  %xor107.i = xor i32 %xor96.i, %53
  %xor108.i = xor i32 %xor102.i, %xor107.i
  %xor110.i = xor i32 %xor60.i, %xor108.i
  %or.i2138.i = tail call i32 @llvm.fshl.i32(i32 %xor107.i, i32 %xor107.i, i32 24) #5
  %xor113.i = xor i32 %xor63.i, %xor108.i
  %xor115.i = xor i32 %xor113.i, %or.i2138.i
  %arrayidx116.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 20
  %54 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx116.i, align 4
  %xor118.i = xor i32 %55, %xor54.i
  %arrayidx119.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %56 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx119.i, align 4
  %xor121.i = xor i32 %57, %xor57.i
  %idxprom124.i = and i32 %xor115.i, 255
  %arrayidx125.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom124.i
  %58 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx125.i, align 4
  %shr127.i = lshr i32 %xor110.i, 24
  %arrayidx130.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr127.i
  %60 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx130.i, align 4
  %shr132.i = lshr i32 %xor115.i, 24
  %arrayidx135.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr132.i
  %62 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx135.i, align 4
  %xor136.i = xor i32 %63, %59
  %shr138.i = lshr i32 %xor110.i, 16
  %idxprom140.i = and i32 %shr138.i, 255
  %arrayidx141.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom140.i
  %64 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx141.i, align 4
  %xor142.i = xor i32 %65, %61
  %shr144.i = lshr i32 %xor115.i, 16
  %idxprom146.i = and i32 %shr144.i, 255
  %arrayidx147.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom146.i
  %66 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx147.i, align 4
  %xor148.i = xor i32 %xor136.i, %67
  %shr150.i = lshr i32 %xor110.i, 8
  %idxprom152.i = and i32 %shr150.i, 255
  %arrayidx153.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom152.i
  %68 = ptrtoint ptr %arrayidx153.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx153.i, align 4
  %xor154.i = xor i32 %xor142.i, %69
  %shr156.i = lshr i32 %xor115.i, 8
  %idxprom158.i = and i32 %shr156.i, 255
  %arrayidx159.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom158.i
  %70 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx159.i, align 4
  %xor160.i = xor i32 %xor148.i, %71
  %idxprom163.i = and i32 %xor110.i, 255
  %arrayidx164.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom163.i
  %72 = ptrtoint ptr %arrayidx164.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx164.i, align 4
  %xor165.i = xor i32 %xor154.i, %73
  %xor166.i = xor i32 %xor160.i, %xor165.i
  %xor168.i = xor i32 %xor118.i, %xor166.i
  %or.i2139.i = tail call i32 @llvm.fshl.i32(i32 %xor165.i, i32 %xor165.i, i32 24) #5
  %xor171.i = xor i32 %xor121.i, %xor166.i
  %xor173.i = xor i32 %xor171.i, %or.i2139.i
  %arrayidx174.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %74 = ptrtoint ptr %arrayidx174.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx174.i, align 4
  %xor176.i = xor i32 %75, %xor110.i
  %arrayidx177.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 32
  %76 = ptrtoint ptr %arrayidx177.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx177.i, align 4
  %xor179.i = xor i32 %77, %xor115.i
  %idxprom182.i = and i32 %xor173.i, 255
  %arrayidx183.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom182.i
  %78 = ptrtoint ptr %arrayidx183.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx183.i, align 4
  %shr185.i = lshr i32 %xor168.i, 24
  %arrayidx188.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr185.i
  %80 = ptrtoint ptr %arrayidx188.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx188.i, align 4
  %shr190.i = lshr i32 %xor173.i, 24
  %arrayidx193.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr190.i
  %82 = ptrtoint ptr %arrayidx193.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx193.i, align 4
  %xor194.i = xor i32 %83, %79
  %shr196.i = lshr i32 %xor168.i, 16
  %idxprom198.i = and i32 %shr196.i, 255
  %arrayidx199.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom198.i
  %84 = ptrtoint ptr %arrayidx199.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx199.i, align 4
  %xor200.i = xor i32 %85, %81
  %shr202.i = lshr i32 %xor173.i, 16
  %idxprom204.i = and i32 %shr202.i, 255
  %arrayidx205.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom204.i
  %86 = ptrtoint ptr %arrayidx205.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx205.i, align 4
  %xor206.i = xor i32 %xor194.i, %87
  %shr208.i = lshr i32 %xor168.i, 8
  %idxprom210.i = and i32 %shr208.i, 255
  %arrayidx211.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom210.i
  %88 = ptrtoint ptr %arrayidx211.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx211.i, align 4
  %xor212.i = xor i32 %xor200.i, %89
  %shr214.i = lshr i32 %xor173.i, 8
  %idxprom216.i = and i32 %shr214.i, 255
  %arrayidx217.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom216.i
  %90 = ptrtoint ptr %arrayidx217.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx217.i, align 4
  %xor218.i = xor i32 %xor206.i, %91
  %idxprom221.i = and i32 %xor168.i, 255
  %arrayidx222.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom221.i
  %92 = ptrtoint ptr %arrayidx222.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx222.i, align 4
  %xor223.i = xor i32 %xor212.i, %93
  %xor224.i = xor i32 %xor218.i, %xor223.i
  %xor226.i = xor i32 %xor176.i, %xor224.i
  %or.i2140.i = tail call i32 @llvm.fshl.i32(i32 %xor223.i, i32 %xor223.i, i32 24) #5
  %xor229.i = xor i32 %xor179.i, %xor224.i
  %xor231.i = xor i32 %xor229.i, %or.i2140.i
  %arrayidx232.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 36
  %94 = ptrtoint ptr %arrayidx232.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx232.i, align 4
  %xor234.i = xor i32 %95, %xor168.i
  %arrayidx235.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 40
  %96 = ptrtoint ptr %arrayidx235.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx235.i, align 4
  %xor237.i = xor i32 %97, %xor173.i
  %idxprom240.i = and i32 %xor231.i, 255
  %arrayidx241.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom240.i
  %98 = ptrtoint ptr %arrayidx241.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx241.i, align 4
  %shr243.i = lshr i32 %xor226.i, 24
  %arrayidx246.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr243.i
  %100 = ptrtoint ptr %arrayidx246.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx246.i, align 4
  %shr248.i = lshr i32 %xor231.i, 24
  %arrayidx251.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr248.i
  %102 = ptrtoint ptr %arrayidx251.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx251.i, align 4
  %xor252.i = xor i32 %103, %99
  %shr254.i = lshr i32 %xor226.i, 16
  %idxprom256.i = and i32 %shr254.i, 255
  %arrayidx257.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom256.i
  %104 = ptrtoint ptr %arrayidx257.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx257.i, align 4
  %xor258.i = xor i32 %105, %101
  %shr260.i = lshr i32 %xor231.i, 16
  %idxprom262.i = and i32 %shr260.i, 255
  %arrayidx263.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom262.i
  %106 = ptrtoint ptr %arrayidx263.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx263.i, align 4
  %xor264.i = xor i32 %xor252.i, %107
  %shr266.i = lshr i32 %xor226.i, 8
  %idxprom268.i = and i32 %shr266.i, 255
  %arrayidx269.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom268.i
  %108 = ptrtoint ptr %arrayidx269.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx269.i, align 4
  %xor270.i = xor i32 %xor258.i, %109
  %shr272.i = lshr i32 %xor231.i, 8
  %idxprom274.i = and i32 %shr272.i, 255
  %arrayidx275.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom274.i
  %110 = ptrtoint ptr %arrayidx275.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx275.i, align 4
  %xor276.i = xor i32 %xor264.i, %111
  %idxprom279.i = and i32 %xor226.i, 255
  %arrayidx280.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom279.i
  %112 = ptrtoint ptr %arrayidx280.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx280.i, align 4
  %xor281.i = xor i32 %xor270.i, %113
  %xor282.i = xor i32 %xor276.i, %xor281.i
  %xor284.i = xor i32 %xor234.i, %xor282.i
  %or.i2141.i = tail call i32 @llvm.fshl.i32(i32 %xor281.i, i32 %xor281.i, i32 24) #5
  %xor287.i = xor i32 %xor237.i, %xor282.i
  %xor289.i = xor i32 %xor287.i, %or.i2141.i
  %arrayidx291.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 44
  %114 = ptrtoint ptr %arrayidx291.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx291.i, align 4
  %xor293.i = xor i32 %115, %xor226.i
  %arrayidx294.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 48
  %116 = ptrtoint ptr %arrayidx294.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx294.i, align 4
  %xor296.i = xor i32 %117, %xor231.i
  %idxprom299.i = and i32 %xor289.i, 255
  %arrayidx300.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom299.i
  %118 = ptrtoint ptr %arrayidx300.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx300.i, align 4
  %shr302.i = lshr i32 %xor284.i, 24
  %arrayidx305.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr302.i
  %120 = ptrtoint ptr %arrayidx305.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx305.i, align 4
  %shr307.i = lshr i32 %xor289.i, 24
  %arrayidx310.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr307.i
  %122 = ptrtoint ptr %arrayidx310.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx310.i, align 4
  %xor311.i = xor i32 %123, %119
  %shr313.i = lshr i32 %xor284.i, 16
  %idxprom315.i = and i32 %shr313.i, 255
  %arrayidx316.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom315.i
  %124 = ptrtoint ptr %arrayidx316.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx316.i, align 4
  %xor317.i = xor i32 %125, %121
  %shr319.i = lshr i32 %xor289.i, 16
  %idxprom321.i = and i32 %shr319.i, 255
  %arrayidx322.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom321.i
  %126 = ptrtoint ptr %arrayidx322.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx322.i, align 4
  %xor323.i = xor i32 %xor311.i, %127
  %shr325.i = lshr i32 %xor284.i, 8
  %idxprom327.i = and i32 %shr325.i, 255
  %arrayidx328.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom327.i
  %128 = ptrtoint ptr %arrayidx328.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx328.i, align 4
  %xor329.i = xor i32 %xor317.i, %129
  %shr331.i = lshr i32 %xor289.i, 8
  %idxprom333.i = and i32 %shr331.i, 255
  %arrayidx334.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom333.i
  %130 = ptrtoint ptr %arrayidx334.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx334.i, align 4
  %xor335.i = xor i32 %xor323.i, %131
  %idxprom338.i = and i32 %xor284.i, 255
  %arrayidx339.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom338.i
  %132 = ptrtoint ptr %arrayidx339.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx339.i, align 4
  %xor340.i = xor i32 %xor329.i, %133
  %xor341.i = xor i32 %xor335.i, %xor340.i
  %xor343.i = xor i32 %xor293.i, %xor341.i
  %or.i2142.i = tail call i32 @llvm.fshl.i32(i32 %xor340.i, i32 %xor340.i, i32 24) #5
  %xor346.i = xor i32 %xor296.i, %xor341.i
  %xor348.i = xor i32 %xor346.i, %or.i2142.i
  %arrayidx350.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 52
  %134 = ptrtoint ptr %arrayidx350.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx350.i, align 4
  %arrayidx351.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 64
  %136 = ptrtoint ptr %arrayidx351.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx351.i, align 4
  %and.i = and i32 %xor343.i, %135
  %or.i = or i32 %137, %xor289.i
  %xor355.i = xor i32 %or.i, %xor284.i
  %or.i2143.i = tail call i32 @llvm.fshl.i32(i32 %and.i, i32 %and.i, i32 1) #5
  %xor358.i = xor i32 %xor348.i, %or.i2143.i
  %arrayidx359.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 60
  %138 = ptrtoint ptr %arrayidx359.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx359.i, align 4
  %arrayidx360.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 56
  %140 = ptrtoint ptr %arrayidx360.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx360.i, align 4
  %and362.i = and i32 %xor355.i, %139
  %or364.i = or i32 %xor358.i, %141
  %xor366.i = xor i32 %or364.i, %xor343.i
  %or.i2144.i = tail call i32 @llvm.fshl.i32(i32 %and362.i, i32 %and362.i, i32 1) #5
  %xor370.i = xor i32 %or.i2144.i, %xor289.i
  %arrayidx371.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 68
  %142 = ptrtoint ptr %arrayidx371.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx371.i, align 4
  %xor373.i = xor i32 %143, %xor355.i
  %arrayidx374.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 72
  %144 = ptrtoint ptr %arrayidx374.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx374.i, align 4
  %xor376.i = xor i32 %xor370.i, %145
  %idxprom379.i = and i32 %xor358.i, 255
  %arrayidx380.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom379.i
  %146 = ptrtoint ptr %arrayidx380.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx380.i, align 4
  %shr382.i = lshr i32 %xor366.i, 24
  %arrayidx385.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr382.i
  %148 = ptrtoint ptr %arrayidx385.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx385.i, align 4
  %shr387.i = lshr i32 %xor358.i, 24
  %arrayidx390.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr387.i
  %150 = ptrtoint ptr %arrayidx390.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx390.i, align 4
  %xor391.i = xor i32 %151, %147
  %shr393.i = lshr i32 %xor366.i, 16
  %idxprom395.i = and i32 %shr393.i, 255
  %arrayidx396.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom395.i
  %152 = ptrtoint ptr %arrayidx396.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx396.i, align 4
  %xor397.i = xor i32 %153, %149
  %shr399.i = lshr i32 %xor358.i, 16
  %idxprom401.i = and i32 %shr399.i, 255
  %arrayidx402.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom401.i
  %154 = ptrtoint ptr %arrayidx402.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx402.i, align 4
  %xor403.i = xor i32 %xor391.i, %155
  %shr405.i = lshr i32 %xor366.i, 8
  %idxprom407.i = and i32 %shr405.i, 255
  %arrayidx408.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom407.i
  %156 = ptrtoint ptr %arrayidx408.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx408.i, align 4
  %xor409.i = xor i32 %xor397.i, %157
  %shr411.i = lshr i32 %xor358.i, 8
  %idxprom413.i = and i32 %shr411.i, 255
  %arrayidx414.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom413.i
  %158 = ptrtoint ptr %arrayidx414.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx414.i, align 4
  %xor415.i = xor i32 %xor403.i, %159
  %idxprom418.i = and i32 %xor366.i, 255
  %arrayidx419.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom418.i
  %160 = ptrtoint ptr %arrayidx419.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx419.i, align 4
  %xor420.i = xor i32 %xor409.i, %161
  %xor421.i = xor i32 %xor415.i, %xor420.i
  %xor423.i = xor i32 %xor373.i, %xor421.i
  %or.i2145.i = tail call i32 @llvm.fshl.i32(i32 %xor420.i, i32 %xor420.i, i32 24) #5
  %xor426.i = xor i32 %xor376.i, %xor421.i
  %xor428.i = xor i32 %xor426.i, %or.i2145.i
  %arrayidx429.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 76
  %162 = ptrtoint ptr %arrayidx429.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx429.i, align 4
  %xor431.i = xor i32 %163, %xor366.i
  %arrayidx432.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 80
  %164 = ptrtoint ptr %arrayidx432.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx432.i, align 4
  %xor434.i = xor i32 %165, %xor358.i
  %idxprom437.i = and i32 %xor428.i, 255
  %arrayidx438.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom437.i
  %166 = ptrtoint ptr %arrayidx438.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx438.i, align 4
  %shr440.i = lshr i32 %xor423.i, 24
  %arrayidx443.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr440.i
  %168 = ptrtoint ptr %arrayidx443.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx443.i, align 4
  %shr445.i = lshr i32 %xor428.i, 24
  %arrayidx448.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr445.i
  %170 = ptrtoint ptr %arrayidx448.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx448.i, align 4
  %xor449.i = xor i32 %171, %167
  %shr451.i = lshr i32 %xor423.i, 16
  %idxprom453.i = and i32 %shr451.i, 255
  %arrayidx454.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom453.i
  %172 = ptrtoint ptr %arrayidx454.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx454.i, align 4
  %xor455.i = xor i32 %173, %169
  %shr457.i = lshr i32 %xor428.i, 16
  %idxprom459.i = and i32 %shr457.i, 255
  %arrayidx460.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom459.i
  %174 = ptrtoint ptr %arrayidx460.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx460.i, align 4
  %xor461.i = xor i32 %xor449.i, %175
  %shr463.i = lshr i32 %xor423.i, 8
  %idxprom465.i = and i32 %shr463.i, 255
  %arrayidx466.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom465.i
  %176 = ptrtoint ptr %arrayidx466.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx466.i, align 4
  %xor467.i = xor i32 %xor455.i, %177
  %shr469.i = lshr i32 %xor428.i, 8
  %idxprom471.i = and i32 %shr469.i, 255
  %arrayidx472.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom471.i
  %178 = ptrtoint ptr %arrayidx472.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx472.i, align 4
  %xor473.i = xor i32 %xor461.i, %179
  %idxprom476.i = and i32 %xor423.i, 255
  %arrayidx477.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom476.i
  %180 = ptrtoint ptr %arrayidx477.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx477.i, align 4
  %xor478.i = xor i32 %xor467.i, %181
  %xor479.i = xor i32 %xor473.i, %xor478.i
  %xor481.i = xor i32 %xor431.i, %xor479.i
  %or.i2146.i = tail call i32 @llvm.fshl.i32(i32 %xor478.i, i32 %xor478.i, i32 24) #5
  %xor484.i = xor i32 %xor434.i, %xor479.i
  %xor486.i = xor i32 %xor484.i, %or.i2146.i
  %arrayidx487.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 84
  %182 = ptrtoint ptr %arrayidx487.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx487.i, align 4
  %xor489.i = xor i32 %183, %xor423.i
  %arrayidx490.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 88
  %184 = ptrtoint ptr %arrayidx490.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx490.i, align 4
  %xor492.i = xor i32 %185, %xor428.i
  %idxprom495.i = and i32 %xor486.i, 255
  %arrayidx496.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom495.i
  %186 = ptrtoint ptr %arrayidx496.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx496.i, align 4
  %shr498.i = lshr i32 %xor481.i, 24
  %arrayidx501.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr498.i
  %188 = ptrtoint ptr %arrayidx501.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx501.i, align 4
  %shr503.i = lshr i32 %xor486.i, 24
  %arrayidx506.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr503.i
  %190 = ptrtoint ptr %arrayidx506.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx506.i, align 4
  %xor507.i = xor i32 %191, %187
  %shr509.i = lshr i32 %xor481.i, 16
  %idxprom511.i = and i32 %shr509.i, 255
  %arrayidx512.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom511.i
  %192 = ptrtoint ptr %arrayidx512.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx512.i, align 4
  %xor513.i = xor i32 %193, %189
  %shr515.i = lshr i32 %xor486.i, 16
  %idxprom517.i = and i32 %shr515.i, 255
  %arrayidx518.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom517.i
  %194 = ptrtoint ptr %arrayidx518.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx518.i, align 4
  %xor519.i = xor i32 %xor507.i, %195
  %shr521.i = lshr i32 %xor481.i, 8
  %idxprom523.i = and i32 %shr521.i, 255
  %arrayidx524.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom523.i
  %196 = ptrtoint ptr %arrayidx524.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx524.i, align 4
  %xor525.i = xor i32 %xor513.i, %197
  %shr527.i = lshr i32 %xor486.i, 8
  %idxprom529.i = and i32 %shr527.i, 255
  %arrayidx530.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom529.i
  %198 = ptrtoint ptr %arrayidx530.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx530.i, align 4
  %xor531.i = xor i32 %xor519.i, %199
  %idxprom534.i = and i32 %xor481.i, 255
  %arrayidx535.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom534.i
  %200 = ptrtoint ptr %arrayidx535.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx535.i, align 4
  %xor536.i = xor i32 %xor525.i, %201
  %xor537.i = xor i32 %xor531.i, %xor536.i
  %xor539.i = xor i32 %xor489.i, %xor537.i
  %or.i2147.i = tail call i32 @llvm.fshl.i32(i32 %xor536.i, i32 %xor536.i, i32 24) #5
  %xor542.i = xor i32 %xor492.i, %xor537.i
  %xor544.i = xor i32 %xor542.i, %or.i2147.i
  %arrayidx545.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 92
  %202 = ptrtoint ptr %arrayidx545.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx545.i, align 4
  %xor547.i = xor i32 %203, %xor481.i
  %arrayidx548.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 96
  %204 = ptrtoint ptr %arrayidx548.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx548.i, align 4
  %xor550.i = xor i32 %205, %xor486.i
  %idxprom553.i = and i32 %xor544.i, 255
  %arrayidx554.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom553.i
  %206 = ptrtoint ptr %arrayidx554.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx554.i, align 4
  %shr556.i = lshr i32 %xor539.i, 24
  %arrayidx559.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr556.i
  %208 = ptrtoint ptr %arrayidx559.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx559.i, align 4
  %shr561.i = lshr i32 %xor544.i, 24
  %arrayidx564.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr561.i
  %210 = ptrtoint ptr %arrayidx564.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx564.i, align 4
  %xor565.i = xor i32 %211, %207
  %shr567.i = lshr i32 %xor539.i, 16
  %idxprom569.i = and i32 %shr567.i, 255
  %arrayidx570.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom569.i
  %212 = ptrtoint ptr %arrayidx570.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx570.i, align 4
  %xor571.i = xor i32 %213, %209
  %shr573.i = lshr i32 %xor544.i, 16
  %idxprom575.i = and i32 %shr573.i, 255
  %arrayidx576.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom575.i
  %214 = ptrtoint ptr %arrayidx576.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx576.i, align 4
  %xor577.i = xor i32 %xor565.i, %215
  %shr579.i = lshr i32 %xor539.i, 8
  %idxprom581.i = and i32 %shr579.i, 255
  %arrayidx582.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom581.i
  %216 = ptrtoint ptr %arrayidx582.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx582.i, align 4
  %xor583.i = xor i32 %xor571.i, %217
  %shr585.i = lshr i32 %xor544.i, 8
  %idxprom587.i = and i32 %shr585.i, 255
  %arrayidx588.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom587.i
  %218 = ptrtoint ptr %arrayidx588.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx588.i, align 4
  %xor589.i = xor i32 %xor577.i, %219
  %idxprom592.i = and i32 %xor539.i, 255
  %arrayidx593.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom592.i
  %220 = ptrtoint ptr %arrayidx593.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx593.i, align 4
  %xor594.i = xor i32 %xor583.i, %221
  %xor595.i = xor i32 %xor589.i, %xor594.i
  %xor597.i = xor i32 %xor547.i, %xor595.i
  %or.i2148.i = tail call i32 @llvm.fshl.i32(i32 %xor594.i, i32 %xor594.i, i32 24) #5
  %xor600.i = xor i32 %xor550.i, %xor595.i
  %xor602.i = xor i32 %xor600.i, %or.i2148.i
  %arrayidx603.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 100
  %222 = ptrtoint ptr %arrayidx603.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx603.i, align 4
  %xor605.i = xor i32 %223, %xor539.i
  %arrayidx606.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 104
  %224 = ptrtoint ptr %arrayidx606.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx606.i, align 4
  %xor608.i = xor i32 %225, %xor544.i
  %idxprom611.i = and i32 %xor602.i, 255
  %arrayidx612.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom611.i
  %226 = ptrtoint ptr %arrayidx612.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx612.i, align 4
  %shr614.i = lshr i32 %xor597.i, 24
  %arrayidx617.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr614.i
  %228 = ptrtoint ptr %arrayidx617.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx617.i, align 4
  %shr619.i = lshr i32 %xor602.i, 24
  %arrayidx622.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr619.i
  %230 = ptrtoint ptr %arrayidx622.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx622.i, align 4
  %xor623.i = xor i32 %231, %227
  %shr625.i = lshr i32 %xor597.i, 16
  %idxprom627.i = and i32 %shr625.i, 255
  %arrayidx628.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom627.i
  %232 = ptrtoint ptr %arrayidx628.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx628.i, align 4
  %xor629.i = xor i32 %233, %229
  %shr631.i = lshr i32 %xor602.i, 16
  %idxprom633.i = and i32 %shr631.i, 255
  %arrayidx634.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom633.i
  %234 = ptrtoint ptr %arrayidx634.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx634.i, align 4
  %xor635.i = xor i32 %xor623.i, %235
  %shr637.i = lshr i32 %xor597.i, 8
  %idxprom639.i = and i32 %shr637.i, 255
  %arrayidx640.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom639.i
  %236 = ptrtoint ptr %arrayidx640.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx640.i, align 4
  %xor641.i = xor i32 %xor629.i, %237
  %shr643.i = lshr i32 %xor602.i, 8
  %idxprom645.i = and i32 %shr643.i, 255
  %arrayidx646.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom645.i
  %238 = ptrtoint ptr %arrayidx646.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx646.i, align 4
  %xor647.i = xor i32 %xor635.i, %239
  %idxprom650.i = and i32 %xor597.i, 255
  %arrayidx651.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom650.i
  %240 = ptrtoint ptr %arrayidx651.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx651.i, align 4
  %xor652.i = xor i32 %xor641.i, %241
  %xor653.i = xor i32 %xor647.i, %xor652.i
  %xor655.i = xor i32 %xor605.i, %xor653.i
  %or.i2149.i = tail call i32 @llvm.fshl.i32(i32 %xor652.i, i32 %xor652.i, i32 24) #5
  %xor658.i = xor i32 %xor608.i, %xor653.i
  %xor660.i = xor i32 %xor658.i, %or.i2149.i
  %arrayidx662.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 108
  %242 = ptrtoint ptr %arrayidx662.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx662.i, align 4
  %xor664.i = xor i32 %243, %xor597.i
  %arrayidx665.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2
  %244 = ptrtoint ptr %arrayidx665.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx665.i, align 4
  %xor667.i = xor i32 %245, %xor602.i
  %idxprom670.i = and i32 %xor660.i, 255
  %arrayidx671.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom670.i
  %246 = ptrtoint ptr %arrayidx671.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx671.i, align 4
  %shr673.i = lshr i32 %xor655.i, 24
  %arrayidx676.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr673.i
  %248 = ptrtoint ptr %arrayidx676.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx676.i, align 4
  %shr678.i = lshr i32 %xor660.i, 24
  %arrayidx681.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr678.i
  %250 = ptrtoint ptr %arrayidx681.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx681.i, align 4
  %xor682.i = xor i32 %251, %247
  %shr684.i = lshr i32 %xor655.i, 16
  %idxprom686.i = and i32 %shr684.i, 255
  %arrayidx687.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom686.i
  %252 = ptrtoint ptr %arrayidx687.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx687.i, align 4
  %xor688.i = xor i32 %253, %249
  %shr690.i = lshr i32 %xor660.i, 16
  %idxprom692.i = and i32 %shr690.i, 255
  %arrayidx693.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom692.i
  %254 = ptrtoint ptr %arrayidx693.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx693.i, align 4
  %xor694.i = xor i32 %xor682.i, %255
  %shr696.i = lshr i32 %xor655.i, 8
  %idxprom698.i = and i32 %shr696.i, 255
  %arrayidx699.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom698.i
  %256 = ptrtoint ptr %arrayidx699.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx699.i, align 4
  %xor700.i = xor i32 %xor688.i, %257
  %shr702.i = lshr i32 %xor660.i, 8
  %idxprom704.i = and i32 %shr702.i, 255
  %arrayidx705.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom704.i
  %258 = ptrtoint ptr %arrayidx705.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx705.i, align 4
  %xor706.i = xor i32 %xor694.i, %259
  %idxprom709.i = and i32 %xor655.i, 255
  %arrayidx710.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom709.i
  %260 = ptrtoint ptr %arrayidx710.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx710.i, align 4
  %xor711.i = xor i32 %xor700.i, %261
  %xor712.i = xor i32 %xor706.i, %xor711.i
  %xor714.i = xor i32 %xor664.i, %xor712.i
  %or.i2150.i = tail call i32 @llvm.fshl.i32(i32 %xor711.i, i32 %xor711.i, i32 24) #5
  %xor717.i = xor i32 %xor667.i, %xor712.i
  %xor719.i = xor i32 %xor717.i, %or.i2150.i
  %arrayidx721.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 1
  %262 = ptrtoint ptr %arrayidx721.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx721.i, align 4
  %arrayidx722.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4
  %264 = ptrtoint ptr %arrayidx722.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx722.i, align 4
  %and724.i = and i32 %xor714.i, %263
  %or726.i = or i32 %265, %xor660.i
  %xor728.i = xor i32 %or726.i, %xor655.i
  %or.i2151.i = tail call i32 @llvm.fshl.i32(i32 %and724.i, i32 %and724.i, i32 1) #5
  %xor731.i = xor i32 %xor719.i, %or.i2151.i
  %arrayidx732.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 3
  %266 = ptrtoint ptr %arrayidx732.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx732.i, align 4
  %arrayidx733.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 2
  %268 = ptrtoint ptr %arrayidx733.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx733.i, align 4
  %and735.i = and i32 %xor728.i, %267
  %or737.i = or i32 %xor731.i, %269
  %xor739.i = xor i32 %or737.i, %xor714.i
  %or.i2152.i = tail call i32 @llvm.fshl.i32(i32 %and735.i, i32 %and735.i, i32 1) #5
  %xor743.i = xor i32 %or.i2152.i, %xor660.i
  %arrayidx744.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 4
  %270 = ptrtoint ptr %arrayidx744.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx744.i, align 4
  %xor746.i = xor i32 %271, %xor728.i
  %arrayidx747.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 8
  %272 = ptrtoint ptr %arrayidx747.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx747.i, align 4
  %xor749.i = xor i32 %xor743.i, %273
  %idxprom752.i = and i32 %xor731.i, 255
  %arrayidx753.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom752.i
  %274 = ptrtoint ptr %arrayidx753.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx753.i, align 4
  %shr755.i = lshr i32 %xor739.i, 24
  %arrayidx758.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr755.i
  %276 = ptrtoint ptr %arrayidx758.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx758.i, align 4
  %shr760.i = lshr i32 %xor731.i, 24
  %arrayidx763.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr760.i
  %278 = ptrtoint ptr %arrayidx763.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx763.i, align 4
  %xor764.i = xor i32 %279, %275
  %shr766.i = lshr i32 %xor739.i, 16
  %idxprom768.i = and i32 %shr766.i, 255
  %arrayidx769.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom768.i
  %280 = ptrtoint ptr %arrayidx769.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx769.i, align 4
  %xor770.i = xor i32 %281, %277
  %shr772.i = lshr i32 %xor731.i, 16
  %idxprom774.i = and i32 %shr772.i, 255
  %arrayidx775.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom774.i
  %282 = ptrtoint ptr %arrayidx775.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx775.i, align 4
  %xor776.i = xor i32 %xor764.i, %283
  %shr778.i = lshr i32 %xor739.i, 8
  %idxprom780.i = and i32 %shr778.i, 255
  %arrayidx781.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom780.i
  %284 = ptrtoint ptr %arrayidx781.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx781.i, align 4
  %xor782.i = xor i32 %xor770.i, %285
  %shr784.i = lshr i32 %xor731.i, 8
  %idxprom786.i = and i32 %shr784.i, 255
  %arrayidx787.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom786.i
  %286 = ptrtoint ptr %arrayidx787.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %arrayidx787.i, align 4
  %xor788.i = xor i32 %xor776.i, %287
  %idxprom791.i = and i32 %xor739.i, 255
  %arrayidx792.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom791.i
  %288 = ptrtoint ptr %arrayidx792.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %arrayidx792.i, align 4
  %xor793.i = xor i32 %xor782.i, %289
  %xor794.i = xor i32 %xor788.i, %xor793.i
  %xor796.i = xor i32 %xor746.i, %xor794.i
  %or.i2153.i = tail call i32 @llvm.fshl.i32(i32 %xor793.i, i32 %xor793.i, i32 24) #5
  %xor799.i = xor i32 %xor749.i, %xor794.i
  %xor801.i = xor i32 %xor799.i, %or.i2153.i
  %arrayidx802.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 12
  %290 = ptrtoint ptr %arrayidx802.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx802.i, align 4
  %xor804.i = xor i32 %291, %xor739.i
  %arrayidx805.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 16
  %292 = ptrtoint ptr %arrayidx805.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %arrayidx805.i, align 4
  %xor807.i = xor i32 %293, %xor731.i
  %idxprom810.i = and i32 %xor801.i, 255
  %arrayidx811.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom810.i
  %294 = ptrtoint ptr %arrayidx811.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %arrayidx811.i, align 4
  %shr813.i = lshr i32 %xor796.i, 24
  %arrayidx816.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr813.i
  %296 = ptrtoint ptr %arrayidx816.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx816.i, align 4
  %shr818.i = lshr i32 %xor801.i, 24
  %arrayidx821.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr818.i
  %298 = ptrtoint ptr %arrayidx821.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx821.i, align 4
  %xor822.i = xor i32 %299, %295
  %shr824.i = lshr i32 %xor796.i, 16
  %idxprom826.i = and i32 %shr824.i, 255
  %arrayidx827.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom826.i
  %300 = ptrtoint ptr %arrayidx827.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %arrayidx827.i, align 4
  %xor828.i = xor i32 %301, %297
  %shr830.i = lshr i32 %xor801.i, 16
  %idxprom832.i = and i32 %shr830.i, 255
  %arrayidx833.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom832.i
  %302 = ptrtoint ptr %arrayidx833.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %arrayidx833.i, align 4
  %xor834.i = xor i32 %xor822.i, %303
  %shr836.i = lshr i32 %xor796.i, 8
  %idxprom838.i = and i32 %shr836.i, 255
  %arrayidx839.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom838.i
  %304 = ptrtoint ptr %arrayidx839.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %arrayidx839.i, align 4
  %xor840.i = xor i32 %xor828.i, %305
  %shr842.i = lshr i32 %xor801.i, 8
  %idxprom844.i = and i32 %shr842.i, 255
  %arrayidx845.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom844.i
  %306 = ptrtoint ptr %arrayidx845.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %arrayidx845.i, align 4
  %xor846.i = xor i32 %xor834.i, %307
  %idxprom849.i = and i32 %xor796.i, 255
  %arrayidx850.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom849.i
  %308 = ptrtoint ptr %arrayidx850.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %arrayidx850.i, align 4
  %xor851.i = xor i32 %xor840.i, %309
  %xor852.i = xor i32 %xor846.i, %xor851.i
  %xor854.i = xor i32 %xor804.i, %xor852.i
  %or.i2154.i = tail call i32 @llvm.fshl.i32(i32 %xor851.i, i32 %xor851.i, i32 24) #5
  %xor857.i = xor i32 %xor807.i, %xor852.i
  %xor859.i = xor i32 %xor857.i, %or.i2154.i
  %arrayidx860.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 20
  %310 = ptrtoint ptr %arrayidx860.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx860.i, align 4
  %xor862.i = xor i32 %311, %xor796.i
  %arrayidx863.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 24
  %312 = ptrtoint ptr %arrayidx863.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %arrayidx863.i, align 4
  %xor865.i = xor i32 %313, %xor801.i
  %idxprom868.i = and i32 %xor859.i, 255
  %arrayidx869.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom868.i
  %314 = ptrtoint ptr %arrayidx869.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx869.i, align 4
  %shr871.i = lshr i32 %xor854.i, 24
  %arrayidx874.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr871.i
  %316 = ptrtoint ptr %arrayidx874.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %arrayidx874.i, align 4
  %shr876.i = lshr i32 %xor859.i, 24
  %arrayidx879.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr876.i
  %318 = ptrtoint ptr %arrayidx879.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %arrayidx879.i, align 4
  %xor880.i = xor i32 %319, %315
  %shr882.i = lshr i32 %xor854.i, 16
  %idxprom884.i = and i32 %shr882.i, 255
  %arrayidx885.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom884.i
  %320 = ptrtoint ptr %arrayidx885.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %arrayidx885.i, align 4
  %xor886.i = xor i32 %321, %317
  %shr888.i = lshr i32 %xor859.i, 16
  %idxprom890.i = and i32 %shr888.i, 255
  %arrayidx891.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom890.i
  %322 = ptrtoint ptr %arrayidx891.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %arrayidx891.i, align 4
  %xor892.i = xor i32 %xor880.i, %323
  %shr894.i = lshr i32 %xor854.i, 8
  %idxprom896.i = and i32 %shr894.i, 255
  %arrayidx897.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom896.i
  %324 = ptrtoint ptr %arrayidx897.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %arrayidx897.i, align 4
  %xor898.i = xor i32 %xor886.i, %325
  %shr900.i = lshr i32 %xor859.i, 8
  %idxprom902.i = and i32 %shr900.i, 255
  %arrayidx903.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom902.i
  %326 = ptrtoint ptr %arrayidx903.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %arrayidx903.i, align 4
  %xor904.i = xor i32 %xor892.i, %327
  %idxprom907.i = and i32 %xor854.i, 255
  %arrayidx908.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom907.i
  %328 = ptrtoint ptr %arrayidx908.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %arrayidx908.i, align 4
  %xor909.i = xor i32 %xor898.i, %329
  %xor910.i = xor i32 %xor904.i, %xor909.i
  %xor912.i = xor i32 %xor862.i, %xor910.i
  %or.i2155.i = tail call i32 @llvm.fshl.i32(i32 %xor909.i, i32 %xor909.i, i32 24) #5
  %xor915.i = xor i32 %xor865.i, %xor910.i
  %xor917.i = xor i32 %xor915.i, %or.i2155.i
  %arrayidx918.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 28
  %330 = ptrtoint ptr %arrayidx918.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %arrayidx918.i, align 4
  %xor920.i = xor i32 %331, %xor854.i
  %arrayidx921.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %332 = ptrtoint ptr %arrayidx921.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %arrayidx921.i, align 4
  %xor923.i = xor i32 %333, %xor859.i
  %idxprom926.i = and i32 %xor917.i, 255
  %arrayidx927.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom926.i
  %334 = ptrtoint ptr %arrayidx927.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %arrayidx927.i, align 4
  %shr929.i = lshr i32 %xor912.i, 24
  %arrayidx932.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr929.i
  %336 = ptrtoint ptr %arrayidx932.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %arrayidx932.i, align 4
  %shr934.i = lshr i32 %xor917.i, 24
  %arrayidx937.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr934.i
  %338 = ptrtoint ptr %arrayidx937.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %arrayidx937.i, align 4
  %xor938.i = xor i32 %339, %335
  %shr940.i = lshr i32 %xor912.i, 16
  %idxprom942.i = and i32 %shr940.i, 255
  %arrayidx943.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom942.i
  %340 = ptrtoint ptr %arrayidx943.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %arrayidx943.i, align 4
  %xor944.i = xor i32 %341, %337
  %shr946.i = lshr i32 %xor917.i, 16
  %idxprom948.i = and i32 %shr946.i, 255
  %arrayidx949.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom948.i
  %342 = ptrtoint ptr %arrayidx949.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %arrayidx949.i, align 4
  %xor950.i = xor i32 %xor938.i, %343
  %shr952.i = lshr i32 %xor912.i, 8
  %idxprom954.i = and i32 %shr952.i, 255
  %arrayidx955.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom954.i
  %344 = ptrtoint ptr %arrayidx955.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %arrayidx955.i, align 4
  %xor956.i = xor i32 %xor944.i, %345
  %shr958.i = lshr i32 %xor917.i, 8
  %idxprom960.i = and i32 %shr958.i, 255
  %arrayidx961.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom960.i
  %346 = ptrtoint ptr %arrayidx961.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %arrayidx961.i, align 4
  %xor962.i = xor i32 %xor950.i, %347
  %idxprom965.i = and i32 %xor912.i, 255
  %arrayidx966.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom965.i
  %348 = ptrtoint ptr %arrayidx966.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %arrayidx966.i, align 4
  %xor967.i = xor i32 %xor956.i, %349
  %xor968.i = xor i32 %xor962.i, %xor967.i
  %xor970.i = xor i32 %xor920.i, %xor968.i
  %or.i2156.i = tail call i32 @llvm.fshl.i32(i32 %xor967.i, i32 %xor967.i, i32 24) #5
  %xor973.i = xor i32 %xor923.i, %xor968.i
  %xor975.i = xor i32 %xor973.i, %or.i2156.i
  %arrayidx976.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %350 = ptrtoint ptr %arrayidx976.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %arrayidx976.i, align 4
  %xor978.i = xor i32 %351, %xor912.i
  %arrayidx979.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %352 = ptrtoint ptr %arrayidx979.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %arrayidx979.i, align 4
  %xor981.i = xor i32 %353, %xor917.i
  %idxprom984.i = and i32 %xor975.i, 255
  %arrayidx985.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom984.i
  %354 = ptrtoint ptr %arrayidx985.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %arrayidx985.i, align 4
  %shr987.i = lshr i32 %xor970.i, 24
  %arrayidx990.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr987.i
  %356 = ptrtoint ptr %arrayidx990.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %arrayidx990.i, align 4
  %shr992.i = lshr i32 %xor975.i, 24
  %arrayidx995.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr992.i
  %358 = ptrtoint ptr %arrayidx995.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %arrayidx995.i, align 4
  %xor996.i = xor i32 %359, %355
  %shr998.i = lshr i32 %xor970.i, 16
  %idxprom1000.i = and i32 %shr998.i, 255
  %arrayidx1001.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom1000.i
  %360 = ptrtoint ptr %arrayidx1001.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %arrayidx1001.i, align 4
  %xor1002.i = xor i32 %361, %357
  %shr1004.i = lshr i32 %xor975.i, 16
  %idxprom1006.i = and i32 %shr1004.i, 255
  %arrayidx1007.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1006.i
  %362 = ptrtoint ptr %arrayidx1007.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %arrayidx1007.i, align 4
  %xor1008.i = xor i32 %xor996.i, %363
  %shr1010.i = lshr i32 %xor970.i, 8
  %idxprom1012.i = and i32 %shr1010.i, 255
  %arrayidx1013.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1012.i
  %364 = ptrtoint ptr %arrayidx1013.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %arrayidx1013.i, align 4
  %xor1014.i = xor i32 %xor1002.i, %365
  %shr1016.i = lshr i32 %xor975.i, 8
  %idxprom1018.i = and i32 %shr1016.i, 255
  %arrayidx1019.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1018.i
  %366 = ptrtoint ptr %arrayidx1019.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %arrayidx1019.i, align 4
  %xor1020.i = xor i32 %xor1008.i, %367
  %idxprom1023.i = and i32 %xor970.i, 255
  %arrayidx1024.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1023.i
  %368 = ptrtoint ptr %arrayidx1024.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %arrayidx1024.i, align 4
  %xor1025.i = xor i32 %xor1014.i, %369
  %xor1026.i = xor i32 %xor1020.i, %xor1025.i
  %xor1028.i = xor i32 %xor978.i, %xor1026.i
  %or.i2157.i = tail call i32 @llvm.fshl.i32(i32 %xor1025.i, i32 %xor1025.i, i32 24) #5
  %xor1031.i = xor i32 %xor981.i, %xor1026.i
  %xor1033.i = xor i32 %xor1031.i, %or.i2157.i
  %arrayidx1035.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %370 = ptrtoint ptr %arrayidx1035.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %arrayidx1035.i, align 4
  %xor1037.i = xor i32 %371, %xor970.i
  %arrayidx1038.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %372 = ptrtoint ptr %arrayidx1038.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %arrayidx1038.i, align 4
  %xor1040.i = xor i32 %373, %xor975.i
  %idxprom1043.i = and i32 %xor1033.i, 255
  %arrayidx1044.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom1043.i
  %374 = ptrtoint ptr %arrayidx1044.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %arrayidx1044.i, align 4
  %shr1046.i = lshr i32 %xor1028.i, 24
  %arrayidx1049.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr1046.i
  %376 = ptrtoint ptr %arrayidx1049.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %arrayidx1049.i, align 4
  %shr1051.i = lshr i32 %xor1033.i, 24
  %arrayidx1054.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr1051.i
  %378 = ptrtoint ptr %arrayidx1054.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %arrayidx1054.i, align 4
  %xor1055.i = xor i32 %379, %375
  %shr1057.i = lshr i32 %xor1028.i, 16
  %idxprom1059.i = and i32 %shr1057.i, 255
  %arrayidx1060.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom1059.i
  %380 = ptrtoint ptr %arrayidx1060.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %arrayidx1060.i, align 4
  %xor1061.i = xor i32 %381, %377
  %shr1063.i = lshr i32 %xor1033.i, 16
  %idxprom1065.i = and i32 %shr1063.i, 255
  %arrayidx1066.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1065.i
  %382 = ptrtoint ptr %arrayidx1066.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %arrayidx1066.i, align 4
  %xor1067.i = xor i32 %xor1055.i, %383
  %shr1069.i = lshr i32 %xor1028.i, 8
  %idxprom1071.i = and i32 %shr1069.i, 255
  %arrayidx1072.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1071.i
  %384 = ptrtoint ptr %arrayidx1072.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %arrayidx1072.i, align 4
  %xor1073.i = xor i32 %xor1061.i, %385
  %shr1075.i = lshr i32 %xor1033.i, 8
  %idxprom1077.i = and i32 %shr1075.i, 255
  %arrayidx1078.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1077.i
  %386 = ptrtoint ptr %arrayidx1078.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %arrayidx1078.i, align 4
  %xor1079.i = xor i32 %xor1067.i, %387
  %idxprom1082.i = and i32 %xor1028.i, 255
  %arrayidx1083.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1082.i
  %388 = ptrtoint ptr %arrayidx1083.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %arrayidx1083.i, align 4
  %xor1084.i = xor i32 %xor1073.i, %389
  %xor1085.i = xor i32 %xor1079.i, %xor1084.i
  %xor1087.i = xor i32 %xor1037.i, %xor1085.i
  %or.i2158.i = tail call i32 @llvm.fshl.i32(i32 %xor1084.i, i32 %xor1084.i, i32 24) #5
  %xor1090.i = xor i32 %xor1040.i, %xor1085.i
  %xor1092.i = xor i32 %xor1090.i, %or.i2158.i
  br i1 %cmp, label %entry.camellia_do_encrypt.exit_crit_edge, label %if.then.i

entry.camellia_do_encrypt.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %camellia_do_encrypt.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx1095.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 52
  %390 = ptrtoint ptr %arrayidx1095.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %arrayidx1095.i, align 4
  %arrayidx1096.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 64
  %392 = ptrtoint ptr %arrayidx1096.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %arrayidx1096.i, align 4
  %and1098.i = and i32 %391, %xor1087.i
  %or1100.i = or i32 %393, %xor1033.i
  %xor1102.i = xor i32 %or1100.i, %xor1028.i
  %or.i2159.i = tail call i32 @llvm.fshl.i32(i32 %and1098.i, i32 %and1098.i, i32 1) #5
  %xor1105.i = xor i32 %or.i2159.i, %xor1092.i
  %arrayidx1106.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 60
  %394 = ptrtoint ptr %arrayidx1106.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %arrayidx1106.i, align 4
  %arrayidx1107.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 56
  %396 = ptrtoint ptr %arrayidx1107.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %arrayidx1107.i, align 4
  %and1109.i = and i32 %xor1102.i, %395
  %or1111.i = or i32 %397, %xor1105.i
  %xor1113.i = xor i32 %or1111.i, %xor1087.i
  %or.i2160.i = tail call i32 @llvm.fshl.i32(i32 %and1109.i, i32 %and1109.i, i32 1) #5
  %xor1117.i = xor i32 %or.i2160.i, %xor1033.i
  %arrayidx1118.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 68
  %398 = ptrtoint ptr %arrayidx1118.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %arrayidx1118.i, align 4
  %xor1120.i = xor i32 %399, %xor1102.i
  %arrayidx1121.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 72
  %400 = ptrtoint ptr %arrayidx1121.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %arrayidx1121.i, align 4
  %xor1123.i = xor i32 %xor1117.i, %401
  %idxprom1126.i = and i32 %xor1105.i, 255
  %arrayidx1127.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom1126.i
  %402 = ptrtoint ptr %arrayidx1127.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %arrayidx1127.i, align 4
  %shr1129.i = lshr i32 %xor1113.i, 24
  %arrayidx1132.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr1129.i
  %404 = ptrtoint ptr %arrayidx1132.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %arrayidx1132.i, align 4
  %shr1134.i = lshr i32 %xor1105.i, 24
  %arrayidx1137.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr1134.i
  %406 = ptrtoint ptr %arrayidx1137.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %arrayidx1137.i, align 4
  %xor1138.i = xor i32 %407, %403
  %shr1140.i = lshr i32 %xor1113.i, 16
  %idxprom1142.i = and i32 %shr1140.i, 255
  %arrayidx1143.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom1142.i
  %408 = ptrtoint ptr %arrayidx1143.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %arrayidx1143.i, align 4
  %xor1144.i = xor i32 %409, %405
  %shr1146.i = lshr i32 %xor1105.i, 16
  %idxprom1148.i = and i32 %shr1146.i, 255
  %arrayidx1149.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1148.i
  %410 = ptrtoint ptr %arrayidx1149.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %arrayidx1149.i, align 4
  %xor1150.i = xor i32 %xor1138.i, %411
  %shr1152.i = lshr i32 %xor1113.i, 8
  %idxprom1154.i = and i32 %shr1152.i, 255
  %arrayidx1155.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1154.i
  %412 = ptrtoint ptr %arrayidx1155.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %arrayidx1155.i, align 4
  %xor1156.i = xor i32 %xor1144.i, %413
  %shr1158.i = lshr i32 %xor1105.i, 8
  %idxprom1160.i = and i32 %shr1158.i, 255
  %arrayidx1161.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1160.i
  %414 = ptrtoint ptr %arrayidx1161.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %arrayidx1161.i, align 4
  %xor1162.i = xor i32 %xor1150.i, %415
  %idxprom1165.i = and i32 %xor1113.i, 255
  %arrayidx1166.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1165.i
  %416 = ptrtoint ptr %arrayidx1166.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %arrayidx1166.i, align 4
  %xor1167.i = xor i32 %xor1156.i, %417
  %xor1168.i = xor i32 %xor1162.i, %xor1167.i
  %xor1170.i = xor i32 %xor1120.i, %xor1168.i
  %or.i2161.i = tail call i32 @llvm.fshl.i32(i32 %xor1167.i, i32 %xor1167.i, i32 24) #5
  %xor1173.i = xor i32 %xor1123.i, %xor1168.i
  %xor1175.i = xor i32 %xor1173.i, %or.i2161.i
  %arrayidx1176.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 76
  %418 = ptrtoint ptr %arrayidx1176.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %arrayidx1176.i, align 4
  %xor1178.i = xor i32 %419, %xor1113.i
  %arrayidx1179.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 80
  %420 = ptrtoint ptr %arrayidx1179.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %arrayidx1179.i, align 4
  %xor1181.i = xor i32 %421, %xor1105.i
  %idxprom1184.i = and i32 %xor1175.i, 255
  %arrayidx1185.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom1184.i
  %422 = ptrtoint ptr %arrayidx1185.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %arrayidx1185.i, align 4
  %shr1187.i = lshr i32 %xor1170.i, 24
  %arrayidx1190.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr1187.i
  %424 = ptrtoint ptr %arrayidx1190.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %arrayidx1190.i, align 4
  %shr1192.i = lshr i32 %xor1175.i, 24
  %arrayidx1195.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr1192.i
  %426 = ptrtoint ptr %arrayidx1195.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %arrayidx1195.i, align 4
  %xor1196.i = xor i32 %427, %423
  %shr1198.i = lshr i32 %xor1170.i, 16
  %idxprom1200.i = and i32 %shr1198.i, 255
  %arrayidx1201.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom1200.i
  %428 = ptrtoint ptr %arrayidx1201.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %arrayidx1201.i, align 4
  %xor1202.i = xor i32 %429, %425
  %shr1204.i = lshr i32 %xor1175.i, 16
  %idxprom1206.i = and i32 %shr1204.i, 255
  %arrayidx1207.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1206.i
  %430 = ptrtoint ptr %arrayidx1207.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %arrayidx1207.i, align 4
  %xor1208.i = xor i32 %xor1196.i, %431
  %shr1210.i = lshr i32 %xor1170.i, 8
  %idxprom1212.i = and i32 %shr1210.i, 255
  %arrayidx1213.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1212.i
  %432 = ptrtoint ptr %arrayidx1213.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %arrayidx1213.i, align 4
  %xor1214.i = xor i32 %xor1202.i, %433
  %shr1216.i = lshr i32 %xor1175.i, 8
  %idxprom1218.i = and i32 %shr1216.i, 255
  %arrayidx1219.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1218.i
  %434 = ptrtoint ptr %arrayidx1219.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %arrayidx1219.i, align 4
  %xor1220.i = xor i32 %xor1208.i, %435
  %idxprom1223.i = and i32 %xor1170.i, 255
  %arrayidx1224.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1223.i
  %436 = ptrtoint ptr %arrayidx1224.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %arrayidx1224.i, align 4
  %xor1225.i = xor i32 %xor1214.i, %437
  %xor1226.i = xor i32 %xor1220.i, %xor1225.i
  %xor1228.i = xor i32 %xor1178.i, %xor1226.i
  %or.i2162.i = tail call i32 @llvm.fshl.i32(i32 %xor1225.i, i32 %xor1225.i, i32 24) #5
  %xor1231.i = xor i32 %xor1181.i, %xor1226.i
  %xor1233.i = xor i32 %xor1231.i, %or.i2162.i
  %arrayidx1234.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 84
  %438 = ptrtoint ptr %arrayidx1234.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %arrayidx1234.i, align 4
  %xor1236.i = xor i32 %439, %xor1170.i
  %arrayidx1237.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 88
  %440 = ptrtoint ptr %arrayidx1237.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %arrayidx1237.i, align 4
  %xor1239.i = xor i32 %441, %xor1175.i
  %idxprom1242.i = and i32 %xor1233.i, 255
  %arrayidx1243.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom1242.i
  %442 = ptrtoint ptr %arrayidx1243.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %arrayidx1243.i, align 4
  %shr1245.i = lshr i32 %xor1228.i, 24
  %arrayidx1248.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr1245.i
  %444 = ptrtoint ptr %arrayidx1248.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %arrayidx1248.i, align 4
  %shr1250.i = lshr i32 %xor1233.i, 24
  %arrayidx1253.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr1250.i
  %446 = ptrtoint ptr %arrayidx1253.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %arrayidx1253.i, align 4
  %xor1254.i = xor i32 %447, %443
  %shr1256.i = lshr i32 %xor1228.i, 16
  %idxprom1258.i = and i32 %shr1256.i, 255
  %arrayidx1259.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom1258.i
  %448 = ptrtoint ptr %arrayidx1259.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %arrayidx1259.i, align 4
  %xor1260.i = xor i32 %449, %445
  %shr1262.i = lshr i32 %xor1233.i, 16
  %idxprom1264.i = and i32 %shr1262.i, 255
  %arrayidx1265.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1264.i
  %450 = ptrtoint ptr %arrayidx1265.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %arrayidx1265.i, align 4
  %xor1266.i = xor i32 %xor1254.i, %451
  %shr1268.i = lshr i32 %xor1228.i, 8
  %idxprom1270.i = and i32 %shr1268.i, 255
  %arrayidx1271.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1270.i
  %452 = ptrtoint ptr %arrayidx1271.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %arrayidx1271.i, align 4
  %xor1272.i = xor i32 %xor1260.i, %453
  %shr1274.i = lshr i32 %xor1233.i, 8
  %idxprom1276.i = and i32 %shr1274.i, 255
  %arrayidx1277.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1276.i
  %454 = ptrtoint ptr %arrayidx1277.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %arrayidx1277.i, align 4
  %xor1278.i = xor i32 %xor1266.i, %455
  %idxprom1281.i = and i32 %xor1228.i, 255
  %arrayidx1282.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1281.i
  %456 = ptrtoint ptr %arrayidx1282.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %arrayidx1282.i, align 4
  %xor1283.i = xor i32 %xor1272.i, %457
  %xor1284.i = xor i32 %xor1278.i, %xor1283.i
  %xor1286.i = xor i32 %xor1236.i, %xor1284.i
  %or.i2163.i = tail call i32 @llvm.fshl.i32(i32 %xor1283.i, i32 %xor1283.i, i32 24) #5
  %xor1289.i = xor i32 %xor1239.i, %xor1284.i
  %xor1291.i = xor i32 %xor1289.i, %or.i2163.i
  %arrayidx1292.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 92
  %458 = ptrtoint ptr %arrayidx1292.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %arrayidx1292.i, align 4
  %xor1294.i = xor i32 %459, %xor1228.i
  %arrayidx1295.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 96
  %460 = ptrtoint ptr %arrayidx1295.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %arrayidx1295.i, align 4
  %xor1297.i = xor i32 %461, %xor1233.i
  %idxprom1300.i = and i32 %xor1291.i, 255
  %arrayidx1301.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom1300.i
  %462 = ptrtoint ptr %arrayidx1301.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %arrayidx1301.i, align 4
  %shr1303.i = lshr i32 %xor1286.i, 24
  %arrayidx1306.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr1303.i
  %464 = ptrtoint ptr %arrayidx1306.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %arrayidx1306.i, align 4
  %shr1308.i = lshr i32 %xor1291.i, 24
  %arrayidx1311.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr1308.i
  %466 = ptrtoint ptr %arrayidx1311.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %arrayidx1311.i, align 4
  %xor1312.i = xor i32 %467, %463
  %shr1314.i = lshr i32 %xor1286.i, 16
  %idxprom1316.i = and i32 %shr1314.i, 255
  %arrayidx1317.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom1316.i
  %468 = ptrtoint ptr %arrayidx1317.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %arrayidx1317.i, align 4
  %xor1318.i = xor i32 %469, %465
  %shr1320.i = lshr i32 %xor1291.i, 16
  %idxprom1322.i = and i32 %shr1320.i, 255
  %arrayidx1323.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1322.i
  %470 = ptrtoint ptr %arrayidx1323.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %arrayidx1323.i, align 4
  %xor1324.i = xor i32 %xor1312.i, %471
  %shr1326.i = lshr i32 %xor1286.i, 8
  %idxprom1328.i = and i32 %shr1326.i, 255
  %arrayidx1329.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1328.i
  %472 = ptrtoint ptr %arrayidx1329.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %arrayidx1329.i, align 4
  %xor1330.i = xor i32 %xor1318.i, %473
  %shr1332.i = lshr i32 %xor1291.i, 8
  %idxprom1334.i = and i32 %shr1332.i, 255
  %arrayidx1335.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1334.i
  %474 = ptrtoint ptr %arrayidx1335.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %arrayidx1335.i, align 4
  %xor1336.i = xor i32 %xor1324.i, %475
  %idxprom1339.i = and i32 %xor1286.i, 255
  %arrayidx1340.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1339.i
  %476 = ptrtoint ptr %arrayidx1340.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %arrayidx1340.i, align 4
  %xor1341.i = xor i32 %xor1330.i, %477
  %xor1342.i = xor i32 %xor1336.i, %xor1341.i
  %xor1344.i = xor i32 %xor1294.i, %xor1342.i
  %or.i2164.i = tail call i32 @llvm.fshl.i32(i32 %xor1341.i, i32 %xor1341.i, i32 24) #5
  %xor1347.i = xor i32 %xor1297.i, %xor1342.i
  %xor1349.i = xor i32 %xor1347.i, %or.i2164.i
  %arrayidx1350.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 100
  %478 = ptrtoint ptr %arrayidx1350.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %arrayidx1350.i, align 4
  %xor1352.i = xor i32 %479, %xor1286.i
  %arrayidx1353.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 104
  %480 = ptrtoint ptr %arrayidx1353.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %arrayidx1353.i, align 4
  %xor1355.i = xor i32 %481, %xor1291.i
  %idxprom1358.i = and i32 %xor1349.i, 255
  %arrayidx1359.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom1358.i
  %482 = ptrtoint ptr %arrayidx1359.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %arrayidx1359.i, align 4
  %shr1361.i = lshr i32 %xor1344.i, 24
  %arrayidx1364.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr1361.i
  %484 = ptrtoint ptr %arrayidx1364.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %arrayidx1364.i, align 4
  %shr1366.i = lshr i32 %xor1349.i, 24
  %arrayidx1369.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr1366.i
  %486 = ptrtoint ptr %arrayidx1369.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %arrayidx1369.i, align 4
  %xor1370.i = xor i32 %487, %483
  %shr1372.i = lshr i32 %xor1344.i, 16
  %idxprom1374.i = and i32 %shr1372.i, 255
  %arrayidx1375.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom1374.i
  %488 = ptrtoint ptr %arrayidx1375.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %arrayidx1375.i, align 4
  %xor1376.i = xor i32 %489, %485
  %shr1378.i = lshr i32 %xor1349.i, 16
  %idxprom1380.i = and i32 %shr1378.i, 255
  %arrayidx1381.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1380.i
  %490 = ptrtoint ptr %arrayidx1381.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %arrayidx1381.i, align 4
  %xor1382.i = xor i32 %xor1370.i, %491
  %shr1384.i = lshr i32 %xor1344.i, 8
  %idxprom1386.i = and i32 %shr1384.i, 255
  %arrayidx1387.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1386.i
  %492 = ptrtoint ptr %arrayidx1387.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %arrayidx1387.i, align 4
  %xor1388.i = xor i32 %xor1376.i, %493
  %shr1390.i = lshr i32 %xor1349.i, 8
  %idxprom1392.i = and i32 %shr1390.i, 255
  %arrayidx1393.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1392.i
  %494 = ptrtoint ptr %arrayidx1393.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %arrayidx1393.i, align 4
  %xor1394.i = xor i32 %xor1382.i, %495
  %idxprom1397.i = and i32 %xor1344.i, 255
  %arrayidx1398.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1397.i
  %496 = ptrtoint ptr %arrayidx1398.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %arrayidx1398.i, align 4
  %xor1399.i = xor i32 %xor1388.i, %497
  %xor1400.i = xor i32 %xor1394.i, %xor1399.i
  %xor1402.i = xor i32 %xor1352.i, %xor1400.i
  %or.i2165.i = tail call i32 @llvm.fshl.i32(i32 %xor1399.i, i32 %xor1399.i, i32 24) #5
  %xor1405.i = xor i32 %xor1355.i, %xor1400.i
  %xor1407.i = xor i32 %xor1405.i, %or.i2165.i
  %arrayidx1409.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 108
  %498 = ptrtoint ptr %arrayidx1409.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %arrayidx1409.i, align 4
  %xor1411.i = xor i32 %499, %xor1344.i
  %arrayidx1412.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 3
  %500 = ptrtoint ptr %arrayidx1412.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %arrayidx1412.i, align 4
  %xor1414.i = xor i32 %501, %xor1349.i
  %idxprom1417.i = and i32 %xor1407.i, 255
  %arrayidx1418.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom1417.i
  %502 = ptrtoint ptr %arrayidx1418.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %arrayidx1418.i, align 4
  %shr1420.i = lshr i32 %xor1402.i, 24
  %arrayidx1423.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr1420.i
  %504 = ptrtoint ptr %arrayidx1423.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %arrayidx1423.i, align 4
  %shr1425.i = lshr i32 %xor1407.i, 24
  %arrayidx1428.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr1425.i
  %506 = ptrtoint ptr %arrayidx1428.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %arrayidx1428.i, align 4
  %xor1429.i = xor i32 %507, %503
  %shr1431.i = lshr i32 %xor1402.i, 16
  %idxprom1433.i = and i32 %shr1431.i, 255
  %arrayidx1434.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom1433.i
  %508 = ptrtoint ptr %arrayidx1434.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %arrayidx1434.i, align 4
  %xor1435.i = xor i32 %509, %505
  %shr1437.i = lshr i32 %xor1407.i, 16
  %idxprom1439.i = and i32 %shr1437.i, 255
  %arrayidx1440.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1439.i
  %510 = ptrtoint ptr %arrayidx1440.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %arrayidx1440.i, align 4
  %xor1441.i = xor i32 %xor1429.i, %511
  %shr1443.i = lshr i32 %xor1402.i, 8
  %idxprom1445.i = and i32 %shr1443.i, 255
  %arrayidx1446.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1445.i
  %512 = ptrtoint ptr %arrayidx1446.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %arrayidx1446.i, align 4
  %xor1447.i = xor i32 %xor1435.i, %513
  %shr1449.i = lshr i32 %xor1407.i, 8
  %idxprom1451.i = and i32 %shr1449.i, 255
  %arrayidx1452.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1451.i
  %514 = ptrtoint ptr %arrayidx1452.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %arrayidx1452.i, align 4
  %xor1453.i = xor i32 %xor1441.i, %515
  %idxprom1456.i = and i32 %xor1402.i, 255
  %arrayidx1457.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1456.i
  %516 = ptrtoint ptr %arrayidx1457.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %arrayidx1457.i, align 4
  %xor1458.i = xor i32 %xor1447.i, %517
  %xor1459.i = xor i32 %xor1453.i, %xor1458.i
  %xor1461.i = xor i32 %xor1411.i, %xor1459.i
  %or.i2166.i = tail call i32 @llvm.fshl.i32(i32 %xor1458.i, i32 %xor1458.i, i32 24) #5
  %xor1464.i = xor i32 %xor1414.i, %xor1459.i
  %xor1466.i = xor i32 %xor1464.i, %or.i2166.i
  br label %camellia_do_encrypt.exit

camellia_do_encrypt.exit:                         ; preds = %if.then.i, %entry.camellia_do_encrypt.exit_crit_edge
  %. = phi i32 [ 48, %entry.camellia_do_encrypt.exit_crit_edge ], [ 64, %if.then.i ]
  %tmp.sroa.87.0 = phi i32 [ %xor1033.i, %entry.camellia_do_encrypt.exit_crit_edge ], [ %xor1407.i, %if.then.i ]
  %tmp.sroa.54.0 = phi i32 [ %xor1028.i, %entry.camellia_do_encrypt.exit_crit_edge ], [ %xor1402.i, %if.then.i ]
  %tmp.sroa.34.0 = phi i32 [ %xor1092.i, %entry.camellia_do_encrypt.exit_crit_edge ], [ %xor1466.i, %if.then.i ]
  %tmp.sroa.0.0 = phi i32 [ %xor1087.i, %entry.camellia_do_encrypt.exit_crit_edge ], [ %xor1461.i, %if.then.i ]
  %arrayidx1467.i = getelementptr i32, ptr %key_table, i32 %.
  %518 = ptrtoint ptr %arrayidx1467.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %arrayidx1467.i, align 4
  %xor1469.i = xor i32 %519, %tmp.sroa.54.0
  %add.i = or i32 %., 1
  %arrayidx1471.i = getelementptr i32, ptr %key_table, i32 %add.i
  %520 = ptrtoint ptr %arrayidx1471.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %arrayidx1471.i, align 4
  %xor1473.i = xor i32 %521, %tmp.sroa.87.0
  %522 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %522, i32 4)
  store i32 %xor1469.i, ptr %out, align 1
  %add.ptr13 = getelementptr i8, ptr %out, i32 4
  %523 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_storeN_noabort(i32 %523, i32 4)
  store i32 %xor1473.i, ptr %add.ptr13, align 1
  %add.ptr15 = getelementptr i8, ptr %out, i32 8
  %524 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_storeN_noabort(i32 %524, i32 4)
  store i32 %tmp.sroa.0.0, ptr %add.ptr15, align 1
  %add.ptr17 = getelementptr i8, ptr %out, i32 12
  %525 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_storeN_noabort(i32 %525, i32 4)
  store i32 %tmp.sroa.34.0, ptr %add.ptr17, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @camellia_decrypt(ptr noundef readonly %tfm, ptr nocapture noundef writeonly %out, ptr nocapture noundef readonly %in) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %in to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %in, align 1
  %add.ptr = getelementptr i8, ptr %in, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %add.ptr4 = getelementptr i8, ptr %in, i32 8
  %4 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr4, align 1
  %add.ptr7 = getelementptr i8, ptr %in, i32 12
  %6 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr7, align 1
  %8 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__crt_ctx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp = icmp eq i32 %9, 16
  %. = select i1 %cmp, i32 48, i32 64
  %key_table = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %arrayidx.i = getelementptr i32, ptr %key_table, i32 %.
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %xor.i = xor i32 %11, %1
  %add.i = or i32 %., 1
  %arrayidx3.i = getelementptr i32, ptr %key_table, i32 %add.i
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i, align 4
  %xor5.i = xor i32 %13, %3
  br i1 %cmp, label %entry.camellia_do_decrypt.exit_crit_edge, label %if.then.i

entry.camellia_do_decrypt.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %camellia_do_decrypt.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 108
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6.i, align 4
  %xor8.i = xor i32 %15, %5
  %arrayidx9.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 3
  %16 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx9.i, align 4
  %xor11.i = xor i32 %17, %7
  %idxprom.i = and i32 %xor5.i, 255
  %arrayidx13.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx13.i, align 4
  %shr.i = lshr i32 %xor.i, 24
  %arrayidx17.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr.i
  %20 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx17.i, align 4
  %shr19.i = lshr i32 %xor5.i, 24
  %arrayidx22.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr19.i
  %22 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx22.i, align 4
  %xor23.i = xor i32 %23, %19
  %shr25.i = lshr i32 %xor.i, 16
  %idxprom27.i = and i32 %shr25.i, 255
  %arrayidx28.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom27.i
  %24 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx28.i, align 4
  %xor29.i = xor i32 %25, %21
  %shr31.i = lshr i32 %xor5.i, 16
  %idxprom33.i = and i32 %shr31.i, 255
  %arrayidx34.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom33.i
  %26 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx34.i, align 4
  %xor35.i = xor i32 %xor23.i, %27
  %shr37.i = lshr i32 %xor.i, 8
  %idxprom39.i = and i32 %shr37.i, 255
  %arrayidx40.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom39.i
  %28 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx40.i, align 4
  %xor41.i = xor i32 %xor29.i, %29
  %shr43.i = lshr i32 %xor5.i, 8
  %idxprom45.i = and i32 %shr43.i, 255
  %arrayidx46.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom45.i
  %30 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx46.i, align 4
  %xor47.i = xor i32 %xor35.i, %31
  %idxprom50.i = and i32 %xor.i, 255
  %arrayidx51.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom50.i
  %32 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx51.i, align 4
  %xor52.i = xor i32 %xor41.i, %33
  %xor53.i = xor i32 %xor47.i, %xor52.i
  %xor55.i = xor i32 %xor8.i, %xor53.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %xor52.i, i32 %xor52.i, i32 24) #5
  %xor56.i = xor i32 %xor11.i, %xor53.i
  %xor58.i = xor i32 %xor56.i, %or.i.i
  %arrayidx59.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 100
  %34 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx59.i, align 4
  %xor61.i = xor i32 %35, %xor.i
  %arrayidx62.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 104
  %36 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx62.i, align 4
  %xor64.i = xor i32 %37, %xor5.i
  %idxprom67.i = and i32 %xor58.i, 255
  %arrayidx68.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom67.i
  %38 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx68.i, align 4
  %shr70.i = lshr i32 %xor55.i, 24
  %arrayidx73.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr70.i
  %40 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx73.i, align 4
  %shr75.i = lshr i32 %xor58.i, 24
  %arrayidx78.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr75.i
  %42 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx78.i, align 4
  %xor79.i = xor i32 %43, %39
  %shr81.i = lshr i32 %xor55.i, 16
  %idxprom83.i = and i32 %shr81.i, 255
  %arrayidx84.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom83.i
  %44 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx84.i, align 4
  %xor85.i = xor i32 %45, %41
  %shr87.i = lshr i32 %xor58.i, 16
  %idxprom89.i = and i32 %shr87.i, 255
  %arrayidx90.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom89.i
  %46 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx90.i, align 4
  %xor91.i = xor i32 %xor79.i, %47
  %shr93.i = lshr i32 %xor55.i, 8
  %idxprom95.i = and i32 %shr93.i, 255
  %arrayidx96.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom95.i
  %48 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx96.i, align 4
  %xor97.i = xor i32 %xor85.i, %49
  %shr99.i = lshr i32 %xor58.i, 8
  %idxprom101.i = and i32 %shr99.i, 255
  %arrayidx102.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom101.i
  %50 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx102.i, align 4
  %xor103.i = xor i32 %xor91.i, %51
  %idxprom106.i = and i32 %xor55.i, 255
  %arrayidx107.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom106.i
  %52 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx107.i, align 4
  %xor108.i = xor i32 %xor97.i, %53
  %xor109.i = xor i32 %xor103.i, %xor108.i
  %xor111.i = xor i32 %xor61.i, %xor109.i
  %or.i2137.i = tail call i32 @llvm.fshl.i32(i32 %xor108.i, i32 %xor108.i, i32 24) #5
  %xor114.i = xor i32 %xor64.i, %xor109.i
  %xor116.i = xor i32 %xor114.i, %or.i2137.i
  %arrayidx117.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 92
  %54 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx117.i, align 4
  %xor119.i = xor i32 %55, %xor55.i
  %arrayidx120.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 96
  %56 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx120.i, align 4
  %xor122.i = xor i32 %57, %xor58.i
  %idxprom125.i = and i32 %xor116.i, 255
  %arrayidx126.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom125.i
  %58 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx126.i, align 4
  %shr128.i = lshr i32 %xor111.i, 24
  %arrayidx131.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr128.i
  %60 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx131.i, align 4
  %shr133.i = lshr i32 %xor116.i, 24
  %arrayidx136.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr133.i
  %62 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx136.i, align 4
  %xor137.i = xor i32 %63, %59
  %shr139.i = lshr i32 %xor111.i, 16
  %idxprom141.i = and i32 %shr139.i, 255
  %arrayidx142.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom141.i
  %64 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx142.i, align 4
  %xor143.i = xor i32 %65, %61
  %shr145.i = lshr i32 %xor116.i, 16
  %idxprom147.i = and i32 %shr145.i, 255
  %arrayidx148.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom147.i
  %66 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx148.i, align 4
  %xor149.i = xor i32 %xor137.i, %67
  %shr151.i = lshr i32 %xor111.i, 8
  %idxprom153.i = and i32 %shr151.i, 255
  %arrayidx154.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom153.i
  %68 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx154.i, align 4
  %xor155.i = xor i32 %xor143.i, %69
  %shr157.i = lshr i32 %xor116.i, 8
  %idxprom159.i = and i32 %shr157.i, 255
  %arrayidx160.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom159.i
  %70 = ptrtoint ptr %arrayidx160.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx160.i, align 4
  %xor161.i = xor i32 %xor149.i, %71
  %idxprom164.i = and i32 %xor111.i, 255
  %arrayidx165.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom164.i
  %72 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx165.i, align 4
  %xor166.i = xor i32 %xor155.i, %73
  %xor167.i = xor i32 %xor161.i, %xor166.i
  %xor169.i = xor i32 %xor119.i, %xor167.i
  %or.i2138.i = tail call i32 @llvm.fshl.i32(i32 %xor166.i, i32 %xor166.i, i32 24) #5
  %xor172.i = xor i32 %xor122.i, %xor167.i
  %xor174.i = xor i32 %xor172.i, %or.i2138.i
  %arrayidx175.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 84
  %74 = ptrtoint ptr %arrayidx175.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx175.i, align 4
  %xor177.i = xor i32 %75, %xor111.i
  %arrayidx178.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 88
  %76 = ptrtoint ptr %arrayidx178.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx178.i, align 4
  %xor180.i = xor i32 %77, %xor116.i
  %idxprom183.i = and i32 %xor174.i, 255
  %arrayidx184.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom183.i
  %78 = ptrtoint ptr %arrayidx184.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx184.i, align 4
  %shr186.i = lshr i32 %xor169.i, 24
  %arrayidx189.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr186.i
  %80 = ptrtoint ptr %arrayidx189.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx189.i, align 4
  %shr191.i = lshr i32 %xor174.i, 24
  %arrayidx194.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr191.i
  %82 = ptrtoint ptr %arrayidx194.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx194.i, align 4
  %xor195.i = xor i32 %83, %79
  %shr197.i = lshr i32 %xor169.i, 16
  %idxprom199.i = and i32 %shr197.i, 255
  %arrayidx200.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom199.i
  %84 = ptrtoint ptr %arrayidx200.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx200.i, align 4
  %xor201.i = xor i32 %85, %81
  %shr203.i = lshr i32 %xor174.i, 16
  %idxprom205.i = and i32 %shr203.i, 255
  %arrayidx206.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom205.i
  %86 = ptrtoint ptr %arrayidx206.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx206.i, align 4
  %xor207.i = xor i32 %xor195.i, %87
  %shr209.i = lshr i32 %xor169.i, 8
  %idxprom211.i = and i32 %shr209.i, 255
  %arrayidx212.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom211.i
  %88 = ptrtoint ptr %arrayidx212.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx212.i, align 4
  %xor213.i = xor i32 %xor201.i, %89
  %shr215.i = lshr i32 %xor174.i, 8
  %idxprom217.i = and i32 %shr215.i, 255
  %arrayidx218.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom217.i
  %90 = ptrtoint ptr %arrayidx218.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx218.i, align 4
  %xor219.i = xor i32 %xor207.i, %91
  %idxprom222.i = and i32 %xor169.i, 255
  %arrayidx223.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom222.i
  %92 = ptrtoint ptr %arrayidx223.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx223.i, align 4
  %xor224.i = xor i32 %xor213.i, %93
  %xor225.i = xor i32 %xor219.i, %xor224.i
  %xor227.i = xor i32 %xor177.i, %xor225.i
  %or.i2139.i = tail call i32 @llvm.fshl.i32(i32 %xor224.i, i32 %xor224.i, i32 24) #5
  %xor230.i = xor i32 %xor180.i, %xor225.i
  %xor232.i = xor i32 %xor230.i, %or.i2139.i
  %arrayidx233.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 76
  %94 = ptrtoint ptr %arrayidx233.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx233.i, align 4
  %xor235.i = xor i32 %95, %xor169.i
  %arrayidx236.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 80
  %96 = ptrtoint ptr %arrayidx236.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx236.i, align 4
  %xor238.i = xor i32 %97, %xor174.i
  %idxprom241.i = and i32 %xor232.i, 255
  %arrayidx242.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom241.i
  %98 = ptrtoint ptr %arrayidx242.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx242.i, align 4
  %shr244.i = lshr i32 %xor227.i, 24
  %arrayidx247.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr244.i
  %100 = ptrtoint ptr %arrayidx247.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx247.i, align 4
  %shr249.i = lshr i32 %xor232.i, 24
  %arrayidx252.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr249.i
  %102 = ptrtoint ptr %arrayidx252.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx252.i, align 4
  %xor253.i = xor i32 %103, %99
  %shr255.i = lshr i32 %xor227.i, 16
  %idxprom257.i = and i32 %shr255.i, 255
  %arrayidx258.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom257.i
  %104 = ptrtoint ptr %arrayidx258.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx258.i, align 4
  %xor259.i = xor i32 %105, %101
  %shr261.i = lshr i32 %xor232.i, 16
  %idxprom263.i = and i32 %shr261.i, 255
  %arrayidx264.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom263.i
  %106 = ptrtoint ptr %arrayidx264.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx264.i, align 4
  %xor265.i = xor i32 %xor253.i, %107
  %shr267.i = lshr i32 %xor227.i, 8
  %idxprom269.i = and i32 %shr267.i, 255
  %arrayidx270.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom269.i
  %108 = ptrtoint ptr %arrayidx270.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx270.i, align 4
  %xor271.i = xor i32 %xor259.i, %109
  %shr273.i = lshr i32 %xor232.i, 8
  %idxprom275.i = and i32 %shr273.i, 255
  %arrayidx276.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom275.i
  %110 = ptrtoint ptr %arrayidx276.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx276.i, align 4
  %xor277.i = xor i32 %xor265.i, %111
  %idxprom280.i = and i32 %xor227.i, 255
  %arrayidx281.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom280.i
  %112 = ptrtoint ptr %arrayidx281.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx281.i, align 4
  %xor282.i = xor i32 %xor271.i, %113
  %xor283.i = xor i32 %xor277.i, %xor282.i
  %xor285.i = xor i32 %xor235.i, %xor283.i
  %or.i2140.i = tail call i32 @llvm.fshl.i32(i32 %xor282.i, i32 %xor282.i, i32 24) #5
  %xor288.i = xor i32 %xor238.i, %xor283.i
  %xor290.i = xor i32 %xor288.i, %or.i2140.i
  %arrayidx292.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 68
  %114 = ptrtoint ptr %arrayidx292.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx292.i, align 4
  %xor294.i = xor i32 %115, %xor227.i
  %arrayidx295.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 72
  %116 = ptrtoint ptr %arrayidx295.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx295.i, align 4
  %xor297.i = xor i32 %117, %xor232.i
  %idxprom300.i = and i32 %xor290.i, 255
  %arrayidx301.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom300.i
  %118 = ptrtoint ptr %arrayidx301.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx301.i, align 4
  %shr303.i = lshr i32 %xor285.i, 24
  %arrayidx306.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr303.i
  %120 = ptrtoint ptr %arrayidx306.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx306.i, align 4
  %shr308.i = lshr i32 %xor290.i, 24
  %arrayidx311.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr308.i
  %122 = ptrtoint ptr %arrayidx311.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx311.i, align 4
  %xor312.i = xor i32 %123, %119
  %shr314.i = lshr i32 %xor285.i, 16
  %idxprom316.i = and i32 %shr314.i, 255
  %arrayidx317.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom316.i
  %124 = ptrtoint ptr %arrayidx317.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx317.i, align 4
  %xor318.i = xor i32 %125, %121
  %shr320.i = lshr i32 %xor290.i, 16
  %idxprom322.i = and i32 %shr320.i, 255
  %arrayidx323.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom322.i
  %126 = ptrtoint ptr %arrayidx323.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx323.i, align 4
  %xor324.i = xor i32 %xor312.i, %127
  %shr326.i = lshr i32 %xor285.i, 8
  %idxprom328.i = and i32 %shr326.i, 255
  %arrayidx329.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom328.i
  %128 = ptrtoint ptr %arrayidx329.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx329.i, align 4
  %xor330.i = xor i32 %xor318.i, %129
  %shr332.i = lshr i32 %xor290.i, 8
  %idxprom334.i = and i32 %shr332.i, 255
  %arrayidx335.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom334.i
  %130 = ptrtoint ptr %arrayidx335.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx335.i, align 4
  %xor336.i = xor i32 %xor324.i, %131
  %idxprom339.i = and i32 %xor285.i, 255
  %arrayidx340.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom339.i
  %132 = ptrtoint ptr %arrayidx340.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx340.i, align 4
  %xor341.i = xor i32 %xor330.i, %133
  %xor342.i = xor i32 %xor336.i, %xor341.i
  %xor344.i = xor i32 %xor294.i, %xor342.i
  %or.i2141.i = tail call i32 @llvm.fshl.i32(i32 %xor341.i, i32 %xor341.i, i32 24) #5
  %xor347.i = xor i32 %xor297.i, %xor342.i
  %xor349.i = xor i32 %xor347.i, %or.i2141.i
  %arrayidx351.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 60
  %134 = ptrtoint ptr %arrayidx351.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx351.i, align 4
  %arrayidx352.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 56
  %136 = ptrtoint ptr %arrayidx352.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx352.i, align 4
  %and.i = and i32 %xor344.i, %135
  %or.i = or i32 %137, %xor290.i
  %xor356.i = xor i32 %or.i, %xor285.i
  %or.i2142.i = tail call i32 @llvm.fshl.i32(i32 %and.i, i32 %and.i, i32 1) #5
  %xor359.i = xor i32 %xor349.i, %or.i2142.i
  %arrayidx360.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 52
  %138 = ptrtoint ptr %arrayidx360.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx360.i, align 4
  %arrayidx361.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 64
  %140 = ptrtoint ptr %arrayidx361.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx361.i, align 4
  %and363.i = and i32 %xor356.i, %139
  %or365.i = or i32 %xor359.i, %141
  %xor367.i = xor i32 %or365.i, %xor344.i
  %or.i2143.i = tail call i32 @llvm.fshl.i32(i32 %and363.i, i32 %and363.i, i32 1) #5
  %xor371.i = xor i32 %or.i2143.i, %xor290.i
  br label %camellia_do_decrypt.exit

camellia_do_decrypt.exit:                         ; preds = %if.then.i, %entry.camellia_do_decrypt.exit_crit_edge
  %tmp.sroa.89.0 = phi i32 [ %xor371.i, %if.then.i ], [ %7, %entry.camellia_do_decrypt.exit_crit_edge ]
  %tmp.sroa.56.0 = phi i32 [ %xor356.i, %if.then.i ], [ %5, %entry.camellia_do_decrypt.exit_crit_edge ]
  %tmp.sroa.35.0 = phi i32 [ %xor359.i, %if.then.i ], [ %xor5.i, %entry.camellia_do_decrypt.exit_crit_edge ]
  %tmp.sroa.0.0 = phi i32 [ %xor367.i, %if.then.i ], [ %xor.i, %entry.camellia_do_decrypt.exit_crit_edge ]
  %arrayidx372.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %142 = ptrtoint ptr %arrayidx372.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx372.i, align 4
  %xor374.i = xor i32 %143, %tmp.sroa.56.0
  %arrayidx375.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %144 = ptrtoint ptr %arrayidx375.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx375.i, align 4
  %xor377.i = xor i32 %145, %tmp.sroa.89.0
  %idxprom380.i = and i32 %tmp.sroa.35.0, 255
  %arrayidx381.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom380.i
  %146 = ptrtoint ptr %arrayidx381.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx381.i, align 4
  %shr383.i = lshr i32 %tmp.sroa.0.0, 24
  %arrayidx386.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr383.i
  %148 = ptrtoint ptr %arrayidx386.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx386.i, align 4
  %shr388.i = lshr i32 %tmp.sroa.35.0, 24
  %arrayidx391.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr388.i
  %150 = ptrtoint ptr %arrayidx391.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx391.i, align 4
  %xor392.i = xor i32 %151, %147
  %shr394.i = lshr i32 %tmp.sroa.0.0, 16
  %idxprom396.i = and i32 %shr394.i, 255
  %arrayidx397.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom396.i
  %152 = ptrtoint ptr %arrayidx397.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx397.i, align 4
  %xor398.i = xor i32 %153, %149
  %shr400.i = lshr i32 %tmp.sroa.35.0, 16
  %idxprom402.i = and i32 %shr400.i, 255
  %arrayidx403.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom402.i
  %154 = ptrtoint ptr %arrayidx403.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx403.i, align 4
  %xor404.i = xor i32 %xor392.i, %155
  %shr406.i = lshr i32 %tmp.sroa.0.0, 8
  %idxprom408.i = and i32 %shr406.i, 255
  %arrayidx409.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom408.i
  %156 = ptrtoint ptr %arrayidx409.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx409.i, align 4
  %xor410.i = xor i32 %xor398.i, %157
  %shr412.i = lshr i32 %tmp.sroa.35.0, 8
  %idxprom414.i = and i32 %shr412.i, 255
  %arrayidx415.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom414.i
  %158 = ptrtoint ptr %arrayidx415.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx415.i, align 4
  %xor416.i = xor i32 %xor404.i, %159
  %idxprom419.i = and i32 %tmp.sroa.0.0, 255
  %arrayidx420.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom419.i
  %160 = ptrtoint ptr %arrayidx420.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx420.i, align 4
  %xor421.i = xor i32 %xor410.i, %161
  %xor422.i = xor i32 %xor416.i, %xor421.i
  %xor424.i = xor i32 %xor374.i, %xor422.i
  %or.i2144.i = tail call i32 @llvm.fshl.i32(i32 %xor421.i, i32 %xor421.i, i32 24) #5
  %xor427.i = xor i32 %xor377.i, %xor422.i
  %xor429.i = xor i32 %xor427.i, %or.i2144.i
  %arrayidx430.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %162 = ptrtoint ptr %arrayidx430.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx430.i, align 4
  %xor432.i = xor i32 %163, %tmp.sroa.0.0
  %arrayidx433.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %164 = ptrtoint ptr %arrayidx433.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx433.i, align 4
  %xor435.i = xor i32 %165, %tmp.sroa.35.0
  %idxprom438.i = and i32 %xor429.i, 255
  %arrayidx439.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom438.i
  %166 = ptrtoint ptr %arrayidx439.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx439.i, align 4
  %shr441.i = lshr i32 %xor424.i, 24
  %arrayidx444.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr441.i
  %168 = ptrtoint ptr %arrayidx444.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx444.i, align 4
  %shr446.i = lshr i32 %xor429.i, 24
  %arrayidx449.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr446.i
  %170 = ptrtoint ptr %arrayidx449.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx449.i, align 4
  %xor450.i = xor i32 %171, %167
  %shr452.i = lshr i32 %xor424.i, 16
  %idxprom454.i = and i32 %shr452.i, 255
  %arrayidx455.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom454.i
  %172 = ptrtoint ptr %arrayidx455.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx455.i, align 4
  %xor456.i = xor i32 %173, %169
  %shr458.i = lshr i32 %xor429.i, 16
  %idxprom460.i = and i32 %shr458.i, 255
  %arrayidx461.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom460.i
  %174 = ptrtoint ptr %arrayidx461.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx461.i, align 4
  %xor462.i = xor i32 %xor450.i, %175
  %shr464.i = lshr i32 %xor424.i, 8
  %idxprom466.i = and i32 %shr464.i, 255
  %arrayidx467.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom466.i
  %176 = ptrtoint ptr %arrayidx467.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx467.i, align 4
  %xor468.i = xor i32 %xor456.i, %177
  %shr470.i = lshr i32 %xor429.i, 8
  %idxprom472.i = and i32 %shr470.i, 255
  %arrayidx473.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom472.i
  %178 = ptrtoint ptr %arrayidx473.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx473.i, align 4
  %xor474.i = xor i32 %xor462.i, %179
  %idxprom477.i = and i32 %xor424.i, 255
  %arrayidx478.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom477.i
  %180 = ptrtoint ptr %arrayidx478.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx478.i, align 4
  %xor479.i = xor i32 %xor468.i, %181
  %xor480.i = xor i32 %xor474.i, %xor479.i
  %xor482.i = xor i32 %xor432.i, %xor480.i
  %or.i2145.i = tail call i32 @llvm.fshl.i32(i32 %xor479.i, i32 %xor479.i, i32 24) #5
  %xor485.i = xor i32 %xor435.i, %xor480.i
  %xor487.i = xor i32 %xor485.i, %or.i2145.i
  %arrayidx488.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 28
  %182 = ptrtoint ptr %arrayidx488.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx488.i, align 4
  %xor490.i = xor i32 %183, %xor424.i
  %arrayidx491.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %184 = ptrtoint ptr %arrayidx491.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx491.i, align 4
  %xor493.i = xor i32 %185, %xor429.i
  %idxprom496.i = and i32 %xor487.i, 255
  %arrayidx497.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom496.i
  %186 = ptrtoint ptr %arrayidx497.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx497.i, align 4
  %shr499.i = lshr i32 %xor482.i, 24
  %arrayidx502.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr499.i
  %188 = ptrtoint ptr %arrayidx502.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx502.i, align 4
  %shr504.i = lshr i32 %xor487.i, 24
  %arrayidx507.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr504.i
  %190 = ptrtoint ptr %arrayidx507.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx507.i, align 4
  %xor508.i = xor i32 %191, %187
  %shr510.i = lshr i32 %xor482.i, 16
  %idxprom512.i = and i32 %shr510.i, 255
  %arrayidx513.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom512.i
  %192 = ptrtoint ptr %arrayidx513.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx513.i, align 4
  %xor514.i = xor i32 %193, %189
  %shr516.i = lshr i32 %xor487.i, 16
  %idxprom518.i = and i32 %shr516.i, 255
  %arrayidx519.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom518.i
  %194 = ptrtoint ptr %arrayidx519.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx519.i, align 4
  %xor520.i = xor i32 %xor508.i, %195
  %shr522.i = lshr i32 %xor482.i, 8
  %idxprom524.i = and i32 %shr522.i, 255
  %arrayidx525.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom524.i
  %196 = ptrtoint ptr %arrayidx525.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx525.i, align 4
  %xor526.i = xor i32 %xor514.i, %197
  %shr528.i = lshr i32 %xor487.i, 8
  %idxprom530.i = and i32 %shr528.i, 255
  %arrayidx531.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom530.i
  %198 = ptrtoint ptr %arrayidx531.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx531.i, align 4
  %xor532.i = xor i32 %xor520.i, %199
  %idxprom535.i = and i32 %xor482.i, 255
  %arrayidx536.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom535.i
  %200 = ptrtoint ptr %arrayidx536.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx536.i, align 4
  %xor537.i = xor i32 %xor526.i, %201
  %xor538.i = xor i32 %xor532.i, %xor537.i
  %xor540.i = xor i32 %xor490.i, %xor538.i
  %or.i2146.i = tail call i32 @llvm.fshl.i32(i32 %xor537.i, i32 %xor537.i, i32 24) #5
  %xor543.i = xor i32 %xor493.i, %xor538.i
  %xor545.i = xor i32 %xor543.i, %or.i2146.i
  %arrayidx546.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 20
  %202 = ptrtoint ptr %arrayidx546.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx546.i, align 4
  %xor548.i = xor i32 %203, %xor482.i
  %arrayidx549.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 24
  %204 = ptrtoint ptr %arrayidx549.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx549.i, align 4
  %xor551.i = xor i32 %205, %xor487.i
  %idxprom554.i = and i32 %xor545.i, 255
  %arrayidx555.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom554.i
  %206 = ptrtoint ptr %arrayidx555.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx555.i, align 4
  %shr557.i = lshr i32 %xor540.i, 24
  %arrayidx560.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr557.i
  %208 = ptrtoint ptr %arrayidx560.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx560.i, align 4
  %shr562.i = lshr i32 %xor545.i, 24
  %arrayidx565.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr562.i
  %210 = ptrtoint ptr %arrayidx565.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx565.i, align 4
  %xor566.i = xor i32 %211, %207
  %shr568.i = lshr i32 %xor540.i, 16
  %idxprom570.i = and i32 %shr568.i, 255
  %arrayidx571.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom570.i
  %212 = ptrtoint ptr %arrayidx571.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx571.i, align 4
  %xor572.i = xor i32 %213, %209
  %shr574.i = lshr i32 %xor545.i, 16
  %idxprom576.i = and i32 %shr574.i, 255
  %arrayidx577.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom576.i
  %214 = ptrtoint ptr %arrayidx577.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx577.i, align 4
  %xor578.i = xor i32 %xor566.i, %215
  %shr580.i = lshr i32 %xor540.i, 8
  %idxprom582.i = and i32 %shr580.i, 255
  %arrayidx583.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom582.i
  %216 = ptrtoint ptr %arrayidx583.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx583.i, align 4
  %xor584.i = xor i32 %xor572.i, %217
  %shr586.i = lshr i32 %xor545.i, 8
  %idxprom588.i = and i32 %shr586.i, 255
  %arrayidx589.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom588.i
  %218 = ptrtoint ptr %arrayidx589.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx589.i, align 4
  %xor590.i = xor i32 %xor578.i, %219
  %idxprom593.i = and i32 %xor540.i, 255
  %arrayidx594.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom593.i
  %220 = ptrtoint ptr %arrayidx594.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx594.i, align 4
  %xor595.i = xor i32 %xor584.i, %221
  %xor596.i = xor i32 %xor590.i, %xor595.i
  %xor598.i = xor i32 %xor548.i, %xor596.i
  %or.i2147.i = tail call i32 @llvm.fshl.i32(i32 %xor595.i, i32 %xor595.i, i32 24) #5
  %xor601.i = xor i32 %xor551.i, %xor596.i
  %xor603.i = xor i32 %xor601.i, %or.i2147.i
  %arrayidx604.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 12
  %222 = ptrtoint ptr %arrayidx604.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx604.i, align 4
  %xor606.i = xor i32 %223, %xor540.i
  %arrayidx607.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 16
  %224 = ptrtoint ptr %arrayidx607.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx607.i, align 4
  %xor609.i = xor i32 %225, %xor545.i
  %idxprom612.i = and i32 %xor603.i, 255
  %arrayidx613.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom612.i
  %226 = ptrtoint ptr %arrayidx613.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx613.i, align 4
  %shr615.i = lshr i32 %xor598.i, 24
  %arrayidx618.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr615.i
  %228 = ptrtoint ptr %arrayidx618.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx618.i, align 4
  %shr620.i = lshr i32 %xor603.i, 24
  %arrayidx623.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr620.i
  %230 = ptrtoint ptr %arrayidx623.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx623.i, align 4
  %xor624.i = xor i32 %231, %227
  %shr626.i = lshr i32 %xor598.i, 16
  %idxprom628.i = and i32 %shr626.i, 255
  %arrayidx629.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom628.i
  %232 = ptrtoint ptr %arrayidx629.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx629.i, align 4
  %xor630.i = xor i32 %233, %229
  %shr632.i = lshr i32 %xor603.i, 16
  %idxprom634.i = and i32 %shr632.i, 255
  %arrayidx635.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom634.i
  %234 = ptrtoint ptr %arrayidx635.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx635.i, align 4
  %xor636.i = xor i32 %xor624.i, %235
  %shr638.i = lshr i32 %xor598.i, 8
  %idxprom640.i = and i32 %shr638.i, 255
  %arrayidx641.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom640.i
  %236 = ptrtoint ptr %arrayidx641.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx641.i, align 4
  %xor642.i = xor i32 %xor630.i, %237
  %shr644.i = lshr i32 %xor603.i, 8
  %idxprom646.i = and i32 %shr644.i, 255
  %arrayidx647.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom646.i
  %238 = ptrtoint ptr %arrayidx647.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx647.i, align 4
  %xor648.i = xor i32 %xor636.i, %239
  %idxprom651.i = and i32 %xor598.i, 255
  %arrayidx652.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom651.i
  %240 = ptrtoint ptr %arrayidx652.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx652.i, align 4
  %xor653.i = xor i32 %xor642.i, %241
  %xor654.i = xor i32 %xor648.i, %xor653.i
  %xor656.i = xor i32 %xor606.i, %xor654.i
  %or.i2148.i = tail call i32 @llvm.fshl.i32(i32 %xor653.i, i32 %xor653.i, i32 24) #5
  %xor659.i = xor i32 %xor609.i, %xor654.i
  %xor661.i = xor i32 %xor659.i, %or.i2148.i
  %arrayidx663.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 4
  %242 = ptrtoint ptr %arrayidx663.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx663.i, align 4
  %xor665.i = xor i32 %243, %xor598.i
  %arrayidx666.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 8
  %244 = ptrtoint ptr %arrayidx666.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx666.i, align 4
  %xor668.i = xor i32 %245, %xor603.i
  %idxprom671.i = and i32 %xor661.i, 255
  %arrayidx672.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom671.i
  %246 = ptrtoint ptr %arrayidx672.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx672.i, align 4
  %shr674.i = lshr i32 %xor656.i, 24
  %arrayidx677.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr674.i
  %248 = ptrtoint ptr %arrayidx677.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx677.i, align 4
  %shr679.i = lshr i32 %xor661.i, 24
  %arrayidx682.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr679.i
  %250 = ptrtoint ptr %arrayidx682.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx682.i, align 4
  %xor683.i = xor i32 %251, %247
  %shr685.i = lshr i32 %xor656.i, 16
  %idxprom687.i = and i32 %shr685.i, 255
  %arrayidx688.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom687.i
  %252 = ptrtoint ptr %arrayidx688.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx688.i, align 4
  %xor689.i = xor i32 %253, %249
  %shr691.i = lshr i32 %xor661.i, 16
  %idxprom693.i = and i32 %shr691.i, 255
  %arrayidx694.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom693.i
  %254 = ptrtoint ptr %arrayidx694.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx694.i, align 4
  %xor695.i = xor i32 %xor683.i, %255
  %shr697.i = lshr i32 %xor656.i, 8
  %idxprom699.i = and i32 %shr697.i, 255
  %arrayidx700.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom699.i
  %256 = ptrtoint ptr %arrayidx700.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx700.i, align 4
  %xor701.i = xor i32 %xor689.i, %257
  %shr703.i = lshr i32 %xor661.i, 8
  %idxprom705.i = and i32 %shr703.i, 255
  %arrayidx706.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom705.i
  %258 = ptrtoint ptr %arrayidx706.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx706.i, align 4
  %xor707.i = xor i32 %xor695.i, %259
  %idxprom710.i = and i32 %xor656.i, 255
  %arrayidx711.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom710.i
  %260 = ptrtoint ptr %arrayidx711.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx711.i, align 4
  %xor712.i = xor i32 %xor701.i, %261
  %xor713.i = xor i32 %xor707.i, %xor712.i
  %xor715.i = xor i32 %xor665.i, %xor713.i
  %or.i2149.i = tail call i32 @llvm.fshl.i32(i32 %xor712.i, i32 %xor712.i, i32 24) #5
  %xor718.i = xor i32 %xor668.i, %xor713.i
  %xor720.i = xor i32 %xor718.i, %or.i2149.i
  %arrayidx722.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 3
  %262 = ptrtoint ptr %arrayidx722.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx722.i, align 4
  %arrayidx723.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 2
  %264 = ptrtoint ptr %arrayidx723.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx723.i, align 4
  %and725.i = and i32 %xor715.i, %263
  %or727.i = or i32 %265, %xor661.i
  %xor729.i = xor i32 %or727.i, %xor656.i
  %or.i2150.i = tail call i32 @llvm.fshl.i32(i32 %and725.i, i32 %and725.i, i32 1) #5
  %xor732.i = xor i32 %xor720.i, %or.i2150.i
  %arrayidx733.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 1
  %266 = ptrtoint ptr %arrayidx733.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx733.i, align 4
  %arrayidx734.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2, i32 4
  %268 = ptrtoint ptr %arrayidx734.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx734.i, align 4
  %and736.i = and i32 %xor729.i, %267
  %or738.i = or i32 %xor732.i, %269
  %xor740.i = xor i32 %or738.i, %xor715.i
  %or.i2151.i = tail call i32 @llvm.fshl.i32(i32 %and736.i, i32 %and736.i, i32 1) #5
  %xor744.i = xor i32 %or.i2151.i, %xor661.i
  %arrayidx745.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 108
  %270 = ptrtoint ptr %arrayidx745.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx745.i, align 4
  %xor747.i = xor i32 %271, %xor729.i
  %arrayidx748.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 2
  %272 = ptrtoint ptr %arrayidx748.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx748.i, align 4
  %xor750.i = xor i32 %xor744.i, %273
  %idxprom753.i = and i32 %xor732.i, 255
  %arrayidx754.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom753.i
  %274 = ptrtoint ptr %arrayidx754.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx754.i, align 4
  %shr756.i = lshr i32 %xor740.i, 24
  %arrayidx759.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr756.i
  %276 = ptrtoint ptr %arrayidx759.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx759.i, align 4
  %shr761.i = lshr i32 %xor732.i, 24
  %arrayidx764.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr761.i
  %278 = ptrtoint ptr %arrayidx764.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx764.i, align 4
  %xor765.i = xor i32 %279, %275
  %shr767.i = lshr i32 %xor740.i, 16
  %idxprom769.i = and i32 %shr767.i, 255
  %arrayidx770.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom769.i
  %280 = ptrtoint ptr %arrayidx770.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx770.i, align 4
  %xor771.i = xor i32 %281, %277
  %shr773.i = lshr i32 %xor732.i, 16
  %idxprom775.i = and i32 %shr773.i, 255
  %arrayidx776.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom775.i
  %282 = ptrtoint ptr %arrayidx776.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx776.i, align 4
  %xor777.i = xor i32 %xor765.i, %283
  %shr779.i = lshr i32 %xor740.i, 8
  %idxprom781.i = and i32 %shr779.i, 255
  %arrayidx782.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom781.i
  %284 = ptrtoint ptr %arrayidx782.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx782.i, align 4
  %xor783.i = xor i32 %xor771.i, %285
  %shr785.i = lshr i32 %xor732.i, 8
  %idxprom787.i = and i32 %shr785.i, 255
  %arrayidx788.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom787.i
  %286 = ptrtoint ptr %arrayidx788.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %arrayidx788.i, align 4
  %xor789.i = xor i32 %xor777.i, %287
  %idxprom792.i = and i32 %xor740.i, 255
  %arrayidx793.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom792.i
  %288 = ptrtoint ptr %arrayidx793.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %arrayidx793.i, align 4
  %xor794.i = xor i32 %xor783.i, %289
  %xor795.i = xor i32 %xor789.i, %xor794.i
  %xor797.i = xor i32 %xor747.i, %xor795.i
  %or.i2152.i = tail call i32 @llvm.fshl.i32(i32 %xor794.i, i32 %xor794.i, i32 24) #5
  %xor800.i = xor i32 %xor750.i, %xor795.i
  %xor802.i = xor i32 %xor800.i, %or.i2152.i
  %arrayidx803.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 100
  %290 = ptrtoint ptr %arrayidx803.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx803.i, align 4
  %xor805.i = xor i32 %291, %xor740.i
  %arrayidx806.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 104
  %292 = ptrtoint ptr %arrayidx806.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %arrayidx806.i, align 4
  %xor808.i = xor i32 %293, %xor732.i
  %idxprom811.i = and i32 %xor802.i, 255
  %arrayidx812.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom811.i
  %294 = ptrtoint ptr %arrayidx812.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %arrayidx812.i, align 4
  %shr814.i = lshr i32 %xor797.i, 24
  %arrayidx817.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr814.i
  %296 = ptrtoint ptr %arrayidx817.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx817.i, align 4
  %shr819.i = lshr i32 %xor802.i, 24
  %arrayidx822.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr819.i
  %298 = ptrtoint ptr %arrayidx822.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx822.i, align 4
  %xor823.i = xor i32 %299, %295
  %shr825.i = lshr i32 %xor797.i, 16
  %idxprom827.i = and i32 %shr825.i, 255
  %arrayidx828.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom827.i
  %300 = ptrtoint ptr %arrayidx828.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %arrayidx828.i, align 4
  %xor829.i = xor i32 %301, %297
  %shr831.i = lshr i32 %xor802.i, 16
  %idxprom833.i = and i32 %shr831.i, 255
  %arrayidx834.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom833.i
  %302 = ptrtoint ptr %arrayidx834.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %arrayidx834.i, align 4
  %xor835.i = xor i32 %xor823.i, %303
  %shr837.i = lshr i32 %xor797.i, 8
  %idxprom839.i = and i32 %shr837.i, 255
  %arrayidx840.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom839.i
  %304 = ptrtoint ptr %arrayidx840.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %arrayidx840.i, align 4
  %xor841.i = xor i32 %xor829.i, %305
  %shr843.i = lshr i32 %xor802.i, 8
  %idxprom845.i = and i32 %shr843.i, 255
  %arrayidx846.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom845.i
  %306 = ptrtoint ptr %arrayidx846.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %arrayidx846.i, align 4
  %xor847.i = xor i32 %xor835.i, %307
  %idxprom850.i = and i32 %xor797.i, 255
  %arrayidx851.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom850.i
  %308 = ptrtoint ptr %arrayidx851.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %arrayidx851.i, align 4
  %xor852.i = xor i32 %xor841.i, %309
  %xor853.i = xor i32 %xor847.i, %xor852.i
  %xor855.i = xor i32 %xor805.i, %xor853.i
  %or.i2153.i = tail call i32 @llvm.fshl.i32(i32 %xor852.i, i32 %xor852.i, i32 24) #5
  %xor858.i = xor i32 %xor808.i, %xor853.i
  %xor860.i = xor i32 %xor858.i, %or.i2153.i
  %arrayidx861.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 92
  %310 = ptrtoint ptr %arrayidx861.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx861.i, align 4
  %xor863.i = xor i32 %311, %xor797.i
  %arrayidx864.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 96
  %312 = ptrtoint ptr %arrayidx864.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %arrayidx864.i, align 4
  %xor866.i = xor i32 %313, %xor802.i
  %idxprom869.i = and i32 %xor860.i, 255
  %arrayidx870.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom869.i
  %314 = ptrtoint ptr %arrayidx870.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx870.i, align 4
  %shr872.i = lshr i32 %xor855.i, 24
  %arrayidx875.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr872.i
  %316 = ptrtoint ptr %arrayidx875.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %arrayidx875.i, align 4
  %shr877.i = lshr i32 %xor860.i, 24
  %arrayidx880.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr877.i
  %318 = ptrtoint ptr %arrayidx880.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %arrayidx880.i, align 4
  %xor881.i = xor i32 %319, %315
  %shr883.i = lshr i32 %xor855.i, 16
  %idxprom885.i = and i32 %shr883.i, 255
  %arrayidx886.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom885.i
  %320 = ptrtoint ptr %arrayidx886.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %arrayidx886.i, align 4
  %xor887.i = xor i32 %321, %317
  %shr889.i = lshr i32 %xor860.i, 16
  %idxprom891.i = and i32 %shr889.i, 255
  %arrayidx892.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom891.i
  %322 = ptrtoint ptr %arrayidx892.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %arrayidx892.i, align 4
  %xor893.i = xor i32 %xor881.i, %323
  %shr895.i = lshr i32 %xor855.i, 8
  %idxprom897.i = and i32 %shr895.i, 255
  %arrayidx898.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom897.i
  %324 = ptrtoint ptr %arrayidx898.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %arrayidx898.i, align 4
  %xor899.i = xor i32 %xor887.i, %325
  %shr901.i = lshr i32 %xor860.i, 8
  %idxprom903.i = and i32 %shr901.i, 255
  %arrayidx904.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom903.i
  %326 = ptrtoint ptr %arrayidx904.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %arrayidx904.i, align 4
  %xor905.i = xor i32 %xor893.i, %327
  %idxprom908.i = and i32 %xor855.i, 255
  %arrayidx909.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom908.i
  %328 = ptrtoint ptr %arrayidx909.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %arrayidx909.i, align 4
  %xor910.i = xor i32 %xor899.i, %329
  %xor911.i = xor i32 %xor905.i, %xor910.i
  %xor913.i = xor i32 %xor863.i, %xor911.i
  %or.i2154.i = tail call i32 @llvm.fshl.i32(i32 %xor910.i, i32 %xor910.i, i32 24) #5
  %xor916.i = xor i32 %xor866.i, %xor911.i
  %xor918.i = xor i32 %xor916.i, %or.i2154.i
  %arrayidx919.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 84
  %330 = ptrtoint ptr %arrayidx919.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %arrayidx919.i, align 4
  %xor921.i = xor i32 %331, %xor855.i
  %arrayidx922.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 88
  %332 = ptrtoint ptr %arrayidx922.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %arrayidx922.i, align 4
  %xor924.i = xor i32 %333, %xor860.i
  %idxprom927.i = and i32 %xor918.i, 255
  %arrayidx928.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom927.i
  %334 = ptrtoint ptr %arrayidx928.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %arrayidx928.i, align 4
  %shr930.i = lshr i32 %xor913.i, 24
  %arrayidx933.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr930.i
  %336 = ptrtoint ptr %arrayidx933.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %arrayidx933.i, align 4
  %shr935.i = lshr i32 %xor918.i, 24
  %arrayidx938.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr935.i
  %338 = ptrtoint ptr %arrayidx938.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %arrayidx938.i, align 4
  %xor939.i = xor i32 %339, %335
  %shr941.i = lshr i32 %xor913.i, 16
  %idxprom943.i = and i32 %shr941.i, 255
  %arrayidx944.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom943.i
  %340 = ptrtoint ptr %arrayidx944.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %arrayidx944.i, align 4
  %xor945.i = xor i32 %341, %337
  %shr947.i = lshr i32 %xor918.i, 16
  %idxprom949.i = and i32 %shr947.i, 255
  %arrayidx950.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom949.i
  %342 = ptrtoint ptr %arrayidx950.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %arrayidx950.i, align 4
  %xor951.i = xor i32 %xor939.i, %343
  %shr953.i = lshr i32 %xor913.i, 8
  %idxprom955.i = and i32 %shr953.i, 255
  %arrayidx956.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom955.i
  %344 = ptrtoint ptr %arrayidx956.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %arrayidx956.i, align 4
  %xor957.i = xor i32 %xor945.i, %345
  %shr959.i = lshr i32 %xor918.i, 8
  %idxprom961.i = and i32 %shr959.i, 255
  %arrayidx962.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom961.i
  %346 = ptrtoint ptr %arrayidx962.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %arrayidx962.i, align 4
  %xor963.i = xor i32 %xor951.i, %347
  %idxprom966.i = and i32 %xor913.i, 255
  %arrayidx967.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom966.i
  %348 = ptrtoint ptr %arrayidx967.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %arrayidx967.i, align 4
  %xor968.i = xor i32 %xor957.i, %349
  %xor969.i = xor i32 %xor963.i, %xor968.i
  %xor971.i = xor i32 %xor921.i, %xor969.i
  %or.i2155.i = tail call i32 @llvm.fshl.i32(i32 %xor968.i, i32 %xor968.i, i32 24) #5
  %xor974.i = xor i32 %xor924.i, %xor969.i
  %xor976.i = xor i32 %xor974.i, %or.i2155.i
  %arrayidx977.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 76
  %350 = ptrtoint ptr %arrayidx977.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %arrayidx977.i, align 4
  %xor979.i = xor i32 %351, %xor913.i
  %arrayidx980.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 80
  %352 = ptrtoint ptr %arrayidx980.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %arrayidx980.i, align 4
  %xor982.i = xor i32 %353, %xor918.i
  %idxprom985.i = and i32 %xor976.i, 255
  %arrayidx986.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom985.i
  %354 = ptrtoint ptr %arrayidx986.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %arrayidx986.i, align 4
  %shr988.i = lshr i32 %xor971.i, 24
  %arrayidx991.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr988.i
  %356 = ptrtoint ptr %arrayidx991.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %arrayidx991.i, align 4
  %shr993.i = lshr i32 %xor976.i, 24
  %arrayidx996.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr993.i
  %358 = ptrtoint ptr %arrayidx996.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %arrayidx996.i, align 4
  %xor997.i = xor i32 %359, %355
  %shr999.i = lshr i32 %xor971.i, 16
  %idxprom1001.i = and i32 %shr999.i, 255
  %arrayidx1002.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom1001.i
  %360 = ptrtoint ptr %arrayidx1002.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %arrayidx1002.i, align 4
  %xor1003.i = xor i32 %361, %357
  %shr1005.i = lshr i32 %xor976.i, 16
  %idxprom1007.i = and i32 %shr1005.i, 255
  %arrayidx1008.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1007.i
  %362 = ptrtoint ptr %arrayidx1008.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %arrayidx1008.i, align 4
  %xor1009.i = xor i32 %xor997.i, %363
  %shr1011.i = lshr i32 %xor971.i, 8
  %idxprom1013.i = and i32 %shr1011.i, 255
  %arrayidx1014.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1013.i
  %364 = ptrtoint ptr %arrayidx1014.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %arrayidx1014.i, align 4
  %xor1015.i = xor i32 %xor1003.i, %365
  %shr1017.i = lshr i32 %xor976.i, 8
  %idxprom1019.i = and i32 %shr1017.i, 255
  %arrayidx1020.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1019.i
  %366 = ptrtoint ptr %arrayidx1020.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %arrayidx1020.i, align 4
  %xor1021.i = xor i32 %xor1009.i, %367
  %idxprom1024.i = and i32 %xor971.i, 255
  %arrayidx1025.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1024.i
  %368 = ptrtoint ptr %arrayidx1025.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %arrayidx1025.i, align 4
  %xor1026.i = xor i32 %xor1015.i, %369
  %xor1027.i = xor i32 %xor1021.i, %xor1026.i
  %xor1029.i = xor i32 %xor979.i, %xor1027.i
  %or.i2156.i = tail call i32 @llvm.fshl.i32(i32 %xor1026.i, i32 %xor1026.i, i32 24) #5
  %xor1032.i = xor i32 %xor982.i, %xor1027.i
  %xor1034.i = xor i32 %xor1032.i, %or.i2156.i
  %arrayidx1036.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 68
  %370 = ptrtoint ptr %arrayidx1036.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %arrayidx1036.i, align 4
  %xor1038.i = xor i32 %371, %xor971.i
  %arrayidx1039.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 72
  %372 = ptrtoint ptr %arrayidx1039.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %arrayidx1039.i, align 4
  %xor1041.i = xor i32 %373, %xor976.i
  %idxprom1044.i = and i32 %xor1034.i, 255
  %arrayidx1045.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom1044.i
  %374 = ptrtoint ptr %arrayidx1045.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %arrayidx1045.i, align 4
  %shr1047.i = lshr i32 %xor1029.i, 24
  %arrayidx1050.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr1047.i
  %376 = ptrtoint ptr %arrayidx1050.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %arrayidx1050.i, align 4
  %shr1052.i = lshr i32 %xor1034.i, 24
  %arrayidx1055.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr1052.i
  %378 = ptrtoint ptr %arrayidx1055.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %arrayidx1055.i, align 4
  %xor1056.i = xor i32 %379, %375
  %shr1058.i = lshr i32 %xor1029.i, 16
  %idxprom1060.i = and i32 %shr1058.i, 255
  %arrayidx1061.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom1060.i
  %380 = ptrtoint ptr %arrayidx1061.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %arrayidx1061.i, align 4
  %xor1062.i = xor i32 %381, %377
  %shr1064.i = lshr i32 %xor1034.i, 16
  %idxprom1066.i = and i32 %shr1064.i, 255
  %arrayidx1067.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1066.i
  %382 = ptrtoint ptr %arrayidx1067.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %arrayidx1067.i, align 4
  %xor1068.i = xor i32 %xor1056.i, %383
  %shr1070.i = lshr i32 %xor1029.i, 8
  %idxprom1072.i = and i32 %shr1070.i, 255
  %arrayidx1073.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1072.i
  %384 = ptrtoint ptr %arrayidx1073.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %arrayidx1073.i, align 4
  %xor1074.i = xor i32 %xor1062.i, %385
  %shr1076.i = lshr i32 %xor1034.i, 8
  %idxprom1078.i = and i32 %shr1076.i, 255
  %arrayidx1079.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1078.i
  %386 = ptrtoint ptr %arrayidx1079.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %arrayidx1079.i, align 4
  %xor1080.i = xor i32 %xor1068.i, %387
  %idxprom1083.i = and i32 %xor1029.i, 255
  %arrayidx1084.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1083.i
  %388 = ptrtoint ptr %arrayidx1084.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %arrayidx1084.i, align 4
  %xor1085.i = xor i32 %xor1074.i, %389
  %xor1086.i = xor i32 %xor1080.i, %xor1085.i
  %xor1088.i = xor i32 %xor1038.i, %xor1086.i
  %or.i2157.i = tail call i32 @llvm.fshl.i32(i32 %xor1085.i, i32 %xor1085.i, i32 24) #5
  %xor1091.i = xor i32 %xor1041.i, %xor1086.i
  %xor1093.i = xor i32 %xor1091.i, %or.i2157.i
  %arrayidx1095.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 60
  %390 = ptrtoint ptr %arrayidx1095.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %arrayidx1095.i, align 4
  %arrayidx1096.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 56
  %392 = ptrtoint ptr %arrayidx1096.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %arrayidx1096.i, align 4
  %and1098.i = and i32 %xor1088.i, %391
  %or1100.i = or i32 %393, %xor1034.i
  %xor1102.i = xor i32 %or1100.i, %xor1029.i
  %or.i2158.i = tail call i32 @llvm.fshl.i32(i32 %and1098.i, i32 %and1098.i, i32 1) #5
  %xor1105.i = xor i32 %xor1093.i, %or.i2158.i
  %arrayidx1106.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 52
  %394 = ptrtoint ptr %arrayidx1106.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %arrayidx1106.i, align 4
  %arrayidx1107.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 64
  %396 = ptrtoint ptr %arrayidx1107.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %arrayidx1107.i, align 4
  %and1109.i = and i32 %xor1102.i, %395
  %or1111.i = or i32 %xor1105.i, %397
  %xor1113.i = xor i32 %or1111.i, %xor1088.i
  %or.i2159.i = tail call i32 @llvm.fshl.i32(i32 %and1109.i, i32 %and1109.i, i32 1) #5
  %xor1117.i = xor i32 %or.i2159.i, %xor1034.i
  %arrayidx1118.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 44
  %398 = ptrtoint ptr %arrayidx1118.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %arrayidx1118.i, align 4
  %xor1120.i = xor i32 %399, %xor1102.i
  %arrayidx1121.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 48
  %400 = ptrtoint ptr %arrayidx1121.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %arrayidx1121.i, align 4
  %xor1123.i = xor i32 %xor1117.i, %401
  %idxprom1126.i = and i32 %xor1105.i, 255
  %arrayidx1127.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom1126.i
  %402 = ptrtoint ptr %arrayidx1127.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %arrayidx1127.i, align 4
  %shr1129.i = lshr i32 %xor1113.i, 24
  %arrayidx1132.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr1129.i
  %404 = ptrtoint ptr %arrayidx1132.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %arrayidx1132.i, align 4
  %shr1134.i = lshr i32 %xor1105.i, 24
  %arrayidx1137.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr1134.i
  %406 = ptrtoint ptr %arrayidx1137.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %arrayidx1137.i, align 4
  %xor1138.i = xor i32 %407, %403
  %shr1140.i = lshr i32 %xor1113.i, 16
  %idxprom1142.i = and i32 %shr1140.i, 255
  %arrayidx1143.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom1142.i
  %408 = ptrtoint ptr %arrayidx1143.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %arrayidx1143.i, align 4
  %xor1144.i = xor i32 %409, %405
  %shr1146.i = lshr i32 %xor1105.i, 16
  %idxprom1148.i = and i32 %shr1146.i, 255
  %arrayidx1149.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1148.i
  %410 = ptrtoint ptr %arrayidx1149.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %arrayidx1149.i, align 4
  %xor1150.i = xor i32 %xor1138.i, %411
  %shr1152.i = lshr i32 %xor1113.i, 8
  %idxprom1154.i = and i32 %shr1152.i, 255
  %arrayidx1155.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1154.i
  %412 = ptrtoint ptr %arrayidx1155.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %arrayidx1155.i, align 4
  %xor1156.i = xor i32 %xor1144.i, %413
  %shr1158.i = lshr i32 %xor1105.i, 8
  %idxprom1160.i = and i32 %shr1158.i, 255
  %arrayidx1161.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1160.i
  %414 = ptrtoint ptr %arrayidx1161.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %arrayidx1161.i, align 4
  %xor1162.i = xor i32 %xor1150.i, %415
  %idxprom1165.i = and i32 %xor1113.i, 255
  %arrayidx1166.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1165.i
  %416 = ptrtoint ptr %arrayidx1166.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %arrayidx1166.i, align 4
  %xor1167.i = xor i32 %xor1156.i, %417
  %xor1168.i = xor i32 %xor1162.i, %xor1167.i
  %xor1170.i = xor i32 %xor1120.i, %xor1168.i
  %or.i2160.i = tail call i32 @llvm.fshl.i32(i32 %xor1167.i, i32 %xor1167.i, i32 24) #5
  %xor1173.i = xor i32 %xor1123.i, %xor1168.i
  %xor1175.i = xor i32 %xor1173.i, %or.i2160.i
  %arrayidx1176.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 36
  %418 = ptrtoint ptr %arrayidx1176.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %arrayidx1176.i, align 4
  %xor1178.i = xor i32 %419, %xor1113.i
  %arrayidx1179.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 40
  %420 = ptrtoint ptr %arrayidx1179.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %arrayidx1179.i, align 4
  %xor1181.i = xor i32 %421, %xor1105.i
  %idxprom1184.i = and i32 %xor1175.i, 255
  %arrayidx1185.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom1184.i
  %422 = ptrtoint ptr %arrayidx1185.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %arrayidx1185.i, align 4
  %shr1187.i = lshr i32 %xor1170.i, 24
  %arrayidx1190.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr1187.i
  %424 = ptrtoint ptr %arrayidx1190.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %arrayidx1190.i, align 4
  %shr1192.i = lshr i32 %xor1175.i, 24
  %arrayidx1195.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr1192.i
  %426 = ptrtoint ptr %arrayidx1195.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %arrayidx1195.i, align 4
  %xor1196.i = xor i32 %427, %423
  %shr1198.i = lshr i32 %xor1170.i, 16
  %idxprom1200.i = and i32 %shr1198.i, 255
  %arrayidx1201.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom1200.i
  %428 = ptrtoint ptr %arrayidx1201.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %arrayidx1201.i, align 4
  %xor1202.i = xor i32 %429, %425
  %shr1204.i = lshr i32 %xor1175.i, 16
  %idxprom1206.i = and i32 %shr1204.i, 255
  %arrayidx1207.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1206.i
  %430 = ptrtoint ptr %arrayidx1207.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %arrayidx1207.i, align 4
  %xor1208.i = xor i32 %xor1196.i, %431
  %shr1210.i = lshr i32 %xor1170.i, 8
  %idxprom1212.i = and i32 %shr1210.i, 255
  %arrayidx1213.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1212.i
  %432 = ptrtoint ptr %arrayidx1213.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %arrayidx1213.i, align 4
  %xor1214.i = xor i32 %xor1202.i, %433
  %shr1216.i = lshr i32 %xor1175.i, 8
  %idxprom1218.i = and i32 %shr1216.i, 255
  %arrayidx1219.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1218.i
  %434 = ptrtoint ptr %arrayidx1219.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %arrayidx1219.i, align 4
  %xor1220.i = xor i32 %xor1208.i, %435
  %idxprom1223.i = and i32 %xor1170.i, 255
  %arrayidx1224.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1223.i
  %436 = ptrtoint ptr %arrayidx1224.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %arrayidx1224.i, align 4
  %xor1225.i = xor i32 %xor1214.i, %437
  %xor1226.i = xor i32 %xor1220.i, %xor1225.i
  %xor1228.i = xor i32 %xor1178.i, %xor1226.i
  %or.i2161.i = tail call i32 @llvm.fshl.i32(i32 %xor1225.i, i32 %xor1225.i, i32 24) #5
  %xor1231.i = xor i32 %xor1181.i, %xor1226.i
  %xor1233.i = xor i32 %xor1231.i, %or.i2161.i
  %arrayidx1234.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %438 = ptrtoint ptr %arrayidx1234.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %arrayidx1234.i, align 4
  %xor1236.i = xor i32 %439, %xor1170.i
  %arrayidx1237.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 32
  %440 = ptrtoint ptr %arrayidx1237.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %arrayidx1237.i, align 4
  %xor1239.i = xor i32 %441, %xor1175.i
  %idxprom1242.i = and i32 %xor1233.i, 255
  %arrayidx1243.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom1242.i
  %442 = ptrtoint ptr %arrayidx1243.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %arrayidx1243.i, align 4
  %shr1245.i = lshr i32 %xor1228.i, 24
  %arrayidx1248.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr1245.i
  %444 = ptrtoint ptr %arrayidx1248.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %arrayidx1248.i, align 4
  %shr1250.i = lshr i32 %xor1233.i, 24
  %arrayidx1253.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr1250.i
  %446 = ptrtoint ptr %arrayidx1253.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %arrayidx1253.i, align 4
  %xor1254.i = xor i32 %447, %443
  %shr1256.i = lshr i32 %xor1228.i, 16
  %idxprom1258.i = and i32 %shr1256.i, 255
  %arrayidx1259.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom1258.i
  %448 = ptrtoint ptr %arrayidx1259.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %arrayidx1259.i, align 4
  %xor1260.i = xor i32 %449, %445
  %shr1262.i = lshr i32 %xor1233.i, 16
  %idxprom1264.i = and i32 %shr1262.i, 255
  %arrayidx1265.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1264.i
  %450 = ptrtoint ptr %arrayidx1265.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %arrayidx1265.i, align 4
  %xor1266.i = xor i32 %xor1254.i, %451
  %shr1268.i = lshr i32 %xor1228.i, 8
  %idxprom1270.i = and i32 %shr1268.i, 255
  %arrayidx1271.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1270.i
  %452 = ptrtoint ptr %arrayidx1271.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %arrayidx1271.i, align 4
  %xor1272.i = xor i32 %xor1260.i, %453
  %shr1274.i = lshr i32 %xor1233.i, 8
  %idxprom1276.i = and i32 %shr1274.i, 255
  %arrayidx1277.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1276.i
  %454 = ptrtoint ptr %arrayidx1277.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %arrayidx1277.i, align 4
  %xor1278.i = xor i32 %xor1266.i, %455
  %idxprom1281.i = and i32 %xor1228.i, 255
  %arrayidx1282.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1281.i
  %456 = ptrtoint ptr %arrayidx1282.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %arrayidx1282.i, align 4
  %xor1283.i = xor i32 %xor1272.i, %457
  %xor1284.i = xor i32 %xor1278.i, %xor1283.i
  %xor1286.i = xor i32 %xor1236.i, %xor1284.i
  %or.i2162.i = tail call i32 @llvm.fshl.i32(i32 %xor1283.i, i32 %xor1283.i, i32 24) #5
  %xor1289.i = xor i32 %xor1239.i, %xor1284.i
  %xor1291.i = xor i32 %xor1289.i, %or.i2162.i
  %arrayidx1292.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 20
  %458 = ptrtoint ptr %arrayidx1292.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %arrayidx1292.i, align 4
  %xor1294.i = xor i32 %459, %xor1228.i
  %arrayidx1295.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %460 = ptrtoint ptr %arrayidx1295.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %arrayidx1295.i, align 4
  %xor1297.i = xor i32 %461, %xor1233.i
  %idxprom1300.i = and i32 %xor1291.i, 255
  %arrayidx1301.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom1300.i
  %462 = ptrtoint ptr %arrayidx1301.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %arrayidx1301.i, align 4
  %shr1303.i = lshr i32 %xor1286.i, 24
  %arrayidx1306.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr1303.i
  %464 = ptrtoint ptr %arrayidx1306.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %arrayidx1306.i, align 4
  %shr1308.i = lshr i32 %xor1291.i, 24
  %arrayidx1311.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr1308.i
  %466 = ptrtoint ptr %arrayidx1311.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %arrayidx1311.i, align 4
  %xor1312.i = xor i32 %467, %463
  %shr1314.i = lshr i32 %xor1286.i, 16
  %idxprom1316.i = and i32 %shr1314.i, 255
  %arrayidx1317.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom1316.i
  %468 = ptrtoint ptr %arrayidx1317.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %arrayidx1317.i, align 4
  %xor1318.i = xor i32 %469, %465
  %shr1320.i = lshr i32 %xor1291.i, 16
  %idxprom1322.i = and i32 %shr1320.i, 255
  %arrayidx1323.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1322.i
  %470 = ptrtoint ptr %arrayidx1323.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %arrayidx1323.i, align 4
  %xor1324.i = xor i32 %xor1312.i, %471
  %shr1326.i = lshr i32 %xor1286.i, 8
  %idxprom1328.i = and i32 %shr1326.i, 255
  %arrayidx1329.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1328.i
  %472 = ptrtoint ptr %arrayidx1329.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %arrayidx1329.i, align 4
  %xor1330.i = xor i32 %xor1318.i, %473
  %shr1332.i = lshr i32 %xor1291.i, 8
  %idxprom1334.i = and i32 %shr1332.i, 255
  %arrayidx1335.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1334.i
  %474 = ptrtoint ptr %arrayidx1335.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %arrayidx1335.i, align 4
  %xor1336.i = xor i32 %xor1324.i, %475
  %idxprom1339.i = and i32 %xor1286.i, 255
  %arrayidx1340.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1339.i
  %476 = ptrtoint ptr %arrayidx1340.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %arrayidx1340.i, align 4
  %xor1341.i = xor i32 %xor1330.i, %477
  %xor1342.i = xor i32 %xor1336.i, %xor1341.i
  %xor1344.i = xor i32 %xor1294.i, %xor1342.i
  %or.i2163.i = tail call i32 @llvm.fshl.i32(i32 %xor1341.i, i32 %xor1341.i, i32 24) #5
  %xor1347.i = xor i32 %xor1297.i, %xor1342.i
  %xor1349.i = xor i32 %xor1347.i, %or.i2163.i
  %arrayidx1350.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 12
  %478 = ptrtoint ptr %arrayidx1350.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %arrayidx1350.i, align 4
  %xor1352.i = xor i32 %479, %xor1286.i
  %arrayidx1353.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 16
  %480 = ptrtoint ptr %arrayidx1353.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %arrayidx1353.i, align 4
  %xor1355.i = xor i32 %481, %xor1291.i
  %idxprom1358.i = and i32 %xor1349.i, 255
  %arrayidx1359.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom1358.i
  %482 = ptrtoint ptr %arrayidx1359.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %arrayidx1359.i, align 4
  %shr1361.i = lshr i32 %xor1344.i, 24
  %arrayidx1364.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr1361.i
  %484 = ptrtoint ptr %arrayidx1364.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %arrayidx1364.i, align 4
  %shr1366.i = lshr i32 %xor1349.i, 24
  %arrayidx1369.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr1366.i
  %486 = ptrtoint ptr %arrayidx1369.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %arrayidx1369.i, align 4
  %xor1370.i = xor i32 %487, %483
  %shr1372.i = lshr i32 %xor1344.i, 16
  %idxprom1374.i = and i32 %shr1372.i, 255
  %arrayidx1375.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom1374.i
  %488 = ptrtoint ptr %arrayidx1375.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %arrayidx1375.i, align 4
  %xor1376.i = xor i32 %489, %485
  %shr1378.i = lshr i32 %xor1349.i, 16
  %idxprom1380.i = and i32 %shr1378.i, 255
  %arrayidx1381.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1380.i
  %490 = ptrtoint ptr %arrayidx1381.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %arrayidx1381.i, align 4
  %xor1382.i = xor i32 %xor1370.i, %491
  %shr1384.i = lshr i32 %xor1344.i, 8
  %idxprom1386.i = and i32 %shr1384.i, 255
  %arrayidx1387.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1386.i
  %492 = ptrtoint ptr %arrayidx1387.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %arrayidx1387.i, align 4
  %xor1388.i = xor i32 %xor1376.i, %493
  %shr1390.i = lshr i32 %xor1349.i, 8
  %idxprom1392.i = and i32 %shr1390.i, 255
  %arrayidx1393.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1392.i
  %494 = ptrtoint ptr %arrayidx1393.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %arrayidx1393.i, align 4
  %xor1394.i = xor i32 %xor1382.i, %495
  %idxprom1397.i = and i32 %xor1344.i, 255
  %arrayidx1398.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1397.i
  %496 = ptrtoint ptr %arrayidx1398.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %arrayidx1398.i, align 4
  %xor1399.i = xor i32 %xor1388.i, %497
  %xor1400.i = xor i32 %xor1394.i, %xor1399.i
  %xor1402.i = xor i32 %xor1352.i, %xor1400.i
  %or.i2164.i = tail call i32 @llvm.fshl.i32(i32 %xor1399.i, i32 %xor1399.i, i32 24) #5
  %xor1405.i = xor i32 %xor1355.i, %xor1400.i
  %xor1407.i = xor i32 %xor1405.i, %or.i2164.i
  %arrayidx1409.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %498 = ptrtoint ptr %arrayidx1409.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %arrayidx1409.i, align 4
  %xor1411.i = xor i32 %499, %xor1344.i
  %arrayidx1412.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %500 = ptrtoint ptr %arrayidx1412.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %arrayidx1412.i, align 4
  %xor1414.i = xor i32 %501, %xor1349.i
  %idxprom1417.i = and i32 %xor1407.i, 255
  %arrayidx1418.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom1417.i
  %502 = ptrtoint ptr %arrayidx1418.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %arrayidx1418.i, align 4
  %shr1420.i = lshr i32 %xor1402.i, 24
  %arrayidx1423.i = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr1420.i
  %504 = ptrtoint ptr %arrayidx1423.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %arrayidx1423.i, align 4
  %shr1425.i = lshr i32 %xor1407.i, 24
  %arrayidx1428.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr1425.i
  %506 = ptrtoint ptr %arrayidx1428.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %arrayidx1428.i, align 4
  %xor1429.i = xor i32 %507, %503
  %shr1431.i = lshr i32 %xor1402.i, 16
  %idxprom1433.i = and i32 %shr1431.i, 255
  %arrayidx1434.i = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom1433.i
  %508 = ptrtoint ptr %arrayidx1434.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %arrayidx1434.i, align 4
  %xor1435.i = xor i32 %509, %505
  %shr1437.i = lshr i32 %xor1407.i, 16
  %idxprom1439.i = and i32 %shr1437.i, 255
  %arrayidx1440.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1439.i
  %510 = ptrtoint ptr %arrayidx1440.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %arrayidx1440.i, align 4
  %xor1441.i = xor i32 %xor1429.i, %511
  %shr1443.i = lshr i32 %xor1402.i, 8
  %idxprom1445.i = and i32 %shr1443.i, 255
  %arrayidx1446.i = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom1445.i
  %512 = ptrtoint ptr %arrayidx1446.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %arrayidx1446.i, align 4
  %xor1447.i = xor i32 %xor1435.i, %513
  %shr1449.i = lshr i32 %xor1407.i, 8
  %idxprom1451.i = and i32 %shr1449.i, 255
  %arrayidx1452.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1451.i
  %514 = ptrtoint ptr %arrayidx1452.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %arrayidx1452.i, align 4
  %xor1453.i = xor i32 %xor1441.i, %515
  %idxprom1456.i = and i32 %xor1402.i, 255
  %arrayidx1457.i = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom1456.i
  %516 = ptrtoint ptr %arrayidx1457.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %arrayidx1457.i, align 4
  %xor1458.i = xor i32 %xor1447.i, %517
  %xor1459.i = xor i32 %xor1453.i, %xor1458.i
  %xor1461.i = xor i32 %xor1411.i, %xor1459.i
  %or.i2165.i = tail call i32 @llvm.fshl.i32(i32 %xor1458.i, i32 %xor1458.i, i32 24) #5
  %xor1464.i = xor i32 %xor1414.i, %xor1459.i
  %xor1466.i = xor i32 %xor1464.i, %or.i2165.i
  %518 = ptrtoint ptr %key_table to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %key_table, align 4
  %xor1469.i = xor i32 %519, %xor1402.i
  %arrayidx1470.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %520 = ptrtoint ptr %arrayidx1470.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %arrayidx1470.i, align 4
  %xor1472.i = xor i32 %521, %xor1407.i
  %522 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %522, i32 4)
  store i32 %xor1469.i, ptr %out, align 1
  %add.ptr13 = getelementptr i8, ptr %out, i32 4
  %523 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_storeN_noabort(i32 %523, i32 4)
  store i32 %xor1472.i, ptr %add.ptr13, align 1
  %add.ptr15 = getelementptr i8, ptr %out, i32 8
  %524 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_storeN_noabort(i32 %524, i32 4)
  store i32 %xor1461.i, ptr %add.ptr15, align 1
  %add.ptr17 = getelementptr i8, ptr %out, i32 12
  %525 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_storeN_noabort(i32 %525, i32 4)
  store i32 %xor1466.i, ptr %add.ptr17, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @camellia_setup256(ptr nocapture noundef readonly %key, ptr noundef %subkey) unnamed_addr #2 align 64 {
entry:
  %subL = alloca [34 x i32], align 4
  %subR = alloca [34 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %subL) #5
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %subR) #5
  %0 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %key, align 1
  %add.ptr = getelementptr i8, ptr %key, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %add.ptr2 = getelementptr i8, ptr %key, i32 8
  %4 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr2, align 1
  %add.ptr4 = getelementptr i8, ptr %key, i32 12
  %6 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr4, align 1
  %add.ptr6 = getelementptr i8, ptr %key, i32 16
  %8 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %add.ptr6, align 1
  %add.ptr8 = getelementptr i8, ptr %key, i32 20
  %10 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %add.ptr8, align 1
  %add.ptr10 = getelementptr i8, ptr %key, i32 24
  %12 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr10, align 1
  %add.ptr12 = getelementptr i8, ptr %key, i32 28
  %14 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %add.ptr12, align 1
  %16 = ptrtoint ptr %subL to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %1, ptr %subL, align 4
  %17 = ptrtoint ptr %subR to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %3, ptr %subR, align 4
  %arrayidx15 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %5, ptr %arrayidx15, align 4
  %arrayidx16 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %7, ptr %arrayidx16, align 4
  %add = tail call i32 @llvm.fshl.i32(i32 %3, i32 %5, i32 13)
  %add19 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %7, i32 13)
  %add22 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %1, i32 13)
  %add25 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %3, i32 13)
  %arrayidx26 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 12
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %arrayidx26, align 4
  %arrayidx27 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 12
  %21 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add19, ptr %arrayidx27, align 4
  %arrayidx28 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 13
  %22 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add22, ptr %arrayidx28, align 4
  %arrayidx29 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 13
  %23 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add25, ptr %arrayidx29, align 4
  %add32 = tail call i32 @llvm.fshl.i32(i32 %add, i32 %add19, i32 15)
  %add35 = tail call i32 @llvm.fshl.i32(i32 %add19, i32 %add22, i32 15)
  %add38 = tail call i32 @llvm.fshl.i32(i32 %add22, i32 %add25, i32 15)
  %add42 = tail call i32 @llvm.fshl.i32(i32 %add25, i32 %add, i32 15)
  %arrayidx43 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 16
  %24 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add32, ptr %arrayidx43, align 4
  %arrayidx44 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 16
  %25 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add35, ptr %arrayidx44, align 4
  %arrayidx45 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 17
  %26 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add38, ptr %arrayidx45, align 4
  %arrayidx46 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 17
  %27 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add42, ptr %arrayidx46, align 4
  %add49 = tail call i32 @llvm.fshl.i32(i32 %add32, i32 %add35, i32 17)
  %add52 = tail call i32 @llvm.fshl.i32(i32 %add35, i32 %add38, i32 17)
  %add55 = tail call i32 @llvm.fshl.i32(i32 %add38, i32 %add42, i32 17)
  %add59 = tail call i32 @llvm.fshl.i32(i32 %add42, i32 %add32, i32 17)
  %arrayidx60 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 22
  %28 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add49, ptr %arrayidx60, align 4
  %arrayidx61 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 22
  %29 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add52, ptr %arrayidx61, align 4
  %arrayidx62 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 23
  %30 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add55, ptr %arrayidx62, align 4
  %arrayidx63 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 23
  %31 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add59, ptr %arrayidx63, align 4
  %add66 = tail call i32 @llvm.fshl.i32(i32 %add52, i32 %add55, i32 2)
  %add69 = tail call i32 @llvm.fshl.i32(i32 %add55, i32 %add59, i32 2)
  %add72 = tail call i32 @llvm.fshl.i32(i32 %add59, i32 %add49, i32 2)
  %add76 = tail call i32 @llvm.fshl.i32(i32 %add49, i32 %add52, i32 2)
  %arrayidx77 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 30
  %32 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add66, ptr %arrayidx77, align 4
  %arrayidx78 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 30
  %33 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add69, ptr %arrayidx78, align 4
  %arrayidx79 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 31
  %34 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add72, ptr %arrayidx79, align 4
  %arrayidx80 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 31
  %35 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add76, ptr %arrayidx80, align 4
  %add83 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %11, i32 15)
  %add86 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %13, i32 15)
  %add89 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %15, i32 15)
  %add93 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %9, i32 15)
  %arrayidx94 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 4
  %36 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add83, ptr %arrayidx94, align 4
  %arrayidx95 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 4
  %37 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add86, ptr %arrayidx95, align 4
  %arrayidx96 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 5
  %38 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add89, ptr %arrayidx96, align 4
  %arrayidx97 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 5
  %39 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add93, ptr %arrayidx97, align 4
  %add100 = tail call i32 @llvm.fshl.i32(i32 %add83, i32 %add86, i32 15)
  %add103 = tail call i32 @llvm.fshl.i32(i32 %add86, i32 %add89, i32 15)
  %add106 = tail call i32 @llvm.fshl.i32(i32 %add89, i32 %add93, i32 15)
  %add110 = tail call i32 @llvm.fshl.i32(i32 %add93, i32 %add83, i32 15)
  %arrayidx111 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 8
  %40 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add100, ptr %arrayidx111, align 4
  %arrayidx112 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 8
  %41 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add103, ptr %arrayidx112, align 4
  %arrayidx113 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 9
  %42 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add106, ptr %arrayidx113, align 4
  %arrayidx114 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 9
  %43 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add110, ptr %arrayidx114, align 4
  %add117 = tail call i32 @llvm.fshl.i32(i32 %add100, i32 %add103, i32 30)
  %add120 = tail call i32 @llvm.fshl.i32(i32 %add103, i32 %add106, i32 30)
  %add123 = tail call i32 @llvm.fshl.i32(i32 %add106, i32 %add110, i32 30)
  %add127 = tail call i32 @llvm.fshl.i32(i32 %add110, i32 %add100, i32 30)
  %arrayidx128 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 18
  %44 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add117, ptr %arrayidx128, align 4
  %arrayidx129 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 18
  %45 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add120, ptr %arrayidx129, align 4
  %arrayidx130 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 19
  %46 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add123, ptr %arrayidx130, align 4
  %arrayidx131 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 19
  %47 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add127, ptr %arrayidx131, align 4
  %add134 = tail call i32 @llvm.fshl.i32(i32 %add120, i32 %add123, i32 2)
  %add137 = tail call i32 @llvm.fshl.i32(i32 %add123, i32 %add127, i32 2)
  %add140 = tail call i32 @llvm.fshl.i32(i32 %add127, i32 %add117, i32 2)
  %add144 = tail call i32 @llvm.fshl.i32(i32 %add117, i32 %add120, i32 2)
  %arrayidx145 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 26
  %48 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add134, ptr %arrayidx145, align 4
  %arrayidx146 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 26
  %49 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add137, ptr %arrayidx146, align 4
  %arrayidx147 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 27
  %50 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add140, ptr %arrayidx147, align 4
  %arrayidx148 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 27
  %51 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add144, ptr %arrayidx148, align 4
  %add151 = tail call i32 @llvm.fshl.i32(i32 %add137, i32 %add140, i32 2)
  %add154 = tail call i32 @llvm.fshl.i32(i32 %add140, i32 %add144, i32 2)
  %add157 = tail call i32 @llvm.fshl.i32(i32 %add144, i32 %add134, i32 2)
  %add161 = tail call i32 @llvm.fshl.i32(i32 %add134, i32 %add137, i32 2)
  %52 = xor i32 %1, %add151
  %xor169 = xor i32 %52, -1600231809
  %53 = xor i32 %3, %add154
  %xor170 = xor i32 %53, 1003262091
  %shr171 = lshr i32 %xor169, 16
  %shr172 = lshr i32 %xor170, 16
  %idxprom = and i32 %xor170, 255
  %arrayidx173 = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom
  %54 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx173, align 4
  %shr174 = lshr i32 %xor170, 24
  %arrayidx177 = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr174
  %56 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx177, align 4
  %xor178 = xor i32 %57, %55
  %idxprom180 = and i32 %shr172, 255
  %arrayidx181 = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom180
  %58 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx181, align 4
  %xor182 = xor i32 %xor178, %59
  %shr183 = lshr i32 %xor170, 8
  %idxprom185 = and i32 %shr183, 255
  %arrayidx186 = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom185
  %60 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx186, align 4
  %xor187 = xor i32 %xor182, %61
  %shr188 = lshr i32 %xor169, 24
  %arrayidx191 = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr188
  %62 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx191, align 4
  %idxprom193 = and i32 %shr171, 255
  %arrayidx194 = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom193
  %64 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx194, align 4
  %xor195 = xor i32 %65, %63
  %shr196 = lshr i32 %xor169, 8
  %idxprom198 = and i32 %shr196, 255
  %arrayidx199 = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom198
  %66 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx199, align 4
  %xor200 = xor i32 %xor195, %67
  %idxprom202 = and i32 %xor169, 255
  %arrayidx203 = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom202
  %68 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx203, align 4
  %xor204 = xor i32 %xor200, %69
  %xor205 = xor i32 %xor187, %xor204
  %or.i = tail call i32 @llvm.fshl.i32(i32 %xor204, i32 %xor204, i32 24) #5
  %xor208 = xor i32 %or.i, %xor205
  %xor166 = xor i32 %xor205, %add157
  %70 = xor i32 %xor166, %5
  %xor211 = xor i32 %70, -1233459112
  %xor168 = xor i32 %xor208, %add161
  %71 = xor i32 %xor168, %7
  %xor212 = xor i32 %71, 1286239154
  %shr213 = lshr i32 %xor211, 16
  %shr214 = lshr i32 %xor212, 16
  %idxprom216 = and i32 %xor212, 255
  %arrayidx217 = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom216
  %72 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx217, align 4
  %shr218 = lshr i32 %xor212, 24
  %arrayidx221 = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr218
  %74 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx221, align 4
  %xor222 = xor i32 %75, %73
  %idxprom224 = and i32 %shr214, 255
  %arrayidx225 = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom224
  %76 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx225, align 4
  %xor226 = xor i32 %xor222, %77
  %shr227 = lshr i32 %xor212, 8
  %idxprom229 = and i32 %shr227, 255
  %arrayidx230 = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom229
  %78 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx230, align 4
  %xor231 = xor i32 %xor226, %79
  %shr232 = lshr i32 %xor211, 24
  %arrayidx235 = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr232
  %80 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx235, align 4
  %idxprom237 = and i32 %shr213, 255
  %arrayidx238 = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom237
  %82 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx238, align 4
  %xor239 = xor i32 %83, %81
  %shr240 = lshr i32 %xor211, 8
  %idxprom242 = and i32 %shr240, 255
  %arrayidx243 = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom242
  %84 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx243, align 4
  %xor244 = xor i32 %xor239, %85
  %idxprom246 = and i32 %xor211, 255
  %arrayidx247 = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom246
  %86 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx247, align 4
  %xor248 = xor i32 %xor244, %87
  %xor249 = xor i32 %xor231, %xor248
  %or.i890 = tail call i32 @llvm.fshl.i32(i32 %xor248, i32 %xor248, i32 24) #5
  %xor252 = xor i32 %or.i890, %xor249
  %xor253 = xor i32 %xor249, %add151
  %xor254 = xor i32 %xor252, %add154
  %xor255 = xor i32 %xor253, -957401297
  %xor256 = xor i32 %xor254, -380665154
  %shr257 = lshr i32 %xor255, 16
  %shr258 = lshr i32 %xor256, 16
  %idxprom260 = and i32 %xor256, 255
  %arrayidx261 = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom260
  %88 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx261, align 4
  %shr262 = lshr i32 %xor256, 24
  %arrayidx265 = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr262
  %90 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx265, align 4
  %xor266 = xor i32 %91, %89
  %idxprom268 = and i32 %shr258, 255
  %arrayidx269 = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom268
  %92 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx269, align 4
  %xor270 = xor i32 %xor266, %93
  %shr271 = lshr i32 %xor256, 8
  %idxprom273 = and i32 %shr271, 255
  %arrayidx274 = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom273
  %94 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx274, align 4
  %xor275 = xor i32 %xor270, %95
  %shr276 = lshr i32 %xor255, 24
  %arrayidx279 = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr276
  %96 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx279, align 4
  %idxprom281 = and i32 %shr257, 255
  %arrayidx282 = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom281
  %98 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx282, align 4
  %xor283 = xor i32 %99, %97
  %shr284 = lshr i32 %xor255, 8
  %idxprom286 = and i32 %shr284, 255
  %arrayidx287 = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom286
  %100 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx287, align 4
  %xor288 = xor i32 %xor283, %101
  %idxprom290 = and i32 %xor255, 255
  %arrayidx291 = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom290
  %102 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx291, align 4
  %xor292 = xor i32 %xor288, %103
  %xor293 = xor i32 %xor275, %xor292
  %or.i891 = tail call i32 @llvm.fshl.i32(i32 %xor292, i32 %xor292, i32 24) #5
  %xor296 = xor i32 %or.i891, %xor293
  %xor298 = xor i32 %xor166, %xor293
  %xor300 = xor i32 %xor168, %xor296
  %xor301 = xor i32 %xor298, 1426019237
  %xor302 = xor i32 %xor300, -237801700
  %shr303 = lshr i32 %xor301, 16
  %shr304 = lshr i32 %xor302, 16
  %idxprom306 = and i32 %xor302, 255
  %arrayidx307 = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom306
  %104 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx307, align 4
  %shr308 = lshr i32 %xor302, 24
  %arrayidx311 = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr308
  %106 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx311, align 4
  %xor312 = xor i32 %107, %105
  %idxprom314 = and i32 %shr304, 255
  %arrayidx315 = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom314
  %108 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx315, align 4
  %xor316 = xor i32 %xor312, %109
  %shr317 = lshr i32 %xor302, 8
  %idxprom319 = and i32 %shr317, 255
  %arrayidx320 = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom319
  %110 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx320, align 4
  %xor321 = xor i32 %xor316, %111
  %shr322 = lshr i32 %xor301, 24
  %arrayidx325 = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr322
  %112 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx325, align 4
  %idxprom327 = and i32 %shr303, 255
  %arrayidx328 = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom327
  %114 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx328, align 4
  %xor329 = xor i32 %115, %113
  %shr330 = lshr i32 %xor301, 8
  %idxprom332 = and i32 %shr330, 255
  %arrayidx333 = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom332
  %116 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx333, align 4
  %xor334 = xor i32 %xor329, %117
  %idxprom336 = and i32 %xor301, 255
  %arrayidx337 = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom336
  %118 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx337, align 4
  %xor338 = xor i32 %xor334, %119
  %xor339 = xor i32 %xor321, %xor338
  %or.i892 = tail call i32 @llvm.fshl.i32(i32 %xor338, i32 %xor338, i32 24) #5
  %xor342 = xor i32 %or.i892, %xor339
  %xor343 = xor i32 %xor339, %xor253
  %xor344 = xor i32 %xor342, %xor254
  %xor345 = xor i32 %xor339, %xor249
  %xor346 = xor i32 %xor342, %xor252
  %xor347 = xor i32 %xor293, %xor205
  %xor349 = xor i32 %xor345, 283453434
  %xor350 = xor i32 %xor346, -563598051
  %shr351 = lshr i32 %xor349, 16
  %shr352 = lshr i32 %xor350, 16
  %idxprom354 = and i32 %xor350, 255
  %arrayidx355 = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom354
  %120 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx355, align 4
  %shr356 = lshr i32 %xor350, 24
  %arrayidx359 = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr356
  %122 = ptrtoint ptr %arrayidx359 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx359, align 4
  %xor360 = xor i32 %123, %121
  %idxprom362 = and i32 %shr352, 255
  %arrayidx363 = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom362
  %124 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx363, align 4
  %xor364 = xor i32 %xor360, %125
  %shr365 = lshr i32 %xor350, 8
  %idxprom367 = and i32 %shr365, 255
  %arrayidx368 = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom367
  %126 = ptrtoint ptr %arrayidx368 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx368, align 4
  %xor369 = xor i32 %xor364, %127
  %shr370 = lshr i32 %xor349, 24
  %arrayidx373 = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr370
  %128 = ptrtoint ptr %arrayidx373 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx373, align 4
  %idxprom375 = and i32 %shr351, 255
  %arrayidx376 = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom375
  %130 = ptrtoint ptr %arrayidx376 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx376, align 4
  %xor377 = xor i32 %131, %129
  %shr378 = lshr i32 %xor349, 8
  %idxprom380 = and i32 %shr378, 255
  %arrayidx381 = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom380
  %132 = ptrtoint ptr %arrayidx381 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx381, align 4
  %xor382 = xor i32 %xor377, %133
  %idxprom384 = and i32 %xor349, 255
  %arrayidx385 = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom384
  %134 = ptrtoint ptr %arrayidx385 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx385, align 4
  %xor386 = xor i32 %xor382, %135
  %xor387 = xor i32 %xor369, %xor386
  %or.i893 = tail call i32 @llvm.fshl.i32(i32 %xor386, i32 %xor386, i32 24) #5
  %xor391 = xor i32 %xor347, %xor387
  %xor390 = xor i32 %xor296, %xor208
  %xor348 = xor i32 %xor390, %xor387
  %xor392 = xor i32 %xor348, %or.i893
  %xor393 = xor i32 %xor391, -1336506174
  %xor394 = xor i32 %xor392, -1276722691
  %shr395 = lshr i32 %xor393, 16
  %shr396 = lshr i32 %xor394, 16
  %idxprom398 = and i32 %xor394, 255
  %arrayidx399 = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %idxprom398
  %136 = ptrtoint ptr %arrayidx399 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx399, align 4
  %shr400 = lshr i32 %xor394, 24
  %arrayidx403 = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %shr400
  %138 = ptrtoint ptr %arrayidx403 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx403, align 4
  %xor404 = xor i32 %139, %137
  %idxprom406 = and i32 %shr396, 255
  %arrayidx407 = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom406
  %140 = ptrtoint ptr %arrayidx407 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx407, align 4
  %xor408 = xor i32 %xor404, %141
  %shr409 = lshr i32 %xor394, 8
  %idxprom411 = and i32 %shr409, 255
  %arrayidx412 = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom411
  %142 = ptrtoint ptr %arrayidx412 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx412, align 4
  %xor413 = xor i32 %xor408, %143
  %shr414 = lshr i32 %xor393, 24
  %arrayidx417 = getelementptr [256 x i32], ptr @camellia_sp1110, i32 0, i32 %shr414
  %144 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx417, align 4
  %idxprom419 = and i32 %shr395, 255
  %arrayidx420 = getelementptr [256 x i32], ptr @camellia_sp0222, i32 0, i32 %idxprom419
  %146 = ptrtoint ptr %arrayidx420 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx420, align 4
  %xor421 = xor i32 %147, %145
  %shr422 = lshr i32 %xor393, 8
  %idxprom424 = and i32 %shr422, 255
  %arrayidx425 = getelementptr [256 x i32], ptr @camellia_sp3033, i32 0, i32 %idxprom424
  %148 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx425, align 4
  %xor426 = xor i32 %xor421, %149
  %idxprom428 = and i32 %xor393, 255
  %arrayidx429 = getelementptr [256 x i32], ptr @camellia_sp4404, i32 0, i32 %idxprom428
  %150 = ptrtoint ptr %arrayidx429 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx429, align 4
  %xor430 = xor i32 %xor426, %151
  %xor431 = xor i32 %xor413, %xor430
  %or.i894 = tail call i32 @llvm.fshl.i32(i32 %xor430, i32 %xor430, i32 24) #5
  %xor435 = xor i32 %xor431, %xor345
  %xor434 = xor i32 %xor431, %xor346
  %xor436 = xor i32 %xor434, %or.i894
  %add439 = tail call i32 @llvm.fshl.i32(i32 %xor343, i32 %xor344, i32 15)
  %add442 = tail call i32 @llvm.fshl.i32(i32 %xor344, i32 %xor298, i32 15)
  %add445 = tail call i32 @llvm.fshl.i32(i32 %xor298, i32 %xor300, i32 15)
  %add449 = tail call i32 @llvm.fshl.i32(i32 %xor300, i32 %xor343, i32 15)
  %arrayidx450 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 6
  %152 = ptrtoint ptr %arrayidx450 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %add439, ptr %arrayidx450, align 4
  %arrayidx451 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 6
  %153 = ptrtoint ptr %arrayidx451 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %add442, ptr %arrayidx451, align 4
  %arrayidx452 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 7
  %154 = ptrtoint ptr %arrayidx452 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %add445, ptr %arrayidx452, align 4
  %arrayidx453 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 7
  %155 = ptrtoint ptr %arrayidx453 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %add449, ptr %arrayidx453, align 4
  %add456 = tail call i32 @llvm.fshl.i32(i32 %add439, i32 %add442, i32 30)
  %add459 = tail call i32 @llvm.fshl.i32(i32 %add442, i32 %add445, i32 30)
  %add462 = tail call i32 @llvm.fshl.i32(i32 %add445, i32 %add449, i32 30)
  %add466 = tail call i32 @llvm.fshl.i32(i32 %add449, i32 %add439, i32 30)
  %arrayidx467 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 14
  %156 = ptrtoint ptr %arrayidx467 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %add456, ptr %arrayidx467, align 4
  %arrayidx468 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 14
  %157 = ptrtoint ptr %arrayidx468 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %add459, ptr %arrayidx468, align 4
  %arrayidx469 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 15
  %158 = ptrtoint ptr %arrayidx469 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %add462, ptr %arrayidx469, align 4
  %arrayidx470 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 15
  %159 = ptrtoint ptr %arrayidx470 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %add466, ptr %arrayidx470, align 4
  %arrayidx471 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 24
  %160 = ptrtoint ptr %arrayidx471 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %add459, ptr %arrayidx471, align 4
  %arrayidx472 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 24
  %161 = ptrtoint ptr %arrayidx472 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %add462, ptr %arrayidx472, align 4
  %arrayidx473 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 25
  %162 = ptrtoint ptr %arrayidx473 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %add466, ptr %arrayidx473, align 4
  %arrayidx474 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 25
  %163 = ptrtoint ptr %arrayidx474 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %add456, ptr %arrayidx474, align 4
  %add477 = tail call i32 @llvm.fshl.i32(i32 %add459, i32 %add462, i32 17)
  %add480 = tail call i32 @llvm.fshl.i32(i32 %add462, i32 %add466, i32 17)
  %add483 = tail call i32 @llvm.fshl.i32(i32 %add466, i32 %add456, i32 17)
  %add487 = tail call i32 @llvm.fshl.i32(i32 %add456, i32 %add459, i32 17)
  %arrayidx488 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 28
  %164 = ptrtoint ptr %arrayidx488 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %add477, ptr %arrayidx488, align 4
  %arrayidx489 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 28
  %165 = ptrtoint ptr %arrayidx489 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %add480, ptr %arrayidx489, align 4
  %arrayidx490 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 29
  %166 = ptrtoint ptr %arrayidx490 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %add483, ptr %arrayidx490, align 4
  %arrayidx491 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 29
  %167 = ptrtoint ptr %arrayidx491 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %add487, ptr %arrayidx491, align 4
  %arrayidx492 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 2
  %168 = ptrtoint ptr %arrayidx492 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %xor435, ptr %arrayidx492, align 4
  %arrayidx493 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 2
  %169 = ptrtoint ptr %arrayidx493 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %xor436, ptr %arrayidx493, align 4
  %arrayidx494 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 3
  %170 = ptrtoint ptr %arrayidx494 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %xor391, ptr %arrayidx494, align 4
  %arrayidx495 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 3
  %171 = ptrtoint ptr %arrayidx495 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %xor392, ptr %arrayidx495, align 4
  %add498 = tail call i32 @llvm.fshl.i32(i32 %xor435, i32 %xor436, i32 30)
  %add501 = tail call i32 @llvm.fshl.i32(i32 %xor436, i32 %xor391, i32 30)
  %add504 = tail call i32 @llvm.fshl.i32(i32 %xor391, i32 %xor392, i32 30)
  %add508 = tail call i32 @llvm.fshl.i32(i32 %xor392, i32 %xor435, i32 30)
  %arrayidx509 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 10
  %172 = ptrtoint ptr %arrayidx509 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %add498, ptr %arrayidx509, align 4
  %arrayidx510 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 10
  %173 = ptrtoint ptr %arrayidx510 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %add501, ptr %arrayidx510, align 4
  %arrayidx511 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 11
  %174 = ptrtoint ptr %arrayidx511 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %add504, ptr %arrayidx511, align 4
  %arrayidx512 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 11
  %175 = ptrtoint ptr %arrayidx512 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %add508, ptr %arrayidx512, align 4
  %add515 = tail call i32 @llvm.fshl.i32(i32 %add498, i32 %add501, i32 30)
  %add518 = tail call i32 @llvm.fshl.i32(i32 %add501, i32 %add504, i32 30)
  %add521 = tail call i32 @llvm.fshl.i32(i32 %add504, i32 %add508, i32 30)
  %add525 = tail call i32 @llvm.fshl.i32(i32 %add508, i32 %add498, i32 30)
  %arrayidx526 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 20
  %176 = ptrtoint ptr %arrayidx526 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %add515, ptr %arrayidx526, align 4
  %arrayidx527 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 20
  %177 = ptrtoint ptr %arrayidx527 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %add518, ptr %arrayidx527, align 4
  %arrayidx528 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 21
  %178 = ptrtoint ptr %arrayidx528 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %add521, ptr %arrayidx528, align 4
  %arrayidx529 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 21
  %179 = ptrtoint ptr %arrayidx529 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %add525, ptr %arrayidx529, align 4
  %add532 = tail call i32 @llvm.fshl.i32(i32 %add518, i32 %add521, i32 19)
  %add535 = tail call i32 @llvm.fshl.i32(i32 %add521, i32 %add525, i32 19)
  %add538 = tail call i32 @llvm.fshl.i32(i32 %add525, i32 %add515, i32 19)
  %add542 = tail call i32 @llvm.fshl.i32(i32 %add515, i32 %add518, i32 19)
  %arrayidx543 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 32
  %180 = ptrtoint ptr %arrayidx543 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %add532, ptr %arrayidx543, align 4
  %arrayidx544 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 32
  %181 = ptrtoint ptr %arrayidx544 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %add535, ptr %arrayidx544, align 4
  %arrayidx545 = getelementptr inbounds [34 x i32], ptr %subL, i32 0, i32 33
  %182 = ptrtoint ptr %arrayidx545 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %add538, ptr %arrayidx545, align 4
  %arrayidx546 = getelementptr inbounds [34 x i32], ptr %subR, i32 0, i32 33
  %183 = ptrtoint ptr %arrayidx546 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %add542, ptr %arrayidx546, align 4
  call fastcc void @camellia_setup_tail(ptr noundef %subkey, ptr noundef nonnull %subL, ptr noundef nonnull %subR, i32 noundef 32)
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %subR) #5
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %subL) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @camellia_setup_tail(ptr noundef writeonly %subkey, ptr noundef %subL, ptr noundef %subR, i32 noundef %max) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i32, ptr %subL, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i32, ptr %subL, i32 3
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %xor = xor i32 %3, %1
  store i32 %xor, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr i32, ptr %subR, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %subR, i32 3
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %xor4 = xor i32 %7, %5
  store i32 %xor4, ptr %arrayidx3, align 4
  %8 = load i32, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr i32, ptr %subL, i32 5
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx6, align 4
  %xor7 = xor i32 %10, %8
  store i32 %xor7, ptr %arrayidx6, align 4
  %11 = load i32, ptr %arrayidx2, align 4
  %arrayidx9 = getelementptr i32, ptr %subR, i32 5
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9, align 4
  %xor10 = xor i32 %13, %11
  store i32 %xor10, ptr %arrayidx9, align 4
  %14 = load i32, ptr %arrayidx, align 4
  %arrayidx12 = getelementptr i32, ptr %subL, i32 7
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx12, align 4
  %xor13 = xor i32 %16, %14
  store i32 %xor13, ptr %arrayidx12, align 4
  %17 = load i32, ptr %arrayidx2, align 4
  %arrayidx15 = getelementptr i32, ptr %subR, i32 7
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15, align 4
  %xor16 = xor i32 %19, %17
  store i32 %xor16, ptr %arrayidx15, align 4
  %arrayidx18 = getelementptr i32, ptr %subR, i32 9
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx18, align 4
  %neg = xor i32 %21, -1
  %and = and i32 %17, %neg
  %22 = load i32, ptr %arrayidx, align 4
  %xor20 = xor i32 %22, %and
  store i32 %xor20, ptr %arrayidx, align 4
  %arrayidx22 = getelementptr i32, ptr %subL, i32 9
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx22, align 4
  %and23 = and i32 %24, %xor20
  %or.i = tail call i32 @llvm.fshl.i32(i32 %and23, i32 %and23, i32 1) #5
  %25 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx2, align 4
  %xor25 = xor i32 %or.i, %26
  store i32 %xor25, ptr %arrayidx2, align 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %arrayidx27 = getelementptr i32, ptr %subL, i32 11
  %29 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx27, align 4
  %xor28 = xor i32 %30, %28
  store i32 %xor28, ptr %arrayidx27, align 4
  %31 = load i32, ptr %arrayidx2, align 4
  %arrayidx30 = getelementptr i32, ptr %subR, i32 11
  %32 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx30, align 4
  %xor31 = xor i32 %33, %31
  store i32 %xor31, ptr %arrayidx30, align 4
  %34 = load i32, ptr %arrayidx, align 4
  %arrayidx33 = getelementptr i32, ptr %subL, i32 13
  %35 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx33, align 4
  %xor34 = xor i32 %36, %34
  store i32 %xor34, ptr %arrayidx33, align 4
  %37 = load i32, ptr %arrayidx2, align 4
  %arrayidx36 = getelementptr i32, ptr %subR, i32 13
  %38 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx36, align 4
  %xor37 = xor i32 %39, %37
  store i32 %xor37, ptr %arrayidx36, align 4
  %40 = load i32, ptr %arrayidx, align 4
  %arrayidx39 = getelementptr i32, ptr %subL, i32 15
  %41 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx39, align 4
  %xor40 = xor i32 %42, %40
  store i32 %xor40, ptr %arrayidx39, align 4
  %43 = load i32, ptr %arrayidx2, align 4
  %arrayidx42 = getelementptr i32, ptr %subR, i32 15
  %44 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx42, align 4
  %xor43 = xor i32 %45, %43
  store i32 %xor43, ptr %arrayidx42, align 4
  %arrayidx45 = getelementptr i32, ptr %subR, i32 17
  %46 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx45, align 4
  %neg46 = xor i32 %47, -1
  %and47 = and i32 %43, %neg46
  %48 = load i32, ptr %arrayidx, align 4
  %xor49 = xor i32 %48, %and47
  store i32 %xor49, ptr %arrayidx, align 4
  %arrayidx51 = getelementptr i32, ptr %subL, i32 17
  %49 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx51, align 4
  %and52 = and i32 %50, %xor49
  %or.i865 = tail call i32 @llvm.fshl.i32(i32 %and52, i32 %and52, i32 1) #5
  %51 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx2, align 4
  %xor55 = xor i32 %or.i865, %52
  store i32 %xor55, ptr %arrayidx2, align 4
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx, align 4
  %arrayidx57 = getelementptr i32, ptr %subL, i32 19
  %55 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx57, align 4
  %xor58 = xor i32 %56, %54
  store i32 %xor58, ptr %arrayidx57, align 4
  %57 = load i32, ptr %arrayidx2, align 4
  %arrayidx60 = getelementptr i32, ptr %subR, i32 19
  %58 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx60, align 4
  %xor61 = xor i32 %59, %57
  store i32 %xor61, ptr %arrayidx60, align 4
  %60 = load i32, ptr %arrayidx, align 4
  %arrayidx63 = getelementptr i32, ptr %subL, i32 21
  %61 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx63, align 4
  %xor64 = xor i32 %62, %60
  store i32 %xor64, ptr %arrayidx63, align 4
  %63 = load i32, ptr %arrayidx2, align 4
  %arrayidx66 = getelementptr i32, ptr %subR, i32 21
  %64 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx66, align 4
  %xor67 = xor i32 %65, %63
  store i32 %xor67, ptr %arrayidx66, align 4
  %66 = load i32, ptr %arrayidx, align 4
  %arrayidx69 = getelementptr i32, ptr %subL, i32 23
  %67 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx69, align 4
  %xor70 = xor i32 %68, %66
  store i32 %xor70, ptr %arrayidx69, align 4
  %69 = load i32, ptr %arrayidx2, align 4
  %arrayidx72 = getelementptr i32, ptr %subR, i32 23
  %70 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx72, align 4
  %xor73 = xor i32 %71, %69
  store i32 %xor73, ptr %arrayidx72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %max)
  %cmp = icmp eq i32 %max, 24
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx, align 4
  %arrayidx75 = getelementptr i32, ptr %subL, i32 24
  %74 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx75, align 4
  %xor76 = xor i32 %75, %73
  store i32 %xor76, ptr %arrayidx75, align 4
  %76 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx2, align 4
  %arrayidx78 = getelementptr i32, ptr %subR, i32 24
  %78 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx78, align 4
  %xor79 = xor i32 %79, %77
  store i32 %xor79, ptr %arrayidx78, align 4
  %arrayidx80 = getelementptr i32, ptr %subL, i32 25
  %80 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx80, align 4
  %arrayidx81 = getelementptr i32, ptr %subR, i32 25
  %82 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx81, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx83 = getelementptr i32, ptr %subR, i32 25
  %84 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx83, align 4
  %neg84 = xor i32 %85, -1
  %and85 = and i32 %69, %neg84
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx, align 4
  %xor87 = xor i32 %87, %and85
  store i32 %xor87, ptr %arrayidx, align 4
  %arrayidx89 = getelementptr i32, ptr %subL, i32 25
  %88 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx89, align 4
  %and90 = and i32 %89, %xor87
  %or.i866 = tail call i32 @llvm.fshl.i32(i32 %and90, i32 %and90, i32 1) #5
  %90 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx2, align 4
  %xor93 = xor i32 %or.i866, %91
  store i32 %xor93, ptr %arrayidx2, align 4
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx, align 4
  %arrayidx95 = getelementptr i32, ptr %subL, i32 27
  %94 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx95, align 4
  %xor96 = xor i32 %95, %93
  store i32 %xor96, ptr %arrayidx95, align 4
  %96 = load i32, ptr %arrayidx2, align 4
  %arrayidx98 = getelementptr i32, ptr %subR, i32 27
  %97 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx98, align 4
  %xor99 = xor i32 %98, %96
  store i32 %xor99, ptr %arrayidx98, align 4
  %99 = load i32, ptr %arrayidx, align 4
  %arrayidx101 = getelementptr i32, ptr %subL, i32 29
  %100 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx101, align 4
  %xor102 = xor i32 %101, %99
  store i32 %xor102, ptr %arrayidx101, align 4
  %102 = load i32, ptr %arrayidx2, align 4
  %arrayidx104 = getelementptr i32, ptr %subR, i32 29
  %103 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx104, align 4
  %xor105 = xor i32 %104, %102
  store i32 %xor105, ptr %arrayidx104, align 4
  %105 = load i32, ptr %arrayidx, align 4
  %arrayidx107 = getelementptr i32, ptr %subL, i32 31
  %106 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx107, align 4
  %xor108 = xor i32 %107, %105
  store i32 %xor108, ptr %arrayidx107, align 4
  %108 = load i32, ptr %arrayidx2, align 4
  %arrayidx110 = getelementptr i32, ptr %subR, i32 31
  %109 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx110, align 4
  %xor111 = xor i32 %110, %108
  store i32 %xor111, ptr %arrayidx110, align 4
  %111 = load i32, ptr %arrayidx, align 4
  %arrayidx113 = getelementptr i32, ptr %subL, i32 32
  %112 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx113, align 4
  %xor114 = xor i32 %113, %111
  store i32 %xor114, ptr %arrayidx113, align 4
  %114 = load i32, ptr %arrayidx2, align 4
  %arrayidx116 = getelementptr i32, ptr %subR, i32 32
  %115 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx116, align 4
  %xor117 = xor i32 %116, %114
  store i32 %xor117, ptr %arrayidx116, align 4
  %arrayidx118 = getelementptr i32, ptr %subL, i32 33
  %117 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx118, align 4
  %arrayidx119 = getelementptr i32, ptr %subR, i32 33
  %119 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx119, align 4
  %arrayidx120 = getelementptr i32, ptr %subL, i32 30
  %121 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx120, align 4
  %xor121 = xor i32 %122, %118
  store i32 %xor121, ptr %arrayidx120, align 4
  %arrayidx122 = getelementptr i32, ptr %subR, i32 30
  %123 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx122, align 4
  %xor123 = xor i32 %124, %120
  store i32 %xor123, ptr %arrayidx122, align 4
  %arrayidx124 = getelementptr i32, ptr %subL, i32 28
  %125 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx124, align 4
  %xor125 = xor i32 %126, %118
  store i32 %xor125, ptr %arrayidx124, align 4
  %arrayidx126 = getelementptr i32, ptr %subR, i32 28
  %127 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx126, align 4
  %xor127 = xor i32 %128, %120
  store i32 %xor127, ptr %arrayidx126, align 4
  %arrayidx128 = getelementptr i32, ptr %subL, i32 26
  %129 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx128, align 4
  %xor129 = xor i32 %130, %118
  store i32 %xor129, ptr %arrayidx128, align 4
  %arrayidx130 = getelementptr i32, ptr %subR, i32 26
  %131 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx130, align 4
  %xor131 = xor i32 %132, %120
  store i32 %xor131, ptr %arrayidx130, align 4
  %arrayidx132 = getelementptr i32, ptr %subR, i32 24
  %133 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx132, align 4
  %neg133 = xor i32 %134, -1
  %and134 = and i32 %120, %neg133
  %xor135 = xor i32 %and134, %118
  %arrayidx136 = getelementptr i32, ptr %subL, i32 24
  %135 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx136, align 4
  %and137 = and i32 %xor135, %136
  %or.i867 = tail call i32 @llvm.fshl.i32(i32 %and137, i32 %and137, i32 1) #5
  %xor139 = xor i32 %or.i867, %120
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %kw4l.0 = phi i32 [ %81, %if.then ], [ %xor135, %if.else ]
  %kw4r.0 = phi i32 [ %83, %if.then ], [ %xor139, %if.else ]
  %arrayidx140 = getelementptr i32, ptr %subL, i32 22
  %137 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx140, align 4
  %xor141 = xor i32 %138, %kw4l.0
  store i32 %xor141, ptr %arrayidx140, align 4
  %arrayidx142 = getelementptr i32, ptr %subR, i32 22
  %139 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx142, align 4
  %xor143 = xor i32 %140, %kw4r.0
  store i32 %xor143, ptr %arrayidx142, align 4
  %arrayidx144 = getelementptr i32, ptr %subL, i32 20
  %141 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx144, align 4
  %xor145 = xor i32 %142, %kw4l.0
  store i32 %xor145, ptr %arrayidx144, align 4
  %arrayidx146 = getelementptr i32, ptr %subR, i32 20
  %143 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx146, align 4
  %xor147 = xor i32 %144, %kw4r.0
  store i32 %xor147, ptr %arrayidx146, align 4
  %arrayidx148 = getelementptr i32, ptr %subL, i32 18
  %145 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx148, align 4
  %xor149 = xor i32 %146, %kw4l.0
  store i32 %xor149, ptr %arrayidx148, align 4
  %arrayidx150 = getelementptr i32, ptr %subR, i32 18
  %147 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx150, align 4
  %xor151 = xor i32 %148, %kw4r.0
  store i32 %xor151, ptr %arrayidx150, align 4
  %arrayidx152 = getelementptr i32, ptr %subR, i32 16
  %149 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx152, align 4
  %neg153 = xor i32 %150, -1
  %and154 = and i32 %kw4r.0, %neg153
  %xor155 = xor i32 %and154, %kw4l.0
  %arrayidx156 = getelementptr i32, ptr %subL, i32 16
  %151 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx156, align 4
  %and157 = and i32 %xor155, %152
  %or.i868 = tail call i32 @llvm.fshl.i32(i32 %and157, i32 %and157, i32 1) #5
  %xor159 = xor i32 %or.i868, %kw4r.0
  %arrayidx160 = getelementptr i32, ptr %subL, i32 14
  %153 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx160, align 4
  %xor161 = xor i32 %154, %xor155
  store i32 %xor161, ptr %arrayidx160, align 4
  %arrayidx162 = getelementptr i32, ptr %subR, i32 14
  %155 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx162, align 4
  %xor163 = xor i32 %xor159, %156
  store i32 %xor163, ptr %arrayidx162, align 4
  %arrayidx164 = getelementptr i32, ptr %subL, i32 12
  %157 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx164, align 4
  %xor165 = xor i32 %158, %xor155
  store i32 %xor165, ptr %arrayidx164, align 4
  %arrayidx166 = getelementptr i32, ptr %subR, i32 12
  %159 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx166, align 4
  %xor167 = xor i32 %160, %xor159
  store i32 %xor167, ptr %arrayidx166, align 4
  %arrayidx168 = getelementptr i32, ptr %subL, i32 10
  %161 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx168, align 4
  %xor169 = xor i32 %162, %xor155
  store i32 %xor169, ptr %arrayidx168, align 4
  %arrayidx170 = getelementptr i32, ptr %subR, i32 10
  %163 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx170, align 4
  %xor171 = xor i32 %164, %xor159
  store i32 %xor171, ptr %arrayidx170, align 4
  %arrayidx172 = getelementptr i32, ptr %subR, i32 8
  %165 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx172, align 4
  %neg173 = xor i32 %166, -1
  %and174 = and i32 %xor159, %neg173
  %xor175 = xor i32 %and174, %xor155
  %arrayidx176 = getelementptr i32, ptr %subL, i32 8
  %167 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx176, align 4
  %and177 = and i32 %xor175, %168
  %or.i869 = tail call i32 @llvm.fshl.i32(i32 %and177, i32 %and177, i32 1) #5
  %xor179 = xor i32 %or.i869, %xor159
  %arrayidx180 = getelementptr i32, ptr %subL, i32 6
  %169 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx180, align 4
  %xor181 = xor i32 %170, %xor175
  store i32 %xor181, ptr %arrayidx180, align 4
  %arrayidx182 = getelementptr i32, ptr %subR, i32 6
  %171 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx182, align 4
  %xor183 = xor i32 %xor179, %172
  store i32 %xor183, ptr %arrayidx182, align 4
  %arrayidx184 = getelementptr i32, ptr %subL, i32 4
  %173 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx184, align 4
  %xor185 = xor i32 %174, %xor175
  store i32 %xor185, ptr %arrayidx184, align 4
  %arrayidx186 = getelementptr i32, ptr %subR, i32 4
  %175 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx186, align 4
  %xor187 = xor i32 %176, %xor179
  store i32 %xor187, ptr %arrayidx186, align 4
  %arrayidx188 = getelementptr i32, ptr %subL, i32 2
  %177 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx188, align 4
  %xor189 = xor i32 %178, %xor175
  store i32 %xor189, ptr %arrayidx188, align 4
  %arrayidx190 = getelementptr i32, ptr %subR, i32 2
  %179 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx190, align 4
  %xor191 = xor i32 %180, %xor179
  store i32 %xor191, ptr %arrayidx190, align 4
  %181 = ptrtoint ptr %subL to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %subL, align 4
  %xor193 = xor i32 %182, %xor175
  store i32 %xor193, ptr %subL, align 4
  %183 = ptrtoint ptr %subR to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %subR, align 4
  %xor195 = xor i32 %184, %xor179
  store i32 %xor195, ptr %subR, align 4
  %185 = load i32, ptr %subL, align 4
  %186 = load i32, ptr %arrayidx188, align 4
  %xor198 = xor i32 %186, %185
  %187 = ptrtoint ptr %subkey to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %xor198, ptr %subkey, align 4
  %188 = load i32, ptr %subR, align 4
  %189 = load i32, ptr %arrayidx190, align 4
  %xor202 = xor i32 %189, %188
  %arrayidx203 = getelementptr i32, ptr %subkey, i32 1
  %190 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %xor202, ptr %arrayidx203, align 4
  %191 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx1, align 4
  %arrayidx205 = getelementptr i32, ptr %subkey, i32 4
  %193 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %arrayidx205, align 4
  %194 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx3, align 4
  %arrayidx207 = getelementptr i32, ptr %subkey, i32 5
  %196 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %arrayidx207, align 4
  %197 = load i32, ptr %arrayidx188, align 4
  %198 = load i32, ptr %arrayidx184, align 4
  %xor210 = xor i32 %198, %197
  %arrayidx211 = getelementptr i32, ptr %subkey, i32 6
  %199 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %xor210, ptr %arrayidx211, align 4
  %200 = load i32, ptr %arrayidx190, align 4
  %201 = load i32, ptr %arrayidx186, align 4
  %xor214 = xor i32 %201, %200
  %arrayidx215 = getelementptr i32, ptr %subkey, i32 7
  %202 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %xor214, ptr %arrayidx215, align 4
  %203 = load i32, ptr %arrayidx1, align 4
  %204 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx6, align 4
  %xor218 = xor i32 %205, %203
  %arrayidx219 = getelementptr i32, ptr %subkey, i32 8
  %206 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %xor218, ptr %arrayidx219, align 4
  %207 = load i32, ptr %arrayidx3, align 4
  %208 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx9, align 4
  %xor222 = xor i32 %209, %207
  %arrayidx223 = getelementptr i32, ptr %subkey, i32 9
  %210 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %xor222, ptr %arrayidx223, align 4
  %211 = load i32, ptr %arrayidx184, align 4
  %212 = load i32, ptr %arrayidx180, align 4
  %xor226 = xor i32 %212, %211
  %arrayidx227 = getelementptr i32, ptr %subkey, i32 10
  %213 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %xor226, ptr %arrayidx227, align 4
  %214 = load i32, ptr %arrayidx186, align 4
  %215 = load i32, ptr %arrayidx182, align 4
  %xor230 = xor i32 %215, %214
  %arrayidx231 = getelementptr i32, ptr %subkey, i32 11
  %216 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %xor230, ptr %arrayidx231, align 4
  %217 = load i32, ptr %arrayidx6, align 4
  %218 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx12, align 4
  %xor234 = xor i32 %219, %217
  %arrayidx235 = getelementptr i32, ptr %subkey, i32 12
  %220 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %xor234, ptr %arrayidx235, align 4
  %221 = load i32, ptr %arrayidx9, align 4
  %222 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx15, align 4
  %xor238 = xor i32 %223, %221
  %arrayidx239 = getelementptr i32, ptr %subkey, i32 13
  %224 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %xor238, ptr %arrayidx239, align 4
  %225 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx168, align 4
  %227 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx170, align 4
  %229 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx172, align 4
  %neg243 = xor i32 %230, -1
  %and244 = and i32 %228, %neg243
  %xor245 = xor i32 %and244, %226
  %231 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx176, align 4
  %and247 = and i32 %xor245, %232
  %or.i870 = tail call i32 @llvm.fshl.i32(i32 %and247, i32 %and247, i32 1) #5
  %xor250 = xor i32 %or.i870, %228
  %233 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx180, align 4
  %xor252 = xor i32 %234, %xor245
  %arrayidx253 = getelementptr i32, ptr %subkey, i32 14
  %235 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %xor252, ptr %arrayidx253, align 4
  %236 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx182, align 4
  %xor255 = xor i32 %xor250, %237
  %arrayidx256 = getelementptr i32, ptr %subkey, i32 15
  %238 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %xor255, ptr %arrayidx256, align 4
  %239 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx176, align 4
  %arrayidx258 = getelementptr i32, ptr %subkey, i32 16
  %241 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %240, ptr %arrayidx258, align 4
  %242 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx172, align 4
  %arrayidx260 = getelementptr i32, ptr %subkey, i32 17
  %244 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %243, ptr %arrayidx260, align 4
  %245 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx22, align 4
  %arrayidx262 = getelementptr i32, ptr %subkey, i32 18
  %247 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %arrayidx262, align 4
  %248 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx18, align 4
  %arrayidx264 = getelementptr i32, ptr %subkey, i32 19
  %250 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %249, ptr %arrayidx264, align 4
  %251 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %arrayidx12, align 4
  %253 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx15, align 4
  %255 = load i32, ptr %arrayidx18, align 4
  %neg268 = xor i32 %255, -1
  %and269 = and i32 %254, %neg268
  %xor270 = xor i32 %and269, %252
  %256 = load i32, ptr %arrayidx22, align 4
  %and272 = and i32 %xor270, %256
  %or.i871 = tail call i32 @llvm.fshl.i32(i32 %and272, i32 %and272, i32 1) #5
  %xor275 = xor i32 %or.i871, %254
  %257 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %arrayidx27, align 4
  %xor277 = xor i32 %xor270, %258
  %arrayidx278 = getelementptr i32, ptr %subkey, i32 20
  %259 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %xor277, ptr %arrayidx278, align 4
  %260 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx30, align 4
  %xor280 = xor i32 %xor275, %261
  %arrayidx281 = getelementptr i32, ptr %subkey, i32 21
  %262 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %xor280, ptr %arrayidx281, align 4
  %263 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %arrayidx168, align 4
  %265 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %arrayidx164, align 4
  %xor284 = xor i32 %266, %264
  %arrayidx285 = getelementptr i32, ptr %subkey, i32 22
  %267 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %xor284, ptr %arrayidx285, align 4
  %268 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx170, align 4
  %270 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx166, align 4
  %xor288 = xor i32 %271, %269
  %arrayidx289 = getelementptr i32, ptr %subkey, i32 23
  %272 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %xor288, ptr %arrayidx289, align 4
  %273 = load i32, ptr %arrayidx27, align 4
  %274 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx33, align 4
  %xor292 = xor i32 %275, %273
  %arrayidx293 = getelementptr i32, ptr %subkey, i32 24
  %276 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %xor292, ptr %arrayidx293, align 4
  %277 = load i32, ptr %arrayidx30, align 4
  %278 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx36, align 4
  %xor296 = xor i32 %279, %277
  %arrayidx297 = getelementptr i32, ptr %subkey, i32 25
  %280 = ptrtoint ptr %arrayidx297 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %xor296, ptr %arrayidx297, align 4
  %281 = load i32, ptr %arrayidx164, align 4
  %282 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx160, align 4
  %xor300 = xor i32 %283, %281
  %arrayidx301 = getelementptr i32, ptr %subkey, i32 26
  %284 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %xor300, ptr %arrayidx301, align 4
  %285 = load i32, ptr %arrayidx166, align 4
  %286 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %arrayidx162, align 4
  %xor304 = xor i32 %287, %285
  %arrayidx305 = getelementptr i32, ptr %subkey, i32 27
  %288 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %xor304, ptr %arrayidx305, align 4
  %289 = load i32, ptr %arrayidx33, align 4
  %290 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx39, align 4
  %xor308 = xor i32 %291, %289
  %arrayidx309 = getelementptr i32, ptr %subkey, i32 28
  %292 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %xor308, ptr %arrayidx309, align 4
  %293 = load i32, ptr %arrayidx36, align 4
  %294 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %arrayidx42, align 4
  %xor312 = xor i32 %295, %293
  %arrayidx313 = getelementptr i32, ptr %subkey, i32 29
  %296 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %xor312, ptr %arrayidx313, align 4
  %297 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %arrayidx148, align 4
  %299 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %arrayidx150, align 4
  %301 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %arrayidx152, align 4
  %neg317 = xor i32 %302, -1
  %and318 = and i32 %300, %neg317
  %xor319 = xor i32 %and318, %298
  %303 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %arrayidx156, align 4
  %and321 = and i32 %xor319, %304
  %or.i872 = tail call i32 @llvm.fshl.i32(i32 %and321, i32 %and321, i32 1) #5
  %xor324 = xor i32 %or.i872, %300
  %305 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %arrayidx160, align 4
  %xor326 = xor i32 %306, %xor319
  %arrayidx327 = getelementptr i32, ptr %subkey, i32 30
  %307 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %xor326, ptr %arrayidx327, align 4
  %308 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %arrayidx162, align 4
  %xor329 = xor i32 %xor324, %309
  %arrayidx330 = getelementptr i32, ptr %subkey, i32 31
  %310 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %xor329, ptr %arrayidx330, align 4
  %311 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %arrayidx156, align 4
  %arrayidx332 = getelementptr i32, ptr %subkey, i32 32
  %313 = ptrtoint ptr %arrayidx332 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %312, ptr %arrayidx332, align 4
  %314 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx152, align 4
  %arrayidx334 = getelementptr i32, ptr %subkey, i32 33
  %316 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %315, ptr %arrayidx334, align 4
  %317 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %arrayidx51, align 4
  %arrayidx336 = getelementptr i32, ptr %subkey, i32 34
  %319 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %318, ptr %arrayidx336, align 4
  %320 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %arrayidx45, align 4
  %arrayidx338 = getelementptr i32, ptr %subkey, i32 35
  %322 = ptrtoint ptr %arrayidx338 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %321, ptr %arrayidx338, align 4
  %323 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %arrayidx39, align 4
  %325 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %arrayidx42, align 4
  %327 = load i32, ptr %arrayidx45, align 4
  %neg342 = xor i32 %327, -1
  %and343 = and i32 %326, %neg342
  %xor344 = xor i32 %and343, %324
  %328 = load i32, ptr %arrayidx51, align 4
  %and346 = and i32 %xor344, %328
  %or.i873 = tail call i32 @llvm.fshl.i32(i32 %and346, i32 %and346, i32 1) #5
  %xor349 = xor i32 %or.i873, %326
  %329 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %arrayidx57, align 4
  %xor351 = xor i32 %xor344, %330
  %arrayidx352 = getelementptr i32, ptr %subkey, i32 36
  %331 = ptrtoint ptr %arrayidx352 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %xor351, ptr %arrayidx352, align 4
  %332 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %arrayidx60, align 4
  %xor354 = xor i32 %xor349, %333
  %arrayidx355 = getelementptr i32, ptr %subkey, i32 37
  %334 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %xor354, ptr %arrayidx355, align 4
  %335 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %arrayidx148, align 4
  %337 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %arrayidx144, align 4
  %xor358 = xor i32 %338, %336
  %arrayidx359 = getelementptr i32, ptr %subkey, i32 38
  %339 = ptrtoint ptr %arrayidx359 to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %xor358, ptr %arrayidx359, align 4
  %340 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %arrayidx150, align 4
  %342 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %arrayidx146, align 4
  %xor362 = xor i32 %343, %341
  %arrayidx363 = getelementptr i32, ptr %subkey, i32 39
  %344 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %xor362, ptr %arrayidx363, align 4
  %345 = load i32, ptr %arrayidx57, align 4
  %346 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %arrayidx63, align 4
  %xor366 = xor i32 %347, %345
  %arrayidx367 = getelementptr i32, ptr %subkey, i32 40
  %348 = ptrtoint ptr %arrayidx367 to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %xor366, ptr %arrayidx367, align 4
  %349 = load i32, ptr %arrayidx60, align 4
  %350 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %arrayidx66, align 4
  %xor370 = xor i32 %351, %349
  %arrayidx371 = getelementptr i32, ptr %subkey, i32 41
  %352 = ptrtoint ptr %arrayidx371 to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 %xor370, ptr %arrayidx371, align 4
  %353 = load i32, ptr %arrayidx144, align 4
  %354 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %arrayidx140, align 4
  %xor374 = xor i32 %355, %353
  %arrayidx375 = getelementptr i32, ptr %subkey, i32 42
  %356 = ptrtoint ptr %arrayidx375 to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 %xor374, ptr %arrayidx375, align 4
  %357 = load i32, ptr %arrayidx146, align 4
  %358 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %arrayidx142, align 4
  %xor378 = xor i32 %359, %357
  %arrayidx379 = getelementptr i32, ptr %subkey, i32 43
  %360 = ptrtoint ptr %arrayidx379 to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 %xor378, ptr %arrayidx379, align 4
  %361 = load i32, ptr %arrayidx63, align 4
  %362 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %arrayidx69, align 4
  %xor382 = xor i32 %363, %361
  %arrayidx383 = getelementptr i32, ptr %subkey, i32 44
  %364 = ptrtoint ptr %arrayidx383 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %xor382, ptr %arrayidx383, align 4
  %365 = load i32, ptr %arrayidx66, align 4
  %366 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %arrayidx72, align 4
  %xor386 = xor i32 %367, %365
  %arrayidx387 = getelementptr i32, ptr %subkey, i32 45
  %368 = ptrtoint ptr %arrayidx387 to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 %xor386, ptr %arrayidx387, align 4
  br i1 %cmp, label %if.end.if.end489_crit_edge, label %if.else402

if.end.if.end489_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end489

if.else402:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx403 = getelementptr i32, ptr %subL, i32 26
  %369 = ptrtoint ptr %arrayidx403 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %arrayidx403, align 4
  %arrayidx404 = getelementptr i32, ptr %subR, i32 26
  %371 = ptrtoint ptr %arrayidx404 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %arrayidx404, align 4
  %arrayidx405 = getelementptr i32, ptr %subR, i32 24
  %373 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %arrayidx405, align 4
  %neg406 = xor i32 %374, -1
  %and407 = and i32 %372, %neg406
  %xor408 = xor i32 %and407, %370
  %arrayidx409 = getelementptr i32, ptr %subL, i32 24
  %375 = ptrtoint ptr %arrayidx409 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %arrayidx409, align 4
  %and410 = and i32 %xor408, %376
  %or.i874 = tail call i32 @llvm.fshl.i32(i32 %and410, i32 %and410, i32 1) #5
  %xor413 = xor i32 %or.i874, %372
  %377 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %arrayidx140, align 4
  %xor415 = xor i32 %378, %xor408
  %arrayidx416 = getelementptr i32, ptr %subkey, i32 46
  %379 = ptrtoint ptr %arrayidx416 to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 %xor415, ptr %arrayidx416, align 4
  %380 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %arrayidx142, align 4
  %xor418 = xor i32 %xor413, %381
  %arrayidx419 = getelementptr i32, ptr %subkey, i32 47
  %382 = ptrtoint ptr %arrayidx419 to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %xor418, ptr %arrayidx419, align 4
  %383 = ptrtoint ptr %arrayidx409 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %arrayidx409, align 4
  %arrayidx421 = getelementptr i32, ptr %subkey, i32 48
  %385 = ptrtoint ptr %arrayidx421 to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 %384, ptr %arrayidx421, align 4
  %386 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %arrayidx405, align 4
  %arrayidx423 = getelementptr i32, ptr %subkey, i32 49
  %388 = ptrtoint ptr %arrayidx423 to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 %387, ptr %arrayidx423, align 4
  %arrayidx424 = getelementptr i32, ptr %subL, i32 25
  %389 = ptrtoint ptr %arrayidx424 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %arrayidx424, align 4
  %arrayidx425 = getelementptr i32, ptr %subkey, i32 50
  %391 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %390, ptr %arrayidx425, align 4
  %arrayidx426 = getelementptr i32, ptr %subR, i32 25
  %392 = ptrtoint ptr %arrayidx426 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %arrayidx426, align 4
  %arrayidx427 = getelementptr i32, ptr %subkey, i32 51
  %394 = ptrtoint ptr %arrayidx427 to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 %393, ptr %arrayidx427, align 4
  %395 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %arrayidx69, align 4
  %397 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %arrayidx72, align 4
  %399 = load i32, ptr %arrayidx426, align 4
  %neg431 = xor i32 %399, -1
  %and432 = and i32 %398, %neg431
  %xor433 = xor i32 %and432, %396
  %400 = load i32, ptr %arrayidx424, align 4
  %and435 = and i32 %xor433, %400
  %or.i875 = tail call i32 @llvm.fshl.i32(i32 %and435, i32 %and435, i32 1) #5
  %xor438 = xor i32 %or.i875, %398
  %arrayidx439 = getelementptr i32, ptr %subL, i32 27
  %401 = ptrtoint ptr %arrayidx439 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %arrayidx439, align 4
  %xor440 = xor i32 %xor433, %402
  %arrayidx441 = getelementptr i32, ptr %subkey, i32 52
  %403 = ptrtoint ptr %arrayidx441 to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 %xor440, ptr %arrayidx441, align 4
  %arrayidx442 = getelementptr i32, ptr %subR, i32 27
  %404 = ptrtoint ptr %arrayidx442 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %arrayidx442, align 4
  %xor443 = xor i32 %xor438, %405
  %arrayidx444 = getelementptr i32, ptr %subkey, i32 53
  %406 = ptrtoint ptr %arrayidx444 to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 %xor443, ptr %arrayidx444, align 4
  %407 = ptrtoint ptr %arrayidx403 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %arrayidx403, align 4
  %arrayidx446 = getelementptr i32, ptr %subL, i32 28
  %409 = ptrtoint ptr %arrayidx446 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %arrayidx446, align 4
  %xor447 = xor i32 %410, %408
  %arrayidx448 = getelementptr i32, ptr %subkey, i32 54
  %411 = ptrtoint ptr %arrayidx448 to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 %xor447, ptr %arrayidx448, align 4
  %412 = ptrtoint ptr %arrayidx404 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %arrayidx404, align 4
  %arrayidx450 = getelementptr i32, ptr %subR, i32 28
  %414 = ptrtoint ptr %arrayidx450 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %arrayidx450, align 4
  %xor451 = xor i32 %415, %413
  %arrayidx452 = getelementptr i32, ptr %subkey, i32 55
  %416 = ptrtoint ptr %arrayidx452 to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 %xor451, ptr %arrayidx452, align 4
  %417 = load i32, ptr %arrayidx439, align 4
  %arrayidx454 = getelementptr i32, ptr %subL, i32 29
  %418 = ptrtoint ptr %arrayidx454 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %arrayidx454, align 4
  %xor455 = xor i32 %419, %417
  %arrayidx456 = getelementptr i32, ptr %subkey, i32 56
  %420 = ptrtoint ptr %arrayidx456 to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 %xor455, ptr %arrayidx456, align 4
  %421 = load i32, ptr %arrayidx442, align 4
  %arrayidx458 = getelementptr i32, ptr %subR, i32 29
  %422 = ptrtoint ptr %arrayidx458 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %arrayidx458, align 4
  %xor459 = xor i32 %423, %421
  %arrayidx460 = getelementptr i32, ptr %subkey, i32 57
  %424 = ptrtoint ptr %arrayidx460 to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %xor459, ptr %arrayidx460, align 4
  %425 = load i32, ptr %arrayidx446, align 4
  %arrayidx462 = getelementptr i32, ptr %subL, i32 30
  %426 = ptrtoint ptr %arrayidx462 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %arrayidx462, align 4
  %xor463 = xor i32 %427, %425
  %arrayidx464 = getelementptr i32, ptr %subkey, i32 58
  %428 = ptrtoint ptr %arrayidx464 to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 %xor463, ptr %arrayidx464, align 4
  %429 = load i32, ptr %arrayidx450, align 4
  %arrayidx466 = getelementptr i32, ptr %subR, i32 30
  %430 = ptrtoint ptr %arrayidx466 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %arrayidx466, align 4
  %xor467 = xor i32 %431, %429
  %arrayidx468 = getelementptr i32, ptr %subkey, i32 59
  %432 = ptrtoint ptr %arrayidx468 to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 %xor467, ptr %arrayidx468, align 4
  %433 = load i32, ptr %arrayidx454, align 4
  %arrayidx470 = getelementptr i32, ptr %subL, i32 31
  %434 = ptrtoint ptr %arrayidx470 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %arrayidx470, align 4
  %xor471 = xor i32 %435, %433
  %arrayidx472 = getelementptr i32, ptr %subkey, i32 60
  %436 = ptrtoint ptr %arrayidx472 to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 %xor471, ptr %arrayidx472, align 4
  %437 = load i32, ptr %arrayidx458, align 4
  %arrayidx474 = getelementptr i32, ptr %subR, i32 31
  %438 = ptrtoint ptr %arrayidx474 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %arrayidx474, align 4
  %xor475 = xor i32 %439, %437
  %arrayidx476 = getelementptr i32, ptr %subkey, i32 61
  %440 = ptrtoint ptr %arrayidx476 to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 %xor475, ptr %arrayidx476, align 4
  br label %if.end489

if.end489:                                        ; preds = %if.else402, %if.end.if.end489_crit_edge
  %arrayidx462.sink = phi ptr [ %arrayidx462, %if.else402 ], [ %arrayidx140, %if.end.if.end489_crit_edge ]
  %.sink886 = phi i32 [ 62, %if.else402 ], [ 46, %if.end.if.end489_crit_edge ]
  %arrayidx466.sink = phi ptr [ %arrayidx466, %if.else402 ], [ %arrayidx142, %if.end.if.end489_crit_edge ]
  %.sink884 = phi i32 [ 63, %if.else402 ], [ 47, %if.end.if.end489_crit_edge ]
  %.sink882 = phi i32 [ 32, %if.else402 ], [ 24, %if.end.if.end489_crit_edge ]
  %arrayidx470.sink = phi ptr [ %arrayidx470, %if.else402 ], [ %arrayidx69, %if.end.if.end489_crit_edge ]
  %.sink879 = phi i32 [ 64, %if.else402 ], [ 48, %if.end.if.end489_crit_edge ]
  %arrayidx474.sink = phi ptr [ %arrayidx474, %if.else402 ], [ %arrayidx72, %if.end.if.end489_crit_edge ]
  %.sink = phi i32 [ 65, %if.else402 ], [ 49, %if.end.if.end489_crit_edge ]
  %441 = ptrtoint ptr %arrayidx462.sink to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %arrayidx462.sink, align 4
  %arrayidx478 = getelementptr i32, ptr %subkey, i32 %.sink886
  %443 = ptrtoint ptr %arrayidx478 to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 %442, ptr %arrayidx478, align 4
  %444 = ptrtoint ptr %arrayidx466.sink to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %arrayidx466.sink, align 4
  %arrayidx480 = getelementptr i32, ptr %subkey, i32 %.sink884
  %446 = ptrtoint ptr %arrayidx480 to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 %445, ptr %arrayidx480, align 4
  %arrayidx481 = getelementptr i32, ptr %subL, i32 %.sink882
  %447 = ptrtoint ptr %arrayidx481 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %arrayidx481, align 4
  %449 = ptrtoint ptr %arrayidx470.sink to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %arrayidx470.sink, align 4
  %xor483 = xor i32 %450, %448
  %arrayidx484 = getelementptr i32, ptr %subkey, i32 %.sink879
  %451 = ptrtoint ptr %arrayidx484 to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 %xor483, ptr %arrayidx484, align 4
  %arrayidx485 = getelementptr i32, ptr %subR, i32 %.sink882
  %452 = ptrtoint ptr %arrayidx485 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %arrayidx485, align 4
  %454 = ptrtoint ptr %arrayidx474.sink to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %arrayidx474.sink, align 4
  %xor487 = xor i32 %455, %453
  %arrayidx488 = getelementptr i32, ptr %subkey, i32 %.sink
  %456 = ptrtoint ptr %arrayidx488 to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 %xor487, ptr %arrayidx488, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !15, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_camellia_generic__173_1067_camellia_init4, !1, !"__initcall__kmod_camellia_generic__173_1067_camellia_init4", i1 false, i1 false}
!1 = !{!"../crypto/camellia_generic.c", i32 1067, i32 1}
!2 = !{ptr @__exitcall_camellia_fini, !3, !"__exitcall_camellia_fini", i1 false, i1 false}
!3 = !{!"../crypto/camellia_generic.c", i32 1068, i32 1}
!4 = !{ptr @__UNIQUE_ID_description174, !5, !"__UNIQUE_ID_description174", i1 false, i1 false}
!5 = !{!"../crypto/camellia_generic.c", i32 1070, i32 1}
!6 = !{ptr @__UNIQUE_ID_file175, !7, !"__UNIQUE_ID_file175", i1 false, i1 false}
!7 = !{!"../crypto/camellia_generic.c", i32 1071, i32 1}
!8 = !{ptr @__UNIQUE_ID_license176, !7, !"__UNIQUE_ID_license176", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias_userspace177, !10, !"__UNIQUE_ID_alias_userspace177", i1 false, i1 false}
!10 = !{!"../crypto/camellia_generic.c", i32 1072, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto178, !10, !"__UNIQUE_ID_alias_crypto178", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias_userspace179, !13, !"__UNIQUE_ID_alias_userspace179", i1 false, i1 false}
!13 = !{!"../crypto/camellia_generic.c", i32 1073, i32 1}
!14 = !{ptr @__UNIQUE_ID_alias_crypto180, !13, !"__UNIQUE_ID_alias_crypto180", i1 false, i1 false}
!15 = !{ptr @camellia_alg, !16, !"camellia_alg", i1 false, i1 false}
!16 = !{!"../crypto/camellia_generic.c", i32 1038, i32 26}
!17 = !{ptr @camellia_sp1110, !18, !"camellia_sp1110", i1 false, i1 false}
!18 = !{!"../crypto/camellia_generic.c", i32 20, i32 18}
!19 = !{ptr @camellia_sp0222, !20, !"camellia_sp0222", i1 false, i1 false}
!20 = !{!"../crypto/camellia_generic.c", i32 87, i32 18}
!21 = !{ptr @camellia_sp3033, !22, !"camellia_sp3033", i1 false, i1 false}
!22 = !{!"../crypto/camellia_generic.c", i32 154, i32 18}
!23 = !{ptr @camellia_sp4404, !24, !"camellia_sp4404", i1 false, i1 false}
!24 = !{!"../crypto/camellia_generic.c", i32 221, i32 18}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
