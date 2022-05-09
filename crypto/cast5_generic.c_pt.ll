; ModuleID = '/llk/IR_all_yes/crypto/cast5_generic.c_pt.bc'
source_filename = "../crypto/cast5_generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__cast5_encrypt\22, \22a\22\09"
module asm "\09.weak\09__crc___cast5_encrypt\09\09\09\09"
module asm "\09.long\09__crc___cast5_encrypt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cast5_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22__cast5_encrypt\22\09\09\09\09\09"
module asm "__kstrtabns___cast5_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__cast5_decrypt\22, \22a\22\09"
module asm "\09.weak\09__crc___cast5_decrypt\09\09\09\09"
module asm "\09.long\09__crc___cast5_decrypt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cast5_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22__cast5_decrypt\22\09\09\09\09\09"
module asm "__kstrtabns___cast5_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cast5_setkey\22, \22a\22\09"
module asm "\09.weak\09__crc_cast5_setkey\09\09\09\09"
module asm "\09.long\09__crc_cast5_setkey\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cast5_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22cast5_setkey\22\09\09\09\09\09"
module asm "__kstrtabns_cast5_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.cast5_ctx = type { [16 x i32], [16 x i8], i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@cast_s1 = external dso_local local_unnamed_addr constant [256 x i32], align 4
@cast_s2 = external dso_local local_unnamed_addr constant [256 x i32], align 4
@cast_s3 = external dso_local local_unnamed_addr constant [256 x i32], align 4
@cast_s4 = external dso_local local_unnamed_addr constant [256 x i32], align 4
@__kstrtab___cast5_encrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns___cast5_encrypt = external dso_local constant [0 x i8], align 1
@__ksymtab___cast5_encrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cast5_encrypt to i32), ptr @__kstrtab___cast5_encrypt, ptr @__kstrtabns___cast5_encrypt }, section "___ksymtab_gpl+__cast5_encrypt", align 4
@__kstrtab___cast5_decrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns___cast5_decrypt = external dso_local constant [0 x i8], align 1
@__ksymtab___cast5_decrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cast5_decrypt to i32), ptr @__kstrtab___cast5_decrypt, ptr @__kstrtabns___cast5_decrypt }, section "___ksymtab_gpl+__cast5_decrypt", align 4
@__kstrtab_cast5_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_cast5_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab_cast5_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cast5_setkey to i32), ptr @__kstrtab_cast5_setkey, ptr @__kstrtabns_cast5_setkey }, section "___ksymtab_gpl+cast5_setkey", align 4
@alg = internal global %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, i32 8, i32 84, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"cast5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cast5-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon { %struct.cipher_alg { i32 5, i32 16, ptr @cast5_setkey, ptr @cast5_encrypt, ptr @cast5_decrypt } }, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef }, align 128
@__initcall__kmod_cast5_generic__173_534_cast5_mod_init4 = internal global ptr @cast5_mod_init, section ".initcall4.init", align 4
@__exitcall_cast5_mod_fini = internal global ptr @cast5_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [40 x i8] c"cast5_generic.file=crypto/cast5_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [26 x i8] c"cast5_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [49 x i8] c"cast5_generic.description=Cast5 Cipher Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace177 = internal constant [26 x i8] c"cast5_generic.alias=cast5\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto178 = internal constant [33 x i8] c"cast5_generic.alias=crypto-cast5\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace179 = internal constant [34 x i8] c"cast5_generic.alias=cast5-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto180 = internal constant [41 x i8] c"cast5_generic.alias=crypto-cast5-generic\00", section ".modinfo", align 1
@s5 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 2127105028, i32 745436345, i32 -1693554977, i32 -1506576111, i32 -1200979969, i32 500390133, i32 1155374404, i32 389092991, i32 150729210, i32 -403369524, i32 -771417344, i32 1935325696, i32 716645080, i32 946045387, i32 -1393155014, i32 1774124410, i32 -425531521, i32 -255385395, i32 -1001830378, i32 -856309376, i32 948246080, i32 363898952, i32 -427091765, i32 1286266623, i32 1598556673, i32 68334250, i32 630723836, i32 1104211938, i32 1312863373, i32 613332731, i32 -1917182722, i32 1101634306, i32 441780740, i32 -1165007413, i32 1917973735, i32 -1784342747, i32 -1056510761, i32 -1750755318, i32 -986072662, i32 1299840618, i32 -218892445, i32 1756332096, i32 -317940138, i32 297047435, i32 -504669560, i32 -2029394256, i32 -673156778, i32 1311375015, i32 1667687725, i32 47300608, i32 -995324411, i32 -1820854927, i32 201668394, i32 1468347890, i32 576830978, i32 -700276535, i32 -552361344, i32 1958042578, i32 1747032512, i32 -735975956, i32 1408974056, i32 -928125517, i32 682131401, i32 1033214337, i32 1545599232, i32 -29830247, i32 206503691, i32 103024618, i32 -1439739983, i32 1337551222, i32 -1865968379, i32 -1331124364, i32 -279600641, i32 -442719550, i32 -1498010329, i32 -429243805, i32 -547028961, i32 247794022, i32 -539142724, i32 702416469, i32 -1860275302, i32 397379957, i32 851939612, i32 -1980197784, i32 218229120, i32 1380406772, i32 62274761, i32 214451378, i32 -1124863830, i32 -2018756887, i32 -449154010, i32 28563499, i32 446592073, i32 1693330814, i32 -841240102, i32 29968656, i32 -1201094784, i32 220656637, i32 -1824330265, i32 77972100, i32 1667708854, i32 1358280214, i32 -230201629, i32 -1899350335, i32 325977563, i32 -17726575, i32 -74941897, i32 -689440812, i32 -939819575, i32 811859167, i32 -1225422370, i32 -332840486, i32 652502677, i32 -1219075047, i32 -162205755, i32 -796043081, i32 1217549313, i32 -1044722817, i32 -436251377, i32 -1240977335, i32 1538642152, i32 -2015941030, i32 -1419088159, i32 574252750, i32 -970198067, i32 -1643608583, i32 1758150215, i32 141295887, i32 -1575098336, i32 -779392546, i32 -201959561, i32 -100482058, i32 1082055363, i32 -877406896, i32 395511885, i32 -1328083270, i32 179534037, i32 -648938740, i32 -556279210, i32 1092926436, i32 -1798698154, i32 257381841, i32 -522066578, i32 1636087230, i32 1477059743, i32 -1795732544, i32 -483948402, i32 -1619307167, i32 -1008991616, i32 90732309, i32 1684827095, i32 1150307763, i32 1723134115, i32 -1057921910, i32 1769919919, i32 1240018934, i32 815675215, i32 750138730, i32 -2055174797, i32 1234303040, i32 1995484674, i32 138143821, i32 675421338, i32 1145607174, i32 1936608440, i32 -1056364272, i32 -1949737018, i32 2105974004, i32 323969391, i32 779555213, i32 -1290064927, i32 -1433357198, i32 1017501463, i32 2098600890, i32 -1666346992, i32 -1354355806, i32 -1612424750, i32 1171473753, i32 -638395885, i32 -607759225, i32 -203097778, i32 393037935, i32 159126506, i32 1662887367, i32 1147106178, i32 391545844, i32 -842634601, i32 1891500680, i32 -1278357646, i32 1851642611, i32 546529401, i32 1167818917, i32 -1100946725, i32 -1446891263, i32 -341495460, i32 575554290, i32 475796850, i32 -160294100, i32 450035699, i32 -1943715762, i32 844027695, i32 1080539133, i32 86184846, i32 1554234488, i32 -602941842, i32 1972511363, i32 2018339607, i32 1491841390, i32 1141460869, i32 1061690759, i32 -50418053, i32 2008416118, i32 -1943862593, i32 -1426819754, i32 1598468138, i32 722020353, i32 1027143159, i32 212344630, i32 1387219594, i32 1725294528, i32 -549779340, i32 -1794813680, i32 458938280, i32 -165751379, i32 1828119673, i32 544571780, i32 -791741851, i32 -1997029800, i32 1241802790, i32 267843827, i32 -1600356496, i32 1397140384, i32 1558801448, i32 -512299613, i32 1806446719, i32 929573330, i32 -2060054615, i32 400817706, i32 616011623, i32 -173446368, i32 -691198571, i32 1761550015, i32 1968522284, i32 -241236290, i32 -102734438, i32 -289847011, i32 872482584, i32 -1154430280, i32 -400359915, i32 -2007561853, i32 1963876937, i32 -631079339, i32 1584857000, i32 -1319942842, i32 1833426440, i32 -269883436], [256 x i8] zeroinitializer }, align 32
@s6 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 -151351395, i32 749497569, i32 1285769319, i32 -499941508, i32 -1780807449, i32 23610292, i32 -319988548, i32 844452780, i32 -1080096416, i32 -543038739, i32 -2081400931, i32 1676510905, i32 448177848, i32 -564216263, i32 -208668878, i32 -1987464904, i32 871450977, i32 -1072089155, i32 -184105254, i32 -463315330, i32 -1559696743, i32 1310974780, i32 2043402188, i32 1218528103, i32 -1558931943, i32 -20362283, i32 -1592518838, i32 -358606746, i32 -1601905875, i32 162023535, i32 -1467457206, i32 687910808, i32 23484817, i32 -510056349, i32 -923595680, i32 779677500, i32 -791340750, i32 -821040108, i32 -137754670, i32 -794288014, i32 -46065282, i32 -1828346192, i32 -395582502, i32 1958663117, i32 925738300, i32 1283408968, i32 -625617856, i32 1840910019, i32 137959847, i32 -1615139111, i32 1239142320, i32 1315376211, i32 1547541505, i32 1690155329, i32 739140458, i32 -1166157363, i32 -361794680, i32 -418658462, i32 905091803, i32 1548541325, i32 -254505588, i32 -1199483934, i32 144808038, i32 451078856, i32 676114313, i32 -1433239005, i32 -1825259949, i32 993665471, i32 373509091, i32 -1695926010, i32 -269958290, i32 -124727847, i32 -2145227346, i32 -1019173725, i32 -545350647, i32 -1500207097, i32 1534877388, i32 572371878, i32 -1704353745, i32 1753320020, i32 -827184785, i32 1405125690, i32 -24562091, i32 633333386, i32 -1268610372, i32 -819843393, i32 632057672, i32 -1448504441, i32 1404951397, i32 -412091417, i32 -379060872, i32 195638627, i32 -1909183551, i32 -392094743, i32 1233155085, i32 -938967556, i32 -1914388583, i32 -1592720992, i32 2144565621, i32 -631626048, i32 -400582321, i32 -1792488055, i32 -46948371, i32 -1200081729, i32 1594115437, i32 572884632, i32 -909850565, i32 767645374, i32 1331858858, i32 1475698373, i32 -501085506, i32 -762220865, i32 1321687957, i32 619889600, i32 1121017241, i32 -854753376, i32 2070816767, i32 -1461941520, i32 1933951238, i32 -199351505, i32 890643334, i32 -420837082, i32 859025556, i32 360630002, i32 925594799, i32 1764062180, i32 -374745016, i32 -216661367, i32 979562269, i32 -1484266952, i32 -207227274, i32 1949714515, i32 546639971, i32 1165388173, i32 -1225075705, i32 1495988560, i32 922170659, i32 1291546247, i32 2107952832, i32 1813327274, i32 -888957272, i32 -988938659, i32 -53016661, i32 153207855, i32 -1981812549, i32 1608695416, i32 1150242611, i32 1967526857, i32 721801357, i32 1220138373, i32 -603679679, i32 -938897509, i32 2112743302, i32 -1013304461, i32 1111556101, i32 1778980689, i32 250857638, i32 -1996459306, i32 673216130, i32 -1448478786, i32 -1087215715, i32 -732210315, i32 -1286341376, i32 -877599912, i32 -2096160246, i32 529510932, i32 -747450616, i32 -868464109, i32 -1930022554, i32 102533054, i32 -2000056440, i32 1617093527, i32 1204784762, i32 -1228385661, i32 1019391227, i32 1069574518, i32 1317995090, i32 1691889997, i32 -633835293, i32 510022745, i32 -1056372496, i32 1362108837, i32 1817929911, i32 -2110813536, i32 805817662, i32 1953603311, i32 -595122559, i32 120799444, i32 2118332377, i32 207536705, i32 -2012665748, i32 -174925679, i32 145305846, i32 -1786842363, i32 -1208221763, i32 -1033442961, i32 1877257368, i32 -1317802816, i32 -1134513110, i32 -1791715110, i32 -73290222, i32 759945014, i32 254147243, i32 -1527513877, i32 -493448925, i32 629083197, i32 -1823953079, i32 907280572, i32 -394170550, i32 940896768, i32 -1543946173, i32 -1669704510, i32 -1133490345, i32 -633214983, i32 -1034235078, i32 1425318020, i32 -1317055227, i32 1496677566, i32 -306375224, i32 2140652971, i32 -1168455755, i32 -1225335121, i32 977771578, i32 1392695845, i32 1698528874, i32 1411812681, i32 1369733098, i32 1343739227, i32 -674079352, i32 1142123638, i32 67414216, i32 -1192910559, i32 -1206218102, i32 1626167401, i32 -1748673642, i32 -353593061, i32 697522451, i32 33404913, i32 143560186, i32 -1699285259, i32 994885535, i32 1247667115, i32 -435872459, i32 -1595811755, i32 -747942671, i32 -180032021, i32 -1326893788, i32 -1095004227, i32 -1562942769, i32 1237921620, i32 951448369, i32 1898488916, i32 1211705605, i32 -1503978056, i32 -2061723715, i32 -696922321], [256 x i8] zeroinitializer }, align 32
@s7 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 -2048901095, i32 858518887, i32 1714274303, i32 -809085293, i32 713916271, i32 -1415853806, i32 -564131679, i32 539548191, i32 36158695, i32 1298409750, i32 419087104, i32 1358007170, i32 749914897, i32 -1305286820, i32 1261868530, i32 -1299773474, i32 -1604338442, i32 -851344919, i32 -514842356, i32 -498142787, i32 -1318534271, i32 -35330167, i32 1551479000, i32 512490819, i32 1296650241, i32 951993153, i32 -1858277859, i32 -1834509249, i32 144139966, i32 -1158763020, i32 310820559, i32 -1226126567, i32 643875328, i32 1969602020, i32 1680088954, i32 -2109154135, i32 -1011634842, i32 672358534, i32 198762408, i32 896343282, i32 276269502, i32 -1280120370, i32 84060815, i32 197145886, i32 376173866, i32 -351076478, i32 -481793775, i32 -749898474, i32 1316698879, i32 1598252827, i32 -1661542345, i32 1233235075, i32 859989710, i32 -1936506441, i32 -791128896, i32 -885363576, i32 1203513385, i32 1193654839, i32 -1502948821, i32 2060853022, i32 207403770, i32 1144516871, i32 -1226335902, i32 1121114134, i32 177607304, i32 -509230994, i32 326409831, i32 1929119770, i32 -1311688201, i32 -111659195, i32 -820388008, i32 -1094453418, i32 -1066485200, i32 119610148, i32 1170376745, i32 -916573825, i32 -1131494127, i32 951863017, i32 -957941228, i32 -1159178166, i32 -1387348922, i32 1183797387, i32 2015970143, i32 -249292741, i32 -2111980897, i32 -1342828556, i32 -366195091, i32 384012900, i32 -1839969653, i32 10178499, i32 -1415148307, i32 -1698074760, i32 111523738, i32 -1299878290, i32 451689641, i32 -1098676600, i32 235406569, i32 1441906262, i32 -404408773, i32 -1281232291, i32 -136397947, i32 1644036924, i32 376726067, i32 1006849064, i32 -630387596, i32 2041234796, i32 1021632941, i32 1374734338, i32 -1728515238, i32 371631263, i32 -287823063, i32 490221539, i32 206551450, i32 -1154328712, i32 1053219195, i32 1853335209, i32 -882537636, i32 -732811065, i32 735133835, i32 1623211703, i32 -1190752904, i32 -1556654860, i32 -198129539, i32 -928574718, i32 -1184003022, i32 -338368578, i32 -1098146515, i32 2038037254, i32 -417180920, i32 -1955213449, i32 300912036, i32 -528234408, i32 -1922336657, i32 1516443558, i32 -94570592, i32 1574567987, i32 -225525840, i32 -172375280, i32 -1595227520, i32 146372218, i32 -1546005840, i32 2043888151, i32 35287437, i32 -1698286742, i32 655490400, i32 1132482787, i32 110692520, i32 1031794116, i32 -2106774545, i32 1324057718, i32 1217253157, i32 919197030, i32 686247489, i32 -1033827638, i32 1028237775, i32 -1159480865, i32 -1235251738, i32 -1834045596, i32 986174950, i32 -1633155831, i32 -232062595, i32 -1541980304, i32 -585230653, i32 367056889, i32 1353824391, i32 731860949, i32 1650113154, i32 1778481506, i32 784341916, i32 357075625, i32 -686364864, i32 1074092588, i32 -1814914526, i32 -483541094, i32 92751289, i32 877911070, i32 -694605458, i32 1231880047, i32 480201094, i32 -538776313, i32 -1200471343, i32 434011822, i32 87971354, i32 363687820, i32 1717726236, i32 1901380172, i32 -368563414, i32 -1813305031, i32 400339184, i32 1490350766, i32 -1633512197, i32 1389319756, i32 -1736180122, i32 784598401, i32 1983468483, i32 30828846, i32 -744439544, i32 -1578691058, i32 -453845082, i32 1765724805, i32 1955612312, i32 1277890269, i32 1333098070, i32 1564029816, i32 -1590549681, i32 1026694237, i32 -1007296108, i32 1260819201, i32 -945880529, i32 1016692350, i32 1582273796, i32 1073413053, i32 1995943182, i32 694588404, i32 1025494639, i32 -971094594, i32 -743068876, i32 -148112969, i32 453260480, i32 1316140391, i32 1435673405, i32 -1256025343, i32 -808277889, i32 1622062951, i32 403978347, i32 817677117, i32 950059133, i32 -48888078, i32 -1016901221, i32 1486738320, i32 1417279718, i32 481875527, i32 -1745002071, i32 -361276940, i32 760697757, i32 1452955855, i32 -397515859, i32 1177426808, i32 1702951038, i32 -209618668, i32 -1847962124, i32 1084371187, i32 -778531019, i32 -1226630958, i32 1073369276, i32 1027665953, i32 -1010778706, i32 1230553676, i32 1368340146, i32 -2068720784, i32 267243139, i32 -2020746534, i32 -224233017, i32 -1797252120, i32 -1871614133, i32 -1790211421], [256 x i8] zeroinitializer }, align 32
@sb8 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 -501862387, i32 -1143078916, i32 -1477715267, i32 895778965, i32 2005530807, i32 -423554533, i32 237245952, i32 86829237, i32 296341424, i32 -443207919, i32 -320366326, i32 -1819881100, i32 709006108, i32 1994621201, i32 -1322389702, i32 937287164, i32 -560275791, i32 168608556, i32 -1105629143, i32 -2069886656, i32 -1155253745, i32 -1261357105, i32 -1269925392, i32 77524477, i32 185966941, i32 1208824168, i32 -1950622118, i32 1721625922, i32 -940775375, i32 1066374631, i32 1927223579, i32 1971335949, i32 -1811463599, i32 1551748602, i32 -1413583517, i32 -1438637724, i32 -1291725814, i32 48746954, i32 1398218158, i32 2050065058, i32 313056748, i32 -39177379, i32 393167848, i32 1912293076, i32 940740642, i32 -829121836, i32 -1203279443, i32 -1772365726, i32 -2097950635, i32 1727764327, i32 364383054, i32 492521376, i32 1291706479, i32 -1030830920, i32 1474851438, i32 1685747964, i32 -1719247548, i32 1619776915, i32 1814040067, i32 970743798, i32 1561002147, i32 -1369198606, i32 2123093554, i32 1880132620, i32 -1143779255, i32 697884420, i32 -1743981526, i32 -1687292783, i32 -1635852973, i32 110200136, i32 1489731079, i32 997519150, i32 1378877361, i32 -767096628, i32 478029773, i32 -1528094373, i32 1022481122, i32 431258168, i32 1112503832, i32 897933369, i32 -1659379993, i32 669726182, i32 -911214981, i32 918222264, i32 163866573, i32 -1047981903, i32 -518144133, i32 114105080, i32 1903216136, i32 761148244, i32 -723629734, i32 1690750982, i32 -1128217044, i32 1037045171, i32 1888456500, i32 2010454850, i32 642736655, i32 616092351, i32 365016990, i32 1185228132, i32 -120068786, i32 1043824992, i32 2023083429, i32 -2053368411, i32 -431646840, i32 -1015298209, i32 -620250612, i32 108438443, i32 2132974366, i32 830746235, i32 606445527, i32 -121703310, i32 -2090861384, i32 1844756978, i32 -1762283115, i32 -49614596, i32 -1325526196, i32 -498045635, i32 1335562986, i32 -233442779, i32 -1574734993, i32 -1615543256, i32 634407289, i32 885462008, i32 -1000242809, i32 -361075048, i32 2094100220, i32 339117932, i32 -246136569, i32 -1092686316, i32 1458155303, i32 -1605721023, i32 1022871705, i32 -1829979418, i32 -580451987, i32 353796843, i32 -1472008481, i32 -38117196, i32 -242189451, i32 551748367, i32 618185374, i32 -516331717, i32 -274317384, i32 1904685140, i32 -1225601221, i32 -1624087486, i32 -887774004, i32 -1340455676, i32 -236683891, i32 -2075517979, i32 -1159208996, i32 1120655984, i32 -847401462, i32 1474845562, i32 -717268234, i32 550456716, i32 -828058584, i32 2043752612, i32 881257467, i32 869518812, i32 2005220179, i32 938474677, i32 -989427848, i32 -444550170, i32 1315485940, i32 -976702594, i32 226533026, i32 965733244, i32 321539988, i32 1136104718, i32 804158748, i32 573969341, i32 -586757470, i32 937399083, i32 -1004240247, i32 -1393300541, i32 1461057207, i32 -281773859, i32 -228105873, i32 -1052193820, i32 -1873641122, i32 1581322155, i32 -1266015131, i32 786071460, i32 -394575644, i32 -376528764, i32 1485433313, i32 -271347460, i32 -586689701, i32 -616016236, i32 953673138, i32 1467089153, i32 1930354364, i32 1533292819, i32 -1802404273, i32 1346121658, i32 1685000834, i32 1965281866, i32 -529033579, i32 -104760689, i32 2052792609, i32 -779634538, i32 690371149, i32 -1169093409, i32 -2114683745, i32 -1391369235, i32 -361014939, i32 436236910, i32 289419410, i32 14314871, i32 1242357089, i32 -1390459389, i32 1616633776, i32 -1628585116, i32 585885352, i32 -823668086, i32 -1595459936, i32 1432659641, i32 277164553, i32 -940863689, i32 770115018, i32 -1991158001, i32 -553024981, i32 -1117185428, i32 -1441602318, i32 -2025513969, i32 -520707462, i32 987383833, i32 1290892879, i32 225909803, i32 1741533526, i32 890078084, i32 1496906255, i32 1111072499, i32 916028167, i32 243534141, i32 1252605537, i32 -2090805125, i32 531204876, i32 290011180, i32 -378133083, i32 102027703, i32 237315147, i32 209093447, i32 1486785922, i32 220223953, i32 -1536771298, i32 -119928190, i32 82940208, i32 -1167176000, i32 -1725542044, i32 518464269, i32 1353887104, i32 -353474559, i32 -1917672829, i32 -359926370], [256 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [3 x i8] c"s5\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 25, i32 18 }
@___asan_gen_.4 = private unnamed_addr constant [3 x i8] c"s6\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 91, i32 18 }
@___asan_gen_.7 = private unnamed_addr constant [3 x i8] c"s7\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 157, i32 18 }
@___asan_gen_.10 = private unnamed_addr constant [4 x i8] c"sb8\00", align 1
@___asan_gen_.11 = private constant [26 x i8] c"../crypto/cast5_generic.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 223, i32 18 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias_crypto178, ptr @__UNIQUE_ID_alias_crypto180, ptr @__UNIQUE_ID_alias_userspace177, ptr @__UNIQUE_ID_alias_userspace179, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_cast5_mod_fini, ptr @__initcall__kmod_cast5_generic__173_534_cast5_mod_init4, ptr @__ksymtab___cast5_decrypt, ptr @__ksymtab___cast5_encrypt, ptr @__ksymtab_cast5_setkey, ptr @cast5_mod_fini, ptr @s5, ptr @s6, ptr @s7, ptr @sb8], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s7 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sb8 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__cast5_encrypt(ptr noundef readonly %c, ptr nocapture noundef writeonly %outbuf, ptr nocapture noundef readonly %inbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %Kr2 = getelementptr inbounds %struct.cast5_ctx, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %inbuf to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %inbuf, align 1
  %add.ptr = getelementptr i8, ptr %inbuf, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %4 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c, align 4
  %add = add i32 %5, %3
  %6 = ptrtoint ptr %Kr2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %Kr2, align 1
  %conv = zext i8 %7 to i32
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add, i32 %add, i32 %conv) #7
  %shr = lshr i32 %or.i, 24
  %arrayidx7 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  %shr8 = lshr i32 %or.i, 16
  %and = and i32 %shr8, 255
  %arrayidx9 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9, align 4
  %xor = xor i32 %11, %9
  %shr10 = lshr i32 %or.i, 8
  %and11 = and i32 %shr10, 255
  %arrayidx12 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and11
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12, align 4
  %sub = sub i32 %xor, %13
  %and13 = and i32 %or.i, 255
  %arrayidx14 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and13
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx14, align 4
  %add15 = add i32 %sub, %15
  %xor16 = xor i32 %add15, %1
  %arrayidx17 = getelementptr i32, ptr %c, i32 1
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx17, align 4
  %xor18 = xor i32 %xor16, %17
  %arrayidx19 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %19 to i32
  %or.i479 = tail call i32 @llvm.fshl.i32(i32 %xor18, i32 %xor18, i32 %conv20) #7
  %shr22 = lshr i32 %or.i479, 24
  %arrayidx23 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr22
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx23, align 4
  %shr24 = lshr i32 %or.i479, 16
  %and25 = and i32 %shr24, 255
  %arrayidx26 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and25
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx26, align 4
  %sub27 = sub i32 %21, %23
  %shr28 = lshr i32 %or.i479, 8
  %and29 = and i32 %shr28, 255
  %arrayidx30 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and29
  %24 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx30, align 4
  %add31 = add i32 %sub27, %25
  %and32 = and i32 %or.i479, 255
  %arrayidx33 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and32
  %26 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx33, align 4
  %xor34 = xor i32 %27, %3
  %xor35 = xor i32 %xor34, %add31
  %arrayidx36 = getelementptr i32, ptr %c, i32 2
  %28 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx36, align 4
  %sub37 = sub i32 %29, %xor35
  %arrayidx38 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %31 to i32
  %or.i480 = tail call i32 @llvm.fshl.i32(i32 %sub37, i32 %sub37, i32 %conv39) #7
  %shr41 = lshr i32 %or.i480, 24
  %arrayidx42 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41
  %32 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx42, align 4
  %shr43 = lshr i32 %or.i480, 16
  %and44 = and i32 %shr43, 255
  %arrayidx45 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44
  %34 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx45, align 4
  %add46 = add i32 %35, %33
  %shr47 = lshr i32 %or.i480, 8
  %and48 = and i32 %shr47, 255
  %arrayidx49 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48
  %36 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx49, align 4
  %xor50 = xor i32 %add46, %37
  %and51 = and i32 %or.i480, 255
  %arrayidx52 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51
  %38 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx52, align 4
  %sub53 = sub i32 %xor50, %39
  %xor54 = xor i32 %sub53, %xor16
  %arrayidx55 = getelementptr i32, ptr %c, i32 3
  %40 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx55, align 4
  %add56 = add i32 %xor54, %41
  %arrayidx57 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %43 to i32
  %or.i481 = tail call i32 @llvm.fshl.i32(i32 %add56, i32 %add56, i32 %conv58) #7
  %shr60 = lshr i32 %or.i481, 24
  %arrayidx61 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr60
  %44 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx61, align 4
  %shr62 = lshr i32 %or.i481, 16
  %and63 = and i32 %shr62, 255
  %arrayidx64 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and63
  %46 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx64, align 4
  %xor65 = xor i32 %47, %45
  %shr66 = lshr i32 %or.i481, 8
  %and67 = and i32 %shr66, 255
  %arrayidx68 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and67
  %48 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx68, align 4
  %sub69 = sub i32 %xor65, %49
  %and70 = and i32 %or.i481, 255
  %arrayidx71 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and70
  %50 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx71, align 4
  %add72 = add i32 %sub69, %51
  %xor73 = xor i32 %add72, %xor35
  %arrayidx74 = getelementptr i32, ptr %c, i32 4
  %52 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx74, align 4
  %xor75 = xor i32 %xor73, %53
  %arrayidx76 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 4
  %54 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %55 to i32
  %or.i482 = tail call i32 @llvm.fshl.i32(i32 %xor75, i32 %xor75, i32 %conv77) #7
  %shr79 = lshr i32 %or.i482, 24
  %arrayidx80 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr79
  %56 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx80, align 4
  %shr81 = lshr i32 %or.i482, 16
  %and82 = and i32 %shr81, 255
  %arrayidx83 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and82
  %58 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx83, align 4
  %sub84 = sub i32 %57, %59
  %shr85 = lshr i32 %or.i482, 8
  %and86 = and i32 %shr85, 255
  %arrayidx87 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and86
  %60 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx87, align 4
  %add88 = add i32 %sub84, %61
  %and89 = and i32 %or.i482, 255
  %arrayidx90 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and89
  %62 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx90, align 4
  %xor91 = xor i32 %63, %xor54
  %xor92 = xor i32 %xor91, %add88
  %arrayidx93 = getelementptr i32, ptr %c, i32 5
  %64 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx93, align 4
  %sub94 = sub i32 %65, %xor92
  %arrayidx95 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 5
  %66 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %67 to i32
  %or.i483 = tail call i32 @llvm.fshl.i32(i32 %sub94, i32 %sub94, i32 %conv96) #7
  %shr98 = lshr i32 %or.i483, 24
  %arrayidx99 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr98
  %68 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx99, align 4
  %shr100 = lshr i32 %or.i483, 16
  %and101 = and i32 %shr100, 255
  %arrayidx102 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and101
  %70 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx102, align 4
  %add103 = add i32 %71, %69
  %shr104 = lshr i32 %or.i483, 8
  %and105 = and i32 %shr104, 255
  %arrayidx106 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and105
  %72 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx106, align 4
  %xor107 = xor i32 %add103, %73
  %and108 = and i32 %or.i483, 255
  %arrayidx109 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and108
  %74 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx109, align 4
  %sub110 = sub i32 %xor107, %75
  %xor111 = xor i32 %sub110, %xor73
  %arrayidx112 = getelementptr i32, ptr %c, i32 6
  %76 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx112, align 4
  %add113 = add i32 %xor111, %77
  %arrayidx114 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 6
  %78 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %79 to i32
  %or.i484 = tail call i32 @llvm.fshl.i32(i32 %add113, i32 %add113, i32 %conv115) #7
  %shr117 = lshr i32 %or.i484, 24
  %arrayidx118 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr117
  %80 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx118, align 4
  %shr119 = lshr i32 %or.i484, 16
  %and120 = and i32 %shr119, 255
  %arrayidx121 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and120
  %82 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx121, align 4
  %xor122 = xor i32 %83, %81
  %shr123 = lshr i32 %or.i484, 8
  %and124 = and i32 %shr123, 255
  %arrayidx125 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and124
  %84 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx125, align 4
  %sub126 = sub i32 %xor122, %85
  %and127 = and i32 %or.i484, 255
  %arrayidx128 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and127
  %86 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx128, align 4
  %add129 = add i32 %sub126, %87
  %xor130 = xor i32 %add129, %xor92
  %arrayidx131 = getelementptr i32, ptr %c, i32 7
  %88 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx131, align 4
  %xor132 = xor i32 %xor130, %89
  %arrayidx133 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 7
  %90 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx133, align 1
  %conv134 = zext i8 %91 to i32
  %or.i485 = tail call i32 @llvm.fshl.i32(i32 %xor132, i32 %xor132, i32 %conv134) #7
  %shr136 = lshr i32 %or.i485, 24
  %arrayidx137 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr136
  %92 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx137, align 4
  %shr138 = lshr i32 %or.i485, 16
  %and139 = and i32 %shr138, 255
  %arrayidx140 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and139
  %94 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx140, align 4
  %sub141 = sub i32 %93, %95
  %shr142 = lshr i32 %or.i485, 8
  %and143 = and i32 %shr142, 255
  %arrayidx144 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and143
  %96 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx144, align 4
  %add145 = add i32 %sub141, %97
  %and146 = and i32 %or.i485, 255
  %arrayidx147 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and146
  %98 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx147, align 4
  %xor148 = xor i32 %99, %xor111
  %xor149 = xor i32 %xor148, %add145
  %arrayidx150 = getelementptr i32, ptr %c, i32 8
  %100 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx150, align 4
  %sub151 = sub i32 %101, %xor149
  %arrayidx152 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 8
  %102 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx152, align 1
  %conv153 = zext i8 %103 to i32
  %or.i486 = tail call i32 @llvm.fshl.i32(i32 %sub151, i32 %sub151, i32 %conv153) #7
  %shr155 = lshr i32 %or.i486, 24
  %arrayidx156 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr155
  %104 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx156, align 4
  %shr157 = lshr i32 %or.i486, 16
  %and158 = and i32 %shr157, 255
  %arrayidx159 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and158
  %106 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx159, align 4
  %add160 = add i32 %107, %105
  %shr161 = lshr i32 %or.i486, 8
  %and162 = and i32 %shr161, 255
  %arrayidx163 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and162
  %108 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx163, align 4
  %xor164 = xor i32 %add160, %109
  %and165 = and i32 %or.i486, 255
  %arrayidx166 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and165
  %110 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx166, align 4
  %sub167 = sub i32 %xor164, %111
  %xor168 = xor i32 %sub167, %xor130
  %arrayidx169 = getelementptr i32, ptr %c, i32 9
  %112 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx169, align 4
  %add170 = add i32 %xor168, %113
  %arrayidx171 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 9
  %114 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx171, align 1
  %conv172 = zext i8 %115 to i32
  %or.i487 = tail call i32 @llvm.fshl.i32(i32 %add170, i32 %add170, i32 %conv172) #7
  %shr174 = lshr i32 %or.i487, 24
  %arrayidx175 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr174
  %116 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx175, align 4
  %shr176 = lshr i32 %or.i487, 16
  %and177 = and i32 %shr176, 255
  %arrayidx178 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and177
  %118 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx178, align 4
  %xor179 = xor i32 %119, %117
  %shr180 = lshr i32 %or.i487, 8
  %and181 = and i32 %shr180, 255
  %arrayidx182 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and181
  %120 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx182, align 4
  %sub183 = sub i32 %xor179, %121
  %and184 = and i32 %or.i487, 255
  %arrayidx185 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and184
  %122 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx185, align 4
  %add186 = add i32 %sub183, %123
  %xor187 = xor i32 %add186, %xor149
  %arrayidx188 = getelementptr i32, ptr %c, i32 10
  %124 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx188, align 4
  %xor189 = xor i32 %xor187, %125
  %arrayidx190 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 10
  %126 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx190, align 1
  %conv191 = zext i8 %127 to i32
  %or.i488 = tail call i32 @llvm.fshl.i32(i32 %xor189, i32 %xor189, i32 %conv191) #7
  %shr193 = lshr i32 %or.i488, 24
  %arrayidx194 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr193
  %128 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx194, align 4
  %shr195 = lshr i32 %or.i488, 16
  %and196 = and i32 %shr195, 255
  %arrayidx197 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and196
  %130 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx197, align 4
  %sub198 = sub i32 %129, %131
  %shr199 = lshr i32 %or.i488, 8
  %and200 = and i32 %shr199, 255
  %arrayidx201 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and200
  %132 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx201, align 4
  %add202 = add i32 %sub198, %133
  %and203 = and i32 %or.i488, 255
  %arrayidx204 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and203
  %134 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx204, align 4
  %xor205 = xor i32 %135, %xor168
  %xor206 = xor i32 %xor205, %add202
  %arrayidx207 = getelementptr i32, ptr %c, i32 11
  %136 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx207, align 4
  %sub208 = sub i32 %137, %xor206
  %arrayidx209 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 11
  %138 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx209, align 1
  %conv210 = zext i8 %139 to i32
  %or.i489 = tail call i32 @llvm.fshl.i32(i32 %sub208, i32 %sub208, i32 %conv210) #7
  %shr212 = lshr i32 %or.i489, 24
  %arrayidx213 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr212
  %140 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx213, align 4
  %shr214 = lshr i32 %or.i489, 16
  %and215 = and i32 %shr214, 255
  %arrayidx216 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and215
  %142 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx216, align 4
  %add217 = add i32 %143, %141
  %shr218 = lshr i32 %or.i489, 8
  %and219 = and i32 %shr218, 255
  %arrayidx220 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and219
  %144 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx220, align 4
  %xor221 = xor i32 %add217, %145
  %and222 = and i32 %or.i489, 255
  %arrayidx223 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and222
  %146 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx223, align 4
  %sub224 = sub i32 %xor221, %147
  %xor225 = xor i32 %sub224, %xor187
  %rr = getelementptr inbounds %struct.cast5_ctx, ptr %c, i32 0, i32 2
  %148 = ptrtoint ptr %rr to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %rr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool.not = icmp eq i32 %149, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx226 = getelementptr i32, ptr %c, i32 12
  %150 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx226, align 4
  %add227 = add i32 %151, %xor225
  %arrayidx228 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 12
  %152 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx228, align 1
  %conv229 = zext i8 %153 to i32
  %or.i490 = tail call i32 @llvm.fshl.i32(i32 %add227, i32 %add227, i32 %conv229) #7
  %shr231 = lshr i32 %or.i490, 24
  %arrayidx232 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr231
  %154 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx232, align 4
  %shr233 = lshr i32 %or.i490, 16
  %and234 = and i32 %shr233, 255
  %arrayidx235 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and234
  %156 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx235, align 4
  %xor236 = xor i32 %157, %155
  %shr237 = lshr i32 %or.i490, 8
  %and238 = and i32 %shr237, 255
  %arrayidx239 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and238
  %158 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx239, align 4
  %sub240 = sub i32 %xor236, %159
  %and241 = and i32 %or.i490, 255
  %arrayidx242 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and241
  %160 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx242, align 4
  %add243 = add i32 %sub240, %161
  %xor244 = xor i32 %add243, %xor206
  %arrayidx245 = getelementptr i32, ptr %c, i32 13
  %162 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx245, align 4
  %xor246 = xor i32 %xor244, %163
  %arrayidx247 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 13
  %164 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx247, align 1
  %conv248 = zext i8 %165 to i32
  %or.i491 = tail call i32 @llvm.fshl.i32(i32 %xor246, i32 %xor246, i32 %conv248) #7
  %shr250 = lshr i32 %or.i491, 24
  %arrayidx251 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr250
  %166 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx251, align 4
  %shr252 = lshr i32 %or.i491, 16
  %and253 = and i32 %shr252, 255
  %arrayidx254 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and253
  %168 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx254, align 4
  %sub255 = sub i32 %167, %169
  %shr256 = lshr i32 %or.i491, 8
  %and257 = and i32 %shr256, 255
  %arrayidx258 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and257
  %170 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx258, align 4
  %add259 = add i32 %sub255, %171
  %and260 = and i32 %or.i491, 255
  %arrayidx261 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and260
  %172 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx261, align 4
  %xor262 = xor i32 %173, %xor225
  %xor263 = xor i32 %xor262, %add259
  %arrayidx264 = getelementptr i32, ptr %c, i32 14
  %174 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx264, align 4
  %sub265 = sub i32 %175, %xor263
  %arrayidx266 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 14
  %176 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx266, align 1
  %conv267 = zext i8 %177 to i32
  %or.i492 = tail call i32 @llvm.fshl.i32(i32 %sub265, i32 %sub265, i32 %conv267) #7
  %shr269 = lshr i32 %or.i492, 24
  %arrayidx270 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr269
  %178 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx270, align 4
  %shr271 = lshr i32 %or.i492, 16
  %and272 = and i32 %shr271, 255
  %arrayidx273 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and272
  %180 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx273, align 4
  %add274 = add i32 %181, %179
  %shr275 = lshr i32 %or.i492, 8
  %and276 = and i32 %shr275, 255
  %arrayidx277 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and276
  %182 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx277, align 4
  %xor278 = xor i32 %add274, %183
  %and279 = and i32 %or.i492, 255
  %arrayidx280 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and279
  %184 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx280, align 4
  %sub281 = sub i32 %xor278, %185
  %xor282 = xor i32 %sub281, %xor244
  %arrayidx283 = getelementptr i32, ptr %c, i32 15
  %186 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx283, align 4
  %add284 = add i32 %xor282, %187
  %arrayidx285 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 15
  %188 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx285, align 1
  %conv286 = zext i8 %189 to i32
  %or.i493 = tail call i32 @llvm.fshl.i32(i32 %add284, i32 %add284, i32 %conv286) #7
  %shr288 = lshr i32 %or.i493, 24
  %arrayidx289 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr288
  %190 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx289, align 4
  %shr290 = lshr i32 %or.i493, 16
  %and291 = and i32 %shr290, 255
  %arrayidx292 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and291
  %192 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx292, align 4
  %xor293 = xor i32 %193, %191
  %shr294 = lshr i32 %or.i493, 8
  %and295 = and i32 %shr294, 255
  %arrayidx296 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and295
  %194 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx296, align 4
  %sub297 = sub i32 %xor293, %195
  %and298 = and i32 %or.i493, 255
  %arrayidx299 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and298
  %196 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx299, align 4
  %add300 = add i32 %sub297, %197
  %xor301 = xor i32 %add300, %xor263
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %l.0 = phi i32 [ %xor206, %entry.if.end_crit_edge ], [ %xor282, %if.then ]
  %r.0 = phi i32 [ %xor225, %entry.if.end_crit_edge ], [ %xor301, %if.then ]
  %198 = ptrtoint ptr %outbuf to i32
  call void @__asan_storeN_noabort(i32 %198, i32 4)
  store i32 %r.0, ptr %outbuf, align 1
  %add.ptr302 = getelementptr i8, ptr %outbuf, i32 4
  %199 = ptrtoint ptr %add.ptr302 to i32
  call void @__asan_storeN_noabort(i32 %199, i32 4)
  store i32 %l.0, ptr %add.ptr302, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__cast5_decrypt(ptr noundef readonly %c, ptr nocapture noundef writeonly %outbuf, ptr nocapture noundef readonly %inbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inbuf to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %inbuf, align 1
  %add.ptr = getelementptr i8, ptr %inbuf, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %rr = getelementptr inbounds %struct.cast5_ctx, ptr %c, i32 0, i32 2
  %4 = ptrtoint ptr %rr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i32, ptr %c, i32 15
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %3
  %arrayidx5 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 15
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1
  %conv = zext i8 %9 to i32
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add, i32 %add, i32 %conv) #7
  %shr = lshr i32 %or.i, 24
  %arrayidx7 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7, align 4
  %shr8 = lshr i32 %or.i, 16
  %and = and i32 %shr8, 255
  %arrayidx9 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9, align 4
  %xor = xor i32 %13, %11
  %shr10 = lshr i32 %or.i, 8
  %and11 = and i32 %shr10, 255
  %arrayidx12 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and11
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx12, align 4
  %sub = sub i32 %xor, %15
  %and13 = and i32 %or.i, 255
  %arrayidx14 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and13
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 4
  %add15 = add i32 %sub, %17
  %xor16 = xor i32 %add15, %1
  %arrayidx17 = getelementptr i32, ptr %c, i32 14
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx17, align 4
  %sub18 = sub i32 %19, %xor16
  %arrayidx19 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 14
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %21 to i32
  %or.i479 = tail call i32 @llvm.fshl.i32(i32 %sub18, i32 %sub18, i32 %conv20) #7
  %shr22 = lshr i32 %or.i479, 24
  %arrayidx23 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr22
  %22 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx23, align 4
  %shr24 = lshr i32 %or.i479, 16
  %and25 = and i32 %shr24, 255
  %arrayidx26 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and25
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx26, align 4
  %add27 = add i32 %25, %23
  %shr28 = lshr i32 %or.i479, 8
  %and29 = and i32 %shr28, 255
  %arrayidx30 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and29
  %26 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx30, align 4
  %xor31 = xor i32 %add27, %27
  %and32 = and i32 %or.i479, 255
  %arrayidx33 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and32
  %28 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx33, align 4
  %sub34 = sub i32 %xor31, %29
  %xor35 = xor i32 %sub34, %3
  %arrayidx36 = getelementptr i32, ptr %c, i32 13
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx36, align 4
  %xor37 = xor i32 %xor35, %31
  %arrayidx38 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 13
  %32 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %33 to i32
  %or.i480 = tail call i32 @llvm.fshl.i32(i32 %xor37, i32 %xor37, i32 %conv39) #7
  %shr41 = lshr i32 %or.i480, 24
  %arrayidx42 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41
  %34 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx42, align 4
  %shr43 = lshr i32 %or.i480, 16
  %and44 = and i32 %shr43, 255
  %arrayidx45 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44
  %36 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx45, align 4
  %sub46 = sub i32 %35, %37
  %shr47 = lshr i32 %or.i480, 8
  %and48 = and i32 %shr47, 255
  %arrayidx49 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48
  %38 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx49, align 4
  %add50 = add i32 %sub46, %39
  %and51 = and i32 %or.i480, 255
  %arrayidx52 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51
  %40 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx52, align 4
  %xor53 = xor i32 %41, %xor16
  %xor54 = xor i32 %xor53, %add50
  %arrayidx55 = getelementptr i32, ptr %c, i32 12
  %42 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx55, align 4
  %add56 = add i32 %xor54, %43
  %arrayidx57 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 12
  %44 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %45 to i32
  %or.i481 = tail call i32 @llvm.fshl.i32(i32 %add56, i32 %add56, i32 %conv58) #7
  %shr60 = lshr i32 %or.i481, 24
  %arrayidx61 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr60
  %46 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx61, align 4
  %shr62 = lshr i32 %or.i481, 16
  %and63 = and i32 %shr62, 255
  %arrayidx64 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and63
  %48 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx64, align 4
  %xor65 = xor i32 %49, %47
  %shr66 = lshr i32 %or.i481, 8
  %and67 = and i32 %shr66, 255
  %arrayidx68 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and67
  %50 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx68, align 4
  %sub69 = sub i32 %xor65, %51
  %and70 = and i32 %or.i481, 255
  %arrayidx71 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and70
  %52 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx71, align 4
  %add72 = add i32 %sub69, %53
  %xor73 = xor i32 %add72, %xor35
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %l.0 = phi i32 [ %1, %entry.if.end_crit_edge ], [ %xor54, %if.then ]
  %r.0 = phi i32 [ %3, %entry.if.end_crit_edge ], [ %xor73, %if.then ]
  %Kr2 = getelementptr inbounds %struct.cast5_ctx, ptr %c, i32 0, i32 1
  %arrayidx74 = getelementptr i32, ptr %c, i32 11
  %54 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx74, align 4
  %sub75 = sub i32 %55, %r.0
  %arrayidx76 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 11
  %56 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %57 to i32
  %or.i482 = tail call i32 @llvm.fshl.i32(i32 %sub75, i32 %sub75, i32 %conv77) #7
  %shr79 = lshr i32 %or.i482, 24
  %arrayidx80 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr79
  %58 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx80, align 4
  %shr81 = lshr i32 %or.i482, 16
  %and82 = and i32 %shr81, 255
  %arrayidx83 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and82
  %60 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx83, align 4
  %add84 = add i32 %61, %59
  %shr85 = lshr i32 %or.i482, 8
  %and86 = and i32 %shr85, 255
  %arrayidx87 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and86
  %62 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx87, align 4
  %xor88 = xor i32 %add84, %63
  %and89 = and i32 %or.i482, 255
  %arrayidx90 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and89
  %64 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx90, align 4
  %sub91 = sub i32 %xor88, %65
  %xor92 = xor i32 %sub91, %l.0
  %arrayidx93 = getelementptr i32, ptr %c, i32 10
  %66 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx93, align 4
  %xor94 = xor i32 %xor92, %67
  %arrayidx95 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 10
  %68 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %69 to i32
  %or.i483 = tail call i32 @llvm.fshl.i32(i32 %xor94, i32 %xor94, i32 %conv96) #7
  %shr98 = lshr i32 %or.i483, 24
  %arrayidx99 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr98
  %70 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx99, align 4
  %shr100 = lshr i32 %or.i483, 16
  %and101 = and i32 %shr100, 255
  %arrayidx102 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and101
  %72 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx102, align 4
  %sub103 = sub i32 %71, %73
  %shr104 = lshr i32 %or.i483, 8
  %and105 = and i32 %shr104, 255
  %arrayidx106 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and105
  %74 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx106, align 4
  %add107 = add i32 %sub103, %75
  %and108 = and i32 %or.i483, 255
  %arrayidx109 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and108
  %76 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx109, align 4
  %xor110 = xor i32 %77, %r.0
  %xor111 = xor i32 %xor110, %add107
  %arrayidx112 = getelementptr i32, ptr %c, i32 9
  %78 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx112, align 4
  %add113 = add i32 %xor111, %79
  %arrayidx114 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 9
  %80 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %81 to i32
  %or.i484 = tail call i32 @llvm.fshl.i32(i32 %add113, i32 %add113, i32 %conv115) #7
  %shr117 = lshr i32 %or.i484, 24
  %arrayidx118 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr117
  %82 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx118, align 4
  %shr119 = lshr i32 %or.i484, 16
  %and120 = and i32 %shr119, 255
  %arrayidx121 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and120
  %84 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx121, align 4
  %xor122 = xor i32 %85, %83
  %shr123 = lshr i32 %or.i484, 8
  %and124 = and i32 %shr123, 255
  %arrayidx125 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and124
  %86 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx125, align 4
  %sub126 = sub i32 %xor122, %87
  %and127 = and i32 %or.i484, 255
  %arrayidx128 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and127
  %88 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx128, align 4
  %add129 = add i32 %sub126, %89
  %xor130 = xor i32 %add129, %xor92
  %arrayidx131 = getelementptr i32, ptr %c, i32 8
  %90 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx131, align 4
  %sub132 = sub i32 %91, %xor130
  %arrayidx133 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 8
  %92 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx133, align 1
  %conv134 = zext i8 %93 to i32
  %or.i485 = tail call i32 @llvm.fshl.i32(i32 %sub132, i32 %sub132, i32 %conv134) #7
  %shr136 = lshr i32 %or.i485, 24
  %arrayidx137 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr136
  %94 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx137, align 4
  %shr138 = lshr i32 %or.i485, 16
  %and139 = and i32 %shr138, 255
  %arrayidx140 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and139
  %96 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx140, align 4
  %add141 = add i32 %97, %95
  %shr142 = lshr i32 %or.i485, 8
  %and143 = and i32 %shr142, 255
  %arrayidx144 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and143
  %98 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx144, align 4
  %xor145 = xor i32 %add141, %99
  %and146 = and i32 %or.i485, 255
  %arrayidx147 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and146
  %100 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx147, align 4
  %sub148 = sub i32 %xor145, %101
  %xor149 = xor i32 %sub148, %xor111
  %arrayidx150 = getelementptr i32, ptr %c, i32 7
  %102 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx150, align 4
  %xor151 = xor i32 %xor149, %103
  %arrayidx152 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 7
  %104 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx152, align 1
  %conv153 = zext i8 %105 to i32
  %or.i486 = tail call i32 @llvm.fshl.i32(i32 %xor151, i32 %xor151, i32 %conv153) #7
  %shr155 = lshr i32 %or.i486, 24
  %arrayidx156 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr155
  %106 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx156, align 4
  %shr157 = lshr i32 %or.i486, 16
  %and158 = and i32 %shr157, 255
  %arrayidx159 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and158
  %108 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx159, align 4
  %sub160 = sub i32 %107, %109
  %shr161 = lshr i32 %or.i486, 8
  %and162 = and i32 %shr161, 255
  %arrayidx163 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and162
  %110 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx163, align 4
  %add164 = add i32 %sub160, %111
  %and165 = and i32 %or.i486, 255
  %arrayidx166 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and165
  %112 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx166, align 4
  %xor167 = xor i32 %113, %xor130
  %xor168 = xor i32 %xor167, %add164
  %arrayidx169 = getelementptr i32, ptr %c, i32 6
  %114 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx169, align 4
  %add170 = add i32 %xor168, %115
  %arrayidx171 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 6
  %116 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx171, align 1
  %conv172 = zext i8 %117 to i32
  %or.i487 = tail call i32 @llvm.fshl.i32(i32 %add170, i32 %add170, i32 %conv172) #7
  %shr174 = lshr i32 %or.i487, 24
  %arrayidx175 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr174
  %118 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx175, align 4
  %shr176 = lshr i32 %or.i487, 16
  %and177 = and i32 %shr176, 255
  %arrayidx178 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and177
  %120 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx178, align 4
  %xor179 = xor i32 %121, %119
  %shr180 = lshr i32 %or.i487, 8
  %and181 = and i32 %shr180, 255
  %arrayidx182 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and181
  %122 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx182, align 4
  %sub183 = sub i32 %xor179, %123
  %and184 = and i32 %or.i487, 255
  %arrayidx185 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and184
  %124 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx185, align 4
  %add186 = add i32 %sub183, %125
  %xor187 = xor i32 %add186, %xor149
  %arrayidx188 = getelementptr i32, ptr %c, i32 5
  %126 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx188, align 4
  %sub189 = sub i32 %127, %xor187
  %arrayidx190 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 5
  %128 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx190, align 1
  %conv191 = zext i8 %129 to i32
  %or.i488 = tail call i32 @llvm.fshl.i32(i32 %sub189, i32 %sub189, i32 %conv191) #7
  %shr193 = lshr i32 %or.i488, 24
  %arrayidx194 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr193
  %130 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx194, align 4
  %shr195 = lshr i32 %or.i488, 16
  %and196 = and i32 %shr195, 255
  %arrayidx197 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and196
  %132 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx197, align 4
  %add198 = add i32 %133, %131
  %shr199 = lshr i32 %or.i488, 8
  %and200 = and i32 %shr199, 255
  %arrayidx201 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and200
  %134 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx201, align 4
  %xor202 = xor i32 %add198, %135
  %and203 = and i32 %or.i488, 255
  %arrayidx204 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and203
  %136 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx204, align 4
  %sub205 = sub i32 %xor202, %137
  %xor206 = xor i32 %sub205, %xor168
  %arrayidx207 = getelementptr i32, ptr %c, i32 4
  %138 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx207, align 4
  %xor208 = xor i32 %xor206, %139
  %arrayidx209 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 4
  %140 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx209, align 1
  %conv210 = zext i8 %141 to i32
  %or.i489 = tail call i32 @llvm.fshl.i32(i32 %xor208, i32 %xor208, i32 %conv210) #7
  %shr212 = lshr i32 %or.i489, 24
  %arrayidx213 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr212
  %142 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx213, align 4
  %shr214 = lshr i32 %or.i489, 16
  %and215 = and i32 %shr214, 255
  %arrayidx216 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and215
  %144 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx216, align 4
  %sub217 = sub i32 %143, %145
  %shr218 = lshr i32 %or.i489, 8
  %and219 = and i32 %shr218, 255
  %arrayidx220 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and219
  %146 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx220, align 4
  %add221 = add i32 %sub217, %147
  %and222 = and i32 %or.i489, 255
  %arrayidx223 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and222
  %148 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx223, align 4
  %xor224 = xor i32 %149, %xor187
  %xor225 = xor i32 %xor224, %add221
  %arrayidx226 = getelementptr i32, ptr %c, i32 3
  %150 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx226, align 4
  %add227 = add i32 %xor225, %151
  %arrayidx228 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 3
  %152 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx228, align 1
  %conv229 = zext i8 %153 to i32
  %or.i490 = tail call i32 @llvm.fshl.i32(i32 %add227, i32 %add227, i32 %conv229) #7
  %shr231 = lshr i32 %or.i490, 24
  %arrayidx232 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr231
  %154 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx232, align 4
  %shr233 = lshr i32 %or.i490, 16
  %and234 = and i32 %shr233, 255
  %arrayidx235 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and234
  %156 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx235, align 4
  %xor236 = xor i32 %157, %155
  %shr237 = lshr i32 %or.i490, 8
  %and238 = and i32 %shr237, 255
  %arrayidx239 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and238
  %158 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx239, align 4
  %sub240 = sub i32 %xor236, %159
  %and241 = and i32 %or.i490, 255
  %arrayidx242 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and241
  %160 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx242, align 4
  %add243 = add i32 %sub240, %161
  %xor244 = xor i32 %add243, %xor206
  %arrayidx245 = getelementptr i32, ptr %c, i32 2
  %162 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx245, align 4
  %sub246 = sub i32 %163, %xor244
  %arrayidx247 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 2
  %164 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx247, align 1
  %conv248 = zext i8 %165 to i32
  %or.i491 = tail call i32 @llvm.fshl.i32(i32 %sub246, i32 %sub246, i32 %conv248) #7
  %shr250 = lshr i32 %or.i491, 24
  %arrayidx251 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr250
  %166 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx251, align 4
  %shr252 = lshr i32 %or.i491, 16
  %and253 = and i32 %shr252, 255
  %arrayidx254 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and253
  %168 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx254, align 4
  %add255 = add i32 %169, %167
  %shr256 = lshr i32 %or.i491, 8
  %and257 = and i32 %shr256, 255
  %arrayidx258 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and257
  %170 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx258, align 4
  %xor259 = xor i32 %add255, %171
  %and260 = and i32 %or.i491, 255
  %arrayidx261 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and260
  %172 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx261, align 4
  %sub262 = sub i32 %xor259, %173
  %xor263 = xor i32 %sub262, %xor225
  %arrayidx264 = getelementptr i32, ptr %c, i32 1
  %174 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx264, align 4
  %xor265 = xor i32 %xor263, %175
  %arrayidx266 = getelementptr %struct.cast5_ctx, ptr %c, i32 0, i32 1, i32 1
  %176 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx266, align 1
  %conv267 = zext i8 %177 to i32
  %or.i492 = tail call i32 @llvm.fshl.i32(i32 %xor265, i32 %xor265, i32 %conv267) #7
  %shr269 = lshr i32 %or.i492, 24
  %arrayidx270 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr269
  %178 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx270, align 4
  %shr271 = lshr i32 %or.i492, 16
  %and272 = and i32 %shr271, 255
  %arrayidx273 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and272
  %180 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx273, align 4
  %sub274 = sub i32 %179, %181
  %shr275 = lshr i32 %or.i492, 8
  %and276 = and i32 %shr275, 255
  %arrayidx277 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and276
  %182 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx277, align 4
  %add278 = add i32 %sub274, %183
  %and279 = and i32 %or.i492, 255
  %arrayidx280 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and279
  %184 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx280, align 4
  %xor281 = xor i32 %185, %xor244
  %xor282 = xor i32 %xor281, %add278
  %186 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %c, align 4
  %add284 = add i32 %xor282, %187
  %188 = ptrtoint ptr %Kr2 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %Kr2, align 1
  %conv286 = zext i8 %189 to i32
  %or.i493 = tail call i32 @llvm.fshl.i32(i32 %add284, i32 %add284, i32 %conv286) #7
  %shr288 = lshr i32 %or.i493, 24
  %arrayidx289 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr288
  %190 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx289, align 4
  %shr290 = lshr i32 %or.i493, 16
  %and291 = and i32 %shr290, 255
  %arrayidx292 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and291
  %192 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx292, align 4
  %xor293 = xor i32 %193, %191
  %shr294 = lshr i32 %or.i493, 8
  %and295 = and i32 %shr294, 255
  %arrayidx296 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and295
  %194 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx296, align 4
  %sub297 = sub i32 %xor293, %195
  %and298 = and i32 %or.i493, 255
  %arrayidx299 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and298
  %196 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx299, align 4
  %add300 = add i32 %sub297, %197
  %xor301 = xor i32 %add300, %xor263
  %198 = ptrtoint ptr %outbuf to i32
  call void @__asan_storeN_noabort(i32 %198, i32 4)
  store i32 %xor301, ptr %outbuf, align 1
  %add.ptr302 = getelementptr i8, ptr %outbuf, i32 4
  %199 = ptrtoint ptr %add.ptr302 to i32
  call void @__asan_storeN_noabort(i32 %199, i32 4)
  store i32 %xor282, ptr %add.ptr302, align 1
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cast5_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %key, i32 noundef %key_len) #2 align 64 {
entry:
  %x = alloca [4 x i32], align 4
  %z = alloca [4 x i32], align 4
  %k = alloca [16 x i32], align 4
  %p_key = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %x) #7
  %0 = getelementptr inbounds [4 x i32], ptr %x, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %x, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %x, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %z) #7
  %3 = call ptr @memset(ptr %z, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %k) #7
  %4 = call ptr @memset(ptr %k, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p_key)
  %p_key.4.p_key.4.p_key.4..sroa_idx = getelementptr inbounds i8, ptr %p_key, i32 4
  %p_key.8.p_key.8.p_key.8..sroa_idx = getelementptr inbounds i8, ptr %p_key, i32 8
  %p_key.12.p_key.12.p_key.12..sroa_idx = getelementptr inbounds i8, ptr %p_key, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %key_len)
  %cmp = icmp ult i32 %key_len, 11
  %cond = zext i1 %cmp to i32
  %rr = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 64
  %5 = call ptr @memset(ptr %p_key, i32 255, i32 16)
  %6 = ptrtoint ptr %rr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %rr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %key_len)
  %7 = icmp ugt i32 %key_len, 15
  %8 = sub i32 16, %key_len
  %9 = select i1 %7, i32 0, i32 %8
  %10 = getelementptr i8, ptr %p_key, i32 %key_len
  %11 = call ptr @memset(ptr %10, i32 0, i32 %9)
  %12 = call ptr @memcpy(ptr %p_key, ptr %key, i32 %key_len)
  %13 = ptrtoint ptr %p_key to i32
  call void @__asan_load4_noabort(i32 %13)
  %p_key.0.p_key.0.p_key.0. = load i32, ptr %p_key, align 4
  %14 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %p_key.0.p_key.0.p_key.0., ptr %x, align 4
  %15 = ptrtoint ptr %p_key.4.p_key.4.p_key.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %p_key.4.p_key.4.p_key.4. = load i32, ptr %p_key.4.p_key.4.p_key.4..sroa_idx, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %p_key.4.p_key.4.p_key.4., ptr %0, align 4
  %17 = ptrtoint ptr %p_key.8.p_key.8.p_key.8..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %p_key.8.p_key.8.p_key.8. = load i32, ptr %p_key.8.p_key.8.p_key.8..sroa_idx, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %p_key.8.p_key.8.p_key.8., ptr %1, align 4
  %19 = ptrtoint ptr %p_key.12.p_key.12.p_key.12..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %p_key.12.p_key.12.p_key.12. = load i32, ptr %p_key.12.p_key.12.p_key.12..sroa_idx, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %p_key.12.p_key.12.p_key.12., ptr %2, align 4
  call fastcc void @key_schedule(ptr noundef nonnull %x, ptr noundef nonnull %z, ptr noundef nonnull %k)
  %21 = call ptr @memcpy(ptr %__crt_ctx.i, ptr %k, i32 64)
  call fastcc void @key_schedule(ptr noundef nonnull %x, ptr noundef nonnull %z, ptr noundef nonnull %k)
  %22 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %k, align 4
  %24 = trunc i32 %23 to i8
  %conv = and i8 %24, 31
  %arrayidx22 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 48
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %arrayidx22, align 1
  %arrayidx21.1 = getelementptr inbounds [16 x i32], ptr %k, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx21.1, align 4
  %28 = trunc i32 %27 to i8
  %conv.1 = and i8 %28, 31
  %arrayidx22.1 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 49
  %29 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.1, ptr %arrayidx22.1, align 1
  %arrayidx21.2 = getelementptr inbounds [16 x i32], ptr %k, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx21.2, align 4
  %32 = trunc i32 %31 to i8
  %conv.2 = and i8 %32, 31
  %arrayidx22.2 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 50
  %33 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.2, ptr %arrayidx22.2, align 1
  %arrayidx21.3 = getelementptr inbounds [16 x i32], ptr %k, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx21.3, align 4
  %36 = trunc i32 %35 to i8
  %conv.3 = and i8 %36, 31
  %arrayidx22.3 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 51
  %37 = ptrtoint ptr %arrayidx22.3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.3, ptr %arrayidx22.3, align 1
  %arrayidx21.4 = getelementptr inbounds [16 x i32], ptr %k, i32 0, i32 4
  %38 = ptrtoint ptr %arrayidx21.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx21.4, align 4
  %40 = trunc i32 %39 to i8
  %conv.4 = and i8 %40, 31
  %arrayidx22.4 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 52
  %41 = ptrtoint ptr %arrayidx22.4 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.4, ptr %arrayidx22.4, align 1
  %arrayidx21.5 = getelementptr inbounds [16 x i32], ptr %k, i32 0, i32 5
  %42 = ptrtoint ptr %arrayidx21.5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx21.5, align 4
  %44 = trunc i32 %43 to i8
  %conv.5 = and i8 %44, 31
  %arrayidx22.5 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 53
  %45 = ptrtoint ptr %arrayidx22.5 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.5, ptr %arrayidx22.5, align 1
  %arrayidx21.6 = getelementptr inbounds [16 x i32], ptr %k, i32 0, i32 6
  %46 = ptrtoint ptr %arrayidx21.6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx21.6, align 4
  %48 = trunc i32 %47 to i8
  %conv.6 = and i8 %48, 31
  %arrayidx22.6 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 54
  %49 = ptrtoint ptr %arrayidx22.6 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv.6, ptr %arrayidx22.6, align 1
  %arrayidx21.7 = getelementptr inbounds [16 x i32], ptr %k, i32 0, i32 7
  %50 = ptrtoint ptr %arrayidx21.7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx21.7, align 4
  %52 = trunc i32 %51 to i8
  %conv.7 = and i8 %52, 31
  %arrayidx22.7 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 55
  %53 = ptrtoint ptr %arrayidx22.7 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv.7, ptr %arrayidx22.7, align 1
  %arrayidx21.8 = getelementptr inbounds [16 x i32], ptr %k, i32 0, i32 8
  %54 = ptrtoint ptr %arrayidx21.8 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx21.8, align 4
  %56 = trunc i32 %55 to i8
  %conv.8 = and i8 %56, 31
  %arrayidx22.8 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 56
  %57 = ptrtoint ptr %arrayidx22.8 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv.8, ptr %arrayidx22.8, align 1
  %arrayidx21.9 = getelementptr inbounds [16 x i32], ptr %k, i32 0, i32 9
  %58 = ptrtoint ptr %arrayidx21.9 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx21.9, align 4
  %60 = trunc i32 %59 to i8
  %conv.9 = and i8 %60, 31
  %arrayidx22.9 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 57
  %61 = ptrtoint ptr %arrayidx22.9 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv.9, ptr %arrayidx22.9, align 1
  %arrayidx21.10 = getelementptr inbounds [16 x i32], ptr %k, i32 0, i32 10
  %62 = ptrtoint ptr %arrayidx21.10 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx21.10, align 4
  %64 = trunc i32 %63 to i8
  %conv.10 = and i8 %64, 31
  %arrayidx22.10 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 58
  %65 = ptrtoint ptr %arrayidx22.10 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv.10, ptr %arrayidx22.10, align 1
  %arrayidx21.11 = getelementptr inbounds [16 x i32], ptr %k, i32 0, i32 11
  %66 = ptrtoint ptr %arrayidx21.11 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx21.11, align 4
  %68 = trunc i32 %67 to i8
  %conv.11 = and i8 %68, 31
  %arrayidx22.11 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 59
  %69 = ptrtoint ptr %arrayidx22.11 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv.11, ptr %arrayidx22.11, align 1
  %arrayidx21.12 = getelementptr inbounds [16 x i32], ptr %k, i32 0, i32 12
  %70 = ptrtoint ptr %arrayidx21.12 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx21.12, align 4
  %72 = trunc i32 %71 to i8
  %conv.12 = and i8 %72, 31
  %arrayidx22.12 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 60
  %73 = ptrtoint ptr %arrayidx22.12 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv.12, ptr %arrayidx22.12, align 1
  %arrayidx21.13 = getelementptr inbounds [16 x i32], ptr %k, i32 0, i32 13
  %74 = ptrtoint ptr %arrayidx21.13 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx21.13, align 4
  %76 = trunc i32 %75 to i8
  %conv.13 = and i8 %76, 31
  %arrayidx22.13 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 61
  %77 = ptrtoint ptr %arrayidx22.13 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv.13, ptr %arrayidx22.13, align 1
  %arrayidx21.14 = getelementptr inbounds [16 x i32], ptr %k, i32 0, i32 14
  %78 = ptrtoint ptr %arrayidx21.14 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx21.14, align 4
  %80 = trunc i32 %79 to i8
  %conv.14 = and i8 %80, 31
  %arrayidx22.14 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 62
  %81 = ptrtoint ptr %arrayidx22.14 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv.14, ptr %arrayidx22.14, align 1
  %arrayidx21.15 = getelementptr inbounds [16 x i32], ptr %k, i32 0, i32 15
  %82 = ptrtoint ptr %arrayidx21.15 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx21.15, align 4
  %84 = trunc i32 %83 to i8
  %conv.15 = and i8 %84, 31
  %arrayidx22.15 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 63
  %85 = ptrtoint ptr %arrayidx22.15 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv.15, ptr %arrayidx22.15, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p_key)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %k) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %z) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %x) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @key_schedule(ptr nocapture noundef %x, ptr nocapture noundef %z, ptr nocapture noundef writeonly %k) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %x, align 4
  %arrayidx1 = getelementptr i32, ptr %x, i32 3
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %shr = lshr i32 %3, 16
  %and = and i32 %shr, 255
  %arrayidx2 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %xor = xor i32 %5, %1
  %and5 = and i32 %3, 255
  %arrayidx6 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and5
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %xor7 = xor i32 %xor, %7
  %shr9 = lshr i32 %3, 24
  %arrayidx11 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %shr9
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx11, align 4
  %xor12 = xor i32 %xor7, %9
  %shr14 = lshr i32 %3, 8
  %and15 = and i32 %shr14, 255
  %arrayidx16 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and15
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx16, align 4
  %xor17 = xor i32 %xor12, %11
  %arrayidx18 = getelementptr i32, ptr %x, i32 2
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx18, align 4
  %shr19 = lshr i32 %13, 24
  %arrayidx21 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %shr19
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx21, align 4
  %xor22 = xor i32 %xor17, %15
  %16 = ptrtoint ptr %z to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %xor22, ptr %z, align 4
  %17 = load i32, ptr %arrayidx18, align 4
  %shr26 = lshr i32 %xor22, 24
  %arrayidx28 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %shr26
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx28, align 4
  %xor29 = xor i32 %19, %17
  %shr31 = lshr i32 %xor22, 8
  %and32 = and i32 %shr31, 255
  %arrayidx33 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and32
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx33, align 4
  %xor34 = xor i32 %xor29, %21
  %shr36 = lshr i32 %xor22, 16
  %and37 = and i32 %shr36, 255
  %arrayidx38 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and37
  %22 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx38, align 4
  %xor39 = xor i32 %xor34, %23
  %and42 = and i32 %xor22, 255
  %arrayidx43 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and42
  %24 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx43, align 4
  %xor44 = xor i32 %xor39, %25
  %shr46 = lshr i32 %17, 8
  %and47 = and i32 %shr46, 255
  %arrayidx48 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and47
  %26 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx48, align 4
  %xor49 = xor i32 %xor44, %27
  %arrayidx50 = getelementptr i32, ptr %z, i32 1
  %28 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %xor49, ptr %arrayidx50, align 4
  %29 = load i32, ptr %arrayidx1, align 4
  %and54 = and i32 %xor49, 255
  %arrayidx55 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and54
  %30 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx55, align 4
  %xor56 = xor i32 %31, %29
  %shr58 = lshr i32 %xor49, 8
  %and59 = and i32 %shr58, 255
  %arrayidx60 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and59
  %32 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx60, align 4
  %xor61 = xor i32 %xor56, %33
  %shr63 = lshr i32 %xor49, 16
  %and64 = and i32 %shr63, 255
  %arrayidx65 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and64
  %34 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx65, align 4
  %xor66 = xor i32 %xor61, %35
  %shr68 = lshr i32 %xor49, 24
  %arrayidx70 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %shr68
  %36 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx70, align 4
  %xor71 = xor i32 %xor66, %37
  %38 = load i32, ptr %arrayidx18, align 4
  %shr73 = lshr i32 %38, 16
  %and74 = and i32 %shr73, 255
  %arrayidx75 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and74
  %39 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx75, align 4
  %xor76 = xor i32 %xor71, %40
  %arrayidx77 = getelementptr i32, ptr %z, i32 2
  %41 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %xor76, ptr %arrayidx77, align 4
  %arrayidx78 = getelementptr i32, ptr %x, i32 1
  %42 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx78, align 4
  %shr80 = lshr i32 %xor76, 8
  %and81 = and i32 %shr80, 255
  %arrayidx82 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and81
  %44 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx82, align 4
  %xor83 = xor i32 %45, %43
  %shr85 = lshr i32 %xor76, 16
  %and86 = and i32 %shr85, 255
  %arrayidx87 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and86
  %46 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx87, align 4
  %xor88 = xor i32 %xor83, %47
  %and91 = and i32 %xor76, 255
  %arrayidx92 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and91
  %48 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx92, align 4
  %xor93 = xor i32 %xor88, %49
  %shr95 = lshr i32 %xor76, 24
  %arrayidx97 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %shr95
  %50 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx97, align 4
  %xor98 = xor i32 %xor93, %51
  %52 = load i32, ptr %arrayidx18, align 4
  %and101 = and i32 %52, 255
  %arrayidx102 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and101
  %53 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx102, align 4
  %xor103 = xor i32 %xor98, %54
  %arrayidx104 = getelementptr i32, ptr %z, i32 3
  %55 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %xor103, ptr %arrayidx104, align 4
  %arrayidx108 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %shr95
  %56 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx108, align 4
  %xor113 = xor i32 %57, %47
  %arrayidx117 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and54
  %58 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx117, align 4
  %xor118 = xor i32 %xor113, %59
  %arrayidx122 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and59
  %60 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx122, align 4
  %xor123 = xor i32 %xor118, %61
  %arrayidx127 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and32
  %62 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx127, align 4
  %xor128 = xor i32 %xor123, %63
  %64 = ptrtoint ptr %k to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %xor128, ptr %k, align 4
  %65 = load i32, ptr %arrayidx77, align 4
  %shr131 = lshr i32 %65, 8
  %and132 = and i32 %shr131, 255
  %arrayidx133 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and132
  %66 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx133, align 4
  %and136 = and i32 %65, 255
  %arrayidx137 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and136
  %68 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx137, align 4
  %xor138 = xor i32 %69, %67
  %70 = load i32, ptr %arrayidx50, align 4
  %shr140 = lshr i32 %70, 16
  %and141 = and i32 %shr140, 255
  %arrayidx142 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and141
  %71 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx142, align 4
  %xor143 = xor i32 %xor138, %72
  %shr145 = lshr i32 %70, 24
  %arrayidx147 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %shr145
  %73 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx147, align 4
  %xor148 = xor i32 %xor143, %74
  %shr150 = lshr i32 %70, 8
  %and151 = and i32 %shr150, 255
  %arrayidx152 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and151
  %75 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx152, align 4
  %xor153 = xor i32 %xor148, %76
  %arrayidx154 = getelementptr i32, ptr %k, i32 1
  %77 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %xor153, ptr %arrayidx154, align 4
  %78 = load i32, ptr %arrayidx104, align 4
  %shr156 = lshr i32 %78, 24
  %arrayidx158 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %shr156
  %79 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx158, align 4
  %shr160 = lshr i32 %78, 16
  %and161 = and i32 %shr160, 255
  %arrayidx162 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and161
  %81 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx162, align 4
  %xor163 = xor i32 %82, %80
  %83 = load i32, ptr %z, align 4
  %and166 = and i32 %83, 255
  %arrayidx167 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and166
  %84 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx167, align 4
  %xor168 = xor i32 %xor163, %85
  %shr170 = lshr i32 %83, 8
  %and171 = and i32 %shr170, 255
  %arrayidx172 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and171
  %86 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx172, align 4
  %xor173 = xor i32 %xor168, %87
  %88 = load i32, ptr %arrayidx77, align 4
  %shr175 = lshr i32 %88, 16
  %and176 = and i32 %shr175, 255
  %arrayidx177 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and176
  %89 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx177, align 4
  %xor178 = xor i32 %xor173, %90
  %arrayidx179 = getelementptr i32, ptr %k, i32 2
  %91 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %xor178, ptr %arrayidx179, align 4
  %92 = load i32, ptr %arrayidx104, align 4
  %shr181 = lshr i32 %92, 8
  %and182 = and i32 %shr181, 255
  %arrayidx183 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and182
  %93 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx183, align 4
  %and186 = and i32 %92, 255
  %arrayidx187 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and186
  %95 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx187, align 4
  %xor188 = xor i32 %96, %94
  %97 = load i32, ptr %z, align 4
  %shr190 = lshr i32 %97, 16
  %and191 = and i32 %shr190, 255
  %arrayidx192 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and191
  %98 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx192, align 4
  %xor193 = xor i32 %xor188, %99
  %shr195 = lshr i32 %97, 24
  %arrayidx197 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %shr195
  %100 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx197, align 4
  %xor198 = xor i32 %xor193, %101
  %shr200 = lshr i32 %92, 24
  %arrayidx202 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %shr200
  %102 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx202, align 4
  %xor203 = xor i32 %xor198, %103
  %arrayidx204 = getelementptr i32, ptr %k, i32 3
  %104 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %xor203, ptr %arrayidx204, align 4
  %105 = load i32, ptr %arrayidx77, align 4
  %106 = load i32, ptr %arrayidx50, align 4
  %shr207 = lshr i32 %106, 16
  %and208 = and i32 %shr207, 255
  %arrayidx209 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and208
  %107 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx209, align 4
  %xor210 = xor i32 %108, %105
  %and213 = and i32 %106, 255
  %arrayidx214 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and213
  %109 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx214, align 4
  %xor215 = xor i32 %xor210, %110
  %shr217 = lshr i32 %106, 24
  %arrayidx219 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %shr217
  %111 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx219, align 4
  %xor220 = xor i32 %xor215, %112
  %shr222 = lshr i32 %106, 8
  %and223 = and i32 %shr222, 255
  %arrayidx224 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and223
  %113 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx224, align 4
  %xor225 = xor i32 %xor220, %114
  %115 = load i32, ptr %z, align 4
  %shr227 = lshr i32 %115, 24
  %arrayidx229 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %shr227
  %116 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx229, align 4
  %xor230 = xor i32 %xor225, %117
  store i32 %xor230, ptr %x, align 4
  %118 = load i32, ptr %z, align 4
  %shr234 = lshr i32 %xor230, 24
  %arrayidx236 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %shr234
  %119 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx236, align 4
  %xor237 = xor i32 %120, %118
  %shr239 = lshr i32 %xor230, 8
  %and240 = and i32 %shr239, 255
  %arrayidx241 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and240
  %121 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx241, align 4
  %xor242 = xor i32 %xor237, %122
  %shr244 = lshr i32 %xor230, 16
  %and245 = and i32 %shr244, 255
  %arrayidx246 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and245
  %123 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx246, align 4
  %xor247 = xor i32 %xor242, %124
  %and250 = and i32 %xor230, 255
  %arrayidx251 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and250
  %125 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx251, align 4
  %xor252 = xor i32 %xor247, %126
  %shr254 = lshr i32 %118, 8
  %and255 = and i32 %shr254, 255
  %arrayidx256 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and255
  %127 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx256, align 4
  %xor257 = xor i32 %xor252, %128
  store i32 %xor257, ptr %arrayidx78, align 4
  %129 = load i32, ptr %arrayidx50, align 4
  %and262 = and i32 %xor257, 255
  %arrayidx263 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and262
  %130 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx263, align 4
  %xor264 = xor i32 %131, %129
  %shr266 = lshr i32 %xor257, 8
  %and267 = and i32 %shr266, 255
  %arrayidx268 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and267
  %132 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx268, align 4
  %xor269 = xor i32 %xor264, %133
  %shr271 = lshr i32 %xor257, 16
  %and272 = and i32 %shr271, 255
  %arrayidx273 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and272
  %134 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx273, align 4
  %xor274 = xor i32 %xor269, %135
  %shr276 = lshr i32 %xor257, 24
  %arrayidx278 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %shr276
  %136 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx278, align 4
  %xor279 = xor i32 %xor274, %137
  %138 = load i32, ptr %z, align 4
  %shr281 = lshr i32 %138, 16
  %and282 = and i32 %shr281, 255
  %arrayidx283 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and282
  %139 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx283, align 4
  %xor284 = xor i32 %xor279, %140
  store i32 %xor284, ptr %arrayidx18, align 4
  %141 = load i32, ptr %arrayidx104, align 4
  %shr288 = lshr i32 %xor284, 8
  %and289 = and i32 %shr288, 255
  %arrayidx290 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and289
  %142 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx290, align 4
  %xor291 = xor i32 %143, %141
  %shr293 = lshr i32 %xor284, 16
  %and294 = and i32 %shr293, 255
  %arrayidx295 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and294
  %144 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx295, align 4
  %xor296 = xor i32 %xor291, %145
  %and299 = and i32 %xor284, 255
  %arrayidx300 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and299
  %146 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx300, align 4
  %xor301 = xor i32 %xor296, %147
  %shr303 = lshr i32 %xor284, 24
  %arrayidx305 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %shr303
  %148 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx305, align 4
  %xor306 = xor i32 %xor301, %149
  %150 = load i32, ptr %z, align 4
  %and309 = and i32 %150, 255
  %arrayidx310 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and309
  %151 = ptrtoint ptr %arrayidx310 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx310, align 4
  %xor311 = xor i32 %xor306, %152
  store i32 %xor311, ptr %arrayidx1, align 4
  %arrayidx316 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and250
  %153 = ptrtoint ptr %arrayidx316 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx316, align 4
  %xor321 = xor i32 %154, %122
  %shr323 = lshr i32 %xor311, 24
  %arrayidx325 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %shr323
  %155 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx325, align 4
  %xor326 = xor i32 %xor321, %156
  %shr328 = lshr i32 %xor311, 16
  %and329 = and i32 %shr328, 255
  %arrayidx330 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and329
  %157 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx330, align 4
  %xor331 = xor i32 %xor326, %158
  %arrayidx335 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %shr303
  %159 = ptrtoint ptr %arrayidx335 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx335, align 4
  %xor336 = xor i32 %xor331, %160
  %arrayidx337 = getelementptr i32, ptr %k, i32 4
  %161 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %xor336, ptr %arrayidx337, align 4
  %162 = load i32, ptr %x, align 4
  %shr339 = lshr i32 %162, 16
  %and340 = and i32 %shr339, 255
  %arrayidx341 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and340
  %163 = ptrtoint ptr %arrayidx341 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx341, align 4
  %shr343 = lshr i32 %162, 24
  %arrayidx345 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %shr343
  %165 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx345, align 4
  %xor346 = xor i32 %166, %164
  %167 = load i32, ptr %arrayidx1, align 4
  %shr348 = lshr i32 %167, 8
  %and349 = and i32 %shr348, 255
  %arrayidx350 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and349
  %168 = ptrtoint ptr %arrayidx350 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx350, align 4
  %xor351 = xor i32 %xor346, %169
  %and354 = and i32 %167, 255
  %arrayidx355 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and354
  %170 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx355, align 4
  %xor356 = xor i32 %xor351, %171
  %shr358 = lshr i32 %167, 16
  %and359 = and i32 %shr358, 255
  %arrayidx360 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and359
  %172 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx360, align 4
  %xor361 = xor i32 %xor356, %173
  %arrayidx362 = getelementptr i32, ptr %k, i32 5
  %174 = ptrtoint ptr %arrayidx362 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %xor361, ptr %arrayidx362, align 4
  %175 = load i32, ptr %arrayidx78, align 4
  %and365 = and i32 %175, 255
  %arrayidx366 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and365
  %176 = ptrtoint ptr %arrayidx366 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx366, align 4
  %shr368 = lshr i32 %175, 8
  %and369 = and i32 %shr368, 255
  %arrayidx370 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and369
  %178 = ptrtoint ptr %arrayidx370 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx370, align 4
  %xor371 = xor i32 %179, %177
  %180 = load i32, ptr %arrayidx18, align 4
  %shr373 = lshr i32 %180, 24
  %arrayidx375 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %shr373
  %181 = ptrtoint ptr %arrayidx375 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx375, align 4
  %xor376 = xor i32 %xor371, %182
  %shr378 = lshr i32 %180, 16
  %and379 = and i32 %shr378, 255
  %arrayidx380 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and379
  %183 = ptrtoint ptr %arrayidx380 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx380, align 4
  %xor381 = xor i32 %xor376, %184
  %185 = load i32, ptr %x, align 4
  %and384 = and i32 %185, 255
  %arrayidx385 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and384
  %186 = ptrtoint ptr %arrayidx385 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx385, align 4
  %xor386 = xor i32 %xor381, %187
  %arrayidx387 = getelementptr i32, ptr %k, i32 6
  %188 = ptrtoint ptr %arrayidx387 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %xor386, ptr %arrayidx387, align 4
  %189 = load i32, ptr %arrayidx78, align 4
  %shr389 = lshr i32 %189, 16
  %and390 = and i32 %shr389, 255
  %arrayidx391 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and390
  %190 = ptrtoint ptr %arrayidx391 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx391, align 4
  %shr393 = lshr i32 %189, 24
  %arrayidx395 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %shr393
  %192 = ptrtoint ptr %arrayidx395 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx395, align 4
  %xor396 = xor i32 %193, %191
  %194 = load i32, ptr %arrayidx18, align 4
  %shr398 = lshr i32 %194, 8
  %and399 = and i32 %shr398, 255
  %arrayidx400 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and399
  %195 = ptrtoint ptr %arrayidx400 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx400, align 4
  %xor401 = xor i32 %xor396, %196
  %and404 = and i32 %194, 255
  %arrayidx405 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and404
  %197 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx405, align 4
  %xor406 = xor i32 %xor401, %198
  %and409 = and i32 %189, 255
  %arrayidx410 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and409
  %199 = ptrtoint ptr %arrayidx410 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx410, align 4
  %xor411 = xor i32 %xor406, %200
  %arrayidx412 = getelementptr i32, ptr %k, i32 7
  %201 = ptrtoint ptr %arrayidx412 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %xor411, ptr %arrayidx412, align 4
  %202 = load i32, ptr %x, align 4
  %203 = load i32, ptr %arrayidx1, align 4
  %shr415 = lshr i32 %203, 16
  %and416 = and i32 %shr415, 255
  %arrayidx417 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and416
  %204 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx417, align 4
  %xor418 = xor i32 %205, %202
  %and421 = and i32 %203, 255
  %arrayidx422 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and421
  %206 = ptrtoint ptr %arrayidx422 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx422, align 4
  %xor423 = xor i32 %xor418, %207
  %shr425 = lshr i32 %203, 24
  %arrayidx427 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %shr425
  %208 = ptrtoint ptr %arrayidx427 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx427, align 4
  %xor428 = xor i32 %xor423, %209
  %shr430 = lshr i32 %203, 8
  %and431 = and i32 %shr430, 255
  %arrayidx432 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and431
  %210 = ptrtoint ptr %arrayidx432 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx432, align 4
  %xor433 = xor i32 %xor428, %211
  %212 = load i32, ptr %arrayidx18, align 4
  %shr435 = lshr i32 %212, 24
  %arrayidx437 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %shr435
  %213 = ptrtoint ptr %arrayidx437 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx437, align 4
  %xor438 = xor i32 %xor433, %214
  store i32 %xor438, ptr %z, align 4
  %215 = load i32, ptr %arrayidx18, align 4
  %shr442 = lshr i32 %xor438, 24
  %arrayidx444 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %shr442
  %216 = ptrtoint ptr %arrayidx444 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx444, align 4
  %xor445 = xor i32 %217, %215
  %shr447 = lshr i32 %xor438, 8
  %and448 = and i32 %shr447, 255
  %arrayidx449 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and448
  %218 = ptrtoint ptr %arrayidx449 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx449, align 4
  %xor450 = xor i32 %xor445, %219
  %shr452 = lshr i32 %xor438, 16
  %and453 = and i32 %shr452, 255
  %arrayidx454 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and453
  %220 = ptrtoint ptr %arrayidx454 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx454, align 4
  %xor455 = xor i32 %xor450, %221
  %and458 = and i32 %xor438, 255
  %arrayidx459 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and458
  %222 = ptrtoint ptr %arrayidx459 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx459, align 4
  %xor460 = xor i32 %xor455, %223
  %shr462 = lshr i32 %215, 8
  %and463 = and i32 %shr462, 255
  %arrayidx464 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and463
  %224 = ptrtoint ptr %arrayidx464 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx464, align 4
  %xor465 = xor i32 %xor460, %225
  store i32 %xor465, ptr %arrayidx50, align 4
  %226 = load i32, ptr %arrayidx1, align 4
  %and470 = and i32 %xor465, 255
  %arrayidx471 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and470
  %227 = ptrtoint ptr %arrayidx471 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx471, align 4
  %xor472 = xor i32 %228, %226
  %shr474 = lshr i32 %xor465, 8
  %and475 = and i32 %shr474, 255
  %arrayidx476 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and475
  %229 = ptrtoint ptr %arrayidx476 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx476, align 4
  %xor477 = xor i32 %xor472, %230
  %shr479 = lshr i32 %xor465, 16
  %and480 = and i32 %shr479, 255
  %arrayidx481 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and480
  %231 = ptrtoint ptr %arrayidx481 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx481, align 4
  %xor482 = xor i32 %xor477, %232
  %shr484 = lshr i32 %xor465, 24
  %arrayidx486 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %shr484
  %233 = ptrtoint ptr %arrayidx486 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx486, align 4
  %xor487 = xor i32 %xor482, %234
  %235 = load i32, ptr %arrayidx18, align 4
  %shr489 = lshr i32 %235, 16
  %and490 = and i32 %shr489, 255
  %arrayidx491 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and490
  %236 = ptrtoint ptr %arrayidx491 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx491, align 4
  %xor492 = xor i32 %xor487, %237
  store i32 %xor492, ptr %arrayidx77, align 4
  %238 = load i32, ptr %arrayidx78, align 4
  %shr496 = lshr i32 %xor492, 8
  %and497 = and i32 %shr496, 255
  %arrayidx498 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and497
  %239 = ptrtoint ptr %arrayidx498 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx498, align 4
  %xor499 = xor i32 %240, %238
  %shr501 = lshr i32 %xor492, 16
  %and502 = and i32 %shr501, 255
  %arrayidx503 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and502
  %241 = ptrtoint ptr %arrayidx503 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx503, align 4
  %xor504 = xor i32 %xor499, %242
  %and507 = and i32 %xor492, 255
  %arrayidx508 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and507
  %243 = ptrtoint ptr %arrayidx508 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx508, align 4
  %xor509 = xor i32 %xor504, %244
  %shr511 = lshr i32 %xor492, 24
  %arrayidx513 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %shr511
  %245 = ptrtoint ptr %arrayidx513 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx513, align 4
  %xor514 = xor i32 %xor509, %246
  %247 = load i32, ptr %arrayidx18, align 4
  %and517 = and i32 %247, 255
  %arrayidx518 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and517
  %248 = ptrtoint ptr %arrayidx518 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx518, align 4
  %xor519 = xor i32 %xor514, %249
  store i32 %xor519, ptr %arrayidx104, align 4
  %arrayidx524 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and458
  %250 = ptrtoint ptr %arrayidx524 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx524, align 4
  %xor529 = xor i32 %251, %219
  %shr531 = lshr i32 %xor519, 24
  %arrayidx533 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %shr531
  %252 = ptrtoint ptr %arrayidx533 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx533, align 4
  %xor534 = xor i32 %xor529, %253
  %shr536 = lshr i32 %xor519, 16
  %and537 = and i32 %shr536, 255
  %arrayidx538 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and537
  %254 = ptrtoint ptr %arrayidx538 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx538, align 4
  %xor539 = xor i32 %xor534, %255
  %arrayidx543 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and502
  %256 = ptrtoint ptr %arrayidx543 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx543, align 4
  %xor544 = xor i32 %xor539, %257
  %arrayidx545 = getelementptr i32, ptr %k, i32 8
  %258 = ptrtoint ptr %arrayidx545 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %xor544, ptr %arrayidx545, align 4
  %259 = load i32, ptr %z, align 4
  %shr547 = lshr i32 %259, 16
  %and548 = and i32 %shr547, 255
  %arrayidx549 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and548
  %260 = ptrtoint ptr %arrayidx549 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx549, align 4
  %shr551 = lshr i32 %259, 24
  %arrayidx553 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %shr551
  %262 = ptrtoint ptr %arrayidx553 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx553, align 4
  %xor554 = xor i32 %263, %261
  %264 = load i32, ptr %arrayidx104, align 4
  %shr556 = lshr i32 %264, 8
  %and557 = and i32 %shr556, 255
  %arrayidx558 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and557
  %265 = ptrtoint ptr %arrayidx558 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %arrayidx558, align 4
  %xor559 = xor i32 %xor554, %266
  %and562 = and i32 %264, 255
  %arrayidx563 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and562
  %267 = ptrtoint ptr %arrayidx563 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %arrayidx563, align 4
  %xor564 = xor i32 %xor559, %268
  %shr566 = lshr i32 %264, 24
  %arrayidx568 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %shr566
  %269 = ptrtoint ptr %arrayidx568 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %arrayidx568, align 4
  %xor569 = xor i32 %xor564, %270
  %arrayidx570 = getelementptr i32, ptr %k, i32 9
  %271 = ptrtoint ptr %arrayidx570 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %xor569, ptr %arrayidx570, align 4
  %272 = load i32, ptr %arrayidx50, align 4
  %and573 = and i32 %272, 255
  %arrayidx574 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and573
  %273 = ptrtoint ptr %arrayidx574 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %arrayidx574, align 4
  %shr576 = lshr i32 %272, 8
  %and577 = and i32 %shr576, 255
  %arrayidx578 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and577
  %275 = ptrtoint ptr %arrayidx578 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %arrayidx578, align 4
  %xor579 = xor i32 %276, %274
  %277 = load i32, ptr %arrayidx77, align 4
  %shr581 = lshr i32 %277, 24
  %arrayidx583 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %shr581
  %278 = ptrtoint ptr %arrayidx583 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx583, align 4
  %xor584 = xor i32 %xor579, %279
  %shr586 = lshr i32 %277, 16
  %and587 = and i32 %shr586, 255
  %arrayidx588 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and587
  %280 = ptrtoint ptr %arrayidx588 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx588, align 4
  %xor589 = xor i32 %xor584, %281
  %282 = load i32, ptr %z, align 4
  %shr591 = lshr i32 %282, 8
  %and592 = and i32 %shr591, 255
  %arrayidx593 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and592
  %283 = ptrtoint ptr %arrayidx593 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %arrayidx593, align 4
  %xor594 = xor i32 %xor589, %284
  %arrayidx595 = getelementptr i32, ptr %k, i32 10
  %285 = ptrtoint ptr %arrayidx595 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %xor594, ptr %arrayidx595, align 4
  %286 = load i32, ptr %arrayidx50, align 4
  %shr597 = lshr i32 %286, 16
  %and598 = and i32 %shr597, 255
  %arrayidx599 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and598
  %287 = ptrtoint ptr %arrayidx599 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %arrayidx599, align 4
  %shr601 = lshr i32 %286, 24
  %arrayidx603 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %shr601
  %289 = ptrtoint ptr %arrayidx603 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %arrayidx603, align 4
  %xor604 = xor i32 %290, %288
  %291 = load i32, ptr %arrayidx77, align 4
  %shr606 = lshr i32 %291, 8
  %and607 = and i32 %shr606, 255
  %arrayidx608 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and607
  %292 = ptrtoint ptr %arrayidx608 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %arrayidx608, align 4
  %xor609 = xor i32 %xor604, %293
  %and612 = and i32 %291, 255
  %arrayidx613 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and612
  %294 = ptrtoint ptr %arrayidx613 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %arrayidx613, align 4
  %xor614 = xor i32 %xor609, %295
  %shr616 = lshr i32 %286, 8
  %and617 = and i32 %shr616, 255
  %arrayidx618 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and617
  %296 = ptrtoint ptr %arrayidx618 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx618, align 4
  %xor619 = xor i32 %xor614, %297
  %arrayidx620 = getelementptr i32, ptr %k, i32 11
  %298 = ptrtoint ptr %arrayidx620 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %xor619, ptr %arrayidx620, align 4
  %299 = load i32, ptr %arrayidx77, align 4
  %300 = load i32, ptr %arrayidx50, align 4
  %shr623 = lshr i32 %300, 16
  %and624 = and i32 %shr623, 255
  %arrayidx625 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and624
  %301 = ptrtoint ptr %arrayidx625 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %arrayidx625, align 4
  %xor626 = xor i32 %302, %299
  %and629 = and i32 %300, 255
  %arrayidx630 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and629
  %303 = ptrtoint ptr %arrayidx630 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %arrayidx630, align 4
  %xor631 = xor i32 %xor626, %304
  %shr633 = lshr i32 %300, 24
  %arrayidx635 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %shr633
  %305 = ptrtoint ptr %arrayidx635 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %arrayidx635, align 4
  %xor636 = xor i32 %xor631, %306
  %shr638 = lshr i32 %300, 8
  %and639 = and i32 %shr638, 255
  %arrayidx640 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and639
  %307 = ptrtoint ptr %arrayidx640 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %arrayidx640, align 4
  %xor641 = xor i32 %xor636, %308
  %309 = load i32, ptr %z, align 4
  %shr643 = lshr i32 %309, 24
  %arrayidx645 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %shr643
  %310 = ptrtoint ptr %arrayidx645 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx645, align 4
  %xor646 = xor i32 %xor641, %311
  store i32 %xor646, ptr %x, align 4
  %312 = load i32, ptr %z, align 4
  %shr650 = lshr i32 %xor646, 24
  %arrayidx652 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %shr650
  %313 = ptrtoint ptr %arrayidx652 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %arrayidx652, align 4
  %xor653 = xor i32 %314, %312
  %shr655 = lshr i32 %xor646, 8
  %and656 = and i32 %shr655, 255
  %arrayidx657 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and656
  %315 = ptrtoint ptr %arrayidx657 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %arrayidx657, align 4
  %xor658 = xor i32 %xor653, %316
  %shr660 = lshr i32 %xor646, 16
  %and661 = and i32 %shr660, 255
  %arrayidx662 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and661
  %317 = ptrtoint ptr %arrayidx662 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %arrayidx662, align 4
  %xor663 = xor i32 %xor658, %318
  %and666 = and i32 %xor646, 255
  %arrayidx667 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and666
  %319 = ptrtoint ptr %arrayidx667 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %arrayidx667, align 4
  %xor668 = xor i32 %xor663, %320
  %shr670 = lshr i32 %312, 8
  %and671 = and i32 %shr670, 255
  %arrayidx672 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and671
  %321 = ptrtoint ptr %arrayidx672 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %arrayidx672, align 4
  %xor673 = xor i32 %xor668, %322
  store i32 %xor673, ptr %arrayidx78, align 4
  %323 = load i32, ptr %arrayidx50, align 4
  %and678 = and i32 %xor673, 255
  %arrayidx679 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and678
  %324 = ptrtoint ptr %arrayidx679 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %arrayidx679, align 4
  %xor680 = xor i32 %325, %323
  %shr682 = lshr i32 %xor673, 8
  %and683 = and i32 %shr682, 255
  %arrayidx684 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and683
  %326 = ptrtoint ptr %arrayidx684 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %arrayidx684, align 4
  %xor685 = xor i32 %xor680, %327
  %shr687 = lshr i32 %xor673, 16
  %and688 = and i32 %shr687, 255
  %arrayidx689 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and688
  %328 = ptrtoint ptr %arrayidx689 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %arrayidx689, align 4
  %xor690 = xor i32 %xor685, %329
  %shr692 = lshr i32 %xor673, 24
  %arrayidx694 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %shr692
  %330 = ptrtoint ptr %arrayidx694 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %arrayidx694, align 4
  %xor695 = xor i32 %xor690, %331
  %332 = load i32, ptr %z, align 4
  %shr697 = lshr i32 %332, 16
  %and698 = and i32 %shr697, 255
  %arrayidx699 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and698
  %333 = ptrtoint ptr %arrayidx699 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %arrayidx699, align 4
  %xor700 = xor i32 %xor695, %334
  store i32 %xor700, ptr %arrayidx18, align 4
  %335 = load i32, ptr %arrayidx104, align 4
  %shr704 = lshr i32 %xor700, 8
  %and705 = and i32 %shr704, 255
  %arrayidx706 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and705
  %336 = ptrtoint ptr %arrayidx706 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %arrayidx706, align 4
  %xor707 = xor i32 %337, %335
  %shr709 = lshr i32 %xor700, 16
  %and710 = and i32 %shr709, 255
  %arrayidx711 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and710
  %338 = ptrtoint ptr %arrayidx711 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %arrayidx711, align 4
  %xor712 = xor i32 %xor707, %339
  %and715 = and i32 %xor700, 255
  %arrayidx716 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and715
  %340 = ptrtoint ptr %arrayidx716 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %arrayidx716, align 4
  %xor717 = xor i32 %xor712, %341
  %shr719 = lshr i32 %xor700, 24
  %arrayidx721 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %shr719
  %342 = ptrtoint ptr %arrayidx721 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %arrayidx721, align 4
  %xor722 = xor i32 %xor717, %343
  %344 = load i32, ptr %z, align 4
  %and725 = and i32 %344, 255
  %arrayidx726 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and725
  %345 = ptrtoint ptr %arrayidx726 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %arrayidx726, align 4
  %xor727 = xor i32 %xor722, %346
  store i32 %xor727, ptr %arrayidx1, align 4
  %arrayidx732 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %shr719
  %347 = ptrtoint ptr %arrayidx732 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %arrayidx732, align 4
  %xor737 = xor i32 %348, %339
  %arrayidx741 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and678
  %349 = ptrtoint ptr %arrayidx741 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %arrayidx741, align 4
  %xor742 = xor i32 %xor737, %350
  %arrayidx746 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and683
  %351 = ptrtoint ptr %arrayidx746 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %arrayidx746, align 4
  %xor747 = xor i32 %xor742, %352
  %arrayidx751 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and666
  %353 = ptrtoint ptr %arrayidx751 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %arrayidx751, align 4
  %xor752 = xor i32 %xor747, %354
  %arrayidx753 = getelementptr i32, ptr %k, i32 12
  %355 = ptrtoint ptr %arrayidx753 to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 %xor752, ptr %arrayidx753, align 4
  %356 = load i32, ptr %arrayidx18, align 4
  %shr755 = lshr i32 %356, 8
  %and756 = and i32 %shr755, 255
  %arrayidx757 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and756
  %357 = ptrtoint ptr %arrayidx757 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %arrayidx757, align 4
  %and760 = and i32 %356, 255
  %arrayidx761 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and760
  %359 = ptrtoint ptr %arrayidx761 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %arrayidx761, align 4
  %xor762 = xor i32 %360, %358
  %361 = load i32, ptr %arrayidx78, align 4
  %shr764 = lshr i32 %361, 16
  %and765 = and i32 %shr764, 255
  %arrayidx766 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and765
  %362 = ptrtoint ptr %arrayidx766 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %arrayidx766, align 4
  %xor767 = xor i32 %xor762, %363
  %shr769 = lshr i32 %361, 24
  %arrayidx771 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %shr769
  %364 = ptrtoint ptr %arrayidx771 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %arrayidx771, align 4
  %xor772 = xor i32 %xor767, %365
  %and775 = and i32 %361, 255
  %arrayidx776 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and775
  %366 = ptrtoint ptr %arrayidx776 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %arrayidx776, align 4
  %xor777 = xor i32 %xor772, %367
  %arrayidx778 = getelementptr i32, ptr %k, i32 13
  %368 = ptrtoint ptr %arrayidx778 to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 %xor777, ptr %arrayidx778, align 4
  %369 = load i32, ptr %arrayidx1, align 4
  %shr780 = lshr i32 %369, 24
  %arrayidx782 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %shr780
  %370 = ptrtoint ptr %arrayidx782 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %arrayidx782, align 4
  %shr784 = lshr i32 %369, 16
  %and785 = and i32 %shr784, 255
  %arrayidx786 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and785
  %372 = ptrtoint ptr %arrayidx786 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %arrayidx786, align 4
  %xor787 = xor i32 %373, %371
  %374 = load i32, ptr %x, align 4
  %and790 = and i32 %374, 255
  %arrayidx791 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and790
  %375 = ptrtoint ptr %arrayidx791 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %arrayidx791, align 4
  %xor792 = xor i32 %xor787, %376
  %shr794 = lshr i32 %374, 8
  %and795 = and i32 %shr794, 255
  %arrayidx796 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and795
  %377 = ptrtoint ptr %arrayidx796 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %arrayidx796, align 4
  %xor797 = xor i32 %xor792, %378
  %379 = load i32, ptr %arrayidx18, align 4
  %shr799 = lshr i32 %379, 24
  %arrayidx801 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %shr799
  %380 = ptrtoint ptr %arrayidx801 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %arrayidx801, align 4
  %xor802 = xor i32 %xor797, %381
  %arrayidx803 = getelementptr i32, ptr %k, i32 14
  %382 = ptrtoint ptr %arrayidx803 to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %xor802, ptr %arrayidx803, align 4
  %383 = load i32, ptr %arrayidx1, align 4
  %shr805 = lshr i32 %383, 8
  %and806 = and i32 %shr805, 255
  %arrayidx807 = getelementptr [256 x i32], ptr @s5, i32 0, i32 %and806
  %384 = ptrtoint ptr %arrayidx807 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %arrayidx807, align 4
  %and810 = and i32 %383, 255
  %arrayidx811 = getelementptr [256 x i32], ptr @s6, i32 0, i32 %and810
  %386 = ptrtoint ptr %arrayidx811 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %arrayidx811, align 4
  %xor812 = xor i32 %387, %385
  %388 = load i32, ptr %x, align 4
  %shr814 = lshr i32 %388, 16
  %and815 = and i32 %shr814, 255
  %arrayidx816 = getelementptr [256 x i32], ptr @s7, i32 0, i32 %and815
  %389 = ptrtoint ptr %arrayidx816 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %arrayidx816, align 4
  %xor817 = xor i32 %xor812, %390
  %shr819 = lshr i32 %388, 24
  %arrayidx821 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %shr819
  %391 = ptrtoint ptr %arrayidx821 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %arrayidx821, align 4
  %xor822 = xor i32 %xor817, %392
  %shr824 = lshr i32 %383, 16
  %and825 = and i32 %shr824, 255
  %arrayidx826 = getelementptr [256 x i32], ptr @sb8, i32 0, i32 %and825
  %393 = ptrtoint ptr %arrayidx826 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %arrayidx826, align 4
  %xor827 = xor i32 %xor822, %394
  %arrayidx828 = getelementptr i32, ptr %k, i32 15
  %395 = ptrtoint ptr %arrayidx828 to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 %xor827, ptr %arrayidx828, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cast5_mod_fini() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_alg(ptr noundef nonnull @alg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cast5_mod_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_alg(ptr noundef nonnull @alg) #7
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cast5_encrypt(ptr noundef %tfm, ptr nocapture noundef writeonly %outbuf, ptr nocapture noundef readonly %inbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call void @__cast5_encrypt(ptr noundef %__crt_ctx.i, ptr noundef %outbuf, ptr noundef %inbuf)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cast5_decrypt(ptr noundef %tfm, ptr nocapture noundef writeonly %outbuf, ptr nocapture noundef readonly %inbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call void @__cast5_decrypt(ptr noundef %__crt_ctx.i, ptr noundef %outbuf, ptr noundef %inbuf)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !20, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__ksymtab___cast5_encrypt, !1, !"__ksymtab___cast5_encrypt", i1 false, i1 false}
!1 = !{!"../crypto/cast5_generic.c", i32 351, i32 1}
!2 = !{ptr @__ksymtab___cast5_decrypt, !3, !"__ksymtab___cast5_decrypt", i1 false, i1 false}
!3 = !{!"../crypto/cast5_generic.c", i32 393, i32 1}
!4 = !{ptr @__ksymtab_cast5_setkey, !5, !"__ksymtab_cast5_setkey", i1 false, i1 false}
!5 = !{!"../crypto/cast5_generic.c", i32 503, i32 1}
!6 = !{ptr @__initcall__kmod_cast5_generic__173_534_cast5_mod_init4, !7, !"__initcall__kmod_cast5_generic__173_534_cast5_mod_init4", i1 false, i1 false}
!7 = !{!"../crypto/cast5_generic.c", i32 534, i32 1}
!8 = !{ptr @__exitcall_cast5_mod_fini, !9, !"__exitcall_cast5_mod_fini", i1 false, i1 false}
!9 = !{!"../crypto/cast5_generic.c", i32 535, i32 1}
!10 = !{ptr @__UNIQUE_ID_file174, !11, !"__UNIQUE_ID_file174", i1 false, i1 false}
!11 = !{!"../crypto/cast5_generic.c", i32 537, i32 1}
!12 = !{ptr @__UNIQUE_ID_license175, !11, !"__UNIQUE_ID_license175", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description176, !14, !"__UNIQUE_ID_description176", i1 false, i1 false}
!14 = !{!"../crypto/cast5_generic.c", i32 538, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias_userspace177, !16, !"__UNIQUE_ID_alias_userspace177", i1 false, i1 false}
!16 = !{!"../crypto/cast5_generic.c", i32 539, i32 1}
!17 = !{ptr @__UNIQUE_ID_alias_crypto178, !16, !"__UNIQUE_ID_alias_crypto178", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_alias_userspace179, !19, !"__UNIQUE_ID_alias_userspace179", i1 false, i1 false}
!19 = !{!"../crypto/cast5_generic.c", i32 540, i32 1}
!20 = !{ptr @__UNIQUE_ID_alias_crypto180, !19, !"__UNIQUE_ID_alias_crypto180", i1 false, i1 false}
!21 = !{ptr @s5, !22, !"s5", i1 false, i1 false}
!22 = !{!"../crypto/cast5_generic.c", i32 25, i32 18}
!23 = !{ptr @s6, !24, !"s6", i1 false, i1 false}
!24 = !{!"../crypto/cast5_generic.c", i32 91, i32 18}
!25 = !{ptr @s7, !26, !"s7", i1 false, i1 false}
!26 = !{!"../crypto/cast5_generic.c", i32 157, i32 18}
!27 = !{ptr @sb8, !28, !"sb8", i1 false, i1 false}
!28 = !{!"../crypto/cast5_generic.c", i32 223, i32 18}
!29 = !{ptr @alg, !30, !"alg", i1 false, i1 false}
!30 = !{!"../crypto/cast5_generic.c", i32 505, i32 26}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
