; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk104.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_pmu_fwif = type { i32, ptr, ptr, ptr }
%struct.nvkm_pmu_func = type { ptr, %struct.anon.141, %struct.anon.142, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.141 = type { ptr, i32 }
%struct.anon.142 = type { ptr, i32 }
%struct.nvkm_falcon_func = type { %struct.anon.136, %struct.anon.137, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.anon.140, [0 x %struct.nvkm_sclass] }
%struct.anon.136 = type { ptr, i32 }
%struct.anon.137 = type { ptr, i32 }
%struct.anon.140 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_pmu = type { ptr, %struct.nvkm_subdev, %struct.nvkm_falcon, ptr, ptr, ptr, ptr, i8, %struct.completion, %struct.anon.143, %struct.anon.144 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.138, %struct.anon.139, %struct.nvkm_engine }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.138 = type { i32, ptr, i32, i8 }
%struct.anon.139 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.111 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.111 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.143 = type { %struct.mutex, i32, i32 }
%struct.anon.144 = type { i32, i32, %struct.work_struct, %struct.wait_queue_head, i32, i32, [2 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@gk104_pmu_fwif = internal constant { [2 x %struct.nvkm_pmu_fwif], [32 x i8] } { [2 x %struct.nvkm_pmu_fwif] [%struct.nvkm_pmu_fwif { i32 -1, ptr @gf100_pmu_nofw, ptr @gk104_pmu, ptr null }, %struct.nvkm_pmu_fwif zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gk104_pmu = internal constant { %struct.nvkm_pmu_func, [40 x i8] } { %struct.nvkm_pmu_func { ptr @gt215_pmu_flcn, %struct.anon.141 { ptr @gk104_pmu_code, i32 3072 }, %struct.anon.142 { ptr @gk104_pmu_data, i32 3584 }, ptr @gf100_pmu_enabled, ptr @gf100_pmu_reset, ptr @gt215_pmu_init, ptr @gt215_pmu_fini, ptr @gt215_pmu_intr, ptr @gt215_pmu_send, ptr @gt215_pmu_recv, ptr null, ptr @gk104_pmu_pgob }, [40 x i8] zeroinitializer }, align 32
@gt215_pmu_flcn = external dso_local constant %struct.nvkm_falcon_func, align 4
@gk104_pmu_code = internal global { <{ [709 x i32], [59 x i32] }>, [768 x i8] } { <{ [709 x i32], [59 x i32] }> <{ [709 x i32] [i32 54595317, i32 127928305, i32 -1124069680, i32 30929156, i32 30666752, i32 128714737, i32 -1124069936, i32 -1395134204, i32 14536455, i32 1879102705, i32 -235594764, i32 -821582633, i32 16253149, i32 127928305, i32 -1124069680, i32 -1542983420, i32 905223, i32 -672070467, i32 -739245838, i32 -1408765695, i32 905223, i32 -672070467, i32 -573634644, i32 13955328, i32 -182717328, i32 -1862729480, i32 -2014281479, i32 8965932, i32 -819161104, i32 -1732575079, i32 111065090, i32 -51110156, i32 -124715904, i32 -107939584, i32 747106432, i32 -1191147313, i32 569639662, i32 47888644, i32 -1207652867, i32 200541868, i32 748154898, i32 -1157588529, i32 -1682439528, i32 -501287930, i32 -1862500100, i32 -375914248, i32 9875459, i32 -1742074892, i32 -1698981366, i32 253555714, i32 -184428560, i32 -1123909599, i32 353301652, i32 -1332016488, i32 200540326, i32 110802953, i32 -2147083020, i32 -377447671, i32 1491121667, i32 40429233, i32 -121234444, i32 -1124009728, i32 -108988156, i32 -106890864, i32 -104793680, i32 -102696496, i32 16249072, i32 -117339906, i32 -796397184, i32 8965893, i32 -251559754, i32 -804925433, i32 79495176, i32 -821524496, i32 -1983643512, i32 537654274, i32 -258277248, i32 569661671, i32 -1693869898, i32 -201288016, i32 133172747, i32 643124, i32 159384765, i32 9036954, i32 1007416328, i32 109615089, i32 -1006593585, i32 200540826, i32 -1060638426, i32 13422340, i32 -403586823, i32 -470724792, i32 -672115629, i32 -450759424, i32 -239010814, i32 -804995065, i32 79495180, i32 109578225, i32 -1124070960, i32 -526913276, i32 -40846080, i32 133170313, i32 577540, i32 -2130967363, i32 -67073794, i32 -52364048, i32 -54461232, i32 -56558416, i32 -58655600, i32 3339264, i32 -1057422856, i32 -672026375, i32 -739245756, i32 -1423837952, i32 -389223421, i32 11841539, i32 -334361612, i32 -251402002, i32 -268352297, i32 569704659, i32 -826735701, i32 -55510014, i32 -117376832, i32 -240059968, i32 -268352297, i32 569704659, i32 -826735701, i32 11841538, i32 -1123742732, i32 -55509788, i32 -251594560, i32 -268352297, i32 -302055213, i32 -117376788, i32 -192874096, i32 -124252110, i32 8826883, i32 -1118626572, i32 940044420, i32 -1124071216, i32 881324036, i32 -1744795441, i32 -1732535799, i32 15317762, i32 -268173696, i32 -1999697785, i32 42266624, i32 -266331148, i32 -1999686521, i32 115390464, i32 -1207366668, i32 485754600, i32 872935438, i32 -1124069680, i32 -1710325756, i32 -268335120, i32 147863559, i32 -201016064, i32 -2130964431, i32 16290044, i32 -1862696711, i32 -1744443240, i32 -2031090455, i32 109688836, i32 -1003877388, i32 -2003565672, i32 411088388, i32 -1744793925, i32 -1971322630, i32 26050560, i32 -2147316608, i32 -1867119733, i32 127201281, i32 -201004672, i32 -1862532559, i32 16285948, i32 -2014281479, i32 20051032, i32 -1207924072, i32 200541870, i32 1484830224, i32 40404657, i32 -185590796, i32 -1900478158, i32 -125764606, i32 -1071516416, i32 -1761479678, i32 -1862729480, i32 -392658695, i32 82417669, i32 -1207880972, i32 200541833, i32 59360317, i32 -268336970, i32 -394262652, i32 48928773, i32 -1879117575, i32 -1175389951, i32 -1718353169, i32 15317764, i32 -1743200074, i32 -325581845, i32 32348162, i32 -117379432, i32 -17761115, i32 838074616, i32 -51315711, i32 -124715904, i32 135786752, i32 1167105, i32 17371623, i32 -33024842, i32 401670164, i32 334495968, i32 470282240, i32 -1124073008, i32 -15208444, i32 -803993616, i32 79495169, i32 -251521040, i32 -267911147, i32 30412807, i32 -251347712, i32 -268372713, i32 351338515, i32 285147135, i32 271709184, i32 -268363792, i32 30423047, i32 -268124928, i32 -241673993, i32 1486849, i32 -101053452, i32 1492170261, i32 -101576972, i32 -115279600, i32 -1790904016, i32 -761982751, i32 -1111180016, i32 -1058144332, i32 -1188028929, i32 888209972, i32 884408319, i32 273004048, i32 -1157577797, i32 -486604364, i32 37009712, i32 -51983, i32 -1240451914, i32 -1011150779, i32 28621568, i32 -1154477313, i32 1090257075, i32 553398524, i32 16257276, i32 78649329, i32 -251653681, i32 -821780441, i32 314048546, i32 789312518, i32 -1811472700, i32 -524876562, i32 -342359440, i32 49059843, i32 -1744704104, i32 569704686, i32 280363749, i32 253674497, i32 78645233, i32 -1124069680, i32 -1022430204, i32 401670392, i32 334581321, i32 -508013996, i32 -1291062266, i32 80484337, i32 -251653681, i32 -821770201, i32 384827426, i32 101890056, i32 -991163404, i32 884344611, i32 -265242876, i32 54231042, i32 -2147337088, i32 1048576317, i32 18920960, i32 -250665744, i32 -804993017, i32 79495170, i32 -264230928, i32 47185927, i32 -133907200, i32 -2145914624, i32 269792768, i32 40900081, i32 80742385, i32 -1124073008, i32 -2145914620, i32 269792768, i32 49288689, i32 81528817, i32 -1124073008, i32 18345988, i32 79955953, i32 -1124073008, i32 -251594748, i32 -250208153, i32 -235577993, i32 -1174405261, i32 569639534, i32 47757572, i32 -117143555, i32 -58656416, i32 -186581808, i32 2012296225, i32 1945239550, i32 1857683455, i32 69334018, i32 -50145095, i32 1626932359, i32 -788758279, i32 569696508, i32 -261623500, i32 40810790, i32 -1190911500, i32 -2013461800, i32 -111085308, i32 -53412736, i32 874640608, i32 -251369488, i32 -804790265, i32 79495174, i32 130050033, i32 -268409137, i32 200541284, i32 745009398, i32 -2147457329, i32 16314630, i32 -819173392, i32 109052006, i32 73920754, i32 132384753, i32 -1124071728, i32 -1066929916, i32 6737671, i32 -201038608, i32 1743910427, i32 2012292848, i32 1945108481, i32 40810752, i32 -1190911500, i32 -2013461800, i32 -111085307, i32 -53412736, i32 874640608, i32 371222513, i32 -201167175, i32 -658963423, i32 92798210, i32 -2131140359, i32 -520302340, i32 -248241676, i32 -267738505, i32 1857618035, i32 69334018, i32 -50145095, i32 1626932615, i32 -788758279, i32 569696508, i32 -1241450444, i32 16253968, i32 -1744824680, i32 280363285, i32 -111085304, i32 -53412784, i32 874640608, i32 -201178442, i32 16312603, i32 -819165200, i32 513278088, i32 18716672, i32 -1744692072, i32 280363803, i32 -2061372400, i32 513278200, i32 68204032, i32 -127524364, i32 -117377024, i32 -1177486880, i32 -1296497983, i32 1284098, i32 -419163978, i32 -419303372, i32 -1241391053, i32 821035314, i32 -566913012, i32 314070521, i32 -467733498, i32 -1729033320, i32 -876875252, i32 -994578174, i32 12308231, i32 -520302340, i32 48570869, i32 -965738248, i32 235664385, i32 63752177, i32 134264817, i32 -250933516, i32 -250884921, i32 -184483657, i32 -134027999, i32 30846976, i32 -1332016140, i32 200540374, i32 -134154024, i32 -134154240, i32 3584000, i32 -250737676, i32 -804790265, i32 79495169, i32 133234936, i32 30410724, i32 -133907200, i32 3584000, i32 -250737676, i32 -804790265, i32 79495170, i32 133234936, i32 47187940, i32 -133907200, i32 20116480, i32 130299889, i32 -50318385, i32 200541233, i32 20050950, i32 854851832, i32 -1002966783, i32 3395335, i32 -201051395, i32 838075915, i32 -117377023, i32 -1740115648, i32 20443144, i32 109650421, i32 65595377, i32 -177856012, i32 -200883935, i32 1119226113, i32 -283380735, i32 16269564, i32 113320437, i32 -183692812, i32 -200878559, i32 250873361, i32 3665968, i32 109650421, i32 -184469520, i32 -1157192415, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 116072949, i32 -201038666, i32 938483473, i32 -1524501248, i32 -1998065402, i32 1713501203, i32 -184535056, i32 -251229919, i32 -200046361, i32 16279073, i32 -184535056, i32 -268007135, i32 569704503, i32 -403634523, i32 569639912, i32 20443238, i32 109650421, i32 327739377, i32 -261742092, i32 569704759, i32 -403634523, i32 569643912, i32 -184485786, i32 -251222751, i32 -201070361, i32 1991992865, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1241060575, i32 301204580, i32 -1998065384, i32 1713501203, i32 -184535056, i32 -251229919, i32 -200046361, i32 16279073, i32 -184469520, i32 -251222751, i32 -201070361, i32 1991992865, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1241060575, i32 301204580, i32 -702417637, i32 3665926, i32 109650421, i32 327739377, i32 -261742092, i32 838074684, i32 -268371967, i32 1206911063, i32 22328840, i32 -1241483589, i32 1358496869, i32 -1157339756, i32 1354564182, i32 -66816515, i32 -534645424, i32 73709063, i32 -47509004, i32 1119225171, i32 -669256703, i32 -1157548048, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 127869429, i32 -133929802, i32 138932224, i32 -16694602, i32 1991981140, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1241014495, i32 301204580, i32 4632628, i32 -1143464972, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 132129269, i32 -201038666, i32 1991970577, i32 20361216, i32 -200926220, i32 16253234, i32 -1241483589, i32 1358496869, i32 -1157339756, i32 1354564182, i32 -66816515, i32 270660944, i32 73709063, i32 -416738828, i32 -1241436477, i32 1409089844, i32 7781125, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651321, i32 -956237820, i32 -457770802, i32 350271237, i32 -184485680, i32 -200729823, i32 -638581727, i32 874640387, i32 569704696, i32 569641243, i32 64679940, i32 -130801164, i32 20116480, i32 -1225211449, i32 380633620, i32 975172904, i32 -200040447, i32 3315724, i32 214700960, i32 -201313896, i32 -788987343, i32 -788930311, i32 26609, i32 268461041, i32 -1157535854, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 153559541, i32 -66820938, i32 14069968, i32 11738101, i32 -1157605392, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 148120053, i32 -184261450, i32 -956248047, i32 1992024261, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1240958687, i32 301270116, i32 1475346605, i32 7781121, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651412, i32 -1978534652, i32 7781120, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651239, i32 1779561476, i32 -1142924341, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 124527093, i32 -1190894410, i32 1958543963, i32 -1337782540, i32 468976086, i32 5763133, i32 148120053, i32 -952954380, i32 569761989, i32 301205625, i32 5763113, i32 148120053, i32 -954265100, i32 569761973, i32 301205625, i32 1814164757, i32 -948650745, i32 468977861, i32 36893705, i32 -956100876, i32 569768142, i32 -520353482, i32 318034172, i32 41728266, i32 48570869, i32 16253176, i32 98047985, i32 -1241509425, i32 133234960, i32 30410200, i32 -251347712, i32 -237436697, i32 -183283741, i32 -134080735, i32 15200512, i32 388101384, i32 -134154238, i32 3273728, i32 97785841, i32 -1241509425, i32 133234960, i32 30410196, i32 -268124928, i32 854874135, i32 -1190070014, i32 569704990, i32 284951278, i32 -200732172, i32 250872369, i32 1477490415, i32 -200925256, i32 49604123, i32 2684125, i32 12652276], [59 x i32] zeroinitializer }>, [768 x i8] zeroinitializer }, align 32
@gk104_pmu_data = internal global { <{ [839 x i32], [57 x i32] }>, [896 x i8] } { <{ [839 x i32], [57 x i32] }> <{ [839 x i32] [i32 1381256777, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1414745928, i32 1173, i32 1086, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1481459021, i32 1667, i32 1653, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1179796816, i32 1671, i32 1669, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1598239305, i32 2722, i32 2373, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1414743380, i32 2757, i32 2724, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1162626121, i32 2769, i32 2767, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1227, i32 2, i32 0, i32 1356, i32 3, i32 2, i32 1488, i32 262148, i32 0, i32 1516, i32 65541, i32 0, i32 1542, i32 65542, i32 0, i32 1483, i32 7, i32 0, i32 1553, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536, i32 131072, i32 262144, i32 524288, i32 1048576, i32 2097152, i32 4194304, i32 8388608, i32 16777216, i32 33554432, i32 67108864, i32 134217728, i32 268435456, i32 536870912], [57 x i32] zeroinitializer }>, [896 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"War00C800_0\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk104.c\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 228, i64 230, i64 231]
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"gk104_pmu_fwif\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 124, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [10 x i8] c"gk104_pmu\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 107, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"gk104_pmu_code\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 919, i32 17 }
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"gk104_pmu_data\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [60 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/fuc/gf119.fuc4.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 2, i32 17 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 84, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk104.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 39, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @gk104_pmu_fwif, ptr @gk104_pmu, ptr @gk104_pmu_code, ptr @gk104_pmu_data, ptr @.str, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_pmu_fwif to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_pmu to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_pmu_code to i32), i32 3072, i32 3840, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_pmu_data to i32), i32 3584, i32 4480, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_pmu_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ppmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_pmu_new_(ptr noundef nonnull @gk104_pmu_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ppmu) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pmu_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_pmu_nofw(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gf100_pmu_enabled(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_pmu_reset(ptr noundef) #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gk104_pmu_pgob(ptr nocapture noundef readonly %pmu, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %fuse = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %fuse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fuse, align 8
  %call = tail call i32 @nvkm_fuse_read(ptr noundef %3, i32 noundef 796) #3
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 512
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %and3 = and i32 %6, -4097
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %and3) #3, !srcloc !25
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %10, i32 512
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr17 = getelementptr i8, ptr %13, i32 512
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  %or24 = or i32 %14, 134217728
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %16, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %or24) #3, !srcloc !25
  tail call void @msleep(i32 noundef 50) #3
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr33 = getelementptr i8, ptr %18, i32 1091468
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  tail call void @arm_heavy_mb() #3
  %or40 = or i32 %19, 2
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr42 = getelementptr i8, ptr %21, i32 1091468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %or40) #3, !srcloc !25
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr49 = getelementptr i8, ptr %23, i32 1091468
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  tail call void @arm_heavy_mb() #3
  %or56 = or i32 %24, 1
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr58 = getelementptr i8, ptr %26, i32 1091468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %or56) #3, !srcloc !25
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr65 = getelementptr i8, ptr %28, i32 1091468
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  %and71 = and i32 %29, -2
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr74 = getelementptr i8, ptr %31, i32 1091468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %and71) #3, !srcloc !25
  %32 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri, align 4
  %add.ptr81 = getelementptr i8, ptr %33, i32 131076
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  %and87 = and i32 %34, 1073741823
  %cond = select i1 %enable, i32 -1073741824, i32 1073741824
  %or89 = or i32 %and87, %cond
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr91 = getelementptr i8, ptr %36, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 %or89) #3, !srcloc !25
  tail call void @msleep(i32 noundef 50) #3
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %add.ptr98 = getelementptr i8, ptr %38, i32 1091468
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  tail call void @arm_heavy_mb() #3
  %and104 = and i32 %39, -3
  %40 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri, align 4
  %add.ptr107 = getelementptr i8, ptr %41, i32 1091468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 %and104) #3, !srcloc !25
  %42 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri, align 4
  %add.ptr114 = getelementptr i8, ptr %43, i32 1091468
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  tail call void @arm_heavy_mb() #3
  %or121 = or i32 %44, 1
  %45 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri, align 4
  %add.ptr123 = getelementptr i8, ptr %46, i32 1091468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 %or121) #3, !srcloc !25
  %47 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri, align 4
  %add.ptr130 = getelementptr i8, ptr %48, i32 1091468
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  tail call void @arm_heavy_mb() #3
  %and136 = and i32 %49, -2
  %50 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri, align 4
  %add.ptr139 = getelementptr i8, ptr %51, i32 1091468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr139, i32 %and136) #3, !srcloc !25
  %52 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pri, align 4
  %add.ptr146 = getelementptr i8, ptr %53, i32 512
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  tail call void @arm_heavy_mb() #3
  %and152 = and i32 %54, -134217729
  %55 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pri, align 4
  %add.ptr155 = getelementptr i8, ptr %56, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr155, i32 %and152) #3, !srcloc !25
  %57 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri, align 4
  %add.ptr162 = getelementptr i8, ptr %58, i32 512
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr162) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %or169 = or i32 %59, 4096
  %60 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pri, align 4
  %add.ptr171 = getelementptr i8, ptr %61, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr171, i32 %or169) #3, !srcloc !25
  %62 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri, align 4
  %add.ptr175 = getelementptr i8, ptr %63, i32 512
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr175) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 6
  %65 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfgopt, align 4
  %call178 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %66, ptr noundef nonnull @.str, i1 noundef zeroext true) #3
  br i1 %call178, label %if.then179, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then179:                                       ; preds = %if.end
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %67 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %chipset, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values)
  switch i32 %68, label %if.then179.cleanup_crit_edge [
    i32 228, label %sw.bb
    i32 230, label %if.then179.cleanup.sink.split.sink.split_crit_edge
    i32 231, label %if.then179.cleanup.sink.split_crit_edge
  ]

if.then179.cleanup.sink.split_crit_edge:          ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.then179.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.sink.split

if.then179.cleanup_crit_edge:                     ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @magic_(ptr noundef %1, i32 noundef -2080332769, i32 noundef 6) #3
  tail call fastcc void @magic_(ptr noundef %1, i32 noundef -2080373727, i32 noundef 1) #3
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %sw.bb, %if.then179.cleanup.sink.split.sink.split_crit_edge
  %.sink243 = phi i32 [ -2046778337, %sw.bb ], [ -2113887201, %if.then179.cleanup.sink.split.sink.split_crit_edge ]
  %.sink242 = phi i32 [ -2046819295, %sw.bb ], [ -2113928159, %if.then179.cleanup.sink.split.sink.split_crit_edge ]
  %.sink241 = phi i32 [ -1946115041, %sw.bb ], [ -2080332769, %if.then179.cleanup.sink.split.sink.split_crit_edge ]
  %.sink240 = phi i32 [ -1946155999, %sw.bb ], [ -2080373727, %if.then179.cleanup.sink.split.sink.split_crit_edge ]
  %.sink239.ph = phi i32 [ -1912560609, %sw.bb ], [ -1979669473, %if.then179.cleanup.sink.split.sink.split_crit_edge ]
  %.sink.ph = phi i32 [ -1912601567, %sw.bb ], [ -1979710431, %if.then179.cleanup.sink.split.sink.split_crit_edge ]
  tail call fastcc void @magic_(ptr noundef %1, i32 noundef %.sink243, i32 noundef 6) #3
  tail call fastcc void @magic_(ptr noundef %1, i32 noundef %.sink242, i32 noundef 1) #3
  tail call fastcc void @magic_(ptr noundef %1, i32 noundef %.sink241, i32 noundef 6) #3
  tail call fastcc void @magic_(ptr noundef %1, i32 noundef %.sink240, i32 noundef 1) #3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.then179.cleanup.sink.split_crit_edge
  %.sink239 = phi i32 [ -2113887201, %if.then179.cleanup.sink.split_crit_edge ], [ %.sink239.ph, %cleanup.sink.split.sink.split ]
  %.sink = phi i32 [ -2113928159, %if.then179.cleanup.sink.split_crit_edge ], [ %.sink.ph, %cleanup.sink.split.sink.split ]
  tail call fastcc void @magic_(ptr noundef %1, i32 noundef %.sink239, i32 noundef 6) #3
  tail call fastcc void @magic_(ptr noundef %1, i32 noundef %.sink, i32 noundef 1) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then179.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fuse_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @magic_(ptr noundef %device, i32 noundef %ctrl, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  tail call void @arm_heavy_mb() #3
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 51200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #3, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !49
  tail call void @arm_heavy_mb() #3
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 51208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #3, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 51200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %ctrl) #3, !srcloc !25
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #3
  %6 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %device, i64 noundef 2000000000, ptr noundef nonnull %_wait) #3
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr1169 = getelementptr i8, ptr %8, i32 51200
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1169) #3, !srcloc !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  %and70 = and i32 %9, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool.not71 = icmp eq i32 %and70, 0
  br i1 %tobool.not71, label %entry.do.cond17_crit_edge, label %entry.while.cond.preheader_crit_edge

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.preheader

entry.do.cond17_crit_edge:                        ; preds = %entry
  br label %do.cond17

do.body9:                                         ; preds = %do.cond17
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %11, i32 51200
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #3, !srcloc !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  %and = and i32 %12, 1073741824
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body9.do.cond17_crit_edge, label %do.body9.while.cond.preheader_crit_edge

do.body9.while.cond.preheader_crit_edge:          ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.preheader

do.body9.do.cond17_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.cond17

while.cond.preheader:                             ; preds = %do.body9.while.cond.preheader_crit_edge, %entry.while.cond.preheader_crit_edge
  %_taken.0.lcssa = phi i64 [ 0, %entry.while.cond.preheader_crit_edge ], [ %call18, %do.body9.while.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool12.not72 = icmp eq i32 %size, 0
  br i1 %tobool12.not72, label %while.cond.preheader.if.end51_crit_edge, label %while.cond.preheader.do.body13_crit_edge

while.cond.preheader.do.body13_crit_edge:         ; preds = %while.cond.preheader
  br label %do.body13

while.cond.preheader.if.end51_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end51

do.body13:                                        ; preds = %do.body13.do.body13_crit_edge, %while.cond.preheader.do.body13_crit_edge
  %size.addr.073 = phi i32 [ %dec, %do.body13.do.body13_crit_edge ], [ %size, %while.cond.preheader.do.body13_crit_edge ]
  %dec = add i32 %size.addr.073, -1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !52
  call void @arm_heavy_mb() #3
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr16 = getelementptr i8, ptr %14, i32 51204
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #3, !srcloc !25
  %tobool12.not = icmp eq i32 %dec, 0
  br i1 %tobool12.not, label %land.lhs.true, label %do.body13.do.body13_crit_edge

do.body13.do.body13_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body13

do.cond17:                                        ; preds = %do.body9.do.cond17_crit_edge, %entry.do.cond17_crit_edge
  %call18 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call18)
  %cmp = icmp sgt i64 %call18, -1
  br i1 %cmp, label %do.body9, label %do.cond17.do.end30_crit_edge

do.cond17.do.end30_crit_edge:                     ; preds = %do.cond17
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end30

land.lhs.true:                                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %_taken.0.lcssa)
  %cmp21 = icmp slt i64 %_taken.0.lcssa, 0
  br i1 %cmp21, label %land.lhs.true.do.end30_crit_edge, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end51

land.lhs.true.do.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end30

do.end30:                                         ; preds = %land.lhs.true.do.end30_crit_edge, %do.cond17.do.end30_crit_edge
  %15 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_wait, align 8
  %device31 = getelementptr inbounds %struct.nvkm_timer, ptr %16, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %device31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device31, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %call32 = call ptr @dev_driver_string(ptr noundef %20) #3
  %21 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_wait, align 8
  %device35 = getelementptr inbounds %struct.nvkm_timer, ptr %22, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %device35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device35, align 4
  %dev36 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev36, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end30.dev_name.exit_crit_edge

do.end30.dev_name.exit_crit_edge:                 ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #5
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end30.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %30, %if.end.i ], [ %28, %do.end30.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %call32, ptr noundef %retval.0.i) #3
  br label %if.end51

if.end51:                                         ; preds = %dev_name.exit, %land.lhs.true.if.end51_crit_edge, %while.cond.preheader.if.end51_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  call void @arm_heavy_mb() #3
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %add.ptr57 = getelementptr i8, ptr %32, i32 51200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 0) #3, !srcloc !25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @gk104_pmu_fwif, !1, !"gk104_pmu_fwif", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk104.c", i32 124, i32 1}
!2 = !{ptr @gk104_pmu, !3, !"gk104_pmu", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk104.c", i32 107, i32 1}
!4 = !{ptr @gk104_pmu_code, !5, !"gk104_pmu_code", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/fuc/gf119.fuc4.h", i32 919, i32 17}
!6 = !{ptr @gk104_pmu_data, !7, !"gk104_pmu_data", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/fuc/gf119.fuc4.h", i32 2, i32 17}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk104.c", i32 84, i32 35}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk104.c", i32 39, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 5388705}
!23 = !{i64 2156272388}
!24 = !{i64 2156272790}
!25 = !{i64 5388287}
!26 = !{i64 2156273278}
!27 = !{i64 2156274048}
!28 = !{i64 2156274450}
!29 = !{i64 2156275323}
!30 = !{i64 2156275725}
!31 = !{i64 2156276598}
!32 = !{i64 2156277000}
!33 = !{i64 2156277873}
!34 = !{i64 2156278275}
!35 = !{i64 2156279170}
!36 = !{i64 2156279616}
!37 = !{i64 2156280511}
!38 = !{i64 2156280913}
!39 = !{i64 2156281786}
!40 = !{i64 2156282188}
!41 = !{i64 2156283061}
!42 = !{i64 2156283463}
!43 = !{i64 2156284336}
!44 = !{i64 2156284738}
!45 = !{i64 2156285611}
!46 = !{i64 2156286013}
!47 = !{i64 2156286501}
!48 = !{i64 2156266816}
!49 = !{i64 2156267229}
!50 = !{i64 2156267630}
!51 = !{i64 2156270050}
!52 = !{i64 2156270187}
!53 = !{i64 2156271547}
