; ModuleID = '/llk/IR_all_yes/crypto/seed.c_pt.bc'
source_filename = "../crypto/seed.c"
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

@seed_alg = internal global %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, i32 16, i32 128, i32 3, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"seed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"seed-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon { %struct.cipher_alg { i32 16, i32 16, ptr @seed_set_key, ptr @seed_encrypt, ptr @seed_decrypt } }, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef }, align 128
@__initcall__kmod_seed__173_469_seed_init4 = internal global ptr @seed_init, section ".initcall4.init", align 4
@__exitcall_seed_fini = internal global ptr @seed_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description174 = internal constant [39 x i8] c"seed.description=SEED Cipher Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [22 x i8] c"seed.file=crypto/seed\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [17 x i8] c"seed.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author177 = internal constant [75 x i8] c"seed.author=Hye-Shik Chang <perky@FreeBSD.org>, Kim Hyun <hkim@kisa.or.kr>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace178 = internal constant [16 x i8] c"seed.alias=seed\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto179 = internal constant [23 x i8] c"seed.alias=crypto-seed\00", section ".modinfo", align 1
@KC = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 -1640531527, i32 1013904243, i32 2027808486, i32 -239350324, i32 -478700647, i32 -957401293, i32 -1914802585, i32 465362127, i32 930724254, i32 1861448508, i32 -572070280, i32 -1144140559, i32 2006686179, i32 -281594938, i32 -563189875, i32 -1126379749], [32 x i8] zeroinitializer }, align 32
@SS0 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 696885672, i32 92635524, i32 382128852, i32 331600848, i32 340021332, i32 487395612, i32 747413676, i32 621093156, i32 491606364, i32 54739776, i32 403181592, i32 504238620, i32 289493328, i32 1020063996, i32 181060296, i32 591618912, i32 671621160, i32 71581764, i32 536879136, i32 495817116, i32 549511392, i32 583197408, i32 147374280, i32 386339604, i32 629514660, i32 261063564, i32 50529024, i32 994800504, i32 999011256, i32 318968592, i32 314757840, i32 785310444, i32 809529456, i32 210534540, i32 1057960764, i32 680042664, i32 839004720, i32 500027868, i32 919007988, i32 876900468, i32 751624428, i32 361075092, i32 185271048, i32 390550356, i32 474763356, i32 457921368, i32 1032696252, i32 16843008, i32 604250148, i32 470552604, i32 860058480, i32 411603096, i32 268439568, i32 214745292, i32 851636976, i32 432656856, i32 738992172, i32 667411428, i32 843215472, i32 58950528, i32 462132120, i32 297914832, i32 109478532, i32 164217288, i32 541089888, i32 272650320, i32 595829664, i32 734782440, i32 218956044, i32 914797236, i32 512660124, i32 256852812, i32 931640244, i32 441078360, i32 113689284, i32 944271480, i32 646357668, i32 302125584, i32 797942700, i32 365285844, i32 557932896, i32 63161280, i32 881111220, i32 21053760, i32 306336336, i32 1028485500, i32 227377548, i32 134742024, i32 521081628, i32 428446104, i32 0, i32 420024600, i32 67371012, i32 323179344, i32 935850996, i32 566354400, i32 1036907004, i32 910586484, i32 789521196, i32 654779172, i32 813740208, i32 193692552, i32 235799052, i32 730571688, i32 578986656, i32 776888940, i32 327390096, i32 223166796, i32 692674920, i32 1011642492, i32 151585032, i32 168428040, i32 1066382268, i32 802153452, i32 868479984, i32 96846276, i32 126321540, i32 335810580, i32 1053750012, i32 608460900, i32 516870876, i32 772678188, i32 189481800, i32 436867608, i32 101057028, i32 553722144, i32 726360936, i32 642146916, i32 33686016, i32 902164980, i32 310547088, i32 176849544, i32 202113036, i32 864269232, i32 1045328508, i32 281071824, i32 977957496, i32 122110788, i32 377918100, i32 633725412, i32 637936164, i32 8421504, i32 764256684, i32 533713884, i32 562143648, i32 805318704, i32 923218740, i32 781099692, i32 906375732, i32 352653588, i32 570565152, i32 940060728, i32 885321972, i32 663200676, i32 88424772, i32 206323788, i32 25264512, i32 701096424, i32 75792516, i32 394761108, i32 889532724, i32 197903304, i32 248431308, i32 1007431740, i32 826372464, i32 285282576, i32 130532292, i32 160006536, i32 893743476, i32 1003222008, i32 449499864, i32 952692984, i32 344232084, i32 424235352, i32 42107520, i32 80003268, i32 1070593020, i32 155795784, i32 956903736, i32 658989924, i32 12632256, i32 265274316, i32 398971860, i32 948482232, i32 252642060, i32 244220556, i32 37896768, i32 587408160, i32 293704080, i32 743202924, i32 466342872, i32 612671652, i32 872689716, i32 834793968, i32 138952776, i32 46318272, i32 793731948, i32 1024274748, i32 755835180, i32 4210752, i32 1049539260, i32 1041117756, i32 1015853244, i32 29475264, i32 713728680, i32 982168248, i32 240009804, i32 356864340, i32 990589752, i32 483184860, i32 675831912, i32 1062171516, i32 478974108, i32 415813848, i32 172638792, i32 373707348, i32 927429492, i32 545300640, i32 768467436, i32 105267780, i32 897954228, i32 722150184, i32 625303908, i32 986379000, i32 600040416, i32 965325240, i32 830583216, i32 529503132, i32 508449372, i32 969535992, i32 650568420, i32 847426224, i32 822161712, i32 717939432, i32 760045932, i32 525292380, i32 616882404, i32 817950960, i32 231588300, i32 143163528, i32 369496596, i32 973746744, i32 407392344, i32 348442836, i32 574775904, i32 688464168, i32 117900036, i32 855847728, i32 684253416, i32 453710616, i32 84214020, i32 961114488, i32 276861072, i32 709517928, i32 705307176, i32 445289112], [256 x i8] zeroinitializer }, align 32
@SS1 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 943196208, i32 -399980320, i32 741149985, i32 -1540979038, i32 -871379005, i32 -601960750, i32 -1338801229, i32 -1204254544, i32 -1406169181, i32 1612726368, i32 1410680145, i32 -1006123069, i32 1141130304, i32 1815039843, i32 1747667811, i32 1478183763, i32 -1073495101, i32 1612857954, i32 808649523, i32 -1271560783, i32 673777953, i32 -1608482656, i32 -534592798, i32 -1540913245, i32 -804011053, i32 -1877900911, i32 269549841, i32 67503618, i32 471600144, i32 -1136882512, i32 875955762, i32 1208699715, i32 -332410909, i32 -2012706688, i32 1814842464, i32 -1473738592, i32 337053459, i32 -1006320448, i32 336987666, i32 -197868304, i32 -1073560894, i32 1141196097, i32 -534658591, i32 -736704814, i32 1010765619, i32 1010634033, i32 -1945203070, i32 -1743222640, i32 673712160, i32 1276005954, i32 -197736718, i32 1010699826, i32 -1541044831, i32 -130430479, i32 202181889, i32 -601894957, i32 -669464368, i32 673909539, i32 1680229986, i32 2017086066, i32 606537507, i32 741281571, i32 -265174543, i32 1882342002, i32 1073889858, i32 -736836400, i32 1073824065, i32 -1073692480, i32 1882407795, i32 1680295779, i32 -1406366560, i32 -2012509309, i32 -197670925, i32 -1406300767, i32 -2147450752, i32 471797523, i32 -938816830, i32 741084192, i32 -1473607006, i32 875824176, i32 -804076846, i32 134941443, i32 -332476702, i32 -399914527, i32 1545424209, i32 -1810594672, i32 404228112, i32 -130496272, i32 1410811731, i32 -1406234974, i32 134744064, i32 -1006254655, i32 269681427, i32 -871510591, i32 -2079947134, i32 -1204188751, i32 -62926861, i32 2084392305, i32 -1073626687, i32 808517937, i32 -197802511, i32 -2012575102, i32 1747602018, i32 -1338932815, i32 -804142639, i32 538968096, i32 -736639021, i32 131586, i32 539099682, i32 67372032, i32 1747470432, i32 1882276209, i32 67569411, i32 -669266989, i32 -1675784815, i32 -1743156847, i32 1612792161, i32 -1136750926, i32 -467220766, i32 1478052177, i32 -602026543, i32 1343308113, i32 -1877966704, i32 -602092336, i32 -1743091054, i32 -1608285277, i32 -1473541213, i32 -804208432, i32 -2147384959, i32 202313475, i32 1141327683, i32 404359698, i32 -534527005, i32 -332608288, i32 -1945268863, i32 -1136685133, i32 -1810463086, i32 2017151859, i32 1545358416, i32 -1608351070, i32 -1608416863, i32 1612923747, i32 539165475, i32 1275940161, i32 -938948416, i32 -1675719022, i32 -1675850608, i32 943327794, i32 202116096, i32 741215778, i32 -1204122958, i32 1814974050, i32 -1675653229, i32 1478117970, i32 -265108750, i32 -1877835118, i32 -265042957, i32 1208568129, i32 2016954480, i32 -871576384, i32 336921873, i32 -130298893, i32 1882210416, i32 1949648241, i32 2084523891, i32 875889969, i32 269484048, i32 197379, i32 1680098400, i32 1814908257, i32 -1006188862, i32 1949582448, i32 -736770607, i32 -1271626576, i32 -399848734, i32 134809857, i32 1949714034, i32 404293905, i32 -62992654, i32 1073758272, i32 269615634, i32 -534724384, i32 -1136816719, i32 67437825, i32 -130364686, i32 65793, i32 -265240336, i32 673843746, i32 1545490002, i32 -1473672799, i32 1410745938, i32 1073955651, i32 -2080012927, i32 336856080, i32 -2012640895, i32 -1743025261, i32 -1338998608, i32 -467286559, i32 1208502336, i32 2017020273, i32 -1810397293, i32 -63124240, i32 471731730, i32 -2147319166, i32 539033889, i32 -1945334656, i32 404425491, i32 1545555795, i32 1949779827, i32 1410614352, i32 -1338867022, i32 471665937, i32 606405921, i32 1276071747, i32 0, i32 1141261890, i32 -332542495, i32 1477986384, i32 1343373906, i32 -399782941, i32 2084458098, i32 -669332782, i32 -938882623, i32 -63058447, i32 808452144, i32 -1810528879, i32 1680164193, i32 1010568240, i32 -1271494990, i32 -467352352, i32 -1204057165, i32 2084326512, i32 202247682, i32 1343242320, i32 943262001, i32 606471714, i32 808583730, i32 -2080078720, i32 1747536225, i32 -1877769325, i32 876021555, i32 -467154973, i32 606340128, i32 -1541110624, i32 -938751037, i32 1343439699, i32 134875650, i32 -2079881341, i32 -669398575, i32 1275874368, i32 -2147253373, i32 -1945137277, i32 -871444798, i32 943393587, i32 1208633922, i32 -1271429197], [256 x i8] zeroinitializer }, align 32
@SS2 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 -1582814839, i32 -2122054267, i32 -757852474, i32 -741338173, i32 1347687492, i32 287055117, i32 -1599329140, i32 556016901, i32 1364991309, i32 1128268611, i32 270014472, i32 303832590, i32 1364201793, i32 -251904820, i32 -1027077430, i32 1667244867, i32 539502600, i32 1078199364, i32 538976256, i32 -1852039795, i32 -522182464, i32 -488627518, i32 -1060632376, i32 320083719, i32 -1583078011, i32 -2087972977, i32 50332419, i32 1937259339, i32 -1279771765, i32 319820547, i32 -758115646, i32 -487838002, i32 1886400576, i32 -2138305396, i32 859586319, i32 -1599592312, i32 842019330, i32 -774103603, i32 -218876218, i32 1886663748, i32 -521392948, i32 -1852566139, i32 50858763, i32 1398019911, i32 1348213836, i32 1398283083, i32 -1313063539, i32 16777473, i32 539239428, i32 270277644, i32 1936732995, i32 -1869080440, i32 269488128, i32 -1060369204, i32 -219139390, i32 -774366775, i32 539765772, i32 -471586873, i32 1919955522, i32 -2088762493, i32 -1818748021, i32 -774893119, i32 -2105276794, i32 -1043854903, i32 1616912448, i32 1347424320, i32 -1549786237, i32 -471323701, i32 17566989, i32 -1296812410, i32 -1835262322, i32 1129058127, i32 -1280034937, i32 1381505610, i32 -1027340602, i32 1886926920, i32 -1566300538, i32 303043074, i32 -1548996721, i32 -774629947, i32 1633689921, i32 -1010826301, i32 -1330367356, i32 1094713665, i32 1380979266, i32 1903967565, i32 -2121527923, i32 526344, i32 320610063, i32 -1852302967, i32 0, i32 286791945, i32 263172, i32 1397756739, i32 -202098745, i32 -505404991, i32 -235127347, i32 1920218694, i32 590098191, i32 589571847, i32 -1330630528, i32 -2088236149, i32 34344462, i32 -1549259893, i32 -1566563710, i32 1651256910, i32 -1819274365, i32 1095503181, i32 1634216265, i32 1887190092, i32 17303817, i32 34081290, i32 -1279508593, i32 -471060529, i32 -202361917, i32 -1044118075, i32 -2088499321, i32 269751300, i32 -218349874, i32 1617175620, i32 -757326130, i32 573320718, i32 1128794955, i32 303569418, i32 33818118, i32 555753729, i32 1667771211, i32 1650730566, i32 33554946, i32 -235653691, i32 -1836051838, i32 -2105013622, i32 789516, i32 -1280298109, i32 1920745038, i32 -791670592, i32 1920481866, i32 1128531783, i32 -1835788666, i32 -505141819, i32 572794374, i32 -2139094912, i32 -1582551667, i32 -740548657, i32 -1583341183, i32 808464384, i32 859059975, i32 -1565774194, i32 842282502, i32 286528773, i32 572531202, i32 808990728, i32 -252431164, i32 -1549523065, i32 1094976837, i32 1078725708, i32 -2122317439, i32 -504878647, i32 -2138831740, i32 -1819011193, i32 825505029, i32 -1010299957, i32 -1026814258, i32 809253900, i32 1903178049, i32 286265601, i32 -1010563129, i32 -2121791095, i32 1903441221, i32 -201835573, i32 -757589302, i32 -252167992, i32 -1869343612, i32 1364728137, i32 -2105539966, i32 -1060895548, i32 -201572401, i32 1095240009, i32 825768201, i32 1667508039, i32 -1061158720, i32 -1010036785, i32 -741075001, i32 -1330104184, i32 51121935, i32 -2104750450, i32 1111491138, i32 589308675, i32 -1852829311, i32 1617701964, i32 -740811829, i32 -1599855484, i32 808727556, i32 -235916863, i32 1078462536, i32 -1027603774, i32 1668034383, i32 826031373, i32 556543245, i32 1077936192, i32 -1296286066, i32 842808846, i32 -1329841012, i32 -1044381247, i32 -1566037366, i32 -1296549238, i32 1112280654, i32 1364464965, i32 859323147, i32 -790881076, i32 1617438792, i32 1937522511, i32 -1868817268, i32 -791144248, i32 1112017482, i32 1381242438, i32 1936996167, i32 -1600118656, i32 -504615475, i32 1111754310, i32 -1313589883, i32 589835019, i32 1633953093, i32 -218613046, i32 -471850045, i32 -1313326711, i32 -1313853055, i32 -1818484849, i32 1381768782, i32 -235390519, i32 -488364346, i32 -1297075582, i32 825241857, i32 -488101174, i32 1634479437, i32 1398546255, i32 -521919292, i32 -252694336, i32 -1043591731, i32 -2138568568, i32 303306246, i32 842545674, i32 1347950664, i32 -791407420, i32 1650467394, i32 556280073, i32 50595591, i32 858796803, i32 -521656120, i32 320346891, i32 17040645, i32 1903704393, i32 -1869606784, i32 1650993738, i32 573057546, i32 -1835525494], [256 x i8] zeroinitializer }, align 32
@SS3 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 137377848, i32 -924784600, i32 220277805, i32 -2036161498, i32 -809251825, i32 -825041890, i32 -2085375949, i32 -2001684424, i32 -1885098961, i32 1080057888, i32 1162957845, i32 -943471609, i32 1145062404, i32 1331915823, i32 1264805931, i32 1263753243, i32 -1010581501, i32 1113743394, i32 53686323, i32 -2051951563, i32 153167913, i32 -2136956896, i32 -1025318878, i32 -2019318745, i32 -1009528813, i32 -2121166831, i32 17895441, i32 100795398, i32 202382364, i32 -1934574532, i32 103953462, i32 1262700555, i32 -807146449, i32 -2004842488, i32 1281387564, i32 -2002737112, i32 118690839, i32 -993999868, i32 101848086, i32 -990841804, i32 -1027424254, i32 1161905157, i32 -1042161631, i32 -959261674, i32 255015999, i32 221330493, i32 -1904047090, i32 -2003789800, i32 136325160, i32 1312967694, i32 -957156298, i32 238173246, i32 -2053004251, i32 -906889159, i32 218172429, i32 -808199137, i32 -925837288, i32 186853419, i32 1180853286, i32 1249015866, i32 119743527, i32 253963311, i32 -1041108943, i32 1114796082, i32 1111638018, i32 -992947180, i32 1094795265, i32 -1061109760, i32 1131638835, i32 1197696039, i32 -1935627220, i32 -1954314229, i32 -940313545, i32 -1918784467, i32 -2139062272, i32 252910623, i32 -893204470, i32 203435052, i32 -1969051606, i32 70267956, i32 -1026371566, i32 184748043, i32 -823989202, i32 -907941847, i32 1297177629, i32 -2070899692, i32 135272472, i32 -923731912, i32 1196643351, i32 -1901941714, i32 134219784, i32 -977157115, i32 51580947, i32 -842937331, i32 -2038266874, i32 -1984841671, i32 -806093761, i32 1299283005, i32 -1044267007, i32 20000817, i32 -973999051, i32 -1971156982, i32 1247963178, i32 -2119061455, i32 -1043214319, i32 2105376, i32 -942418921, i32 33685506, i32 35790882, i32 67109892, i32 1214277672, i32 1097953329, i32 117638151, i32 -875309029, i32 -1919837155, i32 -1986947047, i32 1096900641, i32 -1900889026, i32 -958208986, i32 1230067737, i32 -841884643, i32 1095847953, i32 -2138009584, i32 -858727396, i32 -1970104294, i32 -2086428637, i32 -1952208853, i32 -1060057072, i32 -2122219519, i32 251857935, i32 1195590663, i32 168957978, i32 -1008476125, i32 -857674708, i32 -1920889843, i32 -1884046273, i32 -2037214186, i32 1265858619, i32 1280334876, i32 -2103271390, i32 -2120114143, i32 1130586147, i32 52633635, i32 1296124941, i32 -926889976, i32 -1902994402, i32 -1936679908, i32 171063354, i32 201329676, i32 237120558, i32 -1967998918, i32 1315073070, i32 -1886151649, i32 1246910490, i32 -1024266190, i32 -2104324078, i32 -1007423437, i32 1229015049, i32 1215330360, i32 -859780084, i32 85005333, i32 -873203653, i32 1081110576, i32 1165063221, i32 1332968511, i32 87110709, i32 1052688, i32 50528259, i32 1147167780, i32 1298230317, i32 -960314362, i32 1148220468, i32 -976104427, i32 -2068794316, i32 -891099094, i32 151062537, i32 1181905974, i32 152115225, i32 -822936514, i32 1077952512, i32 34738194, i32 -1059004384, i32 -1917731779, i32 83952645, i32 -890046406, i32 16842753, i32 -1057951696, i32 170010666, i32 1314020382, i32 -1985894359, i32 1179800598, i32 1128480771, i32 -2055109627, i32 68162580, i32 -1987999735, i32 -1953261541, i32 -2135904208, i32 -975051739, i32 1212172296, i32 1232173113, i32 -2020371433, i32 -856622020, i32 236067870, i32 -2105376766, i32 18948129, i32 -1937732596, i32 185800731, i32 1330863135, i32 1198748727, i32 1146115092, i32 -2102218702, i32 219225117, i32 86058021, i32 1329810447, i32 0, i32 1178747910, i32 -840831955, i32 1213224984, i32 1112690706, i32 -874256341, i32 1316125758, i32 -892151782, i32 -910047223, i32 -839779267, i32 3158064, i32 -2054056939, i32 1164010533, i32 204487740, i32 -2035108810, i32 -991894492, i32 -1951156165, i32 1282440252, i32 235015182, i32 1079005200, i32 154220601, i32 102900774, i32 36843570, i32 -2071952380, i32 1231120425, i32 -2087481325, i32 120796215, i32 -941366233, i32 69215268, i32 -2069847004, i32 -876361717, i32 1129533459, i32 167905290, i32 -2021424121, i32 -908994535, i32 1279282188, i32 -2088534013, i32 -1887204337, i32 -826094578, i32 187906107, i32 1245857802, i32 -2018266057], [256 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [3 x i8] c"KC\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 304, i32 18 }
@___asan_gen_.4 = private unnamed_addr constant [4 x i8] c"SS0\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 36, i32 18 }
@___asan_gen_.7 = private unnamed_addr constant [4 x i8] c"SS1\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 103, i32 18 }
@___asan_gen_.10 = private unnamed_addr constant [4 x i8] c"SS2\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 170, i32 18 }
@___asan_gen_.13 = private unnamed_addr constant [4 x i8] c"SS3\00", align 1
@___asan_gen_.14 = private constant [17 x i8] c"../crypto/seed.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 237, i32 18 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias_crypto179, ptr @__UNIQUE_ID_alias_userspace178, ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_seed_fini, ptr @__initcall__kmod_seed__173_469_seed_init4, ptr @seed_fini, ptr @KC, ptr @SS0, ptr @SS1, ptr @SS2, ptr @SS3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @KC to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SS0 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SS1 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SS2 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SS3 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @seed_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_alg(ptr noundef nonnull @seed_alg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @seed_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_alg(ptr noundef nonnull @seed_alg) #5
  ret i32 %call
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seed_set_key(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %in_key, i32 noundef %key_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %in_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in_key, align 4
  %arrayidx1 = getelementptr i32, ptr %in_key, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr i32, ptr %in_key, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %in_key, i32 3
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %x4.093 = phi i32 [ %7, %entry ], [ %x4.1, %for.inc.for.body_crit_edge ]
  %x3.092 = phi i32 [ %5, %entry ], [ %x3.1, %for.inc.for.body_crit_edge ]
  %x2.091 = phi i32 [ %3, %entry ], [ %x2.1, %for.inc.for.body_crit_edge ]
  %x1.090 = phi i32 [ %1, %entry ], [ %x1.1, %for.inc.for.body_crit_edge ]
  %i.089 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %keyout.088 = phi ptr [ %__crt_ctx.i, %entry ], [ %incdec.ptr36, %for.inc.for.body_crit_edge ]
  %add = add i32 %x3.092, %x1.090
  %arrayidx4 = getelementptr [16 x i32], ptr @KC, i32 0, i32 %i.089
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %sub = sub i32 %add, %9
  %add6 = sub i32 %x2.091, %x4.093
  %sub7 = add i32 %add6, %9
  %idxprom = and i32 %sub, 255
  %arrayidx9 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9, align 4
  %shr.i = lshr i32 %sub, 8
  %idxprom11 = and i32 %shr.i, 255
  %arrayidx12 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom11
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12, align 4
  %xor = xor i32 %13, %11
  %shr.i77 = lshr i32 %sub, 16
  %idxprom14 = and i32 %shr.i77, 255
  %arrayidx15 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom14
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx15, align 4
  %xor16 = xor i32 %xor, %15
  %shr.i79 = lshr i32 %sub, 24
  %arrayidx19 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i79
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx19, align 4
  %xor20 = xor i32 %xor16, %17
  %incdec.ptr = getelementptr i32, ptr %keyout.088, i32 1
  %18 = ptrtoint ptr %keyout.088 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %xor20, ptr %keyout.088, align 4
  %idxprom22 = and i32 %sub7, 255
  %arrayidx23 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom22
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx23, align 4
  %shr.i82 = lshr i32 %sub7, 8
  %idxprom25 = and i32 %shr.i82, 255
  %arrayidx26 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom25
  %21 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx26, align 4
  %xor27 = xor i32 %22, %20
  %shr.i84 = lshr i32 %sub7, 16
  %idxprom29 = and i32 %shr.i84, 255
  %arrayidx30 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom29
  %23 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx30, align 4
  %xor31 = xor i32 %xor27, %24
  %shr.i86 = lshr i32 %sub7, 24
  %arrayidx34 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i86
  %25 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx34, align 4
  %xor35 = xor i32 %xor31, %26
  %incdec.ptr36 = getelementptr i32, ptr %keyout.088, i32 2
  %27 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %xor35, ptr %incdec.ptr, align 4
  %rem = and i32 %i.089, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp37 = icmp eq i32 %rem, 0
  br i1 %cmp37, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %xor3874 = tail call i32 @llvm.fshl.i32(i32 %x2.091, i32 %x1.090, i32 24)
  %xor4175 = tail call i32 @llvm.fshl.i32(i32 %x1.090, i32 %x2.091, i32 24)
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %xor4472 = tail call i32 @llvm.fshl.i32(i32 %x3.092, i32 %x4.093, i32 8)
  %xor4773 = tail call i32 @llvm.fshl.i32(i32 %x4.093, i32 %x3.092, i32 8)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %x1.1 = phi i32 [ %xor3874, %if.then ], [ %x1.090, %if.else ]
  %x2.1 = phi i32 [ %xor4175, %if.then ], [ %x2.091, %if.else ]
  %x3.1 = phi i32 [ %x3.092, %if.then ], [ %xor4472, %if.else ]
  %x4.1 = phi i32 [ %x4.093, %if.then ], [ %xor4773, %if.else ]
  %inc = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @seed_encrypt(ptr noundef readonly %tfm, ptr nocapture noundef writeonly %out, ptr nocapture noundef readonly %in) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in, align 4
  %arrayidx1 = getelementptr i32, ptr %in, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr i32, ptr %in, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %in, i32 3
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %8 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__crt_ctx.i, align 4
  %xor = xor i32 %9, %5
  %arrayidx5 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5, align 4
  %xor6 = xor i32 %11, %7
  %xor7 = xor i32 %xor6, %xor
  %idxprom = and i32 %xor7, 255
  %arrayidx9 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9, align 4
  %shr.i = lshr i32 %xor7, 8
  %idxprom11 = and i32 %shr.i, 255
  %arrayidx12 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom11
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx12, align 4
  %xor13 = xor i32 %15, %13
  %shr.i1337 = lshr i32 %xor7, 16
  %idxprom15 = and i32 %shr.i1337, 255
  %arrayidx16 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom15
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx16, align 4
  %xor17 = xor i32 %xor13, %17
  %shr.i1339 = lshr i32 %xor7, 24
  %arrayidx20 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1339
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx20, align 4
  %xor21 = xor i32 %xor17, %19
  %add = add i32 %xor21, %xor
  %idxprom23 = and i32 %add, 255
  %arrayidx24 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom23
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx24, align 4
  %shr.i1342 = lshr i32 %add, 8
  %idxprom26 = and i32 %shr.i1342, 255
  %arrayidx27 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom26
  %22 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx27, align 4
  %xor28 = xor i32 %23, %21
  %shr.i1344 = lshr i32 %add, 16
  %idxprom30 = and i32 %shr.i1344, 255
  %arrayidx31 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom30
  %24 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx31, align 4
  %xor32 = xor i32 %xor28, %25
  %shr.i1346 = lshr i32 %add, 24
  %arrayidx35 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1346
  %26 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx35, align 4
  %xor36 = xor i32 %xor32, %27
  %add37 = add i32 %xor36, %xor21
  %idxprom39 = and i32 %add37, 255
  %arrayidx40 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom39
  %28 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx40, align 4
  %shr.i1349 = lshr i32 %add37, 8
  %idxprom42 = and i32 %shr.i1349, 255
  %arrayidx43 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom42
  %30 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx43, align 4
  %xor44 = xor i32 %31, %29
  %shr.i1351 = lshr i32 %add37, 16
  %idxprom46 = and i32 %shr.i1351, 255
  %arrayidx47 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom46
  %32 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx47, align 4
  %xor48 = xor i32 %xor44, %33
  %shr.i1353 = lshr i32 %add37, 24
  %arrayidx51 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1353
  %34 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx51, align 4
  %xor52 = xor i32 %xor48, %35
  %add53 = add i32 %xor52, %xor36
  %xor54 = xor i32 %add53, %1
  %xor55 = xor i32 %xor52, %3
  %arrayidx56 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %36 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx56, align 4
  %xor57 = xor i32 %xor54, %37
  %arrayidx58 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %38 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx58, align 4
  %xor59 = xor i32 %xor55, %39
  %xor60 = xor i32 %xor59, %xor57
  %idxprom62 = and i32 %xor60, 255
  %arrayidx63 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom62
  %40 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx63, align 4
  %shr.i1356 = lshr i32 %xor60, 8
  %idxprom65 = and i32 %shr.i1356, 255
  %arrayidx66 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom65
  %42 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx66, align 4
  %xor67 = xor i32 %43, %41
  %shr.i1358 = lshr i32 %xor60, 16
  %idxprom69 = and i32 %shr.i1358, 255
  %arrayidx70 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom69
  %44 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx70, align 4
  %xor71 = xor i32 %xor67, %45
  %shr.i1360 = lshr i32 %xor60, 24
  %arrayidx74 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1360
  %46 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx74, align 4
  %xor75 = xor i32 %xor71, %47
  %add76 = add i32 %xor75, %xor57
  %idxprom78 = and i32 %add76, 255
  %arrayidx79 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom78
  %48 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx79, align 4
  %shr.i1363 = lshr i32 %add76, 8
  %idxprom81 = and i32 %shr.i1363, 255
  %arrayidx82 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom81
  %50 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx82, align 4
  %xor83 = xor i32 %51, %49
  %shr.i1365 = lshr i32 %add76, 16
  %idxprom85 = and i32 %shr.i1365, 255
  %arrayidx86 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom85
  %52 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx86, align 4
  %xor87 = xor i32 %xor83, %53
  %shr.i1367 = lshr i32 %add76, 24
  %arrayidx90 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1367
  %54 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx90, align 4
  %xor91 = xor i32 %xor87, %55
  %add92 = add i32 %xor91, %xor75
  %idxprom94 = and i32 %add92, 255
  %arrayidx95 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom94
  %56 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx95, align 4
  %shr.i1370 = lshr i32 %add92, 8
  %idxprom97 = and i32 %shr.i1370, 255
  %arrayidx98 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom97
  %58 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx98, align 4
  %xor99 = xor i32 %59, %57
  %shr.i1372 = lshr i32 %add92, 16
  %idxprom101 = and i32 %shr.i1372, 255
  %arrayidx102 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom101
  %60 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx102, align 4
  %xor103 = xor i32 %xor99, %61
  %shr.i1374 = lshr i32 %add92, 24
  %arrayidx106 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1374
  %62 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx106, align 4
  %xor107 = xor i32 %xor103, %63
  %add108 = add i32 %xor107, %xor91
  %xor109 = xor i32 %add108, %5
  %xor110 = xor i32 %xor107, %7
  %arrayidx111 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %64 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx111, align 4
  %xor112 = xor i32 %xor109, %65
  %arrayidx113 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %66 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx113, align 4
  %xor114 = xor i32 %xor110, %67
  %xor115 = xor i32 %xor114, %xor112
  %idxprom117 = and i32 %xor115, 255
  %arrayidx118 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom117
  %68 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx118, align 4
  %shr.i1377 = lshr i32 %xor115, 8
  %idxprom120 = and i32 %shr.i1377, 255
  %arrayidx121 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom120
  %70 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx121, align 4
  %xor122 = xor i32 %71, %69
  %shr.i1379 = lshr i32 %xor115, 16
  %idxprom124 = and i32 %shr.i1379, 255
  %arrayidx125 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom124
  %72 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx125, align 4
  %xor126 = xor i32 %xor122, %73
  %shr.i1381 = lshr i32 %xor115, 24
  %arrayidx129 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1381
  %74 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx129, align 4
  %xor130 = xor i32 %xor126, %75
  %add131 = add i32 %xor130, %xor112
  %idxprom133 = and i32 %add131, 255
  %arrayidx134 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom133
  %76 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx134, align 4
  %shr.i1384 = lshr i32 %add131, 8
  %idxprom136 = and i32 %shr.i1384, 255
  %arrayidx137 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom136
  %78 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx137, align 4
  %xor138 = xor i32 %79, %77
  %shr.i1386 = lshr i32 %add131, 16
  %idxprom140 = and i32 %shr.i1386, 255
  %arrayidx141 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom140
  %80 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx141, align 4
  %xor142 = xor i32 %xor138, %81
  %shr.i1388 = lshr i32 %add131, 24
  %arrayidx145 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1388
  %82 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx145, align 4
  %xor146 = xor i32 %xor142, %83
  %add147 = add i32 %xor146, %xor130
  %idxprom149 = and i32 %add147, 255
  %arrayidx150 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom149
  %84 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx150, align 4
  %shr.i1391 = lshr i32 %add147, 8
  %idxprom152 = and i32 %shr.i1391, 255
  %arrayidx153 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom152
  %86 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx153, align 4
  %xor154 = xor i32 %87, %85
  %shr.i1393 = lshr i32 %add147, 16
  %idxprom156 = and i32 %shr.i1393, 255
  %arrayidx157 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom156
  %88 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx157, align 4
  %xor158 = xor i32 %xor154, %89
  %shr.i1395 = lshr i32 %add147, 24
  %arrayidx161 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1395
  %90 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx161, align 4
  %xor162 = xor i32 %xor158, %91
  %add163 = add i32 %xor162, %xor146
  %xor164 = xor i32 %add163, %xor54
  %xor165 = xor i32 %xor162, %xor55
  %arrayidx166 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %92 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx166, align 4
  %xor167 = xor i32 %xor164, %93
  %arrayidx168 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 12
  %94 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx168, align 4
  %xor169 = xor i32 %xor165, %95
  %xor170 = xor i32 %xor169, %xor167
  %idxprom172 = and i32 %xor170, 255
  %arrayidx173 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom172
  %96 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx173, align 4
  %shr.i1398 = lshr i32 %xor170, 8
  %idxprom175 = and i32 %shr.i1398, 255
  %arrayidx176 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom175
  %98 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx176, align 4
  %xor177 = xor i32 %99, %97
  %shr.i1400 = lshr i32 %xor170, 16
  %idxprom179 = and i32 %shr.i1400, 255
  %arrayidx180 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom179
  %100 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx180, align 4
  %xor181 = xor i32 %xor177, %101
  %shr.i1402 = lshr i32 %xor170, 24
  %arrayidx184 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1402
  %102 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx184, align 4
  %xor185 = xor i32 %xor181, %103
  %add186 = add i32 %xor185, %xor167
  %idxprom188 = and i32 %add186, 255
  %arrayidx189 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom188
  %104 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx189, align 4
  %shr.i1405 = lshr i32 %add186, 8
  %idxprom191 = and i32 %shr.i1405, 255
  %arrayidx192 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom191
  %106 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx192, align 4
  %xor193 = xor i32 %107, %105
  %shr.i1407 = lshr i32 %add186, 16
  %idxprom195 = and i32 %shr.i1407, 255
  %arrayidx196 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom195
  %108 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx196, align 4
  %xor197 = xor i32 %xor193, %109
  %shr.i1409 = lshr i32 %add186, 24
  %arrayidx200 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1409
  %110 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx200, align 4
  %xor201 = xor i32 %xor197, %111
  %add202 = add i32 %xor201, %xor185
  %idxprom204 = and i32 %add202, 255
  %arrayidx205 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom204
  %112 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx205, align 4
  %shr.i1412 = lshr i32 %add202, 8
  %idxprom207 = and i32 %shr.i1412, 255
  %arrayidx208 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom207
  %114 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx208, align 4
  %xor209 = xor i32 %115, %113
  %shr.i1414 = lshr i32 %add202, 16
  %idxprom211 = and i32 %shr.i1414, 255
  %arrayidx212 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom211
  %116 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx212, align 4
  %xor213 = xor i32 %xor209, %117
  %shr.i1416 = lshr i32 %add202, 24
  %arrayidx216 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1416
  %118 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx216, align 4
  %xor217 = xor i32 %xor213, %119
  %add218 = add i32 %xor217, %xor201
  %xor219 = xor i32 %add218, %xor109
  %xor220 = xor i32 %xor217, %xor110
  %arrayidx221 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 16
  %120 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx221, align 4
  %xor222 = xor i32 %xor219, %121
  %arrayidx223 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 20
  %122 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx223, align 4
  %xor224 = xor i32 %xor220, %123
  %xor225 = xor i32 %xor224, %xor222
  %idxprom227 = and i32 %xor225, 255
  %arrayidx228 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom227
  %124 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx228, align 4
  %shr.i1419 = lshr i32 %xor225, 8
  %idxprom230 = and i32 %shr.i1419, 255
  %arrayidx231 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom230
  %126 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx231, align 4
  %xor232 = xor i32 %127, %125
  %shr.i1421 = lshr i32 %xor225, 16
  %idxprom234 = and i32 %shr.i1421, 255
  %arrayidx235 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom234
  %128 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx235, align 4
  %xor236 = xor i32 %xor232, %129
  %shr.i1423 = lshr i32 %xor225, 24
  %arrayidx239 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1423
  %130 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx239, align 4
  %xor240 = xor i32 %xor236, %131
  %add241 = add i32 %xor240, %xor222
  %idxprom243 = and i32 %add241, 255
  %arrayidx244 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom243
  %132 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx244, align 4
  %shr.i1426 = lshr i32 %add241, 8
  %idxprom246 = and i32 %shr.i1426, 255
  %arrayidx247 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom246
  %134 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx247, align 4
  %xor248 = xor i32 %135, %133
  %shr.i1428 = lshr i32 %add241, 16
  %idxprom250 = and i32 %shr.i1428, 255
  %arrayidx251 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom250
  %136 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx251, align 4
  %xor252 = xor i32 %xor248, %137
  %shr.i1430 = lshr i32 %add241, 24
  %arrayidx255 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1430
  %138 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx255, align 4
  %xor256 = xor i32 %xor252, %139
  %add257 = add i32 %xor256, %xor240
  %idxprom259 = and i32 %add257, 255
  %arrayidx260 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom259
  %140 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx260, align 4
  %shr.i1433 = lshr i32 %add257, 8
  %idxprom262 = and i32 %shr.i1433, 255
  %arrayidx263 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom262
  %142 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx263, align 4
  %xor264 = xor i32 %143, %141
  %shr.i1435 = lshr i32 %add257, 16
  %idxprom266 = and i32 %shr.i1435, 255
  %arrayidx267 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom266
  %144 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx267, align 4
  %xor268 = xor i32 %xor264, %145
  %shr.i1437 = lshr i32 %add257, 24
  %arrayidx271 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1437
  %146 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx271, align 4
  %xor272 = xor i32 %xor268, %147
  %add273 = add i32 %xor272, %xor256
  %xor274 = xor i32 %add273, %xor164
  %xor275 = xor i32 %xor272, %xor165
  %arrayidx276 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %148 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx276, align 4
  %xor277 = xor i32 %xor274, %149
  %arrayidx278 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %150 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx278, align 4
  %xor279 = xor i32 %xor275, %151
  %xor280 = xor i32 %xor279, %xor277
  %idxprom282 = and i32 %xor280, 255
  %arrayidx283 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom282
  %152 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx283, align 4
  %shr.i1440 = lshr i32 %xor280, 8
  %idxprom285 = and i32 %shr.i1440, 255
  %arrayidx286 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom285
  %154 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx286, align 4
  %xor287 = xor i32 %155, %153
  %shr.i1442 = lshr i32 %xor280, 16
  %idxprom289 = and i32 %shr.i1442, 255
  %arrayidx290 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom289
  %156 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx290, align 4
  %xor291 = xor i32 %xor287, %157
  %shr.i1444 = lshr i32 %xor280, 24
  %arrayidx294 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1444
  %158 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx294, align 4
  %xor295 = xor i32 %xor291, %159
  %add296 = add i32 %xor295, %xor277
  %idxprom298 = and i32 %add296, 255
  %arrayidx299 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom298
  %160 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx299, align 4
  %shr.i1447 = lshr i32 %add296, 8
  %idxprom301 = and i32 %shr.i1447, 255
  %arrayidx302 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom301
  %162 = ptrtoint ptr %arrayidx302 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx302, align 4
  %xor303 = xor i32 %163, %161
  %shr.i1449 = lshr i32 %add296, 16
  %idxprom305 = and i32 %shr.i1449, 255
  %arrayidx306 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom305
  %164 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx306, align 4
  %xor307 = xor i32 %xor303, %165
  %shr.i1451 = lshr i32 %add296, 24
  %arrayidx310 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1451
  %166 = ptrtoint ptr %arrayidx310 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx310, align 4
  %xor311 = xor i32 %xor307, %167
  %add312 = add i32 %xor311, %xor295
  %idxprom314 = and i32 %add312, 255
  %arrayidx315 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom314
  %168 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx315, align 4
  %shr.i1454 = lshr i32 %add312, 8
  %idxprom317 = and i32 %shr.i1454, 255
  %arrayidx318 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom317
  %170 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx318, align 4
  %xor319 = xor i32 %171, %169
  %shr.i1456 = lshr i32 %add312, 16
  %idxprom321 = and i32 %shr.i1456, 255
  %arrayidx322 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom321
  %172 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx322, align 4
  %xor323 = xor i32 %xor319, %173
  %shr.i1458 = lshr i32 %add312, 24
  %arrayidx326 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1458
  %174 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx326, align 4
  %xor327 = xor i32 %xor323, %175
  %add328 = add i32 %xor327, %xor311
  %xor329 = xor i32 %add328, %xor219
  %xor330 = xor i32 %xor327, %xor220
  %arrayidx331 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 32
  %176 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx331, align 4
  %xor332 = xor i32 %xor329, %177
  %arrayidx333 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 36
  %178 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx333, align 4
  %xor334 = xor i32 %xor330, %179
  %xor335 = xor i32 %xor334, %xor332
  %idxprom337 = and i32 %xor335, 255
  %arrayidx338 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom337
  %180 = ptrtoint ptr %arrayidx338 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx338, align 4
  %shr.i1461 = lshr i32 %xor335, 8
  %idxprom340 = and i32 %shr.i1461, 255
  %arrayidx341 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom340
  %182 = ptrtoint ptr %arrayidx341 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx341, align 4
  %xor342 = xor i32 %183, %181
  %shr.i1463 = lshr i32 %xor335, 16
  %idxprom344 = and i32 %shr.i1463, 255
  %arrayidx345 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom344
  %184 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx345, align 4
  %xor346 = xor i32 %xor342, %185
  %shr.i1465 = lshr i32 %xor335, 24
  %arrayidx349 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1465
  %186 = ptrtoint ptr %arrayidx349 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx349, align 4
  %xor350 = xor i32 %xor346, %187
  %add351 = add i32 %xor350, %xor332
  %idxprom353 = and i32 %add351, 255
  %arrayidx354 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom353
  %188 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx354, align 4
  %shr.i1468 = lshr i32 %add351, 8
  %idxprom356 = and i32 %shr.i1468, 255
  %arrayidx357 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom356
  %190 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx357, align 4
  %xor358 = xor i32 %191, %189
  %shr.i1470 = lshr i32 %add351, 16
  %idxprom360 = and i32 %shr.i1470, 255
  %arrayidx361 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom360
  %192 = ptrtoint ptr %arrayidx361 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx361, align 4
  %xor362 = xor i32 %xor358, %193
  %shr.i1472 = lshr i32 %add351, 24
  %arrayidx365 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1472
  %194 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx365, align 4
  %xor366 = xor i32 %xor362, %195
  %add367 = add i32 %xor366, %xor350
  %idxprom369 = and i32 %add367, 255
  %arrayidx370 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom369
  %196 = ptrtoint ptr %arrayidx370 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx370, align 4
  %shr.i1475 = lshr i32 %add367, 8
  %idxprom372 = and i32 %shr.i1475, 255
  %arrayidx373 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom372
  %198 = ptrtoint ptr %arrayidx373 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx373, align 4
  %xor374 = xor i32 %199, %197
  %shr.i1477 = lshr i32 %add367, 16
  %idxprom376 = and i32 %shr.i1477, 255
  %arrayidx377 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom376
  %200 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx377, align 4
  %xor378 = xor i32 %xor374, %201
  %shr.i1479 = lshr i32 %add367, 24
  %arrayidx381 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1479
  %202 = ptrtoint ptr %arrayidx381 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx381, align 4
  %xor382 = xor i32 %xor378, %203
  %add383 = add i32 %xor382, %xor366
  %xor384 = xor i32 %add383, %xor274
  %xor385 = xor i32 %xor382, %xor275
  %arrayidx386 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 40
  %204 = ptrtoint ptr %arrayidx386 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx386, align 4
  %xor387 = xor i32 %xor384, %205
  %arrayidx388 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 44
  %206 = ptrtoint ptr %arrayidx388 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx388, align 4
  %xor389 = xor i32 %xor385, %207
  %xor390 = xor i32 %xor389, %xor387
  %idxprom392 = and i32 %xor390, 255
  %arrayidx393 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom392
  %208 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx393, align 4
  %shr.i1482 = lshr i32 %xor390, 8
  %idxprom395 = and i32 %shr.i1482, 255
  %arrayidx396 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom395
  %210 = ptrtoint ptr %arrayidx396 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx396, align 4
  %xor397 = xor i32 %211, %209
  %shr.i1484 = lshr i32 %xor390, 16
  %idxprom399 = and i32 %shr.i1484, 255
  %arrayidx400 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom399
  %212 = ptrtoint ptr %arrayidx400 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx400, align 4
  %xor401 = xor i32 %xor397, %213
  %shr.i1486 = lshr i32 %xor390, 24
  %arrayidx404 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1486
  %214 = ptrtoint ptr %arrayidx404 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx404, align 4
  %xor405 = xor i32 %xor401, %215
  %add406 = add i32 %xor405, %xor387
  %idxprom408 = and i32 %add406, 255
  %arrayidx409 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom408
  %216 = ptrtoint ptr %arrayidx409 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx409, align 4
  %shr.i1489 = lshr i32 %add406, 8
  %idxprom411 = and i32 %shr.i1489, 255
  %arrayidx412 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom411
  %218 = ptrtoint ptr %arrayidx412 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx412, align 4
  %xor413 = xor i32 %219, %217
  %shr.i1491 = lshr i32 %add406, 16
  %idxprom415 = and i32 %shr.i1491, 255
  %arrayidx416 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom415
  %220 = ptrtoint ptr %arrayidx416 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx416, align 4
  %xor417 = xor i32 %xor413, %221
  %shr.i1493 = lshr i32 %add406, 24
  %arrayidx420 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1493
  %222 = ptrtoint ptr %arrayidx420 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx420, align 4
  %xor421 = xor i32 %xor417, %223
  %add422 = add i32 %xor421, %xor405
  %idxprom424 = and i32 %add422, 255
  %arrayidx425 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom424
  %224 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx425, align 4
  %shr.i1496 = lshr i32 %add422, 8
  %idxprom427 = and i32 %shr.i1496, 255
  %arrayidx428 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom427
  %226 = ptrtoint ptr %arrayidx428 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx428, align 4
  %xor429 = xor i32 %227, %225
  %shr.i1498 = lshr i32 %add422, 16
  %idxprom431 = and i32 %shr.i1498, 255
  %arrayidx432 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom431
  %228 = ptrtoint ptr %arrayidx432 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx432, align 4
  %xor433 = xor i32 %xor429, %229
  %shr.i1500 = lshr i32 %add422, 24
  %arrayidx436 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1500
  %230 = ptrtoint ptr %arrayidx436 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx436, align 4
  %xor437 = xor i32 %xor433, %231
  %add438 = add i32 %xor437, %xor421
  %xor439 = xor i32 %add438, %xor329
  %xor440 = xor i32 %xor437, %xor330
  %arrayidx441 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 48
  %232 = ptrtoint ptr %arrayidx441 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx441, align 4
  %xor442 = xor i32 %xor439, %233
  %arrayidx443 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 52
  %234 = ptrtoint ptr %arrayidx443 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx443, align 4
  %xor444 = xor i32 %xor440, %235
  %xor445 = xor i32 %xor444, %xor442
  %idxprom447 = and i32 %xor445, 255
  %arrayidx448 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom447
  %236 = ptrtoint ptr %arrayidx448 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx448, align 4
  %shr.i1503 = lshr i32 %xor445, 8
  %idxprom450 = and i32 %shr.i1503, 255
  %arrayidx451 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom450
  %238 = ptrtoint ptr %arrayidx451 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx451, align 4
  %xor452 = xor i32 %239, %237
  %shr.i1505 = lshr i32 %xor445, 16
  %idxprom454 = and i32 %shr.i1505, 255
  %arrayidx455 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom454
  %240 = ptrtoint ptr %arrayidx455 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx455, align 4
  %xor456 = xor i32 %xor452, %241
  %shr.i1507 = lshr i32 %xor445, 24
  %arrayidx459 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1507
  %242 = ptrtoint ptr %arrayidx459 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx459, align 4
  %xor460 = xor i32 %xor456, %243
  %add461 = add i32 %xor460, %xor442
  %idxprom463 = and i32 %add461, 255
  %arrayidx464 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom463
  %244 = ptrtoint ptr %arrayidx464 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx464, align 4
  %shr.i1510 = lshr i32 %add461, 8
  %idxprom466 = and i32 %shr.i1510, 255
  %arrayidx467 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom466
  %246 = ptrtoint ptr %arrayidx467 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx467, align 4
  %xor468 = xor i32 %247, %245
  %shr.i1512 = lshr i32 %add461, 16
  %idxprom470 = and i32 %shr.i1512, 255
  %arrayidx471 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom470
  %248 = ptrtoint ptr %arrayidx471 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx471, align 4
  %xor472 = xor i32 %xor468, %249
  %shr.i1514 = lshr i32 %add461, 24
  %arrayidx475 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1514
  %250 = ptrtoint ptr %arrayidx475 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx475, align 4
  %xor476 = xor i32 %xor472, %251
  %add477 = add i32 %xor476, %xor460
  %idxprom479 = and i32 %add477, 255
  %arrayidx480 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom479
  %252 = ptrtoint ptr %arrayidx480 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx480, align 4
  %shr.i1517 = lshr i32 %add477, 8
  %idxprom482 = and i32 %shr.i1517, 255
  %arrayidx483 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom482
  %254 = ptrtoint ptr %arrayidx483 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx483, align 4
  %xor484 = xor i32 %255, %253
  %shr.i1519 = lshr i32 %add477, 16
  %idxprom486 = and i32 %shr.i1519, 255
  %arrayidx487 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom486
  %256 = ptrtoint ptr %arrayidx487 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx487, align 4
  %xor488 = xor i32 %xor484, %257
  %shr.i1521 = lshr i32 %add477, 24
  %arrayidx491 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1521
  %258 = ptrtoint ptr %arrayidx491 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx491, align 4
  %xor492 = xor i32 %xor488, %259
  %add493 = add i32 %xor492, %xor476
  %xor494 = xor i32 %add493, %xor384
  %xor495 = xor i32 %xor492, %xor385
  %arrayidx496 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 56
  %260 = ptrtoint ptr %arrayidx496 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx496, align 4
  %xor497 = xor i32 %xor494, %261
  %arrayidx498 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 60
  %262 = ptrtoint ptr %arrayidx498 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx498, align 4
  %xor499 = xor i32 %xor495, %263
  %xor500 = xor i32 %xor499, %xor497
  %idxprom502 = and i32 %xor500, 255
  %arrayidx503 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom502
  %264 = ptrtoint ptr %arrayidx503 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx503, align 4
  %shr.i1524 = lshr i32 %xor500, 8
  %idxprom505 = and i32 %shr.i1524, 255
  %arrayidx506 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom505
  %266 = ptrtoint ptr %arrayidx506 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx506, align 4
  %xor507 = xor i32 %267, %265
  %shr.i1526 = lshr i32 %xor500, 16
  %idxprom509 = and i32 %shr.i1526, 255
  %arrayidx510 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom509
  %268 = ptrtoint ptr %arrayidx510 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx510, align 4
  %xor511 = xor i32 %xor507, %269
  %shr.i1528 = lshr i32 %xor500, 24
  %arrayidx514 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1528
  %270 = ptrtoint ptr %arrayidx514 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx514, align 4
  %xor515 = xor i32 %xor511, %271
  %add516 = add i32 %xor515, %xor497
  %idxprom518 = and i32 %add516, 255
  %arrayidx519 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom518
  %272 = ptrtoint ptr %arrayidx519 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx519, align 4
  %shr.i1531 = lshr i32 %add516, 8
  %idxprom521 = and i32 %shr.i1531, 255
  %arrayidx522 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom521
  %274 = ptrtoint ptr %arrayidx522 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx522, align 4
  %xor523 = xor i32 %275, %273
  %shr.i1533 = lshr i32 %add516, 16
  %idxprom525 = and i32 %shr.i1533, 255
  %arrayidx526 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom525
  %276 = ptrtoint ptr %arrayidx526 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx526, align 4
  %xor527 = xor i32 %xor523, %277
  %shr.i1535 = lshr i32 %add516, 24
  %arrayidx530 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1535
  %278 = ptrtoint ptr %arrayidx530 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx530, align 4
  %xor531 = xor i32 %xor527, %279
  %add532 = add i32 %xor531, %xor515
  %idxprom534 = and i32 %add532, 255
  %arrayidx535 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom534
  %280 = ptrtoint ptr %arrayidx535 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx535, align 4
  %shr.i1538 = lshr i32 %add532, 8
  %idxprom537 = and i32 %shr.i1538, 255
  %arrayidx538 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom537
  %282 = ptrtoint ptr %arrayidx538 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx538, align 4
  %xor539 = xor i32 %283, %281
  %shr.i1540 = lshr i32 %add532, 16
  %idxprom541 = and i32 %shr.i1540, 255
  %arrayidx542 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom541
  %284 = ptrtoint ptr %arrayidx542 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx542, align 4
  %xor543 = xor i32 %xor539, %285
  %shr.i1542 = lshr i32 %add532, 24
  %arrayidx546 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1542
  %286 = ptrtoint ptr %arrayidx546 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %arrayidx546, align 4
  %xor547 = xor i32 %xor543, %287
  %add548 = add i32 %xor547, %xor531
  %xor549 = xor i32 %add548, %xor439
  %xor550 = xor i32 %xor547, %xor440
  %arrayidx551 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 64
  %288 = ptrtoint ptr %arrayidx551 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %arrayidx551, align 4
  %xor552 = xor i32 %xor549, %289
  %arrayidx553 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 68
  %290 = ptrtoint ptr %arrayidx553 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx553, align 4
  %xor554 = xor i32 %xor550, %291
  %xor555 = xor i32 %xor554, %xor552
  %idxprom557 = and i32 %xor555, 255
  %arrayidx558 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom557
  %292 = ptrtoint ptr %arrayidx558 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %arrayidx558, align 4
  %shr.i1545 = lshr i32 %xor555, 8
  %idxprom560 = and i32 %shr.i1545, 255
  %arrayidx561 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom560
  %294 = ptrtoint ptr %arrayidx561 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %arrayidx561, align 4
  %xor562 = xor i32 %295, %293
  %shr.i1547 = lshr i32 %xor555, 16
  %idxprom564 = and i32 %shr.i1547, 255
  %arrayidx565 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom564
  %296 = ptrtoint ptr %arrayidx565 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx565, align 4
  %xor566 = xor i32 %xor562, %297
  %shr.i1549 = lshr i32 %xor555, 24
  %arrayidx569 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1549
  %298 = ptrtoint ptr %arrayidx569 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx569, align 4
  %xor570 = xor i32 %xor566, %299
  %add571 = add i32 %xor570, %xor552
  %idxprom573 = and i32 %add571, 255
  %arrayidx574 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom573
  %300 = ptrtoint ptr %arrayidx574 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %arrayidx574, align 4
  %shr.i1552 = lshr i32 %add571, 8
  %idxprom576 = and i32 %shr.i1552, 255
  %arrayidx577 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom576
  %302 = ptrtoint ptr %arrayidx577 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %arrayidx577, align 4
  %xor578 = xor i32 %303, %301
  %shr.i1554 = lshr i32 %add571, 16
  %idxprom580 = and i32 %shr.i1554, 255
  %arrayidx581 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom580
  %304 = ptrtoint ptr %arrayidx581 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %arrayidx581, align 4
  %xor582 = xor i32 %xor578, %305
  %shr.i1556 = lshr i32 %add571, 24
  %arrayidx585 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1556
  %306 = ptrtoint ptr %arrayidx585 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %arrayidx585, align 4
  %xor586 = xor i32 %xor582, %307
  %add587 = add i32 %xor586, %xor570
  %idxprom589 = and i32 %add587, 255
  %arrayidx590 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom589
  %308 = ptrtoint ptr %arrayidx590 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %arrayidx590, align 4
  %shr.i1559 = lshr i32 %add587, 8
  %idxprom592 = and i32 %shr.i1559, 255
  %arrayidx593 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom592
  %310 = ptrtoint ptr %arrayidx593 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx593, align 4
  %xor594 = xor i32 %311, %309
  %shr.i1561 = lshr i32 %add587, 16
  %idxprom596 = and i32 %shr.i1561, 255
  %arrayidx597 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom596
  %312 = ptrtoint ptr %arrayidx597 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %arrayidx597, align 4
  %xor598 = xor i32 %xor594, %313
  %shr.i1563 = lshr i32 %add587, 24
  %arrayidx601 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1563
  %314 = ptrtoint ptr %arrayidx601 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx601, align 4
  %xor602 = xor i32 %xor598, %315
  %add603 = add i32 %xor602, %xor586
  %xor604 = xor i32 %add603, %xor494
  %xor605 = xor i32 %xor602, %xor495
  %arrayidx606 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 72
  %316 = ptrtoint ptr %arrayidx606 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %arrayidx606, align 4
  %xor607 = xor i32 %xor604, %317
  %arrayidx608 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 76
  %318 = ptrtoint ptr %arrayidx608 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %arrayidx608, align 4
  %xor609 = xor i32 %xor605, %319
  %xor610 = xor i32 %xor609, %xor607
  %idxprom612 = and i32 %xor610, 255
  %arrayidx613 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom612
  %320 = ptrtoint ptr %arrayidx613 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %arrayidx613, align 4
  %shr.i1566 = lshr i32 %xor610, 8
  %idxprom615 = and i32 %shr.i1566, 255
  %arrayidx616 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom615
  %322 = ptrtoint ptr %arrayidx616 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %arrayidx616, align 4
  %xor617 = xor i32 %323, %321
  %shr.i1568 = lshr i32 %xor610, 16
  %idxprom619 = and i32 %shr.i1568, 255
  %arrayidx620 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom619
  %324 = ptrtoint ptr %arrayidx620 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %arrayidx620, align 4
  %xor621 = xor i32 %xor617, %325
  %shr.i1570 = lshr i32 %xor610, 24
  %arrayidx624 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1570
  %326 = ptrtoint ptr %arrayidx624 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %arrayidx624, align 4
  %xor625 = xor i32 %xor621, %327
  %add626 = add i32 %xor625, %xor607
  %idxprom628 = and i32 %add626, 255
  %arrayidx629 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom628
  %328 = ptrtoint ptr %arrayidx629 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %arrayidx629, align 4
  %shr.i1573 = lshr i32 %add626, 8
  %idxprom631 = and i32 %shr.i1573, 255
  %arrayidx632 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom631
  %330 = ptrtoint ptr %arrayidx632 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %arrayidx632, align 4
  %xor633 = xor i32 %331, %329
  %shr.i1575 = lshr i32 %add626, 16
  %idxprom635 = and i32 %shr.i1575, 255
  %arrayidx636 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom635
  %332 = ptrtoint ptr %arrayidx636 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %arrayidx636, align 4
  %xor637 = xor i32 %xor633, %333
  %shr.i1577 = lshr i32 %add626, 24
  %arrayidx640 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1577
  %334 = ptrtoint ptr %arrayidx640 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %arrayidx640, align 4
  %xor641 = xor i32 %xor637, %335
  %add642 = add i32 %xor641, %xor625
  %idxprom644 = and i32 %add642, 255
  %arrayidx645 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom644
  %336 = ptrtoint ptr %arrayidx645 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %arrayidx645, align 4
  %shr.i1580 = lshr i32 %add642, 8
  %idxprom647 = and i32 %shr.i1580, 255
  %arrayidx648 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom647
  %338 = ptrtoint ptr %arrayidx648 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %arrayidx648, align 4
  %xor649 = xor i32 %339, %337
  %shr.i1582 = lshr i32 %add642, 16
  %idxprom651 = and i32 %shr.i1582, 255
  %arrayidx652 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom651
  %340 = ptrtoint ptr %arrayidx652 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %arrayidx652, align 4
  %xor653 = xor i32 %xor649, %341
  %shr.i1584 = lshr i32 %add642, 24
  %arrayidx656 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1584
  %342 = ptrtoint ptr %arrayidx656 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %arrayidx656, align 4
  %xor657 = xor i32 %xor653, %343
  %add658 = add i32 %xor657, %xor641
  %xor659 = xor i32 %add658, %xor549
  %xor660 = xor i32 %xor657, %xor550
  %arrayidx661 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 80
  %344 = ptrtoint ptr %arrayidx661 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %arrayidx661, align 4
  %xor662 = xor i32 %xor659, %345
  %arrayidx663 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 84
  %346 = ptrtoint ptr %arrayidx663 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %arrayidx663, align 4
  %xor664 = xor i32 %xor660, %347
  %xor665 = xor i32 %xor664, %xor662
  %idxprom667 = and i32 %xor665, 255
  %arrayidx668 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom667
  %348 = ptrtoint ptr %arrayidx668 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %arrayidx668, align 4
  %shr.i1587 = lshr i32 %xor665, 8
  %idxprom670 = and i32 %shr.i1587, 255
  %arrayidx671 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom670
  %350 = ptrtoint ptr %arrayidx671 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %arrayidx671, align 4
  %xor672 = xor i32 %351, %349
  %shr.i1589 = lshr i32 %xor665, 16
  %idxprom674 = and i32 %shr.i1589, 255
  %arrayidx675 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom674
  %352 = ptrtoint ptr %arrayidx675 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %arrayidx675, align 4
  %xor676 = xor i32 %xor672, %353
  %shr.i1591 = lshr i32 %xor665, 24
  %arrayidx679 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1591
  %354 = ptrtoint ptr %arrayidx679 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %arrayidx679, align 4
  %xor680 = xor i32 %xor676, %355
  %add681 = add i32 %xor680, %xor662
  %idxprom683 = and i32 %add681, 255
  %arrayidx684 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom683
  %356 = ptrtoint ptr %arrayidx684 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %arrayidx684, align 4
  %shr.i1594 = lshr i32 %add681, 8
  %idxprom686 = and i32 %shr.i1594, 255
  %arrayidx687 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom686
  %358 = ptrtoint ptr %arrayidx687 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %arrayidx687, align 4
  %xor688 = xor i32 %359, %357
  %shr.i1596 = lshr i32 %add681, 16
  %idxprom690 = and i32 %shr.i1596, 255
  %arrayidx691 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom690
  %360 = ptrtoint ptr %arrayidx691 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %arrayidx691, align 4
  %xor692 = xor i32 %xor688, %361
  %shr.i1598 = lshr i32 %add681, 24
  %arrayidx695 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1598
  %362 = ptrtoint ptr %arrayidx695 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %arrayidx695, align 4
  %xor696 = xor i32 %xor692, %363
  %add697 = add i32 %xor696, %xor680
  %idxprom699 = and i32 %add697, 255
  %arrayidx700 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom699
  %364 = ptrtoint ptr %arrayidx700 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %arrayidx700, align 4
  %shr.i1601 = lshr i32 %add697, 8
  %idxprom702 = and i32 %shr.i1601, 255
  %arrayidx703 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom702
  %366 = ptrtoint ptr %arrayidx703 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %arrayidx703, align 4
  %xor704 = xor i32 %367, %365
  %shr.i1603 = lshr i32 %add697, 16
  %idxprom706 = and i32 %shr.i1603, 255
  %arrayidx707 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom706
  %368 = ptrtoint ptr %arrayidx707 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %arrayidx707, align 4
  %xor708 = xor i32 %xor704, %369
  %shr.i1605 = lshr i32 %add697, 24
  %arrayidx711 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1605
  %370 = ptrtoint ptr %arrayidx711 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %arrayidx711, align 4
  %xor712 = xor i32 %xor708, %371
  %add713 = add i32 %xor712, %xor696
  %xor714 = xor i32 %add713, %xor604
  %xor715 = xor i32 %xor712, %xor605
  %arrayidx716 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 88
  %372 = ptrtoint ptr %arrayidx716 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %arrayidx716, align 4
  %xor717 = xor i32 %xor714, %373
  %arrayidx718 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 92
  %374 = ptrtoint ptr %arrayidx718 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %arrayidx718, align 4
  %xor719 = xor i32 %xor715, %375
  %xor720 = xor i32 %xor719, %xor717
  %idxprom722 = and i32 %xor720, 255
  %arrayidx723 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom722
  %376 = ptrtoint ptr %arrayidx723 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %arrayidx723, align 4
  %shr.i1608 = lshr i32 %xor720, 8
  %idxprom725 = and i32 %shr.i1608, 255
  %arrayidx726 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom725
  %378 = ptrtoint ptr %arrayidx726 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %arrayidx726, align 4
  %xor727 = xor i32 %379, %377
  %shr.i1610 = lshr i32 %xor720, 16
  %idxprom729 = and i32 %shr.i1610, 255
  %arrayidx730 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom729
  %380 = ptrtoint ptr %arrayidx730 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %arrayidx730, align 4
  %xor731 = xor i32 %xor727, %381
  %shr.i1612 = lshr i32 %xor720, 24
  %arrayidx734 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1612
  %382 = ptrtoint ptr %arrayidx734 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %arrayidx734, align 4
  %xor735 = xor i32 %xor731, %383
  %add736 = add i32 %xor735, %xor717
  %idxprom738 = and i32 %add736, 255
  %arrayidx739 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom738
  %384 = ptrtoint ptr %arrayidx739 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %arrayidx739, align 4
  %shr.i1615 = lshr i32 %add736, 8
  %idxprom741 = and i32 %shr.i1615, 255
  %arrayidx742 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom741
  %386 = ptrtoint ptr %arrayidx742 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %arrayidx742, align 4
  %xor743 = xor i32 %387, %385
  %shr.i1617 = lshr i32 %add736, 16
  %idxprom745 = and i32 %shr.i1617, 255
  %arrayidx746 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom745
  %388 = ptrtoint ptr %arrayidx746 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %arrayidx746, align 4
  %xor747 = xor i32 %xor743, %389
  %shr.i1619 = lshr i32 %add736, 24
  %arrayidx750 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1619
  %390 = ptrtoint ptr %arrayidx750 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %arrayidx750, align 4
  %xor751 = xor i32 %xor747, %391
  %add752 = add i32 %xor751, %xor735
  %idxprom754 = and i32 %add752, 255
  %arrayidx755 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom754
  %392 = ptrtoint ptr %arrayidx755 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %arrayidx755, align 4
  %shr.i1622 = lshr i32 %add752, 8
  %idxprom757 = and i32 %shr.i1622, 255
  %arrayidx758 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom757
  %394 = ptrtoint ptr %arrayidx758 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %arrayidx758, align 4
  %xor759 = xor i32 %395, %393
  %shr.i1624 = lshr i32 %add752, 16
  %idxprom761 = and i32 %shr.i1624, 255
  %arrayidx762 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom761
  %396 = ptrtoint ptr %arrayidx762 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %arrayidx762, align 4
  %xor763 = xor i32 %xor759, %397
  %shr.i1626 = lshr i32 %add752, 24
  %arrayidx766 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1626
  %398 = ptrtoint ptr %arrayidx766 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %arrayidx766, align 4
  %xor767 = xor i32 %xor763, %399
  %add768 = add i32 %xor767, %xor751
  %xor769 = xor i32 %add768, %xor659
  %xor770 = xor i32 %xor767, %xor660
  %arrayidx771 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 96
  %400 = ptrtoint ptr %arrayidx771 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %arrayidx771, align 4
  %xor772 = xor i32 %xor769, %401
  %arrayidx773 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 100
  %402 = ptrtoint ptr %arrayidx773 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %arrayidx773, align 4
  %xor774 = xor i32 %xor770, %403
  %xor775 = xor i32 %xor774, %xor772
  %idxprom777 = and i32 %xor775, 255
  %arrayidx778 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom777
  %404 = ptrtoint ptr %arrayidx778 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %arrayidx778, align 4
  %shr.i1629 = lshr i32 %xor775, 8
  %idxprom780 = and i32 %shr.i1629, 255
  %arrayidx781 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom780
  %406 = ptrtoint ptr %arrayidx781 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %arrayidx781, align 4
  %xor782 = xor i32 %407, %405
  %shr.i1631 = lshr i32 %xor775, 16
  %idxprom784 = and i32 %shr.i1631, 255
  %arrayidx785 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom784
  %408 = ptrtoint ptr %arrayidx785 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %arrayidx785, align 4
  %xor786 = xor i32 %xor782, %409
  %shr.i1633 = lshr i32 %xor775, 24
  %arrayidx789 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1633
  %410 = ptrtoint ptr %arrayidx789 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %arrayidx789, align 4
  %xor790 = xor i32 %xor786, %411
  %add791 = add i32 %xor790, %xor772
  %idxprom793 = and i32 %add791, 255
  %arrayidx794 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom793
  %412 = ptrtoint ptr %arrayidx794 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %arrayidx794, align 4
  %shr.i1636 = lshr i32 %add791, 8
  %idxprom796 = and i32 %shr.i1636, 255
  %arrayidx797 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom796
  %414 = ptrtoint ptr %arrayidx797 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %arrayidx797, align 4
  %xor798 = xor i32 %415, %413
  %shr.i1638 = lshr i32 %add791, 16
  %idxprom800 = and i32 %shr.i1638, 255
  %arrayidx801 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom800
  %416 = ptrtoint ptr %arrayidx801 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %arrayidx801, align 4
  %xor802 = xor i32 %xor798, %417
  %shr.i1640 = lshr i32 %add791, 24
  %arrayidx805 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1640
  %418 = ptrtoint ptr %arrayidx805 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %arrayidx805, align 4
  %xor806 = xor i32 %xor802, %419
  %add807 = add i32 %xor806, %xor790
  %idxprom809 = and i32 %add807, 255
  %arrayidx810 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom809
  %420 = ptrtoint ptr %arrayidx810 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %arrayidx810, align 4
  %shr.i1643 = lshr i32 %add807, 8
  %idxprom812 = and i32 %shr.i1643, 255
  %arrayidx813 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom812
  %422 = ptrtoint ptr %arrayidx813 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %arrayidx813, align 4
  %xor814 = xor i32 %423, %421
  %shr.i1645 = lshr i32 %add807, 16
  %idxprom816 = and i32 %shr.i1645, 255
  %arrayidx817 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom816
  %424 = ptrtoint ptr %arrayidx817 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %arrayidx817, align 4
  %xor818 = xor i32 %xor814, %425
  %shr.i1647 = lshr i32 %add807, 24
  %arrayidx821 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1647
  %426 = ptrtoint ptr %arrayidx821 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %arrayidx821, align 4
  %xor822 = xor i32 %xor818, %427
  %add823 = add i32 %xor822, %xor806
  %xor824 = xor i32 %add823, %xor714
  %xor825 = xor i32 %xor822, %xor715
  %arrayidx826 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 104
  %428 = ptrtoint ptr %arrayidx826 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %arrayidx826, align 4
  %xor827 = xor i32 %xor824, %429
  %arrayidx828 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 108
  %430 = ptrtoint ptr %arrayidx828 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %arrayidx828, align 4
  %xor829 = xor i32 %xor825, %431
  %xor830 = xor i32 %xor829, %xor827
  %idxprom832 = and i32 %xor830, 255
  %arrayidx833 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom832
  %432 = ptrtoint ptr %arrayidx833 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %arrayidx833, align 4
  %shr.i1650 = lshr i32 %xor830, 8
  %idxprom835 = and i32 %shr.i1650, 255
  %arrayidx836 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom835
  %434 = ptrtoint ptr %arrayidx836 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %arrayidx836, align 4
  %xor837 = xor i32 %435, %433
  %shr.i1652 = lshr i32 %xor830, 16
  %idxprom839 = and i32 %shr.i1652, 255
  %arrayidx840 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom839
  %436 = ptrtoint ptr %arrayidx840 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %arrayidx840, align 4
  %xor841 = xor i32 %xor837, %437
  %shr.i1654 = lshr i32 %xor830, 24
  %arrayidx844 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1654
  %438 = ptrtoint ptr %arrayidx844 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %arrayidx844, align 4
  %xor845 = xor i32 %xor841, %439
  %add846 = add i32 %xor845, %xor827
  %idxprom848 = and i32 %add846, 255
  %arrayidx849 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom848
  %440 = ptrtoint ptr %arrayidx849 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %arrayidx849, align 4
  %shr.i1657 = lshr i32 %add846, 8
  %idxprom851 = and i32 %shr.i1657, 255
  %arrayidx852 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom851
  %442 = ptrtoint ptr %arrayidx852 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %arrayidx852, align 4
  %xor853 = xor i32 %443, %441
  %shr.i1659 = lshr i32 %add846, 16
  %idxprom855 = and i32 %shr.i1659, 255
  %arrayidx856 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom855
  %444 = ptrtoint ptr %arrayidx856 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %arrayidx856, align 4
  %xor857 = xor i32 %xor853, %445
  %shr.i1661 = lshr i32 %add846, 24
  %arrayidx860 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1661
  %446 = ptrtoint ptr %arrayidx860 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %arrayidx860, align 4
  %xor861 = xor i32 %xor857, %447
  %add862 = add i32 %xor861, %xor845
  %idxprom864 = and i32 %add862, 255
  %arrayidx865 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom864
  %448 = ptrtoint ptr %arrayidx865 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %arrayidx865, align 4
  %shr.i1664 = lshr i32 %add862, 8
  %idxprom867 = and i32 %shr.i1664, 255
  %arrayidx868 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom867
  %450 = ptrtoint ptr %arrayidx868 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %arrayidx868, align 4
  %xor869 = xor i32 %451, %449
  %shr.i1666 = lshr i32 %add862, 16
  %idxprom871 = and i32 %shr.i1666, 255
  %arrayidx872 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom871
  %452 = ptrtoint ptr %arrayidx872 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %arrayidx872, align 4
  %xor873 = xor i32 %xor869, %453
  %shr.i1668 = lshr i32 %add862, 24
  %arrayidx876 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1668
  %454 = ptrtoint ptr %arrayidx876 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %arrayidx876, align 4
  %xor877 = xor i32 %xor873, %455
  %add878 = add i32 %xor877, %xor861
  %xor879 = xor i32 %add878, %xor769
  %xor880 = xor i32 %xor877, %xor770
  %456 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 %xor879, ptr %out, align 4
  %arrayidx882 = getelementptr i32, ptr %out, i32 1
  %457 = ptrtoint ptr %arrayidx882 to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 %xor880, ptr %arrayidx882, align 4
  %arrayidx883 = getelementptr i32, ptr %out, i32 2
  %458 = ptrtoint ptr %arrayidx883 to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 %xor824, ptr %arrayidx883, align 4
  %arrayidx884 = getelementptr i32, ptr %out, i32 3
  %459 = ptrtoint ptr %arrayidx884 to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 %xor825, ptr %arrayidx884, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @seed_decrypt(ptr noundef readonly %tfm, ptr nocapture noundef writeonly %out, ptr nocapture noundef readonly %in) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in, align 4
  %arrayidx1 = getelementptr i32, ptr %in, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr i32, ptr %in, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %in, i32 3
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 104
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %xor = xor i32 %9, %5
  %arrayidx5 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 108
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5, align 4
  %xor6 = xor i32 %11, %7
  %xor7 = xor i32 %xor6, %xor
  %idxprom = and i32 %xor7, 255
  %arrayidx9 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9, align 4
  %shr.i = lshr i32 %xor7, 8
  %idxprom11 = and i32 %shr.i, 255
  %arrayidx12 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom11
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx12, align 4
  %xor13 = xor i32 %15, %13
  %shr.i1337 = lshr i32 %xor7, 16
  %idxprom15 = and i32 %shr.i1337, 255
  %arrayidx16 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom15
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx16, align 4
  %xor17 = xor i32 %xor13, %17
  %shr.i1339 = lshr i32 %xor7, 24
  %arrayidx20 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1339
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx20, align 4
  %xor21 = xor i32 %xor17, %19
  %add = add i32 %xor21, %xor
  %idxprom23 = and i32 %add, 255
  %arrayidx24 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom23
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx24, align 4
  %shr.i1342 = lshr i32 %add, 8
  %idxprom26 = and i32 %shr.i1342, 255
  %arrayidx27 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom26
  %22 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx27, align 4
  %xor28 = xor i32 %23, %21
  %shr.i1344 = lshr i32 %add, 16
  %idxprom30 = and i32 %shr.i1344, 255
  %arrayidx31 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom30
  %24 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx31, align 4
  %xor32 = xor i32 %xor28, %25
  %shr.i1346 = lshr i32 %add, 24
  %arrayidx35 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1346
  %26 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx35, align 4
  %xor36 = xor i32 %xor32, %27
  %add37 = add i32 %xor36, %xor21
  %idxprom39 = and i32 %add37, 255
  %arrayidx40 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom39
  %28 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx40, align 4
  %shr.i1349 = lshr i32 %add37, 8
  %idxprom42 = and i32 %shr.i1349, 255
  %arrayidx43 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom42
  %30 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx43, align 4
  %xor44 = xor i32 %31, %29
  %shr.i1351 = lshr i32 %add37, 16
  %idxprom46 = and i32 %shr.i1351, 255
  %arrayidx47 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom46
  %32 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx47, align 4
  %xor48 = xor i32 %xor44, %33
  %shr.i1353 = lshr i32 %add37, 24
  %arrayidx51 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1353
  %34 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx51, align 4
  %xor52 = xor i32 %xor48, %35
  %add53 = add i32 %xor52, %xor36
  %xor54 = xor i32 %add53, %1
  %xor55 = xor i32 %xor52, %3
  %arrayidx56 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 96
  %36 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx56, align 4
  %xor57 = xor i32 %xor54, %37
  %arrayidx58 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 100
  %38 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx58, align 4
  %xor59 = xor i32 %xor55, %39
  %xor60 = xor i32 %xor59, %xor57
  %idxprom62 = and i32 %xor60, 255
  %arrayidx63 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom62
  %40 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx63, align 4
  %shr.i1356 = lshr i32 %xor60, 8
  %idxprom65 = and i32 %shr.i1356, 255
  %arrayidx66 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom65
  %42 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx66, align 4
  %xor67 = xor i32 %43, %41
  %shr.i1358 = lshr i32 %xor60, 16
  %idxprom69 = and i32 %shr.i1358, 255
  %arrayidx70 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom69
  %44 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx70, align 4
  %xor71 = xor i32 %xor67, %45
  %shr.i1360 = lshr i32 %xor60, 24
  %arrayidx74 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1360
  %46 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx74, align 4
  %xor75 = xor i32 %xor71, %47
  %add76 = add i32 %xor75, %xor57
  %idxprom78 = and i32 %add76, 255
  %arrayidx79 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom78
  %48 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx79, align 4
  %shr.i1363 = lshr i32 %add76, 8
  %idxprom81 = and i32 %shr.i1363, 255
  %arrayidx82 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom81
  %50 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx82, align 4
  %xor83 = xor i32 %51, %49
  %shr.i1365 = lshr i32 %add76, 16
  %idxprom85 = and i32 %shr.i1365, 255
  %arrayidx86 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom85
  %52 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx86, align 4
  %xor87 = xor i32 %xor83, %53
  %shr.i1367 = lshr i32 %add76, 24
  %arrayidx90 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1367
  %54 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx90, align 4
  %xor91 = xor i32 %xor87, %55
  %add92 = add i32 %xor91, %xor75
  %idxprom94 = and i32 %add92, 255
  %arrayidx95 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom94
  %56 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx95, align 4
  %shr.i1370 = lshr i32 %add92, 8
  %idxprom97 = and i32 %shr.i1370, 255
  %arrayidx98 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom97
  %58 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx98, align 4
  %xor99 = xor i32 %59, %57
  %shr.i1372 = lshr i32 %add92, 16
  %idxprom101 = and i32 %shr.i1372, 255
  %arrayidx102 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom101
  %60 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx102, align 4
  %xor103 = xor i32 %xor99, %61
  %shr.i1374 = lshr i32 %add92, 24
  %arrayidx106 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1374
  %62 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx106, align 4
  %xor107 = xor i32 %xor103, %63
  %add108 = add i32 %xor107, %xor91
  %xor109 = xor i32 %add108, %5
  %xor110 = xor i32 %xor107, %7
  %arrayidx111 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 88
  %64 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx111, align 4
  %xor112 = xor i32 %xor109, %65
  %arrayidx113 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 92
  %66 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx113, align 4
  %xor114 = xor i32 %xor110, %67
  %xor115 = xor i32 %xor114, %xor112
  %idxprom117 = and i32 %xor115, 255
  %arrayidx118 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom117
  %68 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx118, align 4
  %shr.i1377 = lshr i32 %xor115, 8
  %idxprom120 = and i32 %shr.i1377, 255
  %arrayidx121 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom120
  %70 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx121, align 4
  %xor122 = xor i32 %71, %69
  %shr.i1379 = lshr i32 %xor115, 16
  %idxprom124 = and i32 %shr.i1379, 255
  %arrayidx125 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom124
  %72 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx125, align 4
  %xor126 = xor i32 %xor122, %73
  %shr.i1381 = lshr i32 %xor115, 24
  %arrayidx129 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1381
  %74 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx129, align 4
  %xor130 = xor i32 %xor126, %75
  %add131 = add i32 %xor130, %xor112
  %idxprom133 = and i32 %add131, 255
  %arrayidx134 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom133
  %76 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx134, align 4
  %shr.i1384 = lshr i32 %add131, 8
  %idxprom136 = and i32 %shr.i1384, 255
  %arrayidx137 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom136
  %78 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx137, align 4
  %xor138 = xor i32 %79, %77
  %shr.i1386 = lshr i32 %add131, 16
  %idxprom140 = and i32 %shr.i1386, 255
  %arrayidx141 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom140
  %80 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx141, align 4
  %xor142 = xor i32 %xor138, %81
  %shr.i1388 = lshr i32 %add131, 24
  %arrayidx145 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1388
  %82 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx145, align 4
  %xor146 = xor i32 %xor142, %83
  %add147 = add i32 %xor146, %xor130
  %idxprom149 = and i32 %add147, 255
  %arrayidx150 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom149
  %84 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx150, align 4
  %shr.i1391 = lshr i32 %add147, 8
  %idxprom152 = and i32 %shr.i1391, 255
  %arrayidx153 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom152
  %86 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx153, align 4
  %xor154 = xor i32 %87, %85
  %shr.i1393 = lshr i32 %add147, 16
  %idxprom156 = and i32 %shr.i1393, 255
  %arrayidx157 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom156
  %88 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx157, align 4
  %xor158 = xor i32 %xor154, %89
  %shr.i1395 = lshr i32 %add147, 24
  %arrayidx161 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1395
  %90 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx161, align 4
  %xor162 = xor i32 %xor158, %91
  %add163 = add i32 %xor162, %xor146
  %xor164 = xor i32 %add163, %xor54
  %xor165 = xor i32 %xor162, %xor55
  %arrayidx166 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 80
  %92 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx166, align 4
  %xor167 = xor i32 %xor164, %93
  %arrayidx168 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 84
  %94 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx168, align 4
  %xor169 = xor i32 %xor165, %95
  %xor170 = xor i32 %xor169, %xor167
  %idxprom172 = and i32 %xor170, 255
  %arrayidx173 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom172
  %96 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx173, align 4
  %shr.i1398 = lshr i32 %xor170, 8
  %idxprom175 = and i32 %shr.i1398, 255
  %arrayidx176 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom175
  %98 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx176, align 4
  %xor177 = xor i32 %99, %97
  %shr.i1400 = lshr i32 %xor170, 16
  %idxprom179 = and i32 %shr.i1400, 255
  %arrayidx180 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom179
  %100 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx180, align 4
  %xor181 = xor i32 %xor177, %101
  %shr.i1402 = lshr i32 %xor170, 24
  %arrayidx184 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1402
  %102 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx184, align 4
  %xor185 = xor i32 %xor181, %103
  %add186 = add i32 %xor185, %xor167
  %idxprom188 = and i32 %add186, 255
  %arrayidx189 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom188
  %104 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx189, align 4
  %shr.i1405 = lshr i32 %add186, 8
  %idxprom191 = and i32 %shr.i1405, 255
  %arrayidx192 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom191
  %106 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx192, align 4
  %xor193 = xor i32 %107, %105
  %shr.i1407 = lshr i32 %add186, 16
  %idxprom195 = and i32 %shr.i1407, 255
  %arrayidx196 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom195
  %108 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx196, align 4
  %xor197 = xor i32 %xor193, %109
  %shr.i1409 = lshr i32 %add186, 24
  %arrayidx200 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1409
  %110 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx200, align 4
  %xor201 = xor i32 %xor197, %111
  %add202 = add i32 %xor201, %xor185
  %idxprom204 = and i32 %add202, 255
  %arrayidx205 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom204
  %112 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx205, align 4
  %shr.i1412 = lshr i32 %add202, 8
  %idxprom207 = and i32 %shr.i1412, 255
  %arrayidx208 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom207
  %114 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx208, align 4
  %xor209 = xor i32 %115, %113
  %shr.i1414 = lshr i32 %add202, 16
  %idxprom211 = and i32 %shr.i1414, 255
  %arrayidx212 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom211
  %116 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx212, align 4
  %xor213 = xor i32 %xor209, %117
  %shr.i1416 = lshr i32 %add202, 24
  %arrayidx216 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1416
  %118 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx216, align 4
  %xor217 = xor i32 %xor213, %119
  %add218 = add i32 %xor217, %xor201
  %xor219 = xor i32 %add218, %xor109
  %xor220 = xor i32 %xor217, %xor110
  %arrayidx221 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 72
  %120 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx221, align 4
  %xor222 = xor i32 %xor219, %121
  %arrayidx223 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 76
  %122 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx223, align 4
  %xor224 = xor i32 %xor220, %123
  %xor225 = xor i32 %xor224, %xor222
  %idxprom227 = and i32 %xor225, 255
  %arrayidx228 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom227
  %124 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx228, align 4
  %shr.i1419 = lshr i32 %xor225, 8
  %idxprom230 = and i32 %shr.i1419, 255
  %arrayidx231 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom230
  %126 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx231, align 4
  %xor232 = xor i32 %127, %125
  %shr.i1421 = lshr i32 %xor225, 16
  %idxprom234 = and i32 %shr.i1421, 255
  %arrayidx235 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom234
  %128 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx235, align 4
  %xor236 = xor i32 %xor232, %129
  %shr.i1423 = lshr i32 %xor225, 24
  %arrayidx239 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1423
  %130 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx239, align 4
  %xor240 = xor i32 %xor236, %131
  %add241 = add i32 %xor240, %xor222
  %idxprom243 = and i32 %add241, 255
  %arrayidx244 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom243
  %132 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx244, align 4
  %shr.i1426 = lshr i32 %add241, 8
  %idxprom246 = and i32 %shr.i1426, 255
  %arrayidx247 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom246
  %134 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx247, align 4
  %xor248 = xor i32 %135, %133
  %shr.i1428 = lshr i32 %add241, 16
  %idxprom250 = and i32 %shr.i1428, 255
  %arrayidx251 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom250
  %136 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx251, align 4
  %xor252 = xor i32 %xor248, %137
  %shr.i1430 = lshr i32 %add241, 24
  %arrayidx255 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1430
  %138 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx255, align 4
  %xor256 = xor i32 %xor252, %139
  %add257 = add i32 %xor256, %xor240
  %idxprom259 = and i32 %add257, 255
  %arrayidx260 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom259
  %140 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx260, align 4
  %shr.i1433 = lshr i32 %add257, 8
  %idxprom262 = and i32 %shr.i1433, 255
  %arrayidx263 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom262
  %142 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx263, align 4
  %xor264 = xor i32 %143, %141
  %shr.i1435 = lshr i32 %add257, 16
  %idxprom266 = and i32 %shr.i1435, 255
  %arrayidx267 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom266
  %144 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx267, align 4
  %xor268 = xor i32 %xor264, %145
  %shr.i1437 = lshr i32 %add257, 24
  %arrayidx271 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1437
  %146 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx271, align 4
  %xor272 = xor i32 %xor268, %147
  %add273 = add i32 %xor272, %xor256
  %xor274 = xor i32 %add273, %xor164
  %xor275 = xor i32 %xor272, %xor165
  %arrayidx276 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 64
  %148 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx276, align 4
  %xor277 = xor i32 %xor274, %149
  %arrayidx278 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 68
  %150 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx278, align 4
  %xor279 = xor i32 %xor275, %151
  %xor280 = xor i32 %xor279, %xor277
  %idxprom282 = and i32 %xor280, 255
  %arrayidx283 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom282
  %152 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx283, align 4
  %shr.i1440 = lshr i32 %xor280, 8
  %idxprom285 = and i32 %shr.i1440, 255
  %arrayidx286 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom285
  %154 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx286, align 4
  %xor287 = xor i32 %155, %153
  %shr.i1442 = lshr i32 %xor280, 16
  %idxprom289 = and i32 %shr.i1442, 255
  %arrayidx290 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom289
  %156 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx290, align 4
  %xor291 = xor i32 %xor287, %157
  %shr.i1444 = lshr i32 %xor280, 24
  %arrayidx294 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1444
  %158 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx294, align 4
  %xor295 = xor i32 %xor291, %159
  %add296 = add i32 %xor295, %xor277
  %idxprom298 = and i32 %add296, 255
  %arrayidx299 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom298
  %160 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx299, align 4
  %shr.i1447 = lshr i32 %add296, 8
  %idxprom301 = and i32 %shr.i1447, 255
  %arrayidx302 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom301
  %162 = ptrtoint ptr %arrayidx302 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx302, align 4
  %xor303 = xor i32 %163, %161
  %shr.i1449 = lshr i32 %add296, 16
  %idxprom305 = and i32 %shr.i1449, 255
  %arrayidx306 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom305
  %164 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx306, align 4
  %xor307 = xor i32 %xor303, %165
  %shr.i1451 = lshr i32 %add296, 24
  %arrayidx310 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1451
  %166 = ptrtoint ptr %arrayidx310 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx310, align 4
  %xor311 = xor i32 %xor307, %167
  %add312 = add i32 %xor311, %xor295
  %idxprom314 = and i32 %add312, 255
  %arrayidx315 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom314
  %168 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx315, align 4
  %shr.i1454 = lshr i32 %add312, 8
  %idxprom317 = and i32 %shr.i1454, 255
  %arrayidx318 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom317
  %170 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx318, align 4
  %xor319 = xor i32 %171, %169
  %shr.i1456 = lshr i32 %add312, 16
  %idxprom321 = and i32 %shr.i1456, 255
  %arrayidx322 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom321
  %172 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx322, align 4
  %xor323 = xor i32 %xor319, %173
  %shr.i1458 = lshr i32 %add312, 24
  %arrayidx326 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1458
  %174 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx326, align 4
  %xor327 = xor i32 %xor323, %175
  %add328 = add i32 %xor327, %xor311
  %xor329 = xor i32 %add328, %xor219
  %xor330 = xor i32 %xor327, %xor220
  %arrayidx331 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 56
  %176 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx331, align 4
  %xor332 = xor i32 %xor329, %177
  %arrayidx333 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 60
  %178 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx333, align 4
  %xor334 = xor i32 %xor330, %179
  %xor335 = xor i32 %xor334, %xor332
  %idxprom337 = and i32 %xor335, 255
  %arrayidx338 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom337
  %180 = ptrtoint ptr %arrayidx338 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx338, align 4
  %shr.i1461 = lshr i32 %xor335, 8
  %idxprom340 = and i32 %shr.i1461, 255
  %arrayidx341 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom340
  %182 = ptrtoint ptr %arrayidx341 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx341, align 4
  %xor342 = xor i32 %183, %181
  %shr.i1463 = lshr i32 %xor335, 16
  %idxprom344 = and i32 %shr.i1463, 255
  %arrayidx345 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom344
  %184 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx345, align 4
  %xor346 = xor i32 %xor342, %185
  %shr.i1465 = lshr i32 %xor335, 24
  %arrayidx349 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1465
  %186 = ptrtoint ptr %arrayidx349 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx349, align 4
  %xor350 = xor i32 %xor346, %187
  %add351 = add i32 %xor350, %xor332
  %idxprom353 = and i32 %add351, 255
  %arrayidx354 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom353
  %188 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx354, align 4
  %shr.i1468 = lshr i32 %add351, 8
  %idxprom356 = and i32 %shr.i1468, 255
  %arrayidx357 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom356
  %190 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx357, align 4
  %xor358 = xor i32 %191, %189
  %shr.i1470 = lshr i32 %add351, 16
  %idxprom360 = and i32 %shr.i1470, 255
  %arrayidx361 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom360
  %192 = ptrtoint ptr %arrayidx361 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx361, align 4
  %xor362 = xor i32 %xor358, %193
  %shr.i1472 = lshr i32 %add351, 24
  %arrayidx365 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1472
  %194 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx365, align 4
  %xor366 = xor i32 %xor362, %195
  %add367 = add i32 %xor366, %xor350
  %idxprom369 = and i32 %add367, 255
  %arrayidx370 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom369
  %196 = ptrtoint ptr %arrayidx370 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx370, align 4
  %shr.i1475 = lshr i32 %add367, 8
  %idxprom372 = and i32 %shr.i1475, 255
  %arrayidx373 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom372
  %198 = ptrtoint ptr %arrayidx373 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx373, align 4
  %xor374 = xor i32 %199, %197
  %shr.i1477 = lshr i32 %add367, 16
  %idxprom376 = and i32 %shr.i1477, 255
  %arrayidx377 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom376
  %200 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx377, align 4
  %xor378 = xor i32 %xor374, %201
  %shr.i1479 = lshr i32 %add367, 24
  %arrayidx381 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1479
  %202 = ptrtoint ptr %arrayidx381 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx381, align 4
  %xor382 = xor i32 %xor378, %203
  %add383 = add i32 %xor382, %xor366
  %xor384 = xor i32 %add383, %xor274
  %xor385 = xor i32 %xor382, %xor275
  %arrayidx386 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 48
  %204 = ptrtoint ptr %arrayidx386 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx386, align 4
  %xor387 = xor i32 %xor384, %205
  %arrayidx388 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 52
  %206 = ptrtoint ptr %arrayidx388 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx388, align 4
  %xor389 = xor i32 %xor385, %207
  %xor390 = xor i32 %xor389, %xor387
  %idxprom392 = and i32 %xor390, 255
  %arrayidx393 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom392
  %208 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx393, align 4
  %shr.i1482 = lshr i32 %xor390, 8
  %idxprom395 = and i32 %shr.i1482, 255
  %arrayidx396 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom395
  %210 = ptrtoint ptr %arrayidx396 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx396, align 4
  %xor397 = xor i32 %211, %209
  %shr.i1484 = lshr i32 %xor390, 16
  %idxprom399 = and i32 %shr.i1484, 255
  %arrayidx400 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom399
  %212 = ptrtoint ptr %arrayidx400 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx400, align 4
  %xor401 = xor i32 %xor397, %213
  %shr.i1486 = lshr i32 %xor390, 24
  %arrayidx404 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1486
  %214 = ptrtoint ptr %arrayidx404 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx404, align 4
  %xor405 = xor i32 %xor401, %215
  %add406 = add i32 %xor405, %xor387
  %idxprom408 = and i32 %add406, 255
  %arrayidx409 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom408
  %216 = ptrtoint ptr %arrayidx409 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx409, align 4
  %shr.i1489 = lshr i32 %add406, 8
  %idxprom411 = and i32 %shr.i1489, 255
  %arrayidx412 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom411
  %218 = ptrtoint ptr %arrayidx412 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx412, align 4
  %xor413 = xor i32 %219, %217
  %shr.i1491 = lshr i32 %add406, 16
  %idxprom415 = and i32 %shr.i1491, 255
  %arrayidx416 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom415
  %220 = ptrtoint ptr %arrayidx416 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx416, align 4
  %xor417 = xor i32 %xor413, %221
  %shr.i1493 = lshr i32 %add406, 24
  %arrayidx420 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1493
  %222 = ptrtoint ptr %arrayidx420 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx420, align 4
  %xor421 = xor i32 %xor417, %223
  %add422 = add i32 %xor421, %xor405
  %idxprom424 = and i32 %add422, 255
  %arrayidx425 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom424
  %224 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx425, align 4
  %shr.i1496 = lshr i32 %add422, 8
  %idxprom427 = and i32 %shr.i1496, 255
  %arrayidx428 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom427
  %226 = ptrtoint ptr %arrayidx428 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx428, align 4
  %xor429 = xor i32 %227, %225
  %shr.i1498 = lshr i32 %add422, 16
  %idxprom431 = and i32 %shr.i1498, 255
  %arrayidx432 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom431
  %228 = ptrtoint ptr %arrayidx432 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx432, align 4
  %xor433 = xor i32 %xor429, %229
  %shr.i1500 = lshr i32 %add422, 24
  %arrayidx436 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1500
  %230 = ptrtoint ptr %arrayidx436 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx436, align 4
  %xor437 = xor i32 %xor433, %231
  %add438 = add i32 %xor437, %xor421
  %xor439 = xor i32 %add438, %xor329
  %xor440 = xor i32 %xor437, %xor330
  %arrayidx441 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 40
  %232 = ptrtoint ptr %arrayidx441 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx441, align 4
  %xor442 = xor i32 %xor439, %233
  %arrayidx443 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 44
  %234 = ptrtoint ptr %arrayidx443 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx443, align 4
  %xor444 = xor i32 %xor440, %235
  %xor445 = xor i32 %xor444, %xor442
  %idxprom447 = and i32 %xor445, 255
  %arrayidx448 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom447
  %236 = ptrtoint ptr %arrayidx448 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx448, align 4
  %shr.i1503 = lshr i32 %xor445, 8
  %idxprom450 = and i32 %shr.i1503, 255
  %arrayidx451 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom450
  %238 = ptrtoint ptr %arrayidx451 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx451, align 4
  %xor452 = xor i32 %239, %237
  %shr.i1505 = lshr i32 %xor445, 16
  %idxprom454 = and i32 %shr.i1505, 255
  %arrayidx455 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom454
  %240 = ptrtoint ptr %arrayidx455 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx455, align 4
  %xor456 = xor i32 %xor452, %241
  %shr.i1507 = lshr i32 %xor445, 24
  %arrayidx459 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1507
  %242 = ptrtoint ptr %arrayidx459 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx459, align 4
  %xor460 = xor i32 %xor456, %243
  %add461 = add i32 %xor460, %xor442
  %idxprom463 = and i32 %add461, 255
  %arrayidx464 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom463
  %244 = ptrtoint ptr %arrayidx464 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx464, align 4
  %shr.i1510 = lshr i32 %add461, 8
  %idxprom466 = and i32 %shr.i1510, 255
  %arrayidx467 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom466
  %246 = ptrtoint ptr %arrayidx467 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx467, align 4
  %xor468 = xor i32 %247, %245
  %shr.i1512 = lshr i32 %add461, 16
  %idxprom470 = and i32 %shr.i1512, 255
  %arrayidx471 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom470
  %248 = ptrtoint ptr %arrayidx471 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx471, align 4
  %xor472 = xor i32 %xor468, %249
  %shr.i1514 = lshr i32 %add461, 24
  %arrayidx475 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1514
  %250 = ptrtoint ptr %arrayidx475 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx475, align 4
  %xor476 = xor i32 %xor472, %251
  %add477 = add i32 %xor476, %xor460
  %idxprom479 = and i32 %add477, 255
  %arrayidx480 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom479
  %252 = ptrtoint ptr %arrayidx480 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx480, align 4
  %shr.i1517 = lshr i32 %add477, 8
  %idxprom482 = and i32 %shr.i1517, 255
  %arrayidx483 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom482
  %254 = ptrtoint ptr %arrayidx483 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx483, align 4
  %xor484 = xor i32 %255, %253
  %shr.i1519 = lshr i32 %add477, 16
  %idxprom486 = and i32 %shr.i1519, 255
  %arrayidx487 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom486
  %256 = ptrtoint ptr %arrayidx487 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx487, align 4
  %xor488 = xor i32 %xor484, %257
  %shr.i1521 = lshr i32 %add477, 24
  %arrayidx491 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1521
  %258 = ptrtoint ptr %arrayidx491 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx491, align 4
  %xor492 = xor i32 %xor488, %259
  %add493 = add i32 %xor492, %xor476
  %xor494 = xor i32 %add493, %xor384
  %xor495 = xor i32 %xor492, %xor385
  %arrayidx496 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 32
  %260 = ptrtoint ptr %arrayidx496 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx496, align 4
  %xor497 = xor i32 %xor494, %261
  %arrayidx498 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 36
  %262 = ptrtoint ptr %arrayidx498 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx498, align 4
  %xor499 = xor i32 %xor495, %263
  %xor500 = xor i32 %xor499, %xor497
  %idxprom502 = and i32 %xor500, 255
  %arrayidx503 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom502
  %264 = ptrtoint ptr %arrayidx503 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx503, align 4
  %shr.i1524 = lshr i32 %xor500, 8
  %idxprom505 = and i32 %shr.i1524, 255
  %arrayidx506 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom505
  %266 = ptrtoint ptr %arrayidx506 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx506, align 4
  %xor507 = xor i32 %267, %265
  %shr.i1526 = lshr i32 %xor500, 16
  %idxprom509 = and i32 %shr.i1526, 255
  %arrayidx510 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom509
  %268 = ptrtoint ptr %arrayidx510 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx510, align 4
  %xor511 = xor i32 %xor507, %269
  %shr.i1528 = lshr i32 %xor500, 24
  %arrayidx514 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1528
  %270 = ptrtoint ptr %arrayidx514 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx514, align 4
  %xor515 = xor i32 %xor511, %271
  %add516 = add i32 %xor515, %xor497
  %idxprom518 = and i32 %add516, 255
  %arrayidx519 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom518
  %272 = ptrtoint ptr %arrayidx519 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx519, align 4
  %shr.i1531 = lshr i32 %add516, 8
  %idxprom521 = and i32 %shr.i1531, 255
  %arrayidx522 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom521
  %274 = ptrtoint ptr %arrayidx522 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx522, align 4
  %xor523 = xor i32 %275, %273
  %shr.i1533 = lshr i32 %add516, 16
  %idxprom525 = and i32 %shr.i1533, 255
  %arrayidx526 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom525
  %276 = ptrtoint ptr %arrayidx526 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx526, align 4
  %xor527 = xor i32 %xor523, %277
  %shr.i1535 = lshr i32 %add516, 24
  %arrayidx530 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1535
  %278 = ptrtoint ptr %arrayidx530 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx530, align 4
  %xor531 = xor i32 %xor527, %279
  %add532 = add i32 %xor531, %xor515
  %idxprom534 = and i32 %add532, 255
  %arrayidx535 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom534
  %280 = ptrtoint ptr %arrayidx535 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx535, align 4
  %shr.i1538 = lshr i32 %add532, 8
  %idxprom537 = and i32 %shr.i1538, 255
  %arrayidx538 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom537
  %282 = ptrtoint ptr %arrayidx538 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx538, align 4
  %xor539 = xor i32 %283, %281
  %shr.i1540 = lshr i32 %add532, 16
  %idxprom541 = and i32 %shr.i1540, 255
  %arrayidx542 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom541
  %284 = ptrtoint ptr %arrayidx542 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx542, align 4
  %xor543 = xor i32 %xor539, %285
  %shr.i1542 = lshr i32 %add532, 24
  %arrayidx546 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1542
  %286 = ptrtoint ptr %arrayidx546 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %arrayidx546, align 4
  %xor547 = xor i32 %xor543, %287
  %add548 = add i32 %xor547, %xor531
  %xor549 = xor i32 %add548, %xor439
  %xor550 = xor i32 %xor547, %xor440
  %arrayidx551 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %288 = ptrtoint ptr %arrayidx551 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %arrayidx551, align 4
  %xor552 = xor i32 %xor549, %289
  %arrayidx553 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %290 = ptrtoint ptr %arrayidx553 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx553, align 4
  %xor554 = xor i32 %xor550, %291
  %xor555 = xor i32 %xor554, %xor552
  %idxprom557 = and i32 %xor555, 255
  %arrayidx558 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom557
  %292 = ptrtoint ptr %arrayidx558 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %arrayidx558, align 4
  %shr.i1545 = lshr i32 %xor555, 8
  %idxprom560 = and i32 %shr.i1545, 255
  %arrayidx561 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom560
  %294 = ptrtoint ptr %arrayidx561 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %arrayidx561, align 4
  %xor562 = xor i32 %295, %293
  %shr.i1547 = lshr i32 %xor555, 16
  %idxprom564 = and i32 %shr.i1547, 255
  %arrayidx565 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom564
  %296 = ptrtoint ptr %arrayidx565 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx565, align 4
  %xor566 = xor i32 %xor562, %297
  %shr.i1549 = lshr i32 %xor555, 24
  %arrayidx569 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1549
  %298 = ptrtoint ptr %arrayidx569 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx569, align 4
  %xor570 = xor i32 %xor566, %299
  %add571 = add i32 %xor570, %xor552
  %idxprom573 = and i32 %add571, 255
  %arrayidx574 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom573
  %300 = ptrtoint ptr %arrayidx574 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %arrayidx574, align 4
  %shr.i1552 = lshr i32 %add571, 8
  %idxprom576 = and i32 %shr.i1552, 255
  %arrayidx577 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom576
  %302 = ptrtoint ptr %arrayidx577 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %arrayidx577, align 4
  %xor578 = xor i32 %303, %301
  %shr.i1554 = lshr i32 %add571, 16
  %idxprom580 = and i32 %shr.i1554, 255
  %arrayidx581 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom580
  %304 = ptrtoint ptr %arrayidx581 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %arrayidx581, align 4
  %xor582 = xor i32 %xor578, %305
  %shr.i1556 = lshr i32 %add571, 24
  %arrayidx585 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1556
  %306 = ptrtoint ptr %arrayidx585 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %arrayidx585, align 4
  %xor586 = xor i32 %xor582, %307
  %add587 = add i32 %xor586, %xor570
  %idxprom589 = and i32 %add587, 255
  %arrayidx590 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom589
  %308 = ptrtoint ptr %arrayidx590 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %arrayidx590, align 4
  %shr.i1559 = lshr i32 %add587, 8
  %idxprom592 = and i32 %shr.i1559, 255
  %arrayidx593 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom592
  %310 = ptrtoint ptr %arrayidx593 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx593, align 4
  %xor594 = xor i32 %311, %309
  %shr.i1561 = lshr i32 %add587, 16
  %idxprom596 = and i32 %shr.i1561, 255
  %arrayidx597 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom596
  %312 = ptrtoint ptr %arrayidx597 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %arrayidx597, align 4
  %xor598 = xor i32 %xor594, %313
  %shr.i1563 = lshr i32 %add587, 24
  %arrayidx601 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1563
  %314 = ptrtoint ptr %arrayidx601 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx601, align 4
  %xor602 = xor i32 %xor598, %315
  %add603 = add i32 %xor602, %xor586
  %xor604 = xor i32 %add603, %xor494
  %xor605 = xor i32 %xor602, %xor495
  %arrayidx606 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 16
  %316 = ptrtoint ptr %arrayidx606 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %arrayidx606, align 4
  %xor607 = xor i32 %xor604, %317
  %arrayidx608 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 20
  %318 = ptrtoint ptr %arrayidx608 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %arrayidx608, align 4
  %xor609 = xor i32 %xor605, %319
  %xor610 = xor i32 %xor609, %xor607
  %idxprom612 = and i32 %xor610, 255
  %arrayidx613 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom612
  %320 = ptrtoint ptr %arrayidx613 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %arrayidx613, align 4
  %shr.i1566 = lshr i32 %xor610, 8
  %idxprom615 = and i32 %shr.i1566, 255
  %arrayidx616 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom615
  %322 = ptrtoint ptr %arrayidx616 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %arrayidx616, align 4
  %xor617 = xor i32 %323, %321
  %shr.i1568 = lshr i32 %xor610, 16
  %idxprom619 = and i32 %shr.i1568, 255
  %arrayidx620 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom619
  %324 = ptrtoint ptr %arrayidx620 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %arrayidx620, align 4
  %xor621 = xor i32 %xor617, %325
  %shr.i1570 = lshr i32 %xor610, 24
  %arrayidx624 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1570
  %326 = ptrtoint ptr %arrayidx624 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %arrayidx624, align 4
  %xor625 = xor i32 %xor621, %327
  %add626 = add i32 %xor625, %xor607
  %idxprom628 = and i32 %add626, 255
  %arrayidx629 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom628
  %328 = ptrtoint ptr %arrayidx629 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %arrayidx629, align 4
  %shr.i1573 = lshr i32 %add626, 8
  %idxprom631 = and i32 %shr.i1573, 255
  %arrayidx632 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom631
  %330 = ptrtoint ptr %arrayidx632 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %arrayidx632, align 4
  %xor633 = xor i32 %331, %329
  %shr.i1575 = lshr i32 %add626, 16
  %idxprom635 = and i32 %shr.i1575, 255
  %arrayidx636 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom635
  %332 = ptrtoint ptr %arrayidx636 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %arrayidx636, align 4
  %xor637 = xor i32 %xor633, %333
  %shr.i1577 = lshr i32 %add626, 24
  %arrayidx640 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1577
  %334 = ptrtoint ptr %arrayidx640 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %arrayidx640, align 4
  %xor641 = xor i32 %xor637, %335
  %add642 = add i32 %xor641, %xor625
  %idxprom644 = and i32 %add642, 255
  %arrayidx645 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom644
  %336 = ptrtoint ptr %arrayidx645 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %arrayidx645, align 4
  %shr.i1580 = lshr i32 %add642, 8
  %idxprom647 = and i32 %shr.i1580, 255
  %arrayidx648 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom647
  %338 = ptrtoint ptr %arrayidx648 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %arrayidx648, align 4
  %xor649 = xor i32 %339, %337
  %shr.i1582 = lshr i32 %add642, 16
  %idxprom651 = and i32 %shr.i1582, 255
  %arrayidx652 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom651
  %340 = ptrtoint ptr %arrayidx652 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %arrayidx652, align 4
  %xor653 = xor i32 %xor649, %341
  %shr.i1584 = lshr i32 %add642, 24
  %arrayidx656 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1584
  %342 = ptrtoint ptr %arrayidx656 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %arrayidx656, align 4
  %xor657 = xor i32 %xor653, %343
  %add658 = add i32 %xor657, %xor641
  %xor659 = xor i32 %add658, %xor549
  %xor660 = xor i32 %xor657, %xor550
  %arrayidx661 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %344 = ptrtoint ptr %arrayidx661 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %arrayidx661, align 4
  %xor662 = xor i32 %xor659, %345
  %arrayidx663 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 12
  %346 = ptrtoint ptr %arrayidx663 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %arrayidx663, align 4
  %xor664 = xor i32 %xor660, %347
  %xor665 = xor i32 %xor664, %xor662
  %idxprom667 = and i32 %xor665, 255
  %arrayidx668 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom667
  %348 = ptrtoint ptr %arrayidx668 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %arrayidx668, align 4
  %shr.i1587 = lshr i32 %xor665, 8
  %idxprom670 = and i32 %shr.i1587, 255
  %arrayidx671 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom670
  %350 = ptrtoint ptr %arrayidx671 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %arrayidx671, align 4
  %xor672 = xor i32 %351, %349
  %shr.i1589 = lshr i32 %xor665, 16
  %idxprom674 = and i32 %shr.i1589, 255
  %arrayidx675 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom674
  %352 = ptrtoint ptr %arrayidx675 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %arrayidx675, align 4
  %xor676 = xor i32 %xor672, %353
  %shr.i1591 = lshr i32 %xor665, 24
  %arrayidx679 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1591
  %354 = ptrtoint ptr %arrayidx679 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %arrayidx679, align 4
  %xor680 = xor i32 %xor676, %355
  %add681 = add i32 %xor680, %xor662
  %idxprom683 = and i32 %add681, 255
  %arrayidx684 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom683
  %356 = ptrtoint ptr %arrayidx684 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %arrayidx684, align 4
  %shr.i1594 = lshr i32 %add681, 8
  %idxprom686 = and i32 %shr.i1594, 255
  %arrayidx687 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom686
  %358 = ptrtoint ptr %arrayidx687 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %arrayidx687, align 4
  %xor688 = xor i32 %359, %357
  %shr.i1596 = lshr i32 %add681, 16
  %idxprom690 = and i32 %shr.i1596, 255
  %arrayidx691 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom690
  %360 = ptrtoint ptr %arrayidx691 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %arrayidx691, align 4
  %xor692 = xor i32 %xor688, %361
  %shr.i1598 = lshr i32 %add681, 24
  %arrayidx695 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1598
  %362 = ptrtoint ptr %arrayidx695 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %arrayidx695, align 4
  %xor696 = xor i32 %xor692, %363
  %add697 = add i32 %xor696, %xor680
  %idxprom699 = and i32 %add697, 255
  %arrayidx700 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom699
  %364 = ptrtoint ptr %arrayidx700 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %arrayidx700, align 4
  %shr.i1601 = lshr i32 %add697, 8
  %idxprom702 = and i32 %shr.i1601, 255
  %arrayidx703 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom702
  %366 = ptrtoint ptr %arrayidx703 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %arrayidx703, align 4
  %xor704 = xor i32 %367, %365
  %shr.i1603 = lshr i32 %add697, 16
  %idxprom706 = and i32 %shr.i1603, 255
  %arrayidx707 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom706
  %368 = ptrtoint ptr %arrayidx707 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %arrayidx707, align 4
  %xor708 = xor i32 %xor704, %369
  %shr.i1605 = lshr i32 %add697, 24
  %arrayidx711 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1605
  %370 = ptrtoint ptr %arrayidx711 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %arrayidx711, align 4
  %xor712 = xor i32 %xor708, %371
  %add713 = add i32 %xor712, %xor696
  %xor714 = xor i32 %add713, %xor604
  %xor715 = xor i32 %xor712, %xor605
  %arrayidx716 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %372 = ptrtoint ptr %arrayidx716 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %arrayidx716, align 4
  %xor717 = xor i32 %xor714, %373
  %arrayidx718 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %374 = ptrtoint ptr %arrayidx718 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %arrayidx718, align 4
  %xor719 = xor i32 %xor715, %375
  %xor720 = xor i32 %xor719, %xor717
  %idxprom722 = and i32 %xor720, 255
  %arrayidx723 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom722
  %376 = ptrtoint ptr %arrayidx723 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %arrayidx723, align 4
  %shr.i1608 = lshr i32 %xor720, 8
  %idxprom725 = and i32 %shr.i1608, 255
  %arrayidx726 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom725
  %378 = ptrtoint ptr %arrayidx726 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %arrayidx726, align 4
  %xor727 = xor i32 %379, %377
  %shr.i1610 = lshr i32 %xor720, 16
  %idxprom729 = and i32 %shr.i1610, 255
  %arrayidx730 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom729
  %380 = ptrtoint ptr %arrayidx730 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %arrayidx730, align 4
  %xor731 = xor i32 %xor727, %381
  %shr.i1612 = lshr i32 %xor720, 24
  %arrayidx734 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1612
  %382 = ptrtoint ptr %arrayidx734 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %arrayidx734, align 4
  %xor735 = xor i32 %xor731, %383
  %add736 = add i32 %xor735, %xor717
  %idxprom738 = and i32 %add736, 255
  %arrayidx739 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom738
  %384 = ptrtoint ptr %arrayidx739 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %arrayidx739, align 4
  %shr.i1615 = lshr i32 %add736, 8
  %idxprom741 = and i32 %shr.i1615, 255
  %arrayidx742 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom741
  %386 = ptrtoint ptr %arrayidx742 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %arrayidx742, align 4
  %xor743 = xor i32 %387, %385
  %shr.i1617 = lshr i32 %add736, 16
  %idxprom745 = and i32 %shr.i1617, 255
  %arrayidx746 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom745
  %388 = ptrtoint ptr %arrayidx746 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %arrayidx746, align 4
  %xor747 = xor i32 %xor743, %389
  %shr.i1619 = lshr i32 %add736, 24
  %arrayidx750 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1619
  %390 = ptrtoint ptr %arrayidx750 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %arrayidx750, align 4
  %xor751 = xor i32 %xor747, %391
  %add752 = add i32 %xor751, %xor735
  %idxprom754 = and i32 %add752, 255
  %arrayidx755 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom754
  %392 = ptrtoint ptr %arrayidx755 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %arrayidx755, align 4
  %shr.i1622 = lshr i32 %add752, 8
  %idxprom757 = and i32 %shr.i1622, 255
  %arrayidx758 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom757
  %394 = ptrtoint ptr %arrayidx758 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %arrayidx758, align 4
  %xor759 = xor i32 %395, %393
  %shr.i1624 = lshr i32 %add752, 16
  %idxprom761 = and i32 %shr.i1624, 255
  %arrayidx762 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom761
  %396 = ptrtoint ptr %arrayidx762 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %arrayidx762, align 4
  %xor763 = xor i32 %xor759, %397
  %shr.i1626 = lshr i32 %add752, 24
  %arrayidx766 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1626
  %398 = ptrtoint ptr %arrayidx766 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %arrayidx766, align 4
  %xor767 = xor i32 %xor763, %399
  %add768 = add i32 %xor767, %xor751
  %xor769 = xor i32 %add768, %xor659
  %xor770 = xor i32 %xor767, %xor660
  %arrayidx771 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %400 = ptrtoint ptr %arrayidx771 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %arrayidx771, align 4
  %xor772 = xor i32 %xor769, %401
  %arrayidx773 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %402 = ptrtoint ptr %arrayidx773 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %arrayidx773, align 4
  %xor774 = xor i32 %xor770, %403
  %xor775 = xor i32 %xor774, %xor772
  %idxprom777 = and i32 %xor775, 255
  %arrayidx778 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom777
  %404 = ptrtoint ptr %arrayidx778 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %arrayidx778, align 4
  %shr.i1629 = lshr i32 %xor775, 8
  %idxprom780 = and i32 %shr.i1629, 255
  %arrayidx781 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom780
  %406 = ptrtoint ptr %arrayidx781 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %arrayidx781, align 4
  %xor782 = xor i32 %407, %405
  %shr.i1631 = lshr i32 %xor775, 16
  %idxprom784 = and i32 %shr.i1631, 255
  %arrayidx785 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom784
  %408 = ptrtoint ptr %arrayidx785 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %arrayidx785, align 4
  %xor786 = xor i32 %xor782, %409
  %shr.i1633 = lshr i32 %xor775, 24
  %arrayidx789 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1633
  %410 = ptrtoint ptr %arrayidx789 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %arrayidx789, align 4
  %xor790 = xor i32 %xor786, %411
  %add791 = add i32 %xor790, %xor772
  %idxprom793 = and i32 %add791, 255
  %arrayidx794 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom793
  %412 = ptrtoint ptr %arrayidx794 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %arrayidx794, align 4
  %shr.i1636 = lshr i32 %add791, 8
  %idxprom796 = and i32 %shr.i1636, 255
  %arrayidx797 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom796
  %414 = ptrtoint ptr %arrayidx797 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %arrayidx797, align 4
  %xor798 = xor i32 %415, %413
  %shr.i1638 = lshr i32 %add791, 16
  %idxprom800 = and i32 %shr.i1638, 255
  %arrayidx801 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom800
  %416 = ptrtoint ptr %arrayidx801 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %arrayidx801, align 4
  %xor802 = xor i32 %xor798, %417
  %shr.i1640 = lshr i32 %add791, 24
  %arrayidx805 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1640
  %418 = ptrtoint ptr %arrayidx805 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %arrayidx805, align 4
  %xor806 = xor i32 %xor802, %419
  %add807 = add i32 %xor806, %xor790
  %idxprom809 = and i32 %add807, 255
  %arrayidx810 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom809
  %420 = ptrtoint ptr %arrayidx810 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %arrayidx810, align 4
  %shr.i1643 = lshr i32 %add807, 8
  %idxprom812 = and i32 %shr.i1643, 255
  %arrayidx813 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom812
  %422 = ptrtoint ptr %arrayidx813 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %arrayidx813, align 4
  %xor814 = xor i32 %423, %421
  %shr.i1645 = lshr i32 %add807, 16
  %idxprom816 = and i32 %shr.i1645, 255
  %arrayidx817 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom816
  %424 = ptrtoint ptr %arrayidx817 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %arrayidx817, align 4
  %xor818 = xor i32 %xor814, %425
  %shr.i1647 = lshr i32 %add807, 24
  %arrayidx821 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1647
  %426 = ptrtoint ptr %arrayidx821 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %arrayidx821, align 4
  %xor822 = xor i32 %xor818, %427
  %add823 = add i32 %xor822, %xor806
  %xor824 = xor i32 %add823, %xor714
  %xor825 = xor i32 %xor822, %xor715
  %428 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %__crt_ctx.i, align 4
  %xor827 = xor i32 %xor824, %429
  %arrayidx828 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %430 = ptrtoint ptr %arrayidx828 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %arrayidx828, align 4
  %xor829 = xor i32 %xor825, %431
  %xor830 = xor i32 %xor829, %xor827
  %idxprom832 = and i32 %xor830, 255
  %arrayidx833 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom832
  %432 = ptrtoint ptr %arrayidx833 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %arrayidx833, align 4
  %shr.i1650 = lshr i32 %xor830, 8
  %idxprom835 = and i32 %shr.i1650, 255
  %arrayidx836 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom835
  %434 = ptrtoint ptr %arrayidx836 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %arrayidx836, align 4
  %xor837 = xor i32 %435, %433
  %shr.i1652 = lshr i32 %xor830, 16
  %idxprom839 = and i32 %shr.i1652, 255
  %arrayidx840 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom839
  %436 = ptrtoint ptr %arrayidx840 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %arrayidx840, align 4
  %xor841 = xor i32 %xor837, %437
  %shr.i1654 = lshr i32 %xor830, 24
  %arrayidx844 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1654
  %438 = ptrtoint ptr %arrayidx844 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %arrayidx844, align 4
  %xor845 = xor i32 %xor841, %439
  %add846 = add i32 %xor845, %xor827
  %idxprom848 = and i32 %add846, 255
  %arrayidx849 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom848
  %440 = ptrtoint ptr %arrayidx849 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %arrayidx849, align 4
  %shr.i1657 = lshr i32 %add846, 8
  %idxprom851 = and i32 %shr.i1657, 255
  %arrayidx852 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom851
  %442 = ptrtoint ptr %arrayidx852 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %arrayidx852, align 4
  %xor853 = xor i32 %443, %441
  %shr.i1659 = lshr i32 %add846, 16
  %idxprom855 = and i32 %shr.i1659, 255
  %arrayidx856 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom855
  %444 = ptrtoint ptr %arrayidx856 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %arrayidx856, align 4
  %xor857 = xor i32 %xor853, %445
  %shr.i1661 = lshr i32 %add846, 24
  %arrayidx860 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1661
  %446 = ptrtoint ptr %arrayidx860 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %arrayidx860, align 4
  %xor861 = xor i32 %xor857, %447
  %add862 = add i32 %xor861, %xor845
  %idxprom864 = and i32 %add862, 255
  %arrayidx865 = getelementptr [256 x i32], ptr @SS0, i32 0, i32 %idxprom864
  %448 = ptrtoint ptr %arrayidx865 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %arrayidx865, align 4
  %shr.i1664 = lshr i32 %add862, 8
  %idxprom867 = and i32 %shr.i1664, 255
  %arrayidx868 = getelementptr [256 x i32], ptr @SS1, i32 0, i32 %idxprom867
  %450 = ptrtoint ptr %arrayidx868 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %arrayidx868, align 4
  %xor869 = xor i32 %451, %449
  %shr.i1666 = lshr i32 %add862, 16
  %idxprom871 = and i32 %shr.i1666, 255
  %arrayidx872 = getelementptr [256 x i32], ptr @SS2, i32 0, i32 %idxprom871
  %452 = ptrtoint ptr %arrayidx872 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %arrayidx872, align 4
  %xor873 = xor i32 %xor869, %453
  %shr.i1668 = lshr i32 %add862, 24
  %arrayidx876 = getelementptr [256 x i32], ptr @SS3, i32 0, i32 %shr.i1668
  %454 = ptrtoint ptr %arrayidx876 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %arrayidx876, align 4
  %xor877 = xor i32 %xor873, %455
  %add878 = add i32 %xor877, %xor861
  %xor879 = xor i32 %add878, %xor769
  %xor880 = xor i32 %xor877, %xor770
  %456 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 %xor879, ptr %out, align 4
  %arrayidx882 = getelementptr i32, ptr %out, i32 1
  %457 = ptrtoint ptr %arrayidx882 to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 %xor880, ptr %arrayidx882, align 4
  %arrayidx883 = getelementptr i32, ptr %out, i32 2
  %458 = ptrtoint ptr %arrayidx883 to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 %xor824, ptr %arrayidx883, align 4
  %arrayidx884 = getelementptr i32, ptr %out, i32 3
  %459 = ptrtoint ptr %arrayidx884 to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 %xor825, ptr %arrayidx884, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_seed__173_469_seed_init4, !1, !"__initcall__kmod_seed__173_469_seed_init4", i1 false, i1 false}
!1 = !{!"../crypto/seed.c", i32 469, i32 1}
!2 = !{ptr @__exitcall_seed_fini, !3, !"__exitcall_seed_fini", i1 false, i1 false}
!3 = !{!"../crypto/seed.c", i32 470, i32 1}
!4 = !{ptr @__UNIQUE_ID_description174, !5, !"__UNIQUE_ID_description174", i1 false, i1 false}
!5 = !{!"../crypto/seed.c", i32 472, i32 1}
!6 = !{ptr @__UNIQUE_ID_file175, !7, !"__UNIQUE_ID_file175", i1 false, i1 false}
!7 = !{!"../crypto/seed.c", i32 473, i32 1}
!8 = !{ptr @__UNIQUE_ID_license176, !7, !"__UNIQUE_ID_license176", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author177, !10, !"__UNIQUE_ID_author177", i1 false, i1 false}
!10 = !{!"../crypto/seed.c", i32 474, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace178, !12, !"__UNIQUE_ID_alias_userspace178", i1 false, i1 false}
!12 = !{!"../crypto/seed.c", i32 475, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto179, !12, !"__UNIQUE_ID_alias_crypto179", i1 false, i1 false}
!14 = !{ptr @seed_alg, !15, !"seed_alg", i1 false, i1 false}
!15 = !{!"../crypto/seed.c", i32 439, i32 26}
!16 = !{ptr @KC, !17, !"KC", i1 false, i1 false}
!17 = !{!"../crypto/seed.c", i32 304, i32 18}
!18 = !{ptr @SS0, !19, !"SS0", i1 false, i1 false}
!19 = !{!"../crypto/seed.c", i32 36, i32 18}
!20 = !{ptr @SS1, !21, !"SS1", i1 false, i1 false}
!21 = !{!"../crypto/seed.c", i32 103, i32 18}
!22 = !{ptr @SS2, !23, !"SS2", i1 false, i1 false}
!23 = !{!"../crypto/seed.c", i32 170, i32 18}
!24 = !{ptr @SS3, !25, !"SS3", i1 false, i1 false}
!25 = !{!"../crypto/seed.c", i32 237, i32 18}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
