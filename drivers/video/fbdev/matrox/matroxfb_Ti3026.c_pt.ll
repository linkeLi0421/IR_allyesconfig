; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/matrox/matroxfb_Ti3026.c_pt.bc'
source_filename = "../drivers/video/fbdev/matrox/matroxfb_Ti3026.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+matrox_millennium\22, \22a\22\09"
module asm "\09.weak\09__crc_matrox_millennium\09\09\09\09"
module asm "\09.long\09__crc_matrox_millennium\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_matrox_millennium:\09\09\09\09\09"
module asm "\09.asciz \09\22matrox_millennium\22\09\09\09\09\09"
module asm "__kstrtabns_matrox_millennium:\09\09\09\09\09"
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.80, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.80 = type { ptr }
%struct.my_timming = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@matrox_millennium = dso_local global { %struct.matrox_switch, [16 x i8] } { %struct.matrox_switch { ptr @Ti3026_preinit, ptr @Ti3026_reset, ptr @Ti3026_init, ptr @Ti3026_restore }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_matrox_millennium = external dso_local constant [0 x i8], align 1
@__kstrtabns_matrox_millennium = external dso_local constant [0 x i8], align 1
@__ksymtab_matrox_millennium = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @matrox_millennium to i32), ptr @__kstrtab_matrox_millennium, ptr @__kstrtabns_matrox_millennium }, section "___ksymtab+matrox_millennium", align 4
@__UNIQUE_ID_file305 = internal constant [64 x i8] c"matroxfb_Ti3026.file=drivers/video/fbdev/matrox/matroxfb_Ti3026\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [28 x i8] c"matroxfb_Ti3026.license=GPL\00", section ".modinfo", align 1
@Ti3026_preinit.vxres_mill2 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 512, i32 640, i32 768, i32 800, i32 832, i32 960, i32 1024, i32 1152, i32 1280, i32 1600, i32 1664, i32 1920, i32 2048, i32 0], [40 x i8] zeroinitializer }, align 32
@Ti3026_preinit.vxres_mill1 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 640, i32 768, i32 800, i32 960, i32 1024, i32 1152, i32 1280, i32 1600, i32 1920, i32 2048, i32 0], [52 x i8] zeroinitializer }, align 32
@ti3026_output = internal global { %struct.matrox_altout, [32 x i8] } { %struct.matrox_altout { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Primary output\00", [17 x i8] zeroinitializer }, align 32
@ti3026_setMCLK._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013matroxfb: Temporary pixel PLL not locked after 5 secs\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti3026_setMCLK\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/video/fbdev/matrox/matroxfb_Ti3026.c\00", [51 x i8] zeroinitializer }, align 32
@ti3026_setMCLK._entry_ptr = internal global ptr @ti3026_setMCLK._entry, section ".printk_index", align 4
@ti3026_setMCLK._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013matroxfb: Memory PLL not locked after 5 secs\0A\00", [48 x i8] zeroinitializer }, align 32
@ti3026_setMCLK._entry_ptr.6 = internal global ptr @ti3026_setMCLK._entry.4, section ".printk_index", align 4
@ti3026_setMCLK._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013matroxfb: Pixel PLL not locked after 5 secs\0A\00", [49 x i8] zeroinitializer }, align 32
@ti3026_setMCLK._entry_ptr.9 = internal global ptr @ti3026_setMCLK._entry.7, section ".printk_index", align 4
@MGADACbpp32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\07\06\00\05\00\00,\00\1E\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00", [43 x i8] zeroinitializer }, align 32
@DACseq = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0F\18\19\1A\1C\1D\1E*+0123456789:\06", [43 x i8] zeroinitializer }, align 32
@Ti3026_restore._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.10, ptr @.str.3, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ti3026_restore\00", [17 x i8] zeroinitializer }, align 32
@Ti3026_restore._entry_ptr = internal global ptr @Ti3026_restore._entry, section ".printk_index", align 4
@Ti3026_restore._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013matroxfb: Loop PLL not locked after 5 secs\0A\00", [50 x i8] zeroinitializer }, align 32
@Ti3026_restore._entry_ptr.13 = internal global ptr @Ti3026_restore._entry.11, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7]
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"matrox_millennium\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 741, i32 22 }
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"vxres_mill2\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 684, i32 19 }
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"vxres_mill1\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 687, i32 19 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"ti3026_output\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 678, i32 29 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 679, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 479, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 503, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 539, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"MGADACbpp32\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 270, i32 28 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"DACseq\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 248, i32 28 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 630, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [48 x i8] c"../drivers/video/fbdev/matrox/matroxfb_Ti3026.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 652, i32 5 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @Ti3026_restore._entry, ptr @Ti3026_restore._entry.11, ptr @Ti3026_restore._entry_ptr, ptr @Ti3026_restore._entry_ptr.13, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__ksymtab_matrox_millennium, ptr @ti3026_setMCLK._entry, ptr @ti3026_setMCLK._entry.4, ptr @ti3026_setMCLK._entry.7, ptr @ti3026_setMCLK._entry_ptr, ptr @ti3026_setMCLK._entry_ptr.6, ptr @ti3026_setMCLK._entry_ptr.9, ptr @matrox_millennium, ptr @Ti3026_preinit.vxres_mill2, ptr @Ti3026_preinit.vxres_mill1, ptr @ti3026_output, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @MGADACbpp32, ptr @DACseq, ptr @.str.10, ptr @.str.12], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrox_millennium to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Ti3026_preinit.vxres_mill2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Ti3026_preinit.vxres_mill1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti3026_output to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti3026_setMCLK._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti3026_setMCLK._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti3026_setMCLK._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MGADACbpp32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DACseq to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Ti3026_restore._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Ti3026_restore._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @Ti3026_preinit(ptr noundef %minfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8
  %millenium = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 27
  %0 = ptrtoint ptr %millenium to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %millenium, align 4
  %pcidev = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 10
  %1 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcidev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1305, i16 %4)
  %cmp = icmp ne i16 %4, 1305
  %conv2 = zext i1 %cmp to i32
  %milleniumII = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 28
  %5 = ptrtoint ptr %milleniumII to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv2, ptr %milleniumII, align 4
  %capable = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 29
  %6 = ptrtoint ptr %capable to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %capable, align 4
  %text = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 29, i32 3
  %7 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %text, align 4
  %cond = select i1 %cmp, ptr @Ti3026_preinit.vxres_mill2, ptr @Ti3026_preinit.vxres_mill1
  %vxres = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 29, i32 1
  %8 = ptrtoint ptr %vxres to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cond, ptr %vxres, align 4
  %outputs = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14
  %data = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 0, i32 2
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %minfo, ptr %data, align 4
  %output = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 0, i32 1
  %10 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ti3026_output, ptr %output, align 4
  %default_src = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 0, i32 4
  %11 = ptrtoint ptr %default_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %default_src, align 4
  %13 = ptrtoint ptr %outputs to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %outputs, align 4
  %mode = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 0, i32 3
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 128, ptr %mode, align 4
  %noinit = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 5
  %15 = ptrtoint ptr %noinit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %noinit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool14.not = icmp eq i32 %16, 0
  br i1 %tobool14.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw1, align 4
  %and = and i32 %18, -1073741568
  %or = or i32 %and, 2883584
  store i32 %or, ptr %hw1, align 4
  %novga = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 2
  %19 = ptrtoint ptr %novga to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %novga, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool17.not = icmp eq i32 %20, 0
  br i1 %tobool17.not, label %if.end.if.end21_crit_edge, label %if.then18

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and20 = and i32 %or, -1070858240
  %21 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and20, ptr %hw1, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end.if.end21_crit_edge
  %nobios = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 3
  %22 = ptrtoint ptr %nobios to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nobios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool23.not = icmp eq i32 %23, 0
  br i1 %tobool23.not, label %if.end21.if.end27_crit_edge, label %if.then24

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hw1, align 4
  %and26 = and i32 %25, -1073741825
  store i32 %and26, ptr %hw1, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end21.if.end27_crit_edge
  %nopciretry = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 4
  %26 = ptrtoint ptr %nopciretry to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nopciretry, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool29.not = icmp eq i32 %27, 0
  br i1 %tobool29.not, label %if.end27.if.end33_crit_edge, label %if.then30

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hw1, align 4
  %or32 = or i32 %29, 536870912
  store i32 %or32, ptr %hw1, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end27.if.end33_crit_edge
  %30 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hw1, align 4
  %call = tail call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 64, i32 noundef %31) #6
  %call36 = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 1) #6
  %conv37 = trunc i32 %call36 to i8
  %accel = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 9
  %32 = ptrtoint ptr %accel to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv37, ptr %accel, align 4
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 26, i32 noundef 119) #6
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 24, i32 noundef 128) #6
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 25, i32 noundef 152) #6
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 44, i32 noundef 42) #6
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 47, i32 noundef 0) #6
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 45, i32 noundef 0) #6
  %vbase = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %33 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack = load i32, ptr %vbase, align 4
  %34 = inttoptr i32 %.unpack to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %34, i32 8130
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 103) #6, !srcloc !51
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 57, i32 noundef 24) #6
  %35 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack83 = load i32, ptr %vbase, align 4
  %36 = inttoptr i32 %.unpack83 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %add.ptr.i86 = getelementptr i8, ptr %36, i32 7744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 16777216) #6, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 53687000) #6
  %38 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %38)
  %.unpack84 = load i32, ptr %vbase, align 4
  %39 = inttoptr i32 %.unpack84 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %add.ptr.i87 = getelementptr i8, ptr %39, i32 7744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 0) #6, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 53687000) #6
  %41 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %41)
  %.unpack85 = load i32, ptr %vbase, align 4
  %42 = inttoptr i32 %.unpack85 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %add.ptr.i88 = getelementptr i8, ptr %42, i32 7172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 8388608) #6, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 2147480) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @Ti3026_reset(ptr noundef %minfo) #0 align 64 {
entry:
  %lin.i.i.i = alloca i32, align 4
  %lfeed.i.i.i = alloca i32, align 4
  %lpost.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %features.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23
  %0 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 110000, ptr %features.i, align 4
  %ref_freq.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 1
  %1 = ptrtoint ptr %ref_freq.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 114545, ptr %ref_freq.i, align 4
  %feed_div_min.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 2
  %2 = ptrtoint ptr %feed_div_min.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %feed_div_min.i, align 4
  %feed_div_max.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 3
  %3 = ptrtoint ptr %feed_div_max.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 24, ptr %feed_div_max.i, align 4
  %in_div_min.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 4
  %4 = ptrtoint ptr %in_div_min.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %in_div_min.i, align 4
  %in_div_max.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 5
  %5 = ptrtoint ptr %in_div_max.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 63, ptr %in_div_max.i, align 4
  %post_shift_max.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23, i32 0, i32 6
  %6 = ptrtoint ptr %post_shift_max.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %post_shift_max.i, align 4
  %noinit.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 5
  %7 = ptrtoint ptr %noinit.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %noinit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ti3026_ramdac_init.exit_crit_edge

entry.ti3026_ramdac_init.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti3026_ramdac_init.exit

if.end.i:                                         ; preds = %entry
  %max_pixel_clock.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 20
  %9 = ptrtoint ptr %max_pixel_clock.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_pixel_clock.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lin.i.i.i) #6
  %11 = ptrtoint ptr %lin.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %lin.i.i.i, align 4, !annotation !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfeed.i.i.i) #6
  %12 = ptrtoint ptr %lfeed.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %lfeed.i.i.i, align 4, !annotation !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lpost.i.i.i) #6
  %13 = ptrtoint ptr %lpost.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %lpost.i.i.i, align 4, !annotation !54
  %call.i.i.i.i = call i32 @matroxfb_PLL_calcclock(ptr noundef %features.i, i32 noundef 60000, i32 noundef %10, ptr noundef nonnull %lin.i.i.i, ptr noundef nonnull %lfeed.i.i.i, ptr noundef nonnull %lpost.i.i.i) #6
  %14 = ptrtoint ptr %lpost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lpost.i.i.i, align 4
  %shr.i.i.i = lshr i32 %call.i.i.i.i, %15
  %16 = ptrtoint ptr %lin.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lin.i.i.i, align 4
  %sub.i.i.i = sub i32 64, %17
  %18 = ptrtoint ptr %lfeed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lfeed.i.i.i, align 4
  %sub1.i.i.i = sub i32 64, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lpost.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfeed.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lin.i.i.i) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 44, i32 noundef 252) #6
  %call1.i.i = call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 45) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 44, i32 noundef 253) #6
  %call2.i.i = call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 45) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 44, i32 noundef 254) #6
  %call3.i.i = call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 45) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 44, i32 noundef 254) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 45, i32 noundef 0) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 44, i32 noundef 252) #6
  %or.i.i = or i32 %sub.i.i.i, 192
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 45, i32 noundef %or.i.i) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 45, i32 noundef %sub1.i.i.i) #6
  %or4.i.i = or i32 %15, 176
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 45, i32 noundef %or4.i.i) #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end.i
  %tmout.07.i.i = phi i32 [ 500000, %if.end.i ], [ %dec.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %call5.i.i = call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 45) #6
  %and.i.i = and i32 %call5.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i, label %for.body.i.i.if.end10.i.i_crit_edge

for.body.i.i.if.end10.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 2147480) #6
  %dec.i.i = add nsw i32 %tmout.07.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.critedge.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

do.end.critedge.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %do.end.critedge.i.i, %for.body.i.i.if.end10.i.i_crit_edge
  %call11.i.i = call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 57) #6
  %and12.i.i = and i32 %call11.i.i, 231
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 57, i32 noundef %and12.i.i) #6
  %or14.i.i = or i32 %and12.i.i, 8
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 57, i32 noundef %or14.i.i) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 44, i32 noundef 251) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 46, i32 noundef 0) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 44, i32 noundef 243) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 46, i32 noundef %or.i.i) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 46, i32 noundef %sub1.i.i.i) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 46, i32 noundef %or4.i.i) #6
  br label %for.body19.i.i

for.body19.i.i:                                   ; preds = %if.end24.i.i.for.body19.i.i_crit_edge, %if.end10.i.i
  %tmout.18.i.i = phi i32 [ 500000, %if.end10.i.i ], [ %dec26.i.i, %if.end24.i.i.for.body19.i.i_crit_edge ]
  %call20.i.i = call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 46) #6
  %and21.i.i = and i32 %call20.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end24.i.i, label %for.body19.i.i.if.end35.i.i_crit_edge

for.body19.i.i.if.end35.i.i_crit_edge:            ; preds = %for.body19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i.i

if.end24.i.i:                                     ; preds = %for.body19.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 2147480) #6
  %dec26.i.i = add nsw i32 %tmout.18.i.i, -1
  %tobool18.not.i.i = icmp eq i32 %dec26.i.i, 0
  br i1 %tobool18.not.i.i, label %do.end32.critedge.i.i, label %if.end24.i.i.for.body19.i.i_crit_edge

if.end24.i.i.for.body19.i.i_crit_edge:            ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body19.i.i

do.end32.critedge.i.i:                            ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call34.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %do.end32.critedge.i.i, %for.body19.i.i.if.end35.i.i_crit_edge
  %mul.i.i = mul i32 %shr.i.i.i, 333
  %shl.i.i = shl i32 10000, %15
  %div.i.i = udiv i32 %mul.i.i, %shl.i.i
  %milleniumII.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 28
  %22 = ptrtoint ptr %milleniumII.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %milleniumII.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool36.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool36.not.i.i, label %if.else.i.i, label %if.then37.i.i

if.then37.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %div.i.i, -128
  %div382.i.i = lshr i32 %sub.i.i, 8
  %24 = call i32 @llvm.umin.i32(i32 %div382.i.i, i32 15) #6
  br label %if.end46.i.i

if.else.i.i:                                      ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub41.i.i = add i32 %div.i.i, -64
  %div421.i.i = lshr i32 %sub41.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %sub41.i.i)
  %cmp43.i.i = icmp ugt i32 %sub41.i.i, 2047
  %spec.store.select78.i.i = select i1 %cmp43.i.i, i32 0, i32 %div421.i.i
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.else.i.i, %if.then37.i.i
  %rfhcnt.0.i.i = phi i32 [ %24, %if.then37.i.i ], [ %spec.store.select78.i.i, %if.else.i.i ]
  %hw.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8
  %25 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw.i.i, align 4
  %and47.i.i = and i32 %26, -983041
  %shl48.i.i = shl i32 %rfhcnt.0.i.i, 16
  %or49.i.i = or i32 %and47.i.i, %shl48.i.i
  store i32 %or49.i.i, ptr %hw.i.i, align 4
  %pcidev.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 10
  %27 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcidev.i.i, align 4
  %call54.i.i = call i32 @pci_write_config_dword(ptr noundef %28, i32 noundef 64, i32 noundef %or49.i.i) #6
  %or56.i.i = or i32 %and12.i.i, 16
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 57, i32 noundef %or56.i.i) #6
  %or58.i.i = or i32 %call11.i.i, 24
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 57, i32 noundef %or58.i.i) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 44, i32 noundef 254) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 45, i32 noundef 0) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 44, i32 noundef 252) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 45, i32 noundef %call1.i.i) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 45, i32 noundef %call2.i.i) #6
  call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 45, i32 noundef %call3.i.i) #6
  br label %for.body61.i.i

for.body61.i.i:                                   ; preds = %if.end66.i.i.for.body61.i.i_crit_edge, %if.end46.i.i
  %tmout.29.i.i = phi i32 [ 500000, %if.end46.i.i ], [ %dec68.i.i, %if.end66.i.i.for.body61.i.i_crit_edge ]
  %call62.i.i = call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 45) #6
  %and63.i.i = and i32 %call62.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i.i)
  %tobool64.not.i.i = icmp eq i32 %and63.i.i, 0
  br i1 %tobool64.not.i.i, label %if.end66.i.i, label %for.body61.i.i.ti3026_ramdac_init.exit_crit_edge

for.body61.i.i.ti3026_ramdac_init.exit_crit_edge: ; preds = %for.body61.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti3026_ramdac_init.exit

if.end66.i.i:                                     ; preds = %for.body61.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 2147480) #6
  %dec68.i.i = add nsw i32 %tmout.29.i.i, -1
  %tobool60.not.i.i = icmp eq i32 %dec68.i.i, 0
  br i1 %tobool60.not.i.i, label %do.end74.critedge.i.i, label %if.end66.i.i.for.body61.i.i_crit_edge

if.end66.i.i.for.body61.i.i_crit_edge:            ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body61.i.i

do.end74.critedge.i.i:                            ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call76.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  br label %ti3026_ramdac_init.exit

ti3026_ramdac_init.exit:                          ; preds = %do.end74.critedge.i.i, %for.body61.i.i.ti3026_ramdac_init.exit_crit_edge, %entry.ti3026_ramdac_init.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @Ti3026_init(ptr noundef %minfo, ptr noundef %m) #0 align 64 {
entry:
  %lin.i.i = alloca i32, align 4
  %lfeed.i.i = alloca i32, align 4
  %lpost.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %interleave = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 26
  %0 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interleave, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %conv = select i1 %tobool.not, i8 3, i8 4
  %hw1 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8
  %DACreg = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2
  %2 = call ptr @memcpy(ptr %DACreg, ptr @MGADACbpp32, i32 21)
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %minfo, i32 0, i32 6, i32 6
  %3 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bits_per_pixel, align 4
  %5 = add i32 %4, -4
  %6 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 30)
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
    i32 3, label %sw.bb27
    i32 5, label %sw.bb42
    i32 7, label %sw.bb52
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %DACreg to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 6, ptr %DACreg, align 2
  %arrayidx4 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -128, ptr %arrayidx4, align 1
  %10 = or i8 %conv, 64
  %arrayidx8 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx8, align 2
  %arrayidx10 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 3
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 53, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 6
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 12, ptr %arrayidx12, align 2
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %DACreg to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 6, ptr %DACreg, align 2
  %arrayidx17 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 1
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -128, ptr %arrayidx17, align 1
  %16 = or i8 %conv, 72
  %arrayidx22 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 2
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx22, align 2
  %arrayidx24 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 3
  %18 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 37, ptr %arrayidx24, align 1
  %arrayidx26 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 6
  %19 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 12, ptr %arrayidx26, align 2
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %length = getelementptr inbounds %struct.fb_info, ptr %minfo, i32 0, i32 6, i32 9, i32 1
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %cmp = icmp eq i32 %21, 5
  %conv32 = select i1 %cmp, i8 4, i8 5
  %arrayidx34 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 1
  %22 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv32, ptr %arrayidx34, align 1
  %23 = or i8 %conv, 80
  %arrayidx39 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 2
  %24 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx39, align 2
  %arrayidx41 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 3
  %25 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 21, ptr %arrayidx41, align 1
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx44 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 1
  %26 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 22, ptr %arrayidx44, align 1
  %27 = or i8 %conv, 88
  %arrayidx49 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 2
  %28 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx49, align 2
  %arrayidx51 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 3
  %29 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 37, ptr %arrayidx51, align 1
  br label %sw.epilog

sw.bb52:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %30 = or i8 %conv, 88
  %arrayidx57 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 2
  %31 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx57, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb52, %sw.bb42, %sw.bb27, %sw.bb13, %sw.bb
  %call = tail call i32 @matroxfb_vgaHWinit(ptr noundef %minfo, ptr noundef %m) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool58.not = icmp eq i32 %call, 0
  br i1 %tobool58.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %MiscOutReg = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 3
  %32 = ptrtoint ptr %MiscOutReg to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -53, ptr %MiscOutReg, align 2
  %sync = getelementptr inbounds %struct.my_timming, ptr %m, i32 0, i32 11
  %33 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sync, align 4
  %and = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  br i1 %tobool59.not, label %if.end.if.end66_crit_edge, label %if.then60

if.end.if.end66_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then60:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx62 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 5
  %35 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx62, align 1
  %37 = or i8 %36, 1
  store i8 %37, ptr %arrayidx62, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.then60, %if.end.if.end66_crit_edge
  %38 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sync, align 4
  %and68 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end66.if.end76_crit_edge, label %if.then70

if.end66.if.end76_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx72 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 5
  %40 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx72, align 1
  %42 = or i8 %41, 2
  store i8 %42, ptr %arrayidx72, align 1
  br label %if.end76

if.end76:                                         ; preds = %if.then70, %if.end66.if.end76_crit_edge
  %43 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sync, align 4
  %and78 = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end76.if.end86_crit_edge, label %if.then80

if.end76.if.end86_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx82 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 5
  %45 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx82, align 1
  %47 = or i8 %46, 32
  store i8 %47, ptr %arrayidx82, align 1
  br label %if.end86

if.end86:                                         ; preds = %if.then80, %if.end76.if.end86_crit_edge
  %len = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 18, i32 2
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %49)
  %cmp87 = icmp ult i32 %49, 4194304
  br i1 %cmp87, label %if.end86.if.end105.sink.split_crit_edge, label %if.else

if.end86.if.end105.sink.split_crit_edge:          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105.sink.split

if.else:                                          ; preds = %if.end86
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %49)
  %cmp96.not = icmp eq i32 %49, 4194304
  br i1 %cmp96.not, label %if.else.if.end105_crit_edge, label %if.else.if.end105.sink.split_crit_edge

if.else.if.end105.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105.sink.split

if.else.if.end105_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

if.end105.sink.split:                             ; preds = %if.else.if.end105.sink.split_crit_edge, %if.end86.if.end105.sink.split_crit_edge
  %.sink178 = phi i8 [ 8, %if.end86.if.end105.sink.split_crit_edge ], [ 16, %if.else.if.end105.sink.split_crit_edge ]
  %arrayidx90 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 3
  %50 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx90, align 1
  %52 = or i8 %51, %.sink178
  store i8 %52, ptr %arrayidx90, align 1
  br label %if.end105

if.end105:                                        ; preds = %if.end105.sink.split, %if.else.if.end105_crit_edge
  %interlaced = getelementptr inbounds %struct.my_timming, ptr %m, i32 0, i32 13
  %53 = ptrtoint ptr %interlaced to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %interlaced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool106.not = icmp eq i32 %54, 0
  br i1 %tobool106.not, label %if.end105.if.end113_crit_edge, label %if.then107

if.end105.if.end113_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

if.then107:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx109 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 20
  %55 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx109, align 2
  %57 = or i8 %56, 32
  store i8 %57, ptr %arrayidx109, align 2
  br label %if.end113

if.end113:                                        ; preds = %if.then107, %if.end105.if.end113_crit_edge
  %HTotal = getelementptr inbounds %struct.my_timming, ptr %m, i32 0, i32 6
  %58 = ptrtoint ptr %HTotal to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %HTotal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535, i32 %59)
  %cmp114 = icmp ugt i32 %59, 1535
  br i1 %cmp114, label %if.then116, label %if.end113.if.end122_crit_edge

if.end113.if.end122_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end122

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx118 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 20
  %60 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx118, align 2
  %62 = or i8 %61, 16
  store i8 %62, ptr %arrayidx118, align 2
  br label %if.end122

if.end122:                                        ; preds = %if.then116, %if.end113.if.end122_crit_edge
  %63 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hw1, align 4
  %and123 = and i32 %64, -4097
  store i32 %and123, ptr %hw1, align 4
  %65 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %interleave, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool125.not = icmp eq i32 %66, 0
  br i1 %tobool125.not, label %if.end122.if.end129_crit_edge, label %if.then126

if.end122.if.end129_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129

if.then126:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  %or128 = or i32 %64, 4096
  %67 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or128, ptr %hw1, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %if.end122.if.end129_crit_edge
  %68 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %m, align 4
  %max_pixel_clock.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 20
  %70 = ptrtoint ptr %max_pixel_clock.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_pixel_clock.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lin.i.i) #6
  %72 = ptrtoint ptr %lin.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %lin.i.i, align 4, !annotation !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfeed.i.i) #6
  %73 = ptrtoint ptr %lfeed.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %lfeed.i.i, align 4, !annotation !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lpost.i.i) #6
  %74 = ptrtoint ptr %lpost.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %lpost.i.i, align 4, !annotation !54
  %features.i.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 23
  %call.i.i.i = call i32 @matroxfb_PLL_calcclock(ptr noundef %features.i.i.i, i32 noundef %69, i32 noundef %71, ptr noundef nonnull %lin.i.i, ptr noundef nonnull %lfeed.i.i, ptr noundef nonnull %lpost.i.i) #6
  %75 = ptrtoint ptr %lpost.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %lpost.i.i, align 4
  %shr.i.i = lshr i32 %call.i.i.i, %76
  %77 = ptrtoint ptr %lin.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %lin.i.i, align 4
  %79 = ptrtoint ptr %lfeed.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %lfeed.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lpost.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfeed.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lin.i.i) #6
  %81 = trunc i32 %78 to i8
  %82 = sub i8 0, %81
  %conv.i = or i8 %82, -64
  %DACclk.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1
  %83 = ptrtoint ptr %DACclk.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv.i, ptr %DACclk.i, align 4
  %84 = trunc i32 %80 to i8
  %conv2.i = sub i8 64, %84
  %arrayidx4.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 1
  %85 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv2.i, ptr %arrayidx4.i, align 1
  %86 = trunc i32 %76 to i8
  %conv6.i = or i8 %86, -80
  %arrayidx8.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 2
  %87 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv6.i, ptr %arrayidx8.i, align 2
  %curr.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 7
  %88 = ptrtoint ptr %curr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %curr.i, align 4
  %90 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %91)
  %cmp.i = icmp eq i32 %91, 24
  %..i = select i1 %cmp.i, i32 3, i32 4
  %.3.i = select i1 %cmp.i, i32 96, i32 128
  %loopin.0.i = udiv i32 %.3.i, %89
  %mul.i = mul nuw nsw i32 %loopin.0.i, 110000
  %mul11.i = mul i32 %..i, %shr.i.i
  %div12.i = udiv i32 %mul.i, %mul11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div12.i)
  %cmp13.i = icmp ult i32 %div12.i, 2
  br i1 %cmp13.i, label %if.end129.if.end28.i_crit_edge, label %if.else16.i

if.end129.if.end28.i_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.else16.i:                                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div12.i)
  %cmp17.i = icmp ult i32 %div12.i, 4
  br i1 %cmp17.i, label %if.else16.i.if.end28.i_crit_edge, label %if.else20.i

if.else16.i.if.end28.i_crit_edge:                 ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.else20.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div12.i)
  %cmp21.i = icmp ult i32 %div12.i, 8
  br i1 %cmp21.i, label %if.else20.i.if.end28.i_crit_edge, label %if.else24.i

if.else20.i.if.end28.i_crit_edge:                 ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.else24.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #8
  %div251.i = lshr i32 %div12.i, 4
  %92 = trunc i32 %div251.i to i8
  %phi.cast.i = or i8 %92, 48
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else24.i, %if.else20.i.if.end28.i_crit_edge, %if.else16.i.if.end28.i_crit_edge, %if.end129.if.end28.i_crit_edge
  %looppost.0.i = phi i8 [ 3, %if.else24.i ], [ 0, %if.end129.if.end28.i_crit_edge ], [ 1, %if.else16.i.if.end28.i_crit_edge ], [ 2, %if.else20.i.if.end28.i_crit_edge ]
  %loopdiv.0.i = phi i8 [ %phi.cast.i, %if.else24.i ], [ 48, %if.end129.if.end28.i_crit_edge ], [ 48, %if.else16.i.if.end28.i_crit_edge ], [ 48, %if.else20.i.if.end28.i_crit_edge ]
  %93 = trunc i32 %loopin.0.i to i8
  %94 = sub i8 1, %93
  %conv36.i = or i8 %94, -64
  %arrayidx38.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 3
  %95 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv36.i, ptr %arrayidx38.i, align 1
  %96 = trunc i32 %..i to i8
  %97 = sub nuw nsw i8 65, %96
  br i1 %cmp.i, label %if.then34.i, label %if.else84.i

if.then34.i:                                      ; preds = %if.end28.i
  %conv41.i = or i8 %97, -128
  %arrayidx43.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 4
  %98 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv41.i, ptr %arrayidx43.i, align 4
  %accel.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 9
  %99 = ptrtoint ptr %accel.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %accel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %100)
  %cmp45.i = icmp ugt i8 %100, 32
  %101 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %interleave, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i = icmp eq i32 %102, 0
  br i1 %cmp45.i, label %if.then47.i, label %if.else59.i

if.then47.i:                                      ; preds = %if.then34.i
  br i1 %tobool.not.i, label %if.then47.i.if.end71.sink.split.sink.split.i_crit_edge, label %if.then47.i.if.end71.sink.split.i_crit_edge

if.then47.i.if.end71.sink.split.i_crit_edge:      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.sink.split.i

if.then47.i.if.end71.sink.split.sink.split.i_crit_edge: ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.sink.split.sink.split.i

if.else59.i:                                      ; preds = %if.then34.i
  br i1 %tobool.not.i, label %if.else63.i, label %if.else59.i.if.end71.i_crit_edge

if.else59.i.if.end71.i_crit_edge:                 ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.i

if.else63.i:                                      ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #8
  %103 = xor i8 %97, 64
  br label %if.end71.sink.split.sink.split.i

if.end71.sink.split.sink.split.i:                 ; preds = %if.else63.i, %if.then47.i.if.end71.sink.split.sink.split.i_crit_edge
  %.sink4.i = phi i8 [ %103, %if.else63.i ], [ %97, %if.then47.i.if.end71.sink.split.sink.split.i_crit_edge ]
  %.sink.ph.i = phi i8 [ 6, %if.else63.i ], [ 8, %if.then47.i.if.end71.sink.split.sink.split.i_crit_edge ]
  %104 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %.sink4.i, ptr %arrayidx43.i, align 4
  br label %if.end71.sink.split.i

if.end71.sink.split.i:                            ; preds = %if.end71.sink.split.sink.split.i, %if.then47.i.if.end71.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 6, %if.then47.i.if.end71.sink.split.i_crit_edge ], [ %.sink.ph.i, %if.end71.sink.split.sink.split.i ]
  %105 = ptrtoint ptr %DACreg to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %.sink.i, ptr %DACreg, align 2
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.end71.sink.split.i, %if.else59.i.if.end71.i_crit_edge
  %conv73.i = or i8 %looppost.0.i, -8
  %arrayidx75.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 5
  %106 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv73.i, ptr %arrayidx75.i, align 1
  %mga_24bpp_fix.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 1
  %107 = ptrtoint ptr %mga_24bpp_fix.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %mga_24bpp_fix.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool76.not.i = icmp eq i32 %108, 0
  br i1 %tobool76.not.i, label %if.end71.i.Ti3026_setpclk.exit_crit_edge, label %if.then77.i

if.end71.i.Ti3026_setpclk.exit_crit_edge:         ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %Ti3026_setpclk.exit

if.then77.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #8
  %109 = and i8 %conv73.i, -69
  %110 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %arrayidx75.i, align 1
  br label %Ti3026_setpclk.exit

if.else84.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx94.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 4
  %111 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %97, ptr %arrayidx94.i, align 4
  %conv96.i = or i8 %looppost.0.i, -16
  %arrayidx98.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 5
  %112 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv96.i, ptr %arrayidx98.i, align 1
  br label %Ti3026_setpclk.exit

Ti3026_setpclk.exit:                              ; preds = %if.else84.i, %if.then77.i, %if.end71.i.Ti3026_setpclk.exit_crit_edge
  %arrayidx104.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 18
  %113 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %loopdiv.0.i, ptr %arrayidx104.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %Ti3026_setpclk.exit, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %Ti3026_setpclk.exit ], [ 1, %entry.cleanup_crit_edge ], [ 1, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @Ti3026_restore(ptr noundef %minfo) #0 align 64 {
entry:
  %progdac = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %progdac) #6
  %0 = getelementptr inbounds [6 x i8], ptr %progdac, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %progdac, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %progdac, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %progdac, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %progdac, i32 0, i32 5
  %hw1 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8
  %pcidev = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 10
  %5 = call ptr @memset(ptr %progdac, i32 255, i32 6)
  %6 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcidev, align 4
  %8 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw1, align 4
  %call = tail call i32 @pci_write_config_dword(ptr noundef %7, i32 noundef 64, i32 noundef %9) #6
  tail call void @matroxfb_vgaHWrestore(ptr noundef %minfo) #6
  %panpos = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 11, i32 3
  %10 = ptrtoint ptr %panpos to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %panpos, align 4
  %vbase = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %arrayidx = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 0
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %12 to i16
  %13 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack = load i32, ptr %vbase, align 4
  %14 = inttoptr i32 %.unpack to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %14, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %conv) #6, !srcloc !56
  %arrayidx.1 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %16 to i16
  %shl.1 = shl nuw i16 %conv.1, 8
  %or.1 = or i16 %shl.1, 1
  %17 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack.1 = load i32, ptr %vbase, align 4
  %18 = inttoptr i32 %.unpack.1 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %19 = tail call i16 @llvm.bswap.i16(i16 %or.1) #6
  %add.ptr.i.1 = getelementptr i8, ptr %18, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.1, i16 %19) #6, !srcloc !56
  %arrayidx.2 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %21 to i16
  %shl.2 = shl nuw i16 %conv.2, 8
  %or.2 = or i16 %shl.2, 2
  %22 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack.2 = load i32, ptr %vbase, align 4
  %23 = inttoptr i32 %.unpack.2 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %24 = tail call i16 @llvm.bswap.i16(i16 %or.2) #6
  %add.ptr.i.2 = getelementptr i8, ptr %23, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.2, i16 %24) #6, !srcloc !56
  %arrayidx.3 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 3
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %26 to i16
  %shl.3 = shl nuw i16 %conv.3, 8
  %or.3 = or i16 %shl.3, 3
  %27 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack.3 = load i32, ptr %vbase, align 4
  %28 = inttoptr i32 %.unpack.3 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %29 = tail call i16 @llvm.bswap.i16(i16 %or.3) #6
  %add.ptr.i.3 = getelementptr i8, ptr %28, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.3, i16 %29) #6, !srcloc !56
  %arrayidx.4 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 4
  %30 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %31 to i16
  %shl.4 = shl nuw i16 %conv.4, 8
  %or.4 = or i16 %shl.4, 4
  %32 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack.4 = load i32, ptr %vbase, align 4
  %33 = inttoptr i32 %.unpack.4 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %34 = tail call i16 @llvm.bswap.i16(i16 %or.4) #6
  %add.ptr.i.4 = getelementptr i8, ptr %33, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.4, i16 %34) #6, !srcloc !56
  %arrayidx.5 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 6, i32 5
  %35 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %36 to i16
  %shl.5 = shl nuw i16 %conv.5, 8
  %or.5 = or i16 %shl.5, 5
  %37 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack.5 = load i32, ptr %vbase, align 4
  %38 = inttoptr i32 %.unpack.5 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %39 = tail call i16 @llvm.bswap.i16(i16 %or.5) #6
  %add.ptr.i.5 = getelementptr i8, ptr %38, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.5, i16 %39) #6, !srcloc !56
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %entry
  %i.1168 = phi i32 [ %inc12, %for.body6.for.body6_crit_edge ], [ 0, %entry ]
  %arrayidx7 = getelementptr [21 x i8], ptr @DACseq, i32 0, i32 %i.1168
  %40 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %41 to i32
  %arrayidx9 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 %i.1168
  %42 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %43 to i32
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef %conv8, i32 noundef %conv10) #6
  %inc12 = add nuw nsw i32 %i.1168, 1
  %exitcond.not = icmp eq i32 %inc12, 21
  br i1 %exitcond.not, label %for.end13, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6

for.end13:                                        ; preds = %for.body6
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 44, i32 noundef 0) #6
  %call14 = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 45) #6
  %conv15 = trunc i32 %call14 to i8
  %44 = ptrtoint ptr %progdac to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv15, ptr %progdac, align 1
  %call17 = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 47) #6
  %conv18 = trunc i32 %call17 to i8
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv18, ptr %2, align 1
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 44, i32 noundef 21) #6
  %call20 = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 45) #6
  %conv21 = trunc i32 %call20 to i8
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv21, ptr %0, align 1
  %call23 = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 47) #6
  %conv24 = trunc i32 %call23 to i8
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv24, ptr %3, align 1
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 44, i32 noundef 42) #6
  %call26 = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 45) #6
  %conv27 = trunc i32 %call26 to i8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv27, ptr %1, align 1
  %call29 = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 47) #6
  %conv30 = trunc i32 %call29 to i8
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv30, ptr %4, align 1
  %DACclk = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %DACclk, ptr noundef nonnull dereferenceable(6) %progdac, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %for.end13.if.end112_crit_edge, label %if.then

for.end13.if.end112_crit_edge:                    ; preds = %for.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.then:                                          ; preds = %for.end13
  %arrayidx35 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 3
  %50 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %51 to i32
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 26, i32 noundef %conv36) #6
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 44, i32 noundef 42) #6
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 47, i32 noundef 0) #6
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 45, i32 noundef 0) #6
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 44, i32 noundef 0) #6
  %52 = ptrtoint ptr %DACclk to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %DACclk, align 1
  %conv43 = zext i8 %53 to i32
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 45, i32 noundef %conv43) #6
  %arrayidx42.1 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 1
  %54 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx42.1, align 1
  %conv43.1 = zext i8 %55 to i32
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 45, i32 noundef %conv43.1) #6
  %arrayidx42.2 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 2
  %56 = ptrtoint ptr %arrayidx42.2 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx42.2, align 1
  %conv43.2 = zext i8 %57 to i32
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 45, i32 noundef %conv43.2) #6
  %MiscOutReg = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 3
  %58 = ptrtoint ptr %MiscOutReg to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %MiscOutReg, align 2
  %60 = and i8 %59, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool48.not = icmp eq i8 %60, 0
  br i1 %tobool48.not, label %if.then.if.end64_crit_edge, label %if.then49

if.then.if.end64_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then49:                                        ; preds = %if.then
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 44, i32 noundef 63) #6
  br label %for.body52

for.body52:                                       ; preds = %if.end.for.body52_crit_edge, %if.then49
  %tmout.0170 = phi i32 [ 500000, %if.then49 ], [ %dec, %if.end.for.body52_crit_edge ]
  %call53 = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 45) #6
  %and54 = and i32 %call53, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end, label %for.body52.if.end64_crit_edge

for.body52.if.end64_crit_edge:                    ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.end:                                           ; preds = %for.body52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 2147480) #6
  %dec = add nsw i32 %tmout.0170, -1
  %tobool51.not = icmp eq i32 %dec, 0
  br i1 %tobool51.not, label %do.end.critedge, label %if.end.for.body52_crit_edge

if.end.for.body52_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body52

do.end.critedge:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  br label %if.end64

if.end64:                                         ; preds = %do.end.critedge, %for.body52.if.end64_crit_edge, %if.then.if.end64_crit_edge
  %arrayidx66 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 2, i32 18
  %62 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx66, align 2
  %conv67 = zext i8 %63 to i32
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 57, i32 noundef %conv67) #6
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 44, i32 noundef 0) #6
  %arrayidx73 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 3
  %64 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %65 to i32
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 47, i32 noundef %conv74) #6
  %arrayidx73.1 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 4
  %66 = ptrtoint ptr %arrayidx73.1 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx73.1, align 1
  %conv74.1 = zext i8 %67 to i32
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 47, i32 noundef %conv74.1) #6
  %arrayidx73.2 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 8, i32 1, i32 5
  %68 = ptrtoint ptr %arrayidx73.2 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx73.2, align 1
  %conv74.2 = zext i8 %69 to i32
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 47, i32 noundef %conv74.2) #6
  %70 = ptrtoint ptr %MiscOutReg to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %MiscOutReg, align 2
  %72 = and i8 %71, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool81.not = icmp eq i8 %72, 0
  br i1 %tobool81.not, label %if.end64.if.end112_crit_edge, label %land.lhs.true

if.end64.if.end112_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

land.lhs.true:                                    ; preds = %if.end64
  %73 = ptrtoint ptr %arrayidx73.2 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx73.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp86 = icmp slt i8 %74, 0
  br i1 %cmp86, label %if.then88, label %land.lhs.true.if.end112_crit_edge

land.lhs.true.if.end112_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.then88:                                        ; preds = %land.lhs.true
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 44, i32 noundef 63) #6
  br label %for.body92

for.body92:                                       ; preds = %if.end97.for.body92_crit_edge, %if.then88
  %tmout89.0172 = phi i32 [ 500000, %if.then88 ], [ %dec99, %if.end97.for.body92_crit_edge ]
  %call93 = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 47) #6
  %and94 = and i32 %call93, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end97, label %for.body92.if.end112_crit_edge

for.body92.if.end112_crit_edge:                   ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.end97:                                         ; preds = %for.body92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 2147480) #6
  %dec99 = add nsw i32 %tmout89.0172, -1
  %tobool91.not = icmp eq i32 %dec99, 0
  br i1 %tobool91.not, label %do.end105.critedge, label %if.end97.for.body92_crit_edge

if.end97.for.body92_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body92

do.end105.critedge:                               ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %if.end112

if.end112:                                        ; preds = %do.end105.critedge, %for.body92.if.end112_crit_edge, %land.lhs.true.if.end112_crit_edge, %if.end64.if.end112_crit_edge, %for.end13.if.end112_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %progdac) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matroxfb_DAC_in(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @matroxfb_DAC_out(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matroxfb_PLL_calcclock(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matroxfb_vgaHWinit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @matroxfb_vgaHWrestore(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @matrox_millennium, !1, !"matrox_millennium", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/matrox/matroxfb_Ti3026.c", i32 741, i32 22}
!2 = !{ptr @__ksymtab_matrox_millennium, !3, !"__ksymtab_matrox_millennium", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/matrox/matroxfb_Ti3026.c", i32 747, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/matrox/matroxfb_Ti3026.c", i32 749, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @Ti3026_preinit.vxres_mill2, !8, !"vxres_mill2", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/matrox/matroxfb_Ti3026.c", i32 684, i32 19}
!9 = !{ptr @Ti3026_preinit.vxres_mill1, !10, !"vxres_mill1", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/matrox/matroxfb_Ti3026.c", i32 687, i32 19}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/matrox/matroxfb_Ti3026.c", i32 679, i32 11}
!13 = !{ptr @ti3026_output, !14, !"ti3026_output", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/matrox/matroxfb_Ti3026.c", i32 678, i32 29}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/matrox/matroxfb_Ti3026.c", i32 479, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ti3026_setMCLK._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @ti3026_setMCLK._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/matrox/matroxfb_Ti3026.c", i32 503, i32 3}
!23 = !{ptr @ti3026_setMCLK._entry.4, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @ti3026_setMCLK._entry_ptr.6, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/matrox/matroxfb_Ti3026.c", i32 539, i32 3}
!27 = !{ptr @ti3026_setMCLK._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ti3026_setMCLK._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @MGADACbpp32, !30, !"MGADACbpp32", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/matrox/matroxfb_Ti3026.c", i32 270, i32 28}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/matrox/matroxfb_Ti3026.c", i32 630, i32 5}
!33 = !{ptr @Ti3026_restore._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @Ti3026_restore._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/matrox/matroxfb_Ti3026.c", i32 652, i32 5}
!37 = !{ptr @Ti3026_restore._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @Ti3026_restore._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @DACseq, !40, !"DACseq", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/matrox/matroxfb_Ti3026.c", i32 248, i32 28}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2156256173}
!51 = !{i64 6255023}
!52 = !{i64 2156257818}
!53 = !{i64 6255220}
!54 = !{!"auto-init"}
!55 = !{i64 2156256609}
!56 = !{i64 6254600}
