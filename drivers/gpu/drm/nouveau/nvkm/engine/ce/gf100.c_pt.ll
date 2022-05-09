; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/ce/gf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/ce/gf100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.142 = type { ptr, i32 }
%struct.anon.143 = type { ptr, i32 }
%struct.anon.146 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.144, %struct.anon.145, %struct.nvkm_engine }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.144 = type { i32, ptr, i32, i8 }
%struct.anon.145 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.135 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.135 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gf100_ce_data = internal global { [138 x i32], [152 x i8] } { [138 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65536, i32 0, i32 0, i32 65600, i32 65951, i32 0, i32 65616, i32 65953, i32 0, i32 458880, i32 28, i32 -4096, i32 32, i32 -524288, i32 36, i32 -8192, i32 40, i32 -2048, i32 44, i32 -4096, i32 48, i32 -524288, i32 52, i32 -8192, i32 458888, i32 72, i32 -4096, i32 76, i32 -524288, i32 80, i32 -8192, i32 84, i32 -2048, i32 88, i32 -4096, i32 92, i32 -524288, i32 96, i32 -8192, i32 131264, i32 66744, i32 0, i32 66881, i32 0, i32 917699, i32 16, i32 -256, i32 20, i32 0, i32 60, i32 -256, i32 64, i32 0, i32 24, i32 -524288, i32 68, i32 -524288, i32 116, i32 -65536, i32 120, i32 -8192, i32 104, i32 -53739520, i32 108, i32 0, i32 112, i32 0, i32 4, i32 -256, i32 8, i32 0, i32 12, i32 0, i32 2048], [152 x i8] zeroinitializer }, align 32
@gf100_ce1 = internal constant { { %struct.anon.142, %struct.anon.143, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.146, %struct.anon.146, [2 x %struct.nvkm_sclass] }, [48 x i8] } { { %struct.anon.142, %struct.anon.143, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.146, %struct.anon.146, [2 x %struct.nvkm_sclass] } { %struct.anon.142 { ptr @gf100_ce_code, i32 1536 }, %struct.anon.143 { ptr @gf100_ce_data, i32 552 }, ptr @gf100_ce_init, ptr @gt215_ce_intr, i32 0, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.anon.146 zeroinitializer, %struct.anon.146 zeroinitializer, [2 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 37048, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@gf100_ce_code = internal global { <{ [340 x i32], [44 x i32] }>, [384 x i8] } { <{ [340 x i32], [44 x i32] }> <{ [340 x i32] [i32 83756221, i32 890761216, i32 -251653890, i32 -251396073, i32 -251661529, i32 315621411, i32 203813056, i32 -201321776, i32 401674289, i32 670044672, i32 1232899, i32 -201313804, i32 250871848, i32 -2147364867, i32 -200797500, i32 569640459, i32 68338890, i32 -184087564, i32 -1006566879, i32 30411793, i32 -251529152, i32 -25755577, i32 1206976587, i32 1154425088, i32 21295104, i32 -1241234250, i32 -135188416, i32 -189397476, i32 341307654, i32 16109825, i32 -1241238124, i32 1476264528, i32 21364224, i32 16798391, i32 16738289, i32 1459445949, i32 39055364, i32 -133872134, i32 5500931, i32 -788469776, i32 1419247870, i32 138786304, i32 -1241426280, i32 1190991972, i32 4718085, i32 -268303175, i32 32769603, i32 100989449, i32 -100266252, i32 66585860, i32 670105848, i32 600773632, i32 507496448, i32 -199816204, i32 569639218, i32 507179091, i32 -268426288, i32 617611591, i32 -822019968, i32 1036533795, i32 151778334, i32 -201248268, i32 938496801, i32 -2145136638, i32 938541304, i32 852433152, i32 3395392, i32 134161636, i32 -250600266, i32 -1124007849, i32 1484045668, i32 1465385046, i32 72398337, i32 -201046344, i32 1991986440, i32 71809024, i32 -1156642572, i32 1958085238, i32 5749507, i32 -1143009548, i32 1152778822, i32 4569859, i32 -50248296, i32 1420821587, i32 538702848, i32 1476412760, i32 1689256262, i32 152826880, i32 -201305216, i32 854863886, i32 -195692287, i32 250874881, i32 36040741, i32 -251582992, i32 -804257721, i32 1137705026, i32 1076359232, i32 -822082864, i32 619741186, i32 2404416, i32 -235463692, i32 -266534873, i32 600834359, i32 -134154240, i32 2617600, i32 -264979166, i32 600834611, i32 -201263104, i32 28373040, i32 16887808, i32 -1342045776, i32 77071105, i32 809879322, i32 -956215114, i32 1622553670, i32 944228097, i32 -201232202, i32 -2067987918, i32 1254397117, i32 71677455, i32 -1540311875, i32 253293572, i32 -1145002497, i32 838074571, i32 571405314, i32 -267641868, i32 -876932921, i32 370078720, i32 -200891344, i32 -940569576, i32 13351700, i32 -251195660, i32 939557063, i32 -2135555640, i32 28358145, i32 -201017928, i32 -1867070712, i32 77051905, i32 -38663948, i32 109052005, i32 487102478, i32 -201299715, i32 1690109186, i32 -2147453443, i32 2029852935, i32 274198784, i32 106214920, i32 -805284144, i32 1354186839, i32 110626816, i32 23246361, i32 -1744280394, i32 1924533767, i32 90701057, i32 -1224714544, i32 -1275002800, i32 1456472160, i32 23114752, i32 -1270851888, i32 1456472672, i32 56669312, i32 -1212131632, i32 -1744568240, i32 1456478982, i32 470194176, i32 -197110064, i32 16257072, i32 -955820136, i32 2026334329, i32 58766948, i32 -1335855161, i32 468979318, i32 74969097, i32 -267448588, i32 1890976380, i32 155712785, i32 -1744406544, i32 1536691290, i32 11271438, i32 -1157515280, i32 -1296694089, i32 -995361023, i32 -1744459845, i32 -403698339, i32 82361089, i32 -16653642, i32 -658787106, i32 31503877, i32 -1156780140, i32 -16973077, i32 40693765, i32 34103479, i32 -804756298, i32 -1212481425, i32 13351684, i32 -1744281704, i32 -67301797, i32 28831744, i32 -1241204805, i32 -71630414, i32 100121344, i32 1603858681, i32 28831753, i32 -1241204549, i32 -71630414, i32 100186880, i32 2025582841, i32 42120704, i32 -1157515280, i32 -1178925896, i32 190355460, i32 -1157502992, i32 -491387671, i32 -191955199, i32 -1157302341, i32 2042298575, i32 92912384, i32 -1862471428, i32 -1157572099, i32 -1979907923, i32 9436416, i32 -1157584709, i32 -1833565017, i32 77052673, i32 -1736414768, i32 1486357847, i32 11320068, i32 -1241482565, i32 -2068447103, i32 93060368, i32 100688567, i32 -1224710192, i32 -805044128, i32 16253032, i32 -1224577808, i32 -1241382304, i32 1469581412, i32 6803461, i32 67133623, i32 -1241229416, i32 1741688948, i32 6338304, i32 106403844, i32 -134191152, i32 -117376768, i32 520464, i32 100972040, i32 -268434993, i32 468975892, i32 -65995526, i32 -939460608, i32 468978996, i32 -786303632, i32 206041347, i32 105166344, i32 -1241381480, i32 1171260496, i32 1077989376, i32 -804497424, i32 1085767749, i32 93848576, i32 273987073, i32 -1224718896, i32 -251330496, i32 -267714473, i32 1171259731, i32 1079505152, i32 22328896, i32 -2139073551, i32 -247446064, i32 -250539945, i32 -804056493, i32 1475444805, i32 1408308500, i32 1171265302, i32 22540736, i32 22278182, i32 134236145, i32 -804895562, i32 569704517, i32 1206977489, i32 1152780300, i32 33921030, i32 -805288496, i32 1475362880, i32 -2142908412, i32 67125431, i32 -1241447016, i32 1171263572, i32 4241152, i32 5763333, i32 4575235, i32 286283761, i32 319968241, i32 -1740618288, i32 1085735685, i32 1171260672, i32 22540544, i32 22278182, i32 134236145, i32 -804895562, i32 16252997, i32 64037365, i32 -201310264, i32 569708043, i32 1206976943, i32 250872320, i32 275247390, i32 107263496, i32 -2147387408, i32 125832711, i32 487036953, i32 -805279792, i32 1153253479, i32 -1123929356, i32 71288916, i32 -183890956, i32 -201086943, i32 569707022, i32 1240466076, i32 36828167, i32 -936618000, i32 200542271, i32 -1474169590, i32 168752131, i32 43786741, i32 -251115024, i32 -1240989609, i32 110626388, i32 1079431198, i32 -247371792, i32 -45875101, i32 1422918982, i32 205506560, i32 -184087564, i32 -133960927, i32 2617600, i32 -264979166, i32 600834355, i32 63488], [44 x i32] zeroinitializer }>, [384 x i8] zeroinitializer }, align 32
@gf100_ce0 = internal constant { { %struct.anon.142, %struct.anon.143, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.146, %struct.anon.146, [2 x %struct.nvkm_sclass] }, [48 x i8] } { { %struct.anon.142, %struct.anon.143, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.146, %struct.anon.146, [2 x %struct.nvkm_sclass] } { %struct.anon.142 { ptr @gf100_ce_code, i32 1536 }, %struct.anon.143 { ptr @gf100_ce_data, i32 552 }, ptr @gf100_ce_init, ptr @gt215_ce_intr, i32 0, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.anon.146 zeroinitializer, %struct.anon.146 zeroinitializer, [2 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 37045, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"gf100_ce_data\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 2, i32 17 }
@___asan_gen_.7 = private unnamed_addr constant [10 x i8] c"gf100_ce1\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 50, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"gf100_ce_code\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [59 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/ce/fuc/gf100.fuc3.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 175, i32 17 }
@___asan_gen_.13 = private unnamed_addr constant [10 x i8] c"gf100_ce0\00", align 1
@___asan_gen_.14 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/ce/gf100.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 36, i32 1 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @gf100_ce_data, ptr @gf100_ce1, ptr @gf100_ce_code, ptr @gf100_ce0], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ce_data to i32), i32 552, i32 704, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ce1 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ce_code to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ce0 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_ce_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pengine) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst)
  %tobool.not = icmp eq i32 %inst, 0
  %cond = select i1 %tobool.not, ptr @gf100_ce0, ptr @gf100_ce1
  %mul = shl i32 %inst, 12
  %add = add i32 %mul, 1064960
  %call = tail call i32 @nvkm_falcon_new_(ptr noundef nonnull %cond, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, i32 noundef %add, ptr noundef %pengine) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf100_ce_init(ptr nocapture noundef readonly %ce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !17
  tail call void @arm_heavy_mb() #2
  %inst = getelementptr inbounds %struct.nvkm_falcon, ptr %ce, i32 0, i32 15, i32 1, i32 3
  %0 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inst, align 4
  %device = getelementptr inbounds %struct.nvkm_falcon, ptr %ce, i32 0, i32 15, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %addr = getelementptr inbounds %struct.nvkm_falcon, ptr %ce, i32 0, i32 3
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  %add = add i32 %7, 132
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #2, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gt215_ce_intr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @gf100_ce1, !1, !"gf100_ce1", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/ce/gf100.c", i32 50, i32 1}
!2 = !{ptr @gf100_ce_code, !3, !"gf100_ce_code", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/ce/fuc/gf100.fuc3.h", i32 175, i32 17}
!4 = !{ptr @gf100_ce_data, !5, !"gf100_ce_data", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/ce/fuc/gf100.fuc3.h", i32 2, i32 17}
!6 = !{ptr @gf100_ce0, !7, !"gf100_ce0", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/ce/gf100.c", i32 36, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 2156250211}
!18 = !{i64 5388494}
