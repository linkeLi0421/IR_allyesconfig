; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/matrox/g450_pll.c_pt.bc'
source_filename = "../drivers/video/fbdev/matrox/g450_pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+matroxfb_g450_setclk\22, \22a\22\09"
module asm "\09.weak\09__crc_matroxfb_g450_setclk\09\09\09\09"
module asm "\09.long\09__crc_matroxfb_g450_setclk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_matroxfb_g450_setclk:\09\09\09\09\09"
module asm "\09.asciz \09\22matroxfb_g450_setclk\22\09\09\09\09\09"
module asm "__kstrtabns_matroxfb_g450_setclk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+g450_mnp2f\22, \22a\22\09"
module asm "\09.weak\09__crc_g450_mnp2f\09\09\09\09"
module asm "\09.long\09__crc_g450_mnp2f\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_g450_mnp2f:\09\09\09\09\09"
module asm "\09.asciz \09\22g450_mnp2f\22\09\09\09\09\09"
module asm "__kstrtabns_g450_mnp2f:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+matroxfb_g450_setpll_cond\22, \22a\22\09"
module asm "\09.weak\09__crc_matroxfb_g450_setpll_cond\09\09\09\09"
module asm "\09.long\09__crc_matroxfb_g450_setpll_cond\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_matroxfb_g450_setpll_cond:\09\09\09\09\09"
module asm "\09.asciz \09\22matroxfb_g450_setpll_cond\22\09\09\09\09\09"
module asm "__kstrtabns_matroxfb_g450_setpll_cond:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.matrox_fb_info = type { %struct.fb_info, %struct.list_head, i32, i32, i32, i32, i32, %struct.matroxfb_par, %struct.matrox_hw_state, %struct.matrox_accel_data, ptr, %struct.anon.81, %struct.anon.82, %struct.anon.83, [3 x %struct.anon.85], [5 x ptr], [5 x ptr], i32, %struct.anon.86, %struct.anon.87, i32, i32, ptr, %struct.anon.88, %struct.anon.89, i32, i32, i32, i32, %struct.anon.90, i32, %struct.anon.91, %struct.fb_ops, %struct.matrox_bios, %struct.anon.94, %struct.anon.95, %struct.anon.97, [16 x i32] }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.78, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.matroxfb_par = type { i32, i32, %struct.anon.79 }
%struct.anon.79 = type { i32, i32, i32 }
%struct.matrox_hw_state = type { i32, [6 x i8], [80 x i8], i8, [768 x i8], [25 x i8], [9 x i8], [5 x i8], [9 x i8], [21 x i8], %struct.mavenregs, %struct.matrox_crtc2 }
%struct.mavenregs = type { [256 x i8], i32, i32, i32, i32, i16, i16 }
%struct.matrox_crtc2 = type { i32 }
%struct.matrox_accel_data = type { i8, i32, i32, i32, i32 }
%struct.anon.81 = type { %struct.matrox_vsync, i32, i32, i32 }
%struct.matrox_vsync = type { %struct.wait_queue_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.anon.82 = type { %struct.matrox_vsync, i32, i32, ptr, %struct.rw_semaphore }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.83 = type { %struct.rw_semaphore, %struct.anon.84 }
%struct.anon.84 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.85 = type { i32, ptr, ptr, i32, i32 }
%struct.anon.86 = type { i32, %struct.vaddr_t, i32, i32, i32 }
%struct.vaddr_t = type { ptr }
%struct.anon.87 = type { i32, %struct.vaddr_t, i32 }
%struct.anon.88 = type { %struct.matrox_pll_features, %struct.matrox_DAC1064_features }
%struct.matrox_pll_features = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.matrox_DAC1064_features = type { i8, i8 }
%struct.anon.89 = type { %struct.spinlock, %struct.spinlock }
%struct.anon.90 = type { i32, ptr, i32, i32, i32, i32 }
%struct.anon.91 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.matrox_bios = type { i8, i32, [128 x i8], %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i8, i8, i8 }
%struct.anon.93 = type { i8, i8 }
%struct.anon.94 = type { %struct.matrox_pll_limits, %struct.matrox_pll_limits, %struct.matrox_pll_limits }
%struct.matrox_pll_limits = type { i32, i32 }
%struct.anon.95 = type { %struct.matrox_pll_cache, %struct.matrox_pll_cache, %struct.matrox_pll_cache }
%struct.matrox_pll_cache = type { i32, [4 x %struct.anon.96] }
%struct.anon.96 = type { i32, i32 }
%struct.anon.97 = type { %struct.anon.98, %struct.anon.99, %struct.anon.100 }
%struct.anon.98 = type { i32, i32 }
%struct.anon.99 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.100 = type { i8, [3 x i8] }

@__kstrtab_matroxfb_g450_setclk = external dso_local constant [0 x i8], align 1
@__kstrtabns_matroxfb_g450_setclk = external dso_local constant [0 x i8], align 1
@__ksymtab_matroxfb_g450_setclk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @matroxfb_g450_setclk to i32), ptr @__kstrtab_matroxfb_g450_setclk, ptr @__kstrtabns_matroxfb_g450_setclk }, section "___ksymtab+matroxfb_g450_setclk", align 4
@__kstrtab_g450_mnp2f = external dso_local constant [0 x i8], align 1
@__kstrtabns_g450_mnp2f = external dso_local constant [0 x i8], align 1
@__ksymtab_g450_mnp2f = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @g450_mnp2f to i32), ptr @__kstrtab_g450_mnp2f, ptr @__kstrtabns_g450_mnp2f }, section "___ksymtab+g450_mnp2f", align 4
@__kstrtab_matroxfb_g450_setpll_cond = external dso_local constant [0 x i8], align 1
@__kstrtabns_matroxfb_g450_setpll_cond = external dso_local constant [0 x i8], align 1
@__ksymtab_matroxfb_g450_setpll_cond = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @matroxfb_g450_setpll_cond to i32), ptr @__kstrtab_matroxfb_g450_setpll_cond, ptr @__kstrtabns_matroxfb_g450_setpll_cond }, section "___ksymtab+matroxfb_g450_setpll_cond", align 4
@__UNIQUE_ID_author305 = internal constant [67 x i8] c"g450_pll.author=(c) 2001-2002 Petr Vandrovec <vandrove@vc.cvut.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [49 x i8] c"g450_pll.description=Matrox G450/G550 PLL driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [50 x i8] c"g450_pll.file=drivers/video/fbdev/matrox/g450_pll\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [21 x i8] c"g450_pll.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.matroxfb_g450_setpll_cond = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 44, i32 68, i32 72, i32 76, i32 142], [44 x i8] zeroinitializer }, align 32
@switch.table.matroxfb_g450_setpll_cond.1 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 45, i32 69, i32 73, i32 77, i32 143], [44 x i8] zeroinitializer }, align 32
@switch.table.matroxfb_g450_setpll_cond.2 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 46, i32 70, i32 74, i32 78, i32 141], [44 x i8] zeroinitializer }, align 32
@switch.table.matroxfb_g450_setclk = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 44, i32 68, i32 72, i32 76, i32 142], [44 x i8] zeroinitializer }, align 32
@switch.table.matroxfb_g450_setclk.3 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 45, i32 69, i32 73, i32 77, i32 143], [44 x i8] zeroinitializer }, align 32
@switch.table.matroxfb_g450_setclk.4 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 46, i32 70, i32 74, i32 78, i32 141], [44 x i8] zeroinitializer }, align 32
@switch.table.g450_testpll = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 44, i32 68, i32 72, i32 76, i32 142], [44 x i8] zeroinitializer }, align 32
@switch.table.g450_testpll.5 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 45, i32 69, i32 73, i32 77, i32 143], [44 x i8] zeroinitializer }, align 32
@switch.table.g450_testpll.6 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 46, i32 70, i32 74, i32 78, i32 141], [44 x i8] zeroinitializer }, align 32
@switch.table.g450_testpll.7 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 47, i32 79, i32 79, i32 79, i32 140], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.8 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 255]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 255]
@___asan_gen_ = private constant [41 x i8] c"../drivers/video/fbdev/matrox/g450_pll.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [39 x i8] c"switch.table.matroxfb_g450_setpll_cond\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [41 x i8] c"switch.table.matroxfb_g450_setpll_cond.1\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [41 x i8] c"switch.table.matroxfb_g450_setpll_cond.2\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [34 x i8] c"switch.table.matroxfb_g450_setclk\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [36 x i8] c"switch.table.matroxfb_g450_setclk.3\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [36 x i8] c"switch.table.matroxfb_g450_setclk.4\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [26 x i8] c"switch.table.g450_testpll\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [28 x i8] c"switch.table.g450_testpll.5\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [28 x i8] c"switch.table.g450_testpll.6\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [28 x i8] c"switch.table.g450_testpll.7\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__ksymtab_g450_mnp2f, ptr @__ksymtab_matroxfb_g450_setclk, ptr @__ksymtab_matroxfb_g450_setpll_cond, ptr @switch.table.matroxfb_g450_setpll_cond, ptr @switch.table.matroxfb_g450_setpll_cond.1, ptr @switch.table.matroxfb_g450_setpll_cond.2, ptr @switch.table.matroxfb_g450_setclk, ptr @switch.table.matroxfb_g450_setclk.3, ptr @switch.table.matroxfb_g450_setclk.4, ptr @switch.table.g450_testpll, ptr @switch.table.g450_testpll.5, ptr @switch.table.g450_testpll.6, ptr @switch.table.g450_testpll.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.matroxfb_g450_setpll_cond to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.matroxfb_g450_setpll_cond.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.matroxfb_g450_setpll_cond.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.matroxfb_g450_setclk to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.matroxfb_g450_setclk.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.matroxfb_g450_setclk.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.g450_testpll to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.g450_testpll.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.g450_testpll.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.g450_testpll.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @g450_mnp2f(ptr nocapture noundef readonly %minfo, i32 noundef %mnp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i32 %mnp, 16
  %and.i = and i32 %shr.i, 255
  %add.i = add nuw nsw i32 %and.i, 1
  %shr1.i = lshr i32 %mnp, 7
  %and2.i = and i32 %shr1.i, 510
  %add3.i = add nuw nsw i32 %and2.i, 4
  %ref_freq.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 1
  %0 = ptrtoint ptr %ref_freq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref_freq.i, align 4
  %mul.i = mul i32 %1, %add3.i
  %shr4.i = lshr i32 %add.i, 1
  %add5.i = add i32 %mul.i, %shr4.i
  %div.i = udiv i32 %add5.i, %add.i
  %and.i3 = and i32 %mnp, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3)
  %tobool.not.i = icmp eq i32 %and.i3, 0
  %and2.i4 = and i32 %mnp, 3
  %add.i5 = add nuw nsw i32 %and2.i4, 1
  %shr.i6 = select i1 %tobool.not.i, i32 %add.i5, i32 0
  %cond.i = lshr i32 %div.i, %shr.i6
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @matroxfb_g450_setpll_cond(ptr noundef %minfo, i32 noundef %mnp, i32 noundef %pll) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i32 %mnp, 16
  %shr1.i = lshr i32 %mnp, 8
  %0 = zext i32 %pll to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pll, label %entry.if.end_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb14.i
    i32 3, label %sw.bb31.i
    i32 0, label %sw.bb48.i
    i32 4, label %sw.bb65.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb.i:                                          ; preds = %entry
  %call.i = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 68) #6
  %conv4.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv4.i)
  %cmp.not.i = icmp eq i32 %call.i, %conv4.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.bb.i.return.sink.split.i_crit_edge

sw.bb.i.return.sink.split.i_crit_edge:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

lor.lhs.false.i:                                  ; preds = %sw.bb.i
  %call6.i = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 69) #6
  %conv7.i = and i32 %shr1.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %conv7.i)
  %cmp8.not.i = icmp eq i32 %call6.i, %conv7.i
  br i1 %cmp8.not.i, label %lor.lhs.false.i.g450_cmppll.exit_crit_edge, label %lor.lhs.false.i.return.sink.split.i_crit_edge

lor.lhs.false.i.return.sink.split.i_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

lor.lhs.false.i.g450_cmppll.exit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %g450_cmppll.exit

sw.bb14.i:                                        ; preds = %entry
  %call15.i = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 72) #6
  %conv16.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %call15.i, i32 %conv16.i)
  %cmp17.not.i = icmp eq i32 %call15.i, %conv16.i
  br i1 %cmp17.not.i, label %lor.lhs.false19.i, label %sw.bb14.i.return.sink.split.i_crit_edge

sw.bb14.i.return.sink.split.i_crit_edge:          ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

lor.lhs.false19.i:                                ; preds = %sw.bb14.i
  %call20.i = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 73) #6
  %conv21.i = and i32 %shr1.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %call20.i, i32 %conv21.i)
  %cmp22.not.i = icmp eq i32 %call20.i, %conv21.i
  br i1 %cmp22.not.i, label %lor.lhs.false19.i.g450_cmppll.exit_crit_edge, label %lor.lhs.false19.i.return.sink.split.i_crit_edge

lor.lhs.false19.i.return.sink.split.i_crit_edge:  ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

lor.lhs.false19.i.g450_cmppll.exit_crit_edge:     ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %g450_cmppll.exit

sw.bb31.i:                                        ; preds = %entry
  %call32.i = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 76) #6
  %conv33.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %call32.i, i32 %conv33.i)
  %cmp34.not.i = icmp eq i32 %call32.i, %conv33.i
  br i1 %cmp34.not.i, label %lor.lhs.false36.i, label %sw.bb31.i.return.sink.split.i_crit_edge

sw.bb31.i.return.sink.split.i_crit_edge:          ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

lor.lhs.false36.i:                                ; preds = %sw.bb31.i
  %call37.i = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 77) #6
  %conv38.i = and i32 %shr1.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %call37.i, i32 %conv38.i)
  %cmp39.not.i = icmp eq i32 %call37.i, %conv38.i
  br i1 %cmp39.not.i, label %lor.lhs.false36.i.g450_cmppll.exit_crit_edge, label %lor.lhs.false36.i.return.sink.split.i_crit_edge

lor.lhs.false36.i.return.sink.split.i_crit_edge:  ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

lor.lhs.false36.i.g450_cmppll.exit_crit_edge:     ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %g450_cmppll.exit

sw.bb48.i:                                        ; preds = %entry
  %call49.i = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 44) #6
  %conv50.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %call49.i, i32 %conv50.i)
  %cmp51.not.i = icmp eq i32 %call49.i, %conv50.i
  br i1 %cmp51.not.i, label %lor.lhs.false53.i, label %sw.bb48.i.return.sink.split.i_crit_edge

sw.bb48.i.return.sink.split.i_crit_edge:          ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

lor.lhs.false53.i:                                ; preds = %sw.bb48.i
  %call54.i = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 45) #6
  %conv55.i = and i32 %shr1.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %call54.i, i32 %conv55.i)
  %cmp56.not.i = icmp eq i32 %call54.i, %conv55.i
  br i1 %cmp56.not.i, label %lor.lhs.false53.i.g450_cmppll.exit_crit_edge, label %lor.lhs.false53.i.return.sink.split.i_crit_edge

lor.lhs.false53.i.return.sink.split.i_crit_edge:  ; preds = %lor.lhs.false53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

lor.lhs.false53.i.g450_cmppll.exit_crit_edge:     ; preds = %lor.lhs.false53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %g450_cmppll.exit

sw.bb65.i:                                        ; preds = %entry
  %call66.i = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 142) #6
  %conv67.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %call66.i, i32 %conv67.i)
  %cmp68.not.i = icmp eq i32 %call66.i, %conv67.i
  br i1 %cmp68.not.i, label %lor.lhs.false70.i, label %sw.bb65.i.return.sink.split.i_crit_edge

sw.bb65.i.return.sink.split.i_crit_edge:          ; preds = %sw.bb65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

lor.lhs.false70.i:                                ; preds = %sw.bb65.i
  %call71.i = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 143) #6
  %conv72.i = and i32 %shr1.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %call71.i, i32 %conv72.i)
  %cmp73.not.i = icmp eq i32 %call71.i, %conv72.i
  br i1 %cmp73.not.i, label %lor.lhs.false70.i.g450_cmppll.exit_crit_edge, label %lor.lhs.false70.i.return.sink.split.i_crit_edge

lor.lhs.false70.i.return.sink.split.i_crit_edge:  ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

lor.lhs.false70.i.g450_cmppll.exit_crit_edge:     ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %g450_cmppll.exit

g450_cmppll.exit:                                 ; preds = %lor.lhs.false70.i.g450_cmppll.exit_crit_edge, %lor.lhs.false53.i.g450_cmppll.exit_crit_edge, %lor.lhs.false36.i.g450_cmppll.exit_crit_edge, %lor.lhs.false19.i.g450_cmppll.exit_crit_edge, %lor.lhs.false.i.g450_cmppll.exit_crit_edge
  %.sink.i = phi i32 [ 70, %lor.lhs.false.i.g450_cmppll.exit_crit_edge ], [ 74, %lor.lhs.false19.i.g450_cmppll.exit_crit_edge ], [ 78, %lor.lhs.false36.i.g450_cmppll.exit_crit_edge ], [ 46, %lor.lhs.false53.i.g450_cmppll.exit_crit_edge ], [ 141, %lor.lhs.false70.i.g450_cmppll.exit_crit_edge ]
  %call76.i = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef %.sink.i) #6
  %conv77.i = and i32 %mnp, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %call76.i, i32 %conv77.i)
  %cmp78.i.not = icmp ne i32 %call76.i, %conv77.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %pll)
  %1 = icmp ult i32 %pll, 5
  %or.cond = and i1 %cmp78.i.not, %1
  br i1 %or.cond, label %switch.lookup, label %g450_cmppll.exit.if.end_crit_edge

g450_cmppll.exit.if.end_crit_edge:                ; preds = %g450_cmppll.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

switch.lookup:                                    ; preds = %g450_cmppll.exit
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.matroxfb_g450_setpll_cond, i32 0, i32 %pll
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep16 = getelementptr inbounds [5 x i32], ptr @switch.table.matroxfb_g450_setpll_cond.1, i32 0, i32 %pll
  %3 = ptrtoint ptr %switch.gep16 to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load17 = load i32, ptr %switch.gep16, align 4
  %switch.gep18 = getelementptr inbounds [5 x i32], ptr @switch.table.matroxfb_g450_setpll_cond.2, i32 0, i32 %pll
  %4 = ptrtoint ptr %switch.gep18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load19 = load i32, ptr %switch.gep18, align 4
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %switch.lookup, %lor.lhs.false70.i.return.sink.split.i_crit_edge, %sw.bb65.i.return.sink.split.i_crit_edge, %lor.lhs.false53.i.return.sink.split.i_crit_edge, %sw.bb48.i.return.sink.split.i_crit_edge, %lor.lhs.false36.i.return.sink.split.i_crit_edge, %sw.bb31.i.return.sink.split.i_crit_edge, %lor.lhs.false19.i.return.sink.split.i_crit_edge, %sw.bb14.i.return.sink.split.i_crit_edge, %lor.lhs.false.i.return.sink.split.i_crit_edge, %sw.bb.i.return.sink.split.i_crit_edge
  %.sink43.i = phi i32 [ 68, %sw.bb.i.return.sink.split.i_crit_edge ], [ 68, %lor.lhs.false.i.return.sink.split.i_crit_edge ], [ %switch.load, %switch.lookup ], [ 72, %lor.lhs.false19.i.return.sink.split.i_crit_edge ], [ 72, %sw.bb14.i.return.sink.split.i_crit_edge ], [ 76, %lor.lhs.false36.i.return.sink.split.i_crit_edge ], [ 76, %sw.bb31.i.return.sink.split.i_crit_edge ], [ 44, %lor.lhs.false53.i.return.sink.split.i_crit_edge ], [ 44, %sw.bb48.i.return.sink.split.i_crit_edge ], [ 142, %lor.lhs.false70.i.return.sink.split.i_crit_edge ], [ 142, %sw.bb65.i.return.sink.split.i_crit_edge ]
  %.sink42.i = phi i32 [ 69, %sw.bb.i.return.sink.split.i_crit_edge ], [ 69, %lor.lhs.false.i.return.sink.split.i_crit_edge ], [ %switch.load17, %switch.lookup ], [ 73, %lor.lhs.false19.i.return.sink.split.i_crit_edge ], [ 73, %sw.bb14.i.return.sink.split.i_crit_edge ], [ 77, %lor.lhs.false36.i.return.sink.split.i_crit_edge ], [ 77, %sw.bb31.i.return.sink.split.i_crit_edge ], [ 45, %lor.lhs.false53.i.return.sink.split.i_crit_edge ], [ 45, %sw.bb48.i.return.sink.split.i_crit_edge ], [ 143, %lor.lhs.false70.i.return.sink.split.i_crit_edge ], [ 143, %sw.bb65.i.return.sink.split.i_crit_edge ]
  %.sink.i5 = phi i32 [ 70, %sw.bb.i.return.sink.split.i_crit_edge ], [ 70, %lor.lhs.false.i.return.sink.split.i_crit_edge ], [ %switch.load19, %switch.lookup ], [ 74, %lor.lhs.false19.i.return.sink.split.i_crit_edge ], [ 74, %sw.bb14.i.return.sink.split.i_crit_edge ], [ 78, %lor.lhs.false36.i.return.sink.split.i_crit_edge ], [ 78, %sw.bb31.i.return.sink.split.i_crit_edge ], [ 46, %lor.lhs.false53.i.return.sink.split.i_crit_edge ], [ 46, %sw.bb48.i.return.sink.split.i_crit_edge ], [ 141, %lor.lhs.false70.i.return.sink.split.i_crit_edge ], [ 141, %sw.bb65.i.return.sink.split.i_crit_edge ]
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef %.sink43.i, i32 noundef %shr.i) #6
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef %.sink42.i, i32 noundef %shr1.i) #6
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef %.sink.i5, i32 noundef %mnp) #6
  br label %if.end

if.end:                                           ; preds = %return.sink.split.i, %g450_cmppll.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @matroxfb_g450_setclk(ptr noundef %minfo, i32 noundef %fout, i32 noundef %pll) #1 align 64 {
entry:
  %sarray.i.i = alloca [3 x i32], align 4
  %opt.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 512) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i32, ptr %call7.i, i32 64
  %1 = zext i32 %pll to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %pll, label %if.then.__g450_setclk.exit_crit_edge [
    i32 1, label %if.then.sw.bb.i_crit_edge
    i32 2, label %if.then.sw.bb.i_crit_edge57
    i32 3, label %if.then.sw.bb.i_crit_edge58
    i32 0, label %sw.bb52.i
    i32 4, label %sw.bb64.i
  ]

if.then.sw.bb.i_crit_edge58:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge57:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.then.__g450_setclk.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %__g450_setclk.exit

sw.bb.i:                                          ; preds = %if.then.sw.bb.i_crit_edge, %if.then.sw.bb.i_crit_edge57, %if.then.sw.bb.i_crit_edge58
  %lock.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 24
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %call6.i = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 160) #6
  %conv8.i = and i32 %call6.i, 255
  %and.i = and i32 %call6.i, 251
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 160, i32 noundef %and.i) #6
  %vbase.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack.i = load i32, ptr %vbase.i, align 4
  %3 = inttoptr i32 %.unpack.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 8132
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 1) #6, !srcloc !23
  %4 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack265.i = load i32, ptr %vbase.i, align 4
  %5 = inttoptr i32 %.unpack265.i to ptr
  %add.ptr.i269.i = getelementptr i8, ptr %5, i32 8133
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i269.i) #6, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  %conv15.i = or i8 %6, 32
  %7 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack266.i = load i32, ptr %vbase.i, align 4
  %8 = inttoptr i32 %.unpack266.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %add.ptr.i270.i = getelementptr i8, ptr %8, i32 8133
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i270.i, i8 %conv15.i) #6, !srcloc !23
  %call17.i = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 26) #6
  %and23.i = and i32 %call17.i, 8
  %9 = xor i32 %and23.i, 12
  %call17.masked.i = and i32 %call17.i, 251
  %conv27.i = or i32 %9, %call17.masked.i
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 26, i32 noundef %conv27.i) #6
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 160, i32 noundef %conv8.i) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  %10 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack267.i = load i32, ptr %vbase.i, align 4
  %11 = inttoptr i32 %.unpack267.i to ptr
  %add.ptr.i271.i = getelementptr i8, ptr %11, i32 8140
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i271.i) #6, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  %conv40.i = and i8 %12, -13
  %13 = zext i32 %pll to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %pll, label %sw.default.i [
    i32 1, label %sw.bb.i.sw.epilog.i_crit_edge
    i32 2, label %sw.bb41.i
  ]

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb41.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = or i8 %conv40.i, 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv47.i = or i8 %12, 12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb41.i, %sw.bb.i.sw.epilog.i_crit_edge
  %misc.0.i = phi i8 [ %conv47.i, %sw.default.i ], [ %14, %sw.bb41.i ], [ %conv40.i, %sw.bb.i.sw.epilog.i_crit_edge ]
  %15 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack268.i = load i32, ptr %vbase.i, align 4
  %16 = inttoptr i32 %.unpack268.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %add.ptr.i273.i = getelementptr i8, ptr %16, i32 8130
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i273.i, i8 %misc.0.i) #6, !srcloc !23
  %limits.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 34
  %cache.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 35
  br label %sw.epilog101.i

sw.bb52.i:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt.i) #6
  %17 = ptrtoint ptr %opt.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %opt.i, align 4, !annotation !26
  %pcidev.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 10
  %18 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcidev.i, align 4
  %call53.i = call i32 @pci_read_config_dword(ptr noundef %19, i32 noundef 64, ptr noundef nonnull %opt.i) #6
  %20 = ptrtoint ptr %opt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %opt.i, align 4
  %and54.i = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.then56.i, label %sw.bb52.i.if.end60.i_crit_edge

sw.bb52.i.if.end60.i_crit_edge:                   ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60.i

if.then56.i:                                      ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcidev.i, align 4
  %or58.i = or i32 %21, 32
  %call59.i = call i32 @pci_write_config_dword(ptr noundef %23, i32 noundef 64, i32 noundef %or58.i) #6
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then56.i, %sw.bb52.i.if.end60.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt.i) #6
  %system.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 34, i32 1
  %system63.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 35, i32 1
  br label %sw.epilog101.i

sw.bb64.i:                                        ; preds = %if.then
  %lock74.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 24
  %call77.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock74.i) #6
  %call82.i = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 160) #6
  %and85.i = and i32 %call82.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  br i1 %tobool86.not.i, label %if.then87.i, label %sw.bb64.i.if.end90.i_crit_edge

sw.bb64.i.if.end90.i_crit_edge:                   ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90.i

if.then87.i:                                      ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv84.i = and i32 %call82.i, 253
  %or89.i = or i32 %conv84.i, 2
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 160, i32 noundef %or89.i) #6
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then87.i, %sw.bb64.i.if.end90.i_crit_edge
  %call91.i = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 76) #6
  %call92.i = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 77) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock74.i, i32 noundef %call77.i) #6
  %video.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 34, i32 2
  %video99.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 35, i32 2
  br label %sw.epilog101.i

sw.epilog101.i:                                   ; preds = %if.end90.i, %if.end60.i, %sw.epilog.i
  %ci.0.i = phi ptr [ %video99.i, %if.end90.i ], [ %system63.i, %if.end60.i ], [ %cache.i, %sw.epilog.i ]
  %pi.0.i = phi ptr [ %video.i, %if.end90.i ], [ %system.i, %if.end60.i ], [ %limits.i, %sw.epilog.i ]
  %vcomax1.i.i = getelementptr inbounds %struct.matrox_pll_limits, ptr %pi.0.i, i32 0, i32 1
  %24 = ptrtoint ptr %vcomax1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vcomax1.i.i, align 4
  %div33.i.i = lshr i32 %25, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div33.i.i, i32 %fout)
  %cmp.i.i = icmp ult i32 %div33.i.i, %fout
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else4.i.i

if.then.i.i:                                      ; preds = %sw.epilog101.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = call i32 @llvm.umin.i32(i32 %25, i32 %fout) #6
  br label %if.end12.i.i

if.else4.i.i:                                     ; preds = %sw.epilog101.i
  %shl.i.i.i = shl i32 %fout, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i.i, i32 %25)
  %cmp536.i.i = icmp ugt i32 %shl.i.i.i, %25
  br i1 %cmp536.i.i, label %while.body.i.i, label %if.else4.i.i.while.end.i.i_crit_edge

if.else4.i.i.while.end.i.i_crit_edge:             ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %if.else4.i.i
  %shr.i.i = lshr exact i32 %shl.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %25)
  %cmp5.i.i = icmp ugt i32 %shr.i.i, %25
  br i1 %cmp5.i.i, label %while.body.i.i.1, label %while.body.i.i.while.end.i.i_crit_edge

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

while.body.i.i.1:                                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i.i.1 = lshr exact i32 %shl.i.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.1, i32 %25)
  %cmp5.i.i.1 = icmp ugt i32 %shr.i.i.1, %25
  %shr.i.i.2 = lshr exact i32 %shl.i.i.i, 3
  %spec.select = select i1 %cmp5.i.i.1, i32 0, i32 1
  %spec.select56 = select i1 %cmp5.i.i.1, i32 %shr.i.i.2, i32 %shr.i.i.1
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.1, %while.body.i.i.while.end.i.i_crit_edge, %if.else4.i.i.while.end.i.i_crit_edge
  %p.0.lcssa.i.i = phi i32 [ 3, %if.else4.i.i.while.end.i.i_crit_edge ], [ 2, %while.body.i.i.while.end.i.i_crit_edge ], [ %spec.select, %while.body.i.i.1 ]
  %tvco.0.lcssa.i.i = phi i32 [ %shl.i.i.i, %if.else4.i.i.while.end.i.i_crit_edge ], [ %shr.i.i, %while.body.i.i.while.end.i.i_crit_edge ], [ %spec.select56, %while.body.i.i.1 ]
  %27 = ptrtoint ptr %pi.0.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pi.0.i, align 4
  %29 = call i32 @llvm.umax.i32(i32 %tvco.0.lcssa.i.i, i32 %28) #6
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %while.end.i.i, %if.then.i.i
  %storemerge34.i.i = phi i32 [ %26, %if.then.i.i ], [ %29, %while.end.i.i ]
  %p.1.i.i = phi i32 [ 64, %if.then.i.i ], [ %p.0.lcssa.i.i, %while.end.i.i ]
  %and1.i.i.i = and i32 %p.1.i.i, 255
  %ref_freq.i.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 1
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end38.i.i.i.do.body.i.i.i_crit_edge, %if.end12.i.i
  %xvco.0.i = phi i32 [ %storemerge34.i.i, %if.end12.i.i ], [ %xvco.2.i, %if.end38.i.i.i.do.body.i.i.i_crit_edge ]
  %m.0.i.i.i = phi i32 [ 255, %if.end12.i.i ], [ %m.1.i.i.i, %if.end38.i.i.i.do.body.i.i.i_crit_edge ]
  %p.0.i.i.i = phi i32 [ %and1.i.i.i, %if.end12.i.i ], [ %p.4.i.i.i, %if.end38.i.i.i.do.body.i.i.i_crit_edge ]
  %tvco.0.i.i.i = phi i32 [ %storemerge34.i.i, %if.end12.i.i ], [ %tvco.2.i.i.i, %if.end38.i.i.i.do.body.i.i.i_crit_edge ]
  %30 = zext i32 %m.0.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %m.0.i.i.i, label %if.else36.i.i.i [
    i32 0, label %if.then4.i.i.i
    i32 255, label %do.body.i.i.i.if.end15.i.i.i_crit_edge
  ]

do.body.i.i.i.if.end15.i.i.i_crit_edge:           ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i.i.i

if.then4.i.i.i:                                   ; preds = %do.body.i.i.i
  %and5.i.i.i = and i32 %p.0.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then4.i.i.i.__g450_setclk.exit_crit_edge

if.then4.i.i.i.__g450_setclk.exit_crit_edge:      ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__g450_setclk.exit

if.end.i.i.i:                                     ; preds = %if.then4.i.i.i
  %shr11.i.i.i = lshr i32 %tvco.0.i.i.i, 1
  %31 = ptrtoint ptr %pi.0.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pi.0.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr11.i.i.i, i32 %32)
  %cmp12.i.i.i = icmp ult i32 %shr11.i.i.i, %32
  br i1 %cmp12.i.i.i, label %if.end.i.i.i.__g450_setclk.exit_crit_edge, label %if.end14.i.i.i

if.end.i.i.i.__g450_setclk.exit_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__g450_setclk.exit

if.end14.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and7.i.i.i = and i32 %p.0.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %and7.i.i.i, 0
  %dec.i.i.i = add i32 %p.0.i.i.i, -1
  %p.1.i.i.i = select i1 %tobool8.not.i.i.i, i32 64, i32 %dec.i.i.i
  br label %if.end15.i.i.i

if.end15.i.i.i:                                   ; preds = %if.end14.i.i.i, %do.body.i.i.i.if.end15.i.i.i_crit_edge
  %xvco.1.i = phi i32 [ %xvco.0.i, %do.body.i.i.i.if.end15.i.i.i_crit_edge ], [ %shr11.i.i.i, %if.end14.i.i.i ]
  %p.2.i.i.i = phi i32 [ %p.0.i.i.i, %do.body.i.i.i.if.end15.i.i.i_crit_edge ], [ %p.1.i.i.i, %if.end14.i.i.i ]
  %tvco.1.i.i.i = phi i32 [ %tvco.0.i.i.i, %do.body.i.i.i.if.end15.i.i.i_crit_edge ], [ %shr11.i.i.i, %if.end14.i.i.i ]
  %and16.i.i.i = and i32 %p.2.i.i.i, 67
  call void @__sanitizer_cov_trace_const_cmp4(i32 550000, i32 %tvco.1.i.i.i)
  %cmp17.i.i.i = icmp ult i32 %tvco.1.i.i.i, 550000
  br i1 %cmp17.i.i.i, label %if.end15.i.i.i.if.end38.i.i.i_crit_edge, label %if.else19.i.i.i

if.end15.i.i.i.if.end38.i.i.i_crit_edge:          ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i.i.i

if.else19.i.i.i:                                  ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 700000, i32 %tvco.1.i.i.i)
  %cmp20.i.i.i = icmp ult i32 %tvco.1.i.i.i, 700000
  br i1 %cmp20.i.i.i, label %if.then21.i.i.i, label %if.else22.i.i.i

if.then21.i.i.i:                                  ; preds = %if.else19.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.i.i = or i32 %and16.i.i.i, 8
  br label %if.end38.i.i.i

if.else22.i.i.i:                                  ; preds = %if.else19.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %tvco.1.i.i.i)
  %cmp23.i.i.i = icmp ult i32 %tvco.1.i.i.i, 1000000
  br i1 %cmp23.i.i.i, label %if.then24.i.i.i, label %if.else26.i.i.i

if.then24.i.i.i:                                  ; preds = %if.else22.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %or25.i.i.i = or i32 %and16.i.i.i, 16
  br label %if.end38.i.i.i

if.else26.i.i.i:                                  ; preds = %if.else22.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1150000, i32 %tvco.1.i.i.i)
  %cmp27.i.i.i = icmp ult i32 %tvco.1.i.i.i, 1150000
  br i1 %cmp27.i.i.i, label %if.then28.i.i.i, label %if.else30.i.i.i

if.then28.i.i.i:                                  ; preds = %if.else26.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %or29.i.i.i = or i32 %and16.i.i.i, 24
  br label %if.end38.i.i.i

if.else30.i.i.i:                                  ; preds = %if.else26.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %or31.i.i.i = or i32 %and16.i.i.i, 32
  br label %if.end38.i.i.i

if.else36.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dec37.i.i.i = add i32 %m.0.i.i.i, -1
  br label %if.end38.i.i.i

if.end38.i.i.i:                                   ; preds = %if.else36.i.i.i, %if.else30.i.i.i, %if.then28.i.i.i, %if.then24.i.i.i, %if.then21.i.i.i, %if.end15.i.i.i.if.end38.i.i.i_crit_edge
  %xvco.2.i = phi i32 [ %xvco.0.i, %if.else36.i.i.i ], [ %xvco.1.i, %if.end15.i.i.i.if.end38.i.i.i_crit_edge ], [ %xvco.1.i, %if.then21.i.i.i ], [ %xvco.1.i, %if.then24.i.i.i ], [ %xvco.1.i, %if.then28.i.i.i ], [ %xvco.1.i, %if.else30.i.i.i ]
  %m.1.i.i.i = phi i32 [ %dec37.i.i.i, %if.else36.i.i.i ], [ 9, %if.end15.i.i.i.if.end38.i.i.i_crit_edge ], [ 9, %if.then21.i.i.i ], [ 9, %if.then24.i.i.i ], [ 9, %if.then28.i.i.i ], [ 9, %if.else30.i.i.i ]
  %p.4.i.i.i = phi i32 [ %p.0.i.i.i, %if.else36.i.i.i ], [ %and16.i.i.i, %if.end15.i.i.i.if.end38.i.i.i_crit_edge ], [ %or.i.i.i, %if.then21.i.i.i ], [ %or25.i.i.i, %if.then24.i.i.i ], [ %or29.i.i.i, %if.then28.i.i.i ], [ %or31.i.i.i, %if.else30.i.i.i ]
  %tvco.2.i.i.i = phi i32 [ %tvco.0.i.i.i, %if.else36.i.i.i ], [ %tvco.1.i.i.i, %if.end15.i.i.i.if.end38.i.i.i_crit_edge ], [ %tvco.1.i.i.i, %if.then21.i.i.i ], [ %tvco.1.i.i.i, %if.then24.i.i.i ], [ %tvco.1.i.i.i, %if.then28.i.i.i ], [ %tvco.1.i.i.i, %if.else30.i.i.i ]
  %add.i.i.i = add i32 %m.1.i.i.i, 1
  %mul.i.i.i = mul i32 %tvco.2.i.i.i, %add.i.i.i
  %33 = ptrtoint ptr %ref_freq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ref_freq.i.i.i, align 4
  %add39.i.i.i = add i32 %mul.i.i.i, %34
  %mul43.i.i.i = shl i32 %34, 1
  %div.i.i.i = udiv i32 %add39.i.i.i, %mul43.i.i.i
  %35 = add i32 %div.i.i.i, -125
  %36 = icmp ult i32 %35, -120
  br i1 %36, label %if.end38.i.i.i.do.body.i.i.i_crit_edge, label %g450_firstpll.exit.i

if.end38.i.i.i.do.body.i.i.i_crit_edge:           ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i

g450_firstpll.exit.i:                             ; preds = %if.end38.i.i.i
  %shl.i35.i.i = shl i32 %m.1.i.i.i, 16
  %sub.i.i.i = shl nuw nsw i32 %div.i.i.i, 8
  %shl46.i.i.i = add nsw i32 %sub.i.i.i, -512
  %or47.i.i.i = or i32 %p.4.i.i.i, %shl.i35.i.i
  %or48.i.i.i = or i32 %or47.i.i.i, %shl46.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %or48.i.i.i)
  %cmp104.not341.i = icmp eq i32 %or48.i.i.i, 33554431
  br i1 %cmp104.not341.i, label %g450_firstpll.exit.i.__g450_setclk.exit_crit_edge, label %g450_firstpll.exit.i.for.body.i_crit_edge

g450_firstpll.exit.i.for.body.i_crit_edge:        ; preds = %g450_firstpll.exit.i
  br label %for.body.i

g450_firstpll.exit.i.__g450_setclk.exit_crit_edge: ; preds = %g450_firstpll.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__g450_setclk.exit

for.body.i:                                       ; preds = %g450_nextpll.exit.i.for.body.i_crit_edge, %g450_firstpll.exit.i.for.body.i_crit_edge
  %mnp102.0345.i = phi i32 [ %or48.i.i, %g450_nextpll.exit.i.for.body.i_crit_edge ], [ %or48.i.i.i, %g450_firstpll.exit.i.for.body.i_crit_edge ]
  %mnpcount.0343.i = phi i32 [ %inc.i, %g450_nextpll.exit.i.for.body.i_crit_edge ], [ 0, %g450_firstpll.exit.i.for.body.i_crit_edge ]
  %xvco.4342.i = phi i32 [ %xvco.7.i, %g450_nextpll.exit.i.for.body.i_crit_edge ], [ %xvco.2.i, %g450_firstpll.exit.i.for.body.i_crit_edge ]
  %shr.i274.i = lshr i32 %mnp102.0345.i, 16
  %and.i.i = and i32 %shr.i274.i, 255
  %add.i.i = add nuw nsw i32 %and.i.i, 1
  %shr1.i.i = lshr i32 %mnp102.0345.i, 7
  %and2.i.i = and i32 %shr1.i.i, 510
  %add3.i.i = add nuw nsw i32 %and2.i.i, 4
  %mul.i.i = mul i32 %add3.i.i, %34
  %shr4.i.i = lshr i32 %add.i.i, 1
  %add5.i.i = add i32 %mul.i.i, %shr4.i.i
  %div.i.i = udiv i32 %add5.i.i, %add.i.i
  %and.i276.i = and i32 %mnp102.0345.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i276.i)
  %tobool.not.i277.i = icmp eq i32 %and.i276.i, 0
  %and2.i278.i = and i32 %mnp102.0345.i, 3
  %add.i279.i = add nuw nsw i32 %and2.i278.i, 1
  %shr.i280.i = select i1 %tobool.not.i277.i, i32 %add.i279.i, i32 0
  %cond.i.i = lshr i32 %div.i.i, %shr.i280.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %fout)
  %cmp.i281.i = icmp ult i32 %cond.i.i, %fout
  %sub.i.i = sub i32 %fout, %cond.i.i
  %sub1.i.i = sub i32 %cond.i.i, %fout
  %f2.addr.0.i.i = select i1 %cmp.i281.i, i32 %sub.i.i, i32 %sub1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mnpcount.0343.i)
  %cmp111.not336.i = icmp eq i32 %mnpcount.0343.i, 0
  br i1 %cmp111.not336.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body113.i_crit_edge

for.body.i.for.body113.i_crit_edge:               ; preds = %for.body.i
  br label %for.body113.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body113.i:                                    ; preds = %if.end130.i.for.body113.i_crit_edge, %for.body.i.for.body113.i_crit_edge
  %idx.0337.i = phi i32 [ %sub.i, %if.end130.i.for.body113.i_crit_edge ], [ %mnpcount.0343.i, %for.body.i.for.body113.i_crit_edge ]
  %sub.i = add i32 %idx.0337.i, -1
  %arrayidx.i = getelementptr i32, ptr %add.ptr, i32 %sub.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %f2.addr.0.i.i, i32 %38)
  %cmp114.not.i = icmp ugt i32 %f2.addr.0.i.i, %38
  br i1 %cmp114.not.i, label %for.body113.i.for.end.i_crit_edge, label %if.then116.i

for.body113.i.for.end.i_crit_edge:                ; preds = %for.body113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.then116.i:                                     ; preds = %for.body113.i
  call void @__sanitizer_cov_trace_cmp4(i32 %f2.addr.0.i.i, i32 %38)
  %cmp119.i = icmp eq i32 %f2.addr.0.i.i, %38
  br i1 %cmp119.i, label %land.lhs.true.i, label %if.then116.i.if.end130.i_crit_edge

if.then116.i.if.end130.i_crit_edge:               ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130.i

land.lhs.true.i:                                  ; preds = %if.then116.i
  %arrayidx122.i = getelementptr i32, ptr %call7.i, i32 %sub.i
  %39 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx122.i, align 4
  %shr.i282.i = lshr i32 %40, 16
  %and.i283.i = and i32 %shr.i282.i, 255
  %add.i284.i = add nuw nsw i32 %and.i283.i, 1
  %shr1.i285.i = lshr i32 %40, 7
  %and2.i286.i = and i32 %shr1.i285.i, 510
  %add3.i287.i = add nuw nsw i32 %and2.i286.i, 4
  %mul.i289.i = mul i32 %add3.i287.i, %34
  %shr4.i290.i = lshr i32 %add.i284.i, 1
  %add5.i291.i = add i32 %mul.i289.i, %shr4.i290.i
  %div.i292.i = udiv i32 %add5.i291.i, %add.i284.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %div.i292.i)
  %cmp124.not.i = icmp eq i32 %div.i.i, %div.i292.i
  br i1 %cmp124.not.i, label %land.lhs.true.i.if.end130.i_crit_edge, label %land.lhs.true126.i

land.lhs.true.i.if.end130.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130.i

land.lhs.true126.i:                               ; preds = %land.lhs.true.i
  %41 = ptrtoint ptr %pi.0.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pi.0.i, align 4
  %mul.i = mul i32 %42, 17
  %div264.i = lshr i32 %mul.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %div264.i)
  %cmp127.i = icmp ult i32 %div.i.i, %div264.i
  br i1 %cmp127.i, label %land.lhs.true126.i.for.end.i_crit_edge, label %land.lhs.true126.i.if.end130.i_crit_edge

land.lhs.true126.i.if.end130.i_crit_edge:         ; preds = %land.lhs.true126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130.i

land.lhs.true126.i.for.end.i_crit_edge:           ; preds = %land.lhs.true126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end130.i:                                      ; preds = %land.lhs.true126.i.if.end130.i_crit_edge, %land.lhs.true.i.if.end130.i_crit_edge, %if.then116.i.if.end130.i_crit_edge
  %arrayidx132.i = getelementptr i32, ptr %call7.i, i32 %sub.i
  %43 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx132.i, align 4
  %arrayidx133.i = getelementptr i32, ptr %call7.i, i32 %idx.0337.i
  %45 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx133.i, align 4
  %arrayidx136.i = getelementptr i32, ptr %add.ptr, i32 %idx.0337.i
  %46 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %38, ptr %arrayidx136.i, align 4
  %cmp111.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp111.not.i, label %if.end130.i.for.end.i_crit_edge, label %if.end130.i.for.body113.i_crit_edge

if.end130.i.for.body113.i_crit_edge:              ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body113.i

if.end130.i.for.end.i_crit_edge:                  ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.end130.i.for.end.i_crit_edge, %land.lhs.true126.i.for.end.i_crit_edge, %for.body113.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %idx.0.lcssa.i = phi i32 [ 0, %for.body.i.for.end.i_crit_edge ], [ 0, %if.end130.i.for.end.i_crit_edge ], [ %idx.0337.i, %land.lhs.true126.i.for.end.i_crit_edge ], [ %idx.0337.i, %for.body113.i.for.end.i_crit_edge ]
  %arrayidx139.i = getelementptr i32, ptr %call7.i, i32 %idx.0.lcssa.i
  %47 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mnp102.0345.i, ptr %arrayidx139.i, align 4
  %arrayidx140.i = getelementptr i32, ptr %add.ptr, i32 %idx.0.lcssa.i
  %48 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %f2.addr.0.i.i, ptr %arrayidx140.i, align 4
  %inc.i = add i32 %mnpcount.0343.i, 1
  %and1.i.i = and i32 %mnp102.0345.i, 255
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end38.i.i.do.body.i.i_crit_edge, %for.end.i
  %xvco.5.i = phi i32 [ %xvco.4342.i, %for.end.i ], [ %xvco.7.i, %if.end38.i.i.do.body.i.i_crit_edge ]
  %m.0.i.i = phi i32 [ %and.i.i, %for.end.i ], [ %m.1.i.i, %if.end38.i.i.do.body.i.i_crit_edge ]
  %p.0.i.i = phi i32 [ %and1.i.i, %for.end.i ], [ %p.4.i.i, %if.end38.i.i.do.body.i.i_crit_edge ]
  %tvco.0.i.i = phi i32 [ %xvco.4342.i, %for.end.i ], [ %tvco.2.i.i, %if.end38.i.i.do.body.i.i_crit_edge ]
  %49 = zext i32 %m.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %m.0.i.i, label %if.else36.i.i [
    i32 0, label %if.then4.i.i
    i32 255, label %do.body.i.i.if.end15.i.i_crit_edge
  ]

do.body.i.i.if.end15.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i.i

if.then4.i.i:                                     ; preds = %do.body.i.i
  %and5.i.i = and i32 %p.0.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool.not.i296.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool.not.i296.i, label %if.end.i.i, label %if.then4.i.i.for.end143.i_crit_edge

if.then4.i.i.for.end143.i_crit_edge:              ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end143.i

if.end.i.i:                                       ; preds = %if.then4.i.i
  %shr11.i.i = lshr i32 %tvco.0.i.i, 1
  %50 = ptrtoint ptr %pi.0.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pi.0.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr11.i.i, i32 %51)
  %cmp12.i.i = icmp ult i32 %shr11.i.i, %51
  br i1 %cmp12.i.i, label %if.end.i.i.for.end143.i_crit_edge, label %if.end14.i.i

if.end.i.i.for.end143.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end143.i

if.end14.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and7.i.i = and i32 %p.0.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  %dec.i297.i = add i32 %p.0.i.i, -1
  %p.1.i298.i = select i1 %tobool8.not.i.i, i32 64, i32 %dec.i297.i
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end14.i.i, %do.body.i.i.if.end15.i.i_crit_edge
  %xvco.6.i = phi i32 [ %xvco.5.i, %do.body.i.i.if.end15.i.i_crit_edge ], [ %shr11.i.i, %if.end14.i.i ]
  %p.2.i.i = phi i32 [ %p.0.i.i, %do.body.i.i.if.end15.i.i_crit_edge ], [ %p.1.i298.i, %if.end14.i.i ]
  %tvco.1.i.i = phi i32 [ %tvco.0.i.i, %do.body.i.i.if.end15.i.i_crit_edge ], [ %shr11.i.i, %if.end14.i.i ]
  %and16.i.i = and i32 %p.2.i.i, 67
  call void @__sanitizer_cov_trace_const_cmp4(i32 550000, i32 %tvco.1.i.i)
  %cmp17.i.i = icmp ult i32 %tvco.1.i.i, 550000
  br i1 %cmp17.i.i, label %if.end15.i.i.if.end38.i.i_crit_edge, label %if.else19.i.i

if.end15.i.i.if.end38.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i.i

if.else19.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 700000, i32 %tvco.1.i.i)
  %cmp20.i.i = icmp ult i32 %tvco.1.i.i, 700000
  br i1 %cmp20.i.i, label %if.then21.i.i, label %if.else22.i.i

if.then21.i.i:                                    ; preds = %if.else19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.i = or i32 %and16.i.i, 8
  br label %if.end38.i.i

if.else22.i.i:                                    ; preds = %if.else19.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %tvco.1.i.i)
  %cmp23.i.i = icmp ult i32 %tvco.1.i.i, 1000000
  br i1 %cmp23.i.i, label %if.then24.i.i, label %if.else26.i.i

if.then24.i.i:                                    ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %or25.i.i = or i32 %and16.i.i, 16
  br label %if.end38.i.i

if.else26.i.i:                                    ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1150000, i32 %tvco.1.i.i)
  %cmp27.i.i = icmp ult i32 %tvco.1.i.i, 1150000
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.else30.i.i

if.then28.i.i:                                    ; preds = %if.else26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %or29.i.i = or i32 %and16.i.i, 24
  br label %if.end38.i.i

if.else30.i.i:                                    ; preds = %if.else26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %or31.i.i = or i32 %and16.i.i, 32
  br label %if.end38.i.i

if.else36.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dec37.i.i = add i32 %m.0.i.i, -1
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.else36.i.i, %if.else30.i.i, %if.then28.i.i, %if.then24.i.i, %if.then21.i.i, %if.end15.i.i.if.end38.i.i_crit_edge
  %xvco.7.i = phi i32 [ %xvco.5.i, %if.else36.i.i ], [ %xvco.6.i, %if.end15.i.i.if.end38.i.i_crit_edge ], [ %xvco.6.i, %if.then21.i.i ], [ %xvco.6.i, %if.then24.i.i ], [ %xvco.6.i, %if.then28.i.i ], [ %xvco.6.i, %if.else30.i.i ]
  %m.1.i.i = phi i32 [ %dec37.i.i, %if.else36.i.i ], [ 9, %if.end15.i.i.if.end38.i.i_crit_edge ], [ 9, %if.then21.i.i ], [ 9, %if.then24.i.i ], [ 9, %if.then28.i.i ], [ 9, %if.else30.i.i ]
  %p.4.i.i = phi i32 [ %p.0.i.i, %if.else36.i.i ], [ %and16.i.i, %if.end15.i.i.if.end38.i.i_crit_edge ], [ %or.i.i, %if.then21.i.i ], [ %or25.i.i, %if.then24.i.i ], [ %or29.i.i, %if.then28.i.i ], [ %or31.i.i, %if.else30.i.i ]
  %tvco.2.i.i = phi i32 [ %tvco.0.i.i, %if.else36.i.i ], [ %tvco.1.i.i, %if.end15.i.i.if.end38.i.i_crit_edge ], [ %tvco.1.i.i, %if.then21.i.i ], [ %tvco.1.i.i, %if.then24.i.i ], [ %tvco.1.i.i, %if.then28.i.i ], [ %tvco.1.i.i, %if.else30.i.i ]
  %add.i299.i = add i32 %m.1.i.i, 1
  %mul.i300.i = mul i32 %tvco.2.i.i, %add.i299.i
  %add39.i.i = add i32 %mul.i300.i, %34
  %div.i301.i = udiv i32 %add39.i.i, %mul43.i.i.i
  %52 = add i32 %div.i301.i, -125
  %53 = icmp ult i32 %52, -120
  br i1 %53, label %if.end38.i.i.do.body.i.i_crit_edge, label %g450_nextpll.exit.i

if.end38.i.i.do.body.i.i_crit_edge:               ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

g450_nextpll.exit.i:                              ; preds = %if.end38.i.i
  %shl.i.i = shl i32 %m.1.i.i, 16
  %sub.i302.i = shl nuw nsw i32 %div.i301.i, 8
  %shl46.i.i = add nsw i32 %sub.i302.i, -512
  %or47.i.i = or i32 %p.4.i.i, %shl.i.i
  %or48.i.i = or i32 %or47.i.i, %shl46.i.i
  %cmp104.not.i = icmp eq i32 %or48.i.i, 33554431
  br i1 %cmp104.not.i, label %g450_nextpll.exit.i.for.end143.i_crit_edge, label %g450_nextpll.exit.i.for.body.i_crit_edge

g450_nextpll.exit.i.for.body.i_crit_edge:         ; preds = %g450_nextpll.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

g450_nextpll.exit.i.for.end143.i_crit_edge:       ; preds = %g450_nextpll.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end143.i

for.end143.i:                                     ; preds = %g450_nextpll.exit.i.for.end143.i_crit_edge, %if.end.i.i.for.end143.i_crit_edge, %if.then4.i.i.for.end143.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool144.not.i = icmp eq i32 %inc.i, 0
  br i1 %tobool144.not.i, label %for.end143.i.__g450_setclk.exit_crit_edge, label %if.end146.i

for.end143.i.__g450_setclk.exit_crit_edge:        ; preds = %for.end143.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__g450_setclk.exit

if.end146.i:                                      ; preds = %for.end143.i
  %lock156.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 24
  %call159.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock156.i) #6
  %54 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %call7.i, align 8
  %and.i303.i = and i32 %55, -189
  %56 = ptrtoint ptr %ci.0.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ci.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp3.not.i.i = icmp eq i32 %57, 0
  br i1 %cmp3.not.i.i, label %if.end146.i.for.body.lr.ph.i.i_crit_edge, label %if.end146.i.for.body.i.i_crit_edge

if.end146.i.for.body.i.i_crit_edge:               ; preds = %if.end146.i
  br label %for.body.i.i

if.end146.i.for.body.lr.ph.i.i_crit_edge:         ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end146.i.for.body.i.i_crit_edge
  %i.04.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end146.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.matrox_pll_cache, ptr %ci.0.i, i32 0, i32 1, i32 %i.04.i.i
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %and.i303.i)
  %cmp2.i.i = icmp eq i32 %59, %and.i303.i
  br i1 %cmp2.i.i, label %if.then.i305.i, label %for.inc.i.i

if.then.i305.i:                                   ; preds = %for.body.i.i
  %mnp_value.i.i = getelementptr %struct.matrox_pll_cache, ptr %ci.0.i, i32 0, i32 1, i32 %i.04.i.i, i32 1
  %60 = ptrtoint ptr %mnp_value.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mnp_value.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.04.i.i)
  %tobool.not.i304.i = icmp eq i32 %i.04.i.i, 0
  br i1 %tobool.not.i304.i, label %if.then.i305.i.g450_checkcache.exit.i_crit_edge, label %if.then5.i.i

if.then.i305.i.g450_checkcache.exit.i_crit_edge:  ; preds = %if.then.i305.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %g450_checkcache.exit.i

if.then5.i.i:                                     ; preds = %if.then.i305.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.le.i.i = getelementptr inbounds %struct.matrox_pll_cache, ptr %ci.0.i, i32 0, i32 1
  %add.ptr.i306.i = getelementptr %struct.matrox_pll_cache, ptr %ci.0.i, i32 0, i32 1, i32 1
  %mul.i307.i = shl i32 %i.04.i.i, 3
  %62 = call ptr @memmove(ptr %add.ptr.i306.i, ptr %data.le.i.i, i32 %mul.i307.i)
  %63 = ptrtoint ptr %data.le.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %and.i303.i, ptr %data.le.i.i, align 4
  %mnp_value14.i.i = getelementptr inbounds %struct.matrox_pll_cache, ptr %ci.0.i, i32 0, i32 1, i32 0, i32 1
  %64 = ptrtoint ptr %mnp_value14.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %61, ptr %mnp_value14.i.i, align 4
  br label %g450_checkcache.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %57
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.body.lr.ph.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.for.body.lr.ph.i.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph.i.i

g450_checkcache.exit.i:                           ; preds = %if.then5.i.i, %if.then.i305.i.g450_checkcache.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %61)
  %cmp166.not.i = icmp eq i32 %61, 33554431
  br i1 %cmp166.not.i, label %g450_checkcache.exit.i.for.body.lr.ph.i.i_crit_edge, label %if.then168.i

g450_checkcache.exit.i.for.body.lr.ph.i.i_crit_edge: ; preds = %g450_checkcache.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph.i.i

if.then168.i:                                     ; preds = %g450_checkcache.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @matroxfb_g450_setpll_cond(ptr noundef %minfo, i32 noundef %61, i32 noundef %pll) #6
  br label %if.end172.i

for.body.lr.ph.i.i:                               ; preds = %g450_checkcache.exit.i.for.body.lr.ph.i.i_crit_edge, %for.inc.i.i.for.body.lr.ph.i.i_crit_edge, %if.end146.i.for.body.lr.ph.i.i_crit_edge
  %65 = getelementptr inbounds [3 x i32], ptr %sarray.i.i, i32 0, i32 1
  %66 = getelementptr inbounds [3 x i32], ptr %sarray.i.i, i32 0, i32 2
  br label %for.body.i311.i

for.body.i311.i:                                  ; preds = %for.inc.i319.i.for.body.i311.i_crit_edge, %for.body.lr.ph.i.i
  %mnpfound.0112.i.i = phi i32 [ %55, %for.body.lr.ph.i.i ], [ %mnpfound.1.lcssa.i.i, %for.inc.i319.i.for.body.i311.i_crit_edge ]
  %idx.0111.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i317.i, %for.inc.i319.i.for.body.i311.i_crit_edge ]
  %found.0110.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %found.1.lcssa.i.i, %for.inc.i319.i.for.body.i311.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sarray.i.i) #6
  %67 = ptrtoint ptr %sarray.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %sarray.i.i, align 4, !annotation !26
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %65, align 4, !annotation !26
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %66, align 4, !annotation !26
  %arrayidx1.i.i = getelementptr i32, ptr %call7.i, i32 %idx.0111.i.i
  %70 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx1.i.i, align 4
  %and.i309.i = and i32 %71, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i309.i)
  %tobool.not.i310.i = icmp eq i32 %and.i309.i, 0
  br i1 %tobool.not.i310.i, label %for.body.i311.i.if.end6.i.i_crit_edge, label %if.end.i314.i

for.body.i311.i.if.end6.i.i_crit_edge:            ; preds = %for.body.i311.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i.i

if.end.i314.i:                                    ; preds = %for.body.i311.i
  %sub.i312.i = add i32 %71, -8
  %72 = ptrtoint ptr %sarray.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub.i312.i, ptr %sarray.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %and.i309.i)
  %cmp3.not.i313.i = icmp eq i32 %and.i309.i, 56
  br i1 %cmp3.not.i313.i, label %if.end6.thread.i.i, label %if.end.i314.i.if.end6.i.i_crit_edge

if.end.i314.i.if.end6.i.i_crit_edge:              ; preds = %if.end.i314.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i.i

if.end6.thread.i.i:                               ; preds = %if.end.i314.i
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %71, ptr %65, align 4
  br label %while.body.i316.i.preheader

if.end6.i.i:                                      ; preds = %if.end.i314.i.if.end6.i.i_crit_edge, %for.body.i311.i.if.end6.i.i_crit_edge
  %sptr.094.i.i = phi ptr [ %65, %if.end.i314.i.if.end6.i.i_crit_edge ], [ %sarray.i.i, %for.body.i311.i.if.end6.i.i_crit_edge ]
  %add.i315.i = add i32 %71, 8
  %incdec.ptr5.i.i = getelementptr i32, ptr %sptr.094.i.i, i32 1
  %74 = ptrtoint ptr %sptr.094.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add.i315.i, ptr %sptr.094.i.i, align 4
  %75 = ptrtoint ptr %incdec.ptr5.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %71, ptr %incdec.ptr5.i.i, align 4
  %cmp8.not104.i.i = icmp ult ptr %incdec.ptr5.i.i, %sarray.i.i
  br i1 %cmp8.not104.i.i, label %if.end6.i.i.for.inc.i319.i_crit_edge, label %if.end6.i.i.while.body.i316.i.preheader_crit_edge

if.end6.i.i.while.body.i316.i.preheader_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i316.i.preheader

if.end6.i.i.for.inc.i319.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i319.i

while.body.i316.i.preheader:                      ; preds = %if.end6.i.i.while.body.i316.i.preheader_crit_edge, %if.end6.thread.i.i
  %sptr.2107.i.i.ph = phi ptr [ %incdec.ptr5.i.i, %if.end6.i.i.while.body.i316.i.preheader_crit_edge ], [ %65, %if.end6.thread.i.i ]
  br label %while.body.i316.i

while.body.i316.i:                                ; preds = %cleanup.i.i.while.body.i316.i_crit_edge, %while.body.i316.i.preheader
  %sptr.2107.i.i = phi ptr [ %incdec.ptr10.i.i, %cleanup.i.i.while.body.i316.i_crit_edge ], [ %sptr.2107.i.i.ph, %while.body.i316.i.preheader ]
  %mnpfound.1106.i.i = phi i32 [ %mnpfound.2.i.i, %cleanup.i.i.while.body.i316.i_crit_edge ], [ %mnpfound.0112.i.i, %while.body.i316.i.preheader ]
  %found.1105.i.i = phi i32 [ %found.2.i.i, %cleanup.i.i.while.body.i316.i_crit_edge ], [ %found.0110.i.i, %while.body.i316.i.preheader ]
  %incdec.ptr10.i.i = getelementptr i32, ptr %sptr.2107.i.i, i32 -1
  %76 = ptrtoint ptr %sptr.2107.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sptr.2107.i.i, align 4
  %sub11.i.i = add i32 %77, -768
  %call.i.i = call fastcc i32 @g450_testpll(ptr noundef %minfo, i32 noundef %sub11.i.i, i32 noundef %pll) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not.i.i, label %while.body.i316.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

while.body.i316.i.if.else.i.i_crit_edge:          ; preds = %while.body.i316.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i316.i
  %add13.i.i = add i32 %77, 768
  %call14.i.i = call fastcc i32 @g450_testpll(ptr noundef %minfo, i32 noundef %add13.i.i, i32 noundef %pll) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %land.lhs.true16.i.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

land.lhs.true16.i.i:                              ; preds = %land.lhs.true.i.i
  %sub17.i.i = add i32 %77, -512
  %call18.i.i = call fastcc i32 @g450_testpll(ptr noundef %minfo, i32 noundef %sub17.i.i, i32 noundef %pll) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %tobool19.not.i.i = icmp eq i32 %call18.i.i, 0
  br i1 %tobool19.not.i.i, label %land.lhs.true16.i.i.if.else.i.i_crit_edge, label %land.lhs.true20.i.i

land.lhs.true16.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

land.lhs.true20.i.i:                              ; preds = %land.lhs.true16.i.i
  %add21.i.i = add i32 %77, 512
  %call22.i.i = call fastcc i32 @g450_testpll(ptr noundef %minfo, i32 noundef %add21.i.i, i32 noundef %pll) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %land.lhs.true20.i.i.if.else.i.i_crit_edge, label %land.lhs.true24.i.i

land.lhs.true20.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

land.lhs.true24.i.i:                              ; preds = %land.lhs.true20.i.i
  %sub25.i.i = add i32 %77, -256
  %call26.i.i = call fastcc i32 @g450_testpll(ptr noundef %minfo, i32 noundef %sub25.i.i, i32 noundef %pll) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %land.lhs.true24.i.i.if.else.i.i_crit_edge, label %land.lhs.true28.i.i

land.lhs.true24.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

land.lhs.true28.i.i:                              ; preds = %land.lhs.true24.i.i
  %add29.i.i = add i32 %77, 256
  %call30.i.i = call fastcc i32 @g450_testpll(ptr noundef %minfo, i32 noundef %add29.i.i, i32 noundef %pll) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.not.i.i, label %land.lhs.true28.i.i.if.else.i.i_crit_edge, label %if.then32.i.i

land.lhs.true28.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

if.then32.i.i:                                    ; preds = %land.lhs.true28.i.i
  %call33.i.i = call fastcc i32 @g450_testpll(ptr noundef %minfo, i32 noundef %77, i32 noundef %pll) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool34.not.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool34.not.i.i, label %if.then32.i.i.cleanup.i.i_crit_edge, label %cleanup44.i.i

if.then32.i.i.cleanup.i.i_crit_edge:              ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %land.lhs.true28.i.i.if.else.i.i_crit_edge, %land.lhs.true24.i.i.if.else.i.i_crit_edge, %land.lhs.true20.i.i.if.else.i.i_crit_edge, %land.lhs.true16.i.i.if.else.i.i_crit_edge, %land.lhs.true.i.i.if.else.i.i_crit_edge, %while.body.i316.i.if.else.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.1105.i.i)
  %tobool37.not.i.i = icmp eq i32 %found.1105.i.i, 0
  br i1 %tobool37.not.i.i, label %land.lhs.true38.i.i, label %if.else.i.i.cleanup.i.i_crit_edge

if.else.i.i.cleanup.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

land.lhs.true38.i.i:                              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call39.i.i = call fastcc i32 @g450_testpll(ptr noundef %minfo, i32 noundef %77, i32 noundef %pll) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i)
  %tobool40.not.i.i = icmp eq i32 %call39.i.i, 0
  %not.tobool40.not.i.i = xor i1 %tobool40.not.i.i, true
  %spec.select.i.i = zext i1 %not.tobool40.not.i.i to i32
  %spec.select91.i.i = select i1 %tobool40.not.i.i, i32 %mnpfound.1106.i.i, i32 %77
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %land.lhs.true38.i.i, %if.else.i.i.cleanup.i.i_crit_edge, %if.then32.i.i.cleanup.i.i_crit_edge
  %found.2.i.i = phi i32 [ %found.1105.i.i, %if.then32.i.i.cleanup.i.i_crit_edge ], [ 1, %if.else.i.i.cleanup.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true38.i.i ]
  %mnpfound.2.i.i = phi i32 [ %mnpfound.1106.i.i, %if.then32.i.i.cleanup.i.i_crit_edge ], [ %mnpfound.1106.i.i, %if.else.i.i.cleanup.i.i_crit_edge ], [ %spec.select91.i.i, %land.lhs.true38.i.i ]
  %cmp8.not.i.i = icmp ult ptr %incdec.ptr10.i.i, %sarray.i.i
  br i1 %cmp8.not.i.i, label %cleanup.i.i.for.inc.i319.i_crit_edge, label %cleanup.i.i.while.body.i316.i_crit_edge

cleanup.i.i.while.body.i316.i_crit_edge:          ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i316.i

cleanup.i.i.for.inc.i319.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i319.i

cleanup44.i.i:                                    ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sarray.i.i) #6
  br label %g450_findworkingpll.exit.i

for.inc.i319.i:                                   ; preds = %cleanup.i.i.for.inc.i319.i_crit_edge, %if.end6.i.i.for.inc.i319.i_crit_edge
  %found.1.lcssa.i.i = phi i32 [ %found.0110.i.i, %if.end6.i.i.for.inc.i319.i_crit_edge ], [ %found.2.i.i, %cleanup.i.i.for.inc.i319.i_crit_edge ]
  %mnpfound.1.lcssa.i.i = phi i32 [ %mnpfound.0112.i.i, %if.end6.i.i.for.inc.i319.i_crit_edge ], [ %mnpfound.2.i.i, %cleanup.i.i.for.inc.i319.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sarray.i.i) #6
  %inc.i317.i = add nuw i32 %idx.0111.i.i, 1
  %exitcond.not.i318.i = icmp eq i32 %idx.0111.i.i, %mnpcount.0343.i
  br i1 %exitcond.not.i318.i, label %for.end.i.i, label %for.inc.i319.i.for.body.i311.i_crit_edge

for.inc.i319.i.for.body.i311.i_crit_edge:         ; preds = %for.inc.i319.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i311.i

for.end.i.i:                                      ; preds = %for.inc.i319.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %pll)
  %78 = icmp ult i32 %pll, 5
  br i1 %78, label %switch.lookup, label %for.end.i.i.g450_findworkingpll.exit.i_crit_edge

for.end.i.i.g450_findworkingpll.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %g450_findworkingpll.exit.i

switch.lookup:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.matroxfb_g450_setclk, i32 0, i32 %pll
  %79 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %79)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep37 = getelementptr inbounds [5 x i32], ptr @switch.table.matroxfb_g450_setclk.3, i32 0, i32 %pll
  %80 = ptrtoint ptr %switch.gep37 to i32
  call void @__asan_load4_noabort(i32 %80)
  %switch.load38 = load i32, ptr %switch.gep37, align 4
  %switch.gep39 = getelementptr inbounds [5 x i32], ptr @switch.table.matroxfb_g450_setclk.4, i32 0, i32 %pll
  %81 = ptrtoint ptr %switch.gep39 to i32
  call void @__asan_load4_noabort(i32 %81)
  %switch.load40 = load i32, ptr %switch.gep39, align 4
  %shr12.i.i.i = lshr i32 %mnpfound.1.lcssa.i.i, 16
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef %switch.load, i32 noundef %shr12.i.i.i) #6
  %shr13.i.i.i = lshr i32 %mnpfound.1.lcssa.i.i, 8
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef %switch.load38, i32 noundef %shr13.i.i.i) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef %switch.load40, i32 noundef %mnpfound.1.lcssa.i.i) #6
  br label %g450_findworkingpll.exit.i

g450_findworkingpll.exit.i:                       ; preds = %switch.lookup, %for.end.i.i.g450_findworkingpll.exit.i_crit_edge, %cleanup44.i.i
  %retval.4.i.i = phi i32 [ %77, %cleanup44.i.i ], [ %mnpfound.1.lcssa.i.i, %for.end.i.i.g450_findworkingpll.exit.i_crit_edge ], [ %mnpfound.1.lcssa.i.i, %switch.lookup ]
  %82 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %call7.i, align 8
  %84 = ptrtoint ptr %ci.0.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ci.0.i, align 4
  %inc.i320.i = add i32 %85, 1
  %86 = call i32 @llvm.umin.i32(i32 %inc.i320.i, i32 4) #6
  %87 = ptrtoint ptr %ci.0.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %ci.0.i, align 4
  %data.i.i = getelementptr inbounds %struct.matrox_pll_cache, ptr %ci.0.i, i32 0, i32 1
  %add.ptr.i321.i = getelementptr %struct.matrox_pll_cache, ptr %ci.0.i, i32 0, i32 1, i32 1
  %sub.i322.i = shl nuw nsw i32 %86, 3
  %mul.i323.i = add nsw i32 %sub.i322.i, -8
  %88 = call ptr @memmove(ptr %add.ptr.i321.i, ptr %data.i.i, i32 %mul.i323.i)
  %and.i324.i = and i32 %83, -189
  %89 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %and.i324.i, ptr %data.i.i, align 4
  %mnp_value9.i.i = getelementptr inbounds %struct.matrox_pll_cache, ptr %ci.0.i, i32 0, i32 1, i32 0, i32 1
  %90 = ptrtoint ptr %mnp_value9.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %retval.4.i.i, ptr %mnp_value9.i.i, align 4
  br label %if.end172.i

if.end172.i:                                      ; preds = %g450_findworkingpll.exit.i, %if.then168.i
  %mnp148.0.i = phi i32 [ %61, %if.then168.i ], [ %retval.4.i.i, %g450_findworkingpll.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pll)
  %cond.i325.i = icmp eq i32 %pll, 0
  br i1 %cond.i325.i, label %sw.bb.i.i, label %if.end172.i.updatehwstate_clk.exit.i_crit_edge

if.end172.i.updatehwstate_clk.exit.i_crit_edge:   ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %updatehwstate_clk.exit.i

sw.bb.i.i:                                        ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i326.i = lshr i32 %mnp148.0.i, 16
  %conv.i327.i = trunc i32 %shr.i326.i to i8
  %arrayidx.i328.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 3
  %91 = ptrtoint ptr %arrayidx.i328.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv.i327.i, ptr %arrayidx.i328.i, align 1
  %shr1.i329.i = lshr i32 %mnp148.0.i, 8
  %conv2.i.i = trunc i32 %shr1.i329.i to i8
  %arrayidx4.i.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 4
  %92 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv2.i.i, ptr %arrayidx4.i.i, align 4
  %conv5.i.i = trunc i32 %mnp148.0.i to i8
  %arrayidx7.i.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 5
  %93 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv5.i.i, ptr %arrayidx7.i.i, align 1
  br label %updatehwstate_clk.exit.i

updatehwstate_clk.exit.i:                         ; preds = %sw.bb.i.i, %if.end172.i.updatehwstate_clk.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock156.i, i32 noundef %call159.i) #6
  br label %__g450_setclk.exit

__g450_setclk.exit:                               ; preds = %updatehwstate_clk.exit.i, %for.end143.i.__g450_setclk.exit_crit_edge, %g450_firstpll.exit.i.__g450_setclk.exit_crit_edge, %if.end.i.i.i.__g450_setclk.exit_crit_edge, %if.then4.i.i.i.__g450_setclk.exit_crit_edge, %if.then.__g450_setclk.exit_crit_edge
  %retval.0.i = phi i32 [ %mnp148.0.i, %updatehwstate_clk.exit.i ], [ -22, %if.then.__g450_setclk.exit_crit_edge ], [ -16, %for.end143.i.__g450_setclk.exit_crit_edge ], [ -16, %g450_firstpll.exit.i.__g450_setclk.exit_crit_edge ], [ -16, %if.end.i.i.i.__g450_setclk.exit_crit_edge ], [ -16, %if.then4.i.i.i.__g450_setclk.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %__g450_setclk.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %__g450_setclk.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matroxfb_DAC_in(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @matroxfb_DAC_out(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @g450_testpll(ptr noundef %minfo, i32 noundef %mnp, i32 noundef %pll) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %pll)
  %0 = icmp ult i32 %pll, 5
  br i1 %0, label %switch.lookup, label %entry.g450_setpll.exit_crit_edge

entry.g450_setpll.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %g450_setpll.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.g450_testpll, i32 0, i32 %pll
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep4 = getelementptr inbounds [5 x i32], ptr @switch.table.g450_testpll.5, i32 0, i32 %pll
  %2 = ptrtoint ptr %switch.gep4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load5 = load i32, ptr %switch.gep4, align 4
  %switch.gep6 = getelementptr inbounds [5 x i32], ptr @switch.table.g450_testpll.6, i32 0, i32 %pll
  %3 = ptrtoint ptr %switch.gep6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load7 = load i32, ptr %switch.gep6, align 4
  %switch.gep8 = getelementptr inbounds [5 x i32], ptr @switch.table.g450_testpll.7, i32 0, i32 %pll
  %4 = ptrtoint ptr %switch.gep8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load9 = load i32, ptr %switch.gep8, align 4
  %shr12.i = lshr i32 %mnp, 16
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef %switch.load, i32 noundef %shr12.i) #6
  %shr13.i = lshr i32 %mnp, 8
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef %switch.load5, i32 noundef %shr13.i) #6
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef %switch.load7, i32 noundef %mnp) #6
  br label %g450_setpll.exit

g450_setpll.exit:                                 ; preds = %switch.lookup, %entry.g450_setpll.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.g450_setpll.exit_crit_edge ], [ %switch.load9, %switch.lookup ]
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc8.i = add nuw nsw i32 %j.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc8.i, 1000
  br i1 %exitcond.not.i, label %for.cond.i.g450_isplllocked.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.g450_isplllocked.exit_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %g450_isplllocked.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %g450_setpll.exit
  %j.015.i = phi i32 [ 0, %g450_setpll.exit ], [ %inc8.i, %for.cond.i.for.body.i_crit_edge ]
  %call.i = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef %retval.0.i) #6
  %and.i = and i32 %call.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i.for.body3.i_crit_edge

for.body.i.for.body3.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body.i.for.body3.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.body3.i.for.body3.i_crit_edge ], [ 0, %for.body.i.for.body3.i_crit_edge ]
  %r.016.i = phi i32 [ %add.i, %for.body3.i.for.body3.i_crit_edge ], [ 0, %for.body.i.for.body3.i_crit_edge ]
  %call4.i = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef %retval.0.i) #6
  %and5.i = and i32 %call4.i, 64
  %add.i = add i32 %and5.i, %r.016.i
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond18.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond18.not.i, label %for.end.i, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i

for.end.i:                                        ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5759, i32 %add.i)
  %cmp6.i = icmp ugt i32 %add.i, 5759
  %conv.i = zext i1 %cmp6.i to i32
  br label %g450_isplllocked.exit

g450_isplllocked.exit:                            ; preds = %for.end.i, %for.cond.i.g450_isplllocked.exit_crit_edge
  %retval.0.i3 = phi i32 [ %conv.i, %for.end.i ], [ 0, %for.cond.i.g450_isplllocked.exit_crit_edge ]
  ret i32 %retval.0.i3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__ksymtab_matroxfb_g450_setclk, !1, !"__ksymtab_matroxfb_g450_setclk", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/matrox/g450_pll.c", i32 510, i32 1}
!2 = !{ptr @__ksymtab_g450_mnp2f, !3, !"__ksymtab_g450_mnp2f", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/matrox/g450_pll.c", i32 511, i32 1}
!4 = !{ptr @__ksymtab_matroxfb_g450_setpll_cond, !5, !"__ksymtab_matroxfb_g450_setpll_cond", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/matrox/g450_pll.c", i32 512, i32 1}
!6 = !{ptr @__UNIQUE_ID_author305, !7, !"__UNIQUE_ID_author305", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/matrox/g450_pll.c", i32 514, i32 1}
!8 = !{ptr @__UNIQUE_ID_description306, !9, !"__UNIQUE_ID_description306", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/matrox/g450_pll.c", i32 515, i32 1}
!10 = !{ptr @__UNIQUE_ID_file307, !11, !"__UNIQUE_ID_file307", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/matrox/g450_pll.c", i32 517, i32 1}
!12 = !{ptr @__UNIQUE_ID_license308, !11, !"__UNIQUE_ID_license308", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2156243372}
!23 = !{i64 6242222}
!24 = !{i64 6242617}
!25 = !{i64 2156242989}
!26 = !{!"auto-init"}
