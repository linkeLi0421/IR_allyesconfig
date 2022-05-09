; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-jz4740.c_pt.bc'
source_filename = "../drivers/rtc/rtc-jz4740.c"
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
%struct.jz4740_rtc = type { ptr, i32, ptr, %struct.spinlock }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_jz4740__227_409_jz4740_rtc_driver_init6 = internal global ptr @jz4740_rtc_driver_init, section ".initcall6.init", align 4
@jz4740_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @jz4740_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @jz4740_rtc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_jz4740_rtc_driver_exit = internal global ptr @jz4740_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [55 x i8] c"rtc_jz4740.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [39 x i8] c"rtc_jz4740.file=drivers/rtc/rtc-jz4740\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [23 x i8] c"rtc_jz4740.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [54 x i8] c"rtc_jz4740.description=RTC driver for the JZ4740 SoC\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [37 x i8] c"rtc_jz4740.alias=platform:jz4740-rtc\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"jz4740-rtc\00", [21 x i8] zeroinitializer }, align 32
@jz4740_rtc_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4740-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4780-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@jz4740_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 334, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get RTC clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jz4740_rtc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-jz4740.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@jz4740_rtc_probe._entry_ptr = internal global ptr @jz4740_rtc_probe._entry, section ".printk_index", align 4
@jz4740_rtc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 340, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@jz4740_rtc_probe._entry_ptr.9 = internal global ptr @jz4740_rtc_probe._entry.7, section ".printk_index", align 4
@jz4740_rtc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 346, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register devm action\0A\00", [32 x i8] zeroinitializer }, align 32
@jz4740_rtc_probe._entry_ptr.12 = internal global ptr @jz4740_rtc_probe._entry.10, section ".printk_index", align 4
@jz4740_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&rtc->lock\00", [21 x i8] zeroinitializer }, align 32
@jz4740_rtc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 358, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set wake irq: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@jz4740_rtc_probe._entry_ptr.16 = internal global ptr @jz4740_rtc_probe._entry.14, section ".printk_index", align 4
@jz4740_rtc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 365, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate rtc device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@jz4740_rtc_probe._entry_ptr.19 = internal global ptr @jz4740_rtc_probe._entry.17, section ".printk_index", align 4
@jz4740_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @jz4740_rtc_read_time, ptr @jz4740_rtc_set_time, ptr @jz4740_rtc_read_alarm, ptr @jz4740_rtc_set_alarm, ptr null, ptr @jz4740_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@jz4740_rtc_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 385, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to request rtc irq: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@jz4740_rtc_probe._entry_ptr.22 = internal global ptr @jz4740_rtc_probe._entry.20, section ".printk_index", align 4
@dev_for_power_off = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@jz4740_rtc_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 395, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Poweroff handler already present!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@jz4740_rtc_probe._entry_ptr.26 = internal global ptr @jz4740_rtc_probe._entry.23, section ".printk_index", align 4
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ingenic,reset-pin-assert-time-ms\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ingenic,min-wakeup-pin-assert-time-ms\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system-power-controller\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"jz4740_rtc_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 401, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 404, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"jz4740_rtc_of_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 265, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 332, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 334, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 340, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 346, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 350, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 358, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 365, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"jz4740_rtc_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 219, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 385, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"dev_for_power_off\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 62, i32 23 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 395, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 281, i32 27 }
@___asan_gen_.115 = private constant [28 x i8] c"../drivers/rtc/rtc-jz4740.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 283, i32 27 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1548, i32 35 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_jz4740_rtc_driver_exit, ptr @__initcall__kmod_rtc_jz4740__227_409_jz4740_rtc_driver_init6, ptr @jz4740_rtc_driver_exit, ptr @jz4740_rtc_probe._entry, ptr @jz4740_rtc_probe._entry.10, ptr @jz4740_rtc_probe._entry.14, ptr @jz4740_rtc_probe._entry.17, ptr @jz4740_rtc_probe._entry.20, ptr @jz4740_rtc_probe._entry.23, ptr @jz4740_rtc_probe._entry.7, ptr @jz4740_rtc_probe._entry_ptr, ptr @jz4740_rtc_probe._entry_ptr.12, ptr @jz4740_rtc_probe._entry_ptr.16, ptr @jz4740_rtc_probe._entry_ptr.19, ptr @jz4740_rtc_probe._entry_ptr.22, ptr @jz4740_rtc_probe._entry_ptr.26, ptr @jz4740_rtc_probe._entry_ptr.9, ptr @jz4740_rtc_driver, ptr @.str, ptr @jz4740_rtc_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @jz4740_rtc_probe.__key, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @jz4740_rtc_ops, ptr @.str.21, ptr @dev_for_power_off, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_rtc_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_rtc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_rtc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_rtc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_rtc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_rtc_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_for_power_off to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_rtc_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4740_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @jz4740_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jz4740_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @jz4740_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4740_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %min_wakeup_pin_assert_time.i = alloca i32, align 4
  %reset_pin_assert_time.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 56, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @device_get_match_data(ptr noundef %dev1) #6
  %2 = ptrtoint ptr %call2 to i32
  %type = getelementptr inbounds %struct.jz4740_rtc, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %type, align 4
  %call3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #6
  %cmp.i143 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  %6 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call.i144 = tail call i32 @clk_prepare(ptr noundef %call13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool.not.i = icmp eq i32 %call.i144, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end17.do.end23_crit_edge

if.end17.do.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

if.end.i:                                         ; preds = %if.end17
  %call1.i = tail call i32 @clk_enable(ptr noundef %call13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end24, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call13) #6
  br label %do.end23

do.end23:                                         ; preds = %if.then3.i, %if.end17.do.end23_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i144, %if.end17.do.end23_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end.i
  %call.i145 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @jz4740_rtc_clk_disable, ptr noundef %call13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool.not.i146 = icmp eq i32 %call.i145, 0
  br i1 %tobool.not.i146, label %do.body32, label %do.end30

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %call13) #6
  tail call void @clk_unprepare(ptr noundef %call13) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %cleanup

do.body32:                                        ; preds = %if.end24
  %lock = getelementptr inbounds %struct.jz4740_rtc, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @jz4740_rtc_probe.__key, i16 noundef signext 3) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call36 = tail call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext true) #6
  %call37 = tail call i32 @dev_pm_set_wake_irq(ptr noundef %dev1, i32 noundef %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end43, label %do.end42

do.end42:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call37) #9
  br label %cleanup

if.end43:                                         ; preds = %do.body32
  %call44 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev1) #6
  %rtc45 = getelementptr inbounds %struct.jz4740_rtc, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %rtc45 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call44, ptr %rtc45, align 4
  %cmp.i148 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %if.then48, label %if.end54

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call44 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %9) #9
  br label %cleanup

if.end54:                                         ; preds = %if.end43
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call44, i32 0, i32 3
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @jz4740_rtc_ops, ptr %ops, align 8
  %11 = ptrtoint ptr %rtc45 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rtc45, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 4294967295, ptr %range_max, align 8
  %call57 = tail call i32 @clk_get_rate(ptr noundef %call13) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_wakeup_pin_assert_time.i) #6
  %14 = ptrtoint ptr %min_wakeup_pin_assert_time.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 60, ptr %min_wakeup_pin_assert_time.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reset_pin_assert_time.i) #6
  %15 = ptrtoint ptr %reset_pin_assert_time.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 100, ptr %reset_pin_assert_time.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull %reset_pin_assert_time.i, i32 noundef 1, i32 noundef 0) #6
  %call.i.i18.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull %min_wakeup_pin_assert_time.i, i32 noundef 1, i32 noundef 0) #6
  %16 = ptrtoint ptr %min_wakeup_pin_assert_time.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %min_wakeup_pin_assert_time.i, align 4
  %mul.i = mul i32 %17, %call57
  call void @__sanitizer_cov_trace_const_cmp4(i32 65504000, i32 %mul.i)
  %cmp.i149 = icmp ult i32 %mul.i, 65504000
  %div.i = udiv i32 %mul.i, 1000
  %and.i = and i32 %div.i, 65504
  %wakeup_ticks.0.i = select i1 %cmp.i149, i32 %and.i, i32 65504
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i.i, label %if.end54.do.body.i15.i.i.preheader_crit_edge, label %if.end54.do.body.i.i.i.i_crit_edge

if.end54.do.body.i.i.i.i_crit_edge:               ; preds = %if.end54
  br label %do.body.i.i.i.i

if.end54.do.body.i15.i.i.preheader_crit_edge:     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i.i.preheader

do.body.i15.i.i.preheader:                        ; preds = %do.body1.i.i.i.do.body.i15.i.i.preheader_crit_edge, %if.end54.do.body.i15.i.i.preheader_crit_edge
  br label %do.body.i15.i.i

do.body.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end54.do.body.i.i.i.i_crit_edge
  %timeout.0.i.i.i.i = phi i32 [ %dec.i.i.i.i, %land.rhs.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ 10000, %if.end54.do.body.i.i.i.i_crit_edge ]
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %tobool.not.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %tobool.not.i.i.i.i, label %land.rhs.i.i.i.i, label %do.body.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %do.body.i.i.i.i
  %dec.i.i.i.i = add nsw i32 %timeout.0.i.i.i.i, -1
  %tobool1.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %land.rhs.i.i.i.i.jz4740_rtc_reg_write.exit.i_crit_edge, label %land.rhs.i.i.i.i.do.body.i.i.i.i_crit_edge

land.rhs.i.i.i.i.do.body.i.i.i.i_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i

land.rhs.i.i.i.i.jz4740_rtc_reg_write.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jz4740_rtc_reg_write.exit.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1520762880) #6, !srcloc !78
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %land.rhs.i.i.i.do.body1.i.i.i_crit_edge, %do.body.i.i.i
  %timeout.0.i.i.i = phi i32 [ 10000, %do.body.i.i.i ], [ %dec.i.i.i, %land.rhs.i.i.i.do.body1.i.i.i_crit_edge ]
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %26, i32 60
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i.i) #6, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %.mask.i.i.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %.mask.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %do.body1.i.i.i.do.body.i15.i.i.preheader_crit_edge

do.body1.i.i.i.do.body.i15.i.i.preheader_crit_edge: ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i.i.preheader

land.rhs.i.i.i:                                   ; preds = %do.body1.i.i.i
  %dec.i.i.i = add nsw i32 %timeout.0.i.i.i, -1
  %tobool7.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %land.rhs.i.i.i.jz4740_rtc_reg_write.exit.i_crit_edge, label %land.rhs.i.i.i.do.body1.i.i.i_crit_edge

land.rhs.i.i.i.do.body1.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i.i.i

land.rhs.i.i.i.jz4740_rtc_reg_write.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jz4740_rtc_reg_write.exit.i

do.body.i15.i.i:                                  ; preds = %land.rhs.i17.i.i.do.body.i15.i.i_crit_edge, %do.body.i15.i.i.preheader
  %timeout.0.i13.i.i = phi i32 [ %dec.i16.i.i, %land.rhs.i17.i.i.do.body.i15.i.i_crit_edge ], [ 10000, %do.body.i15.i.i.preheader ]
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %tobool.not.i14.i.i = icmp sgt i32 %30, -1
  br i1 %tobool.not.i14.i.i, label %land.rhs.i17.i.i, label %do.body.i.i

land.rhs.i17.i.i:                                 ; preds = %do.body.i15.i.i
  %dec.i16.i.i = add nsw i32 %timeout.0.i13.i.i, -1
  %tobool1.not.i.i.i = icmp eq i32 %dec.i16.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i17.i.i.jz4740_rtc_reg_write.exit.i_crit_edge, label %land.rhs.i17.i.i.do.body.i15.i.i_crit_edge

land.rhs.i17.i.i.do.body.i15.i.i_crit_edge:       ; preds = %land.rhs.i17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i.i

land.rhs.i17.i.i.jz4740_rtc_reg_write.exit.i_crit_edge: ; preds = %land.rhs.i17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jz4740_rtc_reg_write.exit.i

do.body.i.i:                                      ; preds = %do.body.i15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  call void @arm_heavy_mb() #6
  %31 = call i32 @llvm.bswap.i32(i32 %wakeup_ticks.0.i) #6
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %31) #6, !srcloc !78
  br label %jz4740_rtc_reg_write.exit.i

jz4740_rtc_reg_write.exit.i:                      ; preds = %do.body.i.i, %land.rhs.i17.i.i.jz4740_rtc_reg_write.exit.i_crit_edge, %land.rhs.i.i.i.jz4740_rtc_reg_write.exit.i_crit_edge, %land.rhs.i.i.i.i.jz4740_rtc_reg_write.exit.i_crit_edge
  %34 = ptrtoint ptr %reset_pin_assert_time.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reset_pin_assert_time.i, align 4
  %mul3.i = mul i32 %35, %call57
  call void @__sanitizer_cov_trace_const_cmp4(i32 4064000, i32 %mul3.i)
  %cmp5.i = icmp ult i32 %mul3.i, 4064000
  %div4.i = udiv i32 %mul3.i, 1000
  %and7.i = and i32 %div4.i, 4064
  %reset_ticks.0.i = select i1 %cmp5.i, i32 %and7.i, i32 4064
  %36 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.not.i20.i = icmp eq i32 %37, 0
  br i1 %cmp.not.i20.i, label %jz4740_rtc_reg_write.exit.i.do.body.i15.i40.i.preheader_crit_edge, label %jz4740_rtc_reg_write.exit.i.do.body.i.i.i23.i_crit_edge

jz4740_rtc_reg_write.exit.i.do.body.i.i.i23.i_crit_edge: ; preds = %jz4740_rtc_reg_write.exit.i
  br label %do.body.i.i.i23.i

jz4740_rtc_reg_write.exit.i.do.body.i15.i40.i.preheader_crit_edge: ; preds = %jz4740_rtc_reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i40.i.preheader

do.body.i15.i40.i.preheader:                      ; preds = %do.body1.i.i33.i.do.body.i15.i40.i.preheader_crit_edge, %jz4740_rtc_reg_write.exit.i.do.body.i15.i40.i.preheader_crit_edge
  br label %do.body.i15.i40.i

do.body.i.i.i23.i:                                ; preds = %land.rhs.i.i.i26.i.do.body.i.i.i23.i_crit_edge, %jz4740_rtc_reg_write.exit.i.do.body.i.i.i23.i_crit_edge
  %timeout.0.i.i.i21.i = phi i32 [ %dec.i.i.i24.i, %land.rhs.i.i.i26.i.do.body.i.i.i23.i_crit_edge ], [ 10000, %jz4740_rtc_reg_write.exit.i.do.body.i.i.i23.i_crit_edge ]
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #6, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %tobool.not.i.i.i22.i = icmp sgt i32 %40, -1
  br i1 %tobool.not.i.i.i22.i, label %land.rhs.i.i.i26.i, label %do.body.i.i28.i

land.rhs.i.i.i26.i:                               ; preds = %do.body.i.i.i23.i
  %dec.i.i.i24.i = add nsw i32 %timeout.0.i.i.i21.i, -1
  %tobool1.not.i.i.i25.i = icmp eq i32 %dec.i.i.i24.i, 0
  br i1 %tobool1.not.i.i.i25.i, label %land.rhs.i.i.i26.i.jz4740_rtc_set_wakeup_params.exit_crit_edge, label %land.rhs.i.i.i26.i.do.body.i.i.i23.i_crit_edge

land.rhs.i.i.i26.i.do.body.i.i.i23.i_crit_edge:   ; preds = %land.rhs.i.i.i26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i23.i

land.rhs.i.i.i26.i.jz4740_rtc_set_wakeup_params.exit_crit_edge: ; preds = %land.rhs.i.i.i26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jz4740_rtc_set_wakeup_params.exit

do.body.i.i28.i:                                  ; preds = %do.body.i.i.i23.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  %add.ptr.i.i27.i = getelementptr i8, ptr %42, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i27.i, i32 1520762880) #6, !srcloc !78
  br label %do.body1.i.i33.i

do.body1.i.i33.i:                                 ; preds = %land.rhs.i.i36.i.do.body1.i.i33.i_crit_edge, %do.body.i.i28.i
  %timeout.0.i.i29.i = phi i32 [ 10000, %do.body.i.i28.i ], [ %dec.i.i34.i, %land.rhs.i.i36.i.do.body1.i.i33.i_crit_edge ]
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %add.ptr3.i.i30.i = getelementptr i8, ptr %44, i32 60
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i30.i) #6, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %.mask.i.i31.i = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i31.i)
  %tobool.not.i.i32.i = icmp eq i32 %.mask.i.i31.i, 0
  br i1 %tobool.not.i.i32.i, label %land.rhs.i.i36.i, label %do.body1.i.i33.i.do.body.i15.i40.i.preheader_crit_edge

do.body1.i.i33.i.do.body.i15.i40.i.preheader_crit_edge: ; preds = %do.body1.i.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i40.i.preheader

land.rhs.i.i36.i:                                 ; preds = %do.body1.i.i33.i
  %dec.i.i34.i = add nsw i32 %timeout.0.i.i29.i, -1
  %tobool7.not.i.i35.i = icmp eq i32 %dec.i.i34.i, 0
  br i1 %tobool7.not.i.i35.i, label %land.rhs.i.i36.i.jz4740_rtc_set_wakeup_params.exit_crit_edge, label %land.rhs.i.i36.i.do.body1.i.i33.i_crit_edge

land.rhs.i.i36.i.do.body1.i.i33.i_crit_edge:      ; preds = %land.rhs.i.i36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i.i33.i

land.rhs.i.i36.i.jz4740_rtc_set_wakeup_params.exit_crit_edge: ; preds = %land.rhs.i.i36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jz4740_rtc_set_wakeup_params.exit

do.body.i15.i40.i:                                ; preds = %land.rhs.i17.i43.i.do.body.i15.i40.i_crit_edge, %do.body.i15.i40.i.preheader
  %timeout.0.i13.i38.i = phi i32 [ %dec.i16.i41.i, %land.rhs.i17.i43.i.do.body.i15.i40.i_crit_edge ], [ 10000, %do.body.i15.i40.i.preheader ]
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #6, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %tobool.not.i14.i39.i = icmp sgt i32 %48, -1
  br i1 %tobool.not.i14.i39.i, label %land.rhs.i17.i43.i, label %do.body.i45.i

land.rhs.i17.i43.i:                               ; preds = %do.body.i15.i40.i
  %dec.i16.i41.i = add nsw i32 %timeout.0.i13.i38.i, -1
  %tobool1.not.i.i42.i = icmp eq i32 %dec.i16.i41.i, 0
  br i1 %tobool1.not.i.i42.i, label %land.rhs.i17.i43.i.jz4740_rtc_set_wakeup_params.exit_crit_edge, label %land.rhs.i17.i43.i.do.body.i15.i40.i_crit_edge

land.rhs.i17.i43.i.do.body.i15.i40.i_crit_edge:   ; preds = %land.rhs.i17.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i40.i

land.rhs.i17.i43.i.jz4740_rtc_set_wakeup_params.exit_crit_edge: ; preds = %land.rhs.i17.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jz4740_rtc_set_wakeup_params.exit

do.body.i45.i:                                    ; preds = %do.body.i15.i40.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  call void @arm_heavy_mb() #6
  %49 = call i32 @llvm.bswap.i32(i32 %reset_ticks.0.i) #6
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %51, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %49) #6, !srcloc !78
  br label %jz4740_rtc_set_wakeup_params.exit

jz4740_rtc_set_wakeup_params.exit:                ; preds = %do.body.i45.i, %land.rhs.i17.i43.i.jz4740_rtc_set_wakeup_params.exit_crit_edge, %land.rhs.i.i36.i.jz4740_rtc_set_wakeup_params.exit_crit_edge, %land.rhs.i.i.i26.i.jz4740_rtc_set_wakeup_params.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset_pin_assert_time.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_wakeup_pin_assert_time.i) #6
  %sub = add i32 %call57, -1
  %52 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.not.i = icmp eq i32 %53, 0
  br i1 %cmp.not.i, label %jz4740_rtc_set_wakeup_params.exit.do.body.i15.i.preheader_crit_edge, label %jz4740_rtc_set_wakeup_params.exit.do.body.i.i.i152_crit_edge

jz4740_rtc_set_wakeup_params.exit.do.body.i.i.i152_crit_edge: ; preds = %jz4740_rtc_set_wakeup_params.exit
  br label %do.body.i.i.i152

jz4740_rtc_set_wakeup_params.exit.do.body.i15.i.preheader_crit_edge: ; preds = %jz4740_rtc_set_wakeup_params.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i.preheader

do.body.i15.i.preheader:                          ; preds = %do.body1.i.i.do.body.i15.i.preheader_crit_edge, %jz4740_rtc_set_wakeup_params.exit.do.body.i15.i.preheader_crit_edge
  br label %do.body.i15.i

do.body.i.i.i152:                                 ; preds = %land.rhs.i.i.i155.do.body.i.i.i152_crit_edge, %jz4740_rtc_set_wakeup_params.exit.do.body.i.i.i152_crit_edge
  %timeout.0.i.i.i150 = phi i32 [ %dec.i.i.i153, %land.rhs.i.i.i155.do.body.i.i.i152_crit_edge ], [ 10000, %jz4740_rtc_set_wakeup_params.exit.do.body.i.i.i152_crit_edge ]
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 4
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #6, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %tobool.not.i.i.i151 = icmp sgt i32 %56, -1
  br i1 %tobool.not.i.i.i151, label %land.rhs.i.i.i155, label %do.body.i.i157

land.rhs.i.i.i155:                                ; preds = %do.body.i.i.i152
  %dec.i.i.i153 = add nsw i32 %timeout.0.i.i.i150, -1
  %tobool1.not.i.i.i154 = icmp eq i32 %dec.i.i.i153, 0
  br i1 %tobool1.not.i.i.i154, label %land.rhs.i.i.i155.jz4740_rtc_reg_write.exit_crit_edge, label %land.rhs.i.i.i155.do.body.i.i.i152_crit_edge

land.rhs.i.i.i155.do.body.i.i.i152_crit_edge:     ; preds = %land.rhs.i.i.i155
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i152

land.rhs.i.i.i155.jz4740_rtc_reg_write.exit_crit_edge: ; preds = %land.rhs.i.i.i155
  call void @__sanitizer_cov_trace_pc() #8
  br label %jz4740_rtc_reg_write.exit

do.body.i.i157:                                   ; preds = %do.body.i.i.i152
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  %add.ptr.i.i156 = getelementptr i8, ptr %58, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i156, i32 1520762880) #6, !srcloc !78
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %land.rhs.i.i.do.body1.i.i_crit_edge, %do.body.i.i157
  %timeout.0.i.i = phi i32 [ 10000, %do.body.i.i157 ], [ %dec.i.i, %land.rhs.i.i.do.body1.i.i_crit_edge ]
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %60, i32 60
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #6, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %.mask.i.i = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i)
  %tobool.not.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %do.body1.i.i.do.body.i15.i.preheader_crit_edge

do.body1.i.i.do.body.i15.i.preheader_crit_edge:   ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i.preheader

land.rhs.i.i:                                     ; preds = %do.body1.i.i
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %tobool7.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool7.not.i.i, label %land.rhs.i.i.jz4740_rtc_reg_write.exit_crit_edge, label %land.rhs.i.i.do.body1.i.i_crit_edge

land.rhs.i.i.do.body1.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i.i

land.rhs.i.i.jz4740_rtc_reg_write.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jz4740_rtc_reg_write.exit

do.body.i15.i:                                    ; preds = %land.rhs.i17.i.do.body.i15.i_crit_edge, %do.body.i15.i.preheader
  %timeout.0.i13.i = phi i32 [ %dec.i16.i, %land.rhs.i17.i.do.body.i15.i_crit_edge ], [ 10000, %do.body.i15.i.preheader ]
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #6, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %tobool.not.i14.i = icmp sgt i32 %64, -1
  br i1 %tobool.not.i14.i, label %land.rhs.i17.i, label %do.body.i

land.rhs.i17.i:                                   ; preds = %do.body.i15.i
  %dec.i16.i = add nsw i32 %timeout.0.i13.i, -1
  %tobool1.not.i.i = icmp eq i32 %dec.i16.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i17.i.jz4740_rtc_reg_write.exit_crit_edge, label %land.rhs.i17.i.do.body.i15.i_crit_edge

land.rhs.i17.i.do.body.i15.i_crit_edge:           ; preds = %land.rhs.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i

land.rhs.i17.i.jz4740_rtc_reg_write.exit_crit_edge: ; preds = %land.rhs.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jz4740_rtc_reg_write.exit

do.body.i:                                        ; preds = %do.body.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  call void @arm_heavy_mb() #6
  %65 = call i32 @llvm.bswap.i32(i32 %sub) #6
  %66 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %67, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %65) #6, !srcloc !78
  br label %jz4740_rtc_reg_write.exit

jz4740_rtc_reg_write.exit:                        ; preds = %do.body.i, %land.rhs.i17.i.jz4740_rtc_reg_write.exit_crit_edge, %land.rhs.i.i.jz4740_rtc_reg_write.exit_crit_edge, %land.rhs.i.i.i155.jz4740_rtc_reg_write.exit_crit_edge
  %68 = ptrtoint ptr %rtc45 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rtc45, align 4
  %call60 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %69) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %jz4740_rtc_reg_write.exit.cleanup_crit_edge

jz4740_rtc_reg_write.exit.cleanup_crit_edge:      ; preds = %jz4740_rtc_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end63:                                         ; preds = %jz4740_rtc_reg_write.exit
  %70 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev, align 8
  %call.i158 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call3, ptr noundef nonnull @jz4740_rtc_irq, ptr noundef null, i32 noundef 0, ptr noundef %71, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool65.not = icmp eq i32 %call.i158, 0
  br i1 %tobool65.not, label %if.end70, label %do.end69

do.end69:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %call.i158) #9
  br label %cleanup

if.end70:                                         ; preds = %if.end63
  %call.i.i = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef null) #6
  %tobool.i.i.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.i.not, label %if.end70.cleanup_crit_edge, label %if.then72

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then72:                                        ; preds = %if.end70
  store ptr %dev1, ptr @dev_for_power_off, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %72 = load ptr, ptr @pm_power_off, align 4
  %tobool73.not = icmp eq ptr %72, null
  br i1 %tobool73.not, label %if.then74, label %do.end77

if.then74:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @jz4740_rtc_power_off, ptr @pm_power_off, align 4
  br label %cleanup

do.end77:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.24) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %if.then74, %if.end70.cleanup_crit_edge, %do.end69, %jz4740_rtc_reg_write.exit.cleanup_crit_edge, %if.then48, %do.end42, %do.end30, %do.end23, %do.end, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then9 ], [ %6, %do.end ], [ %retval.0.i.ph, %do.end23 ], [ %call.i145, %do.end30 ], [ %call37, %do.end42 ], [ %9, %if.then48 ], [ %call.i158, %do.end69 ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call60, %jz4740_rtc_reg_write.exit.cleanup_crit_edge ], [ 0, %if.then74 ], [ 0, %do.end77 ], [ 0, %if.end70.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jz4740_rtc_clk_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #6
  tail call void @clk_unprepare(ptr noundef %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4740_rtc_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !75
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 144
  %and1 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %or4 = or i32 %spec.select, 160
  %events.1 = select i1 %tobool2.not, i32 %spec.select, i32 %or4
  %rtc6 = getelementptr inbounds %struct.jz4740_rtc, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %rtc6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc6, align 4
  tail call void @rtc_update_irq(ptr noundef %5, i32 noundef 1, i32 noundef %events.1) #6
  %call7 = tail call fastcc i32 @jz4740_rtc_ctrl_set_bits(ptr noundef %data, i32 noundef 80, i1 noundef zeroext false)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jz4740_rtc_power_off() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dev_for_power_off, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.jz4740_rtc, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i.i, label %entry.do.body.i15.i.i.preheader_crit_edge, label %entry.do.body.i.i.i.i_crit_edge

entry.do.body.i.i.i.i_crit_edge:                  ; preds = %entry
  br label %do.body.i.i.i.i

entry.do.body.i15.i.i.preheader_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i.i.preheader

do.body.i15.i.i.preheader:                        ; preds = %do.body1.i.i.i.do.body.i15.i.i.preheader_crit_edge, %entry.do.body.i15.i.i.preheader_crit_edge
  br label %do.body.i15.i.i

do.body.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry.do.body.i.i.i.i_crit_edge
  %timeout.0.i.i.i.i = phi i32 [ %dec.i.i.i.i, %land.rhs.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ 10000, %entry.do.body.i.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %tobool.not.i.i.i.i, label %land.rhs.i.i.i.i, label %do.body.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %do.body.i.i.i.i
  %dec.i.i.i.i = add nsw i32 %timeout.0.i.i.i.i, -1
  %tobool1.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %land.rhs.i.i.i.i.jz4740_rtc_poweroff.exit_crit_edge, label %land.rhs.i.i.i.i.do.body.i.i.i.i_crit_edge

land.rhs.i.i.i.i.do.body.i.i.i.i_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i

land.rhs.i.i.i.i.jz4740_rtc_poweroff.exit_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jz4740_rtc_poweroff.exit

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1520762880) #6, !srcloc !78
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %land.rhs.i.i.i.do.body1.i.i.i_crit_edge, %do.body.i.i.i
  %timeout.0.i.i.i = phi i32 [ 10000, %do.body.i.i.i ], [ %dec.i.i.i, %land.rhs.i.i.i.do.body1.i.i.i_crit_edge ]
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %11, i32 60
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i.i) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %.mask.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %.mask.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %do.body1.i.i.i.do.body.i15.i.i.preheader_crit_edge

do.body1.i.i.i.do.body.i15.i.i.preheader_crit_edge: ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i.i.preheader

land.rhs.i.i.i:                                   ; preds = %do.body1.i.i.i
  %dec.i.i.i = add nsw i32 %timeout.0.i.i.i, -1
  %tobool7.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %land.rhs.i.i.i.jz4740_rtc_poweroff.exit_crit_edge, label %land.rhs.i.i.i.do.body1.i.i.i_crit_edge

land.rhs.i.i.i.do.body1.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i.i.i

land.rhs.i.i.i.jz4740_rtc_poweroff.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jz4740_rtc_poweroff.exit

do.body.i15.i.i:                                  ; preds = %land.rhs.i17.i.i.do.body.i15.i.i_crit_edge, %do.body.i15.i.i.preheader
  %timeout.0.i13.i.i = phi i32 [ %dec.i16.i.i, %land.rhs.i17.i.i.do.body.i15.i.i_crit_edge ], [ 10000, %do.body.i15.i.i.preheader ]
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool.not.i14.i.i = icmp sgt i32 %15, -1
  br i1 %tobool.not.i14.i.i, label %land.rhs.i17.i.i, label %do.body.i.i

land.rhs.i17.i.i:                                 ; preds = %do.body.i15.i.i
  %dec.i16.i.i = add nsw i32 %timeout.0.i13.i.i, -1
  %tobool1.not.i.i.i = icmp eq i32 %dec.i16.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i17.i.i.jz4740_rtc_poweroff.exit_crit_edge, label %land.rhs.i17.i.i.do.body.i15.i.i_crit_edge

land.rhs.i17.i.i.do.body.i15.i.i_crit_edge:       ; preds = %land.rhs.i17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i.i

land.rhs.i17.i.i.jz4740_rtc_poweroff.exit_crit_edge: ; preds = %land.rhs.i17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jz4740_rtc_poweroff.exit

do.body.i.i:                                      ; preds = %do.body.i15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %2, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #6, !srcloc !78
  br label %jz4740_rtc_poweroff.exit

jz4740_rtc_poweroff.exit:                         ; preds = %do.body.i.i, %land.rhs.i17.i.i.jz4740_rtc_poweroff.exit_crit_edge, %land.rhs.i.i.i.jz4740_rtc_poweroff.exit_crit_edge, %land.rhs.i.i.i.i.jz4740_rtc_poweroff.exit_crit_edge
  tail call void @kernel_halt() #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4740_rtc_read_time(ptr nocapture noundef readonly %dev, ptr noundef %time) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 52
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 2018915346, i32 %4)
  %cmp.not = icmp eq i32 %4, 2018915346
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr.i18 = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #6, !srcloc !75
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr.i19 = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp4.not22 = icmp eq i32 %7, %11
  br i1 %cmp4.not22, label %if.end.if.end8_crit_edge, label %land.rhs.preheader

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.rhs.preheader:                               ; preds = %if.end
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr.i20 = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp4.not = icmp eq i32 %11, %15
  br i1 %cmp4.not, label %land.rhs.preheader.if.end8_crit_edge, label %land.rhs.1

land.rhs.preheader.if.end8_crit_edge:             ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.rhs.1:                                       ; preds = %land.rhs.preheader
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i20.1 = getelementptr i8, ptr %18, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.1) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp4.not.1 = icmp eq i32 %15, %19
  br i1 %cmp4.not.1, label %land.rhs.1.if.end8_crit_edge, label %land.rhs.2

land.rhs.1.if.end8_crit_edge:                     ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.rhs.2:                                       ; preds = %land.rhs.1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %add.ptr.i20.2 = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.2) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %23)
  %cmp4.not.2 = icmp eq i32 %19, %23
  br i1 %cmp4.not.2, label %land.rhs.2.if.end8_crit_edge, label %land.rhs.3

land.rhs.2.if.end8_crit_edge:                     ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.rhs.3:                                       ; preds = %land.rhs.2
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr.i20.3 = getelementptr i8, ptr %26, i32 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.3) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %27)
  %cmp4.not.3 = icmp eq i32 %23, %27
  br i1 %cmp4.not.3, label %land.rhs.3.if.end8_crit_edge, label %land.rhs.3.cleanup_crit_edge

land.rhs.3.cleanup_crit_edge:                     ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs.3.if.end8_crit_edge:                     ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %land.rhs.3.if.end8_crit_edge, %land.rhs.2.if.end8_crit_edge, %land.rhs.1.if.end8_crit_edge, %land.rhs.preheader.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %secs.0.lcssa = phi i32 [ %8, %if.end.if.end8_crit_edge ], [ %12, %land.rhs.preheader.if.end8_crit_edge ], [ %16, %land.rhs.1.if.end8_crit_edge ], [ %20, %land.rhs.2.if.end8_crit_edge ], [ %24, %land.rhs.3.if.end8_crit_edge ]
  %conv = zext i32 %secs.0.lcssa to i64
  tail call void @rtc_time64_to_tm(i64 noundef %conv, ptr noundef %time) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.rhs.3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -5, %land.rhs.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4740_rtc_set_time(ptr nocapture noundef readonly %dev, ptr noundef %time) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #6
  %conv = trunc i64 %call1 to i32
  %type.i = getelementptr inbounds %struct.jz4740_rtc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %entry.do.body.i15.i.preheader_crit_edge, label %entry.do.body.i.i.i_crit_edge

entry.do.body.i.i.i_crit_edge:                    ; preds = %entry
  br label %do.body.i.i.i

entry.do.body.i15.i.preheader_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i.preheader

do.body.i15.i.preheader:                          ; preds = %do.body1.i.i.do.body.i15.i.preheader_crit_edge, %entry.do.body.i15.i.preheader_crit_edge
  br label %do.body.i15.i

do.body.i.i.i:                                    ; preds = %land.rhs.i.i.i.do.body.i.i.i_crit_edge, %entry.do.body.i.i.i_crit_edge
  %timeout.0.i.i.i = phi i32 [ %dec.i.i.i, %land.rhs.i.i.i.do.body.i.i.i_crit_edge ], [ 10000, %entry.do.body.i.i.i_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool.not.i.i.i = icmp sgt i32 %6, -1
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %do.body.i.i

land.rhs.i.i.i:                                   ; preds = %do.body.i.i.i
  %dec.i.i.i = add nsw i32 %timeout.0.i.i.i, -1
  %tobool1.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i.cleanup_crit_edge, label %land.rhs.i.i.i.do.body.i.i.i_crit_edge

land.rhs.i.i.i.do.body.i.i.i_crit_edge:           ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i

land.rhs.i.i.i.cleanup_crit_edge:                 ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i.i:                                      ; preds = %do.body.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1520762880) #6, !srcloc !78
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %land.rhs.i.i.do.body1.i.i_crit_edge, %do.body.i.i
  %timeout.0.i.i = phi i32 [ 10000, %do.body.i.i ], [ %dec.i.i, %land.rhs.i.i.do.body1.i.i_crit_edge ]
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %10, i32 60
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %.mask.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i)
  %tobool.not.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %do.body1.i.i.do.body.i15.i.preheader_crit_edge

do.body1.i.i.do.body.i15.i.preheader_crit_edge:   ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i.preheader

land.rhs.i.i:                                     ; preds = %do.body1.i.i
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %tobool7.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool7.not.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %land.rhs.i.i.do.body1.i.i_crit_edge

land.rhs.i.i.do.body1.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i.i

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i15.i:                                    ; preds = %land.rhs.i17.i.do.body.i15.i_crit_edge, %do.body.i15.i.preheader
  %timeout.0.i13.i = phi i32 [ %dec.i16.i, %land.rhs.i17.i.do.body.i15.i_crit_edge ], [ 10000, %do.body.i15.i.preheader ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %tobool.not.i14.i = icmp sgt i32 %14, -1
  br i1 %tobool.not.i14.i, label %land.rhs.i17.i, label %if.end

land.rhs.i17.i:                                   ; preds = %do.body.i15.i
  %dec.i16.i = add nsw i32 %timeout.0.i13.i, -1
  %tobool1.not.i.i = icmp eq i32 %dec.i16.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i17.i.cleanup_crit_edge, label %land.rhs.i17.i.do.body.i15.i_crit_edge

land.rhs.i17.i.do.body.i15.i_crit_edge:           ; preds = %land.rhs.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i

land.rhs.i17.i.cleanup_crit_edge:                 ; preds = %land.rhs.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %do.body.i15.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv) #6
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #6, !srcloc !78
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i8 = icmp eq i32 %19, 0
  br i1 %cmp.not.i8, label %if.end.do.body.i15.i28.preheader_crit_edge, label %if.end.do.body.i.i.i11_crit_edge

if.end.do.body.i.i.i11_crit_edge:                 ; preds = %if.end
  br label %do.body.i.i.i11

if.end.do.body.i15.i28.preheader_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i28.preheader

do.body.i15.i28.preheader:                        ; preds = %do.body1.i.i21.do.body.i15.i28.preheader_crit_edge, %if.end.do.body.i15.i28.preheader_crit_edge
  br label %do.body.i15.i28

do.body.i.i.i11:                                  ; preds = %land.rhs.i.i.i14.do.body.i.i.i11_crit_edge, %if.end.do.body.i.i.i11_crit_edge
  %timeout.0.i.i.i9 = phi i32 [ %dec.i.i.i12, %land.rhs.i.i.i14.do.body.i.i.i11_crit_edge ], [ 10000, %if.end.do.body.i.i.i11_crit_edge ]
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %tobool.not.i.i.i10 = icmp sgt i32 %22, -1
  br i1 %tobool.not.i.i.i10, label %land.rhs.i.i.i14, label %do.body.i.i16

land.rhs.i.i.i14:                                 ; preds = %do.body.i.i.i11
  %dec.i.i.i12 = add nsw i32 %timeout.0.i.i.i9, -1
  %tobool1.not.i.i.i13 = icmp eq i32 %dec.i.i.i12, 0
  br i1 %tobool1.not.i.i.i13, label %land.rhs.i.i.i14.cleanup_crit_edge, label %land.rhs.i.i.i14.do.body.i.i.i11_crit_edge

land.rhs.i.i.i14.do.body.i.i.i11_crit_edge:       ; preds = %land.rhs.i.i.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i11

land.rhs.i.i.i14.cleanup_crit_edge:               ; preds = %land.rhs.i.i.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i.i16:                                    ; preds = %do.body.i.i.i11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %24, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i15, i32 1520762880) #6, !srcloc !78
  br label %do.body1.i.i21

do.body1.i.i21:                                   ; preds = %land.rhs.i.i24.do.body1.i.i21_crit_edge, %do.body.i.i16
  %timeout.0.i.i17 = phi i32 [ 10000, %do.body.i.i16 ], [ %dec.i.i22, %land.rhs.i.i24.do.body1.i.i21_crit_edge ]
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr3.i.i18 = getelementptr i8, ptr %26, i32 60
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i18) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %.mask.i.i19 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i19)
  %tobool.not.i.i20 = icmp eq i32 %.mask.i.i19, 0
  br i1 %tobool.not.i.i20, label %land.rhs.i.i24, label %do.body1.i.i21.do.body.i15.i28.preheader_crit_edge

do.body1.i.i21.do.body.i15.i28.preheader_crit_edge: ; preds = %do.body1.i.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i28.preheader

land.rhs.i.i24:                                   ; preds = %do.body1.i.i21
  %dec.i.i22 = add nsw i32 %timeout.0.i.i17, -1
  %tobool7.not.i.i23 = icmp eq i32 %dec.i.i22, 0
  br i1 %tobool7.not.i.i23, label %land.rhs.i.i24.cleanup_crit_edge, label %land.rhs.i.i24.do.body1.i.i21_crit_edge

land.rhs.i.i24.do.body1.i.i21_crit_edge:          ; preds = %land.rhs.i.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i.i21

land.rhs.i.i24.cleanup_crit_edge:                 ; preds = %land.rhs.i.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i15.i28:                                  ; preds = %land.rhs.i17.i31.do.body.i15.i28_crit_edge, %do.body.i15.i28.preheader
  %timeout.0.i13.i26 = phi i32 [ %dec.i16.i29, %land.rhs.i17.i31.do.body.i15.i28_crit_edge ], [ 10000, %do.body.i15.i28.preheader ]
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %tobool.not.i14.i27 = icmp sgt i32 %30, -1
  br i1 %tobool.not.i14.i27, label %land.rhs.i17.i31, label %do.body.i33

land.rhs.i17.i31:                                 ; preds = %do.body.i15.i28
  %dec.i16.i29 = add nsw i32 %timeout.0.i13.i26, -1
  %tobool1.not.i.i30 = icmp eq i32 %dec.i16.i29, 0
  br i1 %tobool1.not.i.i30, label %land.rhs.i17.i31.cleanup_crit_edge, label %land.rhs.i17.i31.do.body.i15.i28_crit_edge

land.rhs.i17.i31.do.body.i15.i28_crit_edge:       ; preds = %land.rhs.i17.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i28

land.rhs.i17.i31.cleanup_crit_edge:               ; preds = %land.rhs.i17.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i33:                                      ; preds = %do.body.i15.i28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %add.ptr.i32 = getelementptr i8, ptr %32, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 2018915346) #6, !srcloc !78
  br label %cleanup

cleanup:                                          ; preds = %do.body.i33, %land.rhs.i17.i31.cleanup_crit_edge, %land.rhs.i.i24.cleanup_crit_edge, %land.rhs.i.i.i14.cleanup_crit_edge, %land.rhs.i17.i.cleanup_crit_edge, %land.rhs.i.i.cleanup_crit_edge, %land.rhs.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body.i33 ], [ -5, %land.rhs.i17.i31.cleanup_crit_edge ], [ -5, %land.rhs.i.i24.cleanup_crit_edge ], [ -5, %land.rhs.i.i.i14.cleanup_crit_edge ], [ -5, %land.rhs.i17.i.cleanup_crit_edge ], [ -5, %land.rhs.i.i.cleanup_crit_edge ], [ -5, %land.rhs.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4740_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !75
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !75
  %9 = lshr i32 %8, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  %10 = trunc i32 %9 to i8
  %11 = lshr i8 %10, 2
  %12 = and i8 %11, 1
  %13 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %alrm, align 4
  %14 = lshr i8 %10, 4
  %15 = and i8 %14, 1
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %16 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %pending, align 1
  %conv11 = zext i32 %5 to i64
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  tail call void @rtc_time64_to_tm(i64 noundef %conv11, ptr noundef %time) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4740_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #6
  %conv = trunc i64 %call1 to i32
  %type.i = getelementptr inbounds %struct.jz4740_rtc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %entry.do.body.i15.i.preheader_crit_edge, label %entry.do.body.i.i.i_crit_edge

entry.do.body.i.i.i_crit_edge:                    ; preds = %entry
  br label %do.body.i.i.i

entry.do.body.i15.i.preheader_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i.preheader

do.body.i15.i.preheader:                          ; preds = %do.body1.i.i.do.body.i15.i.preheader_crit_edge, %entry.do.body.i15.i.preheader_crit_edge
  br label %do.body.i15.i

do.body.i.i.i:                                    ; preds = %land.rhs.i.i.i.do.body.i.i.i_crit_edge, %entry.do.body.i.i.i_crit_edge
  %timeout.0.i.i.i = phi i32 [ %dec.i.i.i, %land.rhs.i.i.i.do.body.i.i.i_crit_edge ], [ 10000, %entry.do.body.i.i.i_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool.not.i.i.i = icmp sgt i32 %6, -1
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %do.body.i.i

land.rhs.i.i.i:                                   ; preds = %do.body.i.i.i
  %dec.i.i.i = add nsw i32 %timeout.0.i.i.i, -1
  %tobool1.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i.if.end_crit_edge, label %land.rhs.i.i.i.do.body.i.i.i_crit_edge

land.rhs.i.i.i.do.body.i.i.i_crit_edge:           ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i

land.rhs.i.i.i.if.end_crit_edge:                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body.i.i:                                      ; preds = %do.body.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1520762880) #6, !srcloc !78
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %land.rhs.i.i.do.body1.i.i_crit_edge, %do.body.i.i
  %timeout.0.i.i = phi i32 [ 10000, %do.body.i.i ], [ %dec.i.i, %land.rhs.i.i.do.body1.i.i_crit_edge ]
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %10, i32 60
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %.mask.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i)
  %tobool.not.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %do.body1.i.i.do.body.i15.i.preheader_crit_edge

do.body1.i.i.do.body.i15.i.preheader_crit_edge:   ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i.preheader

land.rhs.i.i:                                     ; preds = %do.body1.i.i
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %tobool7.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool7.not.i.i, label %land.rhs.i.i.if.end_crit_edge, label %land.rhs.i.i.do.body1.i.i_crit_edge

land.rhs.i.i.do.body1.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i.i

land.rhs.i.i.if.end_crit_edge:                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body.i15.i:                                    ; preds = %land.rhs.i17.i.do.body.i15.i_crit_edge, %do.body.i15.i.preheader
  %timeout.0.i13.i = phi i32 [ %dec.i16.i, %land.rhs.i17.i.do.body.i15.i_crit_edge ], [ 10000, %do.body.i15.i.preheader ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %tobool.not.i14.i = icmp sgt i32 %14, -1
  br i1 %tobool.not.i14.i, label %land.rhs.i17.i, label %if.then

land.rhs.i17.i:                                   ; preds = %do.body.i15.i
  %dec.i16.i = add nsw i32 %timeout.0.i13.i, -1
  %tobool1.not.i.i = icmp eq i32 %dec.i16.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i17.i.if.end_crit_edge, label %land.rhs.i17.i.do.body.i15.i_crit_edge

land.rhs.i17.i.do.body.i15.i_crit_edge:           ; preds = %land.rhs.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i

land.rhs.i17.i.if.end_crit_edge:                  ; preds = %land.rhs.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %do.body.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv) #6
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #6, !srcloc !78
  %18 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool3 = icmp ne i8 %19, 0
  %call4 = tail call fastcc i32 @jz4740_rtc_ctrl_set_bits(ptr noundef %1, i32 noundef 12, i1 noundef zeroext %tobool3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs.i17.i.if.end_crit_edge, %land.rhs.i.i.if.end_crit_edge, %land.rhs.i.i.i.if.end_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then ], [ -5, %land.rhs.i17.i.if.end_crit_edge ], [ -5, %land.rhs.i.i.if.end_crit_edge ], [ -5, %land.rhs.i.i.i.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4740_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool = icmp ne i32 %enable, 0
  %call1 = tail call fastcc i32 @jz4740_rtc_ctrl_set_bits(ptr noundef %1, i32 noundef 8, i1 noundef zeroext %tobool)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jz4740_rtc_ctrl_set_bits(ptr noundef %rtc, i32 noundef %mask, i1 noundef zeroext %set) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.jz4740_rtc, ptr %rtc, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %0 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  %3 = or i32 %2, 1342177280
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or6 = or i32 %4, %mask
  %neg = xor i32 %mask, -1
  %and = and i32 %4, %neg
  %ctrl.0 = select i1 %set, i32 %or6, i32 %and
  %type.i = getelementptr inbounds %struct.jz4740_rtc, ptr %rtc, i32 0, i32 1
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i, label %entry.do.body.i15.i.preheader_crit_edge, label %entry.do.body.i.i.i_crit_edge

entry.do.body.i.i.i_crit_edge:                    ; preds = %entry
  br label %do.body.i.i.i

entry.do.body.i15.i.preheader_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i.preheader

do.body.i15.i.preheader:                          ; preds = %do.body1.i.i.do.body.i15.i.preheader_crit_edge, %entry.do.body.i15.i.preheader_crit_edge
  br label %do.body.i15.i

do.body.i.i.i:                                    ; preds = %land.rhs.i.i.i.do.body.i.i.i_crit_edge, %entry.do.body.i.i.i_crit_edge
  %timeout.0.i.i.i = phi i32 [ %dec.i.i.i, %land.rhs.i.i.i.do.body.i.i.i_crit_edge ], [ 10000, %entry.do.body.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtc, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %do.body.i.i

land.rhs.i.i.i:                                   ; preds = %do.body.i.i.i
  %dec.i.i.i = add nsw i32 %timeout.0.i.i.i, -1
  %tobool1.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i.jz4740_rtc_reg_write.exit_crit_edge, label %land.rhs.i.i.i.do.body.i.i.i_crit_edge

land.rhs.i.i.i.do.body.i.i.i_crit_edge:           ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i

land.rhs.i.i.i.jz4740_rtc_reg_write.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jz4740_rtc_reg_write.exit

do.body.i.i:                                      ; preds = %do.body.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtc, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1520762880) #6, !srcloc !78
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %land.rhs.i.i.do.body1.i.i_crit_edge, %do.body.i.i
  %timeout.0.i.i = phi i32 [ 10000, %do.body.i.i ], [ %dec.i.i, %land.rhs.i.i.do.body1.i.i_crit_edge ]
  %12 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rtc, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %13, i32 60
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %.mask.i.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i)
  %tobool.not.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %do.body1.i.i.do.body.i15.i.preheader_crit_edge

do.body1.i.i.do.body.i15.i.preheader_crit_edge:   ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i.preheader

land.rhs.i.i:                                     ; preds = %do.body1.i.i
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %tobool7.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool7.not.i.i, label %land.rhs.i.i.jz4740_rtc_reg_write.exit_crit_edge, label %land.rhs.i.i.do.body1.i.i_crit_edge

land.rhs.i.i.do.body1.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i.i

land.rhs.i.i.jz4740_rtc_reg_write.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jz4740_rtc_reg_write.exit

do.body.i15.i:                                    ; preds = %land.rhs.i17.i.do.body.i15.i_crit_edge, %do.body.i15.i.preheader
  %timeout.0.i13.i = phi i32 [ %dec.i16.i, %land.rhs.i17.i.do.body.i15.i_crit_edge ], [ 10000, %do.body.i15.i.preheader ]
  %15 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rtc, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool.not.i14.i = icmp sgt i32 %17, -1
  br i1 %tobool.not.i14.i, label %land.rhs.i17.i, label %do.body.i

land.rhs.i17.i:                                   ; preds = %do.body.i15.i
  %dec.i16.i = add nsw i32 %timeout.0.i13.i, -1
  %tobool1.not.i.i = icmp eq i32 %dec.i16.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i17.i.jz4740_rtc_reg_write.exit_crit_edge, label %land.rhs.i17.i.do.body.i15.i_crit_edge

land.rhs.i17.i.do.body.i15.i_crit_edge:           ; preds = %land.rhs.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15.i

land.rhs.i17.i.jz4740_rtc_reg_write.exit_crit_edge: ; preds = %land.rhs.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jz4740_rtc_reg_write.exit

do.body.i:                                        ; preds = %do.body.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0) #6
  %19 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rtc, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !78
  br label %jz4740_rtc_reg_write.exit

jz4740_rtc_reg_write.exit:                        ; preds = %do.body.i, %land.rhs.i17.i.jz4740_rtc_reg_write.exit_crit_edge, %land.rhs.i.i.jz4740_rtc_reg_write.exit_crit_edge, %land.rhs.i.i.i.jz4740_rtc_reg_write.exit_crit_edge
  %ret.122.i = phi i32 [ 0, %do.body.i ], [ -5, %land.rhs.i17.i.jz4740_rtc_reg_write.exit_crit_edge ], [ -5, %land.rhs.i.i.jz4740_rtc_reg_write.exit_crit_edge ], [ -5, %land.rhs.i.i.i.jz4740_rtc_reg_write.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret i32 %ret.122.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_halt() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_rtc_jz4740__227_409_jz4740_rtc_driver_init6, !1, !"__initcall__kmod_rtc_jz4740__227_409_jz4740_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-jz4740.c", i32 409, i32 1}
!2 = !{ptr @__exitcall_jz4740_rtc_driver_exit, !1, !"__exitcall_jz4740_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-jz4740.c", i32 411, i32 1}
!5 = !{ptr @__UNIQUE_ID_file229, !6, !"__UNIQUE_ID_file229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-jz4740.c", i32 412, i32 1}
!7 = !{ptr @__UNIQUE_ID_license230, !6, !"__UNIQUE_ID_license230", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description231, !9, !"__UNIQUE_ID_description231", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-jz4740.c", i32 413, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-jz4740.c", i32 414, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-jz4740.c", i32 404, i32 12}
!14 = !{ptr @jz4740_rtc_driver, !15, !"jz4740_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-jz4740.c", i32 401, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-jz4740.c", i32 332, i32 26}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-jz4740.c", i32 334, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @jz4740_rtc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @jz4740_rtc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-jz4740.c", i32 340, i32 3}
!28 = !{ptr @jz4740_rtc_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @jz4740_rtc_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-jz4740.c", i32 346, i32 3}
!32 = !{ptr @jz4740_rtc_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @jz4740_rtc_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @jz4740_rtc_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-jz4740.c", i32 350, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-jz4740.c", i32 358, i32 3}
!39 = !{ptr @jz4740_rtc_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @jz4740_rtc_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-jz4740.c", i32 365, i32 3}
!43 = !{ptr @jz4740_rtc_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @jz4740_rtc_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-jz4740.c", i32 385, i32 3}
!47 = !{ptr @jz4740_rtc_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @jz4740_rtc_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/rtc/rtc-jz4740.c", i32 395, i32 4}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @jz4740_rtc_probe._entry.23, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @jz4740_rtc_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @jz4740_rtc_ops, !55, !"jz4740_rtc_ops", i1 false, i1 false}
!55 = !{!"../drivers/rtc/rtc-jz4740.c", i32 219, i32 35}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/rtc/rtc-jz4740.c", i32 281, i32 27}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/rtc/rtc-jz4740.c", i32 283, i32 27}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/of.h", i32 1548, i32 35}
!62 = !{ptr @dev_for_power_off, !63, !"dev_for_power_off", i1 false, i1 false}
!63 = !{!"../drivers/rtc/rtc-jz4740.c", i32 62, i32 23}
!64 = !{ptr @jz4740_rtc_of_match, !65, !"jz4740_rtc_of_match", i1 false, i1 false}
!65 = !{!"../drivers/rtc/rtc-jz4740.c", i32 265, i32 34}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i64 2037493}
!76 = !{i64 2153987450}
!77 = !{i64 2153987936}
!78 = !{i64 2037075}
!79 = !{i64 2153988606}
!80 = !{i64 2153989073}
