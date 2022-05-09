; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/wmt_ge_rops.c_pt.bc'
source_filename = "../drivers/video/fbdev/wmt_ge_rops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wmt_ge_fillrect\22, \22a\22\09"
module asm "\09.weak\09__crc_wmt_ge_fillrect\09\09\09\09"
module asm "\09.long\09__crc_wmt_ge_fillrect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wmt_ge_fillrect:\09\09\09\09\09"
module asm "\09.asciz \09\22wmt_ge_fillrect\22\09\09\09\09\09"
module asm "__kstrtabns_wmt_ge_fillrect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wmt_ge_copyarea\22, \22a\22\09"
module asm "\09.weak\09__crc_wmt_ge_copyarea\09\09\09\09"
module asm "\09.long\09__crc_wmt_ge_copyarea\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wmt_ge_copyarea:\09\09\09\09\09"
module asm "\09.asciz \09\22wmt_ge_copyarea\22\09\09\09\09\09"
module asm "__kstrtabns_wmt_ge_copyarea:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wmt_ge_sync\22, \22a\22\09"
module asm "\09.weak\09__crc_wmt_ge_sync\09\09\09\09"
module asm "\09.long\09__crc_wmt_ge_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wmt_ge_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22wmt_ge_sync\22\09\09\09\09\09"
module asm "__kstrtabns_wmt_ge_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@regbase = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_wmt_ge_fillrect = external dso_local constant [0 x i8], align 1
@__kstrtabns_wmt_ge_fillrect = external dso_local constant [0 x i8], align 1
@__ksymtab_wmt_ge_fillrect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wmt_ge_fillrect to i32), ptr @__kstrtab_wmt_ge_fillrect, ptr @__kstrtabns_wmt_ge_fillrect }, section "___ksymtab_gpl+wmt_ge_fillrect", align 4
@__kstrtab_wmt_ge_copyarea = external dso_local constant [0 x i8], align 1
@__kstrtabns_wmt_ge_copyarea = external dso_local constant [0 x i8], align 1
@__ksymtab_wmt_ge_copyarea = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wmt_ge_copyarea to i32), ptr @__kstrtab_wmt_ge_copyarea, ptr @__kstrtabns_wmt_ge_copyarea }, section "___ksymtab_gpl+wmt_ge_copyarea", align 4
@__kstrtab_wmt_ge_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_wmt_ge_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_wmt_ge_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wmt_ge_sync to i32), ptr @__kstrtab_wmt_ge_sync, ptr @__kstrtabns_wmt_ge_sync }, section "___ksymtab_gpl+wmt_ge_sync", align 4
@__initcall__kmod_wmt_ge_rops__301_168_wmt_ge_rops_driver_init6 = internal global ptr @wmt_ge_rops_driver_init, section ".initcall6.init", align 4
@wmt_ge_rops_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wmt_ge_rops_probe, ptr @wmt_ge_rops_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wmt_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wmt_ge_rops_driver_exit = internal global ptr @wmt_ge_rops_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [54 x i8] c"wmt_ge_rops.author=Alexey Charkov <alchark@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [93 x i8] c"wmt_ge_rops.description=Accelerators for raster operations using WonderMedia Graphics Engine\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [49 x i8] c"wmt_ge_rops.file=drivers/video/fbdev/wmt_ge_rops\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [27 x i8] c"wmt_ge_rops.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/video/fbdev/core/fb_draw.h\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"pixel_to_pat(): unsupported pixelformat %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wmt_ge_rops\00", [20 x i8] zeroinitializer }, align 32
@wmt_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wm,prizm-ge-rops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@wmt_ge_rops_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 126, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no I/O memory resource defined\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wmt_ge_rops_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/video/fbdev/wmt_ge_rops.c\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wmt_ge_rops_probe._entry_ptr = internal global ptr @wmt_ge_rops_probe._entry, section ".printk_index", align 4
@wmt_ge_rops_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 138, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to map I/O memory\0A\00", [38 x i8] zeroinitializer }, align 32
@wmt_ge_rops_probe._entry_ptr.10 = internal global ptr @wmt_ge_rops_probe._entry.8, section ".printk_index", align 4
@wmt_ge_rops_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016Enabled support for WMT GE raster acceleration\0A\00", [46 x i8] zeroinitializer }, align 32
@wmt_ge_rops_probe._entry_ptr.13 = internal global ptr @wmt_ge_rops_probe._entry.11, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.14 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 4, i64 8, i64 12, i64 16, i64 24, i64 32]
@___asan_gen_.15 = private unnamed_addr constant [8 x i8] c"regbase\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 40, i32 22 }
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c"wmt_ge_rops_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 159, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant [38 x i8] c"../drivers/video/fbdev/core/fb_draw.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 72, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 163, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [11 x i8] c"wmt_dt_ids\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 154, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 126, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 138, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [37 x i8] c"../drivers/video/fbdev/wmt_ge_rops.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 143, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_wmt_ge_rops_driver_exit, ptr @__initcall__kmod_wmt_ge_rops__301_168_wmt_ge_rops_driver_init6, ptr @__ksymtab_wmt_ge_copyarea, ptr @__ksymtab_wmt_ge_fillrect, ptr @__ksymtab_wmt_ge_sync, ptr @wmt_ge_rops_driver_exit, ptr @wmt_ge_rops_probe._entry, ptr @wmt_ge_rops_probe._entry.11, ptr @wmt_ge_rops_probe._entry.8, ptr @wmt_ge_rops_probe._entry_ptr, ptr @wmt_ge_rops_probe._entry_ptr.10, ptr @wmt_ge_rops_probe._entry_ptr.13, ptr @regbase, ptr @wmt_ge_rops_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @wmt_dt_ids, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regbase to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_ge_rops_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_ge_rops_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_ge_rops_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_ge_rops_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wmt_ge_fillrect(ptr noundef %p, ptr nocapture noundef readonly %rect) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 28
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %visual = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 7, i32 5
  %2 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %visual, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.else [
    i32 2, label %if.end.if.then5_crit_edge
    i32 4, label %if.end.if.then5_crit_edge102
  ]

if.end.if.then5_crit_edge102:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %if.end.if.then5_crit_edge102
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 27
  %5 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pseudo_palette, align 4
  %color = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %7 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %color, align 4
  %arrayidx = getelementptr i32, ptr %6, i32 %8
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %color6 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %fg.0.in = phi ptr [ %arrayidx, %if.then5 ], [ %color6, %if.else ]
  %9 = ptrtoint ptr %fg.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %fg.0 = load i32, ptr %fg.0.in, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 6
  %10 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits_per_pixel, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %11, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb3.i
    i32 8, label %sw.bb5.i
    i32 12, label %sw.bb7.i
    i32 16, label %sw.bb9.i
    i32 24, label %sw.bb11.i
    i32 32, label %if.end7.pixel_to_pat.exit_crit_edge
  ]

if.end7.pixel_to_pat.exit_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %pixel_to_pat.exit

sw.bb.i:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i = sub i32 0, %fg.0
  br label %pixel_to_pat.exit

sw.bb1.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %mul2.i = mul i32 %fg.0, 1431655765
  br label %pixel_to_pat.exit

sw.bb3.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %mul4.i = mul i32 %fg.0, 286331153
  br label %pixel_to_pat.exit

sw.bb5.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %mul6.i = mul i32 %fg.0, 16843009
  br label %pixel_to_pat.exit

sw.bb7.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %mul8.i = mul i32 %fg.0, 16781313
  br label %pixel_to_pat.exit

sw.bb9.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %mul10.i = mul i32 %fg.0, 65537
  br label %pixel_to_pat.exit

sw.bb11.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %mul12.i = mul i32 %fg.0, 16777217
  br label %pixel_to_pat.exit

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 72, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %11) #5
  br label %pixel_to_pat.exit

pixel_to_pat.exit:                                ; preds = %do.end.i, %sw.bb11.i, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %sw.bb.i, %if.end7.pixel_to_pat.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %mul12.i, %sw.bb11.i ], [ %mul10.i, %sw.bb9.i ], [ %mul8.i, %sw.bb7.i ], [ %mul6.i, %sw.bb5.i ], [ %mul4.i, %sw.bb3.i ], [ %mul2.i, %sw.bb1.i ], [ %mul.i, %sw.bb.i ], [ %fg.0, %if.end7.pixel_to_pat.exit_crit_edge ]
  %fbops = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 20
  %13 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fbops, align 4
  %fb_sync = getelementptr inbounds %struct.fb_ops, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %fb_sync to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fb_sync, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %pixel_to_pat.exit.do.body_crit_edge, label %if.then8

pixel_to_pat.exit.do.body_crit_edge:              ; preds = %pixel_to_pat.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then8:                                         ; preds = %pixel_to_pat.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 %16(ptr noundef %p) #5
  br label %do.body

do.body:                                          ; preds = %if.then8, %pixel_to_pat.exit.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %18)
  %cmp15 = icmp eq i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %cmp18.not = icmp eq i32 %18, 8
  %phi.bo = select i1 %cmp18.not, i32 0, i32 16777216
  %cond19 = select i1 %cmp15, i32 50331648, i32 %phi.bo
  %19 = load ptr, ptr @regbase, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %cond19) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %21)
  %cmp25 = icmp eq i32 %21, 15
  %22 = select i1 %cmp25, i32 16777216, i32 0
  %23 = load ptr, ptr @regbase, align 4
  %add.ptr27 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %22) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %smem_start, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = load ptr, ptr @regbase, align 4
  %add.ptr32 = getelementptr i8, ptr %27, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %26) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 2
  %28 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xres_virtual, align 4
  %sub = add i32 %29, -1
  %30 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %31 = load ptr, ptr @regbase, align 4
  %add.ptr37 = getelementptr i8, ptr %31, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %30) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 3
  %32 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %yres_virtual, align 4
  %sub42 = add i32 %33, -1
  %34 = tail call i32 @llvm.bswap.i32(i32 %sub42)
  %35 = load ptr, ptr @regbase, align 4
  %add.ptr43 = getelementptr i8, ptr %35, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %34) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rect, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %39 = load ptr, ptr @regbase, align 4
  %add.ptr47 = getelementptr i8, ptr %39, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %38) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %40 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dy, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = load ptr, ptr @regbase, align 4
  %add.ptr51 = getelementptr i8, ptr %43, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %42) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %44 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %width, align 4
  %sub55 = add i32 %45, -1
  %46 = tail call i32 @llvm.bswap.i32(i32 %sub55)
  %47 = load ptr, ptr @regbase, align 4
  %add.ptr56 = getelementptr i8, ptr %47, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %46) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %48 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height, align 4
  %sub60 = add i32 %49, -1
  %50 = tail call i32 @llvm.bswap.i32(i32 %sub60)
  %51 = load ptr, ptr @regbase, align 4
  %add.ptr61 = getelementptr i8, ptr %51, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %50) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %52 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %53 = load ptr, ptr @regbase, align 4
  %add.ptr65 = getelementptr i8, ptr %53, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %52) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %54 = load ptr, ptr @regbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 16777216) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %rop = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 5
  %55 = ptrtoint ptr %rop to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp73 = icmp eq i32 %56, 1
  %cond74 = select i1 %cmp73, i32 1509949440, i32 -268435456
  %57 = load ptr, ptr @regbase, align 4
  %add.ptr75 = getelementptr i8, ptr %57, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %cond74) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %58 = load ptr, ptr @regbase, align 4
  %add.ptr79 = getelementptr i8, ptr %58, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 16777216) #5, !srcloc !53
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wmt_ge_copyarea(ptr noundef %p, ptr nocapture noundef readonly %area) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 28
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %fbops = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 20
  %2 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fbops, align 4
  %fb_sync = getelementptr inbounds %struct.fb_ops, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %fb_sync to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb_sync, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.then1

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %5(ptr noundef %p) #5
  br label %do.body

do.body:                                          ; preds = %if.then1, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 6
  %6 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp5 = icmp ugt i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp8 = icmp ugt i32 %7, 8
  %phi.bo = select i1 %cmp8, i32 16777216, i32 0
  %cond9 = select i1 %cmp5, i32 50331648, i32 %phi.bo
  %8 = load ptr, ptr @regbase, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %cond9) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %smem_start, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = load ptr, ptr @regbase, align 4
  %add.ptr12 = getelementptr i8, ptr %12, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %11) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xres_virtual, align 4
  %sub = add i32 %14, -1
  %15 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %16 = load ptr, ptr @regbase, align 4
  %add.ptr16 = getelementptr i8, ptr %16, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %15) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 3
  %17 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %yres_virtual, align 4
  %sub20 = add i32 %18, -1
  %19 = tail call i32 @llvm.bswap.i32(i32 %sub20)
  %20 = load ptr, ptr @regbase, align 4
  %add.ptr21 = getelementptr i8, ptr %20, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %19) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %sx = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %21 = ptrtoint ptr %sx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sx, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = load ptr, ptr @regbase, align 4
  %add.ptr24 = getelementptr i8, ptr %24, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %23) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %sy = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %25 = ptrtoint ptr %sy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sy, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = load ptr, ptr @regbase, align 4
  %add.ptr27 = getelementptr i8, ptr %28, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %27) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %29 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %width, align 4
  %sub30 = add i32 %30, -1
  %31 = tail call i32 @llvm.bswap.i32(i32 %sub30)
  %32 = load ptr, ptr @regbase, align 4
  %add.ptr31 = getelementptr i8, ptr %32, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %31) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %33 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height, align 4
  %sub34 = add i32 %34, -1
  %35 = tail call i32 @llvm.bswap.i32(i32 %sub34)
  %36 = load ptr, ptr @regbase, align 4
  %add.ptr35 = getelementptr i8, ptr %36, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %35) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %smem_start, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = load ptr, ptr @regbase, align 4
  %add.ptr40 = getelementptr i8, ptr %40, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %39) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %41 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %xres_virtual, align 4
  %sub45 = add i32 %42, -1
  %43 = tail call i32 @llvm.bswap.i32(i32 %sub45)
  %44 = load ptr, ptr @regbase, align 4
  %add.ptr46 = getelementptr i8, ptr %44, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %43) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %yres_virtual, align 4
  %sub51 = add i32 %46, -1
  %47 = tail call i32 @llvm.bswap.i32(i32 %sub51)
  %48 = load ptr, ptr @regbase, align 4
  %add.ptr52 = getelementptr i8, ptr %48, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %47) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %49 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %area, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = load ptr, ptr @regbase, align 4
  %add.ptr55 = getelementptr i8, ptr %52, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %51) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %dy = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %53 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dy, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %56 = load ptr, ptr @regbase, align 4
  %add.ptr58 = getelementptr i8, ptr %56, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %55) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %57 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %width, align 4
  %sub62 = add i32 %58, -1
  %59 = tail call i32 @llvm.bswap.i32(i32 %sub62)
  %60 = load ptr, ptr @regbase, align 4
  %add.ptr63 = getelementptr i8, ptr %60, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %59) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %61 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %height, align 4
  %sub67 = add i32 %62, -1
  %63 = tail call i32 @llvm.bswap.i32(i32 %sub67)
  %64 = load ptr, ptr @regbase, align 4
  %add.ptr68 = getelementptr i8, ptr %64, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %63) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %65 = load ptr, ptr @regbase, align 4
  %add.ptr71 = getelementptr i8, ptr %65, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 -872415232) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %66 = load ptr, ptr @regbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 16777216) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %67 = load ptr, ptr @regbase, align 4
  %add.ptr77 = getelementptr i8, ptr %67, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 16777216) #5, !srcloc !53
  br label %return

return:                                           ; preds = %do.body, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wmt_ge_sync(ptr nocapture readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @regbase, align 4
  %add.ptr13 = getelementptr i8, ptr %0, i32 248
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #5, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %2 = and i32 %1, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not14 = icmp eq i32 %2, 0
  br i1 %tobool.not14, label %entry.while.end.thread_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.thread

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %loops.015 = phi i32 [ %dec, %do.end.land.rhs_crit_edge ], [ 5000000, %entry.land.rhs_crit_edge ]
  %dec = add nsw i32 %loops.015, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %land.rhs.while.end.thread_crit_edge, label %do.end

land.rhs.while.end.thread_crit_edge:              ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.thread

do.end:                                           ; preds = %land.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !87
  %3 = load ptr, ptr @regbase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 248
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %5 = and i32 %4, 67108864
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %while.end.loopexit, label %do.end.land.rhs_crit_edge

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

while.end.loopexit:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %loops.015)
  %phi.cmp = icmp sgt i32 %loops.015, 1
  %phi.sel = select i1 %phi.cmp, i32 0, i32 -16
  br label %while.end.thread

while.end.thread:                                 ; preds = %while.end.loopexit, %land.rhs.while.end.thread_crit_edge, %entry.while.end.thread_crit_edge
  %6 = phi i32 [ 0, %entry.while.end.thread_crit_edge ], [ %phi.sel, %while.end.loopexit ], [ -16, %land.rhs.while.end.thread_crit_edge ]
  ret i32 %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_ge_rops_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wmt_ge_rops_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wmt_ge_rops_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @wmt_ge_rops_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_ge_rops_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @regbase, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end28, label %do.end15, !prof !88

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 132, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %2
  %add.i = add i32 %sub.i, %4
  %call30 = tail call ptr @ioremap(i32 noundef %2, i32 noundef %add.i) #5
  store ptr %call30, ptr @regbase, align 4
  %cmp31 = icmp eq ptr %call30, null
  br i1 %cmp31, label %do.end35, label %do.body38

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %dev36 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.9) #8
  br label %cleanup

do.body38:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %5 = load ptr, ptr @regbase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #5, !srcloc !53
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body38, %do.end35, %do.end15, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -16, %do.end15 ], [ -16, %do.end35 ], [ 0, %do.body38 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_ge_rops_remove(ptr nocapture noundef readnone %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @regbase, align 4
  tail call void @iounmap(ptr noundef %0) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__ksymtab_wmt_ge_fillrect, !1, !"__ksymtab_wmt_ge_fillrect", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/wmt_ge_rops.c", i32 76, i32 1}
!2 = !{ptr @__ksymtab_wmt_ge_copyarea, !3, !"__ksymtab_wmt_ge_copyarea", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/wmt_ge_rops.c", i32 109, i32 1}
!4 = !{ptr @__ksymtab_wmt_ge_sync, !5, !"__ksymtab_wmt_ge_sync", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/wmt_ge_rops.c", i32 118, i32 1}
!6 = !{ptr @__initcall__kmod_wmt_ge_rops__301_168_wmt_ge_rops_driver_init6, !7, !"__initcall__kmod_wmt_ge_rops__301_168_wmt_ge_rops_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/wmt_ge_rops.c", i32 168, i32 1}
!8 = !{ptr @__exitcall_wmt_ge_rops_driver_exit, !7, !"__exitcall_wmt_ge_rops_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author302, !10, !"__UNIQUE_ID_author302", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/wmt_ge_rops.c", i32 170, i32 1}
!11 = !{ptr @__UNIQUE_ID_description303, !12, !"__UNIQUE_ID_description303", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/wmt_ge_rops.c", i32 171, i32 1}
!13 = !{ptr @__UNIQUE_ID_file304, !14, !"__UNIQUE_ID_file304", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/wmt_ge_rops.c", i32 173, i32 1}
!15 = !{ptr @__UNIQUE_ID_license305, !14, !"__UNIQUE_ID_license305", i1 false, i1 false}
!16 = !{ptr @regbase, !17, !"regbase", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/wmt_ge_rops.c", i32 40, i32 22}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/core/fb_draw.h", i32 72, i32 3}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/wmt_ge_rops.c", i32 163, i32 11}
!23 = !{ptr @wmt_ge_rops_driver, !24, !"wmt_ge_rops_driver", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/wmt_ge_rops.c", i32 159, i32 31}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/wmt_ge_rops.c", i32 126, i32 3}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @wmt_ge_rops_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @wmt_ge_rops_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/wmt_ge_rops.c", i32 138, i32 3}
!35 = !{ptr @wmt_ge_rops_probe._entry.8, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @wmt_ge_rops_probe._entry_ptr.10, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/wmt_ge_rops.c", i32 143, i32 2}
!39 = !{ptr @wmt_ge_rops_probe._entry.11, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @wmt_ge_rops_probe._entry_ptr.13, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @wmt_dt_ids, !42, !"wmt_dt_ids", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/wmt_ge_rops.c", i32 154, i32 34}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2155844455}
!53 = !{i64 4717727}
!54 = !{i64 2155845097}
!55 = !{i64 2155845595}
!56 = !{i64 2155846045}
!57 = !{i64 2155846513}
!58 = !{i64 2155846966}
!59 = !{i64 2155847374}
!60 = !{i64 2155847789}
!61 = !{i64 2155848226}
!62 = !{i64 2155848653}
!63 = !{i64 2155849039}
!64 = !{i64 2155849448}
!65 = !{i64 2155849909}
!66 = !{i64 2155851810}
!67 = !{i64 2155852428}
!68 = !{i64 2155852878}
!69 = !{i64 2155853346}
!70 = !{i64 2155853799}
!71 = !{i64 2155854207}
!72 = !{i64 2155854622}
!73 = !{i64 2155855059}
!74 = !{i64 2155855500}
!75 = !{i64 2155855950}
!76 = !{i64 2155856418}
!77 = !{i64 2155856871}
!78 = !{i64 2155857279}
!79 = !{i64 2155857694}
!80 = !{i64 2155858131}
!81 = !{i64 2155858559}
!82 = !{i64 2155858948}
!83 = !{i64 2155859328}
!84 = !{i64 4718145}
!85 = !{i64 2155861418}
!86 = !{i64 2155861693}
!87 = !{i64 2155861535}
!88 = !{!"branch_weights", i32 2000, i32 1}
!89 = !{i64 2155867132}
