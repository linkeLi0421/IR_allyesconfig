; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gf100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_pmu_fwif = type { i32, ptr, ptr, ptr }
%struct.nvkm_pmu_func = type { ptr, %struct.anon.141, %struct.anon.142, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.141 = type { ptr, i32 }
%struct.anon.142 = type { ptr, i32 }
%struct.nvkm_falcon_func = type { %struct.anon, %struct.anon.0, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.anon.140, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.anon.140 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_pmu = type { ptr, %struct.nvkm_subdev, %struct.nvkm_falcon, ptr, ptr, ptr, ptr, i8, %struct.completion, %struct.anon.143, %struct.anon.144 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.135, %struct.anon.136, %struct.nvkm_engine }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.135 = type { i32, ptr, i32, i8 }
%struct.anon.136 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.139 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.anon.139 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.143 = type { %struct.mutex, i32, i32 }
%struct.anon.144 = type { i32, i32, %struct.work_struct, %struct.wait_queue_head, i32, i32, [2 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@gf100_pmu_fwif = internal constant { [2 x %struct.nvkm_pmu_fwif], [32 x i8] } { [2 x %struct.nvkm_pmu_fwif] [%struct.nvkm_pmu_fwif { i32 -1, ptr @gf100_pmu_nofw, ptr @gf100_pmu, ptr null }, %struct.nvkm_pmu_fwif zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_pmu = internal constant { %struct.nvkm_pmu_func, [40 x i8] } { %struct.nvkm_pmu_func { ptr @gt215_pmu_flcn, %struct.anon.141 { ptr @gf100_pmu_code, i32 3328 }, %struct.anon.142 { ptr @gf100_pmu_data, i32 3584 }, ptr @gf100_pmu_enabled, ptr @gf100_pmu_reset, ptr @gt215_pmu_init, ptr @gt215_pmu_fini, ptr @gt215_pmu_intr, ptr @gt215_pmu_send, ptr @gt215_pmu_recv, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gt215_pmu_flcn = external dso_local constant %struct.nvkm_falcon_func, align 4
@gf100_pmu_code = internal global { <{ [770 x i32], [62 x i32] }>, [832 x i8] } { <{ [770 x i32], [62 x i32] }> <{ [770 x i32] [i32 59903733, i32 127928305, i32 -804911946, i32 79495182, i32 120817, i32 -251538448, i32 -1241011193, i32 231736836, i32 -251347712, i32 -1241010985, i32 -573634860, i32 13955328, i32 -233048976, i32 128243697, i32 -821635914, i32 16253149, i32 127928305, i32 -804911946, i32 79495182, i32 128190449, i32 -804911946, i32 79495181, i32 15914993, i32 -251538448, i32 -1241011193, i32 231736836, i32 -251347712, i32 -1241010985, i32 -573634860, i32 13955328, i32 -233048976, i32 -1862729480, i32 -2014281479, i32 109360684, i32 -268400433, i32 -1800000361, i32 10080006, i32 -1207789381, i32 519308958, i32 -58655503, i32 -117376880, i32 -259982960, i32 -2068435833, i32 8965894, i32 -201134407, i32 -625408991, i32 78511362, i32 -200889160, i32 -1745873653, i32 110409260, i32 -1157588529, i32 -1682439528, i32 -551619578, i32 -1862500100, i32 -375914248, i32 9875459, i32 -1742074892, i32 -1698981366, i32 253555714, i32 -184428560, i32 -1123888863, i32 353301652, i32 -1332016488, i32 200540326, i32 110802953, i32 -2147083020, i32 -377447671, i32 1491121667, i32 40429233, i32 -121234444, i32 -1124009728, i32 -108988156, i32 -106890864, i32 -104793680, i32 -102696496, i32 16249072, i32 -117339906, i32 -796397184, i32 109360645, i32 -1241478961, i32 133235072, i32 79037904, i32 577542, i32 -2014313283, i32 109360648, i32 -1006597937, i32 200540809, i32 -1694466013, i32 -195500048, i32 161012257, i32 9875611, i32 -267318284, i32 79049735, i32 643078, i32 159384765, i32 9036954, i32 1208742920, i32 109615089, i32 -821652298, i32 -1698430823, i32 738980866, i32 79742961, i32 -821640010, i32 -1057423156, i32 1330178033, i32 1414783985, i32 -184494096, i32 -66898399, i32 -1073221184, i32 100972036, i32 -1124070192, i32 -2012745468, i32 100972038, i32 -1124070960, i32 -526913276, i32 -40846080, i32 133170313, i32 100972036, i32 -1124071216, i32 -25101308, i32 -251920248, i32 -788733700, i32 -1325612804, i32 -1862491908, i32 16548092, i32 -134204684, i32 -104793855, i32 -875040336, i32 13889536, i32 67838453, i32 65588460, i32 -201280336, i32 -286518773, i32 -672070680, i32 -739245877, i32 186774784, i32 47102212, i32 -1057181444, i32 -1057423112, i32 -672026375, i32 -739245877, i32 186774784, i32 47102212, i32 -201280336, i32 -457374453, i32 -1057181444, i32 -672071432, i32 -739245877, i32 -319947008, i32 -1862729480, i32 854884601, i32 66623504, i32 -201292112, i32 -2067962596, i32 -1237841936, i32 147850756, i32 -268124928, i32 -2068433785, i32 8965894, i32 -1147532904, i32 -373620072, i32 67010560, i32 -1240954896, i32 -1999698300, i32 42266624, i32 -265937932, i32 -2068433785, i32 8965894, i32 -200875848, i32 -390592245, i32 287110150, i32 -1238104080, i32 248514052, i32 -2147173120, i32 -2014275058, i32 940044289, i32 -804911946, i32 79495176, i32 -66047500, i32 -124715904, i32 -108988160, i32 99129488, i32 -268113512, i32 -1984428922, i32 705426438, i32 -1811703612, i32 -2135554936, i32 9354008, i32 -2147419496, i32 -1920991094, i32 42762241, i32 -1241281664, i32 -1796210288, i32 82411527, i32 -66965004, i32 -125764464, i32 -259983104, i32 838097031, i32 9082881, i32 -200888648, i32 -2135551989, i32 1753657688, i32 -266603518, i32 -1191103756, i32 -2130967922, i32 569704696, i32 32768785, i32 -117376873, i32 -1736377968, i32 -375912984, i32 20116484, i32 -200898120, i32 -1983628021, i32 25212419, i32 -2146990864, i32 -359135768, i32 -17762046, i32 -252116593, i32 -1811746887, i32 -373619559, i32 417379840, i32 -1744573544, i32 -308804884, i32 15636481, i32 -251877895, i32 -201262850, i32 -251920079, i32 -1862500100, i32 401670392, i32 347472136, i32 1167110, i32 17371623, i32 -33024842, i32 401670164, i32 334495968, i32 470282240, i32 -804911946, i32 79495169, i32 -251717648, i32 79041543, i32 118790, i32 401605821, i32 1437954, i32 268955656, i32 -804911946, i32 79495169, i32 18421745, i32 -251653136, i32 -16777452, i32 838074384, i32 18346000, i32 -1237841936, i32 30410244, i32 -268124928, i32 -241673993, i32 1486849, i32 -101053452, i32 1492170261, i32 -101576972, i32 -115279600, i32 -1790904016, i32 -761982751, i32 -1111180016, i32 -1058144332, i32 -1188028929, i32 888209972, i32 884408319, i32 273004048, i32 -1157577797, i32 -486604364, i32 37009712, i32 -51983, i32 -1240451914, i32 -1011150779, i32 28621568, i32 -1154477313, i32 1090257075, i32 553398524, i32 16257276, i32 78649329, i32 -821685066, i32 670105617, i32 615908512, i32 2281222, i32 -200928584, i32 516174347, i32 82744327, i32 40951991, i32 -1744573544, i32 -308804884, i32 15636481, i32 53879285, i32 -1006563146, i32 133238558, i32 79037616, i32 970758, i32 250873021, i32 -251594566, i32 -246527721, i32 -1202564077, i32 200541921, i32 -870846038, i32 102020612, i32 -251653681, i32 -1241200601, i32 583992868, i32 135720960, i32 -200928584, i32 600106507, i32 70563335, i32 49295543, i32 -2147271808, i32 1031799356, i32 4096001, i32 -268361546, i32 133238564, i32 79037640, i32 184326, i32 670041277, i32 520256, i32 -804911946, i32 79495170, i32 401670392, i32 347472000, i32 1880486160, i32 -804785918, i32 100972036, i32 -1124073008, i32 -2145914620, i32 269792768, i32 49288689, i32 81528817, i32 -804911946, i32 79495169, i32 -251586576, i32 -1241201657, i32 30410244, i32 -133907200, i32 543682816, i32 1568141590, i32 -9178635, i32 40811007, i32 -1190911500, i32 -2013461800, i32 -111085308, i32 -53412736, i32 1075967200, i32 -100367, i32 -35855, i32 -201167175, i32 -658963423, i32 76020994, i32 -2131140359, i32 -520302340, i32 -247455244, i32 -1188630425, i32 569639534, i32 47757572, i32 -117143555, i32 -58656416, i32 -186581808, i32 1743798305, i32 -536350460, i32 100972039, i32 -1124071728, i32 -1066929916, i32 107263495, i32 -268409137, i32 200541284, i32 745009395, i32 -821664586, i32 109052006, i32 -268371727, i32 1689660519, i32 6737670, i32 -252574080, i32 133235815, i32 79038436, i32 446470, i32 1743848637, i32 1689651136, i32 6737670, i32 -201038608, i32 1743909659, i32 2012292848, i32 1945108481, i32 40810752, i32 -1190911500, i32 -2013461800, i32 -111085307, i32 -53412736, i32 1075967200, i32 371222513, i32 -201167175, i32 -658963423, i32 92798210, i32 -2131140359, i32 -520302340, i32 -247455244, i32 -267738505, i32 1857618035, i32 69334018, i32 -50145095, i32 1626932615, i32 -788758279, i32 569696508, i32 -1744766912, i32 1722810390, i32 302773248, i32 -201234768, i32 250873355, i32 544731180, i32 -268038412, i32 1743849591, i32 1689651140, i32 6737670, i32 -201037827, i32 1743909659, i32 1689651140, i32 6737670, i32 -201037827, i32 280425227, i32 -1744766972, i32 362283030, i32 135312897, i32 1358520569, i32 -520302340, i32 -1237310988, i32 468976194, i32 -268371735, i32 -2068435833, i32 8965894, i32 -1744822632, i32 479723805, i32 52140034, i32 -200273738, i32 16294689, i32 -1241506152, i32 569639952, i32 -134154114, i32 -102696704, i32 46250448, i32 -1744653639, i32 280363027, i32 -264968444, i32 -533469439, i32 20100609, i32 -1744031504, i32 1442438709, i32 -200928584, i32 194569246, i32 -234055439, i32 -251475013, i32 -1241004873, i32 -1144060236, i32 -53412864, i32 908195296, i32 1879111683, i32 200540614, i32 -859311858, i32 12054787, i32 185529352, i32 197969905, i32 16824305, i32 53879285, i32 -693108488, i32 -1744047103, i32 -201271632, i32 16308235, i32 16253176, i32 917504248, i32 285996032, i32 132122609, i32 -804911946, i32 79495169, i32 133234936, i32 79038436, i32 118790, i32 16254141, i32 -201312592, i32 133239051, i32 79038432, i32 184326, i32 16254141, i32 132384753, i32 -804911946, i32 79495170, i32 854851832, i32 -1002966783, i32 104117767, i32 -50318385, i32 200541233, i32 20050950, i32 854851832, i32 -1002966783, i32 104117767, i32 -50318385, i32 200541234, i32 20050950, i32 1090060536, i32 144197617, i32 -184469520, i32 -251176415, i32 -201070361, i32 569736737, i32 32769950, i32 21149193, i32 -51438604, i32 -184485824, i32 -200827359, i32 569707793, i32 301205430, i32 806286342, i32 -184535056, i32 -267953631, i32 569704759, i32 1991968636, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1241002463, i32 301204580, i32 3665951, i32 125575669, i32 327739377, i32 -260169228, i32 569704503, i32 -403634342, i32 569643912, i32 -268371842, i32 569704503, i32 938477402, i32 2082600192, i32 -387452665, i32 2116154371, i32 -184469520, i32 -251176415, i32 -200046361, i32 938507809, i32 2082600193, i32 -1998065401, i32 2116154387, i32 569704696, i32 -403634308, i32 569639912, i32 7781246, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651150, i32 403829764, i32 327739377, i32 -260169228, i32 569704503, i32 -403634342, i32 569643912, i32 -268371842, i32 569704759, i32 -403634308, i32 569639912, i32 7781246, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651150, i32 454161412, i32 129376757, i32 -184535056, i32 -251176415, i32 -200046361, i32 1022393889, i32 20050945, i32 1475346680, i32 138932224, i32 -1157540682, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 147005941, i32 -201038666, i32 1409100561, i32 21149189, i32 -254272524, i32 1991967031, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1240956383, i32 16254052, i32 -1240971280, i32 1425998146, i32 7781176, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651330, i32 873591812, i32 -201308496, i32 1992022043, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1240939743, i32 301204580, i32 7781135, i32 -201247056, i32 854853147, i32 -1157564415, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 133374453, i32 -201038666, i32 -1008260847, i32 884343086, i32 89390337, i32 -1241483589, i32 1358496869, i32 -1157339756, i32 1354564182, i32 -66816515, i32 1545729360, i32 73709065, i32 -825818888, i32 48543480, i32 219996343, i32 -134156648, i32 -31329024, i32 69334025, i32 -201074192, i32 16269345, i32 167649781, i32 -268164620, i32 569639898, i32 -201263040, i32 -1043922638, i32 34911992, i32 -181922128, i32 -1610532321, i32 -1743981549, i32 329252914, i32 832048332, i32 36828160, i32 -520498951, i32 1743900921, i32 1676738560, i32 1737625600, i32 7781121, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651725, i32 -1328481276, i32 469041366, i32 1475346611, i32 7781120, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651639, i32 -804129532, i32 -523909376, i32 -1241483589, i32 1358496869, i32 -1157339756, i32 1354564182, i32 -66816515, i32 1545729360, i32 73709065, i32 11342325, i32 -1157539856, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 162996725, i32 -184261450, i32 -1157592559, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 151658997, i32 -201038666, i32 1540057617, i32 7781344, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651279, i32 39565572, i32 250901693, i32 30847043, i32 -264430604, i32 569704535, i32 301205943, i32 -523909325, i32 157032949, i32 -265743884, i32 569704535, i32 301205943, i32 -524957921, i32 157032949, i32 -183168524, i32 -1123528927, i32 147179380, i32 -200729612, i32 250872370, i32 -120666365, i32 169615861, i32 -788733700, i32 -1190522124, i32 569705084, i32 16253750, i32 401670392, i32 347473368, i32 1167110, i32 -251588426, i32 -1241131001, i32 30410244, i32 -251347712, i32 -237436697, i32 -183283741, i32 -134064607, i32 15200512, i32 1445065992, i32 -134154238, i32 3273728, i32 97785841, i32 -821685066, i32 280363025, i32 -737677055, i32 100972037, i32 -1124073008, i32 1477963780, i32 -117296396, i32 35567888, i32 54469109, i32 301207804, i32 36828169, i32 -1225847052, i32 532174864, i32 -434375674, i32 -186842380, i32 250871848, i32 187], [62 x i32] zeroinitializer }>, [832 x i8] zeroinitializer }, align 32
@gf100_pmu_data = internal global { <{ [849 x i32], [47 x i32] }>, [896 x i8] } { <{ [849 x i32], [47 x i32] }> <{ [849 x i32] [i32 1381256777, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1414745928, i32 1290, i32 1191, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1481459021, i32 1876, i32 1862, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1179796816, i32 1880, i32 1878, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1598239305, i32 2952, i32 2603, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1414743380, i32 2993, i32 2954, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1162626121, i32 3005, i32 3003, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1353, i32 2, i32 0, i32 1491, i32 3, i32 2, i32 1691, i32 262148, i32 0, i32 1719, i32 65541, i32 0, i32 1748, i32 65542, i32 0, i32 1627, i32 7, i32 0, i32 1759, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 16384, i32 65536, i32 256, i32 262144, i32 1048576, i32 4194304, i32 16777216, i32 67108864, i32 268435456, i32 8192, i32 32768, i32 131072, i32 512, i32 524288, i32 2097152, i32 8388608, i32 33554432, i32 134217728, i32 536870912, i32 57656, i32 57680, i32 57704, i32 57728, i32 57940, i32 57972, i32 59236, i32 59264, i32 59292, i32 59320], [47 x i32] zeroinitializer }>, [896 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [15 x i8] c"gf100_pmu_fwif\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 66, i32 1 }
@___asan_gen_.6 = private unnamed_addr constant [10 x i8] c"gf100_pmu\00", align 1
@___asan_gen_.7 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gf100.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 44, i32 1 }
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"gf100_pmu_code\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 920, i32 17 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"gf100_pmu_data\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [60 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/fuc/gf100.fuc3.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 2, i32 17 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @gf100_pmu_fwif, ptr @gf100_pmu, ptr @gf100_pmu_code, ptr @gf100_pmu_data], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_pmu_fwif to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_pmu to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_pmu_code to i32), i32 3328, i32 4160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_pmu_data to i32), i32 3584, i32 4480, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_pmu_reset(ptr nocapture noundef readonly %pmu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void @nvkm_mc_disable(ptr noundef %1, i32 noundef 19, i32 noundef 0) #3
  tail call void @nvkm_mc_enable(ptr noundef %1, i32 noundef 19, i32 noundef 0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_disable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_enable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @gf100_pmu_enabled(ptr nocapture noundef readonly %pmu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %call = tail call zeroext i1 @nvkm_mc_enabled(ptr noundef %1, i32 noundef 19, i32 noundef 0) #3
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_mc_enabled(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @gf100_pmu_nofw(ptr nocapture readnone %pmu, i32 %ver, ptr nocapture readnone %fwif) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_pmu_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ppmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_pmu_new_(ptr noundef nonnull @gf100_pmu_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ppmu) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pmu_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pmu_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gt215_pmu_fini(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gt215_pmu_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pmu_send(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gt215_pmu_recv(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @gf100_pmu_fwif, !1, !"gf100_pmu_fwif", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gf100.c", i32 66, i32 1}
!2 = !{ptr @gf100_pmu, !3, !"gf100_pmu", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gf100.c", i32 44, i32 1}
!4 = !{ptr @gf100_pmu_code, !5, !"gf100_pmu_code", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/fuc/gf100.fuc3.h", i32 920, i32 17}
!6 = !{ptr @gf100_pmu_data, !7, !"gf100_pmu_data", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/fuc/gf100.fuc3.h", i32 2, i32 17}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
