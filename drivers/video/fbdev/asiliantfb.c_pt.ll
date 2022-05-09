; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/asiliantfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/asiliantfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.chips_init_reg = type { i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.85, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }

@__initcall__kmod_asiliantfb__305_620_asiliantfb_init6 = internal global ptr @asiliantfb_init, section ".initcall6.init", align 4
@asiliantfb_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @asiliantfb_pci_tbl, ptr @asiliantfb_pci_init, ptr @asiliantfb_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file306 = internal constant [47 x i8] c"asiliantfb.file=drivers/video/fbdev/asiliantfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [23 x i8] c"asiliantfb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"asiliantfb\00", [21 x i8] zeroinitializer }, align 32
@asiliantfb_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4140, i32 192, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@asiliantfb_fix = internal constant { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"Asiliant 69000\00\00", i32 0, i32 2097152, i32 0, i32 0, i32 3, i16 0, i16 0, i16 0, i32 640, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@asiliantfb_var = internal constant { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 640, i32 480, i32 640, i32 480, i32 0, i32 0, i32 8, i32 0, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 39722, i32 48, i32 16, i32 33, i32 10, i32 96, i32 2, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@asiliantfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @asiliantfb_check_var, ptr @asiliantfb_set_par, ptr @asiliantfb_setcolreg, ptr null, ptr null, ptr null, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@init_asiliant._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013C&T 69000 fb failed to alloc cmap memory\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init_asiliant\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/video/fbdev/asiliantfb.c\00", [63 x i8] zeroinitializer }, align 32
@init_asiliant._entry_ptr = internal global ptr @init_asiliant._entry, section ".printk_index", align 4
@init_asiliant._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013C&T 69000 framebuffer failed to register\0A\00", [52 x i8] zeroinitializer }, align 32
@init_asiliant._entry_ptr.6 = internal global ptr @init_asiliant._entry.4, section ".printk_index", align 4
@init_asiliant._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016fb%d: Asiliant 69000 frame buffer (%dK RAM detected)\0A\00", [40 x i8] zeroinitializer }, align 32
@init_asiliant._entry_ptr.9 = internal global ptr @init_asiliant._entry.7, section ".printk_index", align 4
@asiliantfb_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013asiliantfb dotclock must be between 3.125 and 220MHz\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"asiliantfb_check_var\00", [43 x i8] zeroinitializer }, align 32
@asiliantfb_check_var._entry_ptr = internal global ptr @asiliantfb_check_var._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@chips_init_xr = internal constant { [17 x %struct.chips_init_reg], [62 x i8] } { [17 x %struct.chips_init_reg] [%struct.chips_init_reg { i8 -50, i8 0 }, %struct.chips_init_reg { i8 -52, i8 -56 }, %struct.chips_init_reg { i8 -51, i8 18 }, %struct.chips_init_reg { i8 -50, i8 -112 }, %struct.chips_init_reg { i8 -60, i8 -47 }, %struct.chips_init_reg { i8 -59, i8 118 }, %struct.chips_init_reg { i8 -57, i8 32 }, %struct.chips_init_reg { i8 -49, i8 6 }, %struct.chips_init_reg { i8 9, i8 1 }, %struct.chips_init_reg { i8 10, i8 2 }, %struct.chips_init_reg { i8 11, i8 1 }, %struct.chips_init_reg { i8 64, i8 3 }, %struct.chips_init_reg { i8 -128, i8 -126 }, %struct.chips_init_reg { i8 -127, i8 18 }, %struct.chips_init_reg { i8 -126, i8 8 }, %struct.chips_init_reg { i8 -48, i8 15 }, %struct.chips_init_reg { i8 -47, i8 1 }], [62 x i8] zeroinitializer }, align 32
@chips_init_fr = internal constant { [35 x %struct.chips_init_reg], [58 x i8] } { [35 x %struct.chips_init_reg] [%struct.chips_init_reg { i8 1, i8 2 }, %struct.chips_init_reg { i8 3, i8 8 }, %struct.chips_init_reg { i8 8, i8 -52 }, %struct.chips_init_reg { i8 10, i8 8 }, %struct.chips_init_reg { i8 24, i8 0 }, %struct.chips_init_reg { i8 30, i8 -128 }, %struct.chips_init_reg { i8 64, i8 -125 }, %struct.chips_init_reg { i8 65, i8 0 }, %struct.chips_init_reg { i8 72, i8 19 }, %struct.chips_init_reg { i8 77, i8 96 }, %struct.chips_init_reg { i8 78, i8 15 }, %struct.chips_init_reg { i8 11, i8 1 }, %struct.chips_init_reg { i8 33, i8 81 }, %struct.chips_init_reg { i8 34, i8 29 }, %struct.chips_init_reg { i8 35, i8 95 }, %struct.chips_init_reg { i8 32, i8 79 }, %struct.chips_init_reg { i8 52, i8 0 }, %struct.chips_init_reg { i8 36, i8 81 }, %struct.chips_init_reg { i8 37, i8 0 }, %struct.chips_init_reg { i8 39, i8 11 }, %struct.chips_init_reg { i8 38, i8 0 }, %struct.chips_init_reg { i8 55, i8 -128 }, %struct.chips_init_reg { i8 51, i8 11 }, %struct.chips_init_reg { i8 53, i8 17 }, %struct.chips_init_reg { i8 54, i8 2 }, %struct.chips_init_reg { i8 49, i8 -22 }, %struct.chips_init_reg { i8 50, i8 12 }, %struct.chips_init_reg { i8 48, i8 -33 }, %struct.chips_init_reg { i8 16, i8 12 }, %struct.chips_init_reg { i8 17, i8 -32 }, %struct.chips_init_reg { i8 18, i8 80 }, %struct.chips_init_reg { i8 19, i8 0 }, %struct.chips_init_reg { i8 22, i8 3 }, %struct.chips_init_reg { i8 23, i8 -67 }, %struct.chips_init_reg { i8 26, i8 0 }], [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 11, i64 16]
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"asiliantfb_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 605, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 614, i32 21 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"asiliantfb_pci_tbl\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 598, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"asiliantfb_fix\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 480, i32 39 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"asiliantfb_var\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 489, i32 39 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"asiliantfb_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 98, i32 28 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 522, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 528, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 533, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 240, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"chips_init_xr\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 434, i32 30 }
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"chips_init_fr\00", align 1
@___asan_gen_.70 = private constant [36 x i8] c"../drivers/video/fbdev/asiliantfb.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 392, i32 30 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__initcall__kmod_asiliantfb__305_620_asiliantfb_init6, ptr @asiliantfb_check_var._entry, ptr @asiliantfb_check_var._entry_ptr, ptr @asiliantfb_exit, ptr @init_asiliant._entry, ptr @init_asiliant._entry.4, ptr @init_asiliant._entry.7, ptr @init_asiliant._entry_ptr, ptr @init_asiliant._entry_ptr.6, ptr @init_asiliant._entry_ptr.9, ptr @asiliantfb_driver, ptr @.str, ptr @asiliantfb_pci_tbl, ptr @asiliantfb_fix, ptr @asiliantfb_var, ptr @asiliantfb_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @chips_init_xr, ptr @chips_init_fr], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asiliantfb_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asiliantfb_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asiliantfb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asiliantfb_var to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asiliantfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_asiliant._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_asiliant._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_asiliant._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asiliantfb_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chips_init_xr to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chips_init_fr to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @asiliantfb_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @asiliantfb_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @asiliantfb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @asiliantfb_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asiliantfb_pci_init(ptr noundef %dp, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.pci_dev, ptr %dp, i32 0, i32 47, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dp, i32 0, i32 47
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %dp, i32 0, i32 47, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5 = icmp eq i32 %5, 0
  %sub = sub i32 1, %3
  %add = add i32 %sub, %5
  %cond = select i1 %cmp5, i32 0, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12 = icmp eq i32 %3, 0
  br i1 %cmp12, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %cond, ptr noundef nonnull @.str, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end14.cleanup_crit_edge, label %if.end16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %dp, i32 0, i32 44
  %call17 = tail call ptr @framebuffer_alloc(i32 noundef 64, ptr noundef %dev) #5
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %cond) #5
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %par = getelementptr inbounds %struct.fb_info, ptr %call17, i32 0, i32 30
  %6 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par, align 4
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %call17, i32 0, i32 27
  %8 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %pseudo_palette, align 4
  store ptr null, ptr %par, align 4
  %call22 = tail call ptr @ioremap(i32 noundef %3, i32 noundef 8388608) #5
  %9 = getelementptr inbounds %struct.fb_info, ptr %call17, i32 0, i32 25
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call22, ptr %9, align 4
  %cmp23 = icmp eq ptr %call22, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %cond) #5
  tail call void @framebuffer_release(ptr noundef nonnull %call17) #5
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %call26 = tail call i32 @pci_write_config_dword(ptr noundef %dp, i32 noundef 4, i32 noundef 41943171) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %9, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 4196228
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 3) #5, !srcloc !58
  %fix.i = getelementptr inbounds %struct.fb_info, ptr %call17, i32 0, i32 7
  %13 = call ptr @memcpy(ptr %fix.i, ptr @asiliantfb_fix, i32 68)
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %call17, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %3, ptr %smem_start.i, align 4
  %var.i = getelementptr inbounds %struct.fb_info, ptr %call17, i32 0, i32 6
  %15 = call ptr @memcpy(ptr %var.i, ptr @asiliantfb_var, i32 160)
  %fbops.i = getelementptr inbounds %struct.fb_info, ptr %call17, i32 0, i32 20
  %16 = ptrtoint ptr %fbops.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @asiliantfb_ops, ptr %fbops.i, align 4
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %call17, i32 0, i32 2
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %flags.i, align 4
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %call17, i32 0, i32 12
  %call.i = tail call i32 @fb_alloc_cmap(ptr noundef %cmap.i, i32 noundef 256, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %if.then29

if.end.i:                                         ; preds = %if.end25
  %call3.i = tail call i32 @register_framebuffer(ptr noundef nonnull %call17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.end7.i, label %do.end14.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  tail call void @fb_dealloc_cmap(ptr noundef %cmap.i) #5
  br label %if.then29

do.end14.i:                                       ; preds = %if.end.i
  %node.i = getelementptr inbounds %struct.fb_info, ptr %call17, i32 0, i32 1
  %18 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %node.i, align 4
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %call17, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %smem_len.i, align 4
  %div36.i = lshr i32 %21, 10
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %19, i32 noundef %div36.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %9, align 4
  %add.ptr21.i = getelementptr i8, ptr %23, i32 4196236
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21.i, i8 -1) #5, !srcloc !58
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.end14.i
  %i.099.i.i = phi i32 [ 0, %do.end14.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [17 x %struct.chips_init_reg], ptr @chips_init_xr, i32 0, i32 %i.099.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.i, align 1
  %data.i.i = getelementptr [17 x %struct.chips_init_reg], ptr @chips_init_xr, i32 0, i32 %i.099.i.i, i32 1
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %9, align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %29, i32 4196268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i.i.i, i8 %25) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %9, align 4
  %add.ptr6.i.i.i = getelementptr i8, ptr %31, i32 4196269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i.i.i, i8 %27) #5, !srcloc !58
  %inc.i.i = add nuw nsw i32 %i.099.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 17
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %9, align 4
  %add.ptr2.i85.i.i = getelementptr i8, ptr %33, i32 4196268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i85.i.i, i8 -127) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %9, align 4
  %add.ptr6.i86.i.i = getelementptr i8, ptr %35, i32 4196269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i86.i.i, i8 18) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %9, align 4
  %add.ptr2.i87.i.i = getelementptr i8, ptr %37, i32 4196268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i87.i.i, i8 -126) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %9, align 4
  %add.ptr6.i88.i.i = getelementptr i8, ptr %39, i32 4196269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i88.i.i, i8 8) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %9, align 4
  %add.ptr2.i89.i.i = getelementptr i8, ptr %41, i32 4196268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i89.i.i, i8 32) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %9, align 4
  %add.ptr6.i90.i.i = getelementptr i8, ptr %43, i32 4196269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i90.i.i, i8 0) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %9, align 4
  %add.ptr2.i91.i.i = getelementptr i8, ptr %45, i32 4196232
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i91.i.i, i8 0) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %9, align 4
  %add.ptr6.i92.i.i = getelementptr i8, ptr %47, i32 4196233
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i92.i.i, i8 3) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %9, align 4
  %add.ptr2.i91.1.i.i = getelementptr i8, ptr %49, i32 4196232
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i91.1.i.i, i8 1) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %9, align 4
  %add.ptr6.i92.1.i.i = getelementptr i8, ptr %51, i32 4196233
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i92.1.i.i, i8 1) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %9, align 4
  %add.ptr2.i91.2.i.i = getelementptr i8, ptr %53, i32 4196232
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i91.2.i.i, i8 2) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %9, align 4
  %add.ptr6.i92.2.i.i = getelementptr i8, ptr %55, i32 4196233
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i92.2.i.i, i8 15) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %56 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %9, align 4
  %add.ptr2.i91.3.i.i = getelementptr i8, ptr %57, i32 4196232
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i91.3.i.i, i8 4) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %58 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %9, align 4
  %add.ptr6.i92.3.i.i = getelementptr i8, ptr %59, i32 4196233
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i92.3.i.i, i8 14) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %9, align 4
  %add.ptr2.i93.i.i = getelementptr i8, ptr %61, i32 4196252
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i93.i.i, i8 3) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %9, align 4
  %add.ptr6.i94.i.i = getelementptr i8, ptr %63, i32 4196253
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i94.i.i, i8 0) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %64 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %9, align 4
  %add.ptr2.i93.1.i.i = getelementptr i8, ptr %65, i32 4196252
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i93.1.i.i, i8 5) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %66 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %9, align 4
  %add.ptr6.i94.1.i.i = getelementptr i8, ptr %67, i32 4196253
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i94.1.i.i, i8 0) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %68 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %9, align 4
  %add.ptr2.i93.2.i.i = getelementptr i8, ptr %69, i32 4196252
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i93.2.i.i, i8 6) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %70 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %9, align 4
  %add.ptr6.i94.2.i.i = getelementptr i8, ptr %71, i32 4196253
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i94.2.i.i, i8 1) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %72 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %9, align 4
  %add.ptr2.i93.3.i.i = getelementptr i8, ptr %73, i32 4196252
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i93.3.i.i, i8 8) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %74 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %9, align 4
  %add.ptr6.i94.3.i.i = getelementptr i8, ptr %75, i32 4196253
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i94.3.i.i, i8 0) #5, !srcloc !58
  %76 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %9, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %77, i32 4196276
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i.i.i) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %79 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %9, align 4
  %add.ptr5.i.i.i = getelementptr i8, ptr %80, i32 4196224
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i.i, i8 16) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %9, align 4
  %add.ptr9.i.i.i = getelementptr i8, ptr %82, i32 4196224
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.i.i, i8 1) #5, !srcloc !58
  %83 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %9, align 4
  %add.ptr1.i.1.i.i = getelementptr i8, ptr %84, i32 4196276
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i.1.i.i) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %86 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %9, align 4
  %add.ptr5.i.1.i.i = getelementptr i8, ptr %87, i32 4196224
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.1.i.i, i8 17) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %88 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %9, align 4
  %add.ptr9.i.1.i.i = getelementptr i8, ptr %89, i32 4196224
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.1.i.i, i8 0) #5, !srcloc !58
  %90 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %9, align 4
  %add.ptr1.i.2.i.i = getelementptr i8, ptr %91, i32 4196276
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i.2.i.i) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %93 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %9, align 4
  %add.ptr5.i.2.i.i = getelementptr i8, ptr %94, i32 4196224
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.2.i.i, i8 18) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %95 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %9, align 4
  %add.ptr9.i.2.i.i = getelementptr i8, ptr %96, i32 4196224
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.2.i.i, i8 15) #5, !srcloc !58
  %97 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %9, align 4
  %add.ptr1.i.3.i.i = getelementptr i8, ptr %98, i32 4196276
  %99 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i.3.i.i) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %100 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %9, align 4
  %add.ptr5.i.3.i.i = getelementptr i8, ptr %101, i32 4196224
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.3.i.i, i8 19) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %102 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %9, align 4
  %add.ptr9.i.3.i.i = getelementptr i8, ptr %103, i32 4196224
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.3.i.i, i8 0) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %104 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %9, align 4
  %add.ptr32.i.i = getelementptr i8, ptr %105, i32 4196224
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32.i.i, i8 32) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %106 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %9, align 4
  %add.ptr2.i95.i.i = getelementptr i8, ptr %107, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i95.i.i, i8 12) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %108 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %9, align 4
  %add.ptr6.i96.i.i = getelementptr i8, ptr %109, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i96.i.i, i8 0) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %110 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %9, align 4
  %add.ptr2.i95.1.i.i = getelementptr i8, ptr %111, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i95.1.i.i, i8 13) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %112 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %9, align 4
  %add.ptr6.i96.1.i.i = getelementptr i8, ptr %113, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i96.1.i.i, i8 0) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %114 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %9, align 4
  %add.ptr2.i95.2.i.i = getelementptr i8, ptr %115, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i95.2.i.i, i8 64) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %116 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %9, align 4
  %add.ptr6.i96.2.i.i = getelementptr i8, ptr %117, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i96.2.i.i, i8 0) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %118 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %9, align 4
  %add.ptr2.i95.3.i.i = getelementptr i8, ptr %119, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i95.3.i.i, i8 65) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %120 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %9, align 4
  %add.ptr6.i96.3.i.i = getelementptr i8, ptr %121, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i96.3.i.i, i8 0) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %122 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %9, align 4
  %add.ptr2.i95.4.i.i = getelementptr i8, ptr %123, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i95.4.i.i, i8 20) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %124 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %9, align 4
  %add.ptr6.i96.4.i.i = getelementptr i8, ptr %125, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i96.4.i.i, i8 0) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %126 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %9, align 4
  %add.ptr2.i95.5.i.i = getelementptr i8, ptr %127, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i95.5.i.i, i8 23) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %128 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %9, align 4
  %add.ptr6.i96.5.i.i = getelementptr i8, ptr %129, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i96.5.i.i, i8 -29) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %130 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %9, align 4
  %add.ptr2.i95.6.i.i = getelementptr i8, ptr %131, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i95.6.i.i, i8 112) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %132 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %9, align 4
  %add.ptr6.i96.6.i.i = getelementptr i8, ptr %133, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i96.6.i.i, i8 0) #5, !srcloc !58
  br label %for.body45.i.i

for.body45.i.i:                                   ; preds = %for.body45.i.i.for.body45.i.i_crit_edge, %for.end.i.i
  %i.5104.i.i = phi i32 [ %inc51.i.i, %for.body45.i.i.for.body45.i.i_crit_edge ], [ 0, %for.end.i.i ]
  %arrayidx46.i.i = getelementptr [35 x %struct.chips_init_reg], ptr @chips_init_fr, i32 0, i32 %i.5104.i.i
  %134 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx46.i.i, align 1
  %data49.i.i = getelementptr [35 x %struct.chips_init_reg], ptr @chips_init_fr, i32 0, i32 %i.5104.i.i, i32 1
  %136 = ptrtoint ptr %data49.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %data49.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %138 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %9, align 4
  %add.ptr2.i97.i.i = getelementptr i8, ptr %139, i32 4196256
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i97.i.i, i8 %135) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %140 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %9, align 4
  %add.ptr6.i98.i.i = getelementptr i8, ptr %141, i32 4196257
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i98.i.i, i8 %137) #5, !srcloc !58
  %inc51.i.i = add nuw nsw i32 %i.5104.i.i, 1
  %exitcond109.not.i.i = icmp eq i32 %inc51.i.i, 35
  br i1 %exitcond109.not.i.i, label %if.end30, label %for.body45.i.i.for.body45.i.i_crit_edge

for.body45.i.i.for.body45.i.i_crit_edge:          ; preds = %for.body45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body45.i.i

if.then29:                                        ; preds = %do.end7.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call3.i, %do.end7.i ], [ %call.i, %do.end.i ]
  %142 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %9, align 4
  tail call void @iounmap(ptr noundef %143) #5
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %cond) #5
  tail call void @framebuffer_release(ptr noundef nonnull %call17) #5
  br label %cleanup

if.end30:                                         ; preds = %for.body45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dp, i32 0, i32 44, i32 8
  %144 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call17, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then29, %if.then24, %if.then19, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then24 ], [ %retval.0.i.ph, %if.then29 ], [ 0, %if.end30 ], [ -12, %if.then19 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -16, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asiliantfb_remove(ptr nocapture noundef readonly %dp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dp, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_framebuffer(ptr noundef %1) #5
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #5
  %2 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  tail call void @iounmap(ptr noundef %4) #5
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dp, i32 0, i32 47
  %5 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %dp, i32 0, i32 47, i32 0, i32 1
  %7 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  %sub = sub i32 1, %6
  %add = add i32 %sub, %8
  %cond = select i1 %cmp, i32 0, i32 %add
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %6, i32 noundef %cond) #5
  tail call void @framebuffer_release(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asiliantfb_check_var(ptr noundef %var, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %0 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixclock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %.frozen = freeze i32 %1
  %div = udiv i32 1000000, %.frozen
  %2 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 1000000, %2
  %mul = mul i32 %div, 1000000
  %mul3 = mul i32 %rem.decomposed, 1000000
  %div5 = udiv i32 %mul3, %1
  %add = add i32 %mul, -220000001
  %3 = add i32 %add, %div5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -216875001, i32 %3)
  %4 = icmp ult i32 %3, -216875001
  br i1 %4, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %5 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %var, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %7 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %xres_virtual, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %8 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %10 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %yres_virtual, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %11 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bits_per_pixel, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.end8.cleanup_crit_edge [
    i32 24, label %if.then10
    i32 16, label %if.then20
    i32 8, label %if.then39
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %14 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %red, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %15 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %green, align 4
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %16 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %blue, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %length, align 4
  %length15 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %length15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %length15, align 4
  %length17 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %length17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %length17, align 4
  br label %cleanup

if.then20:                                        ; preds = %if.end8
  %red21 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %20 = ptrtoint ptr %red21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %red21, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %21, label %if.then20.cleanup_crit_edge [
    i32 11, label %if.then20.sw.epilog_crit_edge
    i32 10, label %sw.bb25
  ]

if.then20.sw.epilog_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb25:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %if.then20.sw.epilog_crit_edge
  %.sink = phi i32 [ 5, %sw.bb25 ], [ 6, %if.then20.sw.epilog_crit_edge ]
  %length27 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %length27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %length27, align 4
  %green28 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %24 = ptrtoint ptr %green28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %green28, align 4
  %blue30 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %25 = ptrtoint ptr %blue30 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %blue30, align 4
  %length33 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %length33 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5, ptr %length33, align 4
  %length35 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %length35 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 5, ptr %length35, align 4
  br label %cleanup

if.then39:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %blue40 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %28 = ptrtoint ptr %blue40 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %blue40, align 4
  %green42 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %29 = ptrtoint ptr %green42 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %green42, align 4
  %red44 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %30 = ptrtoint ptr %red44 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %red44, align 4
  %length47 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %length47 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %length47, align 4
  %length49 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %length49 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %length49, align 4
  %length51 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %length51 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %length51, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %sw.epilog, %if.then20.cleanup_crit_edge, %if.then10, %if.end8.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then20.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %sw.epilog ], [ 0, %if.then39 ], [ 0, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asiliantfb_set_par(ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 17
  %0 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixclock, align 4
  %.frozen = freeze i32 %1
  %div.i = udiv i32 1000000, %.frozen
  %2 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 1000000, %2
  %mul2.i = mul i32 %div.i, 1000000
  %mul3.i = mul i32 %rem.i.decomposed, 1000000
  %div4.i = udiv i32 %mul3.i, %1
  %add.i = add i32 %div4.i, %mul2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %add.i)
  %cmp112.i = icmp ult i32 %add.i, 100000000
  br i1 %cmp112.i, label %entry.while.body.i_crit_edge, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %divisor.0114.i = phi i8 [ %add5.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %Ftarget.0113.i = phi i32 [ %shl.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %add5.i = add i8 %divisor.0114.i, 16
  %shl.i = shl nuw nsw i32 %Ftarget.0113.i, 1
  %cmp.i = icmp ult i32 %Ftarget.0113.i, 50000000
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %Ftarget.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %shl.i, %while.body.i.while.end.i_crit_edge ]
  %divisor.0.lcssa.i = phi i8 [ 0, %entry.while.end.i_crit_edge ], [ %add5.i, %while.body.i.while.end.i_crit_edge ]
  %Ftarget.0.lcssa.i.frozen = freeze i32 %Ftarget.0.lcssa.i
  %div7.i = udiv i32 %Ftarget.0.lcssa.i.frozen, 14318180
  %3 = mul i32 %div7.i, 14318180
  %rem8.i.decomposed = sub i32 %Ftarget.0.lcssa.i.frozen, %3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end56.i.for.body.i_crit_edge, %while.end.i
  %best_n.0120.i = phi i32 [ -1, %while.end.i ], [ %best_n.3.i, %if.end56.i.for.body.i_crit_edge ]
  %best_m.0119.i = phi i32 [ -1, %while.end.i ], [ %best_m.3.i, %if.end56.i.for.body.i_crit_edge ]
  %best_error.0118.i = phi i32 [ -1, %while.end.i ], [ %best_error.3.i, %if.end56.i.for.body.i_crit_edge ]
  %n.0116.i = phi i32 [ 3, %while.end.i ], [ %inc.i, %if.end56.i.for.body.i_crit_edge ]
  %mul11.i = mul nuw nsw i32 %n.0116.i, %div7.i
  %mul12.i = mul i32 %n.0116.i, %rem8.i.decomposed
  %div13.i = udiv i32 %mul12.i, 14318180
  %add14.i = add nuw i32 %div13.i, %mul11.i
  %4 = add i32 %add14.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %4)
  %5 = icmp ult i32 %4, 255
  br i1 %5, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul19.i = mul i32 %n.0116.i, %Ftarget.0.lcssa.i
  %mul20.i = mul nuw i32 %add14.i, 14318180
  call void @__sanitizer_cov_trace_cmp4(i32 %mul19.i, i32 %mul20.i)
  %cmp21.not.i = icmp ult i32 %mul19.i, %mul20.i
  %sub.i = sub i32 %mul19.i, %mul20.i
  %sub27.i = sub i32 %mul20.i, %mul19.i
  %cond.i = select i1 %cmp21.not.i, i32 %sub27.i, i32 %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %best_error.0118.i)
  %cmp28.i = icmp ult i32 %cond.i, %best_error.0118.i
  %6 = tail call i32 @llvm.umin.i32(i32 %cond.i, i32 %best_error.0118.i) #5
  %best_m.1.i = select i1 %cmp28.i, i32 %add14.i, i32 %best_m.0119.i
  %best_n.1.i = select i1 %cmp28.i, i32 %n.0116.i, i32 %best_n.0120.i
  br label %if.end56.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1029, i32 %add14.i)
  %cmp31.i = icmp ult i32 %add14.i, 1029
  br i1 %cmp31.i, label %if.then33.i, label %if.else.i.if.end56.i_crit_edge

if.else.i.if.end56.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

if.then33.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul35.i = mul i32 %n.0116.i, %Ftarget.0.lcssa.i
  %and.i = and i32 %add14.i, -4
  %mul36.i = mul i32 %and.i, 14318180
  call void @__sanitizer_cov_trace_cmp4(i32 %mul35.i, i32 %mul36.i)
  %cmp37.not.i = icmp ult i32 %mul35.i, %mul36.i
  %sub43.i = sub i32 %mul35.i, %mul36.i
  %sub48.i = sub i32 %mul36.i, %mul35.i
  %cond50.i = select i1 %cmp37.not.i, i32 %sub48.i, i32 %sub43.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond50.i, i32 %best_error.0118.i)
  %cmp51.i = icmp ult i32 %cond50.i, %best_error.0118.i
  %7 = tail call i32 @llvm.umin.i32(i32 %cond50.i, i32 %best_error.0118.i) #5
  %best_m.2.i = select i1 %cmp51.i, i32 %add14.i, i32 %best_m.0119.i
  %best_n.2.i = select i1 %cmp51.i, i32 %n.0116.i, i32 %best_n.0120.i
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then33.i, %if.else.i.if.end56.i_crit_edge, %if.then.i
  %best_error.3.i = phi i32 [ %6, %if.then.i ], [ %7, %if.then33.i ], [ %best_error.0118.i, %if.else.i.if.end56.i_crit_edge ]
  %best_m.3.i = phi i32 [ %best_m.1.i, %if.then.i ], [ %best_m.2.i, %if.then33.i ], [ %best_m.0119.i, %if.else.i.if.end56.i_crit_edge ]
  %best_n.3.i = phi i32 [ %best_n.1.i, %if.then.i ], [ %best_n.2.i, %if.then33.i ], [ %best_n.0120.i, %if.else.i.if.end56.i_crit_edge ]
  %inc.i = add nuw nsw i32 %n.0116.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 258
  br i1 %exitcond.not.i, label %asiliant_calc_dclk2.exit, label %if.end56.i.for.body.i_crit_edge

if.end56.i.for.body.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

asiliant_calc_dclk2.exit:                         ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %best_m.3.i)
  %cmp57.i = icmp ugt i32 %best_m.3.i, 257
  %shr.i = lshr i32 %best_m.3.i, 2
  %8 = or i8 %divisor.0.lcssa.i, 4
  %best_m.4.i = select i1 %cmp57.i, i32 %shr.i, i32 %best_m.3.i
  %divisor.1.i = select i1 %cmp57.i, i8 %divisor.0.lcssa.i, i8 %8
  %9 = trunc i32 %best_m.4.i to i8
  %conv65.i = add i8 %9, -2
  %10 = trunc i32 %best_n.3.i to i8
  %conv67.i = add i8 %10, -2
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 6
  %11 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bits_per_pixel, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %12, label %asiliant_calc_dclk2.exit.if.end17_crit_edge [
    i32 24, label %if.then
    i32 16, label %if.then5
    i32 8, label %if.then14
  ]

asiliant_calc_dclk2.exit.if.end17_crit_edge:      ; preds = %asiliant_calc_dclk2.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then:                                          ; preds = %asiliant_calc_dclk2.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %14 = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 25
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %add.ptr2.i = getelementptr i8, ptr %16, i32 4196268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i, i8 -127) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %add.ptr6.i = getelementptr i8, ptr %18, i32 4196269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 22) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %14, align 4
  %add.ptr2.i49 = getelementptr i8, ptr %20, i32 4196268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i49, i8 -126) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %14, align 4
  %add.ptr6.i50 = getelementptr i8, ptr %22, i32 4196269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i50, i8 0) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %14, align 4
  %add.ptr2.i51 = getelementptr i8, ptr %24, i32 4196268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i51, i8 32) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %14, align 4
  %add.ptr6.i52 = getelementptr i8, ptr %26, i32 4196269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i52, i8 32) #5, !srcloc !58
  br label %if.end17

if.then5:                                         ; preds = %asiliant_calc_dclk2.exit
  %red = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 8
  %27 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %red, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %28)
  %cmp7 = icmp eq i32 %28, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %29 = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 25
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %add.ptr2.i53 = getelementptr i8, ptr %31, i32 4196268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i53, i8 -127) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  %add.ptr6.i54 = getelementptr i8, ptr %33, i32 4196269
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i54, i8 21) #5, !srcloc !58
  br label %if.end

if.else9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i54, i8 20) #5, !srcloc !58
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %34 = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 25
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %add.ptr2.i57 = getelementptr i8, ptr %36, i32 4196268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i57, i8 -126) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 4
  %add.ptr6.i58 = getelementptr i8, ptr %38, i32 4196269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i58, i8 0) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %34, align 4
  %add.ptr2.i59 = getelementptr i8, ptr %40, i32 4196268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i59, i8 32) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %34, align 4
  %add.ptr6.i60 = getelementptr i8, ptr %42, i32 4196269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i60, i8 16) #5, !srcloc !58
  br label %if.end17

if.then14:                                        ; preds = %asiliant_calc_dclk2.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %43 = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 25
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %add.ptr2.i61 = getelementptr i8, ptr %45, i32 4196268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i61, i8 10) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %43, align 4
  %add.ptr6.i62 = getelementptr i8, ptr %47, i32 4196269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i62, i8 2) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %43, align 4
  %add.ptr2.i63 = getelementptr i8, ptr %49, i32 4196268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i63, i8 -127) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %43, align 4
  %add.ptr6.i64 = getelementptr i8, ptr %51, i32 4196269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i64, i8 18) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %43, align 4
  %add.ptr2.i65 = getelementptr i8, ptr %53, i32 4196268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i65, i8 -126) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %43, align 4
  %add.ptr6.i66 = getelementptr i8, ptr %55, i32 4196269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i66, i8 0) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %56 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %43, align 4
  %add.ptr2.i67 = getelementptr i8, ptr %57, i32 4196268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i67, i8 32) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %58 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %43, align 4
  %add.ptr6.i68 = getelementptr i8, ptr %59, i32 4196269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i68, i8 0) #5, !srcloc !58
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end, %if.then, %asiliant_calc_dclk2.exit.if.end17_crit_edge
  %var = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6
  %60 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %var, align 4
  %62 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bits_per_pixel, align 4
  %shr = lshr i32 %63, 3
  %mul = mul i32 %shr, %61
  %line_length = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 7, i32 9
  %64 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %mul, ptr %line_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %63)
  %cmp23 = icmp eq i32 %63, 8
  %cond = select i1 %cmp23, i32 3, i32 2
  %visual = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 7, i32 5
  %65 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %cond, ptr %visual, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %66 = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 25
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %add.ptr2.i69 = getelementptr i8, ptr %68, i32 4196268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i69, i8 -60) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %66, align 4
  %add.ptr6.i70 = getelementptr i8, ptr %70, i32 4196269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i70, i8 %conv65.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %71 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %66, align 4
  %add.ptr2.i71 = getelementptr i8, ptr %72, i32 4196268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i71, i8 -59) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %73 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %66, align 4
  %add.ptr6.i72 = getelementptr i8, ptr %74, i32 4196269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i72, i8 %conv67.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %75 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %66, align 4
  %add.ptr2.i73 = getelementptr i8, ptr %76, i32 4196268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i73, i8 -57) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %77 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %66, align 4
  %add.ptr6.i74 = getelementptr i8, ptr %78, i32 4196269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i74, i8 %divisor.1.i) #5, !srcloc !58
  %79 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %var, align 4
  %div199.i = lshr i32 %80, 3
  %right_margin.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 19
  %81 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %right_margin.i, align 4
  %add.i75 = add i32 %82, %80
  %div4200.i = lshr i32 %add.i75, 3
  %hsync_len.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 22
  %83 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %hsync_len.i, align 4
  %add11.i = add i32 %add.i75, %84
  %div12201.i = lshr i32 %add11.i, 3
  %left_margin.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 18
  %85 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %left_margin.i, align 4
  %add22.i = add i32 %add11.i, %86
  %div23202.i = lshr i32 %add22.i, 3
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 1
  %87 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %yres.i, align 4
  %lower_margin.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 21
  %89 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %lower_margin.i, align 4
  %add28.i = add i32 %90, %88
  %vsync_len.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 23
  %91 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %vsync_len.i, align 4
  %add35.i = add i32 %add28.i, %92
  %upper_margin.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 20
  %93 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %upper_margin.i, align 4
  %add45.i = add i32 %add35.i, %94
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 2
  %95 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %xres_virtual.i, align 4
  %97 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %bits_per_pixel, align 4
  %add48.i = add i32 %98, 7
  %div49203.i = lshr i32 %add48.i, 3
  %mul.i = mul i32 %div49203.i, %96
  %div50204.i = lshr i32 %mul.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %80)
  %cmp.i76 = icmp eq i32 %80, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %88)
  %cmp55.i = icmp eq i32 %88, 480
  %or.cond.i = select i1 %cmp.i76, i1 %cmp55.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true56.i, label %if.end17.if.else.i78_crit_edge

if.end17.if.else.i78_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i78

land.lhs.true56.i:                                ; preds = %if.end17
  %99 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pixclock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 39722, i32 %100)
  %cmp58.i = icmp eq i32 %100, 39722
  br i1 %cmp58.i, label %if.then.i77, label %land.lhs.true56.i.if.else.i78_crit_edge

land.lhs.true56.i.if.else.i78_crit_edge:          ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i78

if.then.i77:                                      ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %101 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %66, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %102, i32 4196256
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i.i, i8 1) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %103 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %66, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %104, i32 4196257
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i.i, i8 2) #5, !srcloc !58
  br label %if.end.i

if.else.i78:                                      ; preds = %land.lhs.true56.i.if.else.i78_crit_edge, %if.end17.if.else.i78_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %105 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %66, align 4
  %add.ptr2.i205.i = getelementptr i8, ptr %106, i32 4196256
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i205.i, i8 1) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %107 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %66, align 4
  %add.ptr6.i206.i = getelementptr i8, ptr %108, i32 4196257
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i206.i, i8 1) #5, !srcloc !58
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i78, %if.then.i77
  %109 = trunc i32 %add35.i to i8
  %110 = add i8 %109, 15
  %conv.i = and i8 %110, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %111 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %66, align 4
  %add.ptr2.i207.i = getelementptr i8, ptr %112, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i207.i, i8 17) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %113 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %66, align 4
  %add.ptr6.i208.i = getelementptr i8, ptr %114, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i208.i, i8 %conv.i) #5, !srcloc !58
  %sub59.i = add nsw i32 %div23202.i, -5
  %conv61.i = trunc i32 %sub59.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %115 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %66, align 4
  %add.ptr2.i209.i = getelementptr i8, ptr %116, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i209.i, i8 0) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %117 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %66, align 4
  %add.ptr6.i210.i = getelementptr i8, ptr %118, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i210.i, i8 %conv61.i) #5, !srcloc !58
  %119 = trunc i32 %div199.i to i8
  %conv63.i = add i8 %119, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %120 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %66, align 4
  %add.ptr2.i211.i = getelementptr i8, ptr %121, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i211.i, i8 1) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %122 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %66, align 4
  %add.ptr6.i212.i = getelementptr i8, ptr %123, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i212.i, i8 %conv63.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %124 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %66, align 4
  %add.ptr2.i213.i = getelementptr i8, ptr %125, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i213.i, i8 2) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %126 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %66, align 4
  %add.ptr6.i214.i = getelementptr i8, ptr %127, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i214.i, i8 %119) #5, !srcloc !58
  %sub65.i = add nsw i32 %div23202.i, -1
  %128 = trunc i32 %sub65.i to i8
  %129 = and i8 %128, 31
  %conv67.i79 = or i8 %129, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %130 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %66, align 4
  %add.ptr2.i215.i = getelementptr i8, ptr %131, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i215.i, i8 3) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %132 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %66, align 4
  %add.ptr6.i216.i = getelementptr i8, ptr %133, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i216.i, i8 %conv67.i79) #5, !srcloc !58
  %conv68.i = trunc i32 %div4200.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %134 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %66, align 4
  %add.ptr2.i217.i = getelementptr i8, ptr %135, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i217.i, i8 4) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %136 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %66, align 4
  %add.ptr6.i218.i = getelementptr i8, ptr %137, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i218.i, i8 %conv68.i) #5, !srcloc !58
  %and70.i = shl nsw i32 %sub65.i, 2
  %shl.i80 = and i32 %and70.i, 128
  %and71.i = and i32 %div12201.i, 31
  %or72.i = or i32 %shl.i80, %and71.i
  %conv73.i = trunc i32 %or72.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %138 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %66, align 4
  %add.ptr2.i219.i = getelementptr i8, ptr %139, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i219.i, i8 5) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %140 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %66, align 4
  %add.ptr6.i220.i = getelementptr i8, ptr %141, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i220.i, i8 %conv73.i) #5, !srcloc !58
  %conv76.i = and i8 %128, -64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %142 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %66, align 4
  %add.ptr2.i221.i = getelementptr i8, ptr %143, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i221.i, i8 60) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %144 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %66, align 4
  %add.ptr6.i222.i = getelementptr i8, ptr %145, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i222.i, i8 %conv76.i) #5, !srcloc !58
  %sub77.i = add i32 %add45.i, -2
  %conv79.i = trunc i32 %sub77.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %146 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %66, align 4
  %add.ptr2.i223.i = getelementptr i8, ptr %147, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i223.i, i8 6) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %148 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %66, align 4
  %add.ptr6.i224.i = getelementptr i8, ptr %149, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i224.i, i8 %conv79.i) #5, !srcloc !58
  %shr.i81 = lshr i32 %sub77.i, 8
  %conv81.i = trunc i32 %shr.i81 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %150 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %66, align 4
  %add.ptr2.i225.i = getelementptr i8, ptr %151, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i225.i, i8 48) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %152 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %66, align 4
  %add.ptr6.i226.i = getelementptr i8, ptr %153, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i226.i, i8 %conv81.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %154 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %66, align 4
  %add.ptr2.i227.i = getelementptr i8, ptr %155, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i227.i, i8 7) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %156 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %66, align 4
  %add.ptr6.i228.i = getelementptr i8, ptr %157, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i228.i, i8 0) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %158 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %66, align 4
  %add.ptr2.i229.i = getelementptr i8, ptr %159, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i229.i, i8 8) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %160 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %66, align 4
  %add.ptr6.i230.i = getelementptr i8, ptr %161, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i230.i, i8 0) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %162 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %66, align 4
  %add.ptr2.i231.i = getelementptr i8, ptr %163, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i231.i, i8 9) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %164 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %66, align 4
  %add.ptr6.i232.i = getelementptr i8, ptr %165, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i232.i, i8 0) #5, !srcloc !58
  %sub82.i = add i32 %add28.i, -1
  %conv84.i = trunc i32 %sub82.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %166 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %66, align 4
  %add.ptr2.i233.i = getelementptr i8, ptr %167, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i233.i, i8 16) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %168 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %66, align 4
  %add.ptr6.i234.i = getelementptr i8, ptr %169, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i234.i, i8 %conv84.i) #5, !srcloc !58
  %shr86.i = lshr i32 %sub82.i, 8
  %170 = trunc i32 %shr86.i to i8
  %conv88.i = and i8 %170, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %171 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %66, align 4
  %add.ptr2.i235.i = getelementptr i8, ptr %172, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i235.i, i8 50) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %173 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %66, align 4
  %add.ptr6.i236.i = getelementptr i8, ptr %174, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i236.i, i8 %conv88.i) #5, !srcloc !58
  %conv92.i = or i8 %conv.i, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %175 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %66, align 4
  %add.ptr2.i237.i = getelementptr i8, ptr %176, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i237.i, i8 17) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %177 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %66, align 4
  %add.ptr6.i238.i = getelementptr i8, ptr %178, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i238.i, i8 %conv92.i) #5, !srcloc !58
  %sub93.i = add i32 %88, -1
  %conv95.i = trunc i32 %sub93.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %179 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %66, align 4
  %add.ptr2.i239.i = getelementptr i8, ptr %180, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i239.i, i8 18) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %181 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %66, align 4
  %add.ptr6.i240.i = getelementptr i8, ptr %182, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i240.i, i8 %conv95.i) #5, !srcloc !58
  %and97.i = lshr i32 %sub93.i, 8
  %183 = trunc i32 %and97.i to i8
  %conv99.i = and i8 %183, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %184 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %66, align 4
  %add.ptr2.i241.i = getelementptr i8, ptr %185, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i241.i, i8 49) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %186 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %66, align 4
  %add.ptr6.i242.i = getelementptr i8, ptr %187, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i242.i, i8 %conv99.i) #5, !srcloc !58
  %conv101.i = trunc i32 %div50204.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %188 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %66, align 4
  %add.ptr2.i243.i = getelementptr i8, ptr %189, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i243.i, i8 19) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %190 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %66, align 4
  %add.ptr6.i244.i = getelementptr i8, ptr %191, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i244.i, i8 %conv101.i) #5, !srcloc !58
  %and102.i = lshr i32 %mul.i, 11
  %192 = trunc i32 %and102.i to i8
  %conv104.i = and i8 %192, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %193 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %66, align 4
  %add.ptr2.i245.i = getelementptr i8, ptr %194, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i245.i, i8 65) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %195 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %66, align 4
  %add.ptr6.i246.i = getelementptr i8, ptr %196, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i246.i, i8 %conv104.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %197 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %66, align 4
  %add.ptr2.i247.i = getelementptr i8, ptr %198, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i247.i, i8 21) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %199 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %66, align 4
  %add.ptr6.i248.i = getelementptr i8, ptr %200, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i248.i, i8 %conv84.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %201 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %66, align 4
  %add.ptr2.i249.i = getelementptr i8, ptr %202, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i249.i, i8 51) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %203 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %66, align 4
  %add.ptr6.i250.i = getelementptr i8, ptr %204, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i250.i, i8 %conv88.i) #5, !srcloc !58
  %and113.i = lshr i32 %sub59.i, 8
  %205 = trunc i32 %and113.i to i8
  %conv115.i = and i8 %205, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %206 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %66, align 4
  %add.ptr2.i251.i = getelementptr i8, ptr %207, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i251.i, i8 56) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %208 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %66, align 4
  %add.ptr6.i252.i = getelementptr i8, ptr %209, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i252.i, i8 %conv115.i) #5, !srcloc !58
  %210 = trunc i32 %add45.i to i8
  %conv118.i = add i8 %210, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %211 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %66, align 4
  %add.ptr2.i253.i = getelementptr i8, ptr %212, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i253.i, i8 22) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %213 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %66, align 4
  %add.ptr6.i254.i = getelementptr i8, ptr %214, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i254.i, i8 %conv118.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %215 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %66, align 4
  %add.ptr2.i255.i = getelementptr i8, ptr %216, i32 4196264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i255.i, i8 24) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %217 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %66, align 4
  %add.ptr6.i256.i = getelementptr i8, ptr %218, i32 4196265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i256.i, i8 0) #5, !srcloc !58
  %219 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %220)
  %cmp121.i = icmp eq i32 %220, 640
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %221 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %66, align 4
  %add.ptr124.i = getelementptr i8, ptr %222, i32 4196228
  br i1 %cmp121.i, label %do.body.i, label %do.body126.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr124.i, i8 -57) #5, !srcloc !58
  br label %asiliant_set_timing.exit

do.body126.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr124.i, i8 7) #5, !srcloc !58
  br label %asiliant_set_timing.exit

asiliant_set_timing.exit:                         ; preds = %do.body126.i, %do.body.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asiliantfb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp = icmp ugt i32 %regno, 255
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %shr = lshr i32 %red, 8
  %shr1 = lshr i32 %green, 8
  %shr2 = lshr i32 %blue, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %regno to i8
  %0 = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 25
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr3 = getelementptr i8, ptr %2, i32 4196240
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3, i8 %conv) #5, !srcloc !58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %conv6 = trunc i32 %shr to i8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %0, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 4196241
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 %conv6) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %conv11 = trunc i32 %shr1 to i8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 4
  %add.ptr13 = getelementptr i8, ptr %7, i32 4196241
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13, i8 %conv11) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %conv16 = trunc i32 %shr2 to i8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %add.ptr18 = getelementptr i8, ptr %9, i32 4196241
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18, i8 %conv16) #5, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp19 = icmp ult i32 %regno, 16
  br i1 %cmp19, label %if.then21, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then21:                                        ; preds = %if.end
  %red22 = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 8
  %10 = ptrtoint ptr %red22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %red22, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %11, label %if.then21.return_crit_edge [
    i32 10, label %sw.bb
    i32 11, label %sw.bb28
    i32 16, label %sw.bb39
  ]

if.then21.return_crit_edge:                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %and = shl nuw nsw i32 %shr, 7
  %shl = and i32 %and, 31744
  %and23 = shl nuw nsw i32 %shr1, 2
  %shl24 = and i32 %and23, 992
  %or = or i32 %shl24, %shl
  %and25 = lshr i32 %blue, 11
  %shr26 = and i32 %and25, 31
  %or27 = or i32 %or, %shr26
  br label %return.sink.split

sw.bb28:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %shl30 = and i32 %red, 63488
  %and31 = shl nuw nsw i32 %shr1, 3
  %shl32 = and i32 %and31, 2016
  %or33 = or i32 %shl32, %shl30
  %and34 = lshr i32 %blue, 11
  %shr35 = and i32 %and34, 31
  %or36 = or i32 %or33, %shr35
  br label %return.sink.split

sw.bb39:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %shl40 = shl i32 %shr, 16
  %shl41 = and i32 %green, -256
  %or42 = or i32 %shl40, %shl41
  %or43 = or i32 %or42, %shr2
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb39, %sw.bb28, %sw.bb
  %or43.sink = phi i32 [ %or43, %sw.bb39 ], [ %or36, %sw.bb28 ], [ %or27, %sw.bb ]
  %pseudo_palette44 = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 27
  %13 = ptrtoint ptr %pseudo_palette44 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pseudo_palette44, align 4
  %arrayidx45 = getelementptr i32, ptr %14, i32 %regno
  %15 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or43.sink, ptr %arrayidx45, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.then21.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ 0, %if.then21.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !29, !31, !33, !34, !35, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_asiliantfb__305_620_asiliantfb_init6, !1, !"__initcall__kmod_asiliantfb__305_620_asiliantfb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/asiliantfb.c", i32 620, i32 1}
!2 = !{ptr @__UNIQUE_ID_file306, !3, !"__UNIQUE_ID_file306", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/asiliantfb.c", i32 627, i32 1}
!4 = !{ptr @__UNIQUE_ID_license307, !3, !"__UNIQUE_ID_license307", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/asiliantfb.c", i32 614, i32 21}
!7 = !{ptr @asiliantfb_driver, !8, !"asiliantfb_driver", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/asiliantfb.c", i32 605, i32 26}
!9 = !{ptr @asiliantfb_pci_tbl, !10, !"asiliantfb_pci_tbl", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/asiliantfb.c", i32 598, i32 35}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/asiliantfb.c", i32 522, i32 3}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @init_asiliant._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @init_asiliant._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/asiliantfb.c", i32 528, i32 3}
!19 = !{ptr @init_asiliant._entry.4, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @init_asiliant._entry_ptr.6, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/asiliantfb.c", i32 533, i32 2}
!23 = !{ptr @init_asiliant._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @init_asiliant._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @asiliantfb_fix, !26, !"asiliantfb_fix", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/asiliantfb.c", i32 480, i32 39}
!27 = !{ptr @asiliantfb_var, !28, !"asiliantfb_var", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/asiliantfb.c", i32 489, i32 39}
!29 = !{ptr @asiliantfb_ops, !30, !"asiliantfb_ops", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/asiliantfb.c", i32 98, i32 28}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/asiliantfb.c", i32 240, i32 3}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @asiliantfb_check_var._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @asiliantfb_check_var._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @chips_init_xr, !37, !"chips_init_xr", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/asiliantfb.c", i32 434, i32 30}
!38 = distinct !{null, !39, !"chips_init_sr", i1 false, i1 false}
!39 = !{!"../drivers/video/fbdev/asiliantfb.c", i32 356, i32 30}
!40 = distinct !{null, !41, !"chips_init_gr", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/asiliantfb.c", i32 364, i32 30}
!42 = distinct !{null, !43, !"chips_init_ar", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/asiliantfb.c", i32 372, i32 30}
!44 = distinct !{null, !45, !"chips_init_cr", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/asiliantfb.c", i32 380, i32 30}
!46 = !{ptr @chips_init_fr, !47, !"chips_init_fr", i1 false, i1 false}
!47 = !{!"../drivers/video/fbdev/asiliantfb.c", i32 392, i32 30}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2156228985}
!58 = !{i64 6100075}
!59 = !{i64 2156228121}
!60 = !{i64 2156208937}
!61 = !{i64 2156209285}
!62 = !{i64 2156212157}
!63 = !{i64 2156212505}
!64 = !{i64 2156211352}
!65 = !{i64 2156211700}
!66 = !{i64 6100470}
!67 = !{i64 2156212881}
!68 = !{i64 2156213258}
!69 = !{i64 2156213606}
!70 = !{i64 2156221778}
!71 = !{i64 2156210547}
!72 = !{i64 2156210895}
!73 = !{i64 2156209742}
!74 = !{i64 2156210090}
!75 = !{i64 2156217948}
!76 = !{i64 2156218817}
!77 = !{i64 2156219150}
!78 = !{i64 2156219484}
