; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-da9052.c_pt.bc'
source_filename = "../drivers/rtc/rtc-da9052.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.da9052_rtc = type { ptr, ptr }
%struct.da9052 = type { ptr, ptr, %struct.mutex, %struct.completion, i32, ptr, i8, i32, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_da9052__227_328_da9052_rtc_driver_init6 = internal global ptr @da9052_rtc_driver_init, section ".initcall6.init", align 4
@da9052_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9052_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9052_rtc_driver_exit = internal global ptr @da9052_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [60 x i8] c"rtc_da9052.author=Anthony Olech <Anthony.Olech@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [57 x i8] c"rtc_da9052.description=RTC driver for Dialog DA9052 PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [39 x i8] c"rtc_da9052.file=drivers/rtc/rtc-da9052\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [23 x i8] c"rtc_da9052.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [37 x i8] c"rtc_da9052.alias=platform:da9052-rtc\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"da9052-rtc\00", [21 x i8] zeroinitializer }, align 32
@da9052_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Failed to setup RTC battery charging: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9052_rtc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-da9052.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9052_rtc_probe._entry_ptr = internal global ptr @da9052_rtc_probe._entry, section ".printk_index", align 4
@da9052_rtc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 296, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Failed to disable TICKS: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@da9052_rtc_probe._entry_ptr.8 = internal global ptr @da9052_rtc_probe._entry.6, section ".printk_index", align 4
@da9052_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @da9052_rtc_read_time, ptr @da9052_rtc_set_time, ptr @da9052_rtc_read_alarm, ptr @da9052_rtc_set_alarm, ptr null, ptr @da9052_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ALM\00", [28 x i8] zeroinitializer }, align 32
@da9052_rtc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 314, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: irq registration failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@da9052_rtc_probe._entry_ptr.12 = internal global ptr @da9052_rtc_probe._entry.10, section ".printk_index", align 4
@da9052_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 163, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Failed to read RTC time : %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"da9052_rtc_read_time\00", [43 x i8] zeroinitializer }, align 32
@da9052_rtc_read_time._entry_ptr = internal global ptr @da9052_rtc_read_time._entry, section ".printk_index", align 4
@da9052_rtc_read_time._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 171, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@da9052_rtc_read_time._entry_ptr.16 = internal global ptr @da9052_rtc_read_time._entry.15, section ".printk_index", align 4
@da9052_rtc_read_time._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.3, i32 191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Timed out reading time\0A\00", [36 x i8] zeroinitializer }, align 32
@da9052_rtc_read_time._entry_ptr.19 = internal global ptr @da9052_rtc_read_time._entry.17, section ".printk_index", align 4
@da9052_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 217, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: failed to set RTC time: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"da9052_rtc_set_time\00", [44 x i8] zeroinitializer }, align 32
@da9052_rtc_set_time._entry_ptr = internal global ptr @da9052_rtc_set_time._entry, section ".printk_index", align 4
@da9052_rtc_read_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 229, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: failed to read RTC alarm: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"da9052_rtc_read_alarm\00", [42 x i8] zeroinitializer }, align 32
@da9052_rtc_read_alarm._entry_ptr = internal global ptr @da9052_rtc_read_alarm._entry, section ".printk_index", align 4
@da9052_read_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 65, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Failed to group read ALM: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"da9052_read_alarm\00", [46 x i8] zeroinitializer }, align 32
@da9052_read_alarm._entry_ptr = internal global ptr @da9052_read_alarm._entry, section ".printk_index", align 4
@da9052_read_alarm._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 73, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@da9052_read_alarm._entry_ptr.27 = internal global ptr @da9052_read_alarm._entry.26, section ".printk_index", align 4
@da9052_read_alarm._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.3, i32 94, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Timed out reading alarm time\0A\00", [62 x i8] zeroinitializer }, align 32
@da9052_read_alarm._entry_ptr.30 = internal global ptr @da9052_read_alarm._entry.28, section ".printk_index", align 4
@da9052_rtc_get_alarm_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 146, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Failed to read ALM: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"da9052_rtc_get_alarm_status\00", [36 x i8] zeroinitializer }, align 32
@da9052_rtc_get_alarm_status._entry_ptr = internal global ptr @da9052_rtc_get_alarm_status._entry, section ".printk_index", align 4
@da9052_rtc_enable_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 37, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Failed to enable ALM: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"da9052_rtc_enable_alarm\00", [40 x i8] zeroinitializer }, align 32
@da9052_rtc_enable_alarm._entry_ptr = internal global ptr @da9052_rtc_enable_alarm._entry, section ".printk_index", align 4
@da9052_rtc_enable_alarm._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 42, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Write error: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@da9052_rtc_enable_alarm._entry_ptr.37 = internal global ptr @da9052_rtc_enable_alarm._entry.35, section ".printk_index", align 4
@da9052_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 120, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Failed to write ALRM MIN: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9052_set_alarm\00", [47 x i8] zeroinitializer }, align 32
@da9052_set_alarm._entry_ptr = internal global ptr @da9052_set_alarm._entry, section ".printk_index", align 4
@da9052_set_alarm._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Failed to write ALRM YEAR: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@da9052_set_alarm._entry_ptr.42 = internal global ptr @da9052_set_alarm._entry.40, section ".printk_index", align 4
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"da9052_rtc_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 321, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 324, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 288, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 296, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"da9052_rtc_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 266, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 311, i32 58 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 314, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 163, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 171, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 191, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 217, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 229, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 65, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 73, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 94, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 146, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 37, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 42, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 120, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private constant [28 x i8] c"../drivers/rtc/rtc-da9052.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 135, i32 3 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_da9052_rtc_driver_exit, ptr @__initcall__kmod_rtc_da9052__227_328_da9052_rtc_driver_init6, ptr @da9052_read_alarm._entry, ptr @da9052_read_alarm._entry.26, ptr @da9052_read_alarm._entry.28, ptr @da9052_read_alarm._entry_ptr, ptr @da9052_read_alarm._entry_ptr.27, ptr @da9052_read_alarm._entry_ptr.30, ptr @da9052_rtc_driver_exit, ptr @da9052_rtc_enable_alarm._entry, ptr @da9052_rtc_enable_alarm._entry.35, ptr @da9052_rtc_enable_alarm._entry_ptr, ptr @da9052_rtc_enable_alarm._entry_ptr.37, ptr @da9052_rtc_get_alarm_status._entry, ptr @da9052_rtc_get_alarm_status._entry_ptr, ptr @da9052_rtc_probe._entry, ptr @da9052_rtc_probe._entry.10, ptr @da9052_rtc_probe._entry.6, ptr @da9052_rtc_probe._entry_ptr, ptr @da9052_rtc_probe._entry_ptr.12, ptr @da9052_rtc_probe._entry_ptr.8, ptr @da9052_rtc_read_alarm._entry, ptr @da9052_rtc_read_alarm._entry_ptr, ptr @da9052_rtc_read_time._entry, ptr @da9052_rtc_read_time._entry.15, ptr @da9052_rtc_read_time._entry.17, ptr @da9052_rtc_read_time._entry_ptr, ptr @da9052_rtc_read_time._entry_ptr.16, ptr @da9052_rtc_read_time._entry_ptr.19, ptr @da9052_rtc_set_time._entry, ptr @da9052_rtc_set_time._entry_ptr, ptr @da9052_set_alarm._entry, ptr @da9052_set_alarm._entry.40, ptr @da9052_set_alarm._entry_ptr, ptr @da9052_set_alarm._entry_ptr.42, ptr @da9052_rtc_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @da9052_rtc_ops, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_rtc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_rtc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_rtc_read_time._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_rtc_read_time._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_rtc_read_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_read_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_read_alarm._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_read_alarm._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_rtc_get_alarm_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_rtc_enable_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_rtc_enable_alarm._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_set_alarm._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9052_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9052_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9052_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %da9052 = getelementptr inbounds %struct.da9052_rtc, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %da9052 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %da9052, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i78 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 69, i32 noundef 254) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %cmp.i = icmp slt i32 %call.i78, 0
  br i1 %cmp.i, label %if.end.do.end_crit_edge, label %if.end.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i.if.end8_crit_edge, label %da9052_reg_write.exit

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

da9052_reg_write.exit:                            ; preds = %if.end.i
  %call5.i = tail call i32 %9(ptr noundef %3, i8 noundef zeroext 69) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp = icmp slt i32 %call5.i, 0
  br i1 %cmp, label %da9052_reg_write.exit.do.end_crit_edge, label %da9052_reg_write.exit.if.end8_crit_edge

da9052_reg_write.exit.if.end8_crit_edge:          ; preds = %da9052_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

da9052_reg_write.exit.do.end_crit_edge:           ; preds = %da9052_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %da9052_reg_write.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i88 = phi i32 [ %call5.i, %da9052_reg_write.exit.do.end_crit_edge ], [ %call.i78, %if.end.do.end_crit_edge ]
  %10 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %da9052, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i88) #9
  br label %cleanup

if.end8:                                          ; preds = %da9052_reg_write.exit.if.end8_crit_edge, %if.end.i.if.end8_crit_edge
  %14 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %da9052, align 4
  %regmap.i79 = getelementptr inbounds %struct.da9052, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %regmap.i79 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i79, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 121, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i80 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i80, label %if.end8.do.end15_crit_edge, label %if.end.i83

if.end8.do.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

if.end.i83:                                       ; preds = %if.end8
  %fix_io.i81 = getelementptr inbounds %struct.da9052, ptr %15, i32 0, i32 8
  %18 = ptrtoint ptr %fix_io.i81 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fix_io.i81, align 4
  %tobool.not.i82 = icmp eq ptr %19, null
  br i1 %tobool.not.i82, label %if.end.i83.da9052_reg_update.exit_crit_edge, label %if.then4.i

if.end.i83.da9052_reg_update.exit_crit_edge:      ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_reg_update.exit

if.then4.i:                                       ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 %19(ptr noundef %15, i8 noundef zeroext 121) #6
  br label %da9052_reg_update.exit

da9052_reg_update.exit:                           ; preds = %if.then4.i, %if.end.i83.da9052_reg_update.exit_crit_edge
  %retval.0.i84 = phi i32 [ %call6.i, %if.then4.i ], [ %call.i.i, %if.end.i83.da9052_reg_update.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i84)
  %cmp11.not = icmp eq i32 %retval.0.i84, 0
  br i1 %cmp11.not, label %da9052_reg_update.exit.if.end18_crit_edge, label %da9052_reg_update.exit.do.end15_crit_edge

da9052_reg_update.exit.do.end15_crit_edge:        ; preds = %da9052_reg_update.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

da9052_reg_update.exit.if.end18_crit_edge:        ; preds = %da9052_reg_update.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end15:                                         ; preds = %da9052_reg_update.exit.do.end15_crit_edge, %if.end8.do.end15_crit_edge
  %retval.0.i8494 = phi i32 [ %retval.0.i84, %da9052_reg_update.exit.do.end15_crit_edge ], [ %call.i.i, %if.end8.do.end15_crit_edge ]
  %20 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %da9052, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i8494) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %da9052_reg_update.exit.if.end18_crit_edge
  %call20 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  %call22 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #6
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call22, ptr %call.i, align 4
  %cmp.i85 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end18
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call22, i32 0, i32 3
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @da9052_rtc_ops, ptr %ops, align 8
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %28, i32 0, i32 22
  %29 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 946684800, ptr %range_min, align 8
  %30 = load ptr, ptr %call.i, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %30, i32 0, i32 23
  %31 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 2966371199, ptr %range_max, align 8
  %32 = load ptr, ptr %call.i, align 4
  %call34 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  %33 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %da9052, align 4
  %call39 = tail call i32 @da9052_request_irq(ptr noundef %34, i32 noundef 5, ptr noundef nonnull @.str.9, ptr noundef nonnull @da9052_rtc_irq, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 0
  br i1 %cmp40.not, label %if.end37.cleanup_crit_edge, label %do.end44

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %da9052, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef %call39) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.end37.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then26, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i88, %do.end ], [ %25, %if.then26 ], [ %call39, %do.end44 ], [ -12, %entry.cleanup_crit_edge ], [ %call34, %if.end29.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da9052_request_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_rtc_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 160) #6
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %rtc_tm) #2 align 64 {
entry:
  %tmp.i75 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %v = alloca [2 x [6 x i8]], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %v) #6
  %2 = getelementptr inbounds [6 x i8], ptr %v, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %v, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %v, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %v, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %v, i32 0, i32 5
  %7 = getelementptr inbounds [2 x [6 x i8]], ptr %v, i32 0, i32 1
  %da9052 = getelementptr inbounds %struct.da9052_rtc, ptr %1, i32 0, i32 1
  %8 = getelementptr inbounds i8, ptr %v, i32 6
  %9 = call ptr @memset(ptr %8, i32 255, i32 6)
  %10 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %da9052, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %12 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %tmp.i, align 4, !annotation !102
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 111, ptr noundef nonnull %tmp.i) #6
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tmp.i, align 4
  %conv1.i = trunc i32 %16 to i8
  %17 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv1.i, ptr %v, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %entry.da9052_group_read.exit.thread_crit_edge, label %for.cond.i

entry.da9052_group_read.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit.thread

for.cond.i:                                       ; preds = %entry
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call.i.1 = call i32 @regmap_read(ptr noundef %19, i32 noundef 112, ptr noundef nonnull %tmp.i) #6
  %20 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tmp.i, align 4
  %conv1.i.1 = trunc i32 %21 to i8
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv1.i.1, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp2.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp2.i.1, label %for.cond.i.da9052_group_read.exit.thread_crit_edge, label %for.cond.i.1

for.cond.i.da9052_group_read.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit.thread

for.cond.i.1:                                     ; preds = %for.cond.i
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %call.i.2 = call i32 @regmap_read(ptr noundef %24, i32 noundef 113, ptr noundef nonnull %tmp.i) #6
  %25 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tmp.i, align 4
  %conv1.i.2 = trunc i32 %26 to i8
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv1.i.2, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp2.i.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp2.i.2, label %for.cond.i.1.da9052_group_read.exit.thread_crit_edge, label %for.cond.i.2

for.cond.i.1.da9052_group_read.exit.thread_crit_edge: ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit.thread

for.cond.i.2:                                     ; preds = %for.cond.i.1
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %call.i.3 = call i32 @regmap_read(ptr noundef %29, i32 noundef 114, ptr noundef nonnull %tmp.i) #6
  %30 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tmp.i, align 4
  %conv1.i.3 = trunc i32 %31 to i8
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv1.i.3, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %cmp2.i.3 = icmp slt i32 %call.i.3, 0
  br i1 %cmp2.i.3, label %for.cond.i.2.da9052_group_read.exit.thread_crit_edge, label %for.cond.i.3

for.cond.i.2.da9052_group_read.exit.thread_crit_edge: ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit.thread

for.cond.i.3:                                     ; preds = %for.cond.i.2
  %33 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i, align 4
  %call.i.4 = call i32 @regmap_read(ptr noundef %34, i32 noundef 115, ptr noundef nonnull %tmp.i) #6
  %35 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tmp.i, align 4
  %conv1.i.4 = trunc i32 %36 to i8
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv1.i.4, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %cmp2.i.4 = icmp slt i32 %call.i.4, 0
  br i1 %cmp2.i.4, label %for.cond.i.3.da9052_group_read.exit.thread_crit_edge, label %for.cond.i.4

for.cond.i.3.da9052_group_read.exit.thread_crit_edge: ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit.thread

for.cond.i.4:                                     ; preds = %for.cond.i.3
  %38 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i, align 4
  %call.i.5 = call i32 @regmap_read(ptr noundef %39, i32 noundef 116, ptr noundef nonnull %tmp.i) #6
  %40 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tmp.i, align 4
  %conv1.i.5 = trunc i32 %41 to i8
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv1.i.5, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %cmp2.i.5 = icmp slt i32 %call.i.5, 0
  br i1 %cmp2.i.5, label %for.cond.i.4.da9052_group_read.exit.thread_crit_edge, label %for.cond.i.5

for.cond.i.4.da9052_group_read.exit.thread_crit_edge: ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit.thread

for.cond.i.5:                                     ; preds = %for.cond.i.4
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %11, i32 0, i32 8
  %43 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %for.cond.i.5.da9052_group_read.exit_crit_edge, label %if.then4.i

for.cond.i.5.da9052_group_read.exit_crit_edge:    ; preds = %for.cond.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit

da9052_group_read.exit.thread:                    ; preds = %for.cond.i.4.da9052_group_read.exit.thread_crit_edge, %for.cond.i.3.da9052_group_read.exit.thread_crit_edge, %for.cond.i.2.da9052_group_read.exit.thread_crit_edge, %for.cond.i.1.da9052_group_read.exit.thread_crit_edge, %for.cond.i.da9052_group_read.exit.thread_crit_edge, %entry.da9052_group_read.exit.thread_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %entry.da9052_group_read.exit.thread_crit_edge ], [ %call.i.1, %for.cond.i.da9052_group_read.exit.thread_crit_edge ], [ %call.i.2, %for.cond.i.1.da9052_group_read.exit.thread_crit_edge ], [ %call.i.3, %for.cond.i.2.da9052_group_read.exit.thread_crit_edge ], [ %call.i.4, %for.cond.i.3.da9052_group_read.exit.thread_crit_edge ], [ %call.i.5, %for.cond.i.4.da9052_group_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  br label %do.end

if.then4.i:                                       ; preds = %for.cond.i.5
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = call i32 %44(ptr noundef %11, i8 noundef zeroext 111) #6
  br label %da9052_group_read.exit

da9052_group_read.exit:                           ; preds = %if.then4.i, %for.cond.i.5.da9052_group_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.then4.i ], [ %call.i.5, %for.cond.i.5.da9052_group_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %da9052_group_read.exit.do.body5_crit_edge, label %da9052_group_read.exit.do.end_crit_edge

da9052_group_read.exit.do.end_crit_edge:          ; preds = %da9052_group_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

da9052_group_read.exit.do.body5_crit_edge:        ; preds = %da9052_group_read.exit
  br label %do.body5

do.end:                                           ; preds = %da9052_group_read.exit.do.end_crit_edge, %da9052_group_read.exit.thread
  %retval.0.i96 = phi i32 [ %call.i.lcssa, %da9052_group_read.exit.thread ], [ %retval.0.i, %da9052_group_read.exit.do.end_crit_edge ]
  %45 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %da9052, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i96) #9
  br label %cleanup

do.body5:                                         ; preds = %if.end46.do.body5_crit_edge, %da9052_group_read.exit.do.body5_crit_edge
  %idx.0 = phi i32 [ %sub47, %if.end46.do.body5_crit_edge ], [ 1, %da9052_group_read.exit.do.body5_crit_edge ]
  %timeout.0 = phi i32 [ %dec, %if.end46.do.body5_crit_edge ], [ 5, %da9052_group_read.exit.do.body5_crit_edge ]
  %49 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %da9052, align 4
  %arrayidx7 = getelementptr [2 x [6 x i8]], ptr %v, i32 0, i32 %idx.0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i75) #6
  %51 = ptrtoint ptr %tmp.i75 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %tmp.i75, align 4, !annotation !102
  %regmap.i76 = getelementptr inbounds %struct.da9052, ptr %50, i32 0, i32 1
  %52 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i76, align 4
  %call.i82 = call i32 @regmap_read(ptr noundef %53, i32 noundef 111, ptr noundef nonnull %tmp.i75) #6
  %54 = ptrtoint ptr %tmp.i75 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tmp.i75, align 4
  %conv1.i83 = trunc i32 %55 to i8
  %56 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv1.i83, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp2.i85 = icmp slt i32 %call.i82, 0
  br i1 %cmp2.i85, label %do.body5.da9052_group_read.exit93.thread_crit_edge, label %for.cond.i79

do.body5.da9052_group_read.exit93.thread_crit_edge: ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit93.thread

for.cond.i79:                                     ; preds = %do.body5
  %57 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i76, align 4
  %call.i82.1 = call i32 @regmap_read(ptr noundef %58, i32 noundef 112, ptr noundef nonnull %tmp.i75) #6
  %59 = ptrtoint ptr %tmp.i75 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tmp.i75, align 4
  %conv1.i83.1 = trunc i32 %60 to i8
  %arrayidx.i84.1 = getelementptr i8, ptr %arrayidx7, i32 1
  %61 = ptrtoint ptr %arrayidx.i84.1 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv1.i83.1, ptr %arrayidx.i84.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.1)
  %cmp2.i85.1 = icmp slt i32 %call.i82.1, 0
  br i1 %cmp2.i85.1, label %for.cond.i79.da9052_group_read.exit93.thread_crit_edge, label %for.cond.i79.1

for.cond.i79.da9052_group_read.exit93.thread_crit_edge: ; preds = %for.cond.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit93.thread

for.cond.i79.1:                                   ; preds = %for.cond.i79
  %62 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i76, align 4
  %call.i82.2 = call i32 @regmap_read(ptr noundef %63, i32 noundef 113, ptr noundef nonnull %tmp.i75) #6
  %64 = ptrtoint ptr %tmp.i75 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tmp.i75, align 4
  %conv1.i83.2 = trunc i32 %65 to i8
  %arrayidx.i84.2 = getelementptr i8, ptr %arrayidx7, i32 2
  %66 = ptrtoint ptr %arrayidx.i84.2 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv1.i83.2, ptr %arrayidx.i84.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.2)
  %cmp2.i85.2 = icmp slt i32 %call.i82.2, 0
  br i1 %cmp2.i85.2, label %for.cond.i79.1.da9052_group_read.exit93.thread_crit_edge, label %for.cond.i79.2

for.cond.i79.1.da9052_group_read.exit93.thread_crit_edge: ; preds = %for.cond.i79.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit93.thread

for.cond.i79.2:                                   ; preds = %for.cond.i79.1
  %67 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap.i76, align 4
  %call.i82.3 = call i32 @regmap_read(ptr noundef %68, i32 noundef 114, ptr noundef nonnull %tmp.i75) #6
  %69 = ptrtoint ptr %tmp.i75 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tmp.i75, align 4
  %conv1.i83.3 = trunc i32 %70 to i8
  %arrayidx.i84.3 = getelementptr i8, ptr %arrayidx7, i32 3
  %71 = ptrtoint ptr %arrayidx.i84.3 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv1.i83.3, ptr %arrayidx.i84.3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.3)
  %cmp2.i85.3 = icmp slt i32 %call.i82.3, 0
  br i1 %cmp2.i85.3, label %for.cond.i79.2.da9052_group_read.exit93.thread_crit_edge, label %for.cond.i79.3

for.cond.i79.2.da9052_group_read.exit93.thread_crit_edge: ; preds = %for.cond.i79.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit93.thread

for.cond.i79.3:                                   ; preds = %for.cond.i79.2
  %72 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i76, align 4
  %call.i82.4 = call i32 @regmap_read(ptr noundef %73, i32 noundef 115, ptr noundef nonnull %tmp.i75) #6
  %74 = ptrtoint ptr %tmp.i75 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tmp.i75, align 4
  %conv1.i83.4 = trunc i32 %75 to i8
  %arrayidx.i84.4 = getelementptr i8, ptr %arrayidx7, i32 4
  %76 = ptrtoint ptr %arrayidx.i84.4 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv1.i83.4, ptr %arrayidx.i84.4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.4)
  %cmp2.i85.4 = icmp slt i32 %call.i82.4, 0
  br i1 %cmp2.i85.4, label %for.cond.i79.3.da9052_group_read.exit93.thread_crit_edge, label %for.cond.i79.4

for.cond.i79.3.da9052_group_read.exit93.thread_crit_edge: ; preds = %for.cond.i79.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit93.thread

for.cond.i79.4:                                   ; preds = %for.cond.i79.3
  %77 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap.i76, align 4
  %call.i82.5 = call i32 @regmap_read(ptr noundef %78, i32 noundef 116, ptr noundef nonnull %tmp.i75) #6
  %79 = ptrtoint ptr %tmp.i75 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tmp.i75, align 4
  %conv1.i83.5 = trunc i32 %80 to i8
  %arrayidx.i84.5 = getelementptr i8, ptr %arrayidx7, i32 5
  %81 = ptrtoint ptr %arrayidx.i84.5 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv1.i83.5, ptr %arrayidx.i84.5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.5)
  %cmp2.i85.5 = icmp slt i32 %call.i82.5, 0
  br i1 %cmp2.i85.5, label %for.cond.i79.4.da9052_group_read.exit93.thread_crit_edge, label %for.cond.i79.5

for.cond.i79.4.da9052_group_read.exit93.thread_crit_edge: ; preds = %for.cond.i79.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit93.thread

for.cond.i79.5:                                   ; preds = %for.cond.i79.4
  %fix_io.i87 = getelementptr inbounds %struct.da9052, ptr %50, i32 0, i32 8
  %82 = ptrtoint ptr %fix_io.i87 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fix_io.i87, align 4
  %tobool.not.i88 = icmp eq ptr %83, null
  br i1 %tobool.not.i88, label %for.cond.i79.5.da9052_group_read.exit93_crit_edge, label %if.then4.i91

for.cond.i79.5.da9052_group_read.exit93_crit_edge: ; preds = %for.cond.i79.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit93

da9052_group_read.exit93.thread:                  ; preds = %for.cond.i79.4.da9052_group_read.exit93.thread_crit_edge, %for.cond.i79.3.da9052_group_read.exit93.thread_crit_edge, %for.cond.i79.2.da9052_group_read.exit93.thread_crit_edge, %for.cond.i79.1.da9052_group_read.exit93.thread_crit_edge, %for.cond.i79.da9052_group_read.exit93.thread_crit_edge, %do.body5.da9052_group_read.exit93.thread_crit_edge
  %call.i82.lcssa = phi i32 [ %call.i82, %do.body5.da9052_group_read.exit93.thread_crit_edge ], [ %call.i82.1, %for.cond.i79.da9052_group_read.exit93.thread_crit_edge ], [ %call.i82.2, %for.cond.i79.1.da9052_group_read.exit93.thread_crit_edge ], [ %call.i82.3, %for.cond.i79.2.da9052_group_read.exit93.thread_crit_edge ], [ %call.i82.4, %for.cond.i79.3.da9052_group_read.exit93.thread_crit_edge ], [ %call.i82.5, %for.cond.i79.4.da9052_group_read.exit93.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i75) #6
  br label %do.end14

if.then4.i91:                                     ; preds = %for.cond.i79.5
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i90 = call i32 %83(ptr noundef %50, i8 noundef zeroext 111) #6
  br label %da9052_group_read.exit93

da9052_group_read.exit93:                         ; preds = %if.then4.i91, %for.cond.i79.5.da9052_group_read.exit93_crit_edge
  %retval.0.i92 = phi i32 [ %call6.i90, %if.then4.i91 ], [ %call.i82.5, %for.cond.i79.5.da9052_group_read.exit93_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i75) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i92)
  %tobool10.not = icmp eq i32 %retval.0.i92, 0
  br i1 %tobool10.not, label %if.end17, label %da9052_group_read.exit93.do.end14_crit_edge

da9052_group_read.exit93.do.end14_crit_edge:      ; preds = %da9052_group_read.exit93
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.end14:                                         ; preds = %da9052_group_read.exit93.do.end14_crit_edge, %da9052_group_read.exit93.thread
  %retval.0.i9299 = phi i32 [ %call.i82.lcssa, %da9052_group_read.exit93.thread ], [ %retval.0.i92, %da9052_group_read.exit93.do.end14_crit_edge ]
  %84 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %da9052, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i9299) #9
  br label %cleanup

if.end17:                                         ; preds = %da9052_group_read.exit93
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %v, ptr noundef dereferenceable(6) %7, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %if.then23, label %if.end46

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %6, align 1
  %90 = and i8 %89, 63
  %narrow = add nuw i8 %90, 100
  %add = zext i8 %narrow to i32
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 5
  %91 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %add, ptr %tm_year, align 4
  %92 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %5, align 1
  %94 = and i8 %93, 15
  %and29 = zext i8 %94 to i32
  %sub = add nsw i32 %and29, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 4
  %95 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %sub, ptr %tm_mon, align 4
  %96 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %4, align 1
  %98 = and i8 %97, 31
  %and33 = zext i8 %98 to i32
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 3
  %99 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %and33, ptr %tm_mday, align 4
  %100 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %3, align 1
  %102 = and i8 %101, 31
  %and37 = zext i8 %102 to i32
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 2
  %103 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %and37, ptr %tm_hour, align 4
  %104 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %2, align 1
  %106 = and i8 %105, 63
  %and41 = zext i8 %106 to i32
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 1
  %107 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %and41, ptr %tm_min, align 4
  %108 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %v, align 1
  %110 = and i8 %109, 63
  %and45 = zext i8 %110 to i32
  %111 = ptrtoint ptr %rtc_tm to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %and45, ptr %rtc_tm, align 4
  br label %cleanup

if.end46:                                         ; preds = %if.end17
  %sub47 = sub i32 1, %idx.0
  call void @msleep(i32 noundef 20) #6
  %dec = add nsw i32 %timeout.0, -1
  %tobool49.not = icmp eq i32 %timeout.0, 0
  br i1 %tobool49.not, label %do.end53, label %if.end46.do.body5_crit_edge

if.end46.do.body5_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %da9052, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.14) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %if.then23, %do.end14, %do.end
  %retval.0 = phi i32 [ %retval.0.i96, %do.end ], [ %retval.0.i9299, %do.end14 ], [ 0, %if.then23 ], [ -5, %do.end53 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %v) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %0 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tm_year, align 4
  %2 = add i32 %1, -164
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %2)
  %3 = icmp ult i32 %2, -64
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %6 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %8 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %10 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_hour, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %12 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %14 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_mon, align 4
  %conv9 = add i32 %15, 1
  %conv12 = add nuw nsw i32 %1, 156
  %da9052 = getelementptr inbounds %struct.da9052_rtc, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %da9052, align 4
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %conv1.i = and i32 %7, 255
  %call.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 111, i32 noundef %conv1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %if.end.do.end_crit_edge, label %for.cond.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.i:                                       ; preds = %if.end
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %conv1.i.1 = and i32 %9, 255
  %call.i.1 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 112, i32 noundef %conv1.i.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp2.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp2.i.1, label %for.cond.i.do.end_crit_edge, label %for.cond.i.1

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.i.1:                                     ; preds = %for.cond.i
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %conv1.i.2 = and i32 %11, 255
  %call.i.2 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 113, i32 noundef %conv1.i.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp2.i.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp2.i.2, label %for.cond.i.1.do.end_crit_edge, label %for.cond.i.2

for.cond.i.1.do.end_crit_edge:                    ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.i.2:                                     ; preds = %for.cond.i.1
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %conv1.i.3 = and i32 %13, 255
  %call.i.3 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 114, i32 noundef %conv1.i.3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %cmp2.i.3 = icmp slt i32 %call.i.3, 0
  br i1 %cmp2.i.3, label %for.cond.i.2.do.end_crit_edge, label %for.cond.i.3

for.cond.i.2.do.end_crit_edge:                    ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.i.3:                                     ; preds = %for.cond.i.2
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %conv1.i.4 = and i32 %conv9, 255
  %call.i.4 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 115, i32 noundef %conv1.i.4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %cmp2.i.4 = icmp slt i32 %call.i.4, 0
  br i1 %cmp2.i.4, label %for.cond.i.3.do.end_crit_edge, label %for.cond.i.4

for.cond.i.3.do.end_crit_edge:                    ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.i.4:                                     ; preds = %for.cond.i.3
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %conv1.i.5 = and i32 %conv12, 255
  %call.i.5 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 116, i32 noundef %conv1.i.5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %cmp2.i.5 = icmp slt i32 %call.i.5, 0
  br i1 %cmp2.i.5, label %for.cond.i.4.do.end_crit_edge, label %for.cond.i.5

for.cond.i.4.do.end_crit_edge:                    ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.i.5:                                     ; preds = %for.cond.i.4
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %17, i32 0, i32 8
  %30 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %for.cond.i.5.cleanup_crit_edge, label %da9052_group_write.exit

for.cond.i.5.cleanup_crit_edge:                   ; preds = %for.cond.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

da9052_group_write.exit:                          ; preds = %for.cond.i.5
  %call6.i = tail call i32 %31(ptr noundef %17, i8 noundef zeroext 111) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp15 = icmp slt i32 %call6.i, 0
  br i1 %cmp15, label %da9052_group_write.exit.do.end_crit_edge, label %da9052_group_write.exit.cleanup_crit_edge

da9052_group_write.exit.cleanup_crit_edge:        ; preds = %da9052_group_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

da9052_group_write.exit.do.end_crit_edge:         ; preds = %da9052_group_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %da9052_group_write.exit.do.end_crit_edge, %for.cond.i.4.do.end_crit_edge, %for.cond.i.3.do.end_crit_edge, %for.cond.i.2.do.end_crit_edge, %for.cond.i.1.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i35 = phi i32 [ %call6.i, %da9052_group_write.exit.do.end_crit_edge ], [ %call.i, %if.end.do.end_crit_edge ], [ %call.i.1, %for.cond.i.do.end_crit_edge ], [ %call.i.2, %for.cond.i.1.do.end_crit_edge ], [ %call.i.3, %for.cond.i.2.do.end_crit_edge ], [ %call.i.4, %for.cond.i.3.do.end_crit_edge ], [ %call.i.5, %for.cond.i.4.do.end_crit_edge ]
  %32 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %da9052, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i35) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %da9052_group_write.exit.cleanup_crit_edge, %for.cond.i.5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i35, %do.end ], [ %call6.i, %da9052_group_write.exit.cleanup_crit_edge ], [ %call.i.5, %for.cond.i.5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %tmp.i71.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %v.i = alloca [2 x [5 x i8]], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %v.i) #6
  %2 = getelementptr inbounds [5 x i8], ptr %v.i, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %v.i, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %v.i, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %v.i, i32 0, i32 4
  %6 = getelementptr inbounds [2 x [5 x i8]], ptr %v.i, i32 0, i32 1
  %da9052.i = getelementptr inbounds %struct.da9052_rtc, ptr %1, i32 0, i32 1
  %7 = call ptr @memset(ptr %6, i32 255, i32 5)
  %8 = ptrtoint ptr %da9052.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %da9052.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #6
  %10 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !102
  %regmap.i.i = getelementptr inbounds %struct.da9052, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %12, i32 noundef 117, ptr noundef nonnull %tmp.i.i) #6
  %13 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmp.i.i, align 4
  %conv1.i.i = trunc i32 %14 to i8
  %15 = ptrtoint ptr %v.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv1.i.i, ptr %v.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i.i, label %entry.da9052_group_read.exit.thread.i_crit_edge, label %for.cond.i.i

entry.da9052_group_read.exit.thread.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit.thread.i

for.cond.i.i:                                     ; preds = %entry
  %16 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i, align 4
  %call.i.1.i = call i32 @regmap_read(ptr noundef %17, i32 noundef 118, ptr noundef nonnull %tmp.i.i) #6
  %18 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tmp.i.i, align 4
  %conv1.i.1.i = trunc i32 %19 to i8
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv1.i.1.i, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %cmp2.i.1.i = icmp slt i32 %call.i.1.i, 0
  br i1 %cmp2.i.1.i, label %for.cond.i.i.da9052_group_read.exit.thread.i_crit_edge, label %for.cond.i.1.i

for.cond.i.i.da9052_group_read.exit.thread.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit.thread.i

for.cond.i.1.i:                                   ; preds = %for.cond.i.i
  %21 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i.i, align 4
  %call.i.2.i = call i32 @regmap_read(ptr noundef %22, i32 noundef 119, ptr noundef nonnull %tmp.i.i) #6
  %23 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tmp.i.i, align 4
  %conv1.i.2.i = trunc i32 %24 to i8
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv1.i.2.i, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %cmp2.i.2.i = icmp slt i32 %call.i.2.i, 0
  br i1 %cmp2.i.2.i, label %for.cond.i.1.i.da9052_group_read.exit.thread.i_crit_edge, label %for.cond.i.2.i

for.cond.i.1.i.da9052_group_read.exit.thread.i_crit_edge: ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit.thread.i

for.cond.i.2.i:                                   ; preds = %for.cond.i.1.i
  %26 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i.i, align 4
  %call.i.3.i = call i32 @regmap_read(ptr noundef %27, i32 noundef 120, ptr noundef nonnull %tmp.i.i) #6
  %28 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tmp.i.i, align 4
  %conv1.i.3.i = trunc i32 %29 to i8
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv1.i.3.i, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i)
  %cmp2.i.3.i = icmp slt i32 %call.i.3.i, 0
  br i1 %cmp2.i.3.i, label %for.cond.i.2.i.da9052_group_read.exit.thread.i_crit_edge, label %for.cond.i.3.i

for.cond.i.2.i.da9052_group_read.exit.thread.i_crit_edge: ; preds = %for.cond.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit.thread.i

for.cond.i.3.i:                                   ; preds = %for.cond.i.2.i
  %31 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i.i, align 4
  %call.i.4.i = call i32 @regmap_read(ptr noundef %32, i32 noundef 121, ptr noundef nonnull %tmp.i.i) #6
  %33 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tmp.i.i, align 4
  %conv1.i.4.i = trunc i32 %34 to i8
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv1.i.4.i, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4.i)
  %cmp2.i.4.i = icmp slt i32 %call.i.4.i, 0
  br i1 %cmp2.i.4.i, label %for.cond.i.3.i.da9052_group_read.exit.thread.i_crit_edge, label %for.cond.i.4.i

for.cond.i.3.i.da9052_group_read.exit.thread.i_crit_edge: ; preds = %for.cond.i.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit.thread.i

for.cond.i.4.i:                                   ; preds = %for.cond.i.3.i
  %fix_io.i.i = getelementptr inbounds %struct.da9052, ptr %9, i32 0, i32 8
  %36 = ptrtoint ptr %fix_io.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fix_io.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %for.cond.i.4.i.da9052_group_read.exit.i_crit_edge, label %if.then4.i.i

for.cond.i.4.i.da9052_group_read.exit.i_crit_edge: ; preds = %for.cond.i.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit.i

da9052_group_read.exit.thread.i:                  ; preds = %for.cond.i.3.i.da9052_group_read.exit.thread.i_crit_edge, %for.cond.i.2.i.da9052_group_read.exit.thread.i_crit_edge, %for.cond.i.1.i.da9052_group_read.exit.thread.i_crit_edge, %for.cond.i.i.da9052_group_read.exit.thread.i_crit_edge, %entry.da9052_group_read.exit.thread.i_crit_edge
  %call.i.lcssa.i = phi i32 [ %call.i.i, %entry.da9052_group_read.exit.thread.i_crit_edge ], [ %call.i.1.i, %for.cond.i.i.da9052_group_read.exit.thread.i_crit_edge ], [ %call.i.2.i, %for.cond.i.1.i.da9052_group_read.exit.thread.i_crit_edge ], [ %call.i.3.i, %for.cond.i.2.i.da9052_group_read.exit.thread.i_crit_edge ], [ %call.i.4.i, %for.cond.i.3.i.da9052_group_read.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  br label %do.end.i

if.then4.i.i:                                     ; preds = %for.cond.i.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i = call i32 %37(ptr noundef %9, i8 noundef zeroext 117) #6
  br label %da9052_group_read.exit.i

da9052_group_read.exit.i:                         ; preds = %if.then4.i.i, %for.cond.i.4.i.da9052_group_read.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call6.i.i, %if.then4.i.i ], [ %call.i.4.i, %for.cond.i.4.i.da9052_group_read.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %da9052_group_read.exit.i.do.body3.i_crit_edge, label %da9052_group_read.exit.i.do.end.i_crit_edge

da9052_group_read.exit.i.do.end.i_crit_edge:      ; preds = %da9052_group_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

da9052_group_read.exit.i.do.body3.i_crit_edge:    ; preds = %da9052_group_read.exit.i
  br label %do.body3.i

do.end.i:                                         ; preds = %da9052_group_read.exit.i.do.end.i_crit_edge, %da9052_group_read.exit.thread.i
  %retval.0.i92.i = phi i32 [ %call.i.lcssa.i, %da9052_group_read.exit.thread.i ], [ %retval.0.i.i, %da9052_group_read.exit.i.do.end.i_crit_edge ]
  %38 = ptrtoint ptr %da9052.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %da9052.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i92.i) #9
  br label %da9052_read_alarm.exit

do.body3.i:                                       ; preds = %if.end41.i.do.body3.i_crit_edge, %da9052_group_read.exit.i.do.body3.i_crit_edge
  %idx.0.i = phi i32 [ %sub42.i, %if.end41.i.do.body3.i_crit_edge ], [ 1, %da9052_group_read.exit.i.do.body3.i_crit_edge ]
  %timeout.0.i = phi i32 [ %dec.i, %if.end41.i.do.body3.i_crit_edge ], [ 5, %da9052_group_read.exit.i.do.body3.i_crit_edge ]
  %42 = ptrtoint ptr %da9052.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %da9052.i, align 4
  %arrayidx5.i = getelementptr [2 x [5 x i8]], ptr %v.i, i32 0, i32 %idx.0.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i71.i) #6
  %44 = ptrtoint ptr %tmp.i71.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %tmp.i71.i, align 4, !annotation !102
  %regmap.i72.i = getelementptr inbounds %struct.da9052, ptr %43, i32 0, i32 1
  %45 = ptrtoint ptr %regmap.i72.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i72.i, align 4
  %call.i78.i = call i32 @regmap_read(ptr noundef %46, i32 noundef 117, ptr noundef nonnull %tmp.i71.i) #6
  %47 = ptrtoint ptr %tmp.i71.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tmp.i71.i, align 4
  %conv1.i79.i = trunc i32 %48 to i8
  %49 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv1.i79.i, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i)
  %cmp2.i81.i = icmp slt i32 %call.i78.i, 0
  br i1 %cmp2.i81.i, label %do.body3.i.da9052_group_read.exit89.thread.i_crit_edge, label %for.cond.i75.i

do.body3.i.da9052_group_read.exit89.thread.i_crit_edge: ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit89.thread.i

for.cond.i75.i:                                   ; preds = %do.body3.i
  %50 = ptrtoint ptr %regmap.i72.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap.i72.i, align 4
  %call.i78.1.i = call i32 @regmap_read(ptr noundef %51, i32 noundef 118, ptr noundef nonnull %tmp.i71.i) #6
  %52 = ptrtoint ptr %tmp.i71.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tmp.i71.i, align 4
  %conv1.i79.1.i = trunc i32 %53 to i8
  %arrayidx.i80.1.i = getelementptr i8, ptr %arrayidx5.i, i32 1
  %54 = ptrtoint ptr %arrayidx.i80.1.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv1.i79.1.i, ptr %arrayidx.i80.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.1.i)
  %cmp2.i81.1.i = icmp slt i32 %call.i78.1.i, 0
  br i1 %cmp2.i81.1.i, label %for.cond.i75.i.da9052_group_read.exit89.thread.i_crit_edge, label %for.cond.i75.1.i

for.cond.i75.i.da9052_group_read.exit89.thread.i_crit_edge: ; preds = %for.cond.i75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit89.thread.i

for.cond.i75.1.i:                                 ; preds = %for.cond.i75.i
  %55 = ptrtoint ptr %regmap.i72.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i72.i, align 4
  %call.i78.2.i = call i32 @regmap_read(ptr noundef %56, i32 noundef 119, ptr noundef nonnull %tmp.i71.i) #6
  %57 = ptrtoint ptr %tmp.i71.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tmp.i71.i, align 4
  %conv1.i79.2.i = trunc i32 %58 to i8
  %arrayidx.i80.2.i = getelementptr i8, ptr %arrayidx5.i, i32 2
  %59 = ptrtoint ptr %arrayidx.i80.2.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv1.i79.2.i, ptr %arrayidx.i80.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.2.i)
  %cmp2.i81.2.i = icmp slt i32 %call.i78.2.i, 0
  br i1 %cmp2.i81.2.i, label %for.cond.i75.1.i.da9052_group_read.exit89.thread.i_crit_edge, label %for.cond.i75.2.i

for.cond.i75.1.i.da9052_group_read.exit89.thread.i_crit_edge: ; preds = %for.cond.i75.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit89.thread.i

for.cond.i75.2.i:                                 ; preds = %for.cond.i75.1.i
  %60 = ptrtoint ptr %regmap.i72.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap.i72.i, align 4
  %call.i78.3.i = call i32 @regmap_read(ptr noundef %61, i32 noundef 120, ptr noundef nonnull %tmp.i71.i) #6
  %62 = ptrtoint ptr %tmp.i71.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tmp.i71.i, align 4
  %conv1.i79.3.i = trunc i32 %63 to i8
  %arrayidx.i80.3.i = getelementptr i8, ptr %arrayidx5.i, i32 3
  %64 = ptrtoint ptr %arrayidx.i80.3.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv1.i79.3.i, ptr %arrayidx.i80.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.3.i)
  %cmp2.i81.3.i = icmp slt i32 %call.i78.3.i, 0
  br i1 %cmp2.i81.3.i, label %for.cond.i75.2.i.da9052_group_read.exit89.thread.i_crit_edge, label %for.cond.i75.3.i

for.cond.i75.2.i.da9052_group_read.exit89.thread.i_crit_edge: ; preds = %for.cond.i75.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit89.thread.i

for.cond.i75.3.i:                                 ; preds = %for.cond.i75.2.i
  %65 = ptrtoint ptr %regmap.i72.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap.i72.i, align 4
  %call.i78.4.i = call i32 @regmap_read(ptr noundef %66, i32 noundef 121, ptr noundef nonnull %tmp.i71.i) #6
  %67 = ptrtoint ptr %tmp.i71.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tmp.i71.i, align 4
  %conv1.i79.4.i = trunc i32 %68 to i8
  %arrayidx.i80.4.i = getelementptr i8, ptr %arrayidx5.i, i32 4
  %69 = ptrtoint ptr %arrayidx.i80.4.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv1.i79.4.i, ptr %arrayidx.i80.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.4.i)
  %cmp2.i81.4.i = icmp slt i32 %call.i78.4.i, 0
  br i1 %cmp2.i81.4.i, label %for.cond.i75.3.i.da9052_group_read.exit89.thread.i_crit_edge, label %for.cond.i75.4.i

for.cond.i75.3.i.da9052_group_read.exit89.thread.i_crit_edge: ; preds = %for.cond.i75.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit89.thread.i

for.cond.i75.4.i:                                 ; preds = %for.cond.i75.3.i
  %fix_io.i83.i = getelementptr inbounds %struct.da9052, ptr %43, i32 0, i32 8
  %70 = ptrtoint ptr %fix_io.i83.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fix_io.i83.i, align 4
  %tobool.not.i84.i = icmp eq ptr %71, null
  br i1 %tobool.not.i84.i, label %for.cond.i75.4.i.da9052_group_read.exit89.i_crit_edge, label %if.then4.i87.i

for.cond.i75.4.i.da9052_group_read.exit89.i_crit_edge: ; preds = %for.cond.i75.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_group_read.exit89.i

da9052_group_read.exit89.thread.i:                ; preds = %for.cond.i75.3.i.da9052_group_read.exit89.thread.i_crit_edge, %for.cond.i75.2.i.da9052_group_read.exit89.thread.i_crit_edge, %for.cond.i75.1.i.da9052_group_read.exit89.thread.i_crit_edge, %for.cond.i75.i.da9052_group_read.exit89.thread.i_crit_edge, %do.body3.i.da9052_group_read.exit89.thread.i_crit_edge
  %call.i78.lcssa.i = phi i32 [ %call.i78.i, %do.body3.i.da9052_group_read.exit89.thread.i_crit_edge ], [ %call.i78.1.i, %for.cond.i75.i.da9052_group_read.exit89.thread.i_crit_edge ], [ %call.i78.2.i, %for.cond.i75.1.i.da9052_group_read.exit89.thread.i_crit_edge ], [ %call.i78.3.i, %for.cond.i75.2.i.da9052_group_read.exit89.thread.i_crit_edge ], [ %call.i78.4.i, %for.cond.i75.3.i.da9052_group_read.exit89.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i71.i) #6
  br label %do.end12.i

if.then4.i87.i:                                   ; preds = %for.cond.i75.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i86.i = call i32 %71(ptr noundef %43, i8 noundef zeroext 117) #6
  br label %da9052_group_read.exit89.i

da9052_group_read.exit89.i:                       ; preds = %if.then4.i87.i, %for.cond.i75.4.i.da9052_group_read.exit89.i_crit_edge
  %retval.0.i88.i = phi i32 [ %call6.i86.i, %if.then4.i87.i ], [ %call.i78.4.i, %for.cond.i75.4.i.da9052_group_read.exit89.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i71.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i88.i)
  %tobool8.not.i = icmp eq i32 %retval.0.i88.i, 0
  br i1 %tobool8.not.i, label %if.end15.i, label %da9052_group_read.exit89.i.do.end12.i_crit_edge

da9052_group_read.exit89.i.do.end12.i_crit_edge:  ; preds = %da9052_group_read.exit89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i

do.end12.i:                                       ; preds = %da9052_group_read.exit89.i.do.end12.i_crit_edge, %da9052_group_read.exit89.thread.i
  %retval.0.i8895.i = phi i32 [ %call.i78.lcssa.i, %da9052_group_read.exit89.thread.i ], [ %retval.0.i88.i, %da9052_group_read.exit89.i.do.end12.i_crit_edge ]
  %72 = ptrtoint ptr %da9052.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %da9052.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i8895.i) #9
  br label %da9052_read_alarm.exit

if.end15.i:                                       ; preds = %da9052_group_read.exit89.i
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %v.i, ptr noundef dereferenceable(5) %6, i32 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.then21.i, label %if.end41.i

if.then21.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %5, align 1
  %78 = and i8 %77, 63
  %narrow.i = add nuw i8 %78, 100
  %add.i = zext i8 %narrow.i to i32
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %79 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add.i, ptr %tm_year.i, align 4
  %80 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %4, align 1
  %82 = and i8 %81, 15
  %and27.i = zext i8 %82 to i32
  %sub.i = add nsw i32 %and27.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %83 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %84 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %3, align 1
  %86 = and i8 %85, 31
  %and31.i = zext i8 %86 to i32
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %87 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %and31.i, ptr %tm_mday.i, align 4
  %88 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %2, align 1
  %90 = and i8 %89, 31
  %and35.i = zext i8 %90 to i32
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %91 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %and35.i, ptr %tm_hour.i, align 4
  %92 = ptrtoint ptr %v.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %v.i, align 1
  %94 = and i8 %93, 63
  %and39.i = zext i8 %94 to i32
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %95 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %and39.i, ptr %tm_min.i, align 4
  %96 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %time, align 4
  %call40.i = call i32 @rtc_valid_tm(ptr noundef %time) #6
  br label %da9052_read_alarm.exit

if.end41.i:                                       ; preds = %if.end15.i
  %sub42.i = sub i32 1, %idx.0.i
  call void @msleep(i32 noundef 20) #6
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool44.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %tobool44.not.i, label %da9052_read_alarm.exit.thread, label %if.end41.i.do.body3.i_crit_edge

if.end41.i.do.body3.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

da9052_read_alarm.exit.thread:                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %da9052.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %da9052.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.25) #9
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %v.i) #6
  br label %do.end

da9052_read_alarm.exit:                           ; preds = %if.then21.i, %do.end12.i, %do.end.i
  %retval.0.i = phi i32 [ %retval.0.i92.i, %do.end.i ], [ %retval.0.i8895.i, %do.end12.i ], [ %call40.i, %if.then21.i ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %v.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %da9052_read_alarm.exit.do.end_crit_edge, label %if.end

da9052_read_alarm.exit.do.end_crit_edge:          ; preds = %da9052_read_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %da9052_read_alarm.exit.do.end_crit_edge, %da9052_read_alarm.exit.thread
  %retval.0.i21 = phi i32 [ -5, %da9052_read_alarm.exit.thread ], [ %retval.0.i, %da9052_read_alarm.exit.do.end_crit_edge ]
  %101 = ptrtoint ptr %da9052.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %da9052.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %retval.0.i21) #9
  br label %cleanup

if.end:                                           ; preds = %da9052_read_alarm.exit
  %105 = ptrtoint ptr %da9052.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %da9052.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %107 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -1, ptr %val.i.i, align 4, !annotation !102
  %regmap.i.i12 = getelementptr inbounds %struct.da9052, ptr %106, i32 0, i32 1
  %108 = ptrtoint ptr %regmap.i.i12 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regmap.i.i12, align 4
  %call.i.i13 = call i32 @regmap_read(ptr noundef %109, i32 noundef 121, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i13)
  %cmp.i.i = icmp slt i32 %call.i.i13, 0
  br i1 %cmp.i.i, label %if.end.da9052_reg_read.exit.thread.i_crit_edge, label %if.end.i.i

if.end.da9052_reg_read.exit.thread.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_reg_read.exit.thread.i

if.end.i.i:                                       ; preds = %if.end
  %fix_io.i.i14 = getelementptr inbounds %struct.da9052, ptr %106, i32 0, i32 8
  %110 = ptrtoint ptr %fix_io.i.i14 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %fix_io.i.i14, align 4
  %tobool.not.i.i15 = icmp eq ptr %111, null
  br i1 %tobool.not.i.i15, label %if.end.i.i.da9052_reg_read.exit.i_crit_edge, label %if.then2.i.i

if.end.i.i.da9052_reg_read.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_reg_read.exit.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %call4.i.i = call i32 %111(ptr noundef %106, i8 noundef zeroext 121) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %if.then2.i.i.da9052_reg_read.exit.thread.i_crit_edge, label %if.then2.i.i.da9052_reg_read.exit.i_crit_edge

if.then2.i.i.da9052_reg_read.exit.i_crit_edge:    ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_reg_read.exit.i

if.then2.i.i.da9052_reg_read.exit.thread.i_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_reg_read.exit.thread.i

da9052_reg_read.exit.thread.i:                    ; preds = %if.then2.i.i.da9052_reg_read.exit.thread.i_crit_edge, %if.end.da9052_reg_read.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call4.i.i, %if.then2.i.i.da9052_reg_read.exit.thread.i_crit_edge ], [ %call.i.i13, %if.end.da9052_reg_read.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  br label %do.end.i17

da9052_reg_read.exit.i:                           ; preds = %if.then2.i.i.da9052_reg_read.exit.i_crit_edge, %if.end.i.i.da9052_reg_read.exit.i_crit_edge
  %112 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp.i16 = icmp slt i32 %113, 0
  br i1 %cmp.i16, label %da9052_reg_read.exit.i.do.end.i17_crit_edge, label %if.end.i

da9052_reg_read.exit.i.do.end.i17_crit_edge:      ; preds = %da9052_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i17

do.end.i17:                                       ; preds = %da9052_reg_read.exit.i.do.end.i17_crit_edge, %da9052_reg_read.exit.thread.i
  %retval.0.i9.i = phi i32 [ %retval.0.i.ph.i, %da9052_reg_read.exit.thread.i ], [ %113, %da9052_reg_read.exit.i.do.end.i17_crit_edge ]
  %114 = ptrtoint ptr %da9052.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %da9052.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i9.i) #9
  br label %da9052_rtc_get_alarm_status.exit

if.end.i:                                         ; preds = %da9052_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = lshr i32 %113, 6
  %and.lobit.i = and i32 %and.i, 1
  br label %da9052_rtc_get_alarm_status.exit

da9052_rtc_get_alarm_status.exit:                 ; preds = %if.end.i, %do.end.i17
  %retval.0.i18 = phi i32 [ %retval.0.i9.i, %do.end.i17 ], [ %and.lobit.i, %if.end.i ]
  %conv = trunc i32 %retval.0.i18 to i8
  %118 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv, ptr %alrm, align 4
  br label %cleanup

cleanup:                                          ; preds = %da9052_rtc_get_alarm_status.exit, %do.end
  %retval.0 = phi i32 [ %retval.0.i21, %do.end ], [ 0, %da9052_rtc_get_alarm_status.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %0 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tm_year, align 4
  %2 = add i32 %1, -164
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %2)
  %3 = icmp ult i32 %2, -64
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %da9052.i = getelementptr inbounds %struct.da9052_rtc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %da9052.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %da9052.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.da9052, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i22.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 121, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22.i)
  %cmp.i23.i = icmp slt i32 %call.i.i22.i, 0
  br i1 %cmp.i23.i, label %if.end.da9052_rtc_enable_alarm.exit_crit_edge, label %if.end.i26.i

if.end.da9052_rtc_enable_alarm.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_rtc_enable_alarm.exit

if.end.i26.i:                                     ; preds = %if.end
  %fix_io.i24.i = getelementptr inbounds %struct.da9052, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %fix_io.i24.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fix_io.i24.i, align 4
  %tobool.not.i25.i = icmp eq ptr %11, null
  br i1 %tobool.not.i25.i, label %if.end.i26.i.da9052_reg_update.exit30.i_crit_edge, label %if.then4.i28.i

if.end.i26.i.da9052_reg_update.exit30.i_crit_edge: ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_reg_update.exit30.i

if.then4.i28.i:                                   ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i27.i = tail call i32 %11(ptr noundef %7, i8 noundef zeroext 121) #6
  br label %da9052_reg_update.exit30.i

da9052_reg_update.exit30.i:                       ; preds = %if.then4.i28.i, %if.end.i26.i.da9052_reg_update.exit30.i_crit_edge
  %retval.0.i29.i = phi i32 [ %call6.i27.i, %if.then4.i28.i ], [ %call.i.i22.i, %if.end.i26.i.da9052_reg_update.exit30.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i29.i)
  %cmp5.not.i = icmp eq i32 %retval.0.i29.i, 0
  br i1 %cmp5.not.i, label %da9052_reg_update.exit30.i.if.end6_crit_edge, label %da9052_reg_update.exit30.i.da9052_rtc_enable_alarm.exit_crit_edge

da9052_reg_update.exit30.i.da9052_rtc_enable_alarm.exit_crit_edge: ; preds = %da9052_reg_update.exit30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_rtc_enable_alarm.exit

da9052_reg_update.exit30.i.if.end6_crit_edge:     ; preds = %da9052_reg_update.exit30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

da9052_rtc_enable_alarm.exit:                     ; preds = %da9052_reg_update.exit30.i.da9052_rtc_enable_alarm.exit_crit_edge, %if.end.da9052_rtc_enable_alarm.exit_crit_edge
  %retval.0.i2936.i = phi i32 [ %retval.0.i29.i, %da9052_reg_update.exit30.i.da9052_rtc_enable_alarm.exit_crit_edge ], [ %call.i.i22.i, %if.end.da9052_rtc_enable_alarm.exit_crit_edge ]
  %12 = ptrtoint ptr %da9052.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %da9052.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef %retval.0.i2936.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i2936.i)
  %cmp4 = icmp slt i32 %retval.0.i2936.i, 0
  br i1 %cmp4, label %da9052_rtc_enable_alarm.exit.cleanup_crit_edge, label %da9052_rtc_enable_alarm.exit.if.end6_crit_edge

da9052_rtc_enable_alarm.exit.if.end6_crit_edge:   ; preds = %da9052_rtc_enable_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

da9052_rtc_enable_alarm.exit.cleanup_crit_edge:   ; preds = %da9052_rtc_enable_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %da9052_rtc_enable_alarm.exit.if.end6_crit_edge, %da9052_reg_update.exit30.i.if.end6_crit_edge
  %16 = ptrtoint ptr %da9052.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %da9052.i, align 4
  %call.i = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #6
  %18 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp sgt i32 %19, 0
  br i1 %cmp.i, label %if.then.i, label %if.end6.do.body.i_crit_edge

if.end6.do.body.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i64 %call.i to i32
  %sub.i = sub nsw i32 60, %19
  %add.i = add i32 %sub.i, %conv.i
  %conv4.i = zext i32 %add.i to i64
  tail call void @rtc_time64_to_tm(i64 noundef %conv4.i, ptr noundef %time) #6
  %20 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr.i = load i32, ptr %time, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end6.do.body.i_crit_edge
  %21 = phi i32 [ %19, %if.end6.do.body.i_crit_edge ], [ %.pr.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %do.end15.i, label %do.body9.i, !prof !103

do.body9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/rtc/rtc-da9052.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !104
  unreachable

do.end15.i:                                       ; preds = %do.body.i
  %22 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_year, align 4
  %sub16.i = add i32 %23, -100
  store i32 %sub16.i, ptr %tm_year, align 4
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_mon.i, align 4
  %add17.i = add i32 %25, 1
  store i32 %add17.i, ptr %tm_mon.i, align 4
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm_min.i, align 4
  %regmap.i.i22 = getelementptr inbounds %struct.da9052, ptr %17, i32 0, i32 1
  %28 = ptrtoint ptr %regmap.i.i22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i.i22, align 4
  %conv2.i.i = and i32 %27, 255
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 117, i32 noundef 63, i32 noundef %conv2.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.end15.i.do.end25.i_crit_edge, label %if.end.i.i

do.end15.i.do.end25.i_crit_edge:                  ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25.i

if.end.i.i:                                       ; preds = %do.end15.i
  %fix_io.i.i = getelementptr inbounds %struct.da9052, ptr %17, i32 0, i32 8
  %30 = ptrtoint ptr %fix_io.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fix_io.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.end.i.i.da9052_reg_update.exit.i_crit_edge, label %if.then4.i.i

if.end.i.i.da9052_reg_update.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_reg_update.exit.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i = tail call i32 %31(ptr noundef %17, i8 noundef zeroext 117) #6
  br label %da9052_reg_update.exit.i

da9052_reg_update.exit.i:                         ; preds = %if.then4.i.i, %if.end.i.i.da9052_reg_update.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call6.i.i, %if.then4.i.i ], [ %call.i.i.i, %if.end.i.i.da9052_reg_update.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp20.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %cmp20.not.i, label %if.end27.i, label %da9052_reg_update.exit.i.do.end25.i_crit_edge

da9052_reg_update.exit.i.do.end25.i_crit_edge:    ; preds = %da9052_reg_update.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25.i

do.end25.i:                                       ; preds = %da9052_reg_update.exit.i.do.end25.i_crit_edge, %do.end15.i.do.end25.i_crit_edge
  %retval.0.i96.i = phi i32 [ %retval.0.i.i, %da9052_reg_update.exit.i.do.end25.i_crit_edge ], [ %call.i.i.i, %do.end15.i.do.end25.i_crit_edge ]
  %32 = ptrtoint ptr %da9052.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %da9052.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i96.i) #9
  br label %da9052_set_alarm.exit

if.end27.i:                                       ; preds = %da9052_reg_update.exit.i
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tm_hour.i, align 4
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %38 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm_mday.i, align 4
  %40 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tm_mon.i, align 4
  %42 = ptrtoint ptr %regmap.i.i22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i.i22, align 4
  %conv1.i.i = and i32 %37, 255
  %call.i.i = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 118, i32 noundef %conv1.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i.i, label %if.end27.i.cleanup_crit_edge, label %for.cond.i.i

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.i.i:                                     ; preds = %if.end27.i
  %44 = ptrtoint ptr %regmap.i.i22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i.i22, align 4
  %conv1.i.1.i = and i32 %39, 255
  %call.i.1.i = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 119, i32 noundef %conv1.i.1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %cmp2.i.1.i = icmp slt i32 %call.i.1.i, 0
  br i1 %cmp2.i.1.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.i.1.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.i.1.i:                                   ; preds = %for.cond.i.i
  %46 = ptrtoint ptr %regmap.i.i22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i.i22, align 4
  %conv1.i.2.i = and i32 %41, 255
  %call.i.2.i = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 120, i32 noundef %conv1.i.2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %cmp2.i.2.i = icmp slt i32 %call.i.2.i, 0
  br i1 %cmp2.i.2.i, label %for.cond.i.1.i.cleanup_crit_edge, label %for.cond.i.2.i

for.cond.i.1.i.cleanup_crit_edge:                 ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.i.2.i:                                   ; preds = %for.cond.i.1.i
  %48 = ptrtoint ptr %fix_io.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fix_io.i.i, align 4
  %tobool.not.i79.i = icmp eq ptr %49, null
  br i1 %tobool.not.i79.i, label %for.cond.i.2.i.if.end38.i_crit_edge, label %da9052_group_write.exit.i

for.cond.i.2.i.if.end38.i_crit_edge:              ; preds = %for.cond.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i

da9052_group_write.exit.i:                        ; preds = %for.cond.i.2.i
  %call6.i80.i = tail call i32 %49(ptr noundef %17, i8 noundef zeroext 118) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i80.i)
  %cmp35.i = icmp slt i32 %call6.i80.i, 0
  br i1 %cmp35.i, label %da9052_group_write.exit.i.cleanup_crit_edge, label %da9052_group_write.exit.i.if.end38.i_crit_edge

da9052_group_write.exit.i.if.end38.i_crit_edge:   ; preds = %da9052_group_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i

da9052_group_write.exit.i.cleanup_crit_edge:      ; preds = %da9052_group_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38.i:                                       ; preds = %da9052_group_write.exit.i.if.end38.i_crit_edge, %for.cond.i.2.i.if.end38.i_crit_edge
  %50 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tm_year, align 4
  %52 = ptrtoint ptr %regmap.i.i22 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i.i22, align 4
  %conv2.i84.i = and i32 %51, 255
  %call.i.i85.i = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 121, i32 noundef 63, i32 noundef %conv2.i84.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85.i)
  %cmp.i86.i = icmp slt i32 %call.i.i85.i, 0
  br i1 %cmp.i86.i, label %if.end38.i.do.end47.i_crit_edge, label %if.end.i89.i

if.end38.i.do.end47.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47.i

if.end.i89.i:                                     ; preds = %if.end38.i
  %54 = ptrtoint ptr %fix_io.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fix_io.i.i, align 4
  %tobool.not.i88.i = icmp eq ptr %55, null
  br i1 %tobool.not.i88.i, label %if.end.i89.i.da9052_reg_update.exit93.i_crit_edge, label %if.then4.i91.i

if.end.i89.i.da9052_reg_update.exit93.i_crit_edge: ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_reg_update.exit93.i

if.then4.i91.i:                                   ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i90.i = tail call i32 %55(ptr noundef %17, i8 noundef zeroext 121) #6
  br label %da9052_reg_update.exit93.i

da9052_reg_update.exit93.i:                       ; preds = %if.then4.i91.i, %if.end.i89.i.da9052_reg_update.exit93.i_crit_edge
  %retval.0.i92.i = phi i32 [ %call6.i90.i, %if.then4.i91.i ], [ %call.i.i85.i, %if.end.i89.i.da9052_reg_update.exit93.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i92.i)
  %cmp42.not.i = icmp eq i32 %retval.0.i92.i, 0
  br i1 %cmp42.not.i, label %da9052_reg_update.exit93.i.if.end10_crit_edge, label %da9052_reg_update.exit93.i.do.end47.i_crit_edge

da9052_reg_update.exit93.i.do.end47.i_crit_edge:  ; preds = %da9052_reg_update.exit93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47.i

da9052_reg_update.exit93.i.if.end10_crit_edge:    ; preds = %da9052_reg_update.exit93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end47.i:                                       ; preds = %da9052_reg_update.exit93.i.do.end47.i_crit_edge, %if.end38.i.do.end47.i_crit_edge
  %retval.0.i92104.i = phi i32 [ %retval.0.i92.i, %da9052_reg_update.exit93.i.do.end47.i_crit_edge ], [ %call.i.i85.i, %if.end38.i.do.end47.i_crit_edge ]
  %56 = ptrtoint ptr %da9052.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %da9052.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i92104.i) #9
  br label %da9052_set_alarm.exit

da9052_set_alarm.exit:                            ; preds = %do.end47.i, %do.end25.i
  %retval.0.i = phi i32 [ %retval.0.i96.i, %do.end25.i ], [ %retval.0.i92104.i, %do.end47.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp8 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp8, label %da9052_set_alarm.exit.cleanup_crit_edge, label %da9052_set_alarm.exit.if.end10_crit_edge

da9052_set_alarm.exit.if.end10_crit_edge:         ; preds = %da9052_set_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

da9052_set_alarm.exit.cleanup_crit_edge:          ; preds = %da9052_set_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %da9052_set_alarm.exit.if.end10_crit_edge, %da9052_reg_update.exit93.i.if.end10_crit_edge
  %60 = ptrtoint ptr %da9052.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %da9052.i, align 4
  %regmap.i.i24 = getelementptr inbounds %struct.da9052, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %regmap.i.i24 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i.i24, align 4
  %call.i.i.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 121, i32 noundef 192, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i25)
  %cmp.i.i26 = icmp slt i32 %call.i.i.i25, 0
  br i1 %cmp.i.i26, label %if.end10.do.end.i_crit_edge, label %if.end.i.i30

if.end10.do.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.i.i30:                                     ; preds = %if.end10
  %fix_io.i.i28 = getelementptr inbounds %struct.da9052, ptr %61, i32 0, i32 8
  %64 = ptrtoint ptr %fix_io.i.i28 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fix_io.i.i28, align 4
  %tobool.not.i.i29 = icmp eq ptr %65, null
  br i1 %tobool.not.i.i29, label %if.end.i.i30.da9052_reg_update.exit.i34_crit_edge, label %if.then4.i.i32

if.end.i.i30.da9052_reg_update.exit.i34_crit_edge: ; preds = %if.end.i.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_reg_update.exit.i34

if.then4.i.i32:                                   ; preds = %if.end.i.i30
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i31 = tail call i32 %65(ptr noundef %61, i8 noundef zeroext 121) #6
  br label %da9052_reg_update.exit.i34

da9052_reg_update.exit.i34:                       ; preds = %if.then4.i.i32, %if.end.i.i30.da9052_reg_update.exit.i34_crit_edge
  %retval.0.i.i33 = phi i32 [ %call6.i.i31, %if.then4.i.i32 ], [ %call.i.i.i25, %if.end.i.i30.da9052_reg_update.exit.i34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i33)
  %cmp.not.i = icmp eq i32 %retval.0.i.i33, 0
  br i1 %cmp.not.i, label %da9052_reg_update.exit.i34.cleanup_crit_edge, label %da9052_reg_update.exit.i34.do.end.i_crit_edge

da9052_reg_update.exit.i34.do.end.i_crit_edge:    ; preds = %da9052_reg_update.exit.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

da9052_reg_update.exit.i34.cleanup_crit_edge:     ; preds = %da9052_reg_update.exit.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %da9052_reg_update.exit.i34.do.end.i_crit_edge, %if.end10.do.end.i_crit_edge
  %retval.0.i33.i = phi i32 [ %retval.0.i.i33, %da9052_reg_update.exit.i34.do.end.i_crit_edge ], [ %call.i.i.i25, %if.end10.do.end.i_crit_edge ]
  %66 = ptrtoint ptr %da9052.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %da9052.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %retval.0.i33.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %da9052_reg_update.exit.i34.cleanup_crit_edge, %da9052_set_alarm.exit.cleanup_crit_edge, %da9052_group_write.exit.i.cleanup_crit_edge, %for.cond.i.1.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %if.end27.i.cleanup_crit_edge, %da9052_rtc_enable_alarm.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i2936.i, %da9052_rtc_enable_alarm.exit.cleanup_crit_edge ], [ %retval.0.i, %da9052_set_alarm.exit.cleanup_crit_edge ], [ %retval.0.i33.i, %do.end.i ], [ 0, %da9052_reg_update.exit.i34.cleanup_crit_edge ], [ %call.i.2.i, %for.cond.i.1.i.cleanup_crit_edge ], [ %call.i.1.i, %for.cond.i.i.cleanup_crit_edge ], [ %call.i.i, %if.end27.i.cleanup_crit_edge ], [ %call6.i80.i, %da9052_group_write.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool = icmp ne i32 %enabled, 0
  %call1 = tail call fastcc i32 @da9052_rtc_enable_alarm(ptr noundef %1, i1 noundef zeroext %tobool)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_valid_tm(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @da9052_rtc_enable_alarm(ptr nocapture noundef readonly %rtc, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %da9052 = getelementptr inbounds %struct.da9052_rtc, ptr %rtc, i32 0, i32 1
  %0 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da9052, align 4
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 121, i32 noundef 192, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.do.end_crit_edge, label %if.end.i

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i.da9052_reg_update.exit_crit_edge, label %if.then4.i

if.end.i.da9052_reg_update.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_reg_update.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 %5(ptr noundef %1, i8 noundef zeroext 121) #6
  br label %da9052_reg_update.exit

da9052_reg_update.exit:                           ; preds = %if.then4.i, %if.end.i.da9052_reg_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.then4.i ], [ %call.i.i, %if.end.i.da9052_reg_update.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp.not, label %da9052_reg_update.exit.if.end13_crit_edge, label %da9052_reg_update.exit.do.end_crit_edge

da9052_reg_update.exit.do.end_crit_edge:          ; preds = %da9052_reg_update.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

da9052_reg_update.exit.if.end13_crit_edge:        ; preds = %da9052_reg_update.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end:                                           ; preds = %da9052_reg_update.exit.do.end_crit_edge, %if.then.do.end_crit_edge
  %retval.0.i33 = phi i32 [ %retval.0.i, %da9052_reg_update.exit.do.end_crit_edge ], [ %call.i.i, %if.then.do.end_crit_edge ]
  %6 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %da9052, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %retval.0.i33) #9
  br label %if.end13

if.else:                                          ; preds = %entry
  %call.i.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 121, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %cmp.i23 = icmp slt i32 %call.i.i22, 0
  br i1 %cmp.i23, label %if.else.do.end9_crit_edge, label %if.end.i26

if.else.do.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

if.end.i26:                                       ; preds = %if.else
  %fix_io.i24 = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %fix_io.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fix_io.i24, align 4
  %tobool.not.i25 = icmp eq ptr %11, null
  br i1 %tobool.not.i25, label %if.end.i26.da9052_reg_update.exit30_crit_edge, label %if.then4.i28

if.end.i26.da9052_reg_update.exit30_crit_edge:    ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_reg_update.exit30

if.then4.i28:                                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i27 = tail call i32 %11(ptr noundef %1, i8 noundef zeroext 121) #6
  br label %da9052_reg_update.exit30

da9052_reg_update.exit30:                         ; preds = %if.then4.i28, %if.end.i26.da9052_reg_update.exit30_crit_edge
  %retval.0.i29 = phi i32 [ %call6.i27, %if.then4.i28 ], [ %call.i.i22, %if.end.i26.da9052_reg_update.exit30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i29)
  %cmp5.not = icmp eq i32 %retval.0.i29, 0
  br i1 %cmp5.not, label %da9052_reg_update.exit30.if.end13_crit_edge, label %da9052_reg_update.exit30.do.end9_crit_edge

da9052_reg_update.exit30.do.end9_crit_edge:       ; preds = %da9052_reg_update.exit30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

da9052_reg_update.exit30.if.end13_crit_edge:      ; preds = %da9052_reg_update.exit30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end9:                                          ; preds = %da9052_reg_update.exit30.do.end9_crit_edge, %if.else.do.end9_crit_edge
  %retval.0.i2936 = phi i32 [ %retval.0.i29, %da9052_reg_update.exit30.do.end9_crit_edge ], [ %call.i.i22, %if.else.do.end9_crit_edge ]
  %12 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %da9052, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef %retval.0.i2936) #9
  br label %if.end13

if.end13:                                         ; preds = %do.end9, %da9052_reg_update.exit30.if.end13_crit_edge, %do.end, %da9052_reg_update.exit.if.end13_crit_edge
  %ret.0 = phi i32 [ %retval.0.i33, %do.end ], [ 0, %da9052_reg_update.exit.if.end13_crit_edge ], [ %retval.0.i2936, %do.end9 ], [ 0, %da9052_reg_update.exit30.if.end13_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_rtc_da9052__227_328_da9052_rtc_driver_init6, !1, !"__initcall__kmod_rtc_da9052__227_328_da9052_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-da9052.c", i32 328, i32 1}
!2 = !{ptr @__exitcall_da9052_rtc_driver_exit, !1, !"__exitcall_da9052_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-da9052.c", i32 330, i32 1}
!5 = !{ptr @__UNIQUE_ID_description229, !6, !"__UNIQUE_ID_description229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-da9052.c", i32 331, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-da9052.c", i32 332, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-da9052.c", i32 333, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-da9052.c", i32 324, i32 11}
!14 = !{ptr @da9052_rtc_driver, !15, !"da9052_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-da9052.c", i32 321, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-da9052.c", i32 288, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @da9052_rtc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @da9052_rtc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-da9052.c", i32 296, i32 3}
!26 = !{ptr @da9052_rtc_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @da9052_rtc_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-da9052.c", i32 311, i32 58}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-da9052.c", i32 314, i32 3}
!32 = !{ptr @da9052_rtc_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @da9052_rtc_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @da9052_rtc_ops, !35, !"da9052_rtc_ops", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-da9052.c", i32 266, i32 35}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-da9052.c", i32 163, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @da9052_rtc_read_time._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @da9052_rtc_read_time._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @da9052_rtc_read_time._entry.15, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-da9052.c", i32 171, i32 4}
!43 = !{ptr @da9052_rtc_read_time._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/rtc/rtc-da9052.c", i32 191, i32 2}
!46 = !{ptr @da9052_rtc_read_time._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @da9052_rtc_read_time._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-da9052.c", i32 217, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @da9052_rtc_set_time._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @da9052_rtc_set_time._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-da9052.c", i32 229, i32 3}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @da9052_rtc_read_alarm._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @da9052_rtc_read_alarm._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/rtc/rtc-da9052.c", i32 65, i32 3}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @da9052_read_alarm._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @da9052_read_alarm._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @da9052_read_alarm._entry.26, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-da9052.c", i32 73, i32 4}
!65 = !{ptr @da9052_read_alarm._entry_ptr.27, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/rtc/rtc-da9052.c", i32 94, i32 2}
!68 = !{ptr @da9052_read_alarm._entry.28, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @da9052_read_alarm._entry_ptr.30, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/rtc/rtc-da9052.c", i32 146, i32 3}
!72 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @da9052_rtc_get_alarm_status._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @da9052_rtc_get_alarm_status._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/rtc/rtc-da9052.c", i32 37, i32 4}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @da9052_rtc_enable_alarm._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @da9052_rtc_enable_alarm._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/rtc/rtc-da9052.c", i32 42, i32 4}
!82 = !{ptr @da9052_rtc_enable_alarm._entry.35, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @da9052_rtc_enable_alarm._entry_ptr.37, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/rtc/rtc-da9052.c", i32 120, i32 3}
!86 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @da9052_set_alarm._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @da9052_set_alarm._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/rtc/rtc-da9052.c", i32 135, i32 3}
!91 = !{ptr @da9052_set_alarm._entry.40, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @da9052_set_alarm._entry_ptr.42, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"auto-init"}
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !{i64 2153924899, i64 2153925388, i64 2153924936, i64 2153924992, i64 2153925026, i64 2153925050, i64 2153925091, i64 2153925112, i64 2153925140, i64 2153925174}
