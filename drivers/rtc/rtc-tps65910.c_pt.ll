; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-tps65910.c_pt.bc'
source_filename = "../drivers/rtc/rtc-tps65910.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.tps65910 = type { ptr, ptr, ptr, i32, ptr, i32, ptr }
%struct.tps65910_rtc = type { ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_tps65910__228_469_tps65910_rtc_driver_init6 = internal global ptr @tps65910_rtc_driver_init, section ".initcall6.init", align 4
@tps65910_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tps65910_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65910_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tps65910_rtc_driver_exit = internal global ptr @tps65910_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias229 = internal constant [41 x i8] c"rtc_tps65910.alias=platform:tps65910-rtc\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [61 x i8] c"rtc_tps65910.author=Venu Byravarasu <vbyravarasu@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [43 x i8] c"rtc_tps65910.file=drivers/rtc/rtc-tps65910\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [25 x i8] c"rtc_tps65910.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tps65910-rtc\00", [19 x i8] zeroinitializer }, align 32
@tps65910_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tps65910_rtc_suspend, ptr @tps65910_rtc_resume, ptr @tps65910_rtc_suspend, ptr @tps65910_rtc_resume, ptr @tps65910_rtc_suspend, ptr @tps65910_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tps65910_rtc_probe.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 98, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtc_tps65910\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tps65910_rtc_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/rtc/rtc-tps65910.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Enabling rtc-tps65910.\0A\00", [40 x i8] zeroinitializer }, align 32
@tps65910_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 411, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Wake up is not possible as irq = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps65910_rtc_probe._entry_ptr = internal global ptr @tps65910_rtc_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@tps65910_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @tps65910_rtc_read_time, ptr @tps65910_rtc_set_time, ptr @tps65910_rtc_read_alarm, ptr @tps65910_rtc_set_alarm, ptr null, ptr @tps65910_rtc_alarm_irq_enable, ptr @tps65910_read_offset, ptr @tps65910_set_offset, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@tps65910_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 78, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RTC CTRL reg update failed with err:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tps65910_rtc_read_time\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@tps65910_rtc_read_time._entry_ptr = internal global ptr @tps65910_rtc_read_time._entry, section ".printk_index", align 4
@tps65910_rtc_read_time._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.3, i32 85, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"reading from RTC failed with err:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@tps65910_rtc_read_time._entry_ptr.14 = internal global ptr @tps65910_rtc_read_time._entry.12, section ".printk_index", align 4
@tps65910_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 116, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RTC stop failed with err:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tps65910_rtc_set_time\00", [42 x i8] zeroinitializer }, align 32
@tps65910_rtc_set_time._entry_ptr = internal global ptr @tps65910_rtc_set_time._entry, section ".printk_index", align 4
@tps65910_rtc_set_time._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 124, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtc_set_time error %d\0A\00", [41 x i8] zeroinitializer }, align 32
@tps65910_rtc_set_time._entry_ptr.19 = internal global ptr @tps65910_rtc_set_time._entry.17, section ".printk_index", align 4
@tps65910_rtc_set_time._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 132, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RTC start failed with err:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@tps65910_rtc_set_time._entry_ptr.22 = internal global ptr @tps65910_rtc_set_time._entry.20, section ".printk_index", align 4
@tps65910_rtc_read_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 150, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtc_read_alarm error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tps65910_rtc_read_alarm\00", [40 x i8] zeroinitializer }, align 32
@tps65910_rtc_read_alarm._entry_ptr = internal global ptr @tps65910_rtc_read_alarm._entry, section ".printk_index", align 4
@tps65910_rtc_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 192, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtc_set_alarm error %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tps65910_rtc_set_alarm\00", [41 x i8] zeroinitializer }, align 32
@tps65910_rtc_set_alarm._entry_ptr = internal global ptr @tps65910_rtc_set_alarm._entry, section ".printk_index", align 4
@tps65910_rtc_get_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 268, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtc_get_calibration error: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tps65910_rtc_get_calibration\00", [35 x i8] zeroinitializer }, align 32
@tps65910_rtc_get_calibration._entry_ptr = internal global ptr @tps65910_rtc_get_calibration._entry, section ".printk_index", align 4
@tps65910_rtc_set_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 221, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RTC calibration value out of range: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tps65910_rtc_set_calibration\00", [35 x i8] zeroinitializer }, align 32
@tps65910_rtc_set_calibration._entry_ptr = internal global ptr @tps65910_rtc_set_calibration._entry, section ".printk_index", align 4
@tps65910_rtc_set_calibration._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 234, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtc_set_calibration error: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tps65910_rtc_set_calibration._entry_ptr.33 = internal global ptr @tps65910_rtc_set_calibration._entry.31, section ".printk_index", align 4
@tps65910_rtc_set_calibration._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.3, i32 242, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"auto_comp enable failed with error: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@tps65910_rtc_set_calibration._entry_ptr.36 = internal global ptr @tps65910_rtc_set_calibration._entry.34, section ".printk_index", align 4
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"tps65910_rtc_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 461, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 464, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"tps65910_rtc_pm_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 458, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 393, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 410, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 423, i32 46 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"tps65910_rtc_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 355, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 78, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 85, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 116, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 124, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 132, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 150, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 192, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 268, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 220, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 234, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private constant [30 x i8] c"../drivers/rtc/rtc-tps65910.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 242, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_alias229, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_tps65910_rtc_driver_exit, ptr @__initcall__kmod_rtc_tps65910__228_469_tps65910_rtc_driver_init6, ptr @tps65910_rtc_driver_exit, ptr @tps65910_rtc_get_calibration._entry, ptr @tps65910_rtc_get_calibration._entry_ptr, ptr @tps65910_rtc_probe._entry, ptr @tps65910_rtc_probe._entry_ptr, ptr @tps65910_rtc_read_alarm._entry, ptr @tps65910_rtc_read_alarm._entry_ptr, ptr @tps65910_rtc_read_time._entry, ptr @tps65910_rtc_read_time._entry.12, ptr @tps65910_rtc_read_time._entry_ptr, ptr @tps65910_rtc_read_time._entry_ptr.14, ptr @tps65910_rtc_set_alarm._entry, ptr @tps65910_rtc_set_alarm._entry_ptr, ptr @tps65910_rtc_set_calibration._entry, ptr @tps65910_rtc_set_calibration._entry.31, ptr @tps65910_rtc_set_calibration._entry.34, ptr @tps65910_rtc_set_calibration._entry_ptr, ptr @tps65910_rtc_set_calibration._entry_ptr.33, ptr @tps65910_rtc_set_calibration._entry_ptr.36, ptr @tps65910_rtc_set_time._entry, ptr @tps65910_rtc_set_time._entry.17, ptr @tps65910_rtc_set_time._entry.20, ptr @tps65910_rtc_set_time._entry_ptr, ptr @tps65910_rtc_set_time._entry_ptr.19, ptr @tps65910_rtc_set_time._entry_ptr.22, ptr @tps65910_rtc_driver, ptr @.str, ptr @tps65910_rtc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @tps65910_rtc_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_rtc_read_time._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_rtc_set_time._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_rtc_set_time._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_rtc_read_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_rtc_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_rtc_get_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_rtc_set_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_rtc_set_calibration._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_rtc_set_calibration._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps65910_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps65910_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps65910_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %rtc_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rtc_reg) #6
  %0 = ptrtoint ptr %rtc_reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rtc_reg, align 4, !annotation !92
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #6
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %regmap = getelementptr inbounds %struct.tps65910, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call11 = call i32 @regmap_read(ptr noundef %8, i32 noundef 17, ptr noundef nonnull %rtc_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %11 = ptrtoint ptr %rtc_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rtc_reg, align 4
  %call15 = call i32 @regmap_write(ptr noundef %10, i32 noundef 17, i32 noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end13.cleanup_crit_edge, label %do.body

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tps65910_rtc_probe.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tps65910_rtc_probe, %do.end)) #6
          to label %if.then24 [label %do.end], !srcloc !93

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tps65910_rtc_probe.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.4) #6
  br label %do.end

do.end:                                           ; preds = %if.then24, %do.body
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i112 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 63, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %cmp29 = icmp slt i32 %call.i112, 0
  br i1 %cmp29, label %do.end.cleanup_crit_edge, label %if.end31

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %do.end
  %15 = ptrtoint ptr %rtc_reg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %rtc_reg, align 4
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call33 = call i32 @regmap_write(ptr noundef %17, i32 noundef 16, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end31.cleanup_crit_edge, label %if.end36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call37 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 1
  br i1 %cmp38, label %do.end42, label %if.end44

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %call37) #9
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end44.dev_name.exit_crit_edge

if.end44.dev_name.exit_crit_edge:                 ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end44.dev_name.exit_crit_edge
  %retval.0.i113 = phi ptr [ %22, %if.end.i ], [ %20, %if.end44.dev_name.exit_crit_edge ]
  %call49 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call37, ptr noundef null, ptr noundef nonnull @tps65910_rtc_interrupt, i32 noundef 8, ptr noundef %retval.0.i113, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call49)
  %cmp50.inv = icmp sgt i32 %call49, -1
  %spec.select = select i1 %cmp50.inv, i32 %call37, i32 -1
  %irq53 = getelementptr inbounds %struct.tps65910_rtc, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %irq53 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select, ptr %irq53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select)
  %cmp54.not = icmp eq i32 %spec.select, -1
  br i1 %cmp54.not, label %if.else63, label %if.then55

if.then55:                                        ; preds = %dev_name.exit
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %4, align 4
  %call57 = call zeroext i1 @device_property_present(ptr noundef %25, ptr noundef nonnull @.str.8) #6
  br i1 %call57, label %if.then58, label %if.else

if.then58:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  %call60 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %if.end65

if.else:                                          ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %if.end65

if.else63:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %features = getelementptr inbounds %struct.rtc_device, ptr %27, i32 0, i32 21
  call void @_clear_bit(i32 noundef 0, ptr noundef %features) #6
  br label %if.end65

if.end65:                                         ; preds = %if.else63, %if.else, %if.then58
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @tps65910_rtc_ops, ptr %ops, align 8
  %31 = load ptr, ptr %call.i, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %31, i32 0, i32 22
  %32 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 946684800, ptr %range_min, align 8
  %33 = load ptr, ptr %call.i, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %33, i32 0, i32 23
  %34 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 4102444799, ptr %range_max, align 8
  %35 = load ptr, ptr %call.i, align 4
  %call70 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %35) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %do.end42, %if.end31.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then7 ], [ -6, %do.end42 ], [ %call70, %if.end65 ], [ -12, %entry.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call15, %if.end13.cleanup_crit_edge ], [ %call.i112, %do.end.cleanup_crit_edge ], [ %call33, %if.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rtc_reg) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_rtc_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %rtc) #2 align 64 {
entry:
  %rtc_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i20 = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rtc_reg) #6
  %6 = ptrtoint ptr %rtc_reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %rtc_reg, align 4, !annotation !92
  %regmap = getelementptr inbounds %struct.tps65910, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %8, i32 noundef 17, ptr noundef nonnull %rtc_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %rtc_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rtc_reg, align 4
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call7 = call i32 @regmap_write(ptr noundef %12, i32 noundef 17, i32 noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool3.not, i32 0, i32 160
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  call void @rtc_update_irq(ptr noundef %14, i32 noundef 1, i32 noundef %spec.select) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rtc_reg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_rtc_read_time(ptr noundef %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %rtc_data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %rtc_data) #6
  %0 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 5
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %5 = call ptr @memset(ptr %rtc_data, i32 255, i32 6)
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.tps65910, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 16, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_bulk_read(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %rtc_data, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %cond.end

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call3) #9
  br label %cleanup

cond.end:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %rtc_data to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rtc_data, align 1
  %call14 = call i32 @_bcd2bin(i8 noundef zeroext %15) #10
  %16 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call14, ptr %tm, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %0, align 1
  %call27 = call i32 @_bcd2bin(i8 noundef zeroext %18) #10
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %19 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call27, ptr %tm_min, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 1
  %call42 = call i32 @_bcd2bin(i8 noundef zeroext %21) #10
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %22 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call42, ptr %tm_hour, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %2, align 1
  %call57 = call i32 @_bcd2bin(i8 noundef zeroext %24) #10
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %25 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call57, ptr %tm_mday, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %3, align 1
  %call72 = call i32 @_bcd2bin(i8 noundef zeroext %27) #10
  %sub = add i32 %call72, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %28 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub, ptr %tm_mon, align 4
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %4, align 1
  %call87 = call i32 @_bcd2bin(i8 noundef zeroext %30) #10
  %add90 = add i32 %call87, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %31 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add90, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end8, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call3, %do.end8 ], [ %call3, %cond.end ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %rtc_data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %rtc_data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %rtc_data) #6
  %0 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 5
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  %9 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm, align 4
  %call4 = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #10
  %11 = ptrtoint ptr %rtc_data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call4, ptr %rtc_data, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %12 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_min, align 4
  %call17 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #10
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call17, ptr %0, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %15 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_hour, align 4
  %call33 = tail call zeroext i8 @_bin2bcd(i32 noundef %16) #10
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call33, ptr %1, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %18 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_mday, align 4
  %call49 = tail call zeroext i8 @_bin2bcd(i32 noundef %19) #10
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call49, ptr %2, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %21 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tm_mon, align 4
  %add55 = add i32 %22, 1
  %call69 = tail call zeroext i8 @_bin2bcd(i32 noundef %add55) #10
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call69, ptr %3, align 1
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %24 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_year, align 4
  %sub = add i32 %25, -100
  %call88 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #10
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call88, ptr %4, align 1
  %regmap = getelementptr inbounds %struct.tps65910, ptr %8, i32 0, i32 2
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call97 = call i32 @regmap_bulk_write(ptr noundef %30, i32 noundef 0, ptr noundef nonnull %rtc_data, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %do.end103, label %if.end104

do.end103:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call97) #9
  br label %cleanup

if.end104:                                        ; preds = %if.end
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call.i152 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %cmp107 = icmp slt i32 %call.i152, 0
  br i1 %cmp107, label %do.end112, label %if.end104.cleanup_crit_edge

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end112:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call.i152) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end112, %if.end104.cleanup_crit_edge, %do.end103, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call97, %do.end103 ], [ %call.i152, %do.end112 ], [ %call.i152, %if.end104.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %rtc_data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_rtc_read_alarm(ptr noundef %dev, ptr nocapture noundef writeonly %alm) #2 align 64 {
entry:
  %alarm_data = alloca [6 x i8], align 1
  %int_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %alarm_data) #6
  %0 = call ptr @memset(ptr %alarm_data, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_val) #6
  %1 = ptrtoint ptr %int_val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %int_val, align 4, !annotation !92
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.tps65910, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 8, ptr noundef nonnull %alarm_data, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %cond.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call1) #9
  br label %cleanup

cond.end:                                         ; preds = %entry
  %8 = getelementptr inbounds [6 x i8], ptr %alarm_data, i32 0, i32 5
  %9 = getelementptr inbounds [6 x i8], ptr %alarm_data, i32 0, i32 4
  %10 = getelementptr inbounds [6 x i8], ptr %alarm_data, i32 0, i32 3
  %11 = getelementptr inbounds [6 x i8], ptr %alarm_data, i32 0, i32 2
  %12 = getelementptr inbounds [6 x i8], ptr %alarm_data, i32 0, i32 1
  %13 = ptrtoint ptr %alarm_data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %alarm_data, align 1
  %call6 = call i32 @_bcd2bin(i8 noundef zeroext %14) #10
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %15 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call6, ptr %time, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %12, align 1
  %call19 = call i32 @_bcd2bin(i8 noundef zeroext %17) #10
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call19, ptr %tm_min, align 4
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %11, align 1
  %call35 = call i32 @_bcd2bin(i8 noundef zeroext %20) #10
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call35, ptr %tm_hour, align 4
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %10, align 1
  %call51 = call i32 @_bcd2bin(i8 noundef zeroext %23) #10
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call51, ptr %tm_mday, align 4
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %9, align 1
  %call67 = call i32 @_bcd2bin(i8 noundef zeroext %26) #10
  %sub = add i32 %call67, -1
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub, ptr %tm_mon, align 4
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %8, align 1
  %call83 = call i32 @_bcd2bin(i8 noundef zeroext %29) #10
  %add86 = add i32 %call83, 100
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 5
  %30 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add86, ptr %tm_year, align 4
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call89 = call i32 @regmap_read(ptr noundef %32, i32 noundef 18, ptr noundef nonnull %int_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %cond.end.cleanup_crit_edge, label %if.end93

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end93:                                         ; preds = %cond.end
  %33 = ptrtoint ptr %int_val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %int_val, align 4
  %and94 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool.not = icmp eq i32 %and94, 0
  br i1 %tobool.not, label %if.end93.cleanup_crit_edge, label %if.then95

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %alm to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %alm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %if.end93.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call89, %cond.end.cleanup_crit_edge ], [ %call89, %if.then95 ], [ %call89, %if.end93.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_val) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %alarm_data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_rtc_set_alarm(ptr noundef %dev, ptr nocapture noundef readonly %alm) #2 align 64 {
entry:
  %alarm_data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %alarm_data) #6
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %regmap.i = getelementptr inbounds %struct.tps65910, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 18, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %cond.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end:                                         ; preds = %entry
  %6 = getelementptr inbounds [6 x i8], ptr %alarm_data, i32 0, i32 5
  %7 = getelementptr inbounds [6 x i8], ptr %alarm_data, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i8], ptr %alarm_data, i32 0, i32 3
  %9 = getelementptr inbounds [6 x i8], ptr %alarm_data, i32 0, i32 2
  %10 = getelementptr inbounds [6 x i8], ptr %alarm_data, i32 0, i32 1
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %11 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %time, align 4
  %call8 = tail call zeroext i8 @_bin2bcd(i32 noundef %12) #10
  %13 = ptrtoint ptr %alarm_data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call8, ptr %alarm_data, align 1
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_min, align 4
  %call25 = tail call zeroext i8 @_bin2bcd(i32 noundef %15) #10
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call25, ptr %10, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_hour, align 4
  %call45 = tail call zeroext i8 @_bin2bcd(i32 noundef %18) #10
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call45, ptr %9, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_mday, align 4
  %call65 = tail call zeroext i8 @_bin2bcd(i32 noundef %21) #10
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call65, ptr %8, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tm_mon, align 4
  %add72 = add i32 %24, 1
  %call89 = tail call zeroext i8 @_bin2bcd(i32 noundef %add72) #10
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call89, ptr %7, align 1
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 5
  %26 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm_year, align 4
  %sub = add i32 %27, -100
  %call112 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #10
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call112, ptr %6, align 1
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %call118 = call i32 @regmap_bulk_write(ptr noundef %30, i32 noundef 8, ptr noundef nonnull %alarm_data, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %do.end

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call118) #9
  br label %cleanup

if.end121:                                        ; preds = %cond.end
  %31 = ptrtoint ptr %alm to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %alm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool122.not = icmp eq i8 %32, 0
  br i1 %tobool122.not, label %if.end121.cleanup_crit_edge, label %if.then123

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then123:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent, align 8
  %driver_data.i.i161 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %driver_data.i.i161 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i.i161, align 4
  %regmap.i162 = getelementptr inbounds %struct.tps65910, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %regmap.i162 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i162, align 4
  %call1.i163 = call i32 @regmap_write(ptr noundef %38, i32 noundef 18, i32 noundef 8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then123, %if.end121.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call118, %do.end ], [ %call1.i, %entry.cleanup_crit_edge ], [ %call1.i163, %if.then123 ], [ 0, %if.end121.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %alarm_data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %regmap = getelementptr inbounds %struct.tps65910, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %conv = select i1 %tobool.not, i32 0, i32 8
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 18, i32 noundef %conv) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_read_offset(ptr noundef %dev, ptr nocapture noundef writeonly %offset) #2 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  %comp_data.i = alloca [2 x i8], align 1
  %ctrl.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %comp_data.i) #6
  %0 = ptrtoint ptr %comp_data.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %comp_data.i, align 1, !annotation !92
  %1 = getelementptr inbounds [2 x i8], ptr %comp_data.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !92
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl.i) #6
  %7 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %ctrl.i, align 4, !annotation !92
  %regmap.i = getelementptr inbounds %struct.tps65910, ptr %6, i32 0, i32 2
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 16, ptr noundef nonnull %ctrl.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %entry.tps65910_rtc_get_calibration.exit.thread_crit_edge, label %if.end.i

entry.tps65910_rtc_get_calibration.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps65910_rtc_get_calibration.exit.thread

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrl.i, align 4
  %and.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.thread, label %if.end3.i

if.end.thread:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %comp_data.i) #6
  br label %18

if.end3.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call5.i = call i32 @regmap_bulk_read(ptr noundef %13, i32 noundef 19, ptr noundef nonnull %comp_data.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.end.i, label %if.end

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call5.i) #9
  br label %tps65910_rtc_get_calibration.exit.thread

tps65910_rtc_get_calibration.exit.thread:         ; preds = %do.end.i, %entry.tps65910_rtc_get_calibration.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %entry.tps65910_rtc_get_calibration.exit.thread_crit_edge ], [ %call5.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %comp_data.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %comp_data.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %comp_data.i, align 1
  %conv9.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %1, align 1
  %conv12.i = zext i8 %17 to i16
  %shl.i = shl nuw i16 %conv12.i, 8
  %or.i = or i16 %shl.i, %conv9.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %comp_data.i) #6
  %conv = sext i16 %or.i to i64
  %mul = mul nsw i64 %conv, 1000000000
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %shl.i)
  %cmp1 = icmp slt i16 %shl.i, 0
  %spec.select.v = select i1 %cmp1, i64 -58982400, i64 58982400
  %spec.select = add nsw i64 %mul, %spec.select.v
  br label %18

18:                                               ; preds = %if.end, %if.end.thread
  %19 = phi i64 [ 58982400, %if.end.thread ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #6
  %20 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %remainder.i, align 4, !annotation !92
  %call.i = call i64 @div_s64_rem(i64 noundef %19, i32 noundef 117964800, ptr noundef nonnull %remainder.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #6
  %21 = trunc i64 %call.i to i32
  %conv7 = sub i32 0, %21
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv7, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %18, %tps65910_rtc_get_calibration.exit.thread
  %retval.0 = phi i32 [ 0, %18 ], [ %retval.0.i.ph, %tps65910_rtc_get_calibration.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_set_offset(ptr noundef %dev, i32 noundef %offset) #2 align 64 {
entry:
  %comp_data.i = alloca [2 x i8], align 1
  %remainder.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %offset, -277779
  call void @__sanitizer_cov_trace_const_cmp4(i32 -555540, i32 %0)
  %1 = icmp ult i32 %0, -555540
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = sext i32 %offset to i64
  %mul = mul nsw i64 %conv, 117964800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp2 = icmp slt i32 %offset, 0
  %tmp.0.v = select i1 %cmp2, i64 -500000000, i64 500000000
  %tmp.0 = add nsw i64 %mul, %tmp.0.v
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #6
  %2 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %remainder.i, align 4, !annotation !92
  %call.i = call i64 @div_s64_rem(i64 noundef %tmp.0, i32 noundef 1000000000, ptr noundef nonnull %remainder.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #6
  %3 = trunc i64 %call.i to i32
  %conv7 = sub i32 0, %3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %comp_data.i) #6
  %4 = add i32 %3, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65535, i32 %4)
  %5 = icmp ult i32 %4, -65535
  br i1 %5, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %conv7) #9
  br label %tps65910_rtc_set_calibration.exit

if.end.i:                                         ; preds = %if.end
  %6 = getelementptr inbounds [2 x i8], ptr %comp_data.i, i32 0, i32 1
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %conv3.i = trunc i32 %conv7 to i8
  %11 = ptrtoint ptr %comp_data.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv3.i, ptr %comp_data.i, align 1
  %conv2.i = lshr i32 %conv7, 8
  %conv6.i = trunc i32 %conv2.i to i8
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv6.i, ptr %6, align 1
  %regmap.i = getelementptr inbounds %struct.tps65910, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call8.i = call i32 @regmap_bulk_write(ptr noundef %14, i32 noundef 19, ptr noundef nonnull %comp_data.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %do.end14.i, label %if.end15.i

do.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %call8.i) #9
  br label %tps65910_rtc_set_calibration.exit

if.end15.i:                                       ; preds = %if.end.i
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 16, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp18.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp18.i, label %do.end23.i, label %if.end15.i.tps65910_rtc_set_calibration.exit_crit_edge

if.end15.i.tps65910_rtc_set_calibration.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps65910_rtc_set_calibration.exit

do.end23.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call.i.i) #9
  br label %tps65910_rtc_set_calibration.exit

tps65910_rtc_set_calibration.exit:                ; preds = %do.end23.i, %if.end15.i.tps65910_rtc_set_calibration.exit_crit_edge, %do.end14.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %call8.i, %do.end14.i ], [ %call.i.i, %do.end23.i ], [ %call.i.i, %if.end15.i.tps65910_rtc_set_calibration.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %comp_data.i) #6
  br label %cleanup

cleanup:                                          ; preds = %tps65910_rtc_set_calibration.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %tps65910_rtc_set_calibration.exit ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_rtc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %irq = getelementptr inbounds %struct.tps65910_rtc, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_rtc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %irq = getelementptr inbounds %struct.tps65910_rtc, ptr %1, i32 0, i32 1
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

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_rtc_tps65910__228_469_tps65910_rtc_driver_init6, !1, !"__initcall__kmod_rtc_tps65910__228_469_tps65910_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-tps65910.c", i32 469, i32 1}
!2 = !{ptr @__exitcall_tps65910_rtc_driver_exit, !1, !"__exitcall_tps65910_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias229, !4, !"__UNIQUE_ID_alias229", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-tps65910.c", i32 470, i32 1}
!5 = !{ptr @__UNIQUE_ID_author230, !6, !"__UNIQUE_ID_author230", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-tps65910.c", i32 471, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-tps65910.c", i32 472, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-tps65910.c", i32 464, i32 11}
!12 = !{ptr @tps65910_rtc_driver, !13, !"tps65910_rtc_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-tps65910.c", i32 461, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-tps65910.c", i32 393, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @tps65910_rtc_probe.__UNIQUE_ID_ddebug227, !15, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/rtc/rtc-tps65910.c", i32 410, i32 3}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tps65910_rtc_probe._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @tps65910_rtc_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-tps65910.c", i32 423, i32 46}
!28 = !{ptr @tps65910_rtc_ops, !29, !"tps65910_rtc_ops", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-tps65910.c", i32 355, i32 35}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-tps65910.c", i32 78, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tps65910_rtc_read_time._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @tps65910_rtc_read_time._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-tps65910.c", i32 85, i32 3}
!38 = !{ptr @tps65910_rtc_read_time._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tps65910_rtc_read_time._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-tps65910.c", i32 116, i32 3}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tps65910_rtc_set_time._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @tps65910_rtc_set_time._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-tps65910.c", i32 124, i32 3}
!47 = !{ptr @tps65910_rtc_set_time._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @tps65910_rtc_set_time._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/rtc/rtc-tps65910.c", i32 132, i32 3}
!51 = !{ptr @tps65910_rtc_set_time._entry.20, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @tps65910_rtc_set_time._entry_ptr.22, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-tps65910.c", i32 150, i32 3}
!55 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @tps65910_rtc_read_alarm._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @tps65910_rtc_read_alarm._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/rtc/rtc-tps65910.c", i32 192, i32 3}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @tps65910_rtc_set_alarm._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @tps65910_rtc_set_alarm._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-tps65910.c", i32 268, i32 3}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @tps65910_rtc_get_calibration._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @tps65910_rtc_get_calibration._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/rtc/rtc-tps65910.c", i32 220, i32 3}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @tps65910_rtc_set_calibration._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @tps65910_rtc_set_calibration._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/rtc/rtc-tps65910.c", i32 234, i32 3}
!75 = !{ptr @tps65910_rtc_set_calibration._entry.31, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @tps65910_rtc_set_calibration._entry_ptr.33, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/rtc/rtc-tps65910.c", i32 242, i32 3}
!79 = !{ptr @tps65910_rtc_set_calibration._entry.34, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @tps65910_rtc_set_calibration._entry_ptr.36, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @tps65910_rtc_pm_ops, !82, !"tps65910_rtc_pm_ops", i1 false, i1 false}
!82 = !{!"../drivers/rtc/rtc-tps65910.c", i32 458, i32 8}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"auto-init"}
!93 = !{i64 2148701892, i64 2148701897, i64 2148701910, i64 2148701954, i64 2148701988, i64 2148702009}
