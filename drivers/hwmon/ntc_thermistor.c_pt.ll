; ModuleID = '/llk/IR_all_yes/drivers/hwmon/ntc_thermistor.c_pt.bc'
source_filename = "../drivers/hwmon/ntc_thermistor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ntc_type = type { ptr, i32 }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.ntc_compensation = type { i32, i32 }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
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
%struct.ntc_data = type { ptr, i32, i32, i32, i32, i32, ptr }

@__initcall__kmod_ntc_thermistor__183_703_ntc_thermistor_driver_init6 = internal global ptr @ntc_thermistor_driver_init, section ".initcall6.init", align 4
@ntc_thermistor_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ntc_thermistor_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ntc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ntc_thermistor_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ntc_thermistor_driver_exit = internal global ptr @ntc_thermistor_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description184 = internal constant [49 x i8] c"ntc_thermistor.description=NTC Thermistor Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [62 x i8] c"ntc_thermistor.author=MyungJoo Ham <myungjoo.ham@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [49 x i8] c"ntc_thermistor.file=drivers/hwmon/ntc_thermistor\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [27 x i8] c"ntc_thermistor.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias188 = internal constant [45 x i8] c"ntc_thermistor.alias=platform:ntc-thermistor\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ntc-thermistor\00", [17 x i8] zeroinitializer }, align 32
@ntc_match = internal constant { [16 x %struct.of_device_id], [768 x i8] } { [16 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"epcos,b57330v2103\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ntc_thermistor_id }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"epcos,b57891s0103\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"murata,ncp03wb473\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"murata,ncp03wf104\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 72) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"murata,ncp15wb473\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 96) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"murata,ncp15wl333\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 120) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"murata,ncp15xh103\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 144) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"murata,ncp18wb473\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 168) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"murata,ncp21wb473\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 192) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,1404-001221\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 216) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ntc,ncp03wb473\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ntc,ncp15wb473\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 96) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ntc,ncp15wl333\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 120) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ntc,ncp18wb473\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 168) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ntc,ncp21wb473\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 192) }, %struct.of_device_id zeroinitializer], [768 x i8] zeroinitializer }, align 32
@ntc_thermistor_id = internal constant { [11 x %struct.platform_device_id], [88 x i8] } { [11 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"b57330v2103\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"b57891s0103\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"ncp03wb473\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id { [20 x i8] c"ncp03wf104\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.platform_device_id { [20 x i8] c"ncp15wb473\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id { [20 x i8] c"ncp15wl333\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.platform_device_id { [20 x i8] c"ncp15xh103\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.platform_device_id { [20 x i8] c"ncp18wb473\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id { [20 x i8] c"ncp21wb473\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id { [20 x i8] c"ssg1404_001221\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@ntc_thermistor_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 628, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Required data to use NTC driver not supplied.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ntc_thermistor_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/hwmon/ntc_thermistor.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ntc_thermistor_probe._entry_ptr = internal global ptr @ntc_thermistor_probe._entry, section ".printk_index", align 4
@ntc_thermistor_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 636, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown device type: %lu(%s)\0A\00", [34 x i8] zeroinitializer }, align 32
@ntc_thermistor_probe._entry_ptr.8 = internal global ptr @ntc_thermistor_probe._entry.6, section ".printk_index", align 4
@ntc_type = internal constant { [6 x %struct.ntc_type], [48 x i8] } { [6 x %struct.ntc_type] [%struct.ntc_type { ptr @b57330v2103, i32 34 }, %struct.ntc_type { ptr @b57891s0103, i32 43 }, %struct.ntc_type { ptr @ncpXXwb473, i32 34 }, %struct.ntc_type { ptr @ncpXXwf104, i32 34 }, %struct.ntc_type { ptr @ncpXXwl333, i32 34 }, %struct.ntc_type { ptr @ncpXXxh103, i32 34 }], [48 x i8] zeroinitializer }, align 32
@ntc_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @ntc_hwmon_ops, ptr @ntc_info }, [24 x i8] zeroinitializer }, align 32
@ntc_thermistor_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 647, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to register as hwmon device.\0A\00", [59 x i8] zeroinitializer }, align 32
@ntc_thermistor_probe._entry_ptr.11 = internal global ptr @ntc_thermistor_probe._entry.9, section ".printk_index", align 4
@ntc_thermistor_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 652, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Thermistor type: %s successfully probed.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ntc_thermistor_probe._entry_ptr.15 = internal global ptr @ntc_thermistor_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pullup-uv\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pullup-uv not specified\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pullup-ohm\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pullup-ohm not specified\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pulldown-ohm\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pulldown-ohm not specified\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"connected-positive\00", [45 x i8] zeroinitializer }, align 32
@b57330v2103 = internal constant { [34 x %struct.ntc_compensation], [80 x i8] } { [34 x %struct.ntc_compensation] [%struct.ntc_compensation { i32 -40, i32 190030 }, %struct.ntc_compensation { i32 -35, i32 145360 }, %struct.ntc_compensation { i32 -30, i32 112060 }, %struct.ntc_compensation { i32 -25, i32 87041 }, %struct.ntc_compensation { i32 -20, i32 68104 }, %struct.ntc_compensation { i32 -15, i32 53665 }, %struct.ntc_compensation { i32 -10, i32 42576 }, %struct.ntc_compensation { i32 -5, i32 34001 }, %struct.ntc_compensation { i32 0, i32 27326 }, %struct.ntc_compensation { i32 5, i32 22096 }, %struct.ntc_compensation { i32 10, i32 17973 }, %struct.ntc_compensation { i32 15, i32 14703 }, %struct.ntc_compensation { i32 20, i32 12090 }, %struct.ntc_compensation { i32 25, i32 10000 }, %struct.ntc_compensation { i32 30, i32 8311 }, %struct.ntc_compensation { i32 35, i32 6941 }, %struct.ntc_compensation { i32 40, i32 5825 }, %struct.ntc_compensation { i32 45, i32 4911 }, %struct.ntc_compensation { i32 50, i32 4158 }, %struct.ntc_compensation { i32 55, i32 3536 }, %struct.ntc_compensation { i32 60, i32 3019 }, %struct.ntc_compensation { i32 65, i32 2588 }, %struct.ntc_compensation { i32 70, i32 2227 }, %struct.ntc_compensation { i32 75, i32 1924 }, %struct.ntc_compensation { i32 80, i32 1668 }, %struct.ntc_compensation { i32 85, i32 1451 }, %struct.ntc_compensation { i32 90, i32 1266 }, %struct.ntc_compensation { i32 95, i32 1108 }, %struct.ntc_compensation { i32 100, i32 973 }, %struct.ntc_compensation { i32 105, i32 857 }, %struct.ntc_compensation { i32 110, i32 757 }, %struct.ntc_compensation { i32 115, i32 671 }, %struct.ntc_compensation { i32 120, i32 596 }, %struct.ntc_compensation { i32 125, i32 531 }], [80 x i8] zeroinitializer }, align 32
@b57891s0103 = internal constant { [43 x %struct.ntc_compensation], [72 x i8] } { [43 x %struct.ntc_compensation] [%struct.ntc_compensation { i32 -55, i32 878900 }, %struct.ntc_compensation { i32 -50, i32 617590 }, %struct.ntc_compensation { i32 -45, i32 439340 }, %struct.ntc_compensation { i32 -40, i32 316180 }, %struct.ntc_compensation { i32 -35, i32 230060 }, %struct.ntc_compensation { i32 -30, i32 169150 }, %struct.ntc_compensation { i32 -25, i32 125550 }, %struct.ntc_compensation { i32 -20, i32 94143 }, %struct.ntc_compensation { i32 -15, i32 71172 }, %struct.ntc_compensation { i32 -10, i32 54308 }, %struct.ntc_compensation { i32 -5, i32 41505 }, %struct.ntc_compensation { i32 0, i32 32014 }, %struct.ntc_compensation { i32 5, i32 25011 }, %struct.ntc_compensation { i32 10, i32 19691 }, %struct.ntc_compensation { i32 15, i32 15618 }, %struct.ntc_compensation { i32 20, i32 12474 }, %struct.ntc_compensation { i32 25, i32 10000 }, %struct.ntc_compensation { i32 30, i32 8080 }, %struct.ntc_compensation { i32 35, i32 6569 }, %struct.ntc_compensation { i32 40, i32 5372 }, %struct.ntc_compensation { i32 45, i32 4424 }, %struct.ntc_compensation { i32 50, i32 3661 }, %struct.ntc_compensation { i32 55, i32 3039 }, %struct.ntc_compensation { i32 60, i32 2536 }, %struct.ntc_compensation { i32 65, i32 2128 }, %struct.ntc_compensation { i32 70, i32 1794 }, %struct.ntc_compensation { i32 75, i32 1518 }, %struct.ntc_compensation { i32 80, i32 1290 }, %struct.ntc_compensation { i32 85, i32 1100 }, %struct.ntc_compensation { i32 90, i32 942 }, %struct.ntc_compensation { i32 95, i32 809 }, %struct.ntc_compensation { i32 100, i32 697 }, %struct.ntc_compensation { i32 105, i32 604 }, %struct.ntc_compensation { i32 110, i32 525 }, %struct.ntc_compensation { i32 115, i32 457 }, %struct.ntc_compensation { i32 120, i32 400 }, %struct.ntc_compensation { i32 125, i32 351 }, %struct.ntc_compensation { i32 130, i32 308 }, %struct.ntc_compensation { i32 135, i32 272 }, %struct.ntc_compensation { i32 140, i32 240 }, %struct.ntc_compensation { i32 145, i32 213 }, %struct.ntc_compensation { i32 150, i32 189 }, %struct.ntc_compensation { i32 155, i32 168 }], [72 x i8] zeroinitializer }, align 32
@ncpXXwb473 = internal constant { [34 x %struct.ntc_compensation], [80 x i8] } { [34 x %struct.ntc_compensation] [%struct.ntc_compensation { i32 -40, i32 1747920 }, %struct.ntc_compensation { i32 -35, i32 1245428 }, %struct.ntc_compensation { i32 -30, i32 898485 }, %struct.ntc_compensation { i32 -25, i32 655802 }, %struct.ntc_compensation { i32 -20, i32 483954 }, %struct.ntc_compensation { i32 -15, i32 360850 }, %struct.ntc_compensation { i32 -10, i32 271697 }, %struct.ntc_compensation { i32 -5, i32 206463 }, %struct.ntc_compensation { i32 0, i32 158214 }, %struct.ntc_compensation { i32 5, i32 122259 }, %struct.ntc_compensation { i32 10, i32 95227 }, %struct.ntc_compensation { i32 15, i32 74730 }, %struct.ntc_compensation { i32 20, i32 59065 }, %struct.ntc_compensation { i32 25, i32 47000 }, %struct.ntc_compensation { i32 30, i32 37643 }, %struct.ntc_compensation { i32 35, i32 30334 }, %struct.ntc_compensation { i32 40, i32 24591 }, %struct.ntc_compensation { i32 45, i32 20048 }, %struct.ntc_compensation { i32 50, i32 16433 }, %struct.ntc_compensation { i32 55, i32 13539 }, %struct.ntc_compensation { i32 60, i32 11209 }, %struct.ntc_compensation { i32 65, i32 9328 }, %struct.ntc_compensation { i32 70, i32 7798 }, %struct.ntc_compensation { i32 75, i32 6544 }, %struct.ntc_compensation { i32 80, i32 5518 }, %struct.ntc_compensation { i32 85, i32 4674 }, %struct.ntc_compensation { i32 90, i32 3972 }, %struct.ntc_compensation { i32 95, i32 3388 }, %struct.ntc_compensation { i32 100, i32 2902 }, %struct.ntc_compensation { i32 105, i32 2494 }, %struct.ntc_compensation { i32 110, i32 2150 }, %struct.ntc_compensation { i32 115, i32 1860 }, %struct.ntc_compensation { i32 120, i32 1615 }, %struct.ntc_compensation { i32 125, i32 1406 }], [80 x i8] zeroinitializer }, align 32
@ncpXXwf104 = internal constant { [34 x %struct.ntc_compensation], [80 x i8] } { [34 x %struct.ntc_compensation] [%struct.ntc_compensation { i32 -40, i32 4397119 }, %struct.ntc_compensation { i32 -35, i32 3088599 }, %struct.ntc_compensation { i32 -30, i32 2197225 }, %struct.ntc_compensation { i32 -25, i32 1581881 }, %struct.ntc_compensation { i32 -20, i32 1151037 }, %struct.ntc_compensation { i32 -15, i32 846579 }, %struct.ntc_compensation { i32 -10, i32 628988 }, %struct.ntc_compensation { i32 -5, i32 471632 }, %struct.ntc_compensation { i32 0, i32 357012 }, %struct.ntc_compensation { i32 5, i32 272500 }, %struct.ntc_compensation { i32 10, i32 209710 }, %struct.ntc_compensation { i32 15, i32 162651 }, %struct.ntc_compensation { i32 20, i32 127080 }, %struct.ntc_compensation { i32 25, i32 100000 }, %struct.ntc_compensation { i32 30, i32 79222 }, %struct.ntc_compensation { i32 35, i32 63167 }, %struct.ntc_compensation { i32 40, i32 50677 }, %struct.ntc_compensation { i32 45, i32 40904 }, %struct.ntc_compensation { i32 50, i32 33195 }, %struct.ntc_compensation { i32 55, i32 27091 }, %struct.ntc_compensation { i32 60, i32 22224 }, %struct.ntc_compensation { i32 65, i32 18323 }, %struct.ntc_compensation { i32 70, i32 15184 }, %struct.ntc_compensation { i32 75, i32 12635 }, %struct.ntc_compensation { i32 80, i32 10566 }, %struct.ntc_compensation { i32 85, i32 8873 }, %struct.ntc_compensation { i32 90, i32 7481 }, %struct.ntc_compensation { i32 95, i32 6337 }, %struct.ntc_compensation { i32 100, i32 5384 }, %struct.ntc_compensation { i32 105, i32 4594 }, %struct.ntc_compensation { i32 110, i32 3934 }, %struct.ntc_compensation { i32 115, i32 3380 }, %struct.ntc_compensation { i32 120, i32 2916 }, %struct.ntc_compensation { i32 125, i32 2522 }], [80 x i8] zeroinitializer }, align 32
@ncpXXwl333 = internal constant { [34 x %struct.ntc_compensation], [80 x i8] } { [34 x %struct.ntc_compensation] [%struct.ntc_compensation { i32 -40, i32 1610154 }, %struct.ntc_compensation { i32 -35, i32 1130850 }, %struct.ntc_compensation { i32 -30, i32 802609 }, %struct.ntc_compensation { i32 -25, i32 575385 }, %struct.ntc_compensation { i32 -20, i32 416464 }, %struct.ntc_compensation { i32 -15, i32 304219 }, %struct.ntc_compensation { i32 -10, i32 224193 }, %struct.ntc_compensation { i32 -5, i32 166623 }, %struct.ntc_compensation { i32 0, i32 124850 }, %struct.ntc_compensation { i32 5, i32 94287 }, %struct.ntc_compensation { i32 10, i32 71747 }, %struct.ntc_compensation { i32 15, i32 54996 }, %struct.ntc_compensation { i32 20, i32 42455 }, %struct.ntc_compensation { i32 25, i32 33000 }, %struct.ntc_compensation { i32 30, i32 25822 }, %struct.ntc_compensation { i32 35, i32 20335 }, %struct.ntc_compensation { i32 40, i32 16115 }, %struct.ntc_compensation { i32 45, i32 12849 }, %struct.ntc_compensation { i32 50, i32 10306 }, %struct.ntc_compensation { i32 55, i32 8314 }, %struct.ntc_compensation { i32 60, i32 6746 }, %struct.ntc_compensation { i32 65, i32 5503 }, %struct.ntc_compensation { i32 70, i32 4513 }, %struct.ntc_compensation { i32 75, i32 3721 }, %struct.ntc_compensation { i32 80, i32 3084 }, %struct.ntc_compensation { i32 85, i32 2569 }, %struct.ntc_compensation { i32 90, i32 2151 }, %struct.ntc_compensation { i32 95, i32 1809 }, %struct.ntc_compensation { i32 100, i32 1529 }, %struct.ntc_compensation { i32 105, i32 1299 }, %struct.ntc_compensation { i32 110, i32 1108 }, %struct.ntc_compensation { i32 115, i32 949 }, %struct.ntc_compensation { i32 120, i32 817 }, %struct.ntc_compensation { i32 125, i32 707 }], [80 x i8] zeroinitializer }, align 32
@ncpXXxh103 = internal constant { [34 x %struct.ntc_compensation], [80 x i8] } { [34 x %struct.ntc_compensation] [%struct.ntc_compensation { i32 -40, i32 247565 }, %struct.ntc_compensation { i32 -35, i32 181742 }, %struct.ntc_compensation { i32 -30, i32 135128 }, %struct.ntc_compensation { i32 -25, i32 101678 }, %struct.ntc_compensation { i32 -20, i32 77373 }, %struct.ntc_compensation { i32 -15, i32 59504 }, %struct.ntc_compensation { i32 -10, i32 46222 }, %struct.ntc_compensation { i32 -5, i32 36244 }, %struct.ntc_compensation { i32 0, i32 28674 }, %struct.ntc_compensation { i32 5, i32 22878 }, %struct.ntc_compensation { i32 10, i32 18399 }, %struct.ntc_compensation { i32 15, i32 14910 }, %struct.ntc_compensation { i32 20, i32 12169 }, %struct.ntc_compensation { i32 25, i32 10000 }, %struct.ntc_compensation { i32 30, i32 8271 }, %struct.ntc_compensation { i32 35, i32 6883 }, %struct.ntc_compensation { i32 40, i32 5762 }, %struct.ntc_compensation { i32 45, i32 4851 }, %struct.ntc_compensation { i32 50, i32 4105 }, %struct.ntc_compensation { i32 55, i32 3492 }, %struct.ntc_compensation { i32 60, i32 2985 }, %struct.ntc_compensation { i32 65, i32 2563 }, %struct.ntc_compensation { i32 70, i32 2211 }, %struct.ntc_compensation { i32 75, i32 1915 }, %struct.ntc_compensation { i32 80, i32 1666 }, %struct.ntc_compensation { i32 85, i32 1454 }, %struct.ntc_compensation { i32 90, i32 1275 }, %struct.ntc_compensation { i32 95, i32 1121 }, %struct.ntc_compensation { i32 100, i32 990 }, %struct.ntc_compensation { i32 105, i32 876 }, %struct.ntc_compensation { i32 110, i32 779 }, %struct.ntc_compensation { i32 115, i32 694 }, %struct.ntc_compensation { i32 120, i32 620 }, %struct.ntc_compensation { i32 125, i32 556 }], [80 x i8] zeroinitializer }, align 32
@ntc_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @ntc_is_visible, ptr @ntc_read, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@ntc_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.25, ptr @.compoundliteral.27, ptr null], [20 x i8] zeroinitializer }, align 32
@ntc_adc_iio_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013read channel() error: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ntc_adc_iio_read\00", [47 x i8] zeroinitializer }, align 32
@ntc_adc_iio_read._entry_ptr = internal global ptr @ntc_adc_iio_read._entry, section ".printk_index", align 4
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 16, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 6, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.26 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"ntc_thermistor_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 694, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 696, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [10 x i8] c"ntc_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 657, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"ntc_thermistor_id\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 52, i32 40 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 628, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 635, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [9 x i8] c"ntc_type\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 314, i32 30 }
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"ntc_chip_info\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 560, i32 37 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 647, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 651, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 583, i32 38 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 585, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 587, i32 38 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 589, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 591, i32 38 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 593, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 595, i32 37 }
@___asan_gen_.106 = private unnamed_addr constant [12 x i8] c"b57330v2103\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 223, i32 38 }
@___asan_gen_.109 = private unnamed_addr constant [12 x i8] c"b57891s0103\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 260, i32 38 }
@___asan_gen_.112 = private unnamed_addr constant [11 x i8] c"ncpXXwb473\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 72, i32 38 }
@___asan_gen_.115 = private unnamed_addr constant [11 x i8] c"ncpXXwf104\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 145, i32 38 }
@___asan_gen_.118 = private unnamed_addr constant [11 x i8] c"ncpXXwl333\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 108, i32 38 }
@___asan_gen_.121 = private unnamed_addr constant [11 x i8] c"ncpXXxh103\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 182, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant [14 x i8] c"ntc_hwmon_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 555, i32 31 }
@___asan_gen_.127 = private unnamed_addr constant [9 x i8] c"ntc_info\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 549, i32 41 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [34 x i8] c"../drivers/hwmon/ntc_thermistor.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 360, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_ntc_thermistor_driver_exit, ptr @__initcall__kmod_ntc_thermistor__183_703_ntc_thermistor_driver_init6, ptr @ntc_adc_iio_read._entry, ptr @ntc_adc_iio_read._entry_ptr, ptr @ntc_thermistor_driver_exit, ptr @ntc_thermistor_probe._entry, ptr @ntc_thermistor_probe._entry.12, ptr @ntc_thermistor_probe._entry.6, ptr @ntc_thermistor_probe._entry.9, ptr @ntc_thermistor_probe._entry_ptr, ptr @ntc_thermistor_probe._entry_ptr.11, ptr @ntc_thermistor_probe._entry_ptr.15, ptr @ntc_thermistor_probe._entry_ptr.8, ptr @ntc_thermistor_driver, ptr @.str, ptr @ntc_match, ptr @ntc_thermistor_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @ntc_type, ptr @ntc_chip_info, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @b57330v2103, ptr @b57891s0103, ptr @ncpXXwb473, ptr @ncpXXwf104, ptr @ncpXXwl333, ptr @ncpXXxh103, ptr @ntc_hwmon_ops, ptr @ntc_info, ptr @.str.23, ptr @.str.24, ptr @.compoundliteral, ptr @.compoundliteral.25, ptr @.compoundliteral.26, ptr @.compoundliteral.27], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntc_thermistor_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntc_match to i32), i32 3136, i32 3904, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntc_thermistor_id to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntc_thermistor_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntc_thermistor_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntc_type to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntc_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntc_thermistor_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntc_thermistor_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b57330v2103 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b57891s0103 to i32), i32 344, i32 416, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncpXXwb473 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncpXXwf104 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncpXXwl333 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncpXXxh103 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntc_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntc_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntc_adc_iio_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ntc_thermistor_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ntc_thermistor_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ntc_thermistor_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @ntc_thermistor_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntc_thermistor_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %type.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i) #7
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %type.i, align 4, !annotation !89
  %call.i80 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef null) #7
  %cmp.i.i = icmp ugt ptr %call.i80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call.i80 to i32
  br label %ntc_thermistor_parse_props.exit

if.end.i:                                         ; preds = %if.end
  %call3.i = call i32 @iio_get_channel_type(ptr noundef %call.i80, ptr noundef nonnull %type.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.end.i.ntc_thermistor_parse_props.exit.thread_crit_edge, label %if.end5.i

if.end.i.ntc_thermistor_parse_props.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ntc_thermistor_parse_props.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not.i = icmp eq i32 %3, 0
  br i1 %cmp6.not.i, label %if.end8.i, label %if.end5.i.ntc_thermistor_parse_props.exit.thread_crit_edge

if.end5.i.ntc_thermistor_parse_props.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ntc_thermistor_parse_props.exit.thread

if.end8.i:                                        ; preds = %if.end5.i
  %pullup_uv.i = getelementptr inbounds %struct.ntc_data, ptr %call.i, i32 0, i32 2
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef %pullup_uv.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call.i.i, ptr noundef nonnull @.str.17) #7
  br label %ntc_thermistor_parse_props.exit

if.end12.i:                                       ; preds = %if.end8.i
  %pullup_ohm.i = getelementptr inbounds %struct.ntc_data, ptr %call.i, i32 0, i32 3
  %call.i52.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef %pullup_ohm.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52.i)
  %tobool14.not.i = icmp eq i32 %call.i52.i, 0
  br i1 %tobool14.not.i, label %if.end17.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call16.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call.i52.i, ptr noundef nonnull @.str.19) #7
  br label %ntc_thermistor_parse_props.exit

if.end17.i:                                       ; preds = %if.end12.i
  %pulldown_ohm.i = getelementptr inbounds %struct.ntc_data, ptr %call.i, i32 0, i32 4
  %call.i53.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef %pulldown_ohm.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53.i)
  %tobool19.not.i = icmp eq i32 %call.i53.i, 0
  br i1 %tobool19.not.i, label %ntc_thermistor_parse_props.exit.thread84, label %if.then20.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call.i53.i, ptr noundef nonnull @.str.21) #7
  br label %ntc_thermistor_parse_props.exit

ntc_thermistor_parse_props.exit.thread84:         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i54.i = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.22) #7
  %not.call.i54.i = xor i1 %call.i54.i, true
  %spec.select.i = zext i1 %not.call.i54.i to i32
  %4 = getelementptr inbounds %struct.ntc_data, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select.i, ptr %4, align 4
  %chan27.i = getelementptr inbounds %struct.ntc_data, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %chan27.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i80, ptr %chan27.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #7
  br label %if.end5

ntc_thermistor_parse_props.exit.thread:           ; preds = %if.end5.i.ntc_thermistor_parse_props.exit.thread_crit_edge, %if.end.i.ntc_thermistor_parse_props.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end5.i.ntc_thermistor_parse_props.exit.thread_crit_edge ], [ %call3.i, %if.end.i.ntc_thermistor_parse_props.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #7
  br label %cleanup

ntc_thermistor_parse_props.exit:                  ; preds = %if.then20.i, %if.then15.i, %if.then10.i, %if.then.i
  %retval.0.i = phi i32 [ %1, %if.then.i ], [ %call11.i, %if.then10.i ], [ %call16.i, %if.then15.i ], [ %call21.i, %if.then20.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool3.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool3.not, label %ntc_thermistor_parse_props.exit.if.end5_crit_edge, label %ntc_thermistor_parse_props.exit.cleanup_crit_edge

ntc_thermistor_parse_props.exit.cleanup_crit_edge: ; preds = %ntc_thermistor_parse_props.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ntc_thermistor_parse_props.exit.if.end5_crit_edge: ; preds = %ntc_thermistor_parse_props.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %ntc_thermistor_parse_props.exit.if.end5_crit_edge, %ntc_thermistor_parse_props.exit.thread84
  %pullup_uv = getelementptr inbounds %struct.ntc_data, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %pullup_uv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pullup_uv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.end5.do.end_crit_edge, label %lor.lhs.false

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end5
  %pullup_ohm = getelementptr inbounds %struct.ntc_data, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %pullup_ohm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pullup_ohm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp6 = icmp eq i32 %10, 0
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false.lor.lhs.false8_crit_edge

lor.lhs.false.lor.lhs.false8_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false8

land.lhs.true:                                    ; preds = %lor.lhs.false
  %connect = getelementptr inbounds %struct.ntc_data, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %connect to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %connect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp7 = icmp eq i32 %12, 1
  br i1 %cmp7, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true.lor.lhs.false8_crit_edge

land.lhs.true.lor.lhs.false8_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false8

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false8:                                   ; preds = %land.lhs.true.lor.lhs.false8_crit_edge, %lor.lhs.false.lor.lhs.false8_crit_edge
  %pulldown_ohm = getelementptr inbounds %struct.ntc_data, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %pulldown_ohm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pulldown_ohm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp9 = icmp eq i32 %14, 0
  br i1 %cmp9, label %land.lhs.true10, label %lor.lhs.false8.lor.lhs.false13_crit_edge

lor.lhs.false8.lor.lhs.false13_crit_edge:         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false13

land.lhs.true10:                                  ; preds = %lor.lhs.false8
  %connect11 = getelementptr inbounds %struct.ntc_data, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %connect11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %connect11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp12 = icmp eq i32 %16, 0
  br i1 %cmp12, label %land.lhs.true10.do.end_crit_edge, label %land.lhs.true10.lor.lhs.false13_crit_edge

land.lhs.true10.lor.lhs.false13_crit_edge:        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false13

land.lhs.true10.do.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false13:                                  ; preds = %land.lhs.true10.lor.lhs.false13_crit_edge, %lor.lhs.false8.lor.lhs.false13_crit_edge
  %connect14 = getelementptr inbounds %struct.ntc_data, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %connect14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %connect14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %switch = icmp ult i32 %18, 2
  br i1 %switch, label %if.end20, label %lor.lhs.false13.do.end_crit_edge

lor.lhs.false13.do.end_crit_edge:                 ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false13.do.end_crit_edge, %land.lhs.true10.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end5.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false13
  %call21 = call ptr @device_get_match_data(ptr noundef %dev1) #7
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %call21, i32 0, i32 1
  %19 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %20)
  %cmp22 = icmp ugt i32 %20, 5
  br i1 %cmp22, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %20, ptr noundef %call21) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %arrayidx = getelementptr [6 x %struct.ntc_type], ptr @ntc_type, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %call.i, align 4
  %24 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %driver_data, align 4
  %n_comp = getelementptr [6 x %struct.ntc_type], ptr @ntc_type, i32 0, i32 %25, i32 1
  %26 = ptrtoint ptr %n_comp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_comp, align 4
  %n_comp33 = getelementptr inbounds %struct.ntc_data, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %n_comp33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %n_comp33, align 4
  %call36 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %call21, ptr noundef nonnull %call.i, ptr noundef nonnull @ntc_chip_info, ptr noundef null) #7
  %cmp.i81 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81, label %do.end41, label %do.end46

do.end41:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #10
  %29 = ptrtoint ptr %call36 to i32
  br label %cleanup

do.end46:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef %call21) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %do.end41, %do.end26, %do.end, %ntc_thermistor_parse_props.exit.cleanup_crit_edge, %ntc_thermistor_parse_props.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end26 ], [ %29, %do.end41 ], [ 0, %do.end46 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %ntc_thermistor_parse_props.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %ntc_thermistor_parse_props.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_get_channel_type(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ntc_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  %attr.off = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %attr.off)
  %switch = icmp ult i32 %attr.off, 2
  %or.cond = and i1 %cmp, %switch
  %retval.0 = select i1 %or.cond, i16 292, i16 0
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntc_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %uv.i.i = alloca i32, align 4
  %raw.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cond = icmp eq i32 %type, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %attr, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %chan.i.i = getelementptr inbounds %struct.ntc_data, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uv.i.i) #7
  %5 = ptrtoint ptr %uv.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %uv.i.i, align 4, !annotation !89
  %call.i.i = call i32 @iio_read_channel_processed_scale(ptr noundef %4, ptr noundef nonnull %uv.i.i, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %sw.bb1.ntc_adc_iio_read.exitthread-pre-split.i_crit_edge

sw.bb1.ntc_adc_iio_read.exitthread-pre-split.i_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %ntc_adc_iio_read.exitthread-pre-split.i

if.then.i.i:                                      ; preds = %sw.bb1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw.i.i) #7
  %6 = ptrtoint ptr %raw.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %raw.i.i, align 4, !annotation !89
  %call1.i.i = call i32 @iio_read_channel_raw(ptr noundef %4, ptr noundef nonnull %raw.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %ntc_adc_iio_read.exit.thread.i, label %if.end.i.i

ntc_adc_iio_read.exit.thread.i:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call1.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uv.i.i) #7
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i.i
  %7 = ptrtoint ptr %raw.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %raw.i.i, align 4
  %call5.i.i = call i32 @iio_convert_raw_to_processed(ptr noundef %4, i32 noundef %8, ptr noundef nonnull %uv.i.i, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp6.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.end11.critedge.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %pullup_uv.i.i = getelementptr inbounds %struct.ntc_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %pullup_uv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pullup_uv.i.i, align 4
  %conv.i.i = zext i32 %10 to i64
  %11 = ptrtoint ptr %raw.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %raw.i.i, align 4
  %conv8.i.i = sext i32 %12 to i64
  %mul.i.i = mul nsw i64 %conv8.i.i, %conv.i.i
  %13 = lshr i64 %mul.i.i, 12
  %conv9.i.i = trunc i64 %13 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw.i.i) #7
  br label %ntc_adc_iio_read.exit.i

if.end11.critedge.i.i:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw.i.i) #7
  br label %ntc_adc_iio_read.exitthread-pre-split.i

ntc_adc_iio_read.exitthread-pre-split.i:          ; preds = %if.end11.critedge.i.i, %sw.bb1.ntc_adc_iio_read.exitthread-pre-split.i_crit_edge
  %14 = ptrtoint ptr %uv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr.i = load i32, ptr %uv.i.i, align 4
  br label %ntc_adc_iio_read.exit.i

ntc_adc_iio_read.exit.i:                          ; preds = %ntc_adc_iio_read.exitthread-pre-split.i, %if.then7.i.i
  %15 = phi i32 [ %.pr.i, %ntc_adc_iio_read.exitthread-pre-split.i ], [ %conv9.i.i, %if.then7.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uv.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp slt i32 %15, 0
  br i1 %cmp.i, label %ntc_adc_iio_read.exit.i.cleanup_crit_edge, label %if.end.i

ntc_adc_iio_read.exit.i.cleanup_crit_edge:        ; preds = %ntc_adc_iio_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %ntc_adc_iio_read.exit.i
  %pullup_uv.i5.i = getelementptr inbounds %struct.ntc_data, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %pullup_uv.i5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pullup_uv.i5.i, align 4
  %pullup_ohm.i.i = getelementptr inbounds %struct.ntc_data, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %pullup_ohm.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pullup_ohm.i.i, align 4
  %conv.i6.i = zext i32 %19 to i64
  %pulldown_ohm.i.i = getelementptr inbounds %struct.ntc_data, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %pulldown_ohm.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pulldown_ohm.i.i, align 4
  %conv1.i.i = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i7.i = icmp eq i32 %15, 0
  br i1 %cmp.i7.i, label %if.then.i8.i, label %if.end.i9.i

if.then.i8.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %connect.i.i = getelementptr inbounds %struct.ntc_data, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %connect.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %connect.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp3.i.i = icmp eq i32 %23, 0
  %cond.i.i = select i1 %cmp3.i.i, i32 2147483647, i32 0
  br label %if.end

if.end.i9.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp5.not.i.i = icmp ugt i32 %17, %15
  %connect13.i.i = getelementptr inbounds %struct.ntc_data, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %connect13.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %connect13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp14.i.i = icmp eq i32 %25, 0
  br i1 %cmp5.not.i.i, label %if.end12.i.i, label %if.then7.i10.i

if.then7.i10.i:                                   ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond11.i.i = select i1 %cmp14.i.i, i32 0, i32 2147483647
  br label %if.end

if.end12.i.i:                                     ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp16.i.i = icmp eq i32 %19, 0
  %or.cond.i.i = select i1 %cmp14.i.i, i1 %cmp16.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then18.i.i, label %if.else.i.i

if.then18.i.i:                                    ; preds = %if.end12.i.i
  %sub.i.i = sub i32 %17, %15
  %conv19.i.i = zext i32 %sub.i.i to i64
  %mul.i11.i = mul nuw i64 %conv1.i.i, %conv19.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i11.i)
  %cmp164.i.i.i.i = icmp ult i64 %mul.i11.i, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !90

if.then168.i.i.i.i:                               ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i.i = trunc i64 %mul.i11.i to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %15
  %conv173.i.i.i.i = zext i32 %div172.i.i.i.i to i64
  br label %if.end60.i.i

if.else174.i.i.i.i:                               ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %mul.i11.i) #11, !srcloc !91
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %26, 1
  br label %if.end60.i.i

if.else.i.i:                                      ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp21.i.i = icmp eq i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp24.i.i = icmp eq i32 %21, 0
  %or.cond103.i.i = select i1 %cmp21.i.i, i1 %cmp24.i.i, i1 false
  br i1 %or.cond103.i.i, label %if.then26.i.i, label %if.else31.i.i

if.then26.i.i:                                    ; preds = %if.else.i.i
  %conv27.i.i = zext i32 %15 to i64
  %mul28.i.i = mul nuw nsw i64 %conv.i6.i, %conv27.i.i
  %sub29.i.i = sub i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul28.i.i)
  %cmp164.i.i208.i.i = icmp ult i64 %mul28.i.i, 4294967296
  br i1 %cmp164.i.i208.i.i, label %if.then168.i.i213.i.i, label %if.else174.i.i215.i.i, !prof !90

if.then168.i.i213.i.i:                            ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i210.i.i = trunc i64 %mul28.i.i to i32
  %div172.i.i211.i.i = udiv i32 %conv169.i.i210.i.i, %sub29.i.i
  %conv173.i.i212.i.i = zext i32 %div172.i.i211.i.i to i64
  br label %if.end60.i.i

if.else174.i.i215.i.i:                            ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub29.i.i, i64 %mul28.i.i) #11, !srcloc !91
  %asmresult1.i.i.i214.i.i = extractvalue { i64, i64 } %27, 1
  br label %if.end60.i.i

if.else31.i.i:                                    ; preds = %if.else.i.i
  br i1 %cmp14.i.i, label %if.then35.i.i, label %if.else47.i.i

if.then35.i.i:                                    ; preds = %if.else31.i.i
  %sub37.i.i = sub i32 %17, %15
  %conv38.i.i = zext i32 %sub37.i.i to i64
  %mul36.i.i = mul nuw i64 %conv1.i.i, %conv38.i.i
  %mul39.i.i = mul i64 %mul36.i.i, %conv.i6.i
  %conv40.i.i = zext i32 %15 to i64
  %mul41.i.i = mul nuw nsw i64 %conv.i6.i, %conv40.i.i
  %sub45.i.i = sub i64 %mul41.i.i, %mul36.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul41.i.i, i64 %mul36.i.i)
  %cmp.i.i.i = icmp eq i64 %mul41.i.i, %mul36.i.i
  %28 = or i64 %sub45.i.i, %mul39.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %29 = icmp eq i64 %28, 0
  %.mux.i.i.i = select i1 %29, i64 0, i64 4294967295
  br i1 %cmp.i.i.i, label %if.then35.i.i.if.end60.i.i_crit_edge, label %if.end4.i.i.i

if.then35.i.i.if.end60.i.i_crit_edge:             ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i.i

if.end4.i.i.i:                                    ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call i64 @div64_u64(i64 noundef %mul39.i.i, i64 noundef %sub45.i.i) #7
  br label %if.end60.i.i

if.else47.i.i:                                    ; preds = %if.else31.i.i
  %conv49.i.i = zext i32 %15 to i64
  %mul48.i.i = mul nuw nsw i64 %conv.i6.i, %conv49.i.i
  %mul50.i.i = mul i64 %mul48.i.i, %conv1.i.i
  %sub51.i.i = sub i32 %17, %15
  %conv52.i.i = zext i32 %sub51.i.i to i64
  %mul53.i.i = mul nuw i64 %conv1.i.i, %conv52.i.i
  %sub56.i.i = sub i64 %mul53.i.i, %mul48.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul53.i.i, i64 %mul48.i.i)
  %cmp.i218.i.i = icmp eq i64 %mul53.i.i, %mul48.i.i
  %30 = or i64 %sub56.i.i, %mul50.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %31 = icmp eq i64 %30, 0
  %.mux.i219.i.i = select i1 %31, i64 0, i64 4294967295
  br i1 %cmp.i218.i.i, label %if.else47.i.i.if.end60.i.i_crit_edge, label %if.end4.i221.i.i

if.else47.i.i.if.end60.i.i_crit_edge:             ; preds = %if.else47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i.i

if.end4.i221.i.i:                                 ; preds = %if.else47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i220.i.i = call i64 @div64_u64(i64 noundef %mul50.i.i, i64 noundef %sub56.i.i) #7
  br label %if.end60.i.i

if.end60.i.i:                                     ; preds = %if.end4.i221.i.i, %if.else47.i.i.if.end60.i.i_crit_edge, %if.end4.i.i.i, %if.then35.i.i.if.end60.i.i_crit_edge, %if.else174.i.i215.i.i, %if.then168.i.i213.i.i, %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %n.0.i.i = phi i64 [ %conv173.i.i.i.i, %if.then168.i.i.i.i ], [ %asmresult1.i.i.i.i.i, %if.else174.i.i.i.i ], [ %conv173.i.i212.i.i, %if.then168.i.i213.i.i ], [ %asmresult1.i.i.i214.i.i, %if.else174.i.i215.i.i ], [ %call.i.i.i, %if.end4.i.i.i ], [ %.mux.i.i.i, %if.then35.i.i.if.end60.i.i_crit_edge ], [ %call.i220.i.i, %if.end4.i221.i.i ], [ %.mux.i219.i.i, %if.else47.i.i.if.end60.i.i_crit_edge ]
  %32 = call i64 @llvm.umin.i64(i64 %n.0.i.i, i64 2147483647) #7
  %conv65.i.i = trunc i64 %32 to i32
  br label %if.end

if.end:                                           ; preds = %if.end60.i.i, %if.then7.i10.i, %if.then.i8.i
  %retval.0.i.ph = phi i32 [ %conv65.i.i, %if.end60.i.i ], [ %cond11.i.i, %if.then7.i10.i ], [ %cond.i.i, %if.then.i8.i ]
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %ohm1.i.i = getelementptr inbounds %struct.ntc_compensation, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %ohm1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ohm1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %retval.0.i.ph)
  %cmp.not.i.i = icmp ugt i32 %36, %retval.0.i.ph
  br i1 %cmp.not.i.i, label %if.end.i.i14, label %if.end.lookup_comp.exit.i_crit_edge

if.end.lookup_comp.exit.i_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lookup_comp.exit.i

if.end.i.i14:                                     ; preds = %if.end
  %n_comp.i.i = getelementptr inbounds %struct.ntc_data, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %n_comp.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_comp.i.i, align 4
  %sub.i.i12 = add i32 %38, -1
  %ohm4.i.i = getelementptr %struct.ntc_compensation, ptr %34, i32 %sub.i.i12, i32 1
  %39 = ptrtoint ptr %ohm4.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ohm4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %retval.0.i.ph)
  %cmp5.not.i.i13 = icmp ult i32 %40, %retval.0.i.ph
  br i1 %cmp5.not.i.i13, label %while.cond.preheader.i.i, label %if.end.i.i14.lookup_comp.exit.i_crit_edge

if.end.i.i14.lookup_comp.exit.i_crit_edge:        ; preds = %if.end.i.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %lookup_comp.exit.i

while.cond.preheader.i.i:                         ; preds = %if.end.i.i14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp1366.i.i = icmp sgt i32 %38, 0
  br i1 %cmp1366.i.i, label %while.cond.preheader.i.i.while.body.i.i_crit_edge, label %while.cond.preheader.i.i.while.end.i.i_crit_edge

while.cond.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end27.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %end.068.i.i = phi i32 [ %end.1.i.i, %if.end27.i.i.while.body.i.i_crit_edge ], [ %38, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %start.067.i.i = phi i32 [ %start.1.i.i, %if.end27.i.i.while.body.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %sub14.i.i = sub i32 %end.068.i.i, %start.067.i.i
  %div.i.i = sdiv i32 %sub14.i.i, 2
  %add.i.i = add i32 %div.i.i, %start.067.i.i
  %ohm17.i.i = getelementptr %struct.ntc_compensation, ptr %34, i32 %add.i.i, i32 1
  %41 = ptrtoint ptr %ohm17.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ohm17.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %retval.0.i.ph)
  %cmp18.not.i.i = icmp ugt i32 %42, %retval.0.i.ph
  br i1 %cmp18.not.i.i, label %if.else.i.i15, label %while.body.i.i.if.end27.i.i_crit_edge

while.body.i.i.if.end27.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i.i

if.else.i.i15:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add20.i.i = add i32 %add.i.i, 1
  %ohm23.i.i = getelementptr %struct.ntc_compensation, ptr %34, i32 %add20.i.i, i32 1
  %43 = ptrtoint ptr %ohm23.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ohm23.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %retval.0.i.ph)
  %cmp24.not.i.i = icmp ugt i32 %44, %retval.0.i.ph
  %spec.select.i.i = select i1 %cmp24.not.i.i, i32 %end.068.i.i, i32 %add20.i.i
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.else.i.i15, %while.body.i.i.if.end27.i.i_crit_edge
  %start.1.i.i = phi i32 [ %start.067.i.i, %while.body.i.i.if.end27.i.i_crit_edge ], [ %add20.i.i, %if.else.i.i15 ]
  %end.1.i.i = phi i32 [ %add.i.i, %while.body.i.i.if.end27.i.i_crit_edge ], [ %spec.select.i.i, %if.else.i.i15 ]
  %cmp13.i.i = icmp sgt i32 %end.1.i.i, %start.1.i.i
  br i1 %cmp13.i.i, label %if.end27.i.i.while.body.i.i_crit_edge, label %if.end27.i.i.while.end.i.i_crit_edge

if.end27.i.i.while.end.i.i_crit_edge:             ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

if.end27.i.i.while.body.i.i_crit_edge:            ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end27.i.i.while.end.i.i_crit_edge, %while.cond.preheader.i.i.while.end.i.i_crit_edge
  %end.0.lcssa.i.i = phi i32 [ %38, %while.cond.preheader.i.i.while.end.i.i_crit_edge ], [ %end.1.i.i, %if.end27.i.i.while.end.i.i_crit_edge ]
  %ohm30.i.i = getelementptr %struct.ntc_compensation, ptr %34, i32 %end.0.lcssa.i.i, i32 1
  %45 = ptrtoint ptr %ohm30.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ohm30.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %retval.0.i.ph)
  %cmp31.i.i = icmp ne i32 %46, %retval.0.i.ph
  %sub34.i.i = sext i1 %cmp31.i.i to i32
  %storemerge.i.i = add i32 %end.0.lcssa.i.i, %sub34.i.i
  br label %lookup_comp.exit.i

lookup_comp.exit.i:                               ; preds = %while.end.i.i, %if.end.i.i14.lookup_comp.exit.i_crit_edge, %if.end.lookup_comp.exit.i_crit_edge
  %low.0.i = phi i32 [ %end.0.lcssa.i.i, %while.end.i.i ], [ 0, %if.end.lookup_comp.exit.i_crit_edge ], [ %sub.i.i12, %if.end.i.i14.lookup_comp.exit.i_crit_edge ]
  %storemerge.sink.i.i = phi i32 [ %storemerge.i.i, %while.end.i.i ], [ 0, %if.end.lookup_comp.exit.i_crit_edge ], [ %sub.i.i12, %if.end.i.i14.lookup_comp.exit.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ntc_compensation, ptr %34, i32 %low.0.i
  %ohm1.i = getelementptr %struct.ntc_compensation, ptr %34, i32 %low.0.i, i32 1
  %47 = ptrtoint ptr %ohm1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ohm1.i, align 4
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i, align 4
  %mul.i = mul i32 %50, 1000
  %arrayidx5.i = getelementptr %struct.ntc_compensation, ptr %34, i32 %storemerge.sink.i.i
  %ohm6.i = getelementptr %struct.ntc_compensation, ptr %34, i32 %storemerge.sink.i.i, i32 1
  %51 = ptrtoint ptr %ohm6.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ohm6.i, align 4
  %53 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx5.i, align 4
  %mul10.i = mul i32 %54, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul10.i, i32 %mul.i)
  %cmp.i.i16 = icmp eq i32 %mul10.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.ph, i32 %48)
  %cmp1.i.i = icmp eq i32 %retval.0.i.ph, %48
  %or.cond.i.i17 = or i1 %cmp1.i.i, %cmp.i.i16
  br i1 %or.cond.i.i17, label %lookup_comp.exit.i.get_temp_mc.exit_crit_edge, label %if.end.i16.i

lookup_comp.exit.i.get_temp_mc.exit_crit_edge:    ; preds = %lookup_comp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_temp_mc.exit

if.end.i16.i:                                     ; preds = %lookup_comp.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %48)
  %cmp2.i.i18 = icmp eq i32 %52, %48
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %retval.0.i.ph)
  %cmp4.i.i = icmp eq i32 %52, %retval.0.i.ph
  %or.cond21.i.i = or i1 %cmp2.i.i18, %cmp4.i.i
  br i1 %or.cond21.i.i, label %if.end.i16.i.get_temp_mc.exit_crit_edge, label %if.end6.i.i

if.end.i16.i.get_temp_mc.exit_crit_edge:          ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_temp_mc.exit

if.end6.i.i:                                      ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i17.i = sub i32 %mul10.i, %mul.i
  %sub7.i.i = sub i32 %retval.0.i.ph, %48
  %mul.i.i19 = mul i32 %sub.i17.i, %sub7.i.i
  %sub8.i.i = sub i32 %52, %48
  %div.i18.i = sdiv i32 %mul.i.i19, %sub8.i.i
  %add.i19.i = add i32 %div.i18.i, %mul.i
  br label %get_temp_mc.exit

get_temp_mc.exit:                                 ; preds = %if.end6.i.i, %if.end.i16.i.get_temp_mc.exit_crit_edge, %lookup_comp.exit.i.get_temp_mc.exit_crit_edge
  %retval.0.i.i = phi i32 [ %add.i19.i, %if.end6.i.i ], [ %mul.i, %lookup_comp.exit.i.get_temp_mc.exit_crit_edge ], [ %mul10.i, %if.end.i16.i.get_temp_mc.exit_crit_edge ]
  %55 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %retval.0.i.i, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 4, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %get_temp_mc.exit, %ntc_adc_iio_read.exit.i.cleanup_crit_edge, %ntc_adc_iio_read.exit.thread.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb4 ], [ 0, %get_temp_mc.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ %15, %ntc_adc_iio_read.exit.i.cleanup_crit_edge ], [ %call1.i.i, %ntc_adc_iio_read.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed_scale(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_raw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_convert_raw_to_processed(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_ntc_thermistor__183_703_ntc_thermistor_driver_init6, !1, !"__initcall__kmod_ntc_thermistor__183_703_ntc_thermistor_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 703, i32 1}
!2 = !{ptr @__exitcall_ntc_thermistor_driver_exit, !1, !"__exitcall_ntc_thermistor_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description184, !4, !"__UNIQUE_ID_description184", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 705, i32 1}
!5 = !{ptr @__UNIQUE_ID_author185, !6, !"__UNIQUE_ID_author185", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 706, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 707, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias188, !11, !"__UNIQUE_ID_alias188", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 708, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 696, i32 11}
!14 = !{ptr @ntc_thermistor_driver, !15, !"ntc_thermistor_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 694, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 628, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ntc_thermistor_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ntc_thermistor_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 635, i32 3}
!26 = !{ptr @ntc_thermistor_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ntc_thermistor_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 647, i32 3}
!30 = !{ptr @ntc_thermistor_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ntc_thermistor_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 651, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ntc_thermistor_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ntc_thermistor_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 583, i32 38}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 585, i32 35}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 587, i32 38}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 589, i32 35}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 591, i32 38}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 593, i32 35}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 595, i32 37}
!51 = !{ptr @ntc_type, !52, !"ntc_type", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 314, i32 30}
!53 = !{ptr @b57330v2103, !54, !"b57330v2103", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 223, i32 38}
!55 = !{ptr @b57891s0103, !56, !"b57891s0103", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 260, i32 38}
!57 = !{ptr @ncpXXwb473, !58, !"ncpXXwb473", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 72, i32 38}
!59 = !{ptr @ncpXXwf104, !60, !"ncpXXwf104", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 145, i32 38}
!61 = !{ptr @ncpXXwl333, !62, !"ncpXXwl333", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 108, i32 38}
!63 = !{ptr @ncpXXxh103, !64, !"ncpXXxh103", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 182, i32 38}
!65 = !{ptr @ntc_chip_info, !66, !"ntc_chip_info", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 560, i32 37}
!67 = !{ptr @ntc_hwmon_ops, !68, !"ntc_hwmon_ops", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 555, i32 31}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 360, i32 4}
!71 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ntc_adc_iio_read._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @ntc_adc_iio_read._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @ntc_info, !75, !"ntc_info", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 549, i32 41}
!76 = !{ptr @ntc_match, !77, !"ntc_match", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 657, i32 34}
!78 = !{ptr @ntc_thermistor_id, !79, !"ntc_thermistor_id", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/ntc_thermistor.c", i32 52, i32 40}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"auto-init"}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{i64 2148448432, i64 2148448712, i64 2148449046, i64 2148449380}
