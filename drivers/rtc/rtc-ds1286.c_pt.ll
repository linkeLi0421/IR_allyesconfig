; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-ds1286.c_pt.bc'
source_filename = "../drivers/rtc/rtc-ds1286.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ds1286_priv = type { ptr, ptr, %struct.spinlock }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_ds1286__227_353_ds1286_platform_driver_init6 = internal global ptr @ds1286_platform_driver_init, section ".initcall6.init", align 4
@ds1286_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ds1286_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ds1286_platform_driver_exit = internal global ptr @ds1286_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [66 x i8] c"rtc_ds1286.author=Thomas Bogendoerfer <tsbogend@alpha.franken.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [41 x i8] c"rtc_ds1286.description=DS1286 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [39 x i8] c"rtc_ds1286.file=drivers/rtc/rtc-ds1286\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [23 x i8] c"rtc_ds1286.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [37 x i8] c"rtc_ds1286.alias=platform:rtc-ds1286\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-ds1286\00", [21 x i8] zeroinitializer }, align 32
@ds1286_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ds1286\00", [25 x i8] zeroinitializer }, align 32
@ds1286_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr @ds1286_ioctl, ptr @ds1286_read_time, ptr @ds1286_set_time, ptr @ds1286_read_alarm, ptr @ds1286_set_alarm, ptr @ds1286_proc, ptr @ds1286_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"oscillator\09: %s\0Asquare_wave\09: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"each minute\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"minutes match\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hours and minutes match\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"days, hours and minutes match\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"alarm_mode\09: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"alarm_enable\09: %s\0Awdog_alarm\09: %s\0Aalarm_mask\09: %s\0Awdog_alarm_mask\09: %s\0Ainterrupt_mode\09: %s\0AINTB_mode\09: %s_active\0Ainterrupt_pins\09: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pulse\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"level\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unswapped\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"swapped\00", [24 x i8] zeroinitializer }, align 32
@switch.table.ds1286_proc = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.9, ptr @.str.8, ptr @.str.10, ptr @.str.7, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.6], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 28687, i64 28688]
@___asan_gen_.21 = private unnamed_addr constant [23 x i8] c"ds1286_platform_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 346, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 348, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 336, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 338, i32 45 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"ds1286_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 313, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 100, i32 6 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 102, i32 27 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 102, i32 40 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 110, i32 7 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 113, i32 7 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 116, i32 7 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 119, i32 7 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 122, i32 7 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 125, i32 18 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 129, i32 6 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 136, i32 24 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 136, i32 32 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 140, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 140, i32 37 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 141, i32 27 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 141, i32 35 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 142, i32 25 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [28 x i8] c"../drivers/rtc/rtc-ds1286.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 142, i32 39 }
@___asan_gen_.93 = private unnamed_addr constant [25 x i8] c"switch.table.ds1286_proc\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_ds1286_platform_driver_exit, ptr @__initcall__kmod_rtc_ds1286__227_353_ds1286_platform_driver_init6, ptr @ds1286_platform_driver_exit, ptr @ds1286_platform_driver, ptr @.str, ptr @ds1286_probe.__key, ptr @.str.1, ptr @.str.2, ptr @ds1286_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @switch.table.ds1286_proc], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1286_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1286_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1286_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ds1286_proc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1286_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ds1286_platform_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ds1286_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @ds1286_platform_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1286_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %rtcregs = getelementptr inbounds %struct.ds1286_priv, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %rtcregs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %rtcregs, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %do.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.ds1286_priv, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ds1286_probe.__key, i16 noundef signext 3) #4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call10 = tail call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @ds1286_ops, ptr noundef null) #4
  %cmp.i28 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i28, label %if.then12, label %if.end14

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end14:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %call.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then12, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %3, %if.then12 ], [ 0, %if.end14 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1286_ioctl(ptr nocapture noundef readonly %dev, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 28688, label %do.body1
    i32 28687, label %do.body12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %lock = getelementptr inbounds %struct.ds1286_priv, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %rtcregs.i = getelementptr inbounds %struct.ds1286_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i = getelementptr i32, ptr %4, i32 11
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #4, !srcloc !68
  %6 = and i32 %5, 247
  %conv.i42 = or i32 %6, 8
  %7 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i44 = getelementptr i32, ptr %8, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i44, i32 %conv.i42) #4, !srcloc !69
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #4
  br label %cleanup

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %lock18 = getelementptr inbounds %struct.ds1286_priv, ptr %1, i32 0, i32 2
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock18) #4
  %rtcregs.i45 = getelementptr inbounds %struct.ds1286_priv, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %rtcregs.i45 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rtcregs.i45, align 4
  %arrayidx.i46 = getelementptr i32, ptr %10, i32 11
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i46) #4, !srcloc !68
  %12 = and i32 %11, 247
  %13 = ptrtoint ptr %rtcregs.i45 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rtcregs.i45, align 4
  %arrayidx.i50 = getelementptr i32, ptr %14, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i50, i32 %12) #4, !srcloc !69
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock18, i32 noundef %call20) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body12, %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -515, %entry.cleanup_crit_edge ], [ 0, %do.body12 ], [ 0, %do.body1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1286_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %rtcregs.i = getelementptr inbounds %struct.ds1286_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i = getelementptr i32, ptr %4, i32 11
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #4, !srcloc !68
  %6 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.body3_crit_edge, label %while.cond.preheader

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body3

while.cond.preheader:                             ; preds = %entry
  %add.neg = sub i32 -2, %2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub216 = add i32 %add.neg, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub216)
  %cmp217 = icmp slt i32 %sub216, 0
  br i1 %cmp217, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.do.body3_crit_edge

while.cond.preheader.do.body3_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body3

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %8
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.do.body3_crit_edge

while.body.do.body3_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body3

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

do.body3:                                         ; preds = %while.body.do.body3_crit_edge, %while.cond.preheader.do.body3_crit_edge, %entry.do.body3_crit_edge
  %lock = getelementptr inbounds %struct.ds1286_priv, ptr %1, i32 0, i32 2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %9 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i190 = getelementptr i32, ptr %10, i32 11
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i190) #4, !srcloc !68
  %12 = and i32 %11, 127
  %conv.i192 = or i32 %12, 128
  %13 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i194 = getelementptr i32, ptr %14, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i194, i32 %conv.i192) #4, !srcloc !69
  %15 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i196 = getelementptr i32, ptr %16, i32 1
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i196) #4, !srcloc !68
  %conv14 = and i32 %17, 255
  %18 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv14, ptr %tm, align 4
  %19 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i199 = getelementptr i32, ptr %20, i32 2
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i199) #4, !srcloc !68
  %conv16 = and i32 %21, 255
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %22 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv16, ptr %tm_min, align 4
  %23 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i202 = getelementptr i32, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i202) #4, !srcloc !68
  %26 = and i32 %25, 63
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %27 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tm_hour, align 4
  %28 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i205 = getelementptr i32, ptr %29, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i205) #4, !srcloc !68
  %conv21 = and i32 %30, 255
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %31 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv21, ptr %tm_mday, align 4
  %32 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i208 = getelementptr i32, ptr %33, i32 9
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i208) #4, !srcloc !68
  %35 = and i32 %34, 31
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %36 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %tm_mon, align 4
  %37 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i211 = getelementptr i32, ptr %38, i32 10
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i211) #4, !srcloc !68
  %conv26 = and i32 %39, 255
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %40 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv26, ptr %tm_year, align 4
  %conv.i213 = and i32 %11, 255
  %41 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i215 = getelementptr i32, ptr %42, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i215, i32 %conv.i213) #4, !srcloc !69
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #4
  %43 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tm, align 4
  %conv29 = trunc i32 %44 to i8
  %call36 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv29) #7
  %45 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call36, ptr %tm, align 4
  %46 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tm_min, align 4
  %conv39 = trunc i32 %47 to i8
  %call50 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv39) #7
  %48 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call50, ptr %tm_min, align 4
  %49 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tm_hour, align 4
  %conv55 = trunc i32 %50 to i8
  %call66 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv55) #7
  %51 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call66, ptr %tm_hour, align 4
  %52 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tm_mday, align 4
  %conv71 = trunc i32 %53 to i8
  %call82 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv71) #7
  %54 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call82, ptr %tm_mday, align 4
  %55 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tm_mon, align 4
  %57 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tm_year, align 4
  %conv103 = trunc i32 %58 to i8
  %call114 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv103) #7
  %conv87 = trunc i32 %56 to i8
  %call98 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv87) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %call114)
  %cmp119 = icmp slt i32 %call114, 45
  %add123 = add i32 %call114, 30
  %spec.select = select i1 %cmp119, i32 %add123, i32 %call114
  %add126 = add i32 %spec.select, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %add126)
  %cmp128 = icmp slt i32 %add126, 70
  %add132 = add i32 %spec.select, 140
  %storemerge = select i1 %cmp128, i32 %add132, i32 %add126
  %59 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %storemerge, ptr %tm_year, align 4
  %dec = add i32 %call98, -1
  %60 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %dec, ptr %tm_mon, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1286_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %2 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm_year, align 4
  %add = add i32 %3, 1900
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %4 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_mon, align 4
  %conv = add i32 %5, 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %6 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm_mday, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %8 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_hour, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %10 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_min, align 4
  %12 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1970, i32 %add)
  %cmp = icmp ult i32 %add, 1970
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %3, -40
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub)
  %cmp7 = icmp ugt i32 %sub, 255
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %sub)
  %cmp11 = icmp ugt i32 %sub, 99
  %sub14 = add nsw i32 %3, -140
  %spec.select = select i1 %cmp11, i32 %sub14, i32 %sub
  %conv19 = and i32 %13, 255
  %call20 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv19) #7
  %conv31 = and i32 %11, 255
  %call32 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv31) #7
  %conv45 = and i32 %9, 255
  %call46 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv45) #7
  %conv59 = and i32 %7, 255
  %call60 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv59) #7
  %conv73 = and i32 %conv, 255
  %call74 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv73) #7
  %call86 = tail call zeroext i8 @_bin2bcd(i32 noundef %spec.select) #7
  %conv87 = zext i8 %call86 to i32
  %lock = getelementptr inbounds %struct.ds1286_priv, ptr %1, i32 0, i32 2
  %call94 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %rtcregs.i = getelementptr inbounds %struct.ds1286_priv, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i = getelementptr i32, ptr %15, i32 11
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #4, !srcloc !68
  %17 = and i32 %16, 127
  %conv.i156 = or i32 %17, 128
  %18 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i158 = getelementptr i32, ptr %19, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i158, i32 %conv.i156) #4, !srcloc !69
  %20 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i161 = getelementptr i32, ptr %21, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i161, i32 %conv87) #4, !srcloc !69
  %conv.i162 = zext i8 %call74 to i32
  %22 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i164 = getelementptr i32, ptr %23, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i164, i32 %conv.i162) #4, !srcloc !69
  %conv.i165 = zext i8 %call60 to i32
  %24 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i167 = getelementptr i32, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i167, i32 %conv.i165) #4, !srcloc !69
  %conv.i168 = zext i8 %call46 to i32
  %26 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i170 = getelementptr i32, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i170, i32 %conv.i168) #4, !srcloc !69
  %conv.i171 = zext i8 %call32 to i32
  %28 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i173 = getelementptr i32, ptr %29, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i173, i32 %conv.i171) #4, !srcloc !69
  %conv.i174 = zext i8 %call20 to i32
  %30 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i176 = getelementptr i32, ptr %31, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i176, i32 %conv.i174) #4, !srcloc !69
  %32 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rtcregs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 0) #4, !srcloc !69
  %conv.i178 = and i32 %16, 255
  %34 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i180 = getelementptr i32, ptr %35, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i180, i32 %conv.i178) #4, !srcloc !69
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call94) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1286_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef %alm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.ds1286_priv, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %rtcregs.i = getelementptr inbounds %struct.ds1286_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i = getelementptr i32, ptr %3, i32 3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #4, !srcloc !68
  %5 = and i32 %4, 127
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tm_min, align 4
  %7 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i73 = getelementptr i32, ptr %8, i32 5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i73) #4, !srcloc !68
  %10 = and i32 %9, 31
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tm_hour, align 4
  %12 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i76 = getelementptr i32, ptr %13, i32 7
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i76) #4, !srcloc !68
  %15 = and i32 %14, 7
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 6
  %16 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tm_wday, align 4
  %17 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i79 = getelementptr i32, ptr %18, i32 11
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i79) #4, !srcloc !68
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #4
  %20 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_min, align 4
  %conv20 = trunc i32 %21 to i8
  %call29 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv20) #7
  %22 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call29, ptr %tm_min, align 4
  %23 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tm_hour, align 4
  %conv34 = trunc i32 %24 to i8
  %call48 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv34) #7
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %25 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call48, ptr %tm_hour, align 4
  %26 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %time, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1286_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %alm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %0 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %time, align 4
  %conv12 = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv12)
  %cmp13.not = icmp eq i32 %conv12, 0
  br i1 %cmp13.not, label %cond.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm_min, align 4
  %conv7 = and i32 %3, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %conv7)
  %cmp8 = icmp ugt i32 %conv7, 59
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_hour, align 4
  %conv5 = and i32 %5, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %conv5)
  %cmp = icmp ugt i32 %conv5, 23
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %8 = and i32 %3, 255
  %conv19 = select i1 %cmp8, i32 255, i32 %8
  %call20 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv19) #7
  %9 = and i32 %5, 255
  %conv31 = select i1 %cmp, i32 255, i32 %9
  %call32 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv31) #7
  %lock = getelementptr inbounds %struct.ds1286_priv, ptr %7, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %conv.i = zext i8 %call32 to i32
  %rtcregs.i = getelementptr inbounds %struct.ds1286_priv, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i = getelementptr i32, ptr %11, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %conv.i) #4, !srcloc !69
  %conv.i57 = zext i8 %call20 to i32
  %12 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i59 = getelementptr i32, ptr %13, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i59, i32 %conv.i57) #4, !srcloc !69
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.false ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1286_proc(ptr nocapture noundef readonly %dev, ptr noundef %seq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rtcregs.i = getelementptr inbounds %struct.ds1286_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i = getelementptr i32, ptr %3, i32 9
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #4, !srcloc !68
  %and = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.5, ptr @.str.4
  %and3 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %cond5 = select i1 %tobool4.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond, ptr noundef nonnull %cond5) #4
  %5 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i68 = getelementptr i32, ptr %6, i32 3
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i68) #4, !srcloc !68
  %8 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i71 = getelementptr i32, ptr %9, i32 5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i71) #4, !srcloc !68
  %11 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i74 = getelementptr i32, ptr %12, i32 7
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i74) #4, !srcloc !68
  %conv.i72 = trunc i32 %10 to i8
  %14 = lshr i8 %conv.i72, 6
  %15 = and i8 %14, 2
  %conv.i69 = trunc i32 %7 to i8
  %16 = lshr i8 %conv.i69, 5
  %17 = and i8 %16, 4
  %or65 = or i8 %15, %17
  %conv.i75 = trunc i32 %13 to i8
  %18 = lshr i8 %conv.i75, 7
  %or1766 = or i8 %or65, %18
  %conv19 = zext i8 %or1766 to i32
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.ds1286_proc, i32 0, i32 %conv19
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load ptr, ptr %switch.gep, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, ptr noundef nonnull %switch.load) #4
  %20 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i77 = getelementptr i32, ptr %21, i32 11
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i77) #4, !srcloc !68
  %and25 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %cond27 = select i1 %tobool26.not, ptr @.str.14, ptr @.str.13
  %and29 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %cond31 = select i1 %tobool30.not, ptr @.str.14, ptr @.str.13
  %and33 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %cond35 = select i1 %tobool34.not, ptr @.str.5, ptr @.str.4
  %and37 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %cond39 = select i1 %tobool38.not, ptr @.str.5, ptr @.str.4
  %and41 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %cond43 = select i1 %tobool42.not, ptr @.str.16, ptr @.str.15
  %and45 = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %cond47 = select i1 %tobool46.not, ptr @.str.18, ptr @.str.17
  %and49 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %cond51 = select i1 %tobool50.not, ptr @.str.20, ptr @.str.19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond27, ptr noundef nonnull %cond31, ptr noundef nonnull %cond35, ptr noundef nonnull %cond39, ptr noundef nonnull %cond43, ptr noundef nonnull %cond47, ptr noundef nonnull %cond51) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1286_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.ds1286_priv, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %rtcregs.i = getelementptr inbounds %struct.ds1286_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i = getelementptr i32, ptr %3, i32 11
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #4, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %5 = and i32 %4, 251
  %masksel = select i1 %tobool.not, i32 4, i32 0
  %val.0 = or i32 %5, %masksel
  %6 = ptrtoint ptr %rtcregs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtcregs.i, align 4
  %arrayidx.i19 = getelementptr i32, ptr %7, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i19, i32 %val.0) #4, !srcloc !69
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_rtc_ds1286__227_353_ds1286_platform_driver_init6, !1, !"__initcall__kmod_rtc_ds1286__227_353_ds1286_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-ds1286.c", i32 353, i32 1}
!2 = !{ptr @__exitcall_ds1286_platform_driver_exit, !1, !"__exitcall_ds1286_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-ds1286.c", i32 355, i32 1}
!5 = !{ptr @__UNIQUE_ID_description229, !6, !"__UNIQUE_ID_description229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-ds1286.c", i32 356, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-ds1286.c", i32 357, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-ds1286.c", i32 358, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-ds1286.c", i32 348, i32 11}
!14 = !{ptr @ds1286_platform_driver, !15, !"ds1286_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-ds1286.c", i32 346, i32 31}
!16 = !{ptr @ds1286_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-ds1286.c", i32 336, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/rtc/rtc-ds1286.c", i32 338, i32 45}
!21 = !{ptr @ds1286_ops, !22, !"ds1286_ops", i1 false, i1 false}
!22 = !{!"../drivers/rtc/rtc-ds1286.c", i32 313, i32 35}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/rtc/rtc-ds1286.c", i32 100, i32 6}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/rtc/rtc-ds1286.c", i32 102, i32 27}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-ds1286.c", i32 102, i32 40}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-ds1286.c", i32 110, i32 7}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-ds1286.c", i32 113, i32 7}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-ds1286.c", i32 116, i32 7}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-ds1286.c", i32 119, i32 7}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-ds1286.c", i32 122, i32 7}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-ds1286.c", i32 125, i32 18}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-ds1286.c", i32 129, i32 6}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-ds1286.c", i32 136, i32 24}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-ds1286.c", i32 136, i32 32}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/rtc/rtc-ds1286.c", i32 140, i32 27}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/rtc/rtc-ds1286.c", i32 140, i32 37}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-ds1286.c", i32 141, i32 27}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-ds1286.c", i32 141, i32 35}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-ds1286.c", i32 142, i32 25}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-ds1286.c", i32 142, i32 39}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 4632667}
!69 = !{i64 4632249}
!70 = !{i64 2153806009}
