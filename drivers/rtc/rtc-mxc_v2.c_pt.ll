; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-mxc_v2.c_pt.bc'
source_filename = "../drivers/rtc/rtc-mxc_v2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mxc_rtc_data = type { ptr, ptr, ptr, %struct.spinlock, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_mxc_v2__227_386_mxc_rtc_driver_init6 = internal global ptr @mxc_rtc_driver_init, section ".initcall6.init", align 4
@mxc_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxc_rtc_probe, ptr @mxc_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxc_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mxc_rtc_driver_exit = internal global ptr @mxc_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [48 x i8] c"rtc_mxc_v2.author=Freescale Semiconductor, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [63 x i8] c"rtc_mxc_v2.description=Real Time Clock (RTC) Driver for i.MX53\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [39 x i8] c"rtc_mxc_v2.file=drivers/rtc/rtc-mxc_v2\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [23 x i8] c"rtc_mxc_v2.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mxc_rtc_v2\00", [21 x i8] zeroinitializer }, align 32
@mxc_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mxc_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 296, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to get rtc clock!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxc_rtc_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-mxc_v2.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxc_rtc_probe._entry_ptr = internal global ptr @mxc_rtc_probe._entry, section ".printk_index", align 4
@mxc_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&pdata->lock\00", [19 x i8] zeroinitializer }, align 32
@mxc_rtc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 308, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable irq wake\0A\00", [37 x i8] zeroinitializer }, align 32
@mxc_rtc_probe._entry_ptr.9 = internal global ptr @mxc_rtc_probe._entry.7, section ".printk_index", align 4
@mxc_rtc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 323, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Timeout waiting for SRTC_LPSR_IES\0A\00", [61 x i8] zeroinitializer }, align 32
@mxc_rtc_probe._entry_ptr.12 = internal global ptr @mxc_rtc_probe._entry.10, section ".printk_index", align 4
@mxc_rtc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 333, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Timeout waiting for SRTC_LPSR_NVES\0A\00", [60 x i8] zeroinitializer }, align 32
@mxc_rtc_probe._entry_ptr.15 = internal global ptr @mxc_rtc_probe._entry.13, section ".printk_index", align 4
@mxc_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @mxc_rtc_read_time, ptr @mxc_rtc_set_time, ptr @mxc_rtc_read_alarm, ptr @mxc_rtc_set_alarm, ptr null, ptr @mxc_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mxc_rtc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 351, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"interrupt not available.\0A\00", [38 x i8] zeroinitializer }, align 32
@mxc_rtc_probe._entry_ptr.18 = internal global ptr @mxc_rtc_probe._entry.16, section ".printk_index", align 4
@mxc_rtc_sync_lp_locked.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@mxc_rtc_sync_lp_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 64, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SRTC_LPSCLR stuck! Check your hw.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxc_rtc_sync_lp_locked\00", [41 x i8] zeroinitializer }, align 32
@mxc_rtc_sync_lp_locked._entry_ptr = internal global ptr @mxc_rtc_sync_lp_locked._entry, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"mxc_rtc_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 377, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 379, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [8 x i8] c"mxc_ids\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 371, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 296, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 300, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 308, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 323, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 333, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"mxc_rtc_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 259, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 351, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [28 x i8] c"../drivers/rtc/rtc-mxc_v2.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 64, i32 5 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_mxc_rtc_driver_exit, ptr @__initcall__kmod_rtc_mxc_v2__227_386_mxc_rtc_driver_init6, ptr @mxc_rtc_driver_exit, ptr @mxc_rtc_probe._entry, ptr @mxc_rtc_probe._entry.10, ptr @mxc_rtc_probe._entry.13, ptr @mxc_rtc_probe._entry.16, ptr @mxc_rtc_probe._entry.7, ptr @mxc_rtc_probe._entry_ptr, ptr @mxc_rtc_probe._entry_ptr.12, ptr @mxc_rtc_probe._entry_ptr.15, ptr @mxc_rtc_probe._entry_ptr.18, ptr @mxc_rtc_probe._entry_ptr.9, ptr @mxc_rtc_sync_lp_locked._entry, ptr @mxc_rtc_sync_lp_locked._entry_ptr, ptr @mxc_rtc_driver, ptr @.str, ptr @mxc_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mxc_rtc_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @mxc_rtc_ops, ptr @.str.17, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_rtc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_rtc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_rtc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_rtc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_rtc_sync_lp_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxc_rtc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxc_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxc_rtc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %ioaddr2 = getelementptr inbounds %struct.mxc_rtc_data, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %ioaddr2, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.mxc_rtc_data, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call11, ptr %clk, align 4
  %cmp.i167 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %do.end, label %do.body19

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

do.body19:                                        ; preds = %if.end8
  %lock = getelementptr inbounds %struct.mxc_rtc_data, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @mxc_rtc_probe.__key, i16 noundef signext 3) #5
  %call23 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.mxc_rtc_data, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call23, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %do.body19.cleanup_crit_edge, label %if.end27

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %do.body19
  %call29 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #5
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call32 = tail call i32 @dev_pm_set_wake_irq(ptr noundef %dev, i32 noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end27.if.end39_crit_edge, label %do.end37

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

do.end37:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %if.end39

if.end39:                                         ; preds = %do.end37, %if.end27.if.end39_crit_edge
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  %call.i168 = tail call i32 @clk_prepare(ptr noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool.not.i = icmp eq i32 %call.i168, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end39
  %call1.i = tail call i32 @clk_enable(ptr noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body45, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %10) #5
  br label %cleanup

do.body45:                                        ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %add.ptr = getelementptr i8, ptr %call1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1717662529) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %add.ptr51 = getelementptr i8, ptr %call1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 -1) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %add.ptr55 = getelementptr i8, ptr %call1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 8912896) #5, !srcloc !61
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %do.body45
  %timeout.0.i = phi i32 [ 2000, %do.body45 ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  %12 = and i32 %11, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i169 = icmp eq i32 %12, 0
  br i1 %tobool.not.i169, label %while.body.i, label %do.body66

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool2.not.i170 = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i170, label %do.end62, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

do.end62:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %14) #5
  tail call void @clk_unprepare(ptr noundef %14) #5
  br label %cleanup

do.body66:                                        ; preds = %while.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 147324928) #5, !srcloc !61
  br label %while.cond.i175

while.cond.i175:                                  ; preds = %while.body.i178.while.cond.i175_crit_edge, %do.body66
  %timeout.0.i172 = phi i32 [ 2000, %do.body66 ], [ %dec.i176, %while.body.i178.while.cond.i175_crit_edge ]
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  %16 = and i32 %15, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i174 = icmp eq i32 %16, 0
  br i1 %tobool.not.i174, label %while.body.i178, label %if.end79

while.body.i178:                                  ; preds = %while.cond.i175
  %dec.i176 = add nsw i32 %timeout.0.i172, -1
  %tobool2.not.i177 = icmp eq i32 %dec.i176, 0
  br i1 %tobool2.not.i177, label %do.end76, label %while.body.i178.while.cond.i175_crit_edge

while.body.i178.while.cond.i175_crit_edge:        ; preds = %while.body.i178
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i175

do.end76:                                         ; preds = %while.body.i178
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %18) #5
  tail call void @clk_unprepare(ptr noundef %18) #5
  br label %cleanup

if.end79:                                         ; preds = %while.cond.i175
  %call81 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #5
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call81, ptr %call.i, align 4
  %cmp.i181 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181, label %if.then84, label %if.end87

if.then84:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %call81 to i32
  br label %cleanup

if.end87:                                         ; preds = %if.end79
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call81, i32 0, i32 3
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mxc_rtc_ops, ptr %ops, align 8
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %23, i32 0, i32 23
  %24 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 4294967295, ptr %range_max, align 8
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %26) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 4
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 8
  %call.i182 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %29, ptr noundef nonnull @mxc_rtc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %31, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %cmp95 = icmp slt i32 %call.i182, 0
  br i1 %cmp95, label %do.end99, label %if.end102

do.end99:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %33) #5
  br label %cleanup

if.end102:                                        ; preds = %if.end87
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %call104 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %if.then106, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then106:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %37) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then106, %if.end102.cleanup_crit_edge, %do.end99, %if.then84, %do.end76, %do.end62, %if.then3.i, %if.end39.cleanup_crit_edge, %do.body19.cleanup_crit_edge, %do.end, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %5, %do.end ], [ -16, %do.end62 ], [ -16, %do.end76 ], [ %20, %if.then84 ], [ %call.i182, %do.end99 ], [ -12, %entry.cleanup_crit_edge ], [ %call23, %do.body19.cleanup_crit_edge ], [ %call104, %if.then106 ], [ %call104, %if.end102.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i168, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_rtc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.mxc_rtc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_rtc_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ioaddr1 = getelementptr inbounds %struct.mxc_rtc_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr1, align 4
  %lock = getelementptr inbounds %struct.mxc_rtc_data, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %clk = getelementptr inbounds %struct.mxc_rtc_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call2 = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %add.ptr8 = getelementptr i8, ptr %3, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #5, !srcloc !64
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %9 = and i32 %6, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not = icmp eq i32 %9, 0
  br i1 %tobool12.not, label %if.end.do.body_crit_edge, label %if.then13

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then13:                                        ; preds = %if.end
  %and14 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then13.if.end17_crit_edge, label %if.then16

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void @rtc_update_irq(ptr noundef %11, i32 noundef 1, i32 noundef 160) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then13.if.end17_crit_edge
  %and18 = and i32 %8, -145
  br label %do.body

do.body:                                          ; preds = %if.end17, %if.end.do.body_crit_edge
  %lp_cr.0 = phi i32 [ %and18, %if.end17 ], [ %8, %if.end.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %lp_cr.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %12) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #5, !srcloc !61
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %do.body
  %timeout.0.i = phi i32 [ 2000, %do.body ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %13)
  %cmp8.i = icmp eq i32 %14, %13
  br i1 %cmp8.i, label %while.body.i, label %for.inc.critedge.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.do.body.i_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

while.body.i.do.body.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i:                                        ; preds = %while.body.2.i.do.body.i_crit_edge, %while.body.1.i.do.body.i_crit_edge, %while.body.i.do.body.i_crit_edge
  %.b21.i = load i1, ptr @mxc_rtc_sync_lp_locked.__print_once, align 1
  br i1 %.b21.i, label %do.body.i.mxc_rtc_sync_lp_locked.exit_crit_edge, label %if.then10.i

do.body.i.mxc_rtc_sync_lp_locked.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxc_rtc_sync_lp_locked.exit

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mxc_rtc_sync_lp_locked.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev_id, ptr noundef nonnull @.str.19) #8
  br label %mxc_rtc_sync_lp_locked.exit

for.inc.critedge.i:                               ; preds = %while.cond.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  br label %while.cond.1.i

while.cond.1.i:                                   ; preds = %while.body.1.i.while.cond.1.i_crit_edge, %for.inc.critedge.i
  %timeout.0.1.i = phi i32 [ 2000, %for.inc.critedge.i ], [ %dec.1.i, %while.body.1.i.while.cond.1.i_crit_edge ]
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %15)
  %cmp8.1.i = icmp eq i32 %16, %15
  br i1 %cmp8.1.i, label %while.body.1.i, label %for.inc.critedge.1.i

for.inc.critedge.1.i:                             ; preds = %while.cond.1.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  br label %while.cond.2.i

while.body.1.i:                                   ; preds = %while.cond.1.i
  %dec.1.i = add nsw i32 %timeout.0.1.i, -1
  %tobool.not.1.i = icmp eq i32 %dec.1.i, 0
  br i1 %tobool.not.1.i, label %while.body.1.i.do.body.i_crit_edge, label %while.body.1.i.while.cond.1.i_crit_edge

while.body.1.i.while.cond.1.i_crit_edge:          ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.1.i

while.body.1.i.do.body.i_crit_edge:               ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

while.cond.2.i:                                   ; preds = %while.body.2.i.while.cond.2.i_crit_edge, %for.inc.critedge.1.i
  %timeout.0.2.i = phi i32 [ 2000, %for.inc.critedge.1.i ], [ %dec.2.i, %while.body.2.i.while.cond.2.i_crit_edge ]
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %17)
  %cmp8.2.i = icmp eq i32 %18, %17
  br i1 %cmp8.2.i, label %while.body.2.i, label %while.cond.2.i.mxc_rtc_sync_lp_locked.exit_crit_edge

while.cond.2.i.mxc_rtc_sync_lp_locked.exit_crit_edge: ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxc_rtc_sync_lp_locked.exit

while.body.2.i:                                   ; preds = %while.cond.2.i
  %dec.2.i = add nsw i32 %timeout.0.2.i, -1
  %tobool.not.2.i = icmp eq i32 %dec.2.i, 0
  br i1 %tobool.not.2.i, label %while.body.2.i.do.body.i_crit_edge, label %while.body.2.i.while.cond.2.i_crit_edge

while.body.2.i.while.cond.2.i_crit_edge:          ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.2.i

while.body.2.i.do.body.i_crit_edge:               ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

mxc_rtc_sync_lp_locked.exit:                      ; preds = %while.cond.2.i.mxc_rtc_sync_lp_locked.exit_crit_edge, %if.then10.i, %do.body.i.mxc_rtc_sync_lp_locked.exit_crit_edge
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %20) #5
  br label %cleanup

cleanup:                                          ; preds = %mxc_rtc_sync_lp_locked.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %mxc_rtc_sync_lp_locked.exit ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_rtc_read_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.mxc_rtc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr = getelementptr inbounds %struct.mxc_rtc_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !64
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  %conv = zext i32 %7 to i64
  tail call void @rtc_time64_to_tm(i64 noundef %conv, ptr noundef %tm) #5
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_rtc_set_time(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #5
  %lock.i = getelementptr inbounds %struct.mxc_rtc_data, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #5
  %clk.i = getelementptr inbounds %struct.mxc_rtc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %conv = trunc i64 %call1 to i32
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %ioaddr = getelementptr inbounds %struct.mxc_rtc_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #5, !srcloc !61
  %7 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %do.body
  %timeout.0.i = phi i32 [ 2000, %do.body ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %9)
  %cmp8.i = icmp eq i32 %10, %9
  br i1 %cmp8.i, label %while.body.i, label %for.inc.critedge.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool.not.i12 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i12, label %while.body.i.do.body.i_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

while.body.i.do.body.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i:                                        ; preds = %while.body.2.i.do.body.i_crit_edge, %while.body.1.i.do.body.i_crit_edge, %while.body.i.do.body.i_crit_edge
  %.b21.i = load i1, ptr @mxc_rtc_sync_lp_locked.__print_once, align 1
  br i1 %.b21.i, label %do.body.i.mxc_rtc_sync_lp_locked.exit_crit_edge, label %if.then10.i

do.body.i.mxc_rtc_sync_lp_locked.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxc_rtc_sync_lp_locked.exit

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mxc_rtc_sync_lp_locked.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #8
  br label %mxc_rtc_sync_lp_locked.exit

for.inc.critedge.i:                               ; preds = %while.cond.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  br label %while.cond.1.i

while.cond.1.i:                                   ; preds = %while.body.1.i.while.cond.1.i_crit_edge, %for.inc.critedge.i
  %timeout.0.1.i = phi i32 [ 2000, %for.inc.critedge.i ], [ %dec.1.i, %while.body.1.i.while.cond.1.i_crit_edge ]
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %11)
  %cmp8.1.i = icmp eq i32 %12, %11
  br i1 %cmp8.1.i, label %while.body.1.i, label %for.inc.critedge.1.i

for.inc.critedge.1.i:                             ; preds = %while.cond.1.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  br label %while.cond.2.i

while.body.1.i:                                   ; preds = %while.cond.1.i
  %dec.1.i = add nsw i32 %timeout.0.1.i, -1
  %tobool.not.1.i = icmp eq i32 %dec.1.i, 0
  br i1 %tobool.not.1.i, label %while.body.1.i.do.body.i_crit_edge, label %while.body.1.i.while.cond.1.i_crit_edge

while.body.1.i.while.cond.1.i_crit_edge:          ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.1.i

while.body.1.i.do.body.i_crit_edge:               ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

while.cond.2.i:                                   ; preds = %while.body.2.i.while.cond.2.i_crit_edge, %for.inc.critedge.1.i
  %timeout.0.2.i = phi i32 [ 2000, %for.inc.critedge.1.i ], [ %dec.2.i, %while.body.2.i.while.cond.2.i_crit_edge ]
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %13)
  %cmp8.2.i = icmp eq i32 %14, %13
  br i1 %cmp8.2.i, label %while.body.2.i, label %while.cond.2.i.mxc_rtc_sync_lp_locked.exit_crit_edge

while.cond.2.i.mxc_rtc_sync_lp_locked.exit_crit_edge: ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxc_rtc_sync_lp_locked.exit

while.body.2.i:                                   ; preds = %while.cond.2.i
  %dec.2.i = add nsw i32 %timeout.0.2.i, -1
  %tobool.not.2.i = icmp eq i32 %dec.2.i, 0
  br i1 %tobool.not.2.i, label %while.body.2.i.do.body.i_crit_edge, label %while.body.2.i.while.cond.2.i_crit_edge

while.body.2.i.while.cond.2.i_crit_edge:          ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.2.i

while.body.2.i.do.body.i_crit_edge:               ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

mxc_rtc_sync_lp_locked.exit:                      ; preds = %while.cond.2.i.mxc_rtc_sync_lp_locked.exit_crit_edge, %if.then10.i, %do.body.i.mxc_rtc_sync_lp_locked.exit_crit_edge
  %15 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %16) #5
  br label %cleanup

cleanup:                                          ; preds = %mxc_rtc_sync_lp_locked.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mxc_rtc_sync_lp_locked.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ioaddr1 = getelementptr inbounds %struct.mxc_rtc_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr1, align 4
  %lock.i = getelementptr inbounds %struct.mxc_rtc_data, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #5
  %clk.i = getelementptr inbounds %struct.mxc_rtc_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !64
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  %conv = zext i32 %7 to i64
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  tail call void @rtc_time64_to_tm(i64 noundef %conv, ptr noundef %time) #5
  %add.ptr7 = getelementptr i8, ptr %3, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  %9 = lshr i32 %8, 27
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %12 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %pending, align 1
  %13 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %14) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_rtc_set_alarm(ptr noundef %dev, ptr noundef %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %time1 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %call = tail call i64 @rtc_tm_to_time64(ptr noundef %time1) #5
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock.i = getelementptr inbounds %struct.mxc_rtc_data, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #5
  %clk.i = getelementptr inbounds %struct.mxc_rtc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %conv = trunc i64 %call to i32
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %ioaddr = getelementptr inbounds %struct.mxc_rtc_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 134217728) #5, !srcloc !61
  %9 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %do.body
  %timeout.0.i = phi i32 [ 2000, %do.body ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %11)
  %cmp8.i = icmp eq i32 %12, %11
  br i1 %cmp8.i, label %while.body.i, label %for.inc.critedge.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool.not.i26 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i26, label %while.body.i.do.body.i_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

while.body.i.do.body.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i:                                        ; preds = %while.body.2.i.do.body.i_crit_edge, %while.body.1.i.do.body.i_crit_edge, %while.body.i.do.body.i_crit_edge
  %.b21.i = load i1, ptr @mxc_rtc_sync_lp_locked.__print_once, align 1
  br i1 %.b21.i, label %do.body.i.mxc_rtc_sync_lp_locked.exit_crit_edge, label %if.then10.i

do.body.i.mxc_rtc_sync_lp_locked.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxc_rtc_sync_lp_locked.exit

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mxc_rtc_sync_lp_locked.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #8
  br label %mxc_rtc_sync_lp_locked.exit

for.inc.critedge.i:                               ; preds = %while.cond.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  br label %while.cond.1.i

while.cond.1.i:                                   ; preds = %while.body.1.i.while.cond.1.i_crit_edge, %for.inc.critedge.i
  %timeout.0.1.i = phi i32 [ 2000, %for.inc.critedge.i ], [ %dec.1.i, %while.body.1.i.while.cond.1.i_crit_edge ]
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %13)
  %cmp8.1.i = icmp eq i32 %14, %13
  br i1 %cmp8.1.i, label %while.body.1.i, label %for.inc.critedge.1.i

for.inc.critedge.1.i:                             ; preds = %while.cond.1.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  br label %while.cond.2.i

while.body.1.i:                                   ; preds = %while.cond.1.i
  %dec.1.i = add nsw i32 %timeout.0.1.i, -1
  %tobool.not.1.i = icmp eq i32 %dec.1.i, 0
  br i1 %tobool.not.1.i, label %while.body.1.i.do.body.i_crit_edge, label %while.body.1.i.while.cond.1.i_crit_edge

while.body.1.i.while.cond.1.i_crit_edge:          ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.1.i

while.body.1.i.do.body.i_crit_edge:               ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

while.cond.2.i:                                   ; preds = %while.body.2.i.while.cond.2.i_crit_edge, %for.inc.critedge.1.i
  %timeout.0.2.i = phi i32 [ 2000, %for.inc.critedge.1.i ], [ %dec.2.i, %while.body.2.i.while.cond.2.i_crit_edge ]
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %15)
  %cmp8.2.i = icmp eq i32 %16, %15
  br i1 %cmp8.2.i, label %while.body.2.i, label %while.cond.2.i.mxc_rtc_sync_lp_locked.exit_crit_edge

while.cond.2.i.mxc_rtc_sync_lp_locked.exit_crit_edge: ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxc_rtc_sync_lp_locked.exit

while.body.2.i:                                   ; preds = %while.cond.2.i
  %dec.2.i = add nsw i32 %timeout.0.2.i, -1
  %tobool.not.2.i = icmp eq i32 %dec.2.i, 0
  br i1 %tobool.not.2.i, label %while.body.2.i.do.body.i_crit_edge, label %while.body.2.i.while.cond.2.i_crit_edge

while.body.2.i.while.cond.2.i_crit_edge:          ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.2.i

while.body.2.i.do.body.i_crit_edge:               ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

mxc_rtc_sync_lp_locked.exit:                      ; preds = %while.cond.2.i.mxc_rtc_sync_lp_locked.exit_crit_edge, %if.then10.i, %do.body.i.mxc_rtc_sync_lp_locked.exit_crit_edge
  %17 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %alrm, align 4
  %19 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i27 = getelementptr i8, ptr %20, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i28 = icmp eq i8 %18, 0
  %22 = and i32 %21, 1879048191
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %masksel.i = select i1 %tobool.not.i28, i32 0, i32 144
  %lp_cr.0.i = or i32 %23, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %24 = tail call i32 @llvm.bswap.i32(i32 %lp_cr.0.i) #5
  %25 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr, align 4
  %add.ptr3.i = getelementptr i8, ptr %26, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %24) #5, !srcloc !61
  %27 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i29 = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  br label %while.cond.i32

while.cond.i32:                                   ; preds = %while.body.i35.while.cond.i32_crit_edge, %mxc_rtc_sync_lp_locked.exit
  %timeout.0.i30 = phi i32 [ 2000, %mxc_rtc_sync_lp_locked.exit ], [ %dec.i33, %while.body.i35.while.cond.i32_crit_edge ]
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %29)
  %cmp8.i31 = icmp eq i32 %30, %29
  br i1 %cmp8.i31, label %while.body.i35, label %for.inc.critedge.i39

while.body.i35:                                   ; preds = %while.cond.i32
  %dec.i33 = add nsw i32 %timeout.0.i30, -1
  %tobool.not.i34 = icmp eq i32 %dec.i33, 0
  br i1 %tobool.not.i34, label %while.body.i35.do.body.i37_crit_edge, label %while.body.i35.while.cond.i32_crit_edge

while.body.i35.while.cond.i32_crit_edge:          ; preds = %while.body.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i32

while.body.i35.do.body.i37_crit_edge:             ; preds = %while.body.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i37

do.body.i37:                                      ; preds = %while.body.2.i52.do.body.i37_crit_edge, %while.body.1.i46.do.body.i37_crit_edge, %while.body.i35.do.body.i37_crit_edge
  %.b21.i36 = load i1, ptr @mxc_rtc_sync_lp_locked.__print_once, align 1
  br i1 %.b21.i36, label %do.body.i37.mxc_rtc_sync_lp_locked.exit53_crit_edge, label %if.then10.i38

do.body.i37.mxc_rtc_sync_lp_locked.exit53_crit_edge: ; preds = %do.body.i37
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxc_rtc_sync_lp_locked.exit53

if.then10.i38:                                    ; preds = %do.body.i37
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mxc_rtc_sync_lp_locked.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #8
  br label %mxc_rtc_sync_lp_locked.exit53

for.inc.critedge.i39:                             ; preds = %while.cond.i32
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  br label %while.cond.1.i42

while.cond.1.i42:                                 ; preds = %while.body.1.i46.while.cond.1.i42_crit_edge, %for.inc.critedge.i39
  %timeout.0.1.i40 = phi i32 [ 2000, %for.inc.critedge.i39 ], [ %dec.1.i44, %while.body.1.i46.while.cond.1.i42_crit_edge ]
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %31)
  %cmp8.1.i41 = icmp eq i32 %32, %31
  br i1 %cmp8.1.i41, label %while.body.1.i46, label %for.inc.critedge.1.i43

for.inc.critedge.1.i43:                           ; preds = %while.cond.1.i42
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  br label %while.cond.2.i49

while.body.1.i46:                                 ; preds = %while.cond.1.i42
  %dec.1.i44 = add nsw i32 %timeout.0.1.i40, -1
  %tobool.not.1.i45 = icmp eq i32 %dec.1.i44, 0
  br i1 %tobool.not.1.i45, label %while.body.1.i46.do.body.i37_crit_edge, label %while.body.1.i46.while.cond.1.i42_crit_edge

while.body.1.i46.while.cond.1.i42_crit_edge:      ; preds = %while.body.1.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.1.i42

while.body.1.i46.do.body.i37_crit_edge:           ; preds = %while.body.1.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i37

while.cond.2.i49:                                 ; preds = %while.body.2.i52.while.cond.2.i49_crit_edge, %for.inc.critedge.1.i43
  %timeout.0.2.i47 = phi i32 [ 2000, %for.inc.critedge.1.i43 ], [ %dec.2.i50, %while.body.2.i52.while.cond.2.i49_crit_edge ]
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %33)
  %cmp8.2.i48 = icmp eq i32 %34, %33
  br i1 %cmp8.2.i48, label %while.body.2.i52, label %while.cond.2.i49.mxc_rtc_sync_lp_locked.exit53_crit_edge

while.cond.2.i49.mxc_rtc_sync_lp_locked.exit53_crit_edge: ; preds = %while.cond.2.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxc_rtc_sync_lp_locked.exit53

while.body.2.i52:                                 ; preds = %while.cond.2.i49
  %dec.2.i50 = add nsw i32 %timeout.0.2.i47, -1
  %tobool.not.2.i51 = icmp eq i32 %dec.2.i50, 0
  br i1 %tobool.not.2.i51, label %while.body.2.i52.do.body.i37_crit_edge, label %while.body.2.i52.while.cond.2.i49_crit_edge

while.body.2.i52.while.cond.2.i49_crit_edge:      ; preds = %while.body.2.i52
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.2.i49

while.body.2.i52.do.body.i37_crit_edge:           ; preds = %while.body.2.i52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i37

mxc_rtc_sync_lp_locked.exit53:                    ; preds = %while.cond.2.i49.mxc_rtc_sync_lp_locked.exit53_crit_edge, %if.then10.i38, %do.body.i37.mxc_rtc_sync_lp_locked.exit53_crit_edge
  %35 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %36) #5
  br label %cleanup

cleanup:                                          ; preds = %mxc_rtc_sync_lp_locked.exit53, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock.i = getelementptr inbounds %struct.mxc_rtc_data, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #5
  %clk.i = getelementptr inbounds %struct.mxc_rtc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i = getelementptr inbounds %struct.mxc_rtc_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not.i7 = icmp eq i32 %enable, 0
  %7 = and i32 %6, 1879048191
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %masksel.i = select i1 %tobool.not.i7, i32 0, i32 144
  %lp_cr.0.i = or i32 %8, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %lp_cr.0.i) #5
  %10 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %9) #5, !srcloc !61
  %12 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %13) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #5
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !48, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_rtc_mxc_v2__227_386_mxc_rtc_driver_init6, !1, !"__initcall__kmod_rtc_mxc_v2__227_386_mxc_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-mxc_v2.c", i32 386, i32 1}
!2 = !{ptr @__exitcall_mxc_rtc_driver_exit, !1, !"__exitcall_mxc_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-mxc_v2.c", i32 388, i32 1}
!5 = !{ptr @__UNIQUE_ID_description229, !6, !"__UNIQUE_ID_description229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-mxc_v2.c", i32 389, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-mxc_v2.c", i32 390, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-mxc_v2.c", i32 379, i32 11}
!12 = !{ptr @mxc_rtc_driver, !13, !"mxc_rtc_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-mxc_v2.c", i32 377, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-mxc_v2.c", i32 296, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mxc_rtc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mxc_rtc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @mxc_rtc_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/rtc/rtc-mxc_v2.c", i32 300, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/rtc/rtc-mxc_v2.c", i32 308, i32 3}
!27 = !{ptr @mxc_rtc_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mxc_rtc_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-mxc_v2.c", i32 323, i32 3}
!31 = !{ptr @mxc_rtc_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mxc_rtc_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-mxc_v2.c", i32 333, i32 3}
!35 = !{ptr @mxc_rtc_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mxc_rtc_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-mxc_v2.c", i32 351, i32 3}
!39 = !{ptr @mxc_rtc_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mxc_rtc_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @mxc_rtc_ops, !42, !"mxc_rtc_ops", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-mxc_v2.c", i32 259, i32 35}
!43 = distinct !{null, !44, !"__print_once", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-mxc_v2.c", i32 64, i32 5}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mxc_rtc_sync_lp_locked._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @mxc_rtc_sync_lp_locked._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @mxc_ids, !50, !"mxc_ids", i1 false, i1 false}
!50 = !{!"../drivers/rtc/rtc-mxc_v2.c", i32 371, i32 34}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2153873265}
!61 = !{i64 2037140}
!62 = !{i64 2153873679}
!63 = !{i64 2153874314}
!64 = !{i64 2037558}
!65 = !{i64 2153869408}
!66 = !{i64 2153877115}
!67 = !{i64 2153863164}
!68 = !{i64 2153863639}
!69 = !{i64 2153864194}
!70 = !{i64 2153864592}
!71 = !{i64 2153860103}
!72 = !{i64 2153860583}
!73 = !{i64 2153865284}
!74 = !{i64 2153865507}
!75 = !{i64 2153866163}
!76 = !{i64 2153866638}
!77 = !{i64 2153868187}
!78 = !{i64 2153868711}
!79 = !{i64 2153867223}
!80 = !{i64 2153867775}
