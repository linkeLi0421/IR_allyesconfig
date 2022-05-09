; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/matrox/matroxfb_DAC1064.c_pt.bc'
source_filename = "../drivers/video/fbdev/matrox/matroxfb_DAC1064.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+matrox_mystique\22, \22a\22\09"
module asm "\09.weak\09__crc_matrox_mystique\09\09\09\09"
module asm "\09.long\09__crc_matrox_mystique\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_matrox_mystique:\09\09\09\09\09"
module asm "\09.asciz \09\22matrox_mystique\22\09\09\09\09\09"
module asm "__kstrtabns_matrox_mystique:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+matrox_G100\22, \22a\22\09"
module asm "\09.weak\09__crc_matrox_G100\09\09\09\09"
module asm "\09.long\09__crc_matrox_G100\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_matrox_G100:\09\09\09\09\09"
module asm "\09.asciz \09\22matrox_G100\22\09\09\09\09\09"
module asm "__kstrtabns_matrox_G100:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+DAC1064_global_init\22, \22a\22\09"
module asm "\09.weak\09__crc_DAC1064_global_init\09\09\09\09"
module asm "\09.long\09__crc_DAC1064_global_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_DAC1064_global_init:\09\09\09\09\09"
module asm "\09.asciz \09\22DAC1064_global_init\22\09\09\09\09\09"
module asm "__kstrtabns_DAC1064_global_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+DAC1064_global_restore\22, \22a\22\09"
module asm "\09.weak\09__crc_DAC1064_global_restore\09\09\09\09"
module asm "\09.long\09__crc_DAC1064_global_restore\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_DAC1064_global_restore:\09\09\09\09\09"
module asm "\09.asciz \09\22DAC1064_global_restore\22\09\09\09\09\09"
module asm "__kstrtabns_DAC1064_global_restore:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.matrox_switch = type { ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.matrox_altout = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.my_timming = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@matrox_mystique = dso_local global { %struct.matrox_switch, [16 x i8] } { %struct.matrox_switch { ptr @MGA1064_preinit, ptr @MGA1064_reset, ptr @MGA1064_init, ptr @MGA1064_restore }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_matrox_mystique = external dso_local constant [0 x i8], align 1
@__kstrtabns_matrox_mystique = external dso_local constant [0 x i8], align 1
@__ksymtab_matrox_mystique = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @matrox_mystique to i32), ptr @__kstrtab_matrox_mystique, ptr @__kstrtabns_matrox_mystique }, section "___ksymtab+matrox_mystique", align 4
@matrox_G100 = dso_local global { %struct.matrox_switch, [16 x i8] } { %struct.matrox_switch { ptr @MGAG100_preinit, ptr @MGAG100_reset, ptr @MGAG100_init, ptr @MGAG100_restore }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_matrox_G100 = external dso_local constant [0 x i8], align 1
@__kstrtabns_matrox_G100 = external dso_local constant [0 x i8], align 1
@__ksymtab_matrox_G100 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @matrox_G100 to i32), ptr @__kstrtab_matrox_G100, ptr @__kstrtabns_matrox_G100 }, section "___ksymtab+matrox_G100", align 4
@__kstrtab_DAC1064_global_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_DAC1064_global_init = external dso_local constant [0 x i8], align 1
@__ksymtab_DAC1064_global_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @DAC1064_global_init to i32), ptr @__kstrtab_DAC1064_global_init, ptr @__kstrtabns_DAC1064_global_init }, section "___ksymtab+DAC1064_global_init", align 4
@__kstrtab_DAC1064_global_restore = external dso_local constant [0 x i8], align 1
@__kstrtabns_DAC1064_global_restore = external dso_local constant [0 x i8], align 1
@__ksymtab_DAC1064_global_restore = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @DAC1064_global_restore to i32), ptr @__kstrtab_DAC1064_global_restore, ptr @__kstrtabns_DAC1064_global_restore }, section "___ksymtab+DAC1064_global_restore", align 4
@__UNIQUE_ID_file305 = internal constant [66 x i8] c"matroxfb_DAC1064.file=drivers/video/fbdev/matrox/matroxfb_DAC1064\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [29 x i8] c"matroxfb_DAC1064.license=GPL\00", section ".modinfo", align 1
@MGA1064_preinit.vxres_mystique = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 512, i32 640, i32 768, i32 800, i32 832, i32 960, i32 1024, i32 1152, i32 1280, i32 1600, i32 1664, i32 1920, i32 2048, i32 0], [40 x i8] zeroinitializer }, align 32
@m1064 = internal global { %struct.matrox_altout, [32 x i8] } { %struct.matrox_altout { ptr @.str, ptr @m1064_compute, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Primary output\00", [17 x i8] zeroinitializer }, align 32
@m1064_compute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013matroxfb: Pixel PLL not locked after 5 secs\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"m1064_compute\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/video/fbdev/matrox/matroxfb_DAC1064.c\00", [50 x i8] zeroinitializer }, align 32
@m1064_compute._entry_ptr = internal global ptr @m1064_compute._entry, section ".printk_index", align 4
@DAC1064_setmclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013matroxfb: aiee, SYSPLL not locked\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC1064_setmclk\00", [16 x i8] zeroinitializer }, align 32
@DAC1064_setmclk._entry_ptr = internal global ptr @DAC1064_setmclk._entry, section ".printk_index", align 4
@MGA1064_DAC = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\00\00\00\00\00\00\FF\FF\FF\FF\00\00\00\00\09 \08\00\00\00\07\00\00\00\FF\FF", [38 x i8] zeroinitializer }, align 32
@MGA1064_DAC_regs = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\04\05\06\08\09\0A\0C\0D\0E\10\11\12\18\19\1A\1D\1E*+8:>@ABC", [38 x i8] zeroinitializer }, align 32
@MGAG100_preinit.vxres_g100 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 512, i32 640, i32 768, i32 800, i32 832, i32 960, i32 1024, i32 1152, i32 1280, i32 1600, i32 1664, i32 1920, i32 2048, i32 0], [40 x i8] zeroinitializer }, align 32
@g450out = internal global { %struct.matrox_altout, [32 x i8] } { %struct.matrox_altout { ptr @.str, ptr @g450_compute, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@MGAG100_progPixClock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013matroxfb: Pixel PLL%c not locked after usual time\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MGAG100_progPixClock\00", [43 x i8] zeroinitializer }, align 32
@MGAG100_progPixClock._entry_ptr = internal global ptr @MGAG100_progPixClock._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 21]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 16]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"matrox_mystique\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 1091, i32 22 }
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"matrox_G100\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 1101, i32 22 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"vxres_mystique\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 671, i32 19 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"m1064\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 509, i32 29 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 510, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 503, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 151, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"MGA1064_DAC\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 75, i32 28 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"MGA1064_DAC_regs\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 64, i32 28 }
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"vxres_g100\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 840, i32 19 }
@___asan_gen_.62 = private unnamed_addr constant [8 x i8] c"g450out\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 527, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [49 x i8] c"../drivers/video/fbdev/matrox/matroxfb_DAC1064.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 645, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @DAC1064_setmclk._entry, ptr @DAC1064_setmclk._entry_ptr, ptr @MGAG100_progPixClock._entry, ptr @MGAG100_progPixClock._entry_ptr, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__ksymtab_DAC1064_global_init, ptr @__ksymtab_DAC1064_global_restore, ptr @__ksymtab_matrox_G100, ptr @__ksymtab_matrox_mystique, ptr @m1064_compute._entry, ptr @m1064_compute._entry_ptr, ptr @matrox_mystique, ptr @matrox_G100, ptr @MGA1064_preinit.vxres_mystique, ptr @m1064, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @MGA1064_DAC, ptr @MGA1064_DAC_regs, ptr @MGAG100_preinit.vxres_g100, ptr @g450out, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrox_mystique to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrox_G100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MGA1064_preinit.vxres_mystique to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m1064 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m1064_compute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC1064_setmclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MGA1064_DAC to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MGA1064_DAC_regs to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MGAG100_preinit.vxres_g100 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g450out to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MGAG100_progPixClock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @DAC1064_global_init(ptr noundef %minfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 16
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 2
  %2 = and i8 %1, 8
  %3 = or i8 %2, 16
  store i8 %3, ptr %arrayidx, align 2
  %arrayidx8 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 14
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 9, ptr %arrayidx8, align 2
  %g450dac = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 19
  %5 = ptrtoint ptr %g450dac to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %g450dac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else77, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx10 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 28
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 31, ptr %arrayidx10, align 2
  %arrayidx12 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 26
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx12, align 2
  %9 = or i8 %2, 17
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx, align 2
  %outputs = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14
  %11 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %outputs, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.then.sw.epilog_crit_edge [
    i32 1, label %if.then.sw.bb_crit_edge
    i32 2, label %if.then.sw.bb_crit_edge169
    i32 0, label %sw.bb24
  ]

if.then.sw.bb_crit_edge169:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge169
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %arrayidx12, align 2
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %3, ptr %arrayidx, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb, %if.then.sw.epilog_crit_edge
  %arrayidx31 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 1
  %16 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx31, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %17, label %sw.epilog.sw.epilog60_crit_edge [
    i32 1, label %sw.bb33
    i32 2, label %sw.bb39
    i32 0, label %sw.bb54
  ]

sw.epilog.sw.epilog60_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog60

sw.bb33:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx12, align 2
  %21 = or i8 %20, 4
  store i8 %21, ptr %arrayidx12, align 2
  br label %sw.epilog60

sw.bb39:                                          ; preds = %sw.epilog
  %mode = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 1, i32 3
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %23)
  %cmp = icmp eq i32 %23, 128
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx12, align 2
  br i1 %cmp, label %if.then43, label %if.else

if.then43:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #8
  %26 = or i8 %25, 8
  %27 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx12, align 2
  br label %sw.epilog60

if.else:                                          ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #8
  %28 = or i8 %25, 12
  %29 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx12, align 2
  br label %sw.epilog60

sw.bb54:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 30, ptr %arrayidx10, align 2
  br label %sw.epilog60

sw.epilog60:                                      ; preds = %sw.bb54, %if.else, %if.then43, %sw.bb33, %sw.epilog.sw.epilog60_crit_edge
  %arrayidx62 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 2
  %31 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx62, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %32, label %sw.epilog60.sw.epilog76_crit_edge [
    i32 1, label %sw.epilog60.sw.epilog76.sink.split_crit_edge
    i32 2, label %sw.bb70
  ]

sw.epilog60.sw.epilog76.sink.split_crit_edge:     ; preds = %sw.epilog60
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog76.sink.split

sw.epilog60.sw.epilog76_crit_edge:                ; preds = %sw.epilog60
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog76

sw.bb70:                                          ; preds = %sw.epilog60
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog76.sink.split

sw.epilog76.sink.split:                           ; preds = %sw.bb70, %sw.epilog60.sw.epilog76.sink.split_crit_edge
  %.sink167 = phi i8 [ 64, %sw.bb70 ], [ 32, %sw.epilog60.sw.epilog76.sink.split_crit_edge ]
  %34 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx12, align 2
  %36 = or i8 %35, %.sink167
  store i8 %36, ptr %arrayidx12, align 2
  br label %sw.epilog76

sw.epilog76:                                      ; preds = %sw.epilog76.sink.split, %sw.epilog60.sw.epilog76_crit_edge
  %crtc2.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 11
  %37 = ptrtoint ptr %crtc2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %crtc2.i, align 4
  %and.i = and i32 %38, -16392
  %39 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx10, align 2
  %41 = and i8 %40, -3
  store i8 %41, ptr %arrayidx10, align 2
  %mnp.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 11, i32 2
  %42 = ptrtoint ptr %mnp.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mnp.i, align 4
  %mnp5.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 12, i32 2
  %44 = ptrtoint ptr %mnp5.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mnp5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i = icmp slt i32 %45, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #8
  %46 = and i8 %40, -19
  %47 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx10, align 2
  br label %if.end39.i

if.else.i:                                        ; preds = %sw.epilog76
  %pixclock.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 12, i32 1
  %48 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pixclock.i, align 4
  %ref_freq.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 1
  %50 = ptrtoint ptr %ref_freq.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ref_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp14.i = icmp eq i32 %49, %51
  br i1 %cmp14.i, label %if.then16.i, label %if.else18.i

if.then16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %or17.i = or i32 %and.i, 16387
  br label %if.end39.i

if.else18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %43)
  %cmp19.i = icmp eq i32 %45, %43
  br i1 %cmp19.i, label %if.then21.i, label %if.else23.i

if.then21.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #8
  %or22.i = or i32 %and.i, 5
  br label %if.end39.i

if.else23.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #8
  %xor.i = xor i32 %45, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %xor.i)
  %cmp25.i = icmp ult i32 %xor.i, 256
  %add.i = add i32 %43, 256
  %spec.select.i = select i1 %cmp25.i, i32 %add.i, i32 %43
  %or28.i = or i32 %and.i, 7
  %52 = or i8 %40, 2
  %53 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx10, align 2
  %conv36.i = zext i8 %52 to i32
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 160, i32 noundef %conv36.i) #6
  tail call void @matroxfb_g450_setpll_cond(ptr noundef %minfo, i32 noundef %45, i32 noundef 4) #6
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else23.i, %if.then21.i, %if.then16.i, %if.then.i
  %c2_ctl.0.i = phi i32 [ %and.i, %if.then.i ], [ %or17.i, %if.then16.i ], [ %or22.i, %if.then21.i ], [ %or28.i, %if.else23.i ]
  %pixelmnp.1.i = phi i32 [ %43, %if.then.i ], [ %43, %if.then16.i ], [ %43, %if.then21.i ], [ %spec.select.i, %if.else23.i ]
  %54 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx8, align 2
  %56 = and i8 %55, -9
  store i8 %56, ptr %arrayidx8, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pixelmnp.1.i)
  %cmp45.i = icmp sgt i32 %pixelmnp.1.i, -1
  br i1 %cmp45.i, label %if.then47.i, label %if.end39.i.if.end56.i_crit_edge

if.end39.i.if.end56.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

if.then47.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = or i8 %55, 8
  %58 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx8, align 2
  %conv55.i = zext i8 %57 to i32
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 26, i32 noundef %conv55.i) #6
  tail call void @matroxfb_g450_setpll_cond(ptr noundef %minfo, i32 noundef %pixelmnp.1.i, i32 noundef 3) #6
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then47.i, %if.end39.i.if.end56.i_crit_edge
  %59 = ptrtoint ptr %crtc2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %crtc2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %c2_ctl.0.i, i32 %60)
  %cmp59.not.i = icmp eq i32 %c2_ctl.0.i, %60
  br i1 %cmp59.not.i, label %if.end56.i.if.end64.i_crit_edge, label %if.then61.i

if.end56.i.if.end64.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i

if.then61.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %crtc2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %c2_ctl.0.i, ptr %crtc2.i, align 4
  %vbase.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %62 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.unpack.i = load i32, ptr %vbase.i, align 4
  %63 = inttoptr i32 %.unpack.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %64 = tail call i32 @llvm.bswap.i32(i32 %c2_ctl.0.i) #6
  %add.ptr.i.i = getelementptr i8, ptr %63, i32 15376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %64) #6, !srcloc !57
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then61.i, %if.end56.i.if.end64.i_crit_edge
  %pixclock66.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 11, i32 1
  %65 = ptrtoint ptr %pixclock66.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pixclock66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp67.i = icmp eq i32 %66, 0
  br i1 %cmp67.i, label %if.end64.i.if.then72.i_crit_edge, label %lor.lhs.false.i

if.end64.i.if.then72.i_crit_edge:                 ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then72.i

lor.lhs.false.i:                                  ; preds = %if.end64.i
  %67 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp70.i = icmp eq i32 %68, 2
  br i1 %cmp70.i, label %lor.lhs.false.i.if.then72.i_crit_edge, label %lor.lhs.false.i.if.end75.i_crit_edge

lor.lhs.false.i.if.end75.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75.i

lor.lhs.false.i.if.then72.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then72.i

if.then72.i:                                      ; preds = %lor.lhs.false.i.if.then72.i_crit_edge, %if.end64.i.if.then72.i_crit_edge
  %pixclock74.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 12, i32 1
  %69 = ptrtoint ptr %pixclock74.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pixclock74.i, align 4
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then72.i, %lor.lhs.false.i.if.end75.i_crit_edge
  %pxc.0.i = phi i32 [ %70, %if.then72.i ], [ %66, %lor.lhs.false.i.if.end75.i_crit_edge ]
  %chip.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 25
  %71 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %chip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %72)
  %cmp76.i = icmp eq i32 %72, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000, i32 %pxc.0.i)
  %cmp79.i = icmp ult i32 %pxc.0.i, 45000
  br i1 %cmp76.i, label %if.then78.i, label %if.else130.i

if.then78.i:                                      ; preds = %if.end75.i
  br i1 %cmp79.i, label %if.then81.i, label %if.else84.i

if.then81.i:                                      ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx83.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 27
  %73 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %arrayidx83.i, align 1
  br label %if.end136

if.else84.i:                                      ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 55000, i32 %pxc.0.i)
  %cmp85.i = icmp ult i32 %pxc.0.i, 55000
  br i1 %cmp85.i, label %if.then87.i, label %if.else90.i

if.then87.i:                                      ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx89.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 27
  %74 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 8, ptr %arrayidx89.i, align 1
  br label %if.end136

if.else90.i:                                      ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 70000, i32 %pxc.0.i)
  %cmp91.i = icmp ult i32 %pxc.0.i, 70000
  br i1 %cmp91.i, label %if.then93.i, label %if.else96.i

if.then93.i:                                      ; preds = %if.else90.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx95.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 27
  %75 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 16, ptr %arrayidx95.i, align 1
  br label %if.end136

if.else96.i:                                      ; preds = %if.else90.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 85000, i32 %pxc.0.i)
  %cmp97.i = icmp ult i32 %pxc.0.i, 85000
  br i1 %cmp97.i, label %if.then99.i, label %if.else102.i

if.then99.i:                                      ; preds = %if.else96.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx101.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 27
  %76 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 24, ptr %arrayidx101.i, align 1
  br label %if.end136

if.else102.i:                                     ; preds = %if.else96.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %pxc.0.i)
  %cmp103.i = icmp ult i32 %pxc.0.i, 100000
  br i1 %cmp103.i, label %if.then105.i, label %if.else108.i

if.then105.i:                                     ; preds = %if.else102.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx107.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 27
  %77 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 32, ptr %arrayidx107.i, align 1
  br label %if.end136

if.else108.i:                                     ; preds = %if.else102.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 115000, i32 %pxc.0.i)
  %cmp109.i = icmp ult i32 %pxc.0.i, 115000
  br i1 %cmp109.i, label %if.then111.i, label %if.else114.i

if.then111.i:                                     ; preds = %if.else108.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx113.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 27
  %78 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 40, ptr %arrayidx113.i, align 1
  br label %if.end136

if.else114.i:                                     ; preds = %if.else108.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000, i32 %pxc.0.i)
  %cmp115.i = icmp ult i32 %pxc.0.i, 125000
  %arrayidx119.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 27
  br i1 %cmp115.i, label %if.then117.i, label %if.else120.i

if.then117.i:                                     ; preds = %if.else114.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 48, ptr %arrayidx119.i, align 1
  br label %if.end136

if.else120.i:                                     ; preds = %if.else114.i
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 56, ptr %arrayidx119.i, align 1
  br label %if.end136

if.else130.i:                                     ; preds = %if.end75.i
  br i1 %cmp79.i, label %if.then133.i, label %if.else136.i

if.then133.i:                                     ; preds = %if.else130.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx135.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 27
  %81 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %arrayidx135.i, align 1
  br label %if.end136

if.else136.i:                                     ; preds = %if.else130.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65000, i32 %pxc.0.i)
  %cmp137.i = icmp ult i32 %pxc.0.i, 65000
  br i1 %cmp137.i, label %if.then139.i, label %if.else142.i

if.then139.i:                                     ; preds = %if.else136.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx141.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 27
  %82 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 8, ptr %arrayidx141.i, align 1
  br label %if.end136

if.else142.i:                                     ; preds = %if.else136.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 85000, i32 %pxc.0.i)
  %cmp143.i = icmp ult i32 %pxc.0.i, 85000
  br i1 %cmp143.i, label %if.then145.i, label %if.else148.i

if.then145.i:                                     ; preds = %if.else142.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx147.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 27
  %83 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 16, ptr %arrayidx147.i, align 1
  br label %if.end136

if.else148.i:                                     ; preds = %if.else142.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 105000, i32 %pxc.0.i)
  %cmp149.i = icmp ult i32 %pxc.0.i, 105000
  br i1 %cmp149.i, label %if.then151.i, label %if.else154.i

if.then151.i:                                     ; preds = %if.else148.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx153.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 27
  %84 = ptrtoint ptr %arrayidx153.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 24, ptr %arrayidx153.i, align 1
  br label %if.end136

if.else154.i:                                     ; preds = %if.else148.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 135000, i32 %pxc.0.i)
  %cmp155.i = icmp ult i32 %pxc.0.i, 135000
  br i1 %cmp155.i, label %if.then157.i, label %if.else160.i

if.then157.i:                                     ; preds = %if.else154.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx159.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 27
  %85 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 32, ptr %arrayidx159.i, align 1
  br label %if.end136

if.else160.i:                                     ; preds = %if.else154.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 160000, i32 %pxc.0.i)
  %cmp161.i = icmp ult i32 %pxc.0.i, 160000
  br i1 %cmp161.i, label %if.then163.i, label %if.else166.i

if.then163.i:                                     ; preds = %if.else160.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx165.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 27
  %86 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 40, ptr %arrayidx165.i, align 1
  br label %if.end136

if.else166.i:                                     ; preds = %if.else160.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 175000, i32 %pxc.0.i)
  %cmp167.i = icmp ult i32 %pxc.0.i, 175000
  %arrayidx171.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 27
  br i1 %cmp167.i, label %if.then169.i, label %if.else172.i

if.then169.i:                                     ; preds = %if.else166.i
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 48, ptr %arrayidx171.i, align 1
  br label %if.end136

if.else172.i:                                     ; preds = %if.else166.i
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 56, ptr %arrayidx171.i, align 1
  br label %if.end136

if.else77:                                        ; preds = %entry
  %outputs78 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14
  %arrayidx79 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 1
  %89 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx79, align 4
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %90, label %if.else103 [
    i32 1, label %if.then83
    i32 2, label %if.else77.if.end123_crit_edge
  ]

if.else77.if.end123_crit_edge:                    ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.then83:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 10, ptr %arrayidx8, align 2
  br label %if.end123

if.else103:                                       ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx105 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 2
  %93 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp107 = icmp eq i32 %94, 1
  %. = select i1 %cmp107, i8 20, i8 22
  br label %if.end123

if.end123:                                        ; preds = %if.else103, %if.then83, %if.else77.if.end123_crit_edge
  %.sink168 = phi i8 [ 18, %if.then83 ], [ -110, %if.else77.if.end123_crit_edge ], [ %., %if.else103 ]
  %95 = or i8 %2, %.sink168
  %96 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx, align 2
  %97 = ptrtoint ptr %outputs78 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %outputs78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp127.not = icmp eq i32 %98, 0
  br i1 %cmp127.not, label %if.end123.if.end136_crit_edge, label %if.then129

if.end123.if.end136_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136

if.then129:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx, align 2
  %101 = or i8 %100, 1
  store i8 %101, ptr %arrayidx, align 2
  br label %if.end136

if.end136:                                        ; preds = %if.then129, %if.end123.if.end136_crit_edge, %if.else172.i, %if.then169.i, %if.then163.i, %if.then157.i, %if.then151.i, %if.then145.i, %if.then139.i, %if.then133.i, %if.else120.i, %if.then117.i, %if.then111.i, %if.then105.i, %if.then99.i, %if.then93.i, %if.then87.i, %if.then81.i
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @DAC1064_global_restore(ptr noundef %minfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 14
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %1 to i32
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 26, i32 noundef %conv) #6
  %arrayidx3 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 16
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 2
  %conv4 = zext i8 %3 to i32
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 30, i32 noundef %conv4) #6
  %accelerator = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 8
  %4 = ptrtoint ptr %accelerator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %accelerator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %5)
  %cmp = icmp eq i32 %5, 26
  br i1 %cmp, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then:                                          ; preds = %entry
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 32, i32 noundef 4) #6
  %dfp_type = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 20
  %6 = ptrtoint ptr %dfp_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dfp_type, align 4
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 31, i32 noundef %7) #6
  %g450dac = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 19
  %8 = ptrtoint ptr %g450dac to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %g450dac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then.if.end18_crit_edge, label %if.then8

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 139, i32 noundef 204) #6
  %arrayidx10 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 28
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx10, align 2
  %conv11 = zext i8 %11 to i32
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 160, i32 noundef %conv11) #6
  %arrayidx13 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 27
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %13 to i32
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 162, i32 noundef %conv14) #6
  %arrayidx16 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 26
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx16, align 2
  %conv17 = zext i8 %15 to i32
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 138, i32 noundef %conv17) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then8, %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @matroxfb_DAC_out(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @MGA1064_preinit(ptr noundef %minfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8
  %text = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 29, i32 3
  %0 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %text, align 4
  %vxres = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 29, i32 1
  %1 = ptrtoint ptr %vxres to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @MGA1064_preinit.vxres_mystique, ptr %vxres, align 4
  %outputs = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14
  %output = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 0, i32 1
  %2 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @m1064, ptr %output, align 4
  %default_src = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 0, i32 4
  %3 = ptrtoint ptr %default_src to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %default_src, align 4
  %5 = ptrtoint ptr %outputs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %outputs, align 4
  %data = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %minfo, ptr %data, align 4
  %mode = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 0, i32 3
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 128, ptr %mode, align 4
  %noinit = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 5
  %8 = ptrtoint ptr %noinit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %noinit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw1, align 4
  %and = and i32 %11, -1073741568
  %or = or i32 %and, 609824
  store i32 %or, ptr %hw1, align 4
  %novga = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 2
  %12 = ptrtoint ptr %novga to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %novga, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %if.end.if.end17_crit_edge, label %if.then14

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and16 = and i32 %or, -1073132000
  %14 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and16, ptr %hw1, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end.if.end17_crit_edge
  %nobios = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 3
  %15 = ptrtoint ptr %nobios to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nobios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool19.not = icmp eq i32 %16, 0
  br i1 %tobool19.not, label %if.end17.if.end23_crit_edge, label %if.then20

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw1, align 4
  %and22 = and i32 %18, -1073741825
  store i32 %and22, ptr %hw1, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end17.if.end23_crit_edge
  %nopciretry = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 4
  %19 = ptrtoint ptr %nopciretry to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nopciretry, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool25.not = icmp eq i32 %20, 0
  br i1 %tobool25.not, label %if.end23.if.end29_crit_edge, label %if.then26

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hw1, align 4
  %or28 = or i32 %22, 536870912
  store i32 %or28, ptr %hw1, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23.if.end29_crit_edge
  %pcidev = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 10
  %23 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcidev, align 4
  %25 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw1, align 4
  %call = tail call i32 @pci_write_config_dword(ptr noundef %24, i32 noundef 64, i32 noundef %26) #6
  %vbase = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %27 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack = load i32, ptr %vbase, align 4
  %28 = inttoptr i32 %.unpack to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %28, i32 8132
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 288) #6, !srcloc !59
  %29 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack62 = load i32, ptr %vbase, align 4
  %30 = inttoptr i32 %.unpack62 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %add.ptr.i65 = getelementptr i8, ptr %30, i32 7176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 0) #6, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 42949600) #6
  %32 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack63 = load i32, ptr %vbase, align 4
  %33 = inttoptr i32 %.unpack63 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %add.ptr.i66 = getelementptr i8, ptr %33, i32 7172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 8388608) #6, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 21474800) #6
  %35 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack64 = load i32, ptr %vbase, align 4
  %36 = inttoptr i32 %.unpack64 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %add.ptr.i67 = getelementptr i8, ptr %36, i32 7172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 12582912) #6, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @MGA1064_reset(ptr noundef %minfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %features.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23
  %0 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 62000, ptr %features.i, align 4
  %ref_freq.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 1
  %1 = ptrtoint ptr %ref_freq.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 14318, ptr %ref_freq.i, align 4
  %feed_div_min.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 2
  %2 = ptrtoint ptr %feed_div_min.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100, ptr %feed_div_min.i, align 4
  %feed_div_max.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 3
  %3 = ptrtoint ptr %feed_div_max.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 127, ptr %feed_div_max.i, align 4
  %in_div_min.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 4
  %4 = ptrtoint ptr %in_div_min.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %in_div_min.i, align 4
  %in_div_max.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 5
  %5 = ptrtoint ptr %in_div_max.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 31, ptr %in_div_max.i, align 4
  %post_shift_max.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 6
  %6 = ptrtoint ptr %post_shift_max.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %post_shift_max.i, align 4
  %DAC1064.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 1
  %7 = ptrtoint ptr %DAC1064.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %DAC1064.i, align 4
  tail call fastcc void @DAC1064_setmclk(ptr noundef %minfo, i32 noundef 1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @MGA1064_init(ptr noundef %minfo, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %DACreg.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2
  %0 = call ptr @memcpy(ptr %DACreg.i, ptr @MGA1064_DAC, i32 26)
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %minfo, i32 0, i32 6, i32 6
  %1 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bits_per_pixel.i, align 4
  %3 = add i32 %2, -8
  %4 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 29) #6
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb10.i
    i32 3, label %sw.bb13.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 13
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx.i, align 1
  br label %if.end

sw.bb3.i:                                         ; preds = %entry
  %length.i = getelementptr inbounds %struct.fb_info, ptr %minfo, i32 0, i32 6, i32 9, i32 1
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp.i = icmp eq i32 %8, 5
  %arrayidx7.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 13
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %arrayidx7.i, align 1
  br label %if.end

if.else.i:                                        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %arrayidx7.i, align 1
  br label %if.end

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx12.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 13
  %11 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %arrayidx12.i, align 1
  br label %if.end

sw.bb13.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx15.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 13
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 7, ptr %arrayidx15.i, align 1
  br label %if.end

if.end:                                           ; preds = %sw.bb13.i, %sw.bb10.i, %if.else.i, %if.then.i, %sw.bb.i
  %DAC1064.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 1
  %13 = ptrtoint ptr %DAC1064.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %DAC1064.i, align 4
  %arrayidx17.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 12
  %15 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx17.i, align 2
  %arrayidx19.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 15
  %16 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx19.i, align 1
  %18 = and i8 %17, -33
  store i8 %18, ptr %arrayidx19.i, align 1
  %sync.i = getelementptr inbounds %struct.my_timming, ptr %m, i32 0, i32 11
  %19 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sync.i, align 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 32
  %23 = or i8 %22, %18
  %conv25.i = xor i8 %23, 32
  store i8 %conv25.i, ptr %arrayidx19.i, align 1
  %24 = ptrtoint ptr %DACreg.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %DACreg.i, align 2
  %arrayidx29.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx29.i, align 1
  tail call void @DAC1064_global_init(ptr noundef %minfo) #6
  %call2 = tail call i32 @matroxfb_vgaHWinit(ptr noundef %minfo, ptr noundef %m) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %MiscOutReg = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 3
  %26 = ptrtoint ptr %MiscOutReg to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -53, ptr %MiscOutReg, align 2
  %27 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sync.i, align 4
  %and = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool6.not, i8 -53, i8 -117
  %29 = ptrtoint ptr %MiscOutReg to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %spec.store.select, ptr %MiscOutReg, align 2
  %30 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sync.i, align 4
  %and13 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end5.if.end20_crit_edge, label %if.then15

if.end5.if.end20_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then15:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %32 = and i8 %spec.store.select, 75
  %33 = ptrtoint ptr %MiscOutReg to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %MiscOutReg, align 2
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end5.if.end20_crit_edge
  %34 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sync.i, align 4
  %and22 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end27_crit_edge, label %if.then24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 3
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx, align 1
  %38 = or i8 %37, 64
  store i8 %38, ptr %arrayidx, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  tail call fastcc void @DAC1064_init_2(ptr noundef %minfo)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @MGA1064_restore(ptr noundef %minfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8
  %pcidev = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 10
  %0 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcidev, align 4
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw1, align 4
  %call = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 64, i32 noundef %3) #6
  %vbase = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %4 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %vbase, align 4
  %5 = inttoptr i32 %.unpack to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %5, i32 7708
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #6, !srcloc !61
  %6 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack21 = load i32, ptr %vbase, align 4
  %7 = inttoptr i32 %.unpack21 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %add.ptr.i23 = getelementptr i8, ptr %7, i32 8191
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i23, i8 0) #6, !srcloc !61
  tail call fastcc void @DAC1064_restore_1(ptr noundef %minfo)
  tail call void @matroxfb_vgaHWrestore(ptr noundef %minfo) #6
  %panpos = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 11, i32 3
  %8 = ptrtoint ptr %panpos to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %panpos, align 4
  %arrayidx = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i16
  %11 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack22 = load i32, ptr %vbase, align 4
  %12 = inttoptr i32 %.unpack22 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %add.ptr.i24 = getelementptr i8, ptr %12, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i24, i16 %conv) #6, !srcloc !59
  %arrayidx.1 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %14 to i16
  %shl.1 = shl nuw i16 %conv.1, 8
  %or.1 = or i16 %shl.1, 1
  %15 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack22.1 = load i32, ptr %vbase, align 4
  %16 = inttoptr i32 %.unpack22.1 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %17 = tail call i16 @llvm.bswap.i16(i16 %or.1) #6
  %add.ptr.i24.1 = getelementptr i8, ptr %16, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i24.1, i16 %17) #6, !srcloc !59
  %arrayidx.2 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %19 to i16
  %shl.2 = shl nuw i16 %conv.2, 8
  %or.2 = or i16 %shl.2, 2
  %20 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack22.2 = load i32, ptr %vbase, align 4
  %21 = inttoptr i32 %.unpack22.2 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %22 = tail call i16 @llvm.bswap.i16(i16 %or.2) #6
  %add.ptr.i24.2 = getelementptr i8, ptr %21, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i24.2, i16 %22) #6, !srcloc !59
  %arrayidx.3 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 3
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %24 to i16
  %shl.3 = shl nuw i16 %conv.3, 8
  %or.3 = or i16 %shl.3, 3
  %25 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack22.3 = load i32, ptr %vbase, align 4
  %26 = inttoptr i32 %.unpack22.3 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %27 = tail call i16 @llvm.bswap.i16(i16 %or.3) #6
  %add.ptr.i24.3 = getelementptr i8, ptr %26, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i24.3, i16 %27) #6, !srcloc !59
  %arrayidx.4 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 4
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %29 to i16
  %shl.4 = shl nuw i16 %conv.4, 8
  %or.4 = or i16 %shl.4, 4
  %30 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack22.4 = load i32, ptr %vbase, align 4
  %31 = inttoptr i32 %.unpack22.4 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %32 = tail call i16 @llvm.bswap.i16(i16 %or.4) #6
  %add.ptr.i24.4 = getelementptr i8, ptr %31, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i24.4, i16 %32) #6, !srcloc !59
  %arrayidx.5 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 5
  %33 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %34 to i16
  %shl.5 = shl nuw i16 %conv.5, 8
  %or.5 = or i16 %shl.5, 5
  %35 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack22.5 = load i32, ptr %vbase, align 4
  %36 = inttoptr i32 %.unpack22.5 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %37 = tail call i16 @llvm.bswap.i16(i16 %or.5) #6
  %add.ptr.i24.5 = getelementptr i8, ptr %36, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i24.5, i16 %37) #6, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @MGAG100_preinit(ptr noundef %minfo) #0 align 64 {
entry:
  %reg50 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg50) #6
  %0 = ptrtoint ptr %reg50 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg50, align 4, !annotation !62
  %g450dac = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 19
  %1 = ptrtoint ptr %g450dac to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %g450dac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %spec.select = select i1 %tobool.not, i32 62000, i32 130000
  %3 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %3, align 4
  %ref_freq = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 1
  %5 = ptrtoint ptr %ref_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ref_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %if.then8, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %ref_freq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 27000, ptr %ref_freq, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %entry.if.end12_crit_edge
  %feed_div_min = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 2
  %8 = ptrtoint ptr %feed_div_min to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %feed_div_min, align 4
  %feed_div_max = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 3
  %9 = ptrtoint ptr %feed_div_max to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 127, ptr %feed_div_max, align 4
  %in_div_min = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 4
  %10 = ptrtoint ptr %in_div_min to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %in_div_min, align 4
  %in_div_max = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 5
  %11 = ptrtoint ptr %in_div_max to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 31, ptr %in_div_max, align 4
  %post_shift_max = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 6
  %12 = ptrtoint ptr %post_shift_max to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %post_shift_max, align 4
  %DAC1064 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 1
  %13 = ptrtoint ptr %DAC1064 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %DAC1064, align 4
  %text = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 29, i32 3
  %14 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %text, align 4
  %vxres = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 29, i32 1
  %15 = ptrtoint ptr %vxres to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @MGAG100_preinit.vxres_g100, ptr %vxres, align 4
  %accelerator = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 8
  %16 = ptrtoint ptr %accelerator to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %accelerator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %17)
  %cmp = icmp eq i32 %17, 20
  br i1 %cmp, label %cond.true, label %if.end12.cond.end_crit_edge

if.end12.cond.end_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %sgram = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 6
  %18 = ptrtoint ptr %sgram to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sgram, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end12.cond.end_crit_edge
  %cond = phi i32 [ %19, %cond.true ], [ 1, %if.end12.cond.end_crit_edge ]
  %plnwt = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 29, i32 4
  %20 = ptrtoint ptr %plnwt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond, ptr %plnwt, align 4
  %output35 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 0, i32 1
  br i1 %tobool.not, label %if.end36.thread, label %if.then48

if.end36.thread:                                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %output35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @m1064, ptr %output35, align 4
  %outputs37413 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14
  %default_src414 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 0, i32 4
  %22 = ptrtoint ptr %default_src414 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %default_src414, align 4
  %24 = ptrtoint ptr %outputs37413 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %outputs37413, align 4
  %data415 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 0, i32 2
  %25 = ptrtoint ptr %data415 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %minfo, ptr %data415, align 4
  %mode416 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 0, i32 3
  %26 = ptrtoint ptr %mode416 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 128, ptr %mode416, align 4
  br label %if.end49

if.then48:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %output35 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @g450out, ptr %output35, align 4
  %outputs37 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14
  %default_src = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 0, i32 4
  %28 = ptrtoint ptr %default_src to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %default_src, align 4
  %30 = ptrtoint ptr %outputs37 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %outputs37, align 4
  %data = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 0, i32 2
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %minfo, ptr %data, align 4
  %mode = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 0, i32 3
  %32 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 128, ptr %mode, align 4
  %vbase = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %33 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack390 = load i32, ptr %vbase, align 4
  %34 = inttoptr i32 %.unpack390 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %34, i32 7180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !57
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end36.thread
  %noinit = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 5
  %35 = ptrtoint ptr %noinit to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %noinit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool51.not = icmp eq i32 %36, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  %37 = ptrtoint ptr %g450dac to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %g450dac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool56.not = icmp eq i32 %38, 0
  %39 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hw1, align 4
  %and = and i32 %40, -1073741568
  %or = or i32 %and, 32
  store i32 %or, ptr %hw1, align 4
  %novga = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 2
  %41 = ptrtoint ptr %novga to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %novga, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool61.not = icmp eq i32 %42, 0
  br i1 %tobool56.not, label %if.end58, label %if.then57

if.then57:                                        ; preds = %if.end53
  br i1 %tobool61.not, label %if.then57.if.end.i_crit_edge, label %if.then.i

if.then57.if.end.i_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  %and5.i = and i32 %or, -1073741792
  %43 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and5.i, ptr %hw1, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then57.if.end.i_crit_edge
  %nobios.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 3
  %44 = ptrtoint ptr %nobios.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nobios.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool7.not.i = icmp eq i32 %45, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then8.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hw1, align 4
  %and11.i = and i32 %47, -1073741825
  store i32 %and11.i, ptr %hw1, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %if.end.i.if.end12.i_crit_edge
  %nopciretry.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 4
  %48 = ptrtoint ptr %nopciretry.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nopciretry.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool14.not.i = icmp eq i32 %49, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end19.i_crit_edge, label %if.then15.i

if.end12.i.if.end19.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hw1, align 4
  %or18.i = or i32 %51, 536870912
  store i32 %or18.i, ptr %hw1, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %if.end12.i.if.end19.i_crit_edge
  %reg.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 36, i32 1
  %52 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reg.i, align 4
  %and20.i = and i32 %53, 54526016
  %54 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hw1, align 4
  %or23.i = or i32 %55, %and20.i
  store i32 %or23.i, ptr %hw1, align 4
  %pcidev.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 10
  %56 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pcidev.i, align 4
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %57, i32 noundef 64, i32 noundef %or23.i) #6
  %vbase.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %58 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.unpack.i = load i32, ptr %vbase.i, align 4
  %59 = inttoptr i32 %.unpack.i to ptr
  %add.ptr.i.i = getelementptr i8, ptr %59, i32 15376
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %61 = and i32 %60, -16777217
  %62 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.unpack87.i = load i32, ptr %vbase.i, align 4
  %63 = inttoptr i32 %.unpack87.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %add.ptr.i93.i = getelementptr i8, ptr %63, i32 15376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.i, i32 %61) #6, !srcloc !57
  %call31.i = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 6) #6
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 6, i32 noundef 0) #6
  %64 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.unpack88.i = load i32, ptr %vbase.i, align 4
  %65 = inttoptr i32 %.unpack88.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %add.ptr.i94.i = getelementptr i8, ptr %65, i32 8132
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i94.i, i8 1) #6, !srcloc !61
  %66 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.unpack89.i = load i32, ptr %vbase.i, align 4
  %67 = inttoptr i32 %.unpack89.i to ptr
  %add.ptr.i95.i = getelementptr i8, ptr %67, i32 8133
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i95.i) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %conv42.tr.i = zext i8 %68 to i16
  %69 = shl nuw i16 %conv42.tr.i, 8
  %conv45.i = or i16 %69, 8193
  %70 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.unpack90.i = load i32, ptr %vbase.i, align 4
  %71 = inttoptr i32 %.unpack90.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %72 = tail call i16 @llvm.bswap.i16(i16 %conv45.i) #6
  %add.ptr.i96.i = getelementptr i8, ptr %71, i32 8132
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i96.i, i16 %72) #6, !srcloc !59
  %73 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pcidev.i, align 4
  %75 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %hw1, align 4
  %or.i.i = or i32 %76, 4
  %call.i.i = tail call i32 @pci_write_config_dword(ptr noundef %74, i32 noundef 64, i32 noundef %or.i.i) #6
  %77 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pcidev.i, align 4
  %opt3.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 36, i32 1, i32 2
  %79 = ptrtoint ptr %opt3.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %opt3.i.i, align 4
  %and.i.i = and i32 %80, -3148804
  %call2.i.i = tail call i32 @pci_write_config_dword(ptr noundef %78, i32 noundef 84, i32 noundef %and.i.i) #6
  %81 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pcidev.i, align 4
  %83 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %hw1, align 4
  %call6.i.i = tail call i32 @pci_write_config_dword(ptr noundef %82, i32 noundef 64, i32 noundef %84) #6
  %85 = ptrtoint ptr %opt3.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %opt3.i.i, align 4
  %and10.i.i = and i32 %86, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and10.i.i)
  %cmp.i.i = icmp eq i32 %and10.i.i, 3
  %and14.i.i = and i32 %86, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %and14.i.i)
  %cmp15.i.i = icmp eq i32 %and14.i.i, 3072
  %or.cond.i.i = or i1 %cmp.i.i, %cmp15.i.i
  %and20.i.i = and i32 %86, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 3145728, i32 %and20.i.i)
  %cmp21.i.i = icmp eq i32 %and20.i.i, 3145728
  %or.cond73.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp21.i.i
  br i1 %or.cond73.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %values.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 36
  %87 = ptrtoint ptr %values.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %values.i.i, align 4
  %call23.i.i = tail call i32 @matroxfb_g450_setclk(ptr noundef %minfo, i32 noundef %88, i32 noundef 4) #6
  br label %g450_mclk_init.exit.i

if.else.i.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %lock.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 24
  %call27.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #6
  %call30.i.i = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 160) #6
  %and31.i.i = and i32 %call30.i.i, -3
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 160, i32 noundef %and31.i.i) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call27.i.i) #6
  br label %g450_mclk_init.exit.i

g450_mclk_init.exit.i:                            ; preds = %if.else.i.i, %if.then.i.i
  %system.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 36, i32 0, i32 1
  %89 = ptrtoint ptr %system.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %system.i.i, align 4
  %call36.i.i = tail call i32 @matroxfb_g450_setclk(ptr noundef %minfo, i32 noundef %90, i32 noundef 0) #6
  %91 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pcidev.i, align 4
  %93 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %hw1, align 4
  %or40.i.i = or i32 %94, 4
  %call41.i.i = tail call i32 @pci_write_config_dword(ptr noundef %92, i32 noundef 64, i32 noundef %or40.i.i) #6
  %95 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pcidev.i, align 4
  %97 = ptrtoint ptr %opt3.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %opt3.i.i, align 4
  %call46.i.i = tail call i32 @pci_write_config_dword(ptr noundef %96, i32 noundef 84, i32 noundef %98) #6
  %99 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pcidev.i, align 4
  %101 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %hw1, align 4
  %call50.i.i = tail call i32 @pci_write_config_dword(ptr noundef %100, i32 noundef 64, i32 noundef %102) #6
  %103 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %hw1, align 4
  %and.i98.i = and i32 %104, -2064385
  store i32 %and.i98.i, ptr %hw1, align 4
  %105 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pcidev.i, align 4
  %call.i100.i = tail call i32 @pci_write_config_dword(ptr noundef %106, i32 noundef 64, i32 noundef %and.i98.i) #6
  %107 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %hw1, align 4
  %and5.i.i = and i32 %108, -2129409
  %109 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %reg.i, align 4
  %and6.i.i = and i32 %110, 2129408
  %or.i101.i = or i32 %and6.i.i, %and5.i.i
  store i32 %or.i101.i, ptr %hw1, align 4
  %111 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pcidev.i, align 4
  %call12.i.i = tail call i32 @pci_write_config_dword(ptr noundef %112, i32 noundef 64, i32 noundef %or.i101.i) #6
  %113 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pcidev.i, align 4
  %opt2.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 36, i32 1, i32 1
  %115 = ptrtoint ptr %opt2.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %opt2.i.i, align 4
  %call16.i.i = tail call i32 @pci_write_config_dword(ptr noundef %114, i32 noundef 80, i32 noundef %116) #6
  %mctlwtst.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 36, i32 1, i32 3
  %117 = ptrtoint ptr %mctlwtst.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %mctlwtst.i.i, align 4
  %119 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %.unpack.i.i = load i32, ptr %vbase.i, align 4
  %120 = inttoptr i32 %.unpack.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %121 = tail call i32 @llvm.bswap.i32(i32 %118) #6
  %add.ptr.i.i.i = getelementptr i8, ptr %120, i32 7176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %121) #6, !srcloc !57
  %122 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pcidev.i, align 4
  %memmisc.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 36, i32 1, i32 5
  %124 = ptrtoint ptr %memmisc.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %memmisc.i.i, align 4
  %and22.i.i = and i32 %125, 2147483647
  %call23.i102.i = tail call i32 @pci_write_config_dword(ptr noundef %123, i32 noundef 88, i32 noundef %and22.i.i) #6
  %memrdbk.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 36, i32 1, i32 6
  %126 = ptrtoint ptr %memrdbk.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %memrdbk.i.i, align 4
  %128 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %.unpack134.i.i = load i32, ptr %vbase.i, align 4
  %129 = inttoptr i32 %.unpack134.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %130 = tail call i32 @llvm.bswap.i32(i32 %127) #6
  %add.ptr.i141.i.i = getelementptr i8, ptr %129, i32 7748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141.i.i, i32 %130) #6, !srcloc !57
  %maccess.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 36, i32 1, i32 7
  %131 = ptrtoint ptr %maccess.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %maccess.i.i, align 4
  %133 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %.unpack135.i.i = load i32, ptr %vbase.i, align 4
  %134 = inttoptr i32 %.unpack135.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %135 = tail call i32 @llvm.bswap.i32(i32 %132) #6
  %add.ptr.i142.i.i = getelementptr i8, ptr %134, i32 7172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142.i.i, i32 %135) #6, !srcloc !57
  %136 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pcidev.i, align 4
  %138 = ptrtoint ptr %memmisc.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %memmisc.i.i, align 4
  %or38.i.i = or i32 %139, -2147483648
  %call39.i.i = tail call i32 @pci_write_config_dword(ptr noundef %137, i32 noundef 88, i32 noundef %or38.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %140(i32 noundef 42949600) #6
  %memory.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 36, i32 2
  %141 = ptrtoint ptr %memory.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load.i.i = load i8, ptr %memory.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %142 = and i8 %bf.load.i.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %142)
  %.not.i.i = icmp eq i8 %142, 96
  %or.cond.i103.i = or i1 %tobool.not.i.i, %.not.i.i
  br i1 %or.cond.i103.i, label %g450_mclk_init.exit.i.if.end.i.i_crit_edge, label %if.then.i104.i

g450_mclk_init.exit.i.if.end.i.i_crit_edge:       ; preds = %g450_mclk_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i104.i:                                   ; preds = %g450_mclk_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %143 = ptrtoint ptr %memrdbk.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %memrdbk.i.i, align 4
  %and59.i.i = and i32 %144, -4097
  %145 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %.unpack140.i.i = load i32, ptr %vbase.i, align 4
  %146 = inttoptr i32 %.unpack140.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %147 = tail call i32 @llvm.bswap.i32(i32 %and59.i.i) #6
  %add.ptr.i143.i.i = getelementptr i8, ptr %146, i32 7748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143.i.i, i32 %147) #6, !srcloc !57
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i104.i, %g450_mclk_init.exit.i.if.end.i.i_crit_edge
  %148 = ptrtoint ptr %maccess.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %maccess.i.i, align 4
  %or66.i.i = or i32 %149, 32768
  %150 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %.unpack136.i.i = load i32, ptr %vbase.i, align 4
  %151 = inttoptr i32 %.unpack136.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %152 = tail call i32 @llvm.bswap.i32(i32 %or66.i.i) #6
  %add.ptr.i144.i.i = getelementptr i8, ptr %151, i32 7172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144.i.i, i32 %152) #6, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %153(i32 noundef 42949600) #6
  %154 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %reg.i, align 4
  %and71.i.i = and i32 %155, 2064384
  %156 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %hw1, align 4
  %or74.i.i = or i32 %157, %and71.i.i
  store i32 %or74.i.i, ptr %hw1, align 4
  %158 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pcidev.i, align 4
  %call78.i.i = tail call i32 @pci_write_config_dword(ptr noundef %159, i32 noundef 64, i32 noundef %or74.i.i) #6
  %160 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %.unpack137.i.i = load i32, ptr %vbase.i, align 4
  %161 = inttoptr i32 %.unpack137.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %add.ptr.i145.i.i = getelementptr i8, ptr %161, i32 7196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145.i.i, i32 0) #6, !srcloc !57
  %162 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %.unpack138.i.i = load i32, ptr %vbase.i, align 4
  %163 = inttoptr i32 %.unpack138.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %add.ptr.i146.i.i = getelementptr i8, ptr %163, i32 7196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146.i.i, i32 -1) #6, !srcloc !57
  %164 = ptrtoint ptr %mctlwtst.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %mctlwtst.i.i, align 4
  %mctlwtst_core.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 36, i32 1, i32 4
  %166 = ptrtoint ptr %mctlwtst_core.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %mctlwtst_core.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %167)
  %cmp.not.i.i = icmp eq i32 %165, %167
  br i1 %cmp.not.i.i, label %if.end.i.i.g450_preinit.exit_crit_edge, label %if.then90.i.i

if.end.i.i.g450_preinit.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %g450_preinit.exit

if.then90.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %168 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %.unpack139.i.i = load i32, ptr %vbase.i, align 4
  %169 = inttoptr i32 %.unpack139.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %170 = tail call i32 @llvm.bswap.i32(i32 %167) #6
  %add.ptr.i147.i.i = getelementptr i8, ptr %169, i32 7176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147.i.i, i32 %170) #6, !srcloc !57
  br label %g450_preinit.exit

g450_preinit.exit:                                ; preds = %if.then90.i.i, %if.end.i.i.g450_preinit.exit_crit_edge
  %call47.i = tail call i32 @matroxfb_g450_setclk(ptr noundef %minfo, i32 noundef 25175, i32 noundef 1) #6
  %call48.i = tail call i32 @matroxfb_g450_setclk(ptr noundef %minfo, i32 noundef 28322, i32 noundef 2) #6
  %conv54.i = or i16 %69, 1
  %171 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %.unpack91.i = load i32, ptr %vbase.i, align 4
  %172 = inttoptr i32 %.unpack91.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %173 = tail call i16 @llvm.bswap.i16(i16 %conv54.i) #6
  %add.ptr.i105.i = getelementptr i8, ptr %172, i32 8132
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i105.i, i16 %173) #6, !srcloc !59
  %conv56.i = and i32 %call31.i, 255
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 6, i32 noundef %conv56.i) #6
  %174 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %.unpack92.i = load i32, ptr %vbase.i, align 4
  %175 = inttoptr i32 %.unpack92.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %add.ptr.i106.i = getelementptr i8, ptr %175, i32 15376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106.i, i32 %60) #6, !srcloc !57
  br label %cleanup

if.end58:                                         ; preds = %if.end53
  br i1 %tobool61.not, label %if.end58.if.end65_crit_edge, label %if.then62

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %and64 = and i32 %or, -1073741792
  %176 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %and64, ptr %hw1, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end58.if.end65_crit_edge
  %nobios = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 3
  %177 = ptrtoint ptr %nobios to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %nobios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool67.not = icmp eq i32 %178, 0
  br i1 %tobool67.not, label %if.end65.if.end71_crit_edge, label %if.then68

if.end65.if.end71_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %179 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %hw1, align 4
  %and70 = and i32 %180, -1073741825
  store i32 %and70, ptr %hw1, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end65.if.end71_crit_edge
  %nopciretry = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 4
  %181 = ptrtoint ptr %nopciretry to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %nopciretry, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool73.not = icmp eq i32 %182, 0
  br i1 %tobool73.not, label %if.end71.if.end77_crit_edge, label %if.then74

if.end71.if.end77_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %183 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %hw1, align 4
  %or76 = or i32 %184, 536870912
  store i32 %or76, ptr %hw1, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end71.if.end77_crit_edge
  %pcidev = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 10
  %185 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %pcidev, align 4
  %187 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %hw1, align 4
  %call = tail call i32 @pci_write_config_dword(ptr noundef %186, i32 noundef 64, i32 noundef %188) #6
  tail call fastcc void @DAC1064_setmclk(ptr noundef %minfo, i32 noundef 0)
  %189 = ptrtoint ptr %accelerator to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %accelerator, align 4
  %191 = zext i32 %190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %190, label %if.else200 [
    i32 20, label %if.then82
    i32 21, label %if.then145
  ]

if.then82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %192 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %pcidev, align 4
  %call84 = call i32 @pci_read_config_dword(ptr noundef %193, i32 noundef 80, ptr noundef nonnull %reg50) #6
  %194 = ptrtoint ptr %reg50 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %reg50, align 4
  %and85 = and i32 %195, -12289
  store i32 %and85, ptr %reg50, align 4
  %196 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %pcidev, align 4
  %call87 = call i32 @pci_write_config_dword(ptr noundef %197, i32 noundef 80, i32 noundef %and85) #6
  %198 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %hw1, align 4
  %or89 = or i32 %199, 4224
  store i32 %or89, ptr %hw1, align 4
  %200 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %pcidev, align 4
  %call92 = call i32 @pci_write_config_dword(ptr noundef %201, i32 noundef 64, i32 noundef %or89) #6
  %vbase94 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %mctlwtst = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 36, i32 1, i32 3
  %202 = ptrtoint ptr %mctlwtst to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %mctlwtst, align 4
  %204 = ptrtoint ptr %vbase94 to i32
  call void @__asan_load4_noabort(i32 %204)
  %.unpack377 = load i32, ptr %vbase94, align 4
  %205 = inttoptr i32 %.unpack377 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  call void @arm_heavy_mb() #6
  %206 = call i32 @llvm.bswap.i32(i32 %203) #6
  %add.ptr.i391 = getelementptr i8, ptr %205, i32 7176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i391, i32 %206) #6, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %207 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %207(i32 noundef 21474800) #6
  %208 = ptrtoint ptr %vbase94 to i32
  call void @__asan_load4_noabort(i32 %208)
  %.unpack378 = load i32, ptr %vbase94, align 4
  %209 = inttoptr i32 %.unpack378 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %add.ptr.i392 = getelementptr i8, ptr %209, i32 7173
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i392, i8 0) #6, !srcloc !61
  %210 = ptrtoint ptr %vbase94 to i32
  call void @__asan_load4_noabort(i32 %210)
  %.unpack379 = load i32, ptr %vbase94, align 4
  %211 = inttoptr i32 %.unpack379 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %add.ptr.i393 = getelementptr i8, ptr %211, i32 7173
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i393, i8 -128) #6, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %212 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %212(i32 noundef 21474800) #6
  %213 = ptrtoint ptr %vbase94 to i32
  call void @__asan_load4_noabort(i32 %213)
  %.unpack380 = load i32, ptr %vbase94, align 4
  %214 = inttoptr i32 %.unpack380 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %add.ptr.i394 = getelementptr i8, ptr %214, i32 7173
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i394, i8 64) #6, !srcloc !61
  %215 = ptrtoint ptr %vbase94 to i32
  call void @__asan_load4_noabort(i32 %215)
  %.unpack381 = load i32, ptr %vbase94, align 4
  %216 = inttoptr i32 %.unpack381 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %add.ptr.i395 = getelementptr i8, ptr %216, i32 7173
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i395, i8 -64) #6, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %217 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %217(i32 noundef 21474800) #6
  %218 = ptrtoint ptr %reg50 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %reg50, align 4
  %and108 = and i32 %219, -256
  %or109 = or i32 %and108, 7
  store i32 %or109, ptr %reg50, align 4
  %220 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %pcidev, align 4
  %call111 = call i32 @pci_write_config_dword(ptr noundef %221, i32 noundef 80, i32 noundef %or109) #6
  %222 = ptrtoint ptr %vbase94 to i32
  call void @__asan_load4_noabort(i32 %222)
  %.unpack382 = load i32, ptr %vbase94, align 4
  %223 = inttoptr i32 %.unpack382 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %add.ptr.i396 = getelementptr i8, ptr %223, i32 8142
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i396, i8 6) #6, !srcloc !61
  %224 = ptrtoint ptr %vbase94 to i32
  call void @__asan_load4_noabort(i32 %224)
  %.unpack383 = load i32, ptr %vbase94, align 4
  %225 = inttoptr i32 %.unpack383 to ptr
  %add.ptr.i397 = getelementptr i8, ptr %225, i32 8143
  %226 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i397) #6, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %227 = and i8 %226, 3
  %conv = or i8 %227, 4
  %228 = ptrtoint ptr %vbase94 to i32
  call void @__asan_load4_noabort(i32 %228)
  %.unpack384 = load i32, ptr %vbase94, align 4
  %229 = inttoptr i32 %.unpack384 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %add.ptr.i398 = getelementptr i8, ptr %229, i32 8143
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i398, i8 %conv) #6, !srcloc !61
  %230 = ptrtoint ptr %vbase94 to i32
  call void @__asan_load4_noabort(i32 %230)
  %.unpack385 = load i32, ptr %vbase94, align 4
  %231 = inttoptr i32 %.unpack385 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %add.ptr.i399 = getelementptr i8, ptr %231, i32 8158
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i399, i16 897) #6, !srcloc !59
  %232 = ptrtoint ptr %vbase94 to i32
  call void @__asan_load4_noabort(i32 %232)
  %.unpack386 = load i32, ptr %vbase94, align 4
  %233 = inttoptr i32 %.unpack386 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %add.ptr.i400 = getelementptr i8, ptr %233, i32 8158
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i400, i16 1024) #6, !srcloc !59
  %vbase130 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 18, i32 1
  %234 = ptrtoint ptr %vbase130 to i32
  call void @__asan_load4_noabort(i32 %234)
  %.unpack387 = load i32, ptr %vbase130, align 4
  %235 = inttoptr i32 %.unpack387 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %235, i8 -86) #6, !srcloc !61
  %236 = ptrtoint ptr %vbase130 to i32
  call void @__asan_load4_noabort(i32 %236)
  %.unpack388 = load i32, ptr %vbase130, align 4
  %237 = inttoptr i32 %.unpack388 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %add.ptr.i401 = getelementptr i8, ptr %237, i32 2048
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i401, i8 85) #6, !srcloc !61
  %238 = ptrtoint ptr %vbase130 to i32
  call void @__asan_load4_noabort(i32 %238)
  %.unpack389 = load i32, ptr %vbase130, align 4
  %239 = inttoptr i32 %.unpack389 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %add.ptr.i402 = getelementptr i8, ptr %239, i32 16384
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i402, i8 85) #6, !srcloc !61
  br label %if.end260

if.then145:                                       ; preds = %if.end77
  %240 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %pcidev, align 4
  %call147 = call i32 @pci_read_config_dword(ptr noundef %241, i32 noundef 80, ptr noundef nonnull %reg50) #6
  %242 = ptrtoint ptr %reg50 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %reg50, align 4
  %and148 = and i32 %243, -12289
  store i32 %and148, ptr %reg50, align 4
  %244 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %pcidev, align 4
  %call150 = call i32 @pci_write_config_dword(ptr noundef %245, i32 noundef 80, i32 noundef %and148) #6
  %memtype = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 18
  %246 = ptrtoint ptr %memtype to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %memtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %247)
  %cmp152 = icmp eq i32 %247, -1
  br i1 %cmp152, label %if.then154, label %if.else160

if.then154:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #8
  %reg156 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 36, i32 1
  %248 = ptrtoint ptr %reg156 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %reg156, align 4
  br label %if.end166

if.else160:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #8
  %and163 = shl i32 %247, 10
  br label %if.end166

if.end166:                                        ; preds = %if.else160, %if.then154
  %and163.sink = phi i32 [ %and163, %if.else160 ], [ %249, %if.then154 ]
  %shl = and i32 %and163.sink, 7168
  %250 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %hw1, align 4
  %or165 = or i32 %251, %shl
  store i32 %or165, ptr %hw1, align 4
  %sgram168 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 6
  %252 = ptrtoint ptr %sgram168 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %sgram168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %tobool169.not = icmp eq i32 %253, 0
  br i1 %tobool169.not, label %if.end166.if.end173_crit_edge, label %if.then170

if.end166.if.end173_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end173

if.then170:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #8
  %or172 = or i32 %or165, 16384
  %254 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %or172, ptr %hw1, align 4
  br label %if.end173

if.end173:                                        ; preds = %if.then170, %if.end166.if.end173_crit_edge
  %vbase175 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %mctlwtst178 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 36, i32 1, i32 3
  %255 = ptrtoint ptr %mctlwtst178 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %mctlwtst178, align 4
  %257 = ptrtoint ptr %vbase175 to i32
  call void @__asan_load4_noabort(i32 %257)
  %.unpack372 = load i32, ptr %vbase175, align 4
  %258 = inttoptr i32 %.unpack372 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  call void @arm_heavy_mb() #6
  %259 = call i32 @llvm.bswap.i32(i32 %256) #6
  %add.ptr.i403 = getelementptr i8, ptr %258, i32 7176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i403, i32 %259) #6, !srcloc !57
  %memrdbk = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 36, i32 1, i32 6
  %260 = ptrtoint ptr %memrdbk to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %memrdbk, align 4
  %262 = ptrtoint ptr %vbase175 to i32
  call void @__asan_load4_noabort(i32 %262)
  %.unpack373 = load i32, ptr %vbase175, align 4
  %263 = inttoptr i32 %.unpack373 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  call void @arm_heavy_mb() #6
  %264 = call i32 @llvm.bswap.i32(i32 %261) #6
  %add.ptr.i404 = getelementptr i8, ptr %263, i32 7748
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i404, i32 %264) #6, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %265 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %265(i32 noundef 42949600) #6
  %266 = ptrtoint ptr %vbase175 to i32
  call void @__asan_load4_noabort(i32 %266)
  %.unpack374 = load i32, ptr %vbase175, align 4
  %267 = inttoptr i32 %.unpack374 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  call void @arm_heavy_mb() #6
  %add.ptr.i405 = getelementptr i8, ptr %267, i32 7172
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i405, i32 0) #6, !srcloc !57
  %268 = ptrtoint ptr %vbase175 to i32
  call void @__asan_load4_noabort(i32 %268)
  %.unpack375 = load i32, ptr %vbase175, align 4
  %269 = inttoptr i32 %.unpack375 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  call void @arm_heavy_mb() #6
  %add.ptr.i406 = getelementptr i8, ptr %269, i32 7172
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i406, i32 8388608) #6, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %270 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %270(i32 noundef 21474800) #6
  %271 = ptrtoint ptr %memrdbk to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %memrdbk, align 4
  %conv196 = trunc i32 %272 to i16
  %273 = ptrtoint ptr %vbase175 to i32
  call void @__asan_load4_noabort(i32 %273)
  %.unpack376 = load i32, ptr %vbase175, align 4
  %274 = inttoptr i32 %.unpack376 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %275 = call i16 @llvm.bswap.i16(i16 %conv196) #6
  %add.ptr.i407 = getelementptr i8, ptr %274, i32 7748
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i407, i16 %275) #6, !srcloc !59
  br label %if.end260

if.else200:                                       ; preds = %if.end77
  %276 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %pcidev, align 4
  %call202 = call i32 @pci_read_config_dword(ptr noundef %277, i32 noundef 80, ptr noundef nonnull %reg50) #6
  %278 = ptrtoint ptr %reg50 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %reg50, align 4
  %and203 = and i32 %279, -257
  store i32 %and203, ptr %reg50, align 4
  %280 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %pcidev, align 4
  %call206 = call i32 @pci_write_config_dword(ptr noundef %281, i32 noundef 80, i32 noundef %and203) #6
  %memtype208 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 18
  %282 = ptrtoint ptr %memtype208 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %memtype208, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %283)
  %cmp209 = icmp eq i32 %283, -1
  br i1 %cmp209, label %if.then211, label %if.else218

if.then211:                                       ; preds = %if.else200
  call void @__sanitizer_cov_trace_pc() #8
  %reg213 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 36, i32 1
  %284 = ptrtoint ptr %reg213 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %reg213, align 4
  br label %if.end225

if.else218:                                       ; preds = %if.else200
  call void @__sanitizer_cov_trace_pc() #8
  %and221 = shl i32 %283, 10
  br label %if.end225

if.end225:                                        ; preds = %if.else218, %if.then211
  %and221.sink = phi i32 [ %and221, %if.else218 ], [ %285, %if.then211 ]
  %shl222 = and i32 %and221.sink, 7168
  %286 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %hw1, align 4
  %or224 = or i32 %287, %shl222
  store i32 %or224, ptr %hw1, align 4
  %sgram227 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 6
  %288 = ptrtoint ptr %sgram227 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %sgram227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %tobool228.not = icmp eq i32 %289, 0
  br i1 %tobool228.not, label %if.end225.if.end232_crit_edge, label %if.then229

if.end225.if.end232_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end232

if.then229:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #8
  %or231 = or i32 %or224, 16384
  %290 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %or231, ptr %hw1, align 4
  br label %if.end232

if.end232:                                        ; preds = %if.then229, %if.end225.if.end232_crit_edge
  %vbase234 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %mctlwtst237 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 36, i32 1, i32 3
  %291 = ptrtoint ptr %mctlwtst237 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %mctlwtst237, align 4
  %293 = ptrtoint ptr %vbase234 to i32
  call void @__asan_load4_noabort(i32 %293)
  %.unpack = load i32, ptr %vbase234, align 4
  %294 = inttoptr i32 %.unpack to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  call void @arm_heavy_mb() #6
  %295 = call i32 @llvm.bswap.i32(i32 %292) #6
  %add.ptr.i408 = getelementptr i8, ptr %294, i32 7176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i408, i32 %295) #6, !srcloc !57
  %memrdbk243 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 36, i32 1, i32 6
  %296 = ptrtoint ptr %memrdbk243 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %memrdbk243, align 4
  %298 = ptrtoint ptr %vbase234 to i32
  call void @__asan_load4_noabort(i32 %298)
  %.unpack367 = load i32, ptr %vbase234, align 4
  %299 = inttoptr i32 %.unpack367 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  call void @arm_heavy_mb() #6
  %300 = call i32 @llvm.bswap.i32(i32 %297) #6
  %add.ptr.i409 = getelementptr i8, ptr %299, i32 7748
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i409, i32 %300) #6, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %301 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %301(i32 noundef 42949600) #6
  %302 = ptrtoint ptr %vbase234 to i32
  call void @__asan_load4_noabort(i32 %302)
  %.unpack368 = load i32, ptr %vbase234, align 4
  %303 = inttoptr i32 %.unpack368 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  call void @arm_heavy_mb() #6
  %add.ptr.i410 = getelementptr i8, ptr %303, i32 7172
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i410, i32 0) #6, !srcloc !57
  %304 = ptrtoint ptr %vbase234 to i32
  call void @__asan_load4_noabort(i32 %304)
  %.unpack369 = load i32, ptr %vbase234, align 4
  %305 = inttoptr i32 %.unpack369 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  call void @arm_heavy_mb() #6
  %add.ptr.i411 = getelementptr i8, ptr %305, i32 7172
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i411, i32 8388608) #6, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %306 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %306(i32 noundef 21474800) #6
  %307 = ptrtoint ptr %memrdbk243 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %memrdbk243, align 4
  %309 = ptrtoint ptr %vbase234 to i32
  call void @__asan_load4_noabort(i32 %309)
  %.unpack370 = load i32, ptr %vbase234, align 4
  %310 = inttoptr i32 %.unpack370 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  call void @arm_heavy_mb() #6
  %311 = call i32 @llvm.bswap.i32(i32 %308) #6
  %add.ptr.i412 = getelementptr i8, ptr %310, i32 7748
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i412, i32 %311) #6, !srcloc !57
  br label %if.end260

if.end260:                                        ; preds = %if.end232, %if.end173, %if.then82
  %.sink417 = phi i32 [ 491552, %if.end173 ], [ 262176, %if.end232 ], [ 491552, %if.then82 ]
  %312 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %hw1, align 4
  %or199 = or i32 %313, %.sink417
  store i32 %or199, ptr %hw1, align 4
  %314 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %pcidev, align 4
  %call263 = call i32 @pci_write_config_dword(ptr noundef %315, i32 noundef 64, i32 noundef %or199) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end260, %g450_preinit.exit, %if.end49.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg50) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @MGAG100_reset(ptr noundef %minfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %noinit = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 5
  %0 = ptrtoint ptr %noinit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %noinit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %vbase = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack = load i32, ptr %vbase, align 4
  %3 = inttoptr i32 %.unpack to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %3, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 1536) #6, !srcloc !59
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %g450dac = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 19
  %4 = ptrtoint ptr %g450dac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %g450dac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 44) #6
  %conv = trunc i32 %call9 to i8
  %arrayidx = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx, align 1
  %call10 = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 45) #6
  %conv11 = trunc i32 %call10 to i8
  %arrayidx13 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 4
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv11, ptr %arrayidx13, align 4
  %call14 = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 46) #6
  %conv15 = trunc i32 %call14 to i8
  %arrayidx17 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 5
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv15, ptr %arrayidx17, align 1
  br label %if.end18

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @DAC1064_setmclk(ptr noundef %minfo, i32 noundef 21)
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then8
  %accelerator = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 8
  %9 = ptrtoint ptr %accelerator to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %accelerator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %10)
  %cmp = icmp eq i32 %10, 26
  br i1 %cmp, label %if.then21, label %if.end18.if.end30_crit_edge

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then21:                                        ; preds = %if.end18
  %dfp_type = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 20
  %11 = ptrtoint ptr %dfp_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dfp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp23 = icmp eq i32 %12, -1
  br i1 %cmp23, label %if.then25, label %if.then21.if.end30_crit_edge

if.then21.if.end30_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 31) #6
  %13 = ptrtoint ptr %dfp_type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call26, ptr %dfp_type, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.then21.if.end30_crit_edge, %if.end18.if.end30_crit_edge
  %14 = ptrtoint ptr %noinit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %noinit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool33.not = icmp eq i32 %15, 0
  br i1 %tobool33.not, label %if.end35, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %16 = ptrtoint ptr %g450dac to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %g450dac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool38.not = icmp eq i32 %17, 0
  br i1 %tobool38.not, label %if.else40, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @MGAG100_setPixClock(ptr noundef %minfo, i32 noundef 4, i32 noundef 25175)
  tail call fastcc void @MGAG100_setPixClock(ptr noundef %minfo, i32 noundef 5, i32 noundef 28322)
  %call44 = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 43) #6
  %conv46 = and i32 %call44, 254
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 43, i32 noundef %conv46) #6
  %call48 = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 42) #6
  %conv50 = and i32 %call48, 254
  %conv51 = or i32 %conv50, 1
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 42, i32 noundef %conv51) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else40, %if.end35.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @MGAG100_init(ptr noundef %minfo, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %DACreg.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2
  %0 = call ptr @memcpy(ptr %DACreg.i, ptr @MGA1064_DAC, i32 26)
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %minfo, i32 0, i32 6, i32 6
  %1 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bits_per_pixel.i, align 4
  %3 = add i32 %2, -8
  %4 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 29) #6
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb10.i
    i32 3, label %sw.bb13.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 13
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx.i, align 1
  br label %if.end

sw.bb3.i:                                         ; preds = %entry
  %length.i = getelementptr inbounds %struct.fb_info, ptr %minfo, i32 0, i32 6, i32 9, i32 1
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp.i = icmp eq i32 %8, 5
  %arrayidx7.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 13
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %arrayidx7.i, align 1
  br label %if.end

if.else.i:                                        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %arrayidx7.i, align 1
  br label %if.end

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx12.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 13
  %11 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %arrayidx12.i, align 1
  br label %if.end

sw.bb13.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx15.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 13
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 7, ptr %arrayidx15.i, align 1
  br label %if.end

if.end:                                           ; preds = %sw.bb13.i, %sw.bb10.i, %if.else.i, %if.then.i, %sw.bb.i
  %DAC1064.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 1
  %13 = ptrtoint ptr %DAC1064.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %DAC1064.i, align 4
  %arrayidx17.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 12
  %15 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx17.i, align 2
  %arrayidx19.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 15
  %16 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx19.i, align 1
  %18 = and i8 %17, -33
  store i8 %18, ptr %arrayidx19.i, align 1
  %sync.i = getelementptr inbounds %struct.my_timming, ptr %m, i32 0, i32 11
  %19 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sync.i, align 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 32
  %23 = or i8 %22, %18
  %conv25.i = xor i8 %23, 32
  store i8 %conv25.i, ptr %arrayidx19.i, align 1
  %24 = ptrtoint ptr %DACreg.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %DACreg.i, align 2
  %arrayidx29.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx29.i, align 1
  tail call void @DAC1064_global_init(ptr noundef %minfo) #6
  %hw1 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8
  %26 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw1, align 4
  %and = and i32 %27, -8193
  store i32 %and, ptr %hw1, align 4
  %call2 = tail call i32 @matroxfb_vgaHWinit(ptr noundef %minfo, ptr noundef %m) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %MiscOutReg = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 3
  %28 = ptrtoint ptr %MiscOutReg to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -17, ptr %MiscOutReg, align 2
  %29 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sync.i, align 4
  %and6 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %spec.store.select = select i1 %tobool7.not, i8 -17, i8 -81
  %31 = ptrtoint ptr %MiscOutReg to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %spec.store.select, ptr %MiscOutReg, align 2
  %32 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sync.i, align 4
  %and14 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end5.if.end21_crit_edge, label %if.then16

if.end5.if.end21_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then16:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %34 = and i8 %spec.store.select, 111
  %35 = ptrtoint ptr %MiscOutReg to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %MiscOutReg, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end5.if.end21_crit_edge
  %36 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sync.i, align 4
  %and23 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end28_crit_edge, label %if.then25

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 3
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx, align 1
  %40 = or i8 %39, 64
  store i8 %40, ptr %arrayidx, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end21.if.end28_crit_edge
  tail call fastcc void @DAC1064_init_2(ptr noundef %minfo)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @MGAG100_restore(ptr noundef %minfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8
  %pcidev = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 10
  %0 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcidev, align 4
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw1, align 4
  %call = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 64, i32 noundef %3) #6
  tail call fastcc void @DAC1064_restore_1(ptr noundef %minfo)
  tail call void @matroxfb_vgaHWrestore(ptr noundef %minfo) #6
  %support32MB = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 7
  %4 = ptrtoint ptr %support32MB to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %support32MB, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %vbase = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %arrayidx = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %7 to i16
  %shl = shl nuw i16 %conv, 8
  %or = or i16 %shl, 8
  %8 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack26 = load i32, ptr %vbase, align 4
  %9 = inttoptr i32 %.unpack26 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %10 = tail call i16 @llvm.bswap.i16(i16 %or) #6
  %add.ptr.i = getelementptr i8, ptr %9, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %10) #6, !srcloc !59
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %panpos = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 11, i32 3
  %11 = ptrtoint ptr %panpos to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %panpos, align 4
  %vbase5 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %arrayidx7 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 0
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %13 to i16
  %14 = ptrtoint ptr %vbase5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack = load i32, ptr %vbase5, align 4
  %15 = inttoptr i32 %.unpack to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %add.ptr.i27 = getelementptr i8, ptr %15, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i27, i16 %conv8) #6, !srcloc !59
  %arrayidx7.1 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx7.1, align 1
  %conv8.1 = zext i8 %17 to i16
  %shl9.1 = shl nuw i16 %conv8.1, 8
  %or10.1 = or i16 %shl9.1, 1
  %18 = ptrtoint ptr %vbase5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack.1 = load i32, ptr %vbase5, align 4
  %19 = inttoptr i32 %.unpack.1 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %20 = tail call i16 @llvm.bswap.i16(i16 %or10.1) #6
  %add.ptr.i27.1 = getelementptr i8, ptr %19, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i27.1, i16 %20) #6, !srcloc !59
  %arrayidx7.2 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 2
  %21 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx7.2, align 1
  %conv8.2 = zext i8 %22 to i16
  %shl9.2 = shl nuw i16 %conv8.2, 8
  %or10.2 = or i16 %shl9.2, 2
  %23 = ptrtoint ptr %vbase5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack.2 = load i32, ptr %vbase5, align 4
  %24 = inttoptr i32 %.unpack.2 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %25 = tail call i16 @llvm.bswap.i16(i16 %or10.2) #6
  %add.ptr.i27.2 = getelementptr i8, ptr %24, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i27.2, i16 %25) #6, !srcloc !59
  %arrayidx7.3 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 3
  %26 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx7.3, align 1
  %conv8.3 = zext i8 %27 to i16
  %shl9.3 = shl nuw i16 %conv8.3, 8
  %or10.3 = or i16 %shl9.3, 3
  %28 = ptrtoint ptr %vbase5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack.3 = load i32, ptr %vbase5, align 4
  %29 = inttoptr i32 %.unpack.3 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %30 = tail call i16 @llvm.bswap.i16(i16 %or10.3) #6
  %add.ptr.i27.3 = getelementptr i8, ptr %29, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i27.3, i16 %30) #6, !srcloc !59
  %arrayidx7.4 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 4
  %31 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx7.4, align 1
  %conv8.4 = zext i8 %32 to i16
  %shl9.4 = shl nuw i16 %conv8.4, 8
  %or10.4 = or i16 %shl9.4, 4
  %33 = ptrtoint ptr %vbase5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack.4 = load i32, ptr %vbase5, align 4
  %34 = inttoptr i32 %.unpack.4 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %35 = tail call i16 @llvm.bswap.i16(i16 %or10.4) #6
  %add.ptr.i27.4 = getelementptr i8, ptr %34, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i27.4, i16 %35) #6, !srcloc !59
  %arrayidx7.5 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 5
  %36 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx7.5, align 1
  %conv8.5 = zext i8 %37 to i16
  %shl9.5 = shl nuw i16 %conv8.5, 8
  %or10.5 = or i16 %shl9.5, 5
  %38 = ptrtoint ptr %vbase5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.unpack.5 = load i32, ptr %vbase5, align 4
  %39 = inttoptr i32 %.unpack.5 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %40 = tail call i16 @llvm.bswap.i16(i16 %or10.5) #6
  %add.ptr.i27.5 = getelementptr i8, ptr %39, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i27.5, i16 %40) #6, !srcloc !59
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @matroxfb_g450_setpll_cond(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m1064_compute(ptr noundef %out, ptr nocapture noundef readonly %m) #0 align 64 {
entry:
  %p.i.i = alloca i32, align 4
  %m.i = alloca i32, align 4
  %n.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m.i) #6
  %2 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %m.i, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i) #6
  %3 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %n.i, align 4, !annotation !62
  %max_pixel_clock.i = getelementptr inbounds %struct.matrox_fb_info, ptr %out, i32 0, i32 20
  %4 = ptrtoint ptr %max_pixel_clock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_pixel_clock.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i.i) #6
  %6 = ptrtoint ptr %p.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %p.i.i, align 4, !annotation !62
  %features.i.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %out, i32 0, i32 23
  %call.i.i.i = call i32 @matroxfb_PLL_calcclock(ptr noundef %features.i.i.i, i32 noundef %1, i32 noundef %5, ptr noundef nonnull %m.i, ptr noundef nonnull %n.i, ptr noundef nonnull %p.i.i) #6
  %7 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %p.i.i, align 4
  %notmask.i.i = shl nsw i32 -1, %8
  %sub.i.i = xor i32 %notmask.i.i, -1
  store i32 %sub.i.i, ptr %p.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %call.i.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i.i, 100001
  br i1 %cmp.i.i, label %entry.DAC1064_setpclk.exit_crit_edge, label %if.else.i.i

entry.DAC1064_setpclk.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %DAC1064_setpclk.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 140001, i32 %call.i.i.i)
  %cmp1.i.i = icmp ult i32 %call.i.i.i, 140001
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else3.i.i

if.then2.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.i = or i32 %sub.i.i, 8
  %9 = ptrtoint ptr %p.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i.i, ptr %p.i.i, align 4
  br label %DAC1064_setpclk.exit

if.else3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 180001, i32 %call.i.i.i)
  %cmp4.i.i = icmp ult i32 %call.i.i.i, 180001
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.else7.i.i

if.then5.i.i:                                     ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %or6.i.i = or i32 %sub.i.i, 16
  %10 = ptrtoint ptr %p.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or6.i.i, ptr %p.i.i, align 4
  br label %DAC1064_setpclk.exit

if.else7.i.i:                                     ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %or8.i.i = or i32 %sub.i.i, 24
  %11 = ptrtoint ptr %p.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or8.i.i, ptr %p.i.i, align 4
  br label %DAC1064_setpclk.exit

DAC1064_setpclk.exit:                             ; preds = %if.else7.i.i, %if.then5.i.i, %if.then2.i.i, %entry.DAC1064_setpclk.exit_crit_edge
  %12 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %p.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i.i) #6
  %14 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m.i, align 4
  %conv.i = trunc i32 %15 to i8
  %DACclk.i = getelementptr %struct.matrox_fb_info, ptr %out, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %DACclk.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i, ptr %DACclk.i, align 4
  %17 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n.i, align 4
  %conv1.i = trunc i32 %18 to i8
  %arrayidx4.i = getelementptr %struct.matrox_fb_info, ptr %out, i32 0, i32 8, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv1.i, ptr %arrayidx4.i, align 1
  %conv5.i = trunc i32 %13 to i8
  %arrayidx8.i = getelementptr %struct.matrox_fb_info, ptr %out, i32 0, i32 8, i32 1, i32 2
  %20 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv5.i, ptr %arrayidx8.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m.i) #6
  %conv = and i32 %15, 255
  call void @matroxfb_DAC_out(ptr noundef %out, i32 noundef 76, i32 noundef %conv) #6
  %21 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx4.i, align 1
  %conv.1 = zext i8 %22 to i32
  call void @matroxfb_DAC_out(ptr noundef %out, i32 noundef 77, i32 noundef %conv.1) #6
  %23 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx8.i, align 1
  %conv.2 = zext i8 %24 to i32
  call void @matroxfb_DAC_out(ptr noundef %out, i32 noundef 78, i32 noundef %conv.2) #6
  br label %for.body2

for.body2:                                        ; preds = %if.end.for.body2_crit_edge, %DAC1064_setpclk.exit
  %tmout.019 = phi i32 [ %dec, %if.end.for.body2_crit_edge ], [ 500000, %DAC1064_setpclk.exit ]
  %call = call i32 @matroxfb_DAC_in(ptr noundef %out, i32 noundef 79) #6
  %and = and i32 %call, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end, label %for.body2.if.end9_crit_edge

for.body2.if.end9_crit_edge:                      ; preds = %for.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end:                                           ; preds = %for.body2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 2147480) #6
  %dec = add nsw i32 %tmout.019, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end.critedge, label %if.end.for.body2_crit_edge

if.end.for.body2_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body2

do.end.critedge:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %if.end9

if.end9:                                          ; preds = %do.end.critedge, %for.body2.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matroxfb_DAC_in(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matroxfb_PLL_calcclock(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @DAC1064_setmclk(ptr noundef %minfo, i32 noundef %oscinfo) unnamed_addr #0 align 64 {
entry:
  %p.i = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8
  %noinit = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 5
  %0 = ptrtoint ptr %noinit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %noinit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 44) #6
  %conv = trunc i32 %call to i8
  %arrayidx = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %arrayidx, align 1
  %call2 = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 45) #6
  %conv3 = trunc i32 %call2 to i8
  %arrayidx5 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 4
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %arrayidx5, align 4
  %call6 = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 46) #6
  %conv7 = trunc i32 %call6 to i8
  %arrayidx9 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 5
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv7, ptr %arrayidx9, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw1, align 4
  %or = or i32 %6, 4
  %pcidev = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 10
  %7 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcidev, align 4
  %call10 = tail call i32 @pci_write_config_dword(ptr noundef %8, i32 noundef 64, i32 noundef %or) #6
  %and = and i32 %or, -188
  %and11 = shl i32 %oscinfo, 1
  %and21 = shl i32 %oscinfo, 3
  %9 = and i32 %and21, 128
  %10 = and i32 %and11, 24
  %11 = or i32 %10, %9
  %12 = or i32 %11, %and
  %and26 = and i32 %oscinfo, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and26)
  %cmp = icmp eq i32 %and26, 1
  br i1 %cmp, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #6
  %13 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %m, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %14 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %n, align 4, !annotation !62
  %or29 = or i32 %12, 32
  %15 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcidev, align 4
  %call31 = tail call i32 @pci_write_config_dword(ptr noundef %16, i32 noundef 64, i32 noundef %or29) #6
  %and32 = and i32 %or29, -8
  %17 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcidev, align 4
  %call34 = tail call i32 @pci_write_config_dword(ptr noundef %18, i32 noundef 64, i32 noundef %and32) #6
  %max_pixel_clock = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 20
  %19 = ptrtoint ptr %max_pixel_clock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_pixel_clock, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i) #6
  %21 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %p.i, align 4, !annotation !62
  %features.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23
  %call.i.i = call i32 @matroxfb_PLL_calcclock(ptr noundef %features.i.i, i32 noundef 133333, i32 noundef %20, ptr noundef nonnull %m, ptr noundef nonnull %n, ptr noundef nonnull %p.i) #6
  %22 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p.i, align 4
  %notmask.i = shl nsw i32 -1, %23
  %sub.i = xor i32 %notmask.i, -1
  store i32 %sub.i, ptr %p.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %call.i.i)
  %cmp.i = icmp ult i32 %call.i.i, 100001
  br i1 %cmp.i, label %if.then28.DAC1064_calcclock.exit_crit_edge, label %if.else.i

if.then28.DAC1064_calcclock.exit_crit_edge:       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %DAC1064_calcclock.exit

if.else.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_const_cmp4(i32 140001, i32 %call.i.i)
  %cmp1.i = icmp ult i32 %call.i.i, 140001
  br i1 %cmp1.i, label %if.then2.i, label %if.else3.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = or i32 %sub.i, 8
  %24 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i, ptr %p.i, align 4
  br label %DAC1064_calcclock.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 180001, i32 %call.i.i)
  %cmp4.i = icmp ult i32 %call.i.i, 180001
  br i1 %cmp4.i, label %if.then5.i, label %if.else7.i

if.then5.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #8
  %or6.i = or i32 %sub.i, 16
  %25 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or6.i, ptr %p.i, align 4
  br label %DAC1064_calcclock.exit

if.else7.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #8
  %or8.i = or i32 %sub.i, 24
  %26 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or8.i, ptr %p.i, align 4
  br label %DAC1064_calcclock.exit

DAC1064_calcclock.exit:                           ; preds = %if.else7.i, %if.then5.i, %if.then2.i, %if.then28.DAC1064_calcclock.exit_crit_edge
  %27 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %p.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #6
  %29 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %m, align 4
  %conv35 = trunc i32 %30 to i8
  %arrayidx37 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 3
  %31 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv35, ptr %arrayidx37, align 1
  %conv38 = and i32 %30, 255
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 44, i32 noundef %conv38) #6
  %32 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n, align 4
  %conv39 = trunc i32 %33 to i8
  %arrayidx41 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 4
  %34 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv39, ptr %arrayidx41, align 4
  %conv42 = and i32 %33, 255
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 45, i32 noundef %conv42) #6
  %conv43 = trunc i32 %28 to i8
  %arrayidx45 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 5
  %35 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv43, ptr %arrayidx45, align 1
  %conv46 = and i32 %28, 255
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 46, i32 noundef %conv46) #6
  br label %for.body

for.cond:                                         ; preds = %for.body
  %dec = add nsw i32 %clk.01, -1
  %tobool47.not = icmp eq i32 %dec, 0
  br i1 %tobool47.not, label %do.end.critedge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %DAC1064_calcclock.exit
  %clk.01 = phi i32 [ 65536, %DAC1064_calcclock.exit ], [ %dec, %for.cond.for.body_crit_edge ]
  %call48 = call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 47) #6
  %and49 = and i32 %call48, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %for.cond, label %for.body.if.end56_crit_edge

for.body.if.end56_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

do.end.critedge:                                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %if.end56

if.end56:                                         ; preds = %do.end.critedge, %for.body.if.end56_crit_edge
  %or57 = or i32 %12, 37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #6
  br label %if.end60

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or59 = or i32 %12, %and26
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.end56
  %mx.3 = phi i32 [ %or57, %if.end56 ], [ %or59, %if.else ]
  %36 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pcidev, align 4
  %call62 = call i32 @pci_write_config_dword(ptr noundef %37, i32 noundef 64, i32 noundef %mx.3) #6
  %and63 = and i32 %mx.3, -5
  %38 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcidev, align 4
  %call65 = call i32 @pci_write_config_dword(ptr noundef %39, i32 noundef 64, i32 noundef %and63) #6
  %40 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and63, ptr %hw1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matroxfb_vgaHWinit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @DAC1064_init_2(ptr nocapture noundef %minfo) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %minfo, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp ugt i32 %1, 16
  br i1 %cmp, label %entry.for.body_crit_edge, label %if.else

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %conv = trunc i32 %i.06 to i8
  %mul = mul nuw nsw i32 %i.06, 3
  %arrayidx = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 4, i32 %mul
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %arrayidx, align 1
  %add6 = add nuw nsw i32 %mul, 1
  %arrayidx7 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 4, i32 %add6
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %arrayidx7, align 1
  %add11 = add nuw nsw i32 %mul, 2
  %arrayidx12 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 4, i32 %add11
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx12, align 1
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond10.not = icmp eq i32 %inc, 256
  br i1 %exitcond10.not, label %for.body.if.end100_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end100_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp16 = icmp ugt i32 %1, 8
  br i1 %cmp16, label %if.then18, label %if.else97

if.then18:                                        ; preds = %if.else
  %length = getelementptr inbounds %struct.fb_info, ptr %minfo, i32 0, i32 6, i32 9, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp21 = icmp eq i32 %6, 5
  br i1 %cmp21, label %if.then18.for.body28_crit_edge, label %if.then18.for.body75_crit_edge

if.then18.for.body75_crit_edge:                   ; preds = %if.then18
  br label %for.body75

if.then18.for.body28_crit_edge:                   ; preds = %if.then18
  br label %for.body28

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %if.then18.for.body28_crit_edge
  %i24.05 = phi i32 [ %inc68, %for.body28.for.body28_crit_edge ], [ 0, %if.then18.for.body28_crit_edge ]
  %i24.0.tr = trunc i32 %i24.05 to i8
  %conv29 = shl i8 %i24.0.tr, 3
  %mul31 = mul nuw nsw i32 %i24.05, 3
  %arrayidx33 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 4, i32 %mul31
  %7 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv29, ptr %arrayidx33, align 1
  %add38 = add nuw nsw i32 %mul31, 1
  %arrayidx39 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 4, i32 %add38
  %8 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv29, ptr %arrayidx39, align 1
  %add44 = add nuw nsw i32 %mul31, 2
  %arrayidx45 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 4, i32 %add44
  %9 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv29, ptr %arrayidx45, align 1
  %mul50 = add nuw nsw i32 %mul31, 384
  %arrayidx52 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 4, i32 %mul50
  %10 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv29, ptr %arrayidx52, align 1
  %add58 = add nuw nsw i32 %mul31, 385
  %arrayidx59 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 4, i32 %add58
  %11 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv29, ptr %arrayidx59, align 1
  %add65 = add nuw nsw i32 %mul31, 386
  %arrayidx66 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 4, i32 %add65
  %12 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv29, ptr %arrayidx66, align 1
  %inc68 = add nuw nsw i32 %i24.05, 1
  %exitcond9.not = icmp eq i32 %inc68, 32
  br i1 %exitcond9.not, label %for.body28.if.end100_crit_edge, label %for.body28.for.body28_crit_edge

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body28

for.body28.if.end100_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %if.then18.for.body75_crit_edge
  %i71.04 = phi i32 [ %inc95, %for.body75.for.body75_crit_edge ], [ 0, %if.then18.for.body75_crit_edge ]
  %i71.0.tr = trunc i32 %i71.04 to i8
  %conv77 = shl i8 %i71.0.tr, 3
  %mul79 = mul nuw nsw i32 %i71.04, 3
  %arrayidx81 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 4, i32 %mul79
  %13 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv77, ptr %arrayidx81, align 1
  %conv83 = shl i8 %i71.0.tr, 2
  %add86 = add nuw nsw i32 %mul79, 1
  %arrayidx87 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 4, i32 %add86
  %14 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv83, ptr %arrayidx87, align 1
  %add92 = add nuw nsw i32 %mul79, 2
  %arrayidx93 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 4, i32 %add92
  %15 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv77, ptr %arrayidx93, align 1
  %inc95 = add nuw nsw i32 %i71.04, 1
  %exitcond.not = icmp eq i32 %inc95, 64
  br i1 %exitcond.not, label %for.body75.if.end100_crit_edge, label %for.body75.for.body75_crit_edge

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body75

for.body75.if.end100_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.else97:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %DACpal98 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 4
  %16 = call ptr @memset(ptr %DACpal98, i32 0, i32 768)
  br label %if.end100

if.end100:                                        ; preds = %if.else97, %for.body75.if.end100_crit_edge, %for.body28.if.end100_crit_edge, %for.body.if.end100_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @DAC1064_restore_1(ptr noundef %minfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 44) #6
  %arrayidx = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv)
  %cmp.not = icmp eq i32 %call, %conv
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 45) #6
  %arrayidx5 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 4
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx5, align 4
  %conv6 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %conv6)
  %cmp7.not = icmp eq i32 %call3, %conv6
  br i1 %cmp7.not, label %lor.lhs.false9, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %call10 = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 46) #6
  %arrayidx12 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 5
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %conv13)
  %cmp14.not = icmp eq i32 %call10, %conv13
  br i1 %cmp14.not, label %lor.lhs.false9.for.body.preheader_crit_edge, label %lor.lhs.false9.if.then_crit_edge

lor.lhs.false9.if.then_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false9.for.body.preheader_crit_edge:      ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.then:                                          ; preds = %lor.lhs.false9.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv18 = zext i8 %7 to i32
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 44, i32 noundef %conv18) #6
  %arrayidx20 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 4
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx20, align 4
  %conv21 = zext i8 %9 to i32
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 45, i32 noundef %conv21) #6
  %arrayidx23 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 5
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %11 to i32
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 46, i32 noundef %conv24) #6
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %lor.lhs.false9.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.056 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %12 = zext i32 %i.056 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %i.056, label %if.then31 [
    i32 14, label %for.body.for.inc_crit_edge
    i32 16, label %for.body.for.inc_crit_edge58
  ]

for.body.for.inc_crit_edge58:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx32 = getelementptr [26 x i8], ptr @MGA1064_DAC_regs, i32 0, i32 %i.056
  %13 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %14 to i32
  %arrayidx34 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 %i.056
  %15 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %16 to i32
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef %conv33, i32 noundef %conv35) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge58
  %inc = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, 26
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @DAC1064_global_restore(ptr noundef %minfo)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @matroxfb_vgaHWrestore(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g450_compute(ptr noundef %out, ptr nocapture noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mnp = getelementptr inbounds %struct.my_timming, ptr %m, i32 0, i32 1
  %0 = ptrtoint ptr %mnp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mnp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m, align 4
  %crtc = getelementptr inbounds %struct.my_timming, ptr %m, i32 0, i32 2
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp eq i32 %5, 1
  %cond = select i1 %cmp1, i32 3, i32 4
  %call = tail call i32 @matroxfb_g450_setclk(ptr noundef %out, i32 noundef %3, i32 noundef %cond) #6
  %6 = ptrtoint ptr %mnp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %mnp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp4 = icmp sgt i32 %call, -1
  br i1 %cmp4, label %if.then5, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @g450_mnp2f(ptr noundef %out, i32 noundef %call) #6
  %7 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call7, ptr %m, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matroxfb_g450_setclk(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g450_mnp2f(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @MGAG100_setPixClock(ptr noundef %minfo, i32 noundef %flags, i32 noundef %freq) unnamed_addr #0 align 64 {
entry:
  %p.i = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #6
  %0 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %m, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %1 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %n, align 4, !annotation !62
  %max_pixel_clock = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 20
  %2 = ptrtoint ptr %max_pixel_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_pixel_clock, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i) #6
  %4 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %p.i, align 4, !annotation !62
  %features.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23
  %call.i.i = call i32 @matroxfb_PLL_calcclock(ptr noundef %features.i.i, i32 noundef %freq, i32 noundef %3, ptr noundef nonnull %m, ptr noundef nonnull %n, ptr noundef nonnull %p.i) #6
  %5 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %p.i, align 4
  %notmask.i = shl nsw i32 -1, %6
  %sub.i = xor i32 %notmask.i, -1
  store i32 %sub.i, ptr %p.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %call.i.i)
  %cmp.i = icmp ult i32 %call.i.i, 100001
  br i1 %cmp.i, label %entry.DAC1064_calcclock.exit_crit_edge, label %if.else.i

entry.DAC1064_calcclock.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %DAC1064_calcclock.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 140001, i32 %call.i.i)
  %cmp1.i = icmp ult i32 %call.i.i, 140001
  br i1 %cmp1.i, label %if.then2.i, label %if.else3.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = or i32 %sub.i, 8
  %7 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %p.i, align 4
  br label %DAC1064_calcclock.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 180001, i32 %call.i.i)
  %cmp4.i = icmp ult i32 %call.i.i, 180001
  br i1 %cmp4.i, label %if.then5.i, label %if.else7.i

if.then5.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #8
  %or6.i = or i32 %sub.i, 16
  %8 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or6.i, ptr %p.i, align 4
  br label %DAC1064_calcclock.exit

if.else7.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #8
  %or8.i = or i32 %sub.i, 24
  %9 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or8.i, ptr %p.i, align 4
  br label %DAC1064_calcclock.exit

DAC1064_calcclock.exit:                           ; preds = %if.else7.i, %if.then5.i, %if.then2.i, %entry.DAC1064_calcclock.exit_crit_edge
  %10 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #6
  %12 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m, align 4
  %14 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n, align 4
  %call.i = call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 26) #6
  %or1.i = or i32 %call.i, 12
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 26, i32 noundef %or1.i) #6
  %and.i = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %switch.selectcmp.i = icmp eq i32 %and.i, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 72, i32 76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %switch.selectcmp60.i = icmp eq i32 %and.i, 0
  %switch.select61.i = select i1 %switch.selectcmp60.i, i32 68, i32 %switch.select.i
  %inc.i = or i32 %switch.select61.i, 1
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef %switch.select61.i, i32 noundef %13) #6
  %inc3.i = or i32 %switch.select61.i, 2
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef %inc.i, i32 noundef %15) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef %inc3.i, i32 noundef %11) #6
  %vbase.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %16 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack.i = load i32, ptr %vbase.i, align 4
  %17 = inttoptr i32 %.unpack.i to ptr
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 8140
  %18 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #6, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %conv.i.i = zext i8 %18 to i32
  %and5.i = and i32 %conv.i.i, 243
  %19 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %and.i, label %sw.default9.i [
    i32 0, label %DAC1064_calcclock.exit.sw.epilog11.i_crit_edge
    i32 1, label %sw.bb7.i
  ]

DAC1064_calcclock.exit.sw.epilog11.i_crit_edge:   ; preds = %DAC1064_calcclock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11.i

sw.bb7.i:                                         ; preds = %DAC1064_calcclock.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or8.i3 = or i32 %and5.i, 4
  br label %sw.epilog11.i

sw.default9.i:                                    ; preds = %DAC1064_calcclock.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or10.i = or i32 %conv.i.i, 12
  br label %sw.epilog11.i

sw.epilog11.i:                                    ; preds = %sw.default9.i, %sw.bb7.i, %DAC1064_calcclock.exit.sw.epilog11.i_crit_edge
  %selClk.0.i = phi i32 [ %or10.i, %sw.default9.i ], [ %or8.i3, %sw.bb7.i ], [ %and5.i, %DAC1064_calcclock.exit.sw.epilog11.i_crit_edge ]
  %conv.i = trunc i32 %selClk.0.i to i8
  %20 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack59.i = load i32, ptr %vbase.i, align 4
  %21 = inttoptr i32 %.unpack59.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %add.ptr.i62.i = getelementptr i8, ptr %21, i32 8130
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i62.i, i8 %conv.i) #6, !srcloc !61
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %sw.epilog11.i
  %clk.063.i = phi i32 [ 500000, %sw.epilog11.i ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  %call15.i = call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 79) #6
  %and16.i = and i32 %call15.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end.i, label %for.body.i.if.end22.i_crit_edge

for.body.i.if.end22.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 2147480) #6
  %dec.i = add nsw i32 %clk.063.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.critedge.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.end.critedge.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub20.i = add nsw i32 %switch.select61.i, -68
  %div.i = sdiv i32 %sub20.i, 4
  %add.i = add nsw i32 %div.i, 65
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %add.i) #9
  br label %if.end22.i

if.end22.i:                                       ; preds = %do.end.critedge.i, %for.body.i.if.end22.i_crit_edge
  %call23.i = call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 26) #6
  %and24.i = and i32 %call23.i, -4
  %and25.i = and i32 %flags, 12
  %23 = zext i32 %and25.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %and25.i, label %sw.default30.i [
    i32 0, label %if.end22.i.MGAG100_progPixClock.exit_crit_edge
    i32 4, label %sw.bb28.i
  ]

if.end22.i.MGAG100_progPixClock.exit_crit_edge:   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %MGAG100_progPixClock.exit

sw.bb28.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %or29.i = or i32 %and24.i, 1
  br label %MGAG100_progPixClock.exit

sw.default30.i:                                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %or31.i = or i32 %and24.i, 2
  br label %MGAG100_progPixClock.exit

MGAG100_progPixClock.exit:                        ; preds = %sw.default30.i, %sw.bb28.i, %if.end22.i.MGAG100_progPixClock.exit_crit_edge
  %selClk.1.i = phi i32 [ %or31.i, %sw.default30.i ], [ %or29.i, %sw.bb28.i ], [ %and24.i, %if.end22.i.MGAG100_progPixClock.exit_crit_edge ]
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 26, i32 noundef %selClk.1.i) #6
  %call33.i = call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 26) #6
  %and34.i = and i32 %call33.i, -5
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 26, i32 noundef %and34.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !45, !46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @matrox_mystique, !1, !"matrox_mystique", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/matrox/matroxfb_DAC1064.c", i32 1091, i32 22}
!2 = !{ptr @__ksymtab_matrox_mystique, !3, !"__ksymtab_matrox_mystique", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/matrox/matroxfb_DAC1064.c", i32 1097, i32 1}
!4 = !{ptr @matrox_G100, !5, !"matrox_G100", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/matrox/matroxfb_DAC1064.c", i32 1101, i32 22}
!6 = !{ptr @__ksymtab_matrox_G100, !7, !"__ksymtab_matrox_G100", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/matrox/matroxfb_DAC1064.c", i32 1107, i32 1}
!8 = !{ptr @__ksymtab_DAC1064_global_init, !9, !"__ksymtab_DAC1064_global_init", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/matrox/matroxfb_DAC1064.c", i32 1111, i32 1}
!10 = !{ptr @__ksymtab_DAC1064_global_restore, !11, !"__ksymtab_DAC1064_global_restore", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/matrox/matroxfb_DAC1064.c", i32 1112, i32 1}
!12 = !{ptr @__UNIQUE_ID_file305, !13, !"__UNIQUE_ID_file305", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/matrox/matroxfb_DAC1064.c", i32 1114, i32 1}
!14 = !{ptr @__UNIQUE_ID_license306, !13, !"__UNIQUE_ID_license306", i1 false, i1 false}
!15 = !{ptr @MGA1064_preinit.vxres_mystique, !16, !"vxres_mystique", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/matrox/matroxfb_DAC1064.c", i32 671, i32 19}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/matrox/matroxfb_DAC1064.c", i32 510, i32 11}
!19 = !{ptr @m1064, !20, !"m1064", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/matrox/matroxfb_DAC1064.c", i32 509, i32 29}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/matrox/matroxfb_DAC1064.c", i32 503, i32 4}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @m1064_compute._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @m1064_compute._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/matrox/matroxfb_DAC1064.c", i32 151, i32 4}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @DAC1064_setmclk._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @DAC1064_setmclk._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @MGA1064_DAC, !33, !"MGA1064_DAC", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/matrox/matroxfb_DAC1064.c", i32 75, i32 28}
!34 = !{ptr @MGA1064_DAC_regs, !35, !"MGA1064_DAC_regs", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/matrox/matroxfb_DAC1064.c", i32 64, i32 28}
!36 = !{ptr @MGAG100_preinit.vxres_g100, !37, !"vxres_g100", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/matrox/matroxfb_DAC1064.c", i32 840, i32 19}
!38 = !{ptr @g450out, !39, !"g450out", i1 false, i1 false}
!39 = !{!"../drivers/video/fbdev/matrox/matroxfb_DAC1064.c", i32 527, i32 29}
!40 = distinct !{null, !41, !"x7AF4", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/matrox/matroxfb_DAC1064.c", i32 604, i32 12}
!42 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/matrox/matroxfb_DAC1064.c", i32 645, i32 3}
!44 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @MGAG100_progPixClock._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @MGAG100_progPixClock._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 2156272276}
!57 = !{i64 6269678}
!58 = !{i64 2156271067}
!59 = !{i64 6269058}
!60 = !{i64 2156270631}
!61 = !{i64 6269481}
!62 = !{!"auto-init"}
!63 = !{i64 6270096}
!64 = !{i64 2156271893}
!65 = !{i64 6269876}
!66 = !{i64 2156270248}
