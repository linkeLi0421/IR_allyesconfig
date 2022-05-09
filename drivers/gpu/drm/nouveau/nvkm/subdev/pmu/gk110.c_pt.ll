; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk110.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk110.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.151 = type { i32, i32 }
%struct.nvkm_pmu_fwif = type { i32, ptr, ptr, ptr }
%struct.nvkm_pmu_func = type { ptr, %struct.anon.141, %struct.anon.142, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.141 = type { ptr, i32 }
%struct.anon.142 = type { ptr, i32 }
%struct.nvkm_falcon_func = type { %struct.anon, %struct.anon.0, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.anon.140, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.anon.140 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
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
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
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

@gk110_pmu_pgob.magic = internal constant { [16 x %struct.anon.151], [32 x i8] } { [16 x %struct.anon.151] [%struct.anon.151 { i32 132384, i32 -4 }, %struct.anon.151 { i32 132388, i32 -2 }, %struct.anon.151 { i32 132388, i32 -4 }, %struct.anon.151 { i32 132388, i32 -8 }, %struct.anon.151 { i32 132388, i32 -32 }, %struct.anon.151 { i32 132400, i32 -2 }, %struct.anon.151 { i32 132396, i32 -6 }, %struct.anon.151 { i32 132396, i32 -16 }, %struct.anon.151 { i32 132396, i32 -64 }, %struct.anon.151 { i32 132396, i32 -256 }, %struct.anon.151 { i32 132396, i32 -1024 }, %struct.anon.151 { i32 132396, i32 -197632 }, %struct.anon.151 { i32 132396, i32 -984064 }, %struct.anon.151 { i32 132396, i32 -8324096 }, %struct.anon.151 { i32 132392, i32 -2 }, %struct.anon.151 { i32 132392, i32 -4 }], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk110.c\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@gk110_pmu_fwif = internal constant { [2 x %struct.nvkm_pmu_fwif], [32 x i8] } { [2 x %struct.nvkm_pmu_fwif] [%struct.nvkm_pmu_fwif { i32 -1, ptr @gf100_pmu_nofw, ptr @gk110_pmu, ptr null }, %struct.nvkm_pmu_fwif zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gk110_pmu = internal constant { %struct.nvkm_pmu_func, [40 x i8] } { %struct.nvkm_pmu_func { ptr @gt215_pmu_flcn, %struct.anon.141 { ptr @gk110_pmu_code, i32 3072 }, %struct.anon.142 { ptr @gk110_pmu_data, i32 3584 }, ptr @gf100_pmu_enabled, ptr @gf100_pmu_reset, ptr @gt215_pmu_init, ptr @gt215_pmu_fini, ptr @gt215_pmu_intr, ptr @gt215_pmu_send, ptr @gt215_pmu_recv, ptr null, ptr @gk110_pmu_pgob }, [40 x i8] zeroinitializer }, align 32
@gt215_pmu_flcn = external dso_local constant %struct.nvkm_falcon_func, align 4
@gk110_pmu_code = internal global { <{ [709 x i32], [59 x i32] }>, [768 x i8] } { <{ [709 x i32], [59 x i32] }> <{ [709 x i32] [i32 54595317, i32 127928305, i32 -1124069680, i32 30929156, i32 30666752, i32 128714737, i32 -1124069936, i32 -1395134204, i32 14536455, i32 1879102705, i32 -235594764, i32 -821582633, i32 16253149, i32 127928305, i32 -1124069680, i32 -1542983420, i32 905223, i32 -672070467, i32 -739245838, i32 -1408765695, i32 905223, i32 -672070467, i32 -573634644, i32 13955328, i32 -182717328, i32 -1862729480, i32 -2014281479, i32 8965932, i32 -819161104, i32 -1732575079, i32 111065090, i32 -51110156, i32 -124715904, i32 -107939584, i32 747106432, i32 -1191147313, i32 569639662, i32 47888644, i32 -1207652867, i32 200541868, i32 748154898, i32 -1157588529, i32 -1682439528, i32 -501287930, i32 -1862500100, i32 -375914248, i32 9875459, i32 -1742074892, i32 -1698981366, i32 253555714, i32 -184428560, i32 -1123909599, i32 353301652, i32 -1332016488, i32 200540326, i32 110802953, i32 -2147083020, i32 -377447671, i32 1491121667, i32 40429233, i32 -121234444, i32 -1124009728, i32 -108988156, i32 -106890864, i32 -104793680, i32 -102696496, i32 16249072, i32 -117339906, i32 -796397184, i32 8965893, i32 -251559754, i32 -804925433, i32 79495176, i32 -821524496, i32 -1983643512, i32 537654274, i32 -258277248, i32 569661671, i32 -1693869898, i32 -201288016, i32 133172747, i32 643124, i32 159384765, i32 9036954, i32 1007416328, i32 109615089, i32 -1006593585, i32 200540826, i32 -1060638426, i32 13422340, i32 -403586823, i32 -470724792, i32 -672115629, i32 -450759424, i32 -239010814, i32 -804995065, i32 79495180, i32 109578225, i32 -1124070960, i32 -526913276, i32 -40846080, i32 133170313, i32 577540, i32 -2130967363, i32 -67073794, i32 -52364048, i32 -54461232, i32 -56558416, i32 -58655600, i32 3339264, i32 -1057422856, i32 -672026375, i32 -739245756, i32 -1423837952, i32 -389223421, i32 11841539, i32 -334361612, i32 -251402002, i32 -268352297, i32 569704659, i32 -826735701, i32 -55510014, i32 -117376832, i32 -240059968, i32 -268352297, i32 569704659, i32 -826735701, i32 11841538, i32 -1123742732, i32 -55509788, i32 -251594560, i32 -268352297, i32 -302055213, i32 -117376788, i32 -192874096, i32 -124252110, i32 8826883, i32 -1118626572, i32 940044420, i32 -1124071216, i32 881324036, i32 -1744795441, i32 -1732535799, i32 15317762, i32 -268173696, i32 -1999697785, i32 42266624, i32 -266331148, i32 -1999686521, i32 115390464, i32 -1207366668, i32 485754600, i32 872935438, i32 -1124069680, i32 -1710325756, i32 -268335120, i32 147863559, i32 -201016064, i32 -2130964431, i32 16290044, i32 -1862696711, i32 -1744443240, i32 -2031090455, i32 109688836, i32 -1003877388, i32 -2003565672, i32 411088388, i32 -1744793925, i32 -1971322630, i32 26050560, i32 -2147316608, i32 -1867119733, i32 127201281, i32 -201004672, i32 -1862532559, i32 16285948, i32 -2014281479, i32 20051032, i32 -1207924072, i32 200541870, i32 1484830224, i32 40404657, i32 -185590796, i32 -1900478158, i32 -125764606, i32 -1071516416, i32 -1761479678, i32 -1862729480, i32 -392658695, i32 82417669, i32 -1207880972, i32 200541833, i32 59360317, i32 -268336970, i32 -394262652, i32 48928773, i32 -1879117575, i32 -1175389951, i32 -1718353169, i32 15317764, i32 -1743200074, i32 -325581845, i32 32348162, i32 -117379432, i32 -17761115, i32 838074616, i32 -51315711, i32 -124715904, i32 135786752, i32 1167105, i32 17371623, i32 -33024842, i32 401670164, i32 334495968, i32 470282240, i32 -1124073008, i32 -15208444, i32 -803993616, i32 79495169, i32 -251521040, i32 -267911147, i32 30412807, i32 -251347712, i32 -268372713, i32 351338515, i32 285147135, i32 271709184, i32 -268363792, i32 30423047, i32 -268124928, i32 -241673993, i32 1486849, i32 -101053452, i32 1492170261, i32 -101576972, i32 -115279600, i32 -1790904016, i32 -761982751, i32 -1111180016, i32 -1058144332, i32 -1188028929, i32 888209972, i32 884408319, i32 273004048, i32 -1157577797, i32 -486604364, i32 37009712, i32 -51983, i32 -1240451914, i32 -1011150779, i32 28621568, i32 -1154477313, i32 1090257075, i32 553398524, i32 16257276, i32 78649329, i32 -251653681, i32 -821780441, i32 314048546, i32 789312518, i32 -1811472700, i32 -524876562, i32 -342359440, i32 49059843, i32 -1744704104, i32 569704686, i32 280363749, i32 253674497, i32 78645233, i32 -1124069680, i32 -1022430204, i32 401670392, i32 334581321, i32 -508013996, i32 -1291062266, i32 80484337, i32 -251653681, i32 -821770201, i32 384827426, i32 101890056, i32 -991163404, i32 884344611, i32 -265242876, i32 54231042, i32 -2147337088, i32 1048576317, i32 18920960, i32 -250665744, i32 -804993017, i32 79495170, i32 -264230928, i32 47185927, i32 -133907200, i32 -2145914624, i32 269792768, i32 40900081, i32 80742385, i32 -1124073008, i32 -2145914620, i32 269792768, i32 49288689, i32 81528817, i32 -1124073008, i32 18345988, i32 79955953, i32 -1124073008, i32 -251594748, i32 -250208153, i32 -235577993, i32 -1174405261, i32 569639534, i32 47757572, i32 -117143555, i32 -58656416, i32 -186581808, i32 2012296225, i32 1945239550, i32 1857683455, i32 69334018, i32 -50145095, i32 1626932359, i32 -788758279, i32 569696508, i32 -261623500, i32 40810790, i32 -1190911500, i32 -2013461800, i32 -111085308, i32 -53412736, i32 874640608, i32 -251369488, i32 -804790265, i32 79495174, i32 130050033, i32 -268409137, i32 200541284, i32 745009398, i32 -2147457329, i32 16314630, i32 -819173392, i32 109052006, i32 73920754, i32 132384753, i32 -1124071728, i32 -1066929916, i32 6737671, i32 -201038608, i32 1743910427, i32 2012292848, i32 1945108481, i32 40810752, i32 -1190911500, i32 -2013461800, i32 -111085307, i32 -53412736, i32 874640608, i32 371222513, i32 -201167175, i32 -658963423, i32 92798210, i32 -2131140359, i32 -520302340, i32 -248241676, i32 -267738505, i32 1857618035, i32 69334018, i32 -50145095, i32 1626932615, i32 -788758279, i32 569696508, i32 -1241450444, i32 16253968, i32 -1744824680, i32 280363285, i32 -111085304, i32 -53412784, i32 874640608, i32 -201178442, i32 16312603, i32 -819165200, i32 513278088, i32 18716672, i32 -1744692072, i32 280363803, i32 -2061372400, i32 513278200, i32 68204032, i32 -127524364, i32 -117377024, i32 -1177486880, i32 -1296497983, i32 1284098, i32 -419163978, i32 -419303372, i32 -1241391053, i32 821035314, i32 -566913012, i32 314070521, i32 -467733498, i32 -1729033320, i32 -876875252, i32 -994578174, i32 12308231, i32 -520302340, i32 48570869, i32 -965738248, i32 235664385, i32 63752177, i32 134264817, i32 -250933516, i32 -250884921, i32 -184483657, i32 -134027999, i32 30846976, i32 -1332016140, i32 200540374, i32 -134154024, i32 -134154240, i32 3584000, i32 -250737676, i32 -804790265, i32 79495169, i32 133234936, i32 30410724, i32 -133907200, i32 3584000, i32 -250737676, i32 -804790265, i32 79495170, i32 133234936, i32 47187940, i32 -133907200, i32 20116480, i32 130299889, i32 -50318385, i32 200541233, i32 20050950, i32 854851832, i32 -1002966783, i32 3395335, i32 -201051395, i32 838075915, i32 -117377023, i32 -1740115648, i32 20443144, i32 109650421, i32 65595377, i32 -177856012, i32 -200883935, i32 1119226113, i32 -283380735, i32 16269564, i32 113320437, i32 -183692812, i32 -200878559, i32 250873361, i32 3665968, i32 109650421, i32 -184469520, i32 -1157192415, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 116072949, i32 -201038666, i32 938483473, i32 -1524501248, i32 -1998065402, i32 1713501203, i32 -184535056, i32 -251229919, i32 -200046361, i32 16279073, i32 -184535056, i32 -268007135, i32 569704503, i32 -403634523, i32 569639912, i32 20443238, i32 109650421, i32 327739377, i32 -261742092, i32 569704759, i32 -403634523, i32 569643912, i32 -184485786, i32 -251222751, i32 -201070361, i32 1991992865, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1241060575, i32 301204580, i32 -1998065384, i32 1713501203, i32 -184535056, i32 -251229919, i32 -200046361, i32 16279073, i32 -184469520, i32 -251222751, i32 -201070361, i32 1991992865, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1241060575, i32 301204580, i32 -702417637, i32 3665926, i32 109650421, i32 327739377, i32 -261742092, i32 838074684, i32 -268371967, i32 1206911063, i32 22328840, i32 -1241483589, i32 1358496869, i32 -1157339756, i32 1354564182, i32 -66816515, i32 -534645424, i32 73709063, i32 -47509004, i32 1119225171, i32 -669256703, i32 -1157548048, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 127869429, i32 -133929802, i32 138932224, i32 -16694602, i32 1991981140, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1241014495, i32 301204580, i32 4632628, i32 -1143464972, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 132129269, i32 -201038666, i32 1991970577, i32 20361216, i32 -200926220, i32 16253234, i32 -1241483589, i32 1358496869, i32 -1157339756, i32 1354564182, i32 -66816515, i32 270660944, i32 73709063, i32 -416738828, i32 -1241436477, i32 1409089844, i32 7781125, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651321, i32 -956237820, i32 -457770802, i32 350271237, i32 -184485680, i32 -200729823, i32 -638581727, i32 874640387, i32 569704696, i32 569641243, i32 64679940, i32 -130801164, i32 20116480, i32 -1225211449, i32 380633620, i32 975172904, i32 -200040447, i32 3315724, i32 214700960, i32 -201313896, i32 -788987343, i32 -788930311, i32 26609, i32 268461041, i32 -1157535854, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 153559541, i32 -66820938, i32 14069968, i32 11738101, i32 -1157605392, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 148120053, i32 -184261450, i32 -956248047, i32 1992024261, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1240958687, i32 301270116, i32 1475346605, i32 7781121, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651412, i32 -1978534652, i32 7781120, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651239, i32 1779561476, i32 -1142924341, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 124527093, i32 -1190894410, i32 1958543963, i32 -1337782540, i32 468976086, i32 5763133, i32 148120053, i32 -952954380, i32 569761989, i32 301205625, i32 5763113, i32 148120053, i32 -954265100, i32 569761973, i32 301205625, i32 1814164757, i32 -948650745, i32 468977861, i32 36893705, i32 -956100876, i32 569768142, i32 -520353482, i32 318034172, i32 41728266, i32 48570869, i32 16253176, i32 98047985, i32 -1241509425, i32 133234960, i32 30410200, i32 -251347712, i32 -237436697, i32 -183283741, i32 -134080735, i32 15200512, i32 388101384, i32 -134154238, i32 3273728, i32 97785841, i32 -1241509425, i32 133234960, i32 30410196, i32 -268124928, i32 854874135, i32 -1190070014, i32 569704990, i32 284951278, i32 -200732172, i32 250872369, i32 1477490415, i32 -200925256, i32 49604123, i32 2684125, i32 12652276], [59 x i32] zeroinitializer }>, [768 x i8] zeroinitializer }, align 32
@gk110_pmu_data = internal global { <{ [839 x i32], [57 x i32] }>, [896 x i8] } { <{ [839 x i32], [57 x i32] }> <{ [839 x i32] [i32 1381256777, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1414745928, i32 1173, i32 1086, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1481459021, i32 1667, i32 1653, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1179796816, i32 1671, i32 1669, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1598239305, i32 2722, i32 2373, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1414743380, i32 2757, i32 2724, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1162626121, i32 2769, i32 2767, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1227, i32 2, i32 0, i32 1356, i32 3, i32 2, i32 1488, i32 262148, i32 0, i32 1516, i32 65541, i32 0, i32 1542, i32 65542, i32 0, i32 1483, i32 7, i32 0, i32 1553, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536, i32 131072, i32 262144, i32 524288, i32 1048576, i32 2097152, i32 4194304, i32 8388608, i32 16777216, i32 33554432, i32 67108864, i32 134217728, i32 268435456, i32 536870912], [57 x i32] zeroinitializer }>, [896 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 38, i32 4 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 70, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"gk110_pmu_fwif\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 103, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [10 x i8] c"gk110_pmu\00", align 1
@___asan_gen_.17 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk110.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 86, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"gk110_pmu_code\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 919, i32 17 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"gk110_pmu_data\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [60 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/fuc/gf119.fuc4.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 2, i32 17 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @gk110_pmu_pgob.magic, ptr @.str, ptr @.str.1, ptr @gk110_pmu_fwif, ptr @gk110_pmu, ptr @gk110_pmu_code, ptr @gk110_pmu_data], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_pmu_pgob.magic to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_pmu_fwif to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_pmu to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_pmu_code to i32), i32 3072, i32 3840, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_pmu_data to i32), i32 3584, i32 4480, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk110_pmu_pgob(ptr nocapture noundef readonly %pmu, i1 zeroext %enable) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %and = and i32 %4, -4097
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %and) #3, !srcloc !25
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr7 = getelementptr i8, ptr %8, i32 512
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr15 = getelementptr i8, ptr %11, i32 512
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  %or22 = or i32 %12, 134217728
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr24 = getelementptr i8, ptr %14, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %or22) #3, !srcloc !25
  tail call void @msleep(i32 noundef 50) #3
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr31 = getelementptr i8, ptr %16, i32 1091468
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  tail call void @arm_heavy_mb() #3
  %or38 = or i32 %17, 2
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr40 = getelementptr i8, ptr %19, i32 1091468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %or38) #3, !srcloc !25
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr47 = getelementptr i8, ptr %21, i32 1091468
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  tail call void @arm_heavy_mb() #3
  %or54 = or i32 %22, 1
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr56 = getelementptr i8, ptr %24, i32 1091468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %or54) #3, !srcloc !25
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr63 = getelementptr i8, ptr %26, i32 1091468
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  %and69 = and i32 %27, -2
  %28 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri, align 4
  %add.ptr72 = getelementptr i8, ptr %29, i32 1091468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %and69) #3, !srcloc !25
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr79 = getelementptr i8, ptr %31, i32 132788
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  %33 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri, align 4
  %add.ptr88 = getelementptr i8, ptr %34, i32 132788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %32) #3, !srcloc !25
  br label %do.body90

do.body90:                                        ; preds = %if.end141.do.body90_crit_edge, %entry
  %i.0284 = phi i32 [ 0, %entry ], [ %inc, %if.end141.do.body90_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  call void @arm_heavy_mb() #3
  %arrayidx = getelementptr [16 x %struct.anon.151], ptr @gk110_pmu_pgob.magic, i32 0, i32 %i.0284
  %data = getelementptr [16 x %struct.anon.151], ptr @gk110_pmu_pgob.magic, i32 0, i32 %i.0284, i32 1
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data, align 4
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  %add.ptr95 = getelementptr i8, ptr %38, i32 %40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 %36) #3, !srcloc !25
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #3
  %41 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #3
  br label %do.body96

do.body96:                                        ; preds = %do.cond105.do.body96_crit_edge, %do.body90
  %42 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri, align 4
  %add.ptr101 = getelementptr i8, ptr %43, i32 %40
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101) #3, !srcloc !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %tobool.not = icmp sgt i32 %44, -1
  br i1 %tobool.not, label %do.body96.if.end141_crit_edge, label %do.cond105

do.body96.if.end141_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end141

do.cond105:                                       ; preds = %do.body96
  %call106 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #3
  %cmp107 = icmp sgt i64 %call106, -1
  br i1 %cmp107, label %do.cond105.do.body96_crit_edge, label %do.end119

do.cond105.do.body96_crit_edge:                   ; preds = %do.cond105
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body96

do.end119:                                        ; preds = %do.cond105
  %45 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %_wait, align 8
  %device121 = getelementptr inbounds %struct.nvkm_timer, ptr %46, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %device121 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device121, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 8
  %call122 = call ptr @dev_driver_string(ptr noundef %50) #3
  %51 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %_wait, align 8
  %device125 = getelementptr inbounds %struct.nvkm_timer, ptr %52, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %device125 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device125, align 4
  %dev126 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dev126 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev126, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %58, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end119.dev_name.exit_crit_edge

do.end119.dev_name.exit_crit_edge:                ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #5
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end119.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %60, %if.end.i ], [ %58, %do.end119.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call122, ptr noundef %retval.0.i) #3
  br label %if.end141

if.end141:                                        ; preds = %dev_name.exit, %do.body96.if.end141_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #3
  %inc = add nuw nsw i32 %i.0284, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %if.end141.do.body90_crit_edge

if.end141.do.body90_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body90

for.end:                                          ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #5
  %61 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pri, align 4
  %add.ptr148 = getelementptr i8, ptr %62, i32 1091468
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr148) #3, !srcloc !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  call void @arm_heavy_mb() #3
  %and154 = and i32 %63, -3
  %64 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pri, align 4
  %add.ptr157 = getelementptr i8, ptr %65, i32 1091468
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr157, i32 %and154) #3, !srcloc !25
  %66 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pri, align 4
  %add.ptr164 = getelementptr i8, ptr %67, i32 1091468
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr164) #3, !srcloc !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  call void @arm_heavy_mb() #3
  %or171 = or i32 %68, 1
  %69 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pri, align 4
  %add.ptr173 = getelementptr i8, ptr %70, i32 1091468
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr173, i32 %or171) #3, !srcloc !25
  %71 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pri, align 4
  %add.ptr180 = getelementptr i8, ptr %72, i32 1091468
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr180) #3, !srcloc !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  call void @arm_heavy_mb() #3
  %and186 = and i32 %73, -2
  %74 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pri, align 4
  %add.ptr189 = getelementptr i8, ptr %75, i32 1091468
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr189, i32 %and186) #3, !srcloc !25
  %76 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pri, align 4
  %add.ptr196 = getelementptr i8, ptr %77, i32 512
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr196) #3, !srcloc !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  call void @arm_heavy_mb() #3
  %and202 = and i32 %78, -134217729
  %79 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pri, align 4
  %add.ptr205 = getelementptr i8, ptr %80, i32 512
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr205, i32 %and202) #3, !srcloc !25
  %81 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pri, align 4
  %add.ptr212 = getelementptr i8, ptr %82, i32 512
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr212) #3, !srcloc !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @arm_heavy_mb() #3
  %or219 = or i32 %83, 4096
  %84 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pri, align 4
  %add.ptr221 = getelementptr i8, ptr %85, i32 512
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr221, i32 %or219) #3, !srcloc !25
  %86 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pri, align 4
  %add.ptr225 = getelementptr i8, ptr %87, i32 512
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr225) #3, !srcloc !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !49
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk110_pmu_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ppmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_pmu_new_(ptr noundef nonnull @gk110_pmu_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ppmu) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pmu_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_pmu_nofw(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gf100_pmu_enabled(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_pmu_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pmu_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gt215_pmu_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gt215_pmu_intr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pmu_send(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gt215_pmu_recv(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @gk110_pmu_pgob.magic, !1, !"magic", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk110.c", i32 38, i32 4}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk110.c", i32 70, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @gk110_pmu_fwif, !6, !"gk110_pmu_fwif", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk110.c", i32 103, i32 1}
!7 = !{ptr @gk110_pmu, !8, !"gk110_pmu", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk110.c", i32 86, i32 1}
!9 = !{ptr @gk110_pmu_code, !10, !"gk110_pmu_code", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/fuc/gf119.fuc4.h", i32 919, i32 17}
!11 = !{ptr @gk110_pmu_data, !12, !"gk110_pmu_data", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/fuc/gf119.fuc4.h", i32 2, i32 17}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 5388308}
!23 = !{i64 2156265506}
!24 = !{i64 2156265908}
!25 = !{i64 5387890}
!26 = !{i64 2156266396}
!27 = !{i64 2156267166}
!28 = !{i64 2156267568}
!29 = !{i64 2156268441}
!30 = !{i64 2156268843}
!31 = !{i64 2156269716}
!32 = !{i64 2156270118}
!33 = !{i64 2156270991}
!34 = !{i64 2156271393}
!35 = !{i64 2156272266}
!36 = !{i64 2156272668}
!37 = !{i64 2156273452}
!38 = !{i64 2156275370}
!39 = !{i64 2156277033}
!40 = !{i64 2156277435}
!41 = !{i64 2156278308}
!42 = !{i64 2156278710}
!43 = !{i64 2156279583}
!44 = !{i64 2156279985}
!45 = !{i64 2156280858}
!46 = !{i64 2156281260}
!47 = !{i64 2156282133}
!48 = !{i64 2156282535}
!49 = !{i64 2156283023}
