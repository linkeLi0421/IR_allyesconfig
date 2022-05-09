; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-cros-ec.c_pt.bc'
source_filename = "../drivers/rtc/rtc-cros-ec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.70 = type { %struct.cros_ec_command, %struct.ec_response_rtc }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.ec_response_rtc = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.cros_ec_dev = type { %struct.device, ptr, ptr, ptr, i8, i16, %struct.ec_response_get_features }
%struct.ec_response_get_features = type { [2 x i32] }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cros_ec_rtc = type { ptr, ptr, %struct.notifier_block, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.anon.71 = type { %struct.cros_ec_command, %struct.ec_response_rtc }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_cros_ec__227_395_cros_ec_rtc_driver_init6 = internal global ptr @cros_ec_rtc_driver_init, section ".initcall6.init", align 4
@cros_ec_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cros_ec_rtc_probe, ptr @cros_ec_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cros_ec_rtc_driver_exit = internal global ptr @cros_ec_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [53 x i8] c"rtc_cros_ec.description=RTC driver for Chrome OS ECs\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [58 x i8] c"rtc_cros_ec.author=Stephen Barber <smbarber@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [41 x i8] c"rtc_cros_ec.file=drivers/rtc/rtc-cros-ec\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [27 x i8] c"rtc_cros_ec.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [39 x i8] c"rtc_cros_ec.alias=platform:cros-ec-rtc\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cros-ec-rtc\00", [20 x i8] zeroinitializer }, align 32
@cros_ec_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cros_ec_rtc_suspend, ptr @cros_ec_rtc_resume, ptr @cros_ec_rtc_suspend, ptr @cros_ec_rtc_resume, ptr @cros_ec_rtc_suspend, ptr @cros_ec_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cros_ec_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 336, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to read RTC time\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cros_ec_rtc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-cros-ec.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_ec_rtc_probe._entry_ptr = internal global ptr @cros_ec_rtc_probe._entry, section ".printk_index", align 4
@cros_ec_rtc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 342, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize wakeup\0A\00", [35 x i8] zeroinitializer }, align 32
@cros_ec_rtc_probe._entry_ptr.8 = internal global ptr @cros_ec_rtc_probe._entry.6, section ".printk_index", align 4
@cros_ec_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @cros_ec_rtc_read_time, ptr @cros_ec_rtc_set_time, ptr @cros_ec_rtc_read_alarm, ptr @cros_ec_rtc_set_alarm, ptr null, ptr @cros_ec_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@cros_ec_rtc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 362, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register notifier\0A\00", [35 x i8] zeroinitializer }, align 32
@cros_ec_rtc_probe._entry_ptr.11 = internal global ptr @cros_ec_rtc_probe._entry.9, section ".printk_index", align 4
@cros_ec_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 94, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error getting time: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cros_ec_rtc_read_time\00", [42 x i8] zeroinitializer }, align 32
@cros_ec_rtc_read_time._entry_ptr = internal global ptr @cros_ec_rtc_read_time._entry, section ".printk_index", align 4
@cros_ec_rtc_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 50, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error getting %s from EC: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cros_ec_rtc_get\00", [16 x i8] zeroinitializer }, align 32
@cros_ec_rtc_get._entry_ptr = internal global ptr @cros_ec_rtc_get._entry, section ".printk_index", align 4
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"time\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"alarm\00", [26 x i8] zeroinitializer }, align 32
@cros_ec_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 113, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error setting time: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cros_ec_rtc_set_time\00", [43 x i8] zeroinitializer }, align 32
@cros_ec_rtc_set_time._entry_ptr = internal global ptr @cros_ec_rtc_set_time._entry, section ".printk_index", align 4
@cros_ec_rtc_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 77, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error setting %s on EC: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cros_ec_rtc_set\00", [16 x i8] zeroinitializer }, align 32
@cros_ec_rtc_set._entry_ptr = internal global ptr @cros_ec_rtc_set._entry, section ".printk_index", align 4
@cros_ec_rtc_read_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.22, ptr @.str.3, i32 135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cros_ec_rtc_read_alarm\00", [41 x i8] zeroinitializer }, align 32
@cros_ec_rtc_read_alarm._entry_ptr = internal global ptr @cros_ec_rtc_read_alarm._entry, section ".printk_index", align 4
@cros_ec_rtc_read_alarm._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 141, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error getting alarm: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cros_ec_rtc_read_alarm._entry_ptr.25 = internal global ptr @cros_ec_rtc_read_alarm._entry.23, section ".printk_index", align 4
@cros_ec_rtc_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.26, ptr @.str.3, i32 167, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cros_ec_rtc_set_alarm\00", [42 x i8] zeroinitializer }, align 32
@cros_ec_rtc_set_alarm._entry_ptr = internal global ptr @cros_ec_rtc_set_alarm._entry, section ".printk_index", align 4
@cros_ec_rtc_set_alarm._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error setting alarm: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cros_ec_rtc_set_alarm._entry_ptr.29 = internal global ptr @cros_ec_rtc_set_alarm._entry.27, section ".printk_index", align 4
@cros_ec_rtc_alarm_irq_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.30, ptr @.str.3, i32 210, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cros_ec_rtc_alarm_irq_enable\00", [35 x i8] zeroinitializer }, align 32
@cros_ec_rtc_alarm_irq_enable._entry_ptr = internal global ptr @cros_ec_rtc_alarm_irq_enable._entry, section ".printk_index", align 4
@cros_ec_rtc_alarm_irq_enable._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 224, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error restoring alarm: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cros_ec_rtc_alarm_irq_enable._entry_ptr.33 = internal global ptr @cros_ec_rtc_alarm_irq_enable._entry.31, section ".printk_index", align 4
@cros_ec_rtc_alarm_irq_enable._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.3, i32 232, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error saving alarm: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@cros_ec_rtc_alarm_irq_enable._entry_ptr.36 = internal global ptr @cros_ec_rtc_alarm_irq_enable._entry.34, section ".printk_index", align 4
@cros_ec_rtc_alarm_irq_enable._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.3, i32 252, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error disabling alarm: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cros_ec_rtc_alarm_irq_enable._entry_ptr.39 = internal global ptr @cros_ec_rtc_alarm_irq_enable._entry.37, section ".printk_index", align 4
@cros_ec_rtc_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 379, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to unregister notifier\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cros_ec_rtc_remove\00", [45 x i8] zeroinitializer }, align 32
@cros_ec_rtc_remove._entry_ptr = internal global ptr @cros_ec_rtc_remove._entry, section ".printk_index", align 4
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"cros_ec_rtc_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 386, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 390, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"cros_ec_rtc_pm_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 314, i32 8 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 336, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 342, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [16 x i8] c"cros_ec_rtc_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 282, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 362, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 94, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 47, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 113, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 75, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 135, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 141, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 167, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 193, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 210, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 224, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 232, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 252, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private constant [29 x i8] c"../drivers/rtc/rtc-cros-ec.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 379, i32 3 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_cros_ec_rtc_driver_exit, ptr @__initcall__kmod_rtc_cros_ec__227_395_cros_ec_rtc_driver_init6, ptr @cros_ec_rtc_alarm_irq_enable._entry, ptr @cros_ec_rtc_alarm_irq_enable._entry.31, ptr @cros_ec_rtc_alarm_irq_enable._entry.34, ptr @cros_ec_rtc_alarm_irq_enable._entry.37, ptr @cros_ec_rtc_alarm_irq_enable._entry_ptr, ptr @cros_ec_rtc_alarm_irq_enable._entry_ptr.33, ptr @cros_ec_rtc_alarm_irq_enable._entry_ptr.36, ptr @cros_ec_rtc_alarm_irq_enable._entry_ptr.39, ptr @cros_ec_rtc_driver_exit, ptr @cros_ec_rtc_get._entry, ptr @cros_ec_rtc_get._entry_ptr, ptr @cros_ec_rtc_probe._entry, ptr @cros_ec_rtc_probe._entry.6, ptr @cros_ec_rtc_probe._entry.9, ptr @cros_ec_rtc_probe._entry_ptr, ptr @cros_ec_rtc_probe._entry_ptr.11, ptr @cros_ec_rtc_probe._entry_ptr.8, ptr @cros_ec_rtc_read_alarm._entry, ptr @cros_ec_rtc_read_alarm._entry.23, ptr @cros_ec_rtc_read_alarm._entry_ptr, ptr @cros_ec_rtc_read_alarm._entry_ptr.25, ptr @cros_ec_rtc_read_time._entry, ptr @cros_ec_rtc_read_time._entry_ptr, ptr @cros_ec_rtc_remove._entry, ptr @cros_ec_rtc_remove._entry_ptr, ptr @cros_ec_rtc_set._entry, ptr @cros_ec_rtc_set._entry_ptr, ptr @cros_ec_rtc_set_alarm._entry, ptr @cros_ec_rtc_set_alarm._entry.27, ptr @cros_ec_rtc_set_alarm._entry_ptr, ptr @cros_ec_rtc_set_alarm._entry_ptr.29, ptr @cros_ec_rtc_set_time._entry, ptr @cros_ec_rtc_set_time._entry_ptr, ptr @cros_ec_rtc_driver, ptr @.str, ptr @cros_ec_rtc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @cros_ec_rtc_ops, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rtc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rtc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rtc_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rtc_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rtc_read_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rtc_read_alarm._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rtc_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rtc_set_alarm._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rtc_alarm_irq_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rtc_alarm_irq_enable._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rtc_alarm_irq_enable._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rtc_alarm_irq_enable._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rtc_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.anon.70, align 4
  %tm = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %ec_dev1 = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ec_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ec_dev1, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #6
  %6 = call ptr @memset(ptr %tm, i32 255, i32 36)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %9 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i.i, i32 0, i32 3
  %11 = call ptr @memset(ptr %msg.i.i, i32 0, i32 24)
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 68, ptr %9, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %10, align 4
  %call.i.i = call i32 @cros_ec_cmd_xfer_status(ptr noundef %5, ptr noundef nonnull %msg.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.cros_ec_device, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef %call.i.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call.i.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %16 = getelementptr inbounds %struct.anon.70, ptr %msg.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  %conv.i = zext i32 %18 to i64
  call void @rtc_time64_to_tm(i64 noundef %conv.i, ptr noundef nonnull %tm) #6
  %call12 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %call21 = call ptr @devm_rtc_allocate_device(ptr noundef %dev) #6
  %rtc = getelementptr inbounds %struct.cros_ec_rtc, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call21, ptr %rtc, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call21, i32 0, i32 3
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @cros_ec_rtc_ops, ptr %ops, align 8
  %22 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rtc, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %23, i32 0, i32 23
  %24 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 4294967295, ptr %range_max, align 8
  %25 = load ptr, ptr %rtc, align 4
  %call31 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  %notifier = getelementptr inbounds %struct.cros_ec_rtc, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @cros_ec_rtc_event, ptr %notifier, align 4
  %event_notifier = getelementptr inbounds %struct.cros_ec_device, ptr %5, i32 0, i32 22
  %call36 = call i32 @blocking_notifier_chain_register(ptr noundef %event_notifier, ptr noundef %notifier) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end34.cleanup_crit_edge, label %do.end41

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.end34.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.then24, %do.end17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call12, %do.end17 ], [ %20, %if.then24 ], [ %call36, %do.end41 ], [ -12, %entry.cleanup_crit_edge ], [ %call31, %if.end27.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_rtc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %event_notifier = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 22
  %notifier = getelementptr inbounds %struct.cros_ec_rtc, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %event_notifier, ptr noundef %notifier) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_rtc_read_time(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %msg.i = alloca %struct.anon.70, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i, i32 0, i32 3
  %6 = call ptr @memset(ptr %msg.i, i32 0, i32 24)
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 68, ptr %4, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %5, align 4
  %call.i = call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef %call.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = getelementptr inbounds %struct.anon.70, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  %conv = zext i32 %13 to i64
  call void @rtc_time64_to_tm(i64 noundef %conv, ptr noundef %tm) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_rtc_event(ptr nocapture noundef readonly %nb, i32 noundef %queued_during_suspend, ptr nocapture noundef readnone %_notify) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -8
  %rtc1 = getelementptr i8, ptr %nb, i32 -4
  %0 = ptrtoint ptr %rtc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @cros_ec_get_host_event(ptr noundef %3) #6
  %4 = and i32 %call, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 160) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_rtc_set_time(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %msg.i = alloca %struct.anon.71, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #6
  %conv = trunc i64 %call2 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.anon.71, ptr %msg.i, i32 0, i32 1
  %7 = call ptr @memset(ptr %msg.i, i32 0, i32 20)
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 70, ptr %4, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %5, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %6, align 4
  %call.i = call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end, label %cros_ec_rtc_set.exit

cros_ec_rtc_set.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.16, i32 noundef %call.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %cros_ec_rtc_set.exit
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %cros_ec_rtc_set.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_rtc_read_alarm(ptr noundef %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %msg.i22 = alloca %struct.anon.70, align 4
  %msg.i = alloca %struct.anon.70, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i, i32 0, i32 3
  %6 = call ptr @memset(ptr %msg.i, i32 0, i32 24)
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 68, ptr %4, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %5, align 4
  %call.i = call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef %call.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = getelementptr inbounds %struct.anon.70, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i22) #6
  %14 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i22, i32 0, i32 1
  %15 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i22, i32 0, i32 3
  %16 = call ptr @memset(ptr %msg.i22, i32 0, i32 24)
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 69, ptr %14, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %15, align 4
  %call.i23 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %msg.i22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %cmp.i24 = icmp slt i32 %call.i23, 0
  br i1 %cmp.i24, label %do.end8, label %if.end9

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i25 = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %dev.i25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i25, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17, i32 noundef %call.i23) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i22) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call.i23) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = getelementptr inbounds %struct.anon.70, ptr %msg.i22, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i22) #6
  %add = add i32 %23, %13
  %conv = zext i32 %add to i64
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  call void @rtc_time64_to_tm(i64 noundef %conv, ptr noundef %time) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end8, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i23, %do.end8 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_rtc_set_alarm(ptr noundef %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %msg.i43 = alloca %struct.anon.71, align 4
  %msg.i = alloca %struct.anon.70, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i, i32 0, i32 3
  %6 = call ptr @memset(ptr %msg.i, i32 0, i32 24)
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 68, ptr %4, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %5, align 4
  %call.i = call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef %call.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = getelementptr inbounds %struct.anon.70, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %call3 = call i64 @rtc_tm_to_time64(ptr noundef %time) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %call3)
  %14 = icmp ugt i64 %call3, 4294967295
  br i1 %14, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %15 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  %conv = trunc i64 %call3 to i32
  br i1 %tobool.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %saved_alarm = getelementptr inbounds %struct.cros_ec_rtc, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %saved_alarm to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %saved_alarm, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp10.not = icmp ult i32 %13, %conv
  br i1 %cmp10.not, label %if.end13, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %conv, %13
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.then8
  %alarm_offset.0 = phi i32 [ %sub, %if.end13 ], [ 0, %if.then8 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i43) #6
  %18 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i43, i32 0, i32 1
  %19 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i43, i32 0, i32 2
  %20 = getelementptr inbounds %struct.anon.71, ptr %msg.i43, i32 0, i32 1
  %21 = call ptr @memset(ptr %msg.i43, i32 0, i32 20)
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 71, ptr %18, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %19, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %alarm_offset.0, ptr %20, align 4
  %call.i44 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %msg.i43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %cmp.i45 = icmp slt i32 %call.i44, 0
  br i1 %cmp.i45, label %do.end22, label %cros_ec_rtc_set.exit

cros_ec_rtc_set.exit:                             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i43) #6
  br label %cleanup

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i46 = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %dev.i46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i46, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17, i32 noundef %call.i44) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i43) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call.i44) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %cros_ec_rtc_set.exit, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i44, %do.end22 ], [ -22, %if.end.cleanup_crit_edge ], [ -62, %if.else.cleanup_crit_edge ], [ 0, %cros_ec_rtc_set.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_rtc_alarm_irq_enable(ptr noundef %dev, i32 noundef %enabled) #2 align 64 {
entry:
  %msg.i80 = alloca %struct.anon.71, align 4
  %msg.i72 = alloca %struct.anon.70, align 4
  %msg.i66 = alloca %struct.anon.71, align 4
  %msg.i = alloca %struct.anon.70, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i, i32 0, i32 3
  %6 = call ptr @memset(ptr %msg.i, i32 0, i32 24)
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 68, ptr %4, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %5, align 4
  %call.i = call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef %call.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = getelementptr inbounds %struct.anon.70, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  br i1 %tobool.not, label %if.else15, label %if.then3

if.then3:                                         ; preds = %if.end
  %saved_alarm = getelementptr inbounds %struct.cros_ec_rtc, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %saved_alarm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %saved_alarm, align 4
  %16 = call i32 @llvm.usub.sat.i32(i32 %15, i32 %13)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i66) #6
  %17 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i66, i32 0, i32 1
  %18 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i66, i32 0, i32 2
  %19 = getelementptr inbounds %struct.anon.71, ptr %msg.i66, i32 0, i32 1
  %20 = call ptr @memset(ptr %msg.i66, i32 0, i32 20)
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 71, ptr %17, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %18, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %16, ptr %19, align 4
  %call.i67 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %msg.i66) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp.i68 = icmp slt i32 %call.i67, 0
  br i1 %cmp.i68, label %do.end13, label %cros_ec_rtc_set.exit

cros_ec_rtc_set.exit:                             ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i66) #6
  br label %cleanup

do.end13:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i69 = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %dev.i69 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i69, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17, i32 noundef %call.i67) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i66) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %call.i67) #9
  br label %cleanup

if.else15:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i72) #6
  %26 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i72, i32 0, i32 1
  %27 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i72, i32 0, i32 3
  %28 = call ptr @memset(ptr %msg.i72, i32 0, i32 24)
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 69, ptr %26, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %27, align 4
  %call.i73 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %msg.i72) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp.i74 = icmp slt i32 %call.i73, 0
  br i1 %cmp.i74, label %do.end21, label %if.end22

do.end21:                                         ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i75 = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %dev.i75 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i75, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17, i32 noundef %call.i73) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i72) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call.i73) #9
  br label %cleanup

if.end22:                                         ; preds = %if.else15
  %33 = getelementptr inbounds %struct.anon.70, ptr %msg.i72, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i72) #6
  %add = add i32 %35, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %13)
  %cmp23 = icmp ult i32 %add, %13
  %spec.select = select i1 %cmp23, i32 0, i32 %add
  %36 = getelementptr inbounds %struct.cros_ec_rtc, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.select, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i80) #6
  %38 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i80, i32 0, i32 1
  %39 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i80, i32 0, i32 2
  %40 = getelementptr inbounds %struct.anon.71, ptr %msg.i80, i32 0, i32 1
  %41 = call ptr @memset(ptr %msg.i80, i32 0, i32 20)
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 71, ptr %38, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %39, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %40, align 4
  %call.i81 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %msg.i80) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %cmp.i82 = icmp slt i32 %call.i81, 0
  br i1 %cmp.i82, label %do.end34, label %cros_ec_rtc_set.exit86

cros_ec_rtc_set.exit86:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i80) #6
  br label %cleanup

do.end34:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i83 = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 1
  %45 = ptrtoint ptr %dev.i83 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i83, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17, i32 noundef %call.i81) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i80) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %call.i81) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %cros_ec_rtc_set.exit86, %do.end21, %do.end13, %cros_ec_rtc_set.exit, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i67, %do.end13 ], [ %call.i73, %do.end21 ], [ %call.i81, %do.end34 ], [ 0, %cros_ec_rtc_set.exit86 ], [ 0, %cros_ec_rtc_set.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_get_host_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_rtc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %device_may_wakeup.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup_crit_edge, label %if.then

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.cros_ec_device, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 8
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %device_may_wakeup.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %device_may_wakeup.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_rtc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %device_may_wakeup.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup_crit_edge, label %if.then

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.cros_ec_device, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 8
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %device_may_wakeup.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %device_may_wakeup.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_rtc_cros_ec__227_395_cros_ec_rtc_driver_init6, !1, !"__initcall__kmod_rtc_cros_ec__227_395_cros_ec_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 395, i32 1}
!2 = !{ptr @__exitcall_cros_ec_rtc_driver_exit, !1, !"__exitcall_cros_ec_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 397, i32 1}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 398, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 399, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 400, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 390, i32 11}
!14 = !{ptr @cros_ec_rtc_driver, !15, !"cros_ec_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 386, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 336, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cros_ec_rtc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @cros_ec_rtc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 342, i32 3}
!26 = !{ptr @cros_ec_rtc_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cros_ec_rtc_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 362, i32 3}
!30 = !{ptr @cros_ec_rtc_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cros_ec_rtc_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 94, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cros_ec_rtc_read_time._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @cros_ec_rtc_read_time._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 47, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @cros_ec_rtc_get._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @cros_ec_rtc_get._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @cros_ec_rtc_ops, !45, !"cros_ec_rtc_ops", i1 false, i1 false}
!45 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 282, i32 35}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 113, i32 3}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @cros_ec_rtc_set_time._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @cros_ec_rtc_set_time._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 75, i32 3}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @cros_ec_rtc_set._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @cros_ec_rtc_set._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 135, i32 3}
!58 = !{ptr @cros_ec_rtc_read_alarm._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @cros_ec_rtc_read_alarm._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 141, i32 3}
!62 = !{ptr @cros_ec_rtc_read_alarm._entry.23, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @cros_ec_rtc_read_alarm._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 167, i32 3}
!66 = !{ptr @cros_ec_rtc_set_alarm._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @cros_ec_rtc_set_alarm._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 193, i32 3}
!70 = !{ptr @cros_ec_rtc_set_alarm._entry.27, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @cros_ec_rtc_set_alarm._entry_ptr.29, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 210, i32 3}
!74 = !{ptr @cros_ec_rtc_alarm_irq_enable._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @cros_ec_rtc_alarm_irq_enable._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 224, i32 4}
!78 = !{ptr @cros_ec_rtc_alarm_irq_enable._entry.31, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @cros_ec_rtc_alarm_irq_enable._entry_ptr.33, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 232, i32 4}
!82 = !{ptr @cros_ec_rtc_alarm_irq_enable._entry.34, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @cros_ec_rtc_alarm_irq_enable._entry_ptr.36, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 252, i32 4}
!86 = !{ptr @cros_ec_rtc_alarm_irq_enable._entry.37, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @cros_ec_rtc_alarm_irq_enable._entry_ptr.39, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 379, i32 3}
!90 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @cros_ec_rtc_remove._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @cros_ec_rtc_remove._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @cros_ec_rtc_pm_ops, !94, !"cros_ec_rtc_pm_ops", i1 false, i1 false}
!94 = !{!"../drivers/rtc/rtc-cros-ec.c", i32 314, i32 8}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
