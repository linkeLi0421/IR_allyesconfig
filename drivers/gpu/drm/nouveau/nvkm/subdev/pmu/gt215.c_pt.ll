; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gt215.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gt215.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_falcon_func = type { %struct.anon, %struct.anon.0, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.anon.140, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.anon.140 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_pmu_fwif = type { i32, ptr, ptr, ptr }
%struct.nvkm_pmu_func = type { ptr, %struct.anon.141, %struct.anon.142, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.141 = type { ptr, i32 }
%struct.anon.142 = type { ptr, i32 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_pmu = type { ptr, %struct.nvkm_subdev, %struct.nvkm_falcon, ptr, ptr, ptr, ptr, i8, %struct.completion, %struct.anon.143, %struct.anon.144 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
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

@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gt215.c\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@gt215_pmu_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: %c%c%c%c %08x %08x %08x %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gt215_pmu_recv\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gt215_pmu_recv._entry_ptr = internal global ptr @gt215_pmu_recv._entry, section ".printk_index", align 4
@gt215_pmu_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 151, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: UAS fault at %06x addr %08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gt215_pmu_intr\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gt215_pmu_intr._entry_ptr = internal global ptr @gt215_pmu_intr._entry, section ".printk_index", align 4
@gt215_pmu_intr._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str, i32 166, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: wr32 %06x %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gt215_pmu_intr._entry_ptr.12 = internal global ptr @gt215_pmu_intr._entry.9, section ".printk_index", align 4
@gt215_pmu_intr._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str, i32 172, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: intr %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@gt215_pmu_intr._entry_ptr.15 = internal global ptr @gt215_pmu_intr._entry.13, section ".printk_index", align 4
@gt215_pmu_flcn = dso_local constant { %struct.nvkm_falcon_func, [56 x i8] } { %struct.nvkm_falcon_func { %struct.anon zeroinitializer, %struct.anon.0 zeroinitializer, ptr null, ptr null, i32 3080, i32 3584, ptr @nvkm_falcon_v1_load_imem, ptr @nvkm_falcon_v1_load_dmem, ptr @nvkm_falcon_v1_read_dmem, i32 0, ptr @nvkm_falcon_v1_bind_context, ptr @nvkm_falcon_v1_wait_for_halt, ptr @nvkm_falcon_v1_clear_interrupt, ptr @nvkm_falcon_v1_set_start_addr, ptr @nvkm_falcon_v1_start, ptr @nvkm_falcon_v1_enable, ptr @nvkm_falcon_v1_disable, ptr null, %struct.anon.140 { i32 1184, i32 1200, i32 4 }, %struct.anon.140 { i32 1224, i32 1228, i32 0 }, [0 x %struct.nvkm_sclass] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@gt215_pmu_fwif = internal constant { [2 x %struct.nvkm_pmu_fwif], [32 x i8] } { [2 x %struct.nvkm_pmu_fwif] [%struct.nvkm_pmu_fwif { i32 -1, ptr @gf100_pmu_nofw, ptr @gt215_pmu, ptr null }, %struct.nvkm_pmu_fwif zeroinitializer], [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@gt215_pmu = internal constant { %struct.nvkm_pmu_func, [40 x i8] } { %struct.nvkm_pmu_func { ptr @gt215_pmu_flcn, %struct.anon.141 { ptr @gt215_pmu_code, i32 3328 }, %struct.anon.142 { ptr @gt215_pmu_data, i32 3584 }, ptr @gt215_pmu_enabled, ptr @gt215_pmu_reset, ptr @gt215_pmu_init, ptr @gt215_pmu_fini, ptr @gt215_pmu_intr, ptr @gt215_pmu_send, ptr @gt215_pmu_recv, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gt215_pmu_code = internal global { [832 x i32], [832 x i8] } { [832 x i32] [i32 59903733, i32 127928305, i32 -804911946, i32 79495182, i32 120817, i32 -251538448, i32 -1241011193, i32 231736836, i32 -251347712, i32 -1241010985, i32 -573634860, i32 13955328, i32 -233048976, i32 128243697, i32 -821635914, i32 16253149, i32 127928305, i32 -804911946, i32 79495182, i32 128190449, i32 -804911946, i32 79495181, i32 15914993, i32 -251538448, i32 -1241011193, i32 231736836, i32 -251347712, i32 -1241010985, i32 -573634860, i32 13955328, i32 -233048976, i32 -1862729480, i32 -2014281479, i32 109360684, i32 -268400433, i32 -1800000361, i32 10080006, i32 -1207789381, i32 519308958, i32 -58655503, i32 -117376880, i32 -259982960, i32 -2068435833, i32 8965894, i32 -201134407, i32 -625408991, i32 78511362, i32 -200889160, i32 -1745873653, i32 110409260, i32 -1157588529, i32 -1682439528, i32 -551619578, i32 -1862500100, i32 -375914248, i32 9875459, i32 -1742074892, i32 -1698981366, i32 253555714, i32 -184428560, i32 -1123888863, i32 353301652, i32 -1332016488, i32 200540326, i32 110802953, i32 -2147083020, i32 -377447671, i32 1491121667, i32 40429233, i32 -121234444, i32 -1124009728, i32 -108988156, i32 -106890864, i32 -104793680, i32 -102696496, i32 16249072, i32 -117339906, i32 -796397184, i32 109360645, i32 -1241478961, i32 133235072, i32 79037904, i32 577542, i32 -2014313283, i32 109360648, i32 -1006597937, i32 200540809, i32 -1694466013, i32 -195500048, i32 161012257, i32 9875611, i32 -267318284, i32 79049735, i32 643078, i32 159384765, i32 9036954, i32 1208742920, i32 109615089, i32 -821652298, i32 -1698430823, i32 738980866, i32 79742961, i32 -821640010, i32 -1057423156, i32 1330178033, i32 1414783985, i32 -184494096, i32 -66898399, i32 -1073221184, i32 100972036, i32 -1124070192, i32 -2012745468, i32 100972038, i32 -1124070960, i32 -526913276, i32 -40846080, i32 133170313, i32 100972036, i32 -1124071216, i32 -25101308, i32 -251920248, i32 -788733700, i32 -1325612804, i32 -1862491908, i32 16548092, i32 -134204684, i32 -104793855, i32 -875040336, i32 13889536, i32 67838453, i32 65588460, i32 -201280336, i32 -286518773, i32 -672070680, i32 -739245877, i32 186774784, i32 47102212, i32 -1057181444, i32 -1057423112, i32 -672026375, i32 -739245877, i32 186774784, i32 47102212, i32 -201280336, i32 -457374453, i32 -1057181444, i32 -672071432, i32 -739245877, i32 -319947008, i32 -1862729480, i32 854884601, i32 66623504, i32 -201292112, i32 -2067962596, i32 -1237841936, i32 147850756, i32 -268124928, i32 -2068433785, i32 8965894, i32 -1147532904, i32 -373620072, i32 67010560, i32 -1240954896, i32 -1999698300, i32 42266624, i32 -265937932, i32 -2068433785, i32 8965894, i32 -200875848, i32 -390592245, i32 287110150, i32 -1238104080, i32 248514052, i32 -2147173120, i32 -2014275058, i32 940044289, i32 -804911946, i32 79495176, i32 -66047500, i32 -124715904, i32 -108988160, i32 99129488, i32 -268113512, i32 -1984428922, i32 705426438, i32 -1811703612, i32 -2135554936, i32 9354008, i32 -2147419496, i32 -1920991094, i32 42762241, i32 -1241281664, i32 -1796210288, i32 82411527, i32 -66965004, i32 -125764464, i32 -259983104, i32 838097031, i32 9082881, i32 -200888648, i32 -2135551989, i32 1753657688, i32 -266603518, i32 -1191103756, i32 -2130967922, i32 569704696, i32 32768785, i32 -117376873, i32 -1736377968, i32 -375912984, i32 20116484, i32 -200898120, i32 -1983628021, i32 25212419, i32 -2146990864, i32 -359135768, i32 -17762046, i32 -252116593, i32 -1811746887, i32 -373619559, i32 417379840, i32 -1744573544, i32 -308804884, i32 15636481, i32 -251877895, i32 -201262850, i32 -251920079, i32 -1862500100, i32 401670392, i32 347472136, i32 1167110, i32 17371623, i32 -33024842, i32 401670164, i32 334495968, i32 470282240, i32 -804911946, i32 79495169, i32 -251717648, i32 79041543, i32 118790, i32 401605821, i32 1437954, i32 268955656, i32 -804911946, i32 79495169, i32 18421745, i32 -251653136, i32 -16777452, i32 838074384, i32 18346000, i32 -1237841936, i32 30410244, i32 -268124928, i32 -241673993, i32 1486849, i32 -101053452, i32 1492170261, i32 -101576972, i32 -115279600, i32 -1790904016, i32 -761982751, i32 -1111180016, i32 -1058144332, i32 -1188028929, i32 888209972, i32 884408319, i32 273004048, i32 -1157577797, i32 -486604364, i32 37009712, i32 -51983, i32 -1240451914, i32 -1011150779, i32 28621568, i32 -1154477313, i32 1090257075, i32 553398524, i32 16257276, i32 78649329, i32 -821685066, i32 670105617, i32 615908512, i32 2281222, i32 -200928584, i32 516174347, i32 82744327, i32 40951991, i32 -1744573544, i32 -308804884, i32 15636481, i32 53879285, i32 -1006563146, i32 133238558, i32 79037616, i32 970758, i32 250873021, i32 -251594566, i32 -246527721, i32 -1202564077, i32 200541921, i32 -870846038, i32 102020612, i32 -251653681, i32 -1241200601, i32 583992868, i32 135720960, i32 -200928584, i32 600106507, i32 70563335, i32 49295543, i32 -2147271808, i32 1031799356, i32 4096001, i32 -268361546, i32 133238564, i32 79037640, i32 184326, i32 670041277, i32 520256, i32 -804911946, i32 79495170, i32 401670392, i32 347472000, i32 1880486160, i32 -804785918, i32 100972036, i32 -1124073008, i32 -2145914620, i32 269792768, i32 49288689, i32 81528817, i32 -804911946, i32 79495169, i32 -251586576, i32 -1241201657, i32 30410244, i32 -133907200, i32 277344512, i32 42907926, i32 -1190911500, i32 1743848151, i32 1676804092, i32 1996357631, i32 40366084, i32 -117082371, i32 -59704960, i32 -186581808, i32 1743798305, i32 -536350460, i32 100972039, i32 -1124071728, i32 -1066929916, i32 107263495, i32 -268409137, i32 200541284, i32 745009395, i32 -821664586, i32 109052006, i32 -268371727, i32 1689660519, i32 6737670, i32 -252574080, i32 133235815, i32 79038436, i32 446470, i32 1743848637, i32 1689651136, i32 6737670, i32 -201038608, i32 -2014186725, i32 -1900472816, i32 69334018, i32 -251471943, i32 -234894233, i32 -33554589, i32 -2131164042, i32 -788762375, i32 569696508, i32 -1744766912, i32 1722810390, i32 302773248, i32 -201234768, i32 250873355, i32 544731180, i32 -268038412, i32 1743849591, i32 1689651140, i32 6737670, i32 -201037827, i32 1743909659, i32 1689651140, i32 6737670, i32 -201037827, i32 280425227, i32 -1744766972, i32 362283030, i32 135312897, i32 1358520569, i32 -520302340, i32 -1237310988, i32 468976194, i32 -268371735, i32 -2068435833, i32 8965894, i32 -1744822632, i32 479723805, i32 52140034, i32 -200273738, i32 16294689, i32 -1241506152, i32 569639952, i32 -268371842, i32 2012218199, i32 9957632, i32 1888743424, i32 -201154887, i32 -658963423, i32 283635970, i32 2116154407, i32 16865504, i32 33588209, i32 299931633, i32 -116288528, i32 -58656368, i32 -186581808, i32 1358512161, i32 -251631632, i32 -15658617, i32 -1735094168, i32 92929296, i32 119576561, i32 -116354064, i32 -58656368, i32 -186581808, i32 -1745797087, i32 -1812987776, i32 43956496, i32 -1190911500, i32 -2000354600, i32 -107939552, i32 -53412736, i32 1075967200, i32 87857137, i32 -250571792, i32 -248511865, i32 -109051773, i32 -58656368, i32 -186581808, i32 -403619807, i32 -470809248, i32 14151952, i32 13889792, i32 14454912, i32 -2071939087, i32 -199314448, i32 1475388193, i32 -6819584, i32 9695743, i32 -2136477309, i32 279179264, i32 -201150791, i32 -658963423, i32 -541593342, i32 -4984321, i32 76283391, i32 -2131123975, i32 -520302340, i32 -247455244, i32 -268092249, i32 -2014244701, i32 -2081345534, i32 -1594261504, i32 -788758279, i32 569696508, i32 1625813312, i32 283373573, i32 55281, i32 -2147429391, i32 -251470663, i32 -265875273, i32 569639091, i32 49199523, i32 -1190911500, i32 -1644231971, i32 22066836, i32 -201042320, i32 2057343518, i32 -1451226164, i32 23115264, i32 1879339190, i32 519376998, i32 1358757633, i32 1879134390, i32 519374678, i32 16318166, i32 -788930311, i32 -1191001671, i32 328729266, i32 68204032, i32 32519399, i32 31470567, i32 -268356938, i32 899157040, i32 -1202325026, i32 519308818, i32 -250898204, i32 -1141764968, i32 -1208941877, i32 -1263138876, i32 12308230, i32 -520302340, i32 53879285, i32 -965738248, i32 235664385, i32 63752177, i32 134264817, i32 -250933516, i32 -250884921, i32 -184483657, i32 -134007263, i32 30846976, i32 -1332212748, i32 200540374, i32 -134154024, i32 -134154240, i32 3584000, i32 -250541068, i32 -1240997881, i32 30410244, i32 -133907200, i32 -469241600, i32 100972039, i32 -1124073008, i32 -1342113788, i32 200540214, i32 -536350447, i32 100972039, i32 -1124072752, i32 -251594748, i32 -1240996857, i32 47187460, i32 -133907200, i32 20116480, i32 130299889, i32 -821676874, i32 838664243, i32 101446660, i32 -134139404, i32 20116480, i32 130299889, i32 -821676874, i32 855441459, i32 101446660, i32 -134139404, i32 -247400192, i32 -267872185, i32 569704759, i32 -403634119, i32 569639912, i32 2099377534, i32 151122952, i32 -201243978, i32 1090318107, i32 569704696, i32 301205629, i32 -1792936691, i32 101839880, i32 -265285900, i32 569704503, i32 938477625, i32 1528952065, i32 7781128, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651373, i32 521270276, i32 -184535056, i32 -251110623, i32 -200046361, i32 938507809, i32 958526720, i32 -1998065400, i32 2116154387, i32 938475768, i32 958526720, i32 3665928, i32 140190197, i32 65595377, i32 -260169228, i32 569704759, i32 -403634119, i32 569643912, i32 20443262, i32 140190197, i32 327739377, i32 -125951500, i32 1528952064, i32 -387452664, i32 2116154371, i32 -1241483589, i32 1358496869, i32 -1157339756, i32 1354564182, i32 -66816515, i32 -1390283440, i32 73709064, i32 -250080780, i32 -200046361, i32 938507809, i32 958526720, i32 -1998065400, i32 2116154387, i32 938475768, i32 1528952065, i32 -387452664, i32 2116154371, i32 -1241483589, i32 1358496869, i32 -1157339756, i32 1354564182, i32 -66816515, i32 -1390283440, i32 73709064, i32 -182775308, i32 -267872991, i32 569704503, i32 -403634119, i32 569643912, i32 20770942, i32 -134139404, i32 5763072, i32 -1240971280, i32 1991967060, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1240882655, i32 301204580, i32 89390379, i32 -201243978, i32 938530843, i32 7781121, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651553, i32 -268371964, i32 1119225927, i32 945094401, i32 -1241483589, i32 1358496869, i32 -1157339756, i32 1354564182, i32 -66816515, i32 1629615440, i32 73709065, i32 -1338764812, i32 468975686, i32 7781336, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651618, i32 252834820, i32 -1342146885, i32 468975926, i32 20116486, i32 1991966968, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1240935903, i32 301204580, i32 784590633, i32 20231681, i32 -1157278723, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 171647477, i32 -133929802, i32 -120666368, i32 -1224547146, i32 -1743971104, i32 16253166, i32 182264309, i32 -268164620, i32 569639897, i32 -184485824, i32 -200614623, i32 -621804511, i32 1075966979, i32 854851832, i32 -121518335, i32 -1342040906, i32 536160278, i32 329253178, i32 848825588, i32 -871129088, i32 3250188, i32 -117296652, i32 -102696496, i32 6812112, i32 6549760, i32 23564816, i32 -1241483589, i32 1358496869, i32 -1157339756, i32 1354564182, i32 -66816515, i32 -333318832, i32 73709066, i32 -693055236, i32 -1290013440, i32 5763072, i32 -1241483589, i32 1358496869, i32 -1157339756, i32 1354564182, i32 -66816515, i32 -1776159408, i32 73709066, i32 13636085, i32 -1142897209, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 171647477, i32 -184261450, i32 -268391151, i32 1991967063, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1240820191, i32 301270116, i32 1991966858, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1240864479, i32 301204580, i32 -530855062, i32 -1241483589, i32 1358496869, i32 -1157339756, i32 1354564182, i32 -66816515, i32 773977424, i32 73709065, i32 -1123918919, i32 1125053556, i32 -201206096, i32 1475362075, i32 -1776159488, i32 856814602, i32 -169818681, i32 -200656095, i32 1475356945, i32 -1776159488, i32 521270282, i32 -169822777, i32 -200656095, i32 569709841, i32 1958545710, i32 -200751673, i32 854853915, i32 51311618, i32 -168243513, i32 -66389215, i32 -187630368, i32 2092501522, i32 908195074, i32 -134154237, i32 -669519616, i32 102020613, i32 -1241509425, i32 133234960, i32 79037912, i32 118790, i32 -403635011, i32 -470689536, i32 569709391, i32 16253526, i32 134277105, i32 39199221, i32 16253176, i32 -251645452, i32 -1241132009, i32 298780180, i32 17872384, i32 97781745, i32 -804911946, i32 79495169, i32 -195553296, i32 284754482, i32 -184410439, i32 -66896095, i32 152171536, i32 -201182732, i32 280424206, i32 102742104, i32 -186246156, i32 687136002, i32 -1156647936, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [832 x i8] zeroinitializer }, align 32
@gt215_pmu_data = internal global { <{ [849 x i32], [47 x i32] }>, [896 x i8] } { <{ [849 x i32], [47 x i32] }> <{ [849 x i32] [i32 1381256777, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1414745928, i32 1290, i32 1191, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1481459021, i32 2099, i32 2085, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1179796816, i32 2103, i32 2101, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1598239305, i32 3175, i32 2826, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1414743380, i32 3216, i32 3177, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1162626121, i32 3228, i32 3226, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1353, i32 2, i32 0, i32 1439, i32 3, i32 2, i32 1583, i32 262148, i32 0, i32 1611, i32 65541, i32 0, i32 1640, i32 65542, i32 0, i32 1519, i32 7, i32 0, i32 1651, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 16384, i32 65536, i32 256, i32 262144, i32 1048576, i32 4194304, i32 16777216, i32 67108864, i32 268435456, i32 8192, i32 32768, i32 131072, i32 512, i32 524288, i32 2097152, i32 8388608, i32 33554432, i32 134217728, i32 536870912, i32 57656, i32 57680, i32 57704, i32 57728, i32 57940, i32 57972, i32 59236, i32 59264, i32 59292, i32 59320], [47 x i32] zeroinitializer }>, [896 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 40, i32 6 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 130, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 149, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 164, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 172, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"gt215_pmu_flcn\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 245, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"gt215_pmu_fwif\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 279, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant [10 x i8] c"gt215_pmu\00", align 1
@___asan_gen_.72 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gt215.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 263, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"gt215_pmu_code\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 920, i32 17 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"gt215_pmu_data\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [60 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/fuc/gt215.fuc3.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 2, i32 17 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @gt215_pmu_intr._entry, ptr @gt215_pmu_intr._entry.13, ptr @gt215_pmu_intr._entry.9, ptr @gt215_pmu_intr._entry_ptr, ptr @gt215_pmu_intr._entry_ptr.12, ptr @gt215_pmu_intr._entry_ptr.15, ptr @gt215_pmu_recv._entry, ptr @gt215_pmu_recv._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @gt215_pmu_flcn, ptr @gt215_pmu_fwif, ptr @gt215_pmu, ptr @gt215_pmu_code, ptr @gt215_pmu_data], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_pmu_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_pmu_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_pmu_intr._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_pmu_intr._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_pmu_flcn to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_pmu_fwif to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_pmu to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_pmu_code to i32), i32 3328, i32 4160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_pmu_data to i32), i32 3584, i32 4480, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gt215_pmu_send(ptr noundef %pmu, ptr noundef writeonly %reply, i32 noundef %process, i32 noundef %message, i32 noundef %data0, i32 noundef %data1) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %send = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %send, i32 noundef 0) #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1090720
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #4
  %5 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #4
  %xor = xor i32 %4, 8
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 1090736
  %8 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #4, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %xor)
  %cmp.not = icmp eq i32 %8, %xor
  br i1 %cmp.not, label %do.cond, label %if.end48

do.cond:                                          ; preds = %do.body
  %call9 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #4
  %cmp10 = icmp sgt i64 %call9, -1
  br i1 %cmp10, label %do.cond.do.body_crit_edge, label %do.end20

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end20:                                         ; preds = %do.cond
  %9 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_wait, align 8
  %device22 = getelementptr inbounds %struct.nvkm_timer, ptr %10, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %device22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device22, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %call23 = call ptr @dev_driver_string(ptr noundef %14) #4
  %15 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_wait, align 8
  %device26 = getelementptr inbounds %struct.nvkm_timer, ptr %16, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %device26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device26, align 4
  %dev27 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev27, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end20.if.then45_crit_edge

do.end20.if.then45_crit_edge:                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then45

if.end.i:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  br label %if.then45

if.then45:                                        ; preds = %if.end.i, %do.end20.if.then45_crit_edge
  %retval.0.i = phi ptr [ %24, %if.end.i ], [ %22, %do.end20.if.then45_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call23, ptr noundef %retval.0.i) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  br label %cleanup145

if.end48:                                         ; preds = %do.body
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  %tobool49.not = icmp eq ptr %reply, null
  br i1 %tobool49.not, label %if.end48.do.body55.preheader_crit_edge, label %if.then50

if.end48.do.body55.preheader_crit_edge:           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body55.preheader

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  %message51 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10, i32 5
  %25 = ptrtoint ptr %message51 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %message, ptr %message51, align 4
  %process53 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10, i32 4
  %26 = ptrtoint ptr %process53 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %process, ptr %process53, align 4
  br label %do.body55.preheader

do.body55.preheader:                              ; preds = %if.then50, %if.end48.do.body55.preheader_crit_edge
  br label %do.body55

do.body55:                                        ; preds = %do.body55.do.body55_crit_edge, %do.body55.preheader
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  call void @arm_heavy_mb() #4
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr60 = getelementptr i8, ptr %28, i32 1090944
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 1) #4, !srcloc !48
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add.ptr64 = getelementptr i8, ptr %30, i32 1090944
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #4, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  %cmp67.not = icmp eq i32 %31, 1
  br i1 %cmp67.not, label %do.body69, label %do.body55.do.body55_crit_edge

do.body55.do.body55_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body55

do.body69:                                        ; preds = %do.body55
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  call void @arm_heavy_mb() #4
  %and = shl i32 %4, 4
  %shl = and i32 %and, 112
  %base = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base, align 4
  %add = add i32 %33, %shl
  %or = or i32 %add, 16777216
  %34 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri, align 4
  %add.ptr74 = getelementptr i8, ptr %35, i32 1089984
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %or) #4, !srcloc !48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  call void @arm_heavy_mb() #4
  %36 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pri, align 4
  %add.ptr79 = getelementptr i8, ptr %37, i32 1089988
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %process) #4, !srcloc !48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  call void @arm_heavy_mb() #4
  %38 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri, align 4
  %add.ptr84 = getelementptr i8, ptr %39, i32 1089988
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %message) #4, !srcloc !48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  call void @arm_heavy_mb() #4
  %40 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri, align 4
  %add.ptr89 = getelementptr i8, ptr %41, i32 1089988
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 %data0) #4, !srcloc !48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  call void @arm_heavy_mb() #4
  %42 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri, align 4
  %add.ptr94 = getelementptr i8, ptr %43, i32 1089988
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %data1) #4, !srcloc !48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  call void @arm_heavy_mb() #4
  %add98 = add i32 %4, 1
  %and99 = and i32 %add98, 15
  %44 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri, align 4
  %add.ptr101 = getelementptr i8, ptr %45, i32 1090720
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 %and99) #4, !srcloc !48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  call void @arm_heavy_mb() #4
  %46 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pri, align 4
  %add.ptr106 = getelementptr i8, ptr %47, i32 1090944
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 0) #4, !srcloc !48
  br i1 %tobool49.not, label %do.body69.cleanup145_crit_edge, label %do.body110

do.body69.cleanup145_crit_edge:                   ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup145

do.body110:                                       ; preds = %do.body69
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 77) #4
  %process117 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10, i32 4
  %48 = ptrtoint ptr %process117 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %process117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp118 = icmp eq i32 %49, 0
  br i1 %cmp118, label %do.body110.do.end135_crit_edge, label %if.end120

do.body110.do.end135_crit_edge:                   ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end135

if.end120:                                        ; preds = %do.body110
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #4
  %50 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #4
  %wait = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10, i32 3
  %call122188 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %51 = ptrtoint ptr %process117 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %process117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp125189 = icmp eq i32 %52, 0
  br i1 %cmp125189, label %if.end120.for.end_crit_edge, label %if.end120.cleanup128_crit_edge

if.end120.cleanup128_crit_edge:                   ; preds = %if.end120
  br label %cleanup128

if.end120.for.end_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cleanup128:                                       ; preds = %cleanup128.cleanup128_crit_edge, %if.end120.cleanup128_crit_edge
  call void @schedule() #4
  %call122 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %53 = ptrtoint ptr %process117 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %process117, align 4
  %cmp125 = icmp eq i32 %54, 0
  br i1 %cmp125, label %cleanup128.for.end_crit_edge, label %cleanup128.cleanup128_crit_edge

cleanup128.cleanup128_crit_edge:                  ; preds = %cleanup128
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup128

cleanup128.for.end_crit_edge:                     ; preds = %cleanup128
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %cleanup128.for.end_crit_edge, %if.end120.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  br label %do.end135

do.end135:                                        ; preds = %for.end, %do.body110.do.end135_crit_edge
  %data = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10, i32 6
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %data, align 4
  %57 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %reply, align 4
  %arrayidx140 = getelementptr %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10, i32 6, i32 1
  %58 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx140, align 4
  %arrayidx141 = getelementptr i32, ptr %reply, i32 1
  %60 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx141, align 4
  br label %cleanup145

cleanup145:                                       ; preds = %do.end135, %do.body69.cleanup145_crit_edge, %if.then45
  %retval.0 = phi i32 [ -16, %if.then45 ], [ 0, %do.end135 ], [ 0, %do.body69.cleanup145_crit_edge ]
  call void @mutex_unlock(ptr noundef %send) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gt215_pmu_recv(ptr noundef %pmu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1090764
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 1090760
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %7)
  %cmp = icmp eq i32 %4, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr10 = getelementptr i8, ptr %9, i32 1090944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 2) #4, !srcloc !48
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr14 = getelementptr i8, ptr %11, i32 1090944
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  %cmp17.not = icmp eq i32 %12, 2
  br i1 %cmp17.not, label %do.body19, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body19:                                        ; preds = %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  %and = shl i32 %4, 4
  %shl = and i32 %and, 112
  %recv = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10
  %13 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %recv, align 4
  %add = add i32 %14, %shl
  %or = or i32 %add, 33554432
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr23 = getelementptr i8, ptr %16, i32 1089984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %or) #4, !srcloc !48
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %18, i32 1089988
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr31 = getelementptr i8, ptr %21, i32 1089988
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr36 = getelementptr i8, ptr %24, i32 1089988
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr41 = getelementptr i8, ptr %27, i32 1089988
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %add47 = add i32 %4, 1
  %and48 = and i32 %add47, 15
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add.ptr50 = getelementptr i8, ptr %30, i32 1090764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %and48) #4, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  tail call void @arm_heavy_mb() #4
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %add.ptr55 = getelementptr i8, ptr %32, i32 1090944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 0) #4, !srcloc !48
  %process57 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10, i32 4
  %33 = ptrtoint ptr %process57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %process57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not = icmp ne i32 %34, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %34)
  %cmp61 = icmp eq i32 %19, %34
  %or.cond = select i1 %tobool.not, i1 %cmp61, i1 false
  br i1 %or.cond, label %land.lhs.true, label %do.body19.do.body75_crit_edge

do.body19.do.body75_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body75

land.lhs.true:                                    ; preds = %do.body19
  %message63 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10, i32 5
  %35 = ptrtoint ptr %message63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %message63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %36)
  %cmp64 = icmp eq i32 %22, %36
  br i1 %cmp64, label %if.then65, label %land.lhs.true.do.body75_crit_edge

land.lhs.true.do.body75_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body75

if.then65:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %data = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10, i32 6
  %37 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %25, ptr %data, align 4
  %arrayidx69 = getelementptr %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10, i32 6, i32 1
  %38 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %28, ptr %arrayidx69, align 4
  %39 = ptrtoint ptr %process57 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %process57, align 4
  %wait = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10, i32 3
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  br label %cleanup

do.body75:                                        ; preds = %land.lhs.true.do.body75_crit_edge, %do.body19.do.body75_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 5
  %40 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp76 = icmp ugt i32 %41, 1
  br i1 %cmp76, label %do.end80, label %do.body75.cleanup_crit_edge

do.body75.cleanup_crit_edge:                      ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end80:                                         ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 4
  %conv83 = and i32 %19, 255
  %and84 = lshr i32 %19, 8
  %conv87 = and i32 %and84, 255
  %and88 = lshr i32 %19, 16
  %conv91 = and i32 %and88, 255
  %shr93 = lshr i32 %19, 24
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %45, ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %conv83, i32 noundef %conv87, i32 noundef %conv91, i32 noundef %shr93, i32 noundef %19, i32 noundef %22, i32 noundef %25, i32 noundef %28) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end80, %do.body75.cleanup_crit_edge, %if.then65, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gt215_pmu_intr(ptr noundef %pmu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1089564
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 1089544
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  %shr = lshr i32 %4, 16
  %neg = xor i32 %shr, -1
  %and = and i32 %4, %neg
  %and8 = and i32 %and, %7
  %and9 = and i32 %and8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %entry.if.end36_crit_edge, label %if.then

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %9, i32 1089900
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool16.not = icmp sgt i32 %10, -1
  br i1 %tobool16.not, label %if.then.if.end36_crit_edge, label %do.body

if.then.if.end36_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

do.body:                                          ; preds = %if.then
  %debug = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not = icmp eq i32 %12, 0
  br i1 %cmp.not, label %do.body.if.end_crit_edge, label %do.end

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 4
  %and21 = and i32 %10, 16777215
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr24 = getelementptr i8, ptr %18, i32 1089896
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !71
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %and21, i32 noundef %19) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !72
  tail call void @arm_heavy_mb() #4
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr33 = getelementptr i8, ptr %21, i32 1089900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 0) #4, !srcloc !48
  %and34 = and i32 %and8, -33
  br label %if.end36

if.end36:                                         ; preds = %if.end, %if.then.if.end36_crit_edge, %entry.if.end36_crit_edge
  %intr.1 = phi i32 [ %and8, %entry.if.end36_crit_edge ], [ %and34, %if.end ], [ %and8, %if.then.if.end36_crit_edge ]
  %and37 = and i32 %intr.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end47_crit_edge, label %if.then39

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %work = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %work) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !73
  tail call void @arm_heavy_mb() #4
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr45 = getelementptr i8, ptr %24, i32 1089540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 64) #4, !srcloc !48
  %and46 = and i32 %intr.1, -65
  br label %if.end47

if.end47:                                         ; preds = %if.then39, %if.end36.if.end47_crit_edge
  %intr.2 = phi i32 [ %and46, %if.then39 ], [ %intr.1, %if.end36.if.end47_crit_edge ]
  %and48 = and i32 %intr.2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end82_crit_edge, label %do.body51

if.end47.if.end82_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

do.body51:                                        ; preds = %if.end47
  %debug53 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 5
  %25 = ptrtoint ptr %debug53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %debug53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp54 = icmp ugt i32 %26, 2
  br i1 %cmp54, label %do.end58, label %do.body51.if.end73_crit_edge

do.body51.if.end73_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end73

do.end58:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device2, align 4
  %dev60 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev60, align 8
  %name61 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %add.ptr65 = getelementptr i8, ptr %32, i32 1091488
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !74
  %34 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri, align 4
  %add.ptr70 = getelementptr i8, ptr %35, i32 1091492
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !75
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.10, ptr noundef %name61, i32 noundef %33, i32 noundef %36) #7
  br label %if.end73

if.end73:                                         ; preds = %do.end58, %do.body51.if.end73_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !76
  tail call void @arm_heavy_mb() #4
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %add.ptr80 = getelementptr i8, ptr %38, i32 1089540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 128) #4, !srcloc !48
  %and81 = and i32 %intr.2, -129
  br label %if.end82

if.end82:                                         ; preds = %if.end73, %if.end47.if.end82_crit_edge
  %intr.3 = phi i32 [ %and81, %if.end73 ], [ %intr.2, %if.end47.if.end82_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %intr.3)
  %tobool83.not = icmp eq i32 %intr.3, 0
  br i1 %tobool83.not, label %if.end82.if.end105_crit_edge, label %do.body85

if.end82.if.end105_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end105

do.body85:                                        ; preds = %if.end82
  %debug87 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 5
  %39 = ptrtoint ptr %debug87 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %debug87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp88.not = icmp eq i32 %40, 0
  br i1 %cmp88.not, label %do.body85.if.end97_crit_edge, label %do.end92

do.body85.if.end97_crit_edge:                     ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end97

do.end92:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device2, align 4
  %dev94 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev94, align 8
  %name95 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.14, ptr noundef %name95, i32 noundef %intr.3) #7
  br label %if.end97

if.end97:                                         ; preds = %do.end92, %do.body85.if.end97_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %45 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri, align 4
  %add.ptr104 = getelementptr i8, ptr %46, i32 1089540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %intr.3) #4, !srcloc !48
  br label %if.end105

if.end105:                                        ; preds = %if.end97, %if.end82.if.end105_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gt215_pmu_fini(ptr nocapture noundef readonly %pmu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %device = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1089556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 96) #4, !srcloc !48
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gt215_pmu_init(ptr nocapture noundef %pmu) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  %_wait114 = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  tail call void @arm_heavy_mb() #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1089984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #4, !srcloc !48
  %4 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmu, align 4
  %size248 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %5, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %size248 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size248, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp250.not = icmp ult i32 %7, 4
  br i1 %cmp250.not, label %entry.do.body10_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body10

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %i.0251 = phi i32 [ %inc, %do.body2.do.body2_crit_edge ], [ 0, %entry.do.body2_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !80
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pmu, align 4
  %data6 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %data6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data6, align 4
  %arrayidx = getelementptr i32, ptr %11, i32 %i.0251
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %15, i32 1089988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %13) #4, !srcloc !48
  %inc = add nuw nsw i32 %i.0251, 1
  %16 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pmu, align 4
  %size = getelementptr inbounds %struct.nvkm_pmu_func, ptr %17, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 4
  %div231 = lshr i32 %19, 2
  %cmp = icmp ult i32 %inc, %div231
  br i1 %cmp, label %do.body2.do.body2_crit_edge, label %do.body2.do.body10_crit_edge

do.body2.do.body10_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body10

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body2

do.body10:                                        ; preds = %do.body2.do.body10_crit_edge, %entry.do.body10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !81
  tail call void @arm_heavy_mb() #4
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr14 = getelementptr i8, ptr %21, i32 1089920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 16777216) #4, !srcloc !48
  %22 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pmu, align 4
  %size17252 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %23, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %size17252 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size17252, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp19254.not = icmp ult i32 %25, 4
  br i1 %cmp19254.not, label %do.body10.do.body39_crit_edge, label %do.body10.for.body20_crit_edge

do.body10.for.body20_crit_edge:                   ; preds = %do.body10
  br label %for.body20

do.body10.do.body39_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body39

for.body20:                                       ; preds = %do.body27.for.body20_crit_edge, %do.body10.for.body20_crit_edge
  %i.1255 = phi i32 [ %inc37, %do.body27.for.body20_crit_edge ], [ 0, %do.body10.for.body20_crit_edge ]
  %and = and i32 %i.1255, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp21 = icmp eq i32 %and, 0
  br i1 %cmp21, label %do.body22, label %for.body20.do.body27_crit_edge

for.body20.do.body27_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body27

do.body22:                                        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  tail call void @arm_heavy_mb() #4
  %26 = lshr i32 %i.1255, 6
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %28, i32 1089928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %26) #4, !srcloc !48
  br label %do.body27

do.body27:                                        ; preds = %do.body22, %for.body20.do.body27_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !83
  tail call void @arm_heavy_mb() #4
  %29 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pmu, align 4
  %code31 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %code31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %code31, align 4
  %arrayidx33 = getelementptr i32, ptr %32, i32 %i.1255
  %33 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx33, align 4
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr35 = getelementptr i8, ptr %36, i32 1089924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %34) #4, !srcloc !48
  %inc37 = add nuw nsw i32 %i.1255, 1
  %37 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pmu, align 4
  %size17 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %38, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %size17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size17, align 4
  %div18232 = lshr i32 %40, 2
  %cmp19 = icmp ult i32 %inc37, %div18232
  br i1 %cmp19, label %do.body27.for.body20_crit_edge, label %do.body27.do.body39_crit_edge

do.body27.do.body39_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body39

do.body27.for.body20_crit_edge:                   ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body20

do.body39:                                        ; preds = %do.body27.do.body39_crit_edge, %do.body10.do.body39_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  tail call void @arm_heavy_mb() #4
  %41 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri, align 4
  %add.ptr43 = getelementptr i8, ptr %42, i32 1089804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 0) #4, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %43 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri, align 4
  %add.ptr48 = getelementptr i8, ptr %44, i32 1089796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 0) #4, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  tail call void @arm_heavy_mb() #4
  %45 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri, align 4
  %add.ptr53 = getelementptr i8, ptr %46, i32 1089792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 2) #4, !srcloc !48
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #4
  %47 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #4
  br label %do.body54

do.body54:                                        ; preds = %do.cond59.do.body54_crit_edge, %do.body39
  %48 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri, align 4
  %add.ptr56 = getelementptr i8, ptr %49, i32 1090768
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #4, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not = icmp eq i32 %50, 0
  br i1 %tobool.not, label %do.cond59, label %if.end99

do.cond59:                                        ; preds = %do.body54
  %call60 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #4
  %cmp61 = icmp sgt i64 %call60, -1
  br i1 %cmp61, label %do.cond59.do.body54_crit_edge, label %do.end73

do.cond59.do.body54_crit_edge:                    ; preds = %do.cond59
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body54

do.end73:                                         ; preds = %do.cond59
  %51 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %_wait, align 8
  %device75 = getelementptr inbounds %struct.nvkm_timer, ptr %52, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %device75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device75, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 8
  %call76 = call ptr @dev_driver_string(ptr noundef %56) #4
  %57 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %_wait, align 8
  %device79 = getelementptr inbounds %struct.nvkm_timer, ptr %58, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %device79 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device79, align 4
  %dev80 = getelementptr inbounds %struct.nvkm_device, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev80, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %64, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end73.if.end95_crit_edge

do.end73.if.end95_crit_edge:                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

if.end.i:                                         ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #6
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %62, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.end.i, %do.end73.if.end95_crit_edge
  %retval.0.i = phi ptr [ %66, %if.end.i ], [ %64, %do.end73.if.end95_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 226, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call76, ptr noundef %retval.0.i) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  br label %cleanup

if.end99:                                         ; preds = %do.body54
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  %67 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pri, align 4
  %add.ptr102 = getelementptr i8, ptr %68, i32 1090768
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #4, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
  %and105 = and i32 %69, 65535
  %base = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 9, i32 1
  %70 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and105, ptr %base, align 4
  %71 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pri, align 4
  %add.ptr108 = getelementptr i8, ptr %72, i32 1090768
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr108) #4, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !89
  %shr111 = lshr i32 %73, 16
  %size113 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 9, i32 2
  %74 = ptrtoint ptr %size113 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %shr111, ptr %size113, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait114) #4
  %75 = call ptr @memset(ptr %_wait114, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait114) #4
  br label %do.body117

do.body117:                                       ; preds = %do.cond126.do.body117_crit_edge, %if.end99
  %76 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pri, align 4
  %add.ptr120 = getelementptr i8, ptr %77, i32 1090780
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #4, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool123.not = icmp eq i32 %78, 0
  br i1 %tobool123.not, label %do.cond126, label %if.end174

do.cond126:                                       ; preds = %do.body117
  %call127 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait114) #4
  %cmp128 = icmp sgt i64 %call127, -1
  br i1 %cmp128, label %do.cond126.do.body117_crit_edge, label %do.end146

do.cond126.do.body117_crit_edge:                  ; preds = %do.cond126
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body117

do.end146:                                        ; preds = %do.cond126
  %79 = ptrtoint ptr %_wait114 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %_wait114, align 8
  %device149 = getelementptr inbounds %struct.nvkm_timer, ptr %80, i32 0, i32 1, i32 1
  %81 = ptrtoint ptr %device149 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device149, align 4
  %dev150 = getelementptr inbounds %struct.nvkm_device, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev150, align 8
  %call151 = call ptr @dev_driver_string(ptr noundef %84) #4
  %85 = ptrtoint ptr %_wait114 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %_wait114, align 8
  %device154 = getelementptr inbounds %struct.nvkm_timer, ptr %86, i32 0, i32 1, i32 1
  %87 = ptrtoint ptr %device154 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device154, align 4
  %dev155 = getelementptr inbounds %struct.nvkm_device, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %dev155 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev155, align 8
  %init_name.i233 = getelementptr inbounds %struct.device, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %init_name.i233 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %init_name.i233, align 8
  %tobool.not.i234 = icmp eq ptr %92, null
  br i1 %tobool.not.i234, label %if.end.i235, label %do.end146.if.end170_crit_edge

do.end146.if.end170_crit_edge:                    ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end170

if.end.i235:                                      ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #6
  %93 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %90, align 4
  br label %if.end170

if.end170:                                        ; preds = %if.end.i235, %do.end146.if.end170_crit_edge
  %retval.0.i236 = phi ptr [ %94, %if.end.i235 ], [ %92, %do.end146.if.end170_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call151, ptr noundef %retval.0.i236) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait114) #4
  br label %cleanup

if.end174:                                        ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait114) #4
  %95 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pri, align 4
  %add.ptr177 = getelementptr i8, ptr %96, i32 1090780
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr177) #4, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !91
  %and180 = and i32 %97, 65535
  %recv = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10
  %98 = ptrtoint ptr %recv to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %and180, ptr %recv, align 4
  %99 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pri, align 4
  %add.ptr184 = getelementptr i8, ptr %100, i32 1090780
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr184) #4, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !92
  %shr187 = lshr i32 %101, 16
  %size189 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10, i32 1
  %102 = ptrtoint ptr %size189 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %shr187, ptr %size189, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  call void @arm_heavy_mb() #4
  %103 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pri, align 4
  %add.ptr194 = getelementptr i8, ptr %104, i32 1089552
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr194, i32 224) #4, !srcloc !48
  br label %cleanup

cleanup:                                          ; preds = %if.end174, %if.end170, %if.end95
  %retval.0 = phi i32 [ 0, %if.end174 ], [ -16, %if.end95 ], [ -16, %if.end170 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_load_imem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_read_dmem(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_bind_context(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_wait_for_halt(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_clear_interrupt(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_set_start_addr(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_start(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_disable(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gt215_pmu_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ppmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_pmu_new_(ptr noundef nonnull @gt215_pmu_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ppmu) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pmu_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_pmu_nofw(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @gt215_pmu_enabled(ptr nocapture noundef readonly %pmu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 139792
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gt215_pmu_reset(ptr nocapture noundef readonly %pmu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 139792
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !96
  tail call void @arm_heavy_mb() #4
  %and = and i32 %4, -2
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 139792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %and) #4, !srcloc !48
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr10 = getelementptr i8, ptr %8, i32 139792
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !98
  tail call void @arm_heavy_mb() #4
  %or17 = or i32 %9, 1
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %11, i32 139792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %or17) #4, !srcloc !48
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr23 = getelementptr i8, ptr %13, i32 139792
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !99
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gt215.c", i32 40, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gt215.c", i32 130, i32 2}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @gt215_pmu_recv._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @gt215_pmu_recv._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gt215.c", i32 149, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @gt215_pmu_intr._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @gt215_pmu_intr._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gt215.c", i32 164, i32 3}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @gt215_pmu_intr._entry.9, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @gt215_pmu_intr._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gt215.c", i32 172, i32 3}
!23 = !{ptr @gt215_pmu_intr._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @gt215_pmu_intr._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @gt215_pmu_flcn, !26, !"gt215_pmu_flcn", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gt215.c", i32 245, i32 1}
!27 = !{ptr @gt215_pmu_fwif, !28, !"gt215_pmu_fwif", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gt215.c", i32 279, i32 1}
!29 = !{ptr @gt215_pmu, !30, !"gt215_pmu", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gt215.c", i32 263, i32 1}
!31 = !{ptr @gt215_pmu_code, !32, !"gt215_pmu_code", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/fuc/gt215.fuc3.h", i32 920, i32 17}
!33 = !{ptr @gt215_pmu_data, !34, !"gt215_pmu_data", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/fuc/gt215.fuc3.h", i32 2, i32 17}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 5392972}
!45 = !{i64 2156270975}
!46 = !{i64 2156272820}
!47 = !{i64 2156274069}
!48 = !{i64 5392554}
!49 = !{i64 2156274525}
!50 = !{i64 2156274959}
!51 = !{i64 2156275412}
!52 = !{i64 2156275816}
!53 = !{i64 2156276216}
!54 = !{i64 2156276614}
!55 = !{i64 2156277036}
!56 = !{i64 2156277456}
!57 = !{i64 2156279250}
!58 = !{i64 2156279635}
!59 = !{i64 2156279977}
!60 = !{i64 2156280433}
!61 = !{i64 2156280867}
!62 = !{i64 2156281369}
!63 = !{i64 2156281754}
!64 = !{i64 2156282139}
!65 = !{i64 2156282524}
!66 = !{i64 2156282880}
!67 = !{i64 2156283300}
!68 = !{i64 2156287198}
!69 = !{i64 2156287583}
!70 = !{i64 2156287968}
!71 = !{i64 2156290921}
!72 = !{i64 2156291263}
!73 = !{i64 2156291676}
!74 = !{i64 2156294588}
!75 = !{i64 2156294973}
!76 = !{i64 2156295315}
!77 = !{i64 2156297823}
!78 = !{i64 2156298254}
!79 = !{i64 2156302023}
!80 = !{i64 2156302462}
!81 = !{i64 2156302888}
!82 = !{i64 2156303293}
!83 = !{i64 2156303728}
!84 = !{i64 2156304154}
!85 = !{i64 2156304567}
!86 = !{i64 2156304980}
!87 = !{i64 2156306829}
!88 = !{i64 2156308097}
!89 = !{i64 2156308482}
!90 = !{i64 2156310260}
!91 = !{i64 2156311528}
!92 = !{i64 2156311913}
!93 = !{i64 2156312255}
!94 = !{i64 2156301681}
!95 = !{i64 2156299095}
!96 = !{i64 2156299497}
!97 = !{i64 2156300370}
!98 = !{i64 2156300772}
!99 = !{i64 2156301260}
