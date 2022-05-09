; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-cadence.c_pt.bc'
source_filename = "../drivers/rtc/rtc-cadence.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.cdns_rtc = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_cadence__327_409_cdns_rtc_driver_init6 = internal global ptr @cdns_rtc_driver_init, section ".initcall6.init", align 4
@cdns_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cdns_rtc_probe, ptr @cdns_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cdns_rtc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cdns_rtc_driver_exit = internal global ptr @cdns_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author328 = internal constant [48 x i8] c"rtc_cadence.author=Jan Kotas <jank@cadence.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description329 = internal constant [43 x i8] c"rtc_cadence.description=Cadence RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file330 = internal constant [41 x i8] c"rtc_cadence.file=drivers/rtc/rtc-cadence\00", section ".modinfo", align 1
@__UNIQUE_ID_license331 = internal constant [27 x i8] c"rtc_cadence.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias332 = internal constant [36 x i8] c"rtc_cadence.alias=platform:cdns-rtc\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cdns-rtc\00", [23 x i8] zeroinitializer }, align 32
@cdns_rtc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,rtc-r109v3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cdns_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cdns_rtc_suspend, ptr @cdns_rtc_resume, ptr @cdns_rtc_suspend, ptr @cdns_rtc_resume, ptr @cdns_rtc_suspend, ptr @cdns_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@cdns_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 277, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to retrieve the peripheral clock, %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cdns_rtc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-cadence.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns_rtc_probe._entry_ptr = internal global ptr @cdns_rtc_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_clk\00", [24 x i8] zeroinitializer }, align 32
@cdns_rtc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 285, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to retrieve the reference clock, %d\0A\00", [52 x i8] zeroinitializer }, align 32
@cdns_rtc_probe._entry_ptr.10 = internal global ptr @cdns_rtc_probe._entry.8, section ".printk_index", align 4
@cdns_rtc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 298, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to enable the peripheral clock, %d\0A\00", [53 x i8] zeroinitializer }, align 32
@cdns_rtc_probe._entry_ptr.13 = internal global ptr @cdns_rtc_probe._entry.11, section ".printk_index", align 4
@cdns_rtc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 305, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to enable the reference clock, %d\0A\00", [54 x i8] zeroinitializer }, align 32
@cdns_rtc_probe._entry_ptr.16 = internal global ptr @cdns_rtc_probe._entry.14, section ".printk_index", align 4
@cdns_rtc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 313, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid reference clock frequency %lu Hz.\0A\00", [53 x i8] zeroinitializer }, align 32
@cdns_rtc_probe._entry_ptr.19 = internal global ptr @cdns_rtc_probe._entry.17, section ".printk_index", align 4
@cdns_rtc_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 324, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to request interrupt for the device, %d\0A\00", [48 x i8] zeroinitializer }, align 32
@cdns_rtc_probe._entry_ptr.22 = internal global ptr @cdns_rtc_probe._entry.20, section ".printk_index", align 4
@cdns_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @cdns_rtc_read_time, ptr @cdns_rtc_set_time, ptr @cdns_rtc_read_alarm, ptr @cdns_rtc_set_alarm, ptr null, ptr @cdns_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 100]
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"cdns_rtc_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 400, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 402, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"cdns_rtc_of_match\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 394, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"cdns_rtc_pm_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 392, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 273, i32 40 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 276, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 281, i32 43 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 284, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 297, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 304, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 311, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 322, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [13 x i8] c"cdns_rtc_ops\00", align 1
@___asan_gen_.90 = private constant [29 x i8] c"../drivers/rtc/rtc-cadence.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 247, i32 35 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_alias332, ptr @__UNIQUE_ID_author328, ptr @__UNIQUE_ID_description329, ptr @__UNIQUE_ID_file330, ptr @__UNIQUE_ID_license331, ptr @__exitcall_cdns_rtc_driver_exit, ptr @__initcall__kmod_rtc_cadence__327_409_cdns_rtc_driver_init6, ptr @cdns_rtc_driver_exit, ptr @cdns_rtc_probe._entry, ptr @cdns_rtc_probe._entry.11, ptr @cdns_rtc_probe._entry.14, ptr @cdns_rtc_probe._entry.17, ptr @cdns_rtc_probe._entry.20, ptr @cdns_rtc_probe._entry.8, ptr @cdns_rtc_probe._entry_ptr, ptr @cdns_rtc_probe._entry_ptr.10, ptr @cdns_rtc_probe._entry_ptr.13, ptr @cdns_rtc_probe._entry_ptr.16, ptr @cdns_rtc_probe._entry_ptr.19, ptr @cdns_rtc_probe._entry_ptr.22, ptr @cdns_rtc_driver, ptr @.str, ptr @cdns_rtc_of_match, ptr @cdns_rtc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @cdns_rtc_ops], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_rtc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_rtc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_rtc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_rtc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_rtc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_rtc_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cdns_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdns_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @cdns_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %regs = getelementptr inbounds %struct.cdns_rtc, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.cdns_rtc, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call8, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %pclk = getelementptr inbounds %struct.cdns_rtc, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call13, ptr %pclk, align 4
  %cmp.i167 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %4) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #6
  %ref_clk = getelementptr inbounds %struct.cdns_rtc, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %ref_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call22, ptr %ref_clk, align 4
  %cmp.i168 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %if.then25, label %if.end32

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call22 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %6) #9
  br label %cleanup

if.end32:                                         ; preds = %if.end20
  %call34 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #6
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call34, ptr %call.i, align 4
  %cmp.i169 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pclk, align 4
  %call.i170 = tail call i32 @clk_prepare(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %tobool.not.i = icmp eq i32 %call.i170, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end40.do.end47_crit_edge

if.end40.do.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47

if.end.i:                                         ; preds = %if.end40
  %call1.i = tail call i32 @clk_enable(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end49, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %11) #6
  br label %do.end47

do.end47:                                         ; preds = %if.then3.i, %if.end40.do.end47_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i170, %if.end40.do.end47_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end49:                                         ; preds = %if.end.i
  %12 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ref_clk, align 4
  %call.i171 = tail call i32 @clk_prepare(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %tobool.not.i172 = icmp eq i32 %call.i171, 0
  br i1 %tobool.not.i172, label %if.end.i175, label %if.end49.do.end56_crit_edge

if.end49.do.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end56

if.end.i175:                                      ; preds = %if.end49
  %call1.i173 = tail call i32 @clk_enable(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i173)
  %tobool2.not.i174 = icmp eq i32 %call1.i173, 0
  br i1 %tobool2.not.i174, label %if.end58, label %if.then3.i176

if.then3.i176:                                    ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %13) #6
  br label %do.end56

do.end56:                                         ; preds = %if.then3.i176, %if.end49.do.end56_crit_edge
  %retval.0.i177.ph = phi i32 [ %call1.i173, %if.then3.i176 ], [ %call.i171, %if.end49.do.end56_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i177.ph) #9
  br label %err_disable_pclk

if.end58:                                         ; preds = %if.end.i175
  %14 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ref_clk, align 4
  %call60 = tail call i32 @clk_get_rate(ptr noundef %15) #6
  %16 = zext i32 %call60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call60, label %do.end66 [
    i32 1, label %if.end58.if.end68_crit_edge
    i32 100, label %if.end58.if.end68_crit_edge189
  ]

if.end58.if.end68_crit_edge189:                   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.end58.if.end68_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

do.end66:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call60) #9
  br label %err_disable_ref_clk

if.end68:                                         ; preds = %if.end58.if.end68_crit_edge, %if.end58.if.end68_crit_edge189
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i179 = icmp eq ptr %20, null
  br i1 %tobool.not.i179, label %if.end.i180, label %if.end68.dev_name.exit_crit_edge

if.end68.dev_name.exit_crit_edge:                 ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i180:                                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i180, %if.end68.dev_name.exit_crit_edge
  %retval.0.i181 = phi ptr [ %22, %if.end.i180 ], [ %20, %if.end68.dev_name.exit_crit_edge ]
  %call.i182 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %18, ptr noundef nonnull @cdns_rtc_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i181, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool75.not = icmp eq i32 %call.i182, 0
  br i1 %tobool75.not, label %if.end81, label %do.end79

do.end79:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call.i182) #9
  br label %err_disable_ref_clk

if.end81:                                         ; preds = %dev_name.exit
  %call82 = tail call i64 @mktime64(i32 noundef 1900, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %call82, ptr %range_min, align 8
  %call84 = tail call i64 @mktime64(i32 noundef 2999, i32 noundef 12, i32 noundef 31, i32 noundef 23, i32 noundef 59, i32 noundef 59) #6
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %27, i32 0, i32 23
  %28 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call84, ptr %range_max, align 8
  %29 = load ptr, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @cdns_rtc_ops, ptr %ops, align 8
  %call88 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %add.ptr97 = getelementptr i8, ptr %34, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 16777216) #6, !srcloc !64
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %call99 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end81.cleanup_crit_edge, label %err_disable_wakeup

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_disable_wakeup:                               ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %call104 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #6
  br label %err_disable_ref_clk

err_disable_ref_clk:                              ; preds = %err_disable_wakeup, %do.end79, %do.end66
  %ret.0 = phi i32 [ -22, %do.end66 ], [ %call.i182, %do.end79 ], [ %call99, %err_disable_wakeup ]
  %37 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %38) #6
  tail call void @clk_unprepare(ptr noundef %38) #6
  br label %err_disable_pclk

err_disable_pclk:                                 ; preds = %err_disable_ref_clk, %do.end56
  %ret.1 = phi i32 [ %retval.0.i177.ph, %do.end56 ], [ %ret.0, %err_disable_ref_clk ]
  %39 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %40) #6
  tail call void @clk_unprepare(ptr noundef %40) #6
  br label %cleanup

cleanup:                                          ; preds = %err_disable_pclk, %if.end81.cleanup_crit_edge, %do.end47, %if.then37, %if.then25, %if.then16, %if.end7.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %4, %if.then16 ], [ %6, %if.then25 ], [ %8, %if.then37 ], [ %retval.0.i.ph, %do.end47 ], [ %ret.1, %err_disable_pclk ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ 0, %if.end81.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_rtc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %regs9.i = getelementptr inbounds %struct.cdns_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs9.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs9.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 1073741824) #6, !srcloc !64
  %call3 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #6
  %pclk = getelementptr inbounds %struct.cdns_rtc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %ref_clk = getelementptr inbounds %struct.cdns_rtc, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_rtc_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs = getelementptr inbounds %struct.cdns_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  %5 = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @rtc_update_irq(ptr noundef %7, i32 noundef 1, i32 noundef 160) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs.i = getelementptr inbounds %struct.cdns_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  %5 = and i32 %4, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 50331648) #6, !srcloc !64
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !67
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %and.i = lshr i32 %11, 8
  %12 = trunc i32 %and.i to i8
  %conv.i = and i8 %12, 127
  %call.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv.i) #10
  %13 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i, ptr %tm, align 4
  %and20.i = lshr i32 %11, 16
  %14 = trunc i32 %and20.i to i8
  %conv22.i = and i8 %14, 127
  %call23.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv22.i) #10
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %15 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call23.i, ptr %tm_min.i, align 4
  %and35.i = lshr i32 %11, 24
  %16 = trunc i32 %and35.i to i8
  %conv37.i = and i8 %16, 63
  %call38.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv37.i) #10
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %17 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call38.i, ptr %tm_hour.i, align 4
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr7 = getelementptr i8, ptr %19, i32 12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #6, !srcloc !67
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %and = lshr i32 %21, 8
  %22 = trunc i32 %and to i8
  %conv = and i8 %22, 63
  %call24 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv) #10
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %23 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call24, ptr %tm_mday, align 4
  %24 = trunc i32 %21 to i8
  %25 = lshr i8 %24, 3
  %call44 = tail call i32 @_bcd2bin(i8 noundef zeroext %25) #10
  %sub = add i32 %call44, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %26 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %tm_mon, align 4
  %and61 = lshr i32 %21, 16
  %conv63 = trunc i32 %and61 to i8
  %call64 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv63) #10
  %and81 = lshr i32 %21, 24
  %27 = trunc i32 %and81 to i8
  %conv83 = and i8 %27, 63
  %call84 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv83) #10
  %mul = mul i32 %call84, 100
  %add = add i32 %call64, -1900
  %sub85 = add i32 %add, %mul
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %28 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub85, ptr %tm_year, align 4
  %conv104 = and i8 %24, 7
  %call105 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv104) #10
  %sub106 = add i32 %call105, -1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %29 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub106, ptr %tm_wday, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #6, !srcloc !64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %regs.i = getelementptr inbounds %struct.cdns_rtc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 50331648) #6, !srcloc !64
  %6 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm, align 4
  %call41.i = tail call zeroext i8 @_bin2bcd(i32 noundef %7) #10
  %conv42.i = zext i8 %call41.i to i32
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %8 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_min.i, align 4
  %call104.i = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #10
  %conv105.i = zext i8 %call104.i to i32
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %10 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_hour.i, align 4
  %call167.i = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #10
  %conv168.i = zext i8 %call167.i to i32
  %shl45.i = shl nuw nsw i32 %conv42.i, 8
  %and46.i = and i32 %shl45.i, 32512
  %shl108.i = shl nuw nsw i32 %conv105.i, 16
  %and109.i = and i32 %shl108.i, 8323072
  %or.i = or i32 %and109.i, %and46.i
  %shl171.i = shl nuw i32 %conv168.i, 24
  %and172.i = and i32 %shl171.i, 1056964608
  %or173.i = or i32 %or.i, %and172.i
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %12 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_mday, align 4
  %call48 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #10
  %conv49 = zext i8 %call48 to i32
  %shl52 = shl nuw nsw i32 %conv49, 8
  %and53 = and i32 %shl52, 16128
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %14 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_mon, align 4
  %add61 = add i32 %15, 1
  %call128 = tail call zeroext i8 @_bin2bcd(i32 noundef %add61) #10
  %conv129 = zext i8 %call128 to i32
  %shl132 = shl nuw nsw i32 %conv129, 3
  %and133 = and i32 %shl132, 248
  %or = or i32 %and133, %and53
  %add.frozen = freeze i32 %add
  %div211 = sdiv i32 %add.frozen, 100
  %16 = mul i32 %div211, 100
  %rem141.decomposed = sub i32 %add.frozen, %16
  %call197 = tail call zeroext i8 @_bin2bcd(i32 noundef %rem141.decomposed) #10
  %conv198 = zext i8 %call197 to i32
  %shl201 = shl nuw nsw i32 %conv198, 16
  %or203 = or i32 %or, %shl201
  %call267 = tail call zeroext i8 @_bin2bcd(i32 noundef %div211) #10
  %conv268 = zext i8 %call267 to i32
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %17 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_wday, align 4
  %add281 = add i32 %18, 1
  %shl271 = shl nuw i32 %conv268, 24
  %and272 = and i32 %shl271, 1056964608
  %or273 = or i32 %or203, %and272
  %and302 = and i32 %add281, 7
  %or303 = or i32 %or273, %and302
  %19 = tail call i32 @llvm.bswap.i32(i32 %or173.i)
  %20 = tail call i32 @llvm.bswap.i32(i32 %or303)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr312 = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr312, i32 %20) #6, !srcloc !64
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr314 = getelementptr i8, ptr %26, i32 44
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr314) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %28 = and i32 %27, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %28)
  %cmp319 = icmp eq i32 %28, 50331648
  br i1 %cmp319, label %entry.for.end_crit_edge, label %for.cond

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr.1 = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 %19) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr312.1 = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr312.1, i32 %20) #6, !srcloc !64
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr314.1 = getelementptr i8, ptr %34, i32 44
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr314.1) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %36 = and i32 %35, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %36)
  %cmp319.1 = icmp eq i32 %36, 50331648
  br i1 %cmp319.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr.2 = getelementptr i8, ptr %38, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2, i32 %19) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr312.2 = getelementptr i8, ptr %40, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr312.2, i32 %20) #6, !srcloc !64
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr314.2 = getelementptr i8, ptr %42, i32 44
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr314.2) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %44 = and i32 %43, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %44)
  %cmp319.2 = icmp eq i32 %44, 50331648
  %spec.select = select i1 %cmp319.2, i32 0, i32 -5
  br label %for.end

for.end:                                          ; preds = %for.cond.1, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ], [ %spec.select, %for.cond.1 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 0) #6, !srcloc !64
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %alarm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs = getelementptr inbounds %struct.cdns_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !67
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %and.i = lshr i32 %5, 8
  %6 = trunc i32 %and.i to i8
  %conv.i = and i8 %6, 127
  %call.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv.i) #10
  %7 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i, ptr %time, align 4
  %and20.i = lshr i32 %5, 16
  %8 = trunc i32 %and20.i to i8
  %conv22.i = and i8 %8, 127
  %call23.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv22.i) #10
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call23.i, ptr %tm_min.i, align 4
  %and35.i = lshr i32 %5, 24
  %10 = trunc i32 %and35.i to i8
  %conv37.i = and i8 %10, 63
  %call38.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv37.i) #10
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call38.i, ptr %tm_hour.i, align 4
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %13, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !67
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %and = lshr i32 %15, 8
  %16 = trunc i32 %and to i8
  %conv = and i8 %16, 63
  %call23 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv) #10
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call23, ptr %tm_mday, align 4
  %18 = trunc i32 %15 to i8
  %19 = lshr i8 %18, 3
  %call44 = tail call i32 @_bcd2bin(i8 noundef zeroext %19) #10
  %sub = add i32 %call44, -1
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %tm_mon, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %alarm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %regs9.i = getelementptr inbounds %struct.cdns_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs9.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs9.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 1073741824) #6, !srcloc !64
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %6 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %time, align 4
  %call41.i = tail call zeroext i8 @_bin2bcd(i32 noundef %7) #10
  %conv42.i = zext i8 %call41.i to i32
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_min.i, align 4
  %call104.i = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #10
  %conv105.i = zext i8 %call104.i to i32
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_hour.i, align 4
  %call167.i = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #10
  %conv168.i = zext i8 %call167.i to i32
  %shl45.i = shl nuw nsw i32 %conv42.i, 8
  %and46.i = and i32 %shl45.i, 32512
  %shl108.i = shl nuw nsw i32 %conv105.i, 16
  %and109.i = and i32 %shl108.i, 8323072
  %or.i = or i32 %and109.i, %and46.i
  %shl171.i = shl nuw i32 %conv168.i, 24
  %and172.i = and i32 %shl171.i, 1056964608
  %or173.i = or i32 %or.i, %and172.i
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_mday, align 4
  %call60 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #10
  %conv61 = zext i8 %call60 to i32
  %shl64 = shl nuw nsw i32 %conv61, 8
  %and65 = and i32 %shl64, 16128
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_mon, align 4
  %add74 = add i32 %15, 1
  %call152 = tail call zeroext i8 @_bin2bcd(i32 noundef %add74) #10
  %conv153 = zext i8 %call152 to i32
  %shl156 = shl nuw nsw i32 %conv153, 3
  %and157 = and i32 %shl156, 248
  %or = or i32 %and157, %and65
  %16 = tail call i32 @llvm.bswap.i32(i32 %or173.i)
  %17 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs9.i, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %16) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs9.i, align 4
  %add.ptr166 = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166, i32 %17) #6, !srcloc !64
  %22 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs9.i, align 4
  %add.ptr168 = getelementptr i8, ptr %23, i32 44
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr168) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %25 = and i32 %24, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %25)
  %cmp173 = icmp eq i32 %25, 201326592
  br i1 %cmp173, label %entry.if.then178_crit_edge, label %for.cond

entry.if.then178_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then178

for.cond:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs9.i, align 4
  %add.ptr.1 = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 %16) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs9.i, align 4
  %add.ptr166.1 = getelementptr i8, ptr %29, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166.1, i32 %17) #6, !srcloc !64
  %30 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs9.i, align 4
  %add.ptr168.1 = getelementptr i8, ptr %31, i32 44
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr168.1) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %33 = and i32 %32, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %33)
  %cmp173.1 = icmp eq i32 %33, 201326592
  br i1 %cmp173.1, label %for.cond.if.then178_crit_edge, label %for.cond.1

for.cond.if.then178_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then178

for.cond.1:                                       ; preds = %for.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs9.i, align 4
  %add.ptr.2 = getelementptr i8, ptr %35, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2, i32 %16) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs9.i, align 4
  %add.ptr166.2 = getelementptr i8, ptr %37, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166.2, i32 %17) #6, !srcloc !64
  %38 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs9.i, align 4
  %add.ptr168.2 = getelementptr i8, ptr %39, i32 44
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr168.2) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %41 = and i32 %40, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %41)
  %cmp173.2 = icmp eq i32 %41, 201326592
  br i1 %cmp173.2, label %for.cond.1.if.then178_crit_edge, label %for.cond.1.if.end181_crit_edge

for.cond.1.if.end181_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end181

for.cond.1.if.then178_crit_edge:                  ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then178

if.then178:                                       ; preds = %for.cond.1.if.then178_crit_edge, %for.cond.if.then178_crit_edge, %entry.if.then178_crit_edge
  %42 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %alarm, align 4
  %44 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i214 = icmp eq i8 %43, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %regs9.i215 = getelementptr inbounds %struct.cdns_rtc, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %regs9.i215 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs9.i215, align 4
  %add.ptr10.i216 = getelementptr i8, ptr %47, i32 24
  br i1 %tobool.not.i214, label %do.body6.i, label %do.body.i

do.body.i:                                        ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i216, i32 1040187392) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %48 = ptrtoint ptr %regs9.i215 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs9.i215, align 4
  %add.ptr5.i = getelementptr i8, ptr %49, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 1073741824) #6, !srcloc !64
  br label %if.end181

do.body6.i:                                       ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i216, i32 0) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %regs9.i215 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs9.i215, align 4
  %add.ptr15.i217 = getelementptr i8, ptr %51, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i217, i32 1073741824) #6, !srcloc !64
  br label %if.end181

if.end181:                                        ; preds = %do.body6.i, %do.body.i, %for.cond.1.if.end181_crit_edge
  %ret.0219 = phi i32 [ 0, %do.body.i ], [ 0, %do.body6.i ], [ -5, %for.cond.1.if.end181_crit_edge ]
  ret i32 %ret.0219
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %regs9 = getelementptr inbounds %struct.cdns_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs9, align 4
  %add.ptr10 = getelementptr i8, ptr %3, i32 24
  br i1 %tobool.not, label %do.body6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 1040187392) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %regs9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs9, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 1073741824) #6, !srcloc !64
  br label %if.end

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %regs9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs9, align 4
  %add.ptr15 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 1073741824) #6, !srcloc !64
  br label %if.end

if.end:                                           ; preds = %do.body6, %do.body
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_rtc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.cdns_rtc, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_rtc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.cdns_rtc, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_rtc_cadence__327_409_cdns_rtc_driver_init6, !1, !"__initcall__kmod_rtc_cadence__327_409_cdns_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-cadence.c", i32 409, i32 1}
!2 = !{ptr @__exitcall_cdns_rtc_driver_exit, !1, !"__exitcall_cdns_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author328, !4, !"__UNIQUE_ID_author328", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-cadence.c", i32 411, i32 1}
!5 = !{ptr @__UNIQUE_ID_description329, !6, !"__UNIQUE_ID_description329", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-cadence.c", i32 412, i32 1}
!7 = !{ptr @__UNIQUE_ID_file330, !8, !"__UNIQUE_ID_file330", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-cadence.c", i32 413, i32 1}
!9 = !{ptr @__UNIQUE_ID_license331, !8, !"__UNIQUE_ID_license331", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias332, !11, !"__UNIQUE_ID_alias332", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-cadence.c", i32 414, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-cadence.c", i32 402, i32 11}
!14 = !{ptr @cdns_rtc_driver, !15, !"cdns_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-cadence.c", i32 400, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-cadence.c", i32 273, i32 40}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-cadence.c", i32 276, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cdns_rtc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @cdns_rtc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-cadence.c", i32 281, i32 43}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-cadence.c", i32 284, i32 3}
!30 = !{ptr @cdns_rtc_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cdns_rtc_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-cadence.c", i32 297, i32 3}
!34 = !{ptr @cdns_rtc_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cdns_rtc_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-cadence.c", i32 304, i32 3}
!38 = !{ptr @cdns_rtc_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cdns_rtc_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-cadence.c", i32 311, i32 3}
!42 = !{ptr @cdns_rtc_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cdns_rtc_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/rtc/rtc-cadence.c", i32 322, i32 3}
!46 = !{ptr @cdns_rtc_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cdns_rtc_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @cdns_rtc_ops, !49, !"cdns_rtc_ops", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-cadence.c", i32 247, i32 35}
!50 = !{ptr @cdns_rtc_of_match, !51, !"cdns_rtc_of_match", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-cadence.c", i32 394, i32 34}
!52 = !{ptr @cdns_rtc_pm_ops, !53, !"cdns_rtc_pm_ops", i1 false, i1 false}
!53 = !{!"../drivers/rtc/rtc-cadence.c", i32 392, i32 8}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 2155209529}
!64 = !{i64 4907237}
!65 = !{i64 2155210023}
!66 = !{i64 2154949114}
!67 = !{i64 4907655}
!68 = !{i64 2153970926}
!69 = !{i64 2153970230}
!70 = !{i64 2153969564}
!71 = !{i64 2154338376}
!72 = !{i64 2154338867}
!73 = !{i64 2154944964}
!74 = !{i64 2154945362}
!75 = !{i64 2154946031}
!76 = !{i64 2154949852}
!77 = !{i64 2154950343}
!78 = !{i64 2155192866}
!79 = !{i64 2155193268}
!80 = !{i64 2155193940}
!81 = !{i64 2154948156}
