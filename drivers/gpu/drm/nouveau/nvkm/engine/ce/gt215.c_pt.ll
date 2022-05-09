; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/ce/gt215.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/ce/gt215.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.anon.1 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.138, %struct.anon.139, %struct.nvkm_engine }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.138 = type { i32, ptr, i32, i8 }
%struct.anon.139 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.136 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.anon.136 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_gpuobj = type { %union.anon.137, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.137 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }

@gt215_ce_isr_error_name = internal constant { [4 x %struct.nvkm_enum], [48 x i8] } { [4 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 1, ptr @.str.7, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.8, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.9, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gt215_ce_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 61, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s: DISPATCH_ERROR %04x [%s] ch %d [%010llx %s] subc %d mthd %04x data %08x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gt215_ce_intr\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/ce/gt215.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gt215_ce_intr._entry_ptr = internal global ptr @gt215_ce_intr._entry, section ".printk_index", align 4
@.str.5 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ILLEGAL_MTHD\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"INVALID_ENUM\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INVALID_BITFIELD\00", [47 x i8] zeroinitializer }, align 32
@gt215_ce_data = internal global { [145 x i32], [156 x i8] } { [145 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65536, i32 0, i32 0, i32 65600, i32 65888, i32 0, i32 65616, i32 65890, i32 0, i32 196704, i32 65904, i32 0, i32 65904, i32 0, i32 65904, i32 0, i32 458880, i32 40, i32 -4096, i32 44, i32 -524288, i32 48, i32 -8192, i32 52, i32 -2048, i32 56, i32 -4096, i32 60, i32 -524288, i32 64, i32 -8192, i32 458888, i32 84, i32 -4096, i32 88, i32 -524288, i32 92, i32 -8192, i32 96, i32 -2048, i32 100, i32 -4096, i32 104, i32 -524288, i32 108, i32 -8192, i32 131264, i32 66706, i32 0, i32 66843, i32 0, i32 917699, i32 28, i32 -256, i32 32, i32 0, i32 72, i32 -256, i32 76, i32 0, i32 36, i32 -524288, i32 80, i32 -524288, i32 128, i32 -65536, i32 132, i32 -8192, i32 116, i32 -53739520, i32 120, i32 0, i32 124, i32 0, i32 16, i32 -256, i32 20, i32 0, i32 24, i32 0, i32 2048], [156 x i8] zeroinitializer }, align 32
@gt215_ce = internal constant { { %struct.anon, %struct.anon.0, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.1, %struct.anon.1, [2 x %struct.nvkm_sclass] }, [48 x i8] } { { %struct.anon, %struct.anon.0, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.1, %struct.anon.1, [2 x %struct.nvkm_sclass] } { %struct.anon { ptr @gt215_ce_code, i32 1536 }, %struct.anon.0 { ptr @gt215_ce_data, i32 580 }, ptr null, ptr @gt215_ce_intr, i32 0, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.anon.1 zeroinitializer, %struct.anon.1 zeroinitializer, [2 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 34229, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@gt215_ce_code = internal global { <{ [330 x i32], [54 x i32] }>, [384 x i8] } { <{ [330 x i32], [54 x i32] }> <{ [330 x i32] [i32 83756221, i32 890761216, i32 -251653890, i32 -251396073, i32 -251661529, i32 315621411, i32 203813056, i32 -201321776, i32 401674289, i32 670044672, i32 1232899, i32 -201313804, i32 250871848, i32 -2147364867, i32 -200797500, i32 569640459, i32 68338802, i32 -200930316, i32 298107681, i32 1073860620, i32 1206977016, i32 1274967808, i32 523776, i32 -268303175, i32 32769603, i32 100989449, i32 -100266252, i32 66585860, i32 670105848, i32 600773632, i32 507496448, i32 -199816204, i32 569639218, i32 507179090, i32 -268426288, i32 617611591, i32 -822019968, i32 1036533795, i32 571208734, i32 -201248268, i32 1475367457, i32 57143300, i32 -1602726212, i32 -1241415576, i32 -2016409468, i32 23246336, i32 -252700428, i32 600834615, i32 -251594624, i32 -820445129, i32 869220402, i32 -14359552, i32 270841351, i32 16799729, i32 1958569149, i32 1476417112, i32 1354105175, i32 71743492, i32 -1152579340, i32 1203241078, i32 252244996, i32 -1241352517, i32 1471873908, i32 -552668160, i32 -1241364805, i32 1169883972, i32 21338112, i32 -1341893635, i32 468975700, i32 4544544, i32 -1342093736, i32 468975716, i32 5472265, i32 -198177036, i32 1442382130, i32 -200539660, i32 636495118, i32 19263490, i32 268453873, i32 -805289264, i32 670056515, i32 184384, i32 -260046129, i32 615530532, i32 -149163008, i32 486549489, i32 -805226512, i32 16252963, i32 670105848, i32 884810240, i32 -805162000, i32 16252963, i32 19415735, i32 -268352074, i32 1132469817, i32 4241153, i32 105166342, i32 -134200368, i32 -265227264, i32 -1342176848, i32 28311809, i32 50442242, i32 -954399592, i32 1354117189, i32 877053697, i32 -956211018, i32 1890990151, i32 36893697, i32 -1799519043, i32 -1240511804, i32 -1262681019, i32 -201022416, i32 -1510011112, i32 13351872, i32 -201182732, i32 468984334, i32 281538572, i32 -201274437, i32 -1540352498, i32 202961926, i32 -1156266000, i32 250872011, i32 -2134380281, i32 29898752, i32 -1241415498, i32 -1246232144, i32 -1022823420, i32 -1207856970, i32 150209687, i32 6684082, i32 -1743714688, i32 1761419272, i32 84079616, i32 1979540669, i32 470253568, i32 -251627267, i32 -1240985513, i32 1456473684, i32 1079496704, i32 134238391, i32 -1239677288, i32 1689649506, i32 285710344, i32 -50236746, i32 1456473447, i32 5289728, i32 6337537, i32 -1275046192, i32 1456472416, i32 39892032, i32 -1266657584, i32 1456472928, i32 5289920, i32 503748612, i32 -1744808240, i32 1456480006, i32 271643712, i32 1469579512, i32 1752811274, i32 -1234929465, i32 2009531008, i32 242659424, i32 -267838476, i32 250872951, i32 41742351, i32 -49188682, i32 2012219719, i32 257595398, i32 -49194088, i32 -1209007957, i32 79149825, i32 -16665930, i32 -1480866645, i32 274569221, i32 -1157502992, i32 -491387672, i32 -1260454143, i32 -1241130821, i32 -275512864, i32 49003276, i32 -268042499, i32 1622606444, i32 1689649672, i32 7327752, i32 -1157318725, i32 1603797195, i32 291215371, i32 -268370947, i32 -1212481097, i32 28489220, i32 -1157563461, i32 -252115465, i32 -267624552, i32 -1195703881, i32 28489220, i32 -1157563461, i32 -252115464, i32 -1241483077, i32 -1209007486, i32 79215361, i32 -1744520773, i32 -403698088, i32 82426625, i32 -16653642, i32 -138677106, i32 13613828, i32 -1157596741, i32 -251918967, i32 -637693700, i32 11385600, i32 -50296323, i32 -1464139633, i32 78101248, i32 -1157524810, i32 1775240343, i32 139958400, i32 -1157146472, i32 2059075756, i32 8500736, i32 -49249098, i32 1656161675, i32 1741686272, i32 6338304, i32 6868996, i32 1827668216, i32 39892738, i32 140817922, i32 -804759656, i32 1622605927, i32 1469580288, i32 276084231, i32 -1224710192, i32 -1744568224, i32 1741687127, i32 -117377024, i32 -250545920, i32 -1240989689, i32 30344708, i32 18149376, i32 -50717708, i32 -134153200, i32 221562880, i32 -177202188, i32 -251417823, i32 -1240986553, i32 93849156, i32 72398341, i32 -805288496, i32 1475362880, i32 -2142908404, i32 67125431, i32 -1241250408, i32 1171263572, i32 4241152, i32 5763333, i32 22278155, i32 -251640368, i32 -1237303209, i32 1408303444, i32 1171292288, i32 274198848, i32 307491089, i32 -2142908397, i32 353654769, i32 387339249, i32 -239057456, i32 -265944745, i32 1206976851, i32 1152780288, i32 4575238, i32 61546997, i32 135022577, i32 -1744419658, i32 1171260677, i32 1077989376, i32 -805021712, i32 1085767749, i32 93848576, i32 273987076, i32 -1224718896, i32 -251330496, i32 -805109673, i32 1475412037, i32 1408307472, i32 1171264274, i32 101029952, i32 83902647, i32 -251640368, i32 -265944745, i32 1206976851, i32 1152780288, i32 4575238, i32 569704696, i32 1070072747, i32 235664384, i32 25764341, i32 33572849, i32 -249688332, i32 -1240985497, i32 2012218980, i32 285704193, i32 -1742993536, i32 1741692935, i32 1080545280, i32 854869181, i32 -933970686, i32 200541247, i32 -2111703798, i32 168752131, i32 41296373, i32 -200848912, i32 1475346993, i32 138397740, i32 -183890956, i32 -201096671, i32 569707022, i32 1240466038, i32 5763336, i32 106214920, i32 -803141992, i32 1743798358, i32 6549825, i32 88538436, i32 -939502384, i32 200543295, i32 -987630329, i32 -251594749, i32 -1121845209, i32 20181044, i32 -134208560], [54 x i32] zeroinitializer }>, [384 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [24 x i8] c"gt215_ce_isr_error_name\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 35, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 56, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 36, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 37, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 38, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [14 x i8] c"gt215_ce_data\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 2, i32 17 }
@___asan_gen_.51 = private unnamed_addr constant [9 x i8] c"gt215_ce\00", align 1
@___asan_gen_.52 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/ce/gt215.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 65, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"gt215_ce_code\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [59 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/ce/fuc/gt215.fuc3.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 187, i32 17 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @gt215_ce_intr._entry, ptr @gt215_ce_intr._entry_ptr, ptr @gt215_ce_isr_error_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @gt215_ce_data, ptr @gt215_ce, ptr @gt215_ce_code], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_ce_isr_error_name to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_ce_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_ce_data to i32), i32 580, i32 736, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_ce to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_ce_code to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gt215_ce_intr(ptr noundef %ce, ptr noundef readonly %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_falcon, ptr %ce, i32 0, i32 15, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %inst = getelementptr inbounds %struct.nvkm_falcon, ptr %ce, i32 0, i32 15, i32 1, i32 3
  %2 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inst, align 4
  %mul = shl i32 %3, 12
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add = add i32 %mul, 1065024
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  %and = and i32 %6, 65535
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 %add
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #3, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  %10 = lshr i32 %9, 14
  %shl = and i32 %10, 8188
  %and10 = lshr i32 %9, 27
  %shr11 = and i32 %and10, 7
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add14 = add i32 %mul, 1065028
  %add.ptr15 = getelementptr i8, ptr %12, i32 %add14
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #3, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  %call18 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @gt215_ce_isr_error_name, i32 noundef %and) #3
  %debug = getelementptr inbounds %struct.nvkm_falcon, ptr %ce, i32 0, i32 15, i32 1, i32 5
  %14 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_falcon, ptr %ce, i32 0, i32 15, i32 1, i32 4
  %tobool.not = icmp eq ptr %call18, null
  br i1 %tobool.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %name21 = getelementptr inbounds %struct.nvkm_enum, ptr %call18, i32 0, i32 1
  %20 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name21, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi ptr [ %21, %cond.true ], [ @.str.5, %do.end.cond.end_crit_edge ]
  %tobool22.not = icmp eq ptr %chan, null
  br i1 %tobool22.not, label %cond.end.cond.end39_crit_edge, label %cond.true35

cond.end.cond.end39_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end39

cond.true35:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 5
  %22 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %chid, align 8
  %conv = zext i16 %23 to i32
  %inst29 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 6
  %24 = ptrtoint ptr %inst29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %inst29, align 4
  %addr30 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %addr30 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %addr30, align 8
  %client = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client, align 4
  %name36 = getelementptr inbounds %struct.nvkm_client, ptr %29, i32 0, i32 1
  br label %cond.end39

cond.end39:                                       ; preds = %cond.true35, %cond.end.cond.end39_crit_edge
  %cond3364 = phi i64 [ %27, %cond.true35 ], [ 0, %cond.end.cond.end39_crit_edge ]
  %cond266063 = phi i32 [ %conv, %cond.true35 ], [ -1, %cond.end.cond.end39_crit_edge ]
  %cond40 = phi ptr [ %name36, %cond.true35 ], [ @.str.6, %cond.end.cond.end39_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %and, ptr noundef %cond, i32 noundef %cond266063, i64 noundef %cond3364, ptr noundef %cond40, i32 noundef %shr11, i32 noundef %shl, i32 noundef %13) #6
  br label %if.end

if.end:                                           ; preds = %cond.end39, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gt215_ce_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pengine) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 16
  %0 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 175, i32 %1)
  %cmp = icmp ne i32 %1, 175
  %call = tail call i32 @nvkm_falcon_new_(ptr noundef nonnull @gt215_ce, ptr noundef %device, i32 noundef %type, i32 noundef -1, i1 noundef zeroext %cmp, i32 noundef 1064960, ptr noundef %pengine) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/ce/gt215.c", i32 56, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gt215_ce_intr._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gt215_ce_intr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/ce/gt215.c", i32 36, i32 12}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/ce/gt215.c", i32 37, i32 12}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/ce/gt215.c", i32 38, i32 12}
!16 = !{ptr @gt215_ce_isr_error_name, !17, !"gt215_ce_isr_error_name", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/ce/gt215.c", i32 35, i32 1}
!18 = !{ptr @gt215_ce, !19, !"gt215_ce", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/ce/gt215.c", i32 65, i32 1}
!20 = !{ptr @gt215_ce_code, !21, !"gt215_ce_code", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/ce/fuc/gt215.fuc3.h", i32 187, i32 17}
!22 = !{ptr @gt215_ce_data, !23, !"gt215_ce_data", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/ce/fuc/gt215.fuc3.h", i32 2, i32 17}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 5389498}
!34 = !{i64 2156272825}
!35 = !{i64 2156273231}
!36 = !{i64 2156273637}
