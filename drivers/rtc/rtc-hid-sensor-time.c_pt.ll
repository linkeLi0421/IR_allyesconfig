; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-hid-sensor-time.c_pt.bc'
source_filename = "../drivers/rtc/rtc-hid-sensor-time.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.hid_time_state = type { %struct.hid_sensor_hub_callbacks, %struct.hid_sensor_common, [6 x %struct.hid_sensor_hub_attribute_info], %struct.rtc_time, %struct.spinlock, %struct.completion, %struct.rtc_time, ptr }
%struct.hid_sensor_hub_callbacks = type { ptr, ptr, ptr, ptr, ptr }
%struct.hid_sensor_common = type { ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, ptr, i32, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.work_struct }
%struct.hid_sensor_hub_attribute_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }

@__initcall__kmod_rtc_hid_sensor_time__227_326_hid_time_platform_driver_init6 = internal global ptr @hid_time_platform_driver_init, section ".initcall6.init", align 4
@hid_time_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hid_time_probe, ptr @hid_time_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @hid_time_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hid_time_platform_driver_exit = internal global ptr @hid_time_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [48 x i8] c"rtc_hid_sensor_time.description=HID Sensor Time\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [67 x i8] c"rtc_hid_sensor_time.author=Alexander Holler <holler@ahsoftware.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [57 x i8] c"rtc_hid_sensor_time.file=drivers/rtc/rtc-hid-sensor-time\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [32 x i8] c"rtc_hid_sensor_time.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns232 = internal constant [38 x i8] c"rtc_hid_sensor_time.import_ns=IIO_HID\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtc_hid_sensor_time\00", [44 x i8] zeroinitializer }, align 32
@hid_time_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"HID-SENSOR-2000a0\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hid_time_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&time_state->lock_last_time\00", [36 x i8] zeroinitializer }, align 32
@hid_time_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 245, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to setup common attributes!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hid_time_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/rtc/rtc-hid-sensor-time.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hid_time_probe._entry_ptr = internal global ptr @hid_time_probe._entry, section ".printk_index", align 4
@hid_time_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 252, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to setup attributes!\0A\00", [35 x i8] zeroinitializer }, align 32
@hid_time_probe._entry_ptr.9 = internal global ptr @hid_time_probe._entry.7, section ".printk_index", align 4
@hid_time_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 262, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"register callback failed!\0A\00", [37 x i8] zeroinitializer }, align 32
@hid_time_probe._entry_ptr.12 = internal global ptr @hid_time_probe._entry.10, section ".printk_index", align 4
@hid_time_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 268, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to open sensor hub device!\0A\00", [61 x i8] zeroinitializer }, align 32
@hid_time_probe._entry_ptr.15 = internal global ptr @hid_time_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hid-sensor-time\00", [16 x i8] zeroinitializer }, align 32
@hid_time_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @hid_rtc_read_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@hid_time_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 286, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtc device register failed!\0A\00", [35 x i8] zeroinitializer }, align 32
@hid_time_probe._entry_ptr.19 = internal global ptr @hid_time_probe._entry.17, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@hid_time_parse_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 150, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bad report ID!\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hid_time_parse_report\00", [42 x i8] zeroinitializer }, align 32
@hid_time_parse_report._entry_ptr = internal global ptr @hid_time_parse_report._entry, section ".printk_index", align 4
@hid_time_parse_report._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 156, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"not all needed attributes inside the same report!\0A\00", [45 x i8] zeroinitializer }, align 32
@hid_time_parse_report._entry_ptr.25 = internal global ptr @hid_time_parse_report._entry.23, section ".printk_index", align 4
@hid_time_parse_report._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.4, i32 164, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"attribute '%s' not 8, 16 or 32 bits wide!\0A\00", [53 x i8] zeroinitializer }, align 32
@hid_time_parse_report._entry_ptr.28 = internal global ptr @hid_time_parse_report._entry.26, section ".printk_index", align 4
@hid_time_parse_report._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.4, i32 177, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"attribute '%s' hasn't a unit of type 'none'!\0A\00", [50 x i8] zeroinitializer }, align 32
@hid_time_parse_report._entry_ptr.31 = internal global ptr @hid_time_parse_report._entry.29, section ".printk_index", align 4
@hid_time_parse_report._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.4, i32 184, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"attribute '%s' hasn't a unit exponent of 1!\0A\00", [51 x i8] zeroinitializer }, align 32
@hid_time_parse_report._entry_ptr.34 = internal global ptr @hid_time_parse_report._entry.32, section ".printk_index", align 4
@hid_time_attrib_name.unknown = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@hid_time_channel_names = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"year\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"month\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"day\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hour\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"minute\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"second\00", [25 x i8] zeroinitializer }, align 32
@hid_device_io_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.43, i32 963, ptr @.str.44, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"io already started\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hid_device_io_start\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hid_device_io_start._entry_ptr = internal global ptr @hid_device_io_start._entry, section ".printk_index", align 4
@hid_device_io_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.43, i32 983, ptr @.str.44, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"io already stopped\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hid_device_io_stop\00", [45 x i8] zeroinitializer }, align 32
@hid_device_io_stop._entry_ptr = internal global ptr @hid_device_io_stop._entry, section ".printk_index", align 4
@switch.table.hid_time_probe = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 2, i32 0, i32 3, i32 4, i32 5], [36 x i8] zeroinitializer }, align 32
@switch.table.hid_time_probe.47 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 2, i32 0, i32 3, i32 4, i32 5], [36 x i8] zeroinitializer }, align 32
@switch.table.hid_time_probe.48 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 2, i32 0, i32 3, i32 4, i32 5], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 2098465, i64 2098466, i64 2098467, i64 2098469, i64 2098470, i64 2098471]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.55 = private unnamed_addr constant [25 x i8] c"hid_time_platform_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 318, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 321, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"hid_time_ids\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 309, i32 40 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 234, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 245, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 252, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 262, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 268, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 279, i32 6 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"hid_time_rtc_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 218, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 286, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 87, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 150, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 155, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 161, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 174, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 181, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 124, i32 20 }
@___asan_gen_.160 = private unnamed_addr constant [23 x i8] c"hid_time_channel_names\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 44, i32 27 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 45, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 45, i32 10 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 45, i32 19 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 45, i32 26 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 45, i32 34 }
@___asan_gen_.179 = private constant [37 x i8] c"../drivers/rtc/rtc-hid-sensor-time.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 45, i32 44 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 963, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 983, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [28 x i8] c"switch.table.hid_time_probe\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [31 x i8] c"switch.table.hid_time_probe.47\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [31 x i8] c"switch.table.hid_time_probe.48\00", align 1
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_import_ns232, ptr @__UNIQUE_ID_license231, ptr @__exitcall_hid_time_platform_driver_exit, ptr @__initcall__kmod_rtc_hid_sensor_time__227_326_hid_time_platform_driver_init6, ptr @hid_device_io_start._entry, ptr @hid_device_io_start._entry_ptr, ptr @hid_device_io_stop._entry, ptr @hid_device_io_stop._entry_ptr, ptr @hid_time_parse_report._entry, ptr @hid_time_parse_report._entry.23, ptr @hid_time_parse_report._entry.26, ptr @hid_time_parse_report._entry.29, ptr @hid_time_parse_report._entry.32, ptr @hid_time_parse_report._entry_ptr, ptr @hid_time_parse_report._entry_ptr.25, ptr @hid_time_parse_report._entry_ptr.28, ptr @hid_time_parse_report._entry_ptr.31, ptr @hid_time_parse_report._entry_ptr.34, ptr @hid_time_platform_driver_exit, ptr @hid_time_probe._entry, ptr @hid_time_probe._entry.10, ptr @hid_time_probe._entry.13, ptr @hid_time_probe._entry.17, ptr @hid_time_probe._entry.7, ptr @hid_time_probe._entry_ptr, ptr @hid_time_probe._entry_ptr.12, ptr @hid_time_probe._entry_ptr.15, ptr @hid_time_probe._entry_ptr.19, ptr @hid_time_probe._entry_ptr.9, ptr @hid_time_platform_driver, ptr @.str, ptr @hid_time_ids, ptr @hid_time_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @hid_time_rtc_ops, ptr @.str.18, ptr @init_completion.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @hid_time_attrib_name.unknown, ptr @hid_time_channel_names, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @switch.table.hid_time_probe, ptr @switch.table.hid_time_probe.47, ptr @switch.table.hid_time_probe.48], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_time_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_time_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_time_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_time_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_time_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_time_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_time_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_time_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_time_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_time_parse_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_time_parse_report._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_time_parse_report._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_time_parse_report._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_time_parse_report._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_time_attrib_name.unknown to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_time_channel_names to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_device_io_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_device_io_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hid_time_probe to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hid_time_probe.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hid_time_probe.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_time_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hid_time_platform_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hid_time_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @hid_time_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_time_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 716, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock_last_time = getelementptr inbounds %struct.hid_time_state, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock_last_time, ptr noundef nonnull @.str.1, ptr noundef nonnull @hid_time_probe.__key, i16 noundef signext 3) #5
  %comp_last_time = getelementptr inbounds %struct.hid_time_state, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %comp_last_time to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %comp_last_time, align 4
  %wait.i = getelementptr inbounds %struct.hid_time_state, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #5
  %common_attributes = getelementptr inbounds %struct.hid_time_state, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %common_attributes to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %common_attributes, align 4
  %pdev6 = getelementptr inbounds %struct.hid_time_state, ptr %call.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %pdev6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %pdev6, align 4
  %call8 = tail call i32 @hid_sensor_parse_common_attributes(ptr noundef %1, i32 noundef 2097312, ptr noundef %common_attributes, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %arrayidx1.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 0
  %call.i102 = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 2097312, i32 noundef 2098465, ptr noundef %arrayidx1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %cmp2.i = icmp slt i32 %call.i102, 0
  br i1 %cmp2.i, label %if.end14.do.end20_crit_edge, label %for.cond.i

if.end14.do.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20

for.cond.i:                                       ; preds = %if.end14
  %arrayidx1.1.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 1
  %call.1.i = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 2097312, i32 noundef 2098466, ptr noundef %arrayidx1.1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp2.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.do.end20_crit_edge, label %for.cond.1.i

for.cond.i.do.end20_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx1.2.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 2
  %call.2.i = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 2097312, i32 noundef 2098467, ptr noundef %arrayidx1.2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp2.2.i = icmp slt i32 %call.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.do.end20_crit_edge, label %for.cond.2.i

for.cond.1.i.do.end20_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx1.3.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 3
  %call.3.i = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 2097312, i32 noundef 2098469, ptr noundef %arrayidx1.3.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp2.3.i = icmp slt i32 %call.3.i, 0
  br i1 %cmp2.3.i, label %for.cond.2.i.do.end20_crit_edge, label %for.cond.3.i

for.cond.2.i.do.end20_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx1.4.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 4
  %call.4.i = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 2097312, i32 noundef 2098470, ptr noundef %arrayidx1.4.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp2.4.i = icmp slt i32 %call.4.i, 0
  br i1 %cmp2.4.i, label %for.cond.3.i.do.end20_crit_edge, label %for.cond.4.i

for.cond.3.i.do.end20_crit_edge:                  ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx1.5.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 5
  %call.5.i = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 2097312, i32 noundef 2098471, ptr noundef %arrayidx1.5.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %cmp2.5.i = icmp slt i32 %call.5.i, 0
  br i1 %cmp2.5.i, label %for.cond.4.i.do.end20_crit_edge, label %for.cond.5.i

for.cond.4.i.do.end20_crit_edge:                  ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %report_id5.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %6 = ptrtoint ptr %report_id5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %report_id5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.i = icmp slt i32 %7, 0
  br i1 %cmp6.i, label %do.end.i, label %if.end21.i

do.end.i:                                         ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #8
  br label %do.end20

do.end19.i:                                       ; preds = %for.inc72.4.i.do.end19.i_crit_edge, %for.inc72.3.i.do.end19.i_crit_edge, %for.inc72.2.i.do.end19.i_crit_edge, %for.inc72.1.i.do.end19.i_crit_edge, %for.inc72.i.do.end19.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #8
  br label %do.end20

if.end21.i:                                       ; preds = %for.cond.5.i
  %size.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 0, i32 6
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp24.i = icmp eq i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp28.i = icmp sgt i32 %9, 4
  %or.cond.i = or i1 %cmp24.i, %cmp28.i
  br i1 %or.cond.i, label %if.end21.i.do.end32.i_crit_edge, label %if.end37.i

if.end21.i.do.end32.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32.i

do.end32.i:                                       ; preds = %if.end21.5.i.do.end32.i_crit_edge, %if.end21.4.i.do.end32.i_crit_edge, %if.end21.3.i.do.end32.i_crit_edge, %if.end21.2.i.do.end32.i_crit_edge, %if.end21.1.i.do.end32.i_crit_edge, %if.end21.i.do.end32.i_crit_edge
  %i.128.lcssa30.i = phi i32 [ 0, %if.end21.i.do.end32.i_crit_edge ], [ 1, %if.end21.1.i.do.end32.i_crit_edge ], [ 2, %if.end21.2.i.do.end32.i_crit_edge ], [ 3, %if.end21.3.i.do.end32.i_crit_edge ], [ 4, %if.end21.4.i.do.end32.i_crit_edge ], [ 5, %if.end21.5.i.do.end32.i_crit_edge ]
  %attrib_id.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 %i.128.lcssa30.i, i32 1
  %10 = ptrtoint ptr %attrib_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %attrib_id.i, align 4
  %switch.tableidx = add i32 %11, -2098465
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 7
  br i1 %12, label %switch.hole_check, label %do.end32.i.hid_time_attrib_name.exit.i_crit_edge

do.end32.i.hid_time_attrib_name.exit.i_crit_edge: ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hid_time_attrib_name.exit.i

switch.hole_check:                                ; preds = %do.end32.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 119, %switch.maskindex
  %13 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.lobit.not = icmp eq i8 %13, 0
  br i1 %switch.lobit.not, label %switch.hole_check.hid_time_attrib_name.exit.i_crit_edge, label %switch.lookup

switch.hole_check.hid_time_attrib_name.exit.i_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %hid_time_attrib_name.exit.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.hid_time_probe, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx2.i.i = getelementptr [6 x ptr], ptr @hid_time_channel_names, i32 0, i32 %switch.load
  %15 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx2.i.i, align 4
  br label %hid_time_attrib_name.exit.i

hid_time_attrib_name.exit.i:                      ; preds = %switch.lookup, %switch.hole_check.hid_time_attrib_name.exit.i_crit_edge, %do.end32.i.hid_time_attrib_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %16, %switch.lookup ], [ @hid_time_attrib_name.unknown, %do.end32.i.hid_time_attrib_name.exit.i_crit_edge ], [ @hid_time_attrib_name.unknown, %switch.hole_check.hid_time_attrib_name.exit.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef %retval.0.i.i) #8
  br label %do.end20

if.end37.i:                                       ; preds = %if.end21.i
  %units.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 0, i32 4
  %17 = ptrtoint ptr %units.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %units.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp40.not.i = icmp eq i32 %18, 0
  br i1 %cmp40.not.i, label %if.end37.i.if.end59.i_crit_edge, label %land.lhs.true.i

if.end37.i.if.end59.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.i

land.lhs.true.i:                                  ; preds = %if.end37.i
  %attrib_id43.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %19 = ptrtoint ptr %attrib_id43.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %attrib_id43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2098471, i32 %20)
  %cmp44.i = icmp eq i32 %20, 2098471
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %18)
  %cmp49.i = icmp eq i32 %18, 272
  %or.cond1.i = select i1 %cmp44.i, i1 %cmp49.i, i1 false
  br i1 %or.cond1.i, label %land.lhs.true.i.if.end59.i_crit_edge, label %land.lhs.true.i.do.end53.i_crit_edge

land.lhs.true.i.do.end53.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end53.i

land.lhs.true.i.if.end59.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.i

do.end53.i:                                       ; preds = %land.lhs.true.5.i.do.end53.i_crit_edge, %land.lhs.true.4.i.do.end53.i_crit_edge, %land.lhs.true.3.i.do.end53.i_crit_edge, %land.lhs.true.2.i.do.end53.i_crit_edge, %land.lhs.true.1.i.do.end53.i_crit_edge, %land.lhs.true.i.do.end53.i_crit_edge
  %.lcssa.i = phi i32 [ %20, %land.lhs.true.i.do.end53.i_crit_edge ], [ %42, %land.lhs.true.1.i.do.end53.i_crit_edge ], [ %52, %land.lhs.true.2.i.do.end53.i_crit_edge ], [ %62, %land.lhs.true.3.i.do.end53.i_crit_edge ], [ %72, %land.lhs.true.4.i.do.end53.i_crit_edge ], [ %82, %land.lhs.true.5.i.do.end53.i_crit_edge ]
  %switch.tableidx116 = add i32 %.lcssa.i, -2098465
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx116)
  %21 = icmp ult i32 %switch.tableidx116, 7
  br i1 %21, label %switch.hole_check117, label %do.end53.i.hid_time_attrib_name.exit11.i_crit_edge

do.end53.i.hid_time_attrib_name.exit11.i_crit_edge: ; preds = %do.end53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hid_time_attrib_name.exit11.i

switch.hole_check117:                             ; preds = %do.end53.i
  %switch.maskindex119 = trunc i32 %switch.tableidx116 to i8
  %switch.shifted120 = lshr i8 119, %switch.maskindex119
  %22 = and i8 %switch.shifted120, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %switch.lobit121.not = icmp eq i8 %22, 0
  br i1 %switch.lobit121.not, label %switch.hole_check117.hid_time_attrib_name.exit11.i_crit_edge, label %switch.lookup118

switch.hole_check117.hid_time_attrib_name.exit11.i_crit_edge: ; preds = %switch.hole_check117
  call void @__sanitizer_cov_trace_pc() #7
  br label %hid_time_attrib_name.exit11.i

switch.lookup118:                                 ; preds = %switch.hole_check117
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep122 = getelementptr inbounds [7 x i32], ptr @switch.table.hid_time_probe.47, i32 0, i32 %switch.tableidx116
  %23 = ptrtoint ptr %switch.gep122 to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load123 = load i32, ptr %switch.gep122, align 4
  %arrayidx2.i8.i = getelementptr [6 x ptr], ptr @hid_time_channel_names, i32 0, i32 %switch.load123
  %24 = ptrtoint ptr %arrayidx2.i8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx2.i8.i, align 4
  br label %hid_time_attrib_name.exit11.i

hid_time_attrib_name.exit11.i:                    ; preds = %switch.lookup118, %switch.hole_check117.hid_time_attrib_name.exit11.i_crit_edge, %do.end53.i.hid_time_attrib_name.exit11.i_crit_edge
  %retval.0.i10.i = phi ptr [ %25, %switch.lookup118 ], [ @hid_time_attrib_name.unknown, %do.end53.i.hid_time_attrib_name.exit11.i_crit_edge ], [ @hid_time_attrib_name.unknown, %switch.hole_check117.hid_time_attrib_name.exit11.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef %retval.0.i10.i) #8
  br label %do.end20

if.end59.i:                                       ; preds = %land.lhs.true.i.if.end59.i_crit_edge, %if.end37.i.if.end59.i_crit_edge
  %unit_expo.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 0, i32 5
  %26 = ptrtoint ptr %unit_expo.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %unit_expo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %for.inc72.i, label %if.end59.i.do.end65.i_crit_edge

if.end59.i.do.end65.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65.i

do.end65.i:                                       ; preds = %if.end59.5.i.do.end65.i_crit_edge, %if.end59.4.i.do.end65.i_crit_edge, %if.end59.3.i.do.end65.i_crit_edge, %if.end59.2.i.do.end65.i_crit_edge, %if.end59.1.i.do.end65.i_crit_edge, %if.end59.i.do.end65.i_crit_edge
  %i.128.lcssa32.i = phi i32 [ 0, %if.end59.i.do.end65.i_crit_edge ], [ 1, %if.end59.1.i.do.end65.i_crit_edge ], [ 2, %if.end59.2.i.do.end65.i_crit_edge ], [ 3, %if.end59.3.i.do.end65.i_crit_edge ], [ 4, %if.end59.4.i.do.end65.i_crit_edge ], [ 5, %if.end59.5.i.do.end65.i_crit_edge ]
  %attrib_id69.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 %i.128.lcssa32.i, i32 1
  %28 = ptrtoint ptr %attrib_id69.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %attrib_id69.i, align 4
  %switch.tableidx125 = add i32 %29, -2098465
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx125)
  %30 = icmp ult i32 %switch.tableidx125, 7
  br i1 %30, label %switch.hole_check126, label %do.end65.i.hid_time_attrib_name.exit21.i_crit_edge

do.end65.i.hid_time_attrib_name.exit21.i_crit_edge: ; preds = %do.end65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hid_time_attrib_name.exit21.i

switch.hole_check126:                             ; preds = %do.end65.i
  %switch.maskindex128 = trunc i32 %switch.tableidx125 to i8
  %switch.shifted129 = lshr i8 119, %switch.maskindex128
  %31 = and i8 %switch.shifted129, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %switch.lobit130.not = icmp eq i8 %31, 0
  br i1 %switch.lobit130.not, label %switch.hole_check126.hid_time_attrib_name.exit21.i_crit_edge, label %switch.lookup127

switch.hole_check126.hid_time_attrib_name.exit21.i_crit_edge: ; preds = %switch.hole_check126
  call void @__sanitizer_cov_trace_pc() #7
  br label %hid_time_attrib_name.exit21.i

switch.lookup127:                                 ; preds = %switch.hole_check126
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep131 = getelementptr inbounds [7 x i32], ptr @switch.table.hid_time_probe.48, i32 0, i32 %switch.tableidx125
  %32 = ptrtoint ptr %switch.gep131 to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load132 = load i32, ptr %switch.gep131, align 4
  %arrayidx2.i18.i = getelementptr [6 x ptr], ptr @hid_time_channel_names, i32 0, i32 %switch.load132
  %33 = ptrtoint ptr %arrayidx2.i18.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx2.i18.i, align 4
  br label %hid_time_attrib_name.exit21.i

hid_time_attrib_name.exit21.i:                    ; preds = %switch.lookup127, %switch.hole_check126.hid_time_attrib_name.exit21.i_crit_edge, %do.end65.i.hid_time_attrib_name.exit21.i_crit_edge
  %retval.0.i20.i = phi ptr [ %34, %switch.lookup127 ], [ @hid_time_attrib_name.unknown, %do.end65.i.hid_time_attrib_name.exit21.i_crit_edge ], [ @hid_time_attrib_name.unknown, %switch.hole_check126.hid_time_attrib_name.exit21.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef %retval.0.i20.i) #8
  br label %do.end20

for.inc72.i:                                      ; preds = %if.end59.i
  %report_id14.1.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 1, i32 2
  %35 = ptrtoint ptr %report_id14.1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %report_id14.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %7)
  %cmp15.not.1.i = icmp eq i32 %36, %7
  br i1 %cmp15.not.1.i, label %if.end21.1.i, label %for.inc72.i.do.end19.i_crit_edge

for.inc72.i.do.end19.i_crit_edge:                 ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19.i

if.end21.1.i:                                     ; preds = %for.inc72.i
  %size.1.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 1, i32 6
  %37 = ptrtoint ptr %size.1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp24.1.i = icmp eq i32 %38, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp28.1.i = icmp sgt i32 %38, 4
  %or.cond.1.i = or i1 %cmp24.1.i, %cmp28.1.i
  br i1 %or.cond.1.i, label %if.end21.1.i.do.end32.i_crit_edge, label %if.end37.1.i

if.end21.1.i.do.end32.i_crit_edge:                ; preds = %if.end21.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32.i

if.end37.1.i:                                     ; preds = %if.end21.1.i
  %units.1.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 1, i32 4
  %39 = ptrtoint ptr %units.1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %units.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp40.not.1.i = icmp eq i32 %40, 0
  br i1 %cmp40.not.1.i, label %if.end37.1.i.if.end59.1.i_crit_edge, label %land.lhs.true.1.i

if.end37.1.i.if.end59.1.i_crit_edge:              ; preds = %if.end37.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.1.i

land.lhs.true.1.i:                                ; preds = %if.end37.1.i
  %attrib_id43.1.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %41 = ptrtoint ptr %attrib_id43.1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %attrib_id43.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2098471, i32 %42)
  %cmp44.1.i = icmp eq i32 %42, 2098471
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %40)
  %cmp49.1.i = icmp eq i32 %40, 272
  %or.cond1.1.i = select i1 %cmp44.1.i, i1 %cmp49.1.i, i1 false
  br i1 %or.cond1.1.i, label %land.lhs.true.1.i.if.end59.1.i_crit_edge, label %land.lhs.true.1.i.do.end53.i_crit_edge

land.lhs.true.1.i.do.end53.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end53.i

land.lhs.true.1.i.if.end59.1.i_crit_edge:         ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.1.i

if.end59.1.i:                                     ; preds = %land.lhs.true.1.i.if.end59.1.i_crit_edge, %if.end37.1.i.if.end59.1.i_crit_edge
  %unit_expo.1.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 1, i32 5
  %43 = ptrtoint ptr %unit_expo.1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %unit_expo.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.1.i = icmp eq i32 %44, 0
  br i1 %tobool.not.1.i, label %for.inc72.1.i, label %if.end59.1.i.do.end65.i_crit_edge

if.end59.1.i.do.end65.i_crit_edge:                ; preds = %if.end59.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65.i

for.inc72.1.i:                                    ; preds = %if.end59.1.i
  %report_id14.2.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 2, i32 2
  %45 = ptrtoint ptr %report_id14.2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %report_id14.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %7)
  %cmp15.not.2.i = icmp eq i32 %46, %7
  br i1 %cmp15.not.2.i, label %if.end21.2.i, label %for.inc72.1.i.do.end19.i_crit_edge

for.inc72.1.i.do.end19.i_crit_edge:               ; preds = %for.inc72.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19.i

if.end21.2.i:                                     ; preds = %for.inc72.1.i
  %size.2.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 2, i32 6
  %47 = ptrtoint ptr %size.2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp24.2.i = icmp eq i32 %48, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp28.2.i = icmp sgt i32 %48, 4
  %or.cond.2.i = or i1 %cmp24.2.i, %cmp28.2.i
  br i1 %or.cond.2.i, label %if.end21.2.i.do.end32.i_crit_edge, label %if.end37.2.i

if.end21.2.i.do.end32.i_crit_edge:                ; preds = %if.end21.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32.i

if.end37.2.i:                                     ; preds = %if.end21.2.i
  %units.2.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 2, i32 4
  %49 = ptrtoint ptr %units.2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %units.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp40.not.2.i = icmp eq i32 %50, 0
  br i1 %cmp40.not.2.i, label %if.end37.2.i.if.end59.2.i_crit_edge, label %land.lhs.true.2.i

if.end37.2.i.if.end59.2.i_crit_edge:              ; preds = %if.end37.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.2.i

land.lhs.true.2.i:                                ; preds = %if.end37.2.i
  %attrib_id43.2.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 2, i32 1
  %51 = ptrtoint ptr %attrib_id43.2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %attrib_id43.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2098471, i32 %52)
  %cmp44.2.i = icmp eq i32 %52, 2098471
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %50)
  %cmp49.2.i = icmp eq i32 %50, 272
  %or.cond1.2.i = select i1 %cmp44.2.i, i1 %cmp49.2.i, i1 false
  br i1 %or.cond1.2.i, label %land.lhs.true.2.i.if.end59.2.i_crit_edge, label %land.lhs.true.2.i.do.end53.i_crit_edge

land.lhs.true.2.i.do.end53.i_crit_edge:           ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end53.i

land.lhs.true.2.i.if.end59.2.i_crit_edge:         ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.2.i

if.end59.2.i:                                     ; preds = %land.lhs.true.2.i.if.end59.2.i_crit_edge, %if.end37.2.i.if.end59.2.i_crit_edge
  %unit_expo.2.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 2, i32 5
  %53 = ptrtoint ptr %unit_expo.2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %unit_expo.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.2.i = icmp eq i32 %54, 0
  br i1 %tobool.not.2.i, label %for.inc72.2.i, label %if.end59.2.i.do.end65.i_crit_edge

if.end59.2.i.do.end65.i_crit_edge:                ; preds = %if.end59.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65.i

for.inc72.2.i:                                    ; preds = %if.end59.2.i
  %report_id14.3.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 3, i32 2
  %55 = ptrtoint ptr %report_id14.3.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %report_id14.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %7)
  %cmp15.not.3.i = icmp eq i32 %56, %7
  br i1 %cmp15.not.3.i, label %if.end21.3.i, label %for.inc72.2.i.do.end19.i_crit_edge

for.inc72.2.i.do.end19.i_crit_edge:               ; preds = %for.inc72.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19.i

if.end21.3.i:                                     ; preds = %for.inc72.2.i
  %size.3.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 3, i32 6
  %57 = ptrtoint ptr %size.3.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %58)
  %cmp24.3.i = icmp eq i32 %58, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %58)
  %cmp28.3.i = icmp sgt i32 %58, 4
  %or.cond.3.i = or i1 %cmp24.3.i, %cmp28.3.i
  br i1 %or.cond.3.i, label %if.end21.3.i.do.end32.i_crit_edge, label %if.end37.3.i

if.end21.3.i.do.end32.i_crit_edge:                ; preds = %if.end21.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32.i

if.end37.3.i:                                     ; preds = %if.end21.3.i
  %units.3.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 3, i32 4
  %59 = ptrtoint ptr %units.3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %units.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp40.not.3.i = icmp eq i32 %60, 0
  br i1 %cmp40.not.3.i, label %if.end37.3.i.if.end59.3.i_crit_edge, label %land.lhs.true.3.i

if.end37.3.i.if.end59.3.i_crit_edge:              ; preds = %if.end37.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.3.i

land.lhs.true.3.i:                                ; preds = %if.end37.3.i
  %attrib_id43.3.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 3, i32 1
  %61 = ptrtoint ptr %attrib_id43.3.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %attrib_id43.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2098471, i32 %62)
  %cmp44.3.i = icmp eq i32 %62, 2098471
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %60)
  %cmp49.3.i = icmp eq i32 %60, 272
  %or.cond1.3.i = select i1 %cmp44.3.i, i1 %cmp49.3.i, i1 false
  br i1 %or.cond1.3.i, label %land.lhs.true.3.i.if.end59.3.i_crit_edge, label %land.lhs.true.3.i.do.end53.i_crit_edge

land.lhs.true.3.i.do.end53.i_crit_edge:           ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end53.i

land.lhs.true.3.i.if.end59.3.i_crit_edge:         ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.3.i

if.end59.3.i:                                     ; preds = %land.lhs.true.3.i.if.end59.3.i_crit_edge, %if.end37.3.i.if.end59.3.i_crit_edge
  %unit_expo.3.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 3, i32 5
  %63 = ptrtoint ptr %unit_expo.3.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %unit_expo.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.3.i = icmp eq i32 %64, 0
  br i1 %tobool.not.3.i, label %for.inc72.3.i, label %if.end59.3.i.do.end65.i_crit_edge

if.end59.3.i.do.end65.i_crit_edge:                ; preds = %if.end59.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65.i

for.inc72.3.i:                                    ; preds = %if.end59.3.i
  %report_id14.4.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 4, i32 2
  %65 = ptrtoint ptr %report_id14.4.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %report_id14.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %7)
  %cmp15.not.4.i = icmp eq i32 %66, %7
  br i1 %cmp15.not.4.i, label %if.end21.4.i, label %for.inc72.3.i.do.end19.i_crit_edge

for.inc72.3.i.do.end19.i_crit_edge:               ; preds = %for.inc72.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19.i

if.end21.4.i:                                     ; preds = %for.inc72.3.i
  %size.4.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 4, i32 6
  %67 = ptrtoint ptr %size.4.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %cmp24.4.i = icmp eq i32 %68, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %68)
  %cmp28.4.i = icmp sgt i32 %68, 4
  %or.cond.4.i = or i1 %cmp24.4.i, %cmp28.4.i
  br i1 %or.cond.4.i, label %if.end21.4.i.do.end32.i_crit_edge, label %if.end37.4.i

if.end21.4.i.do.end32.i_crit_edge:                ; preds = %if.end21.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32.i

if.end37.4.i:                                     ; preds = %if.end21.4.i
  %units.4.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 4, i32 4
  %69 = ptrtoint ptr %units.4.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %units.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp40.not.4.i = icmp eq i32 %70, 0
  br i1 %cmp40.not.4.i, label %if.end37.4.i.if.end59.4.i_crit_edge, label %land.lhs.true.4.i

if.end37.4.i.if.end59.4.i_crit_edge:              ; preds = %if.end37.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.4.i

land.lhs.true.4.i:                                ; preds = %if.end37.4.i
  %attrib_id43.4.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 4, i32 1
  %71 = ptrtoint ptr %attrib_id43.4.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %attrib_id43.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2098471, i32 %72)
  %cmp44.4.i = icmp eq i32 %72, 2098471
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %70)
  %cmp49.4.i = icmp eq i32 %70, 272
  %or.cond1.4.i = select i1 %cmp44.4.i, i1 %cmp49.4.i, i1 false
  br i1 %or.cond1.4.i, label %land.lhs.true.4.i.if.end59.4.i_crit_edge, label %land.lhs.true.4.i.do.end53.i_crit_edge

land.lhs.true.4.i.do.end53.i_crit_edge:           ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end53.i

land.lhs.true.4.i.if.end59.4.i_crit_edge:         ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.4.i

if.end59.4.i:                                     ; preds = %land.lhs.true.4.i.if.end59.4.i_crit_edge, %if.end37.4.i.if.end59.4.i_crit_edge
  %unit_expo.4.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 4, i32 5
  %73 = ptrtoint ptr %unit_expo.4.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %unit_expo.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.4.i = icmp eq i32 %74, 0
  br i1 %tobool.not.4.i, label %for.inc72.4.i, label %if.end59.4.i.do.end65.i_crit_edge

if.end59.4.i.do.end65.i_crit_edge:                ; preds = %if.end59.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65.i

for.inc72.4.i:                                    ; preds = %if.end59.4.i
  %report_id14.5.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 5, i32 2
  %75 = ptrtoint ptr %report_id14.5.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %report_id14.5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %7)
  %cmp15.not.5.i = icmp eq i32 %76, %7
  br i1 %cmp15.not.5.i, label %if.end21.5.i, label %for.inc72.4.i.do.end19.i_crit_edge

for.inc72.4.i.do.end19.i_crit_edge:               ; preds = %for.inc72.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19.i

if.end21.5.i:                                     ; preds = %for.inc72.4.i
  %size.5.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 5, i32 6
  %77 = ptrtoint ptr %size.5.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %78)
  %cmp24.5.i = icmp eq i32 %78, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %78)
  %cmp28.5.i = icmp sgt i32 %78, 4
  %or.cond.5.i = or i1 %cmp24.5.i, %cmp28.5.i
  br i1 %or.cond.5.i, label %if.end21.5.i.do.end32.i_crit_edge, label %if.end37.5.i

if.end21.5.i.do.end32.i_crit_edge:                ; preds = %if.end21.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32.i

if.end37.5.i:                                     ; preds = %if.end21.5.i
  %units.5.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 5, i32 4
  %79 = ptrtoint ptr %units.5.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %units.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp40.not.5.i = icmp eq i32 %80, 0
  br i1 %cmp40.not.5.i, label %if.end37.5.i.if.end59.5.i_crit_edge, label %land.lhs.true.5.i

if.end37.5.i.if.end59.5.i_crit_edge:              ; preds = %if.end37.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.5.i

land.lhs.true.5.i:                                ; preds = %if.end37.5.i
  %attrib_id43.5.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 5, i32 1
  %81 = ptrtoint ptr %attrib_id43.5.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %attrib_id43.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2098471, i32 %82)
  %cmp44.5.i = icmp eq i32 %82, 2098471
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %80)
  %cmp49.5.i = icmp eq i32 %80, 272
  %or.cond1.5.i = select i1 %cmp44.5.i, i1 %cmp49.5.i, i1 false
  br i1 %or.cond1.5.i, label %land.lhs.true.5.i.if.end59.5.i_crit_edge, label %land.lhs.true.5.i.do.end53.i_crit_edge

land.lhs.true.5.i.do.end53.i_crit_edge:           ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end53.i

land.lhs.true.5.i.if.end59.5.i_crit_edge:         ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.5.i

if.end59.5.i:                                     ; preds = %land.lhs.true.5.i.if.end59.5.i_crit_edge, %if.end37.5.i.if.end59.5.i_crit_edge
  %unit_expo.5.i = getelementptr %struct.hid_time_state, ptr %call.i, i32 0, i32 2, i32 5, i32 5
  %83 = ptrtoint ptr %unit_expo.5.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %unit_expo.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.5.i = icmp eq i32 %84, 0
  br i1 %tobool.not.5.i, label %if.end22, label %if.end59.5.i.do.end65.i_crit_edge

if.end59.5.i.do.end65.i_crit_edge:                ; preds = %if.end59.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65.i

do.end20:                                         ; preds = %hid_time_attrib_name.exit21.i, %hid_time_attrib_name.exit11.i, %hid_time_attrib_name.exit.i, %do.end19.i, %do.end.i, %for.cond.4.i.do.end20_crit_edge, %for.cond.3.i.do.end20_crit_edge, %for.cond.2.i.do.end20_crit_edge, %for.cond.1.i.do.end20_crit_edge, %for.cond.i.do.end20_crit_edge, %if.end14.do.end20_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end59.5.i
  %send_event = getelementptr inbounds %struct.hid_sensor_hub_callbacks, ptr %call.i, i32 0, i32 4
  %85 = ptrtoint ptr %send_event to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @hid_time_proc_event, ptr %send_event, align 4
  %capture_sample = getelementptr inbounds %struct.hid_sensor_hub_callbacks, ptr %call.i, i32 0, i32 3
  %86 = ptrtoint ptr %capture_sample to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @hid_time_capture_sample, ptr %capture_sample, align 4
  %87 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %pdev, ptr %call.i, align 4
  %call27 = tail call i32 @sensor_hub_register_callback(ptr noundef %1, i32 noundef 2097312, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end32, label %if.end34

do.end32:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  %call35 = tail call i32 @sensor_hub_device_open(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end42, label %do.end40

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %err_open

if.end42:                                         ; preds = %if.end34
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  %io_started.i = getelementptr inbounds %struct.hid_device, ptr %89, i32 0, i32 35
  %90 = ptrtoint ptr %io_started.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %io_started.i, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i103 = icmp eq i8 %91, 0
  br i1 %tobool.not.i103, label %if.end.i, label %do.end.i105

do.end.i105:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i104 = getelementptr inbounds %struct.hid_device, ptr %89, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i104, ptr noundef nonnull @.str.41) #8
  br label %hid_device_io_start.exit

if.end.i:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %io_started.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %io_started.i, align 4
  %driver_input_lock.i = getelementptr inbounds %struct.hid_device, ptr %89, i32 0, i32 17
  tail call void @up(ptr noundef %driver_input_lock.i) #5
  br label %hid_device_io_start.exit

hid_device_io_start.exit:                         ; preds = %if.end.i, %do.end.i105
  %call44 = tail call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @hid_time_rtc_ops, ptr noundef null) #5
  %rtc = getelementptr inbounds %struct.hid_time_state, ptr %call.i, i32 0, i32 7
  %93 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call44, ptr %rtc, align 4
  %cmp.i = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then47, label %hid_device_io_start.exit.cleanup_crit_edge

hid_device_io_start.exit.cleanup_crit_edge:       ; preds = %hid_device_io_start.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then47:                                        ; preds = %hid_device_io_start.exit
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 4
  %io_started.i106 = getelementptr inbounds %struct.hid_device, ptr %95, i32 0, i32 35
  %96 = ptrtoint ptr %io_started.i106 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %io_started.i106, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i107 = icmp eq i8 %97, 0
  br i1 %tobool.not.i107, label %do.end.i109, label %if.end.i111

do.end.i109:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i108 = getelementptr inbounds %struct.hid_device, ptr %95, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i108, ptr noundef nonnull @.str.45) #8
  br label %hid_device_io_stop.exit

if.end.i111:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %io_started.i106 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %io_started.i106, align 4
  %driver_input_lock.i110 = getelementptr inbounds %struct.hid_device, ptr %95, i32 0, i32 17
  tail call void @down(ptr noundef %driver_input_lock.i110) #5
  br label %hid_device_io_stop.exit

hid_device_io_stop.exit:                          ; preds = %if.end.i111, %do.end.i109
  %99 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rtc, align 4
  %101 = ptrtoint ptr %100 to i32
  store ptr null, ptr %rtc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  tail call void @sensor_hub_device_close(ptr noundef %1) #5
  br label %err_open

err_open:                                         ; preds = %hid_device_io_stop.exit, %do.end40
  %ret.0 = phi i32 [ %call35, %do.end40 ], [ %101, %hid_device_io_stop.exit ]
  %call57 = tail call i32 @sensor_hub_remove_callback(ptr noundef %1, i32 noundef 2097312) #5
  br label %cleanup

cleanup:                                          ; preds = %err_open, %hid_device_io_start.exit.cleanup_crit_edge, %do.end32, %do.end20, %do.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end12 ], [ -22, %do.end20 ], [ %call27, %do.end32 ], [ %ret.0, %err_open ], [ -12, %entry.cleanup_crit_edge ], [ 0, %hid_device_io_start.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_time_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  tail call void @sensor_hub_device_close(ptr noundef %1) #5
  %call1 = tail call i32 @sensor_hub_remove_callback(ptr noundef %1, i32 noundef 2097312) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_parse_common_attributes(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_time_proc_event(ptr nocapture noundef readnone %hsdev, i32 noundef %usage_id, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %priv, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock_last_time = getelementptr inbounds %struct.hid_time_state, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock_last_time) #5
  %last_time = getelementptr inbounds %struct.hid_time_state, ptr %1, i32 0, i32 3
  %time_buf = getelementptr inbounds %struct.hid_time_state, ptr %1, i32 0, i32 6
  %2 = call ptr @memcpy(ptr %last_time, ptr %time_buf, i32 36)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock_last_time, i32 noundef %call3) #5
  %comp_last_time = getelementptr inbounds %struct.hid_time_state, ptr %1, i32 0, i32 5
  tail call void @complete(ptr noundef %comp_last_time) #5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hid_time_capture_sample(ptr nocapture noundef readnone %hsdev, i32 noundef %usage_id, i32 noundef %raw_len, ptr nocapture noundef readonly %raw_data, ptr nocapture noundef readonly %priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %priv, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = zext i32 %usage_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %usage_id, label %entry.cleanup_crit_edge [
    i32 2098465, label %sw.bb
    i32 2098466, label %sw.bb10
    i32 2098467, label %sw.bb13
    i32 2098469, label %sw.bb15
    i32 2098470, label %sw.bb17
    i32 2098471, label %sw.bb19
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = zext i32 %raw_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %raw_len, label %sw.bb.hid_time_value.exit_crit_edge [
    i32 1, label %if.then
    i32 4, label %sw.bb3.i
    i32 2, label %sw.bb1.i
  ]

sw.bb.hid_time_value.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %hid_time_value.exit

if.then:                                          ; preds = %sw.bb
  %4 = ptrtoint ptr %raw_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %raw_data, align 1
  %conv = zext i8 %5 to i32
  %tm_year = getelementptr inbounds %struct.hid_time_state, ptr %1, i32 0, i32 6, i32 5
  %6 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %tm_year, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 70, i8 %5)
  %cmp3 = icmp ult i8 %5, 70
  br i1 %cmp3, label %if.then5, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %add = add nuw nsw i32 %conv, 100
  %7 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %tm_year, align 4
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %raw_data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %raw_data, align 2
  %conv2.i = zext i16 %9 to i32
  br label %hid_time_value.exit

sw.bb3.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %raw_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %raw_data, align 4
  br label %hid_time_value.exit

hid_time_value.exit:                              ; preds = %sw.bb3.i, %sw.bb1.i, %sw.bb.hid_time_value.exit_crit_edge
  %retval.0.i = phi i32 [ %11, %sw.bb3.i ], [ %conv2.i, %sw.bb1.i ], [ -1, %sw.bb.hid_time_value.exit_crit_edge ]
  %sub = add i32 %retval.0.i, -1900
  %tm_year8 = getelementptr inbounds %struct.hid_time_state, ptr %1, i32 0, i32 6, i32 5
  %12 = ptrtoint ptr %tm_year8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %tm_year8, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %13 = zext i32 %raw_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %raw_len, label %sw.bb10.hid_time_value.exit48_crit_edge [
    i32 1, label %sw.bb.i43
    i32 2, label %sw.bb1.i45
    i32 4, label %sw.bb3.i46
  ]

sw.bb10.hid_time_value.exit48_crit_edge:          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  br label %hid_time_value.exit48

sw.bb.i43:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %raw_data to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %raw_data, align 1
  %conv.i42 = zext i8 %15 to i32
  br label %hid_time_value.exit48

sw.bb1.i45:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %raw_data to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %raw_data, align 2
  %conv2.i44 = zext i16 %17 to i32
  br label %hid_time_value.exit48

sw.bb3.i46:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %raw_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %raw_data, align 4
  br label %hid_time_value.exit48

hid_time_value.exit48:                            ; preds = %sw.bb3.i46, %sw.bb1.i45, %sw.bb.i43, %sw.bb10.hid_time_value.exit48_crit_edge
  %retval.0.i47 = phi i32 [ %19, %sw.bb3.i46 ], [ %conv2.i44, %sw.bb1.i45 ], [ %conv.i42, %sw.bb.i43 ], [ -1, %sw.bb10.hid_time_value.exit48_crit_edge ]
  %sub12 = add i32 %retval.0.i47, -1
  %tm_mon = getelementptr inbounds %struct.hid_time_state, ptr %1, i32 0, i32 6, i32 4
  %20 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub12, ptr %tm_mon, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %21 = zext i32 %raw_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %raw_len, label %sw.bb13.hid_time_value.exit55_crit_edge [
    i32 1, label %sw.bb.i50
    i32 2, label %sw.bb1.i52
    i32 4, label %sw.bb3.i53
  ]

sw.bb13.hid_time_value.exit55_crit_edge:          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  br label %hid_time_value.exit55

sw.bb.i50:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %raw_data to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %raw_data, align 1
  %conv.i49 = zext i8 %23 to i32
  br label %hid_time_value.exit55

sw.bb1.i52:                                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %raw_data to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %raw_data, align 2
  %conv2.i51 = zext i16 %25 to i32
  br label %hid_time_value.exit55

sw.bb3.i53:                                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %raw_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %raw_data, align 4
  br label %hid_time_value.exit55

hid_time_value.exit55:                            ; preds = %sw.bb3.i53, %sw.bb1.i52, %sw.bb.i50, %sw.bb13.hid_time_value.exit55_crit_edge
  %retval.0.i54 = phi i32 [ %27, %sw.bb3.i53 ], [ %conv2.i51, %sw.bb1.i52 ], [ %conv.i49, %sw.bb.i50 ], [ -1, %sw.bb13.hid_time_value.exit55_crit_edge ]
  %tm_mday = getelementptr inbounds %struct.hid_time_state, ptr %1, i32 0, i32 6, i32 3
  %28 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i54, ptr %tm_mday, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %29 = zext i32 %raw_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %raw_len, label %sw.bb15.hid_time_value.exit62_crit_edge [
    i32 1, label %sw.bb.i57
    i32 2, label %sw.bb1.i59
    i32 4, label %sw.bb3.i60
  ]

sw.bb15.hid_time_value.exit62_crit_edge:          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  br label %hid_time_value.exit62

sw.bb.i57:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %raw_data to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %raw_data, align 1
  %conv.i56 = zext i8 %31 to i32
  br label %hid_time_value.exit62

sw.bb1.i59:                                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %raw_data to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %raw_data, align 2
  %conv2.i58 = zext i16 %33 to i32
  br label %hid_time_value.exit62

sw.bb3.i60:                                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %raw_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %raw_data, align 4
  br label %hid_time_value.exit62

hid_time_value.exit62:                            ; preds = %sw.bb3.i60, %sw.bb1.i59, %sw.bb.i57, %sw.bb15.hid_time_value.exit62_crit_edge
  %retval.0.i61 = phi i32 [ %35, %sw.bb3.i60 ], [ %conv2.i58, %sw.bb1.i59 ], [ %conv.i56, %sw.bb.i57 ], [ -1, %sw.bb15.hid_time_value.exit62_crit_edge ]
  %tm_hour = getelementptr inbounds %struct.hid_time_state, ptr %1, i32 0, i32 6, i32 2
  %36 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i61, ptr %tm_hour, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  %37 = zext i32 %raw_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %raw_len, label %sw.bb17.hid_time_value.exit69_crit_edge [
    i32 1, label %sw.bb.i64
    i32 2, label %sw.bb1.i66
    i32 4, label %sw.bb3.i67
  ]

sw.bb17.hid_time_value.exit69_crit_edge:          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  br label %hid_time_value.exit69

sw.bb.i64:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %raw_data to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %raw_data, align 1
  %conv.i63 = zext i8 %39 to i32
  br label %hid_time_value.exit69

sw.bb1.i66:                                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %raw_data to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %raw_data, align 2
  %conv2.i65 = zext i16 %41 to i32
  br label %hid_time_value.exit69

sw.bb3.i67:                                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %raw_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %raw_data, align 4
  br label %hid_time_value.exit69

hid_time_value.exit69:                            ; preds = %sw.bb3.i67, %sw.bb1.i66, %sw.bb.i64, %sw.bb17.hid_time_value.exit69_crit_edge
  %retval.0.i68 = phi i32 [ %43, %sw.bb3.i67 ], [ %conv2.i65, %sw.bb1.i66 ], [ %conv.i63, %sw.bb.i64 ], [ -1, %sw.bb17.hid_time_value.exit69_crit_edge ]
  %tm_min = getelementptr inbounds %struct.hid_time_state, ptr %1, i32 0, i32 6, i32 1
  %44 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %retval.0.i68, ptr %tm_min, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %time_buf1 = getelementptr inbounds %struct.hid_time_state, ptr %1, i32 0, i32 6
  %45 = zext i32 %raw_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %raw_len, label %sw.bb19.hid_time_value.exit76_crit_edge [
    i32 1, label %sw.bb.i71
    i32 2, label %sw.bb1.i73
    i32 4, label %sw.bb3.i74
  ]

sw.bb19.hid_time_value.exit76_crit_edge:          ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  br label %hid_time_value.exit76

sw.bb.i71:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %raw_data to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %raw_data, align 1
  %conv.i70 = zext i8 %47 to i32
  br label %hid_time_value.exit76

sw.bb1.i73:                                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %raw_data to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %raw_data, align 2
  %conv2.i72 = zext i16 %49 to i32
  br label %hid_time_value.exit76

sw.bb3.i74:                                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %raw_data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %raw_data, align 4
  br label %hid_time_value.exit76

hid_time_value.exit76:                            ; preds = %sw.bb3.i74, %sw.bb1.i73, %sw.bb.i71, %sw.bb19.hid_time_value.exit76_crit_edge
  %retval.0.i75 = phi i32 [ %51, %sw.bb3.i74 ], [ %conv2.i72, %sw.bb1.i73 ], [ %conv.i70, %sw.bb.i71 ], [ -1, %sw.bb19.hid_time_value.exit76_crit_edge ]
  %52 = ptrtoint ptr %time_buf1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %retval.0.i75, ptr %time_buf1, align 4
  br label %cleanup

cleanup:                                          ; preds = %hid_time_value.exit76, %hid_time_value.exit69, %hid_time_value.exit62, %hid_time_value.exit55, %hid_time_value.exit48, %hid_time_value.exit, %if.then5, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %hid_time_value.exit ], [ 0, %if.then5 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %hid_time_value.exit76 ], [ 0, %hid_time_value.exit69 ], [ 0, %hid_time_value.exit62 ], [ 0, %hid_time_value.exit55 ], [ 0, %hid_time_value.exit48 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_register_callback(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_device_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sensor_hub_device_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_remove_callback(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_input_get_attribute_info(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %comp_last_time = getelementptr inbounds %struct.hid_time_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %comp_last_time to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %comp_last_time, align 4
  %common_attributes = getelementptr inbounds %struct.hid_time_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %common_attributes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %common_attributes, align 4
  %report_id = getelementptr inbounds %struct.hid_time_state, ptr %1, i32 0, i32 2, i32 0, i32 2
  %5 = ptrtoint ptr %report_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %report_id, align 4
  %call1 = tail call i32 @sensor_hub_input_attr_get_raw_value(ptr noundef %4, i32 noundef 2097312, i32 noundef 2098465, i32 noundef %6, i32 noundef 0, i1 noundef zeroext false) #5
  %call3 = tail call i32 @wait_for_completion_killable_timeout(ptr noundef %comp_last_time, i32 noundef 600) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %do.body4, label %if.end

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock_last_time = getelementptr inbounds %struct.hid_time_state, ptr %1, i32 0, i32 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock_last_time) #5
  %last_time = getelementptr inbounds %struct.hid_time_state, ptr %1, i32 0, i32 3
  %7 = call ptr @memcpy(ptr %tm, ptr %last_time, i32 36)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock_last_time, i32 noundef %call7) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %.call3 = select i1 %tobool.not, i32 -5, i32 %call3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body4
  %retval.0 = phi i32 [ 0, %do.body4 ], [ %.call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_input_attr_get_raw_value(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !93, !94, !96, !98, !99, !100, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_rtc_hid_sensor_time__227_326_hid_time_platform_driver_init6, !1, !"__initcall__kmod_rtc_hid_sensor_time__227_326_hid_time_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 326, i32 1}
!2 = !{ptr @__exitcall_hid_time_platform_driver_exit, !1, !"__exitcall_hid_time_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 328, i32 1}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 329, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 330, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns232, !11, !"__UNIQUE_ID_import_ns232", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 331, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 321, i32 11}
!14 = !{ptr @hid_time_platform_driver, !15, !"hid_time_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 318, i32 31}
!16 = !{ptr @hid_time_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 234, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 245, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @hid_time_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @hid_time_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 252, i32 3}
!29 = !{ptr @hid_time_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @hid_time_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 262, i32 3}
!33 = !{ptr @hid_time_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @hid_time_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 268, i32 3}
!37 = !{ptr @hid_time_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @hid_time_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 279, i32 6}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 286, i32 3}
!43 = !{ptr @hid_time_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @hid_time_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @init_completion.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../include/linux/completion.h", i32 87, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 150, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @hid_time_parse_report._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @hid_time_parse_report._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 155, i32 4}
!55 = !{ptr @hid_time_parse_report._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @hid_time_parse_report._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 161, i32 4}
!59 = !{ptr @hid_time_parse_report._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @hid_time_parse_report._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 174, i32 4}
!63 = !{ptr @hid_time_parse_report._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @hid_time_parse_report._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 181, i32 4}
!67 = !{ptr @hid_time_parse_report._entry.32, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @hid_time_parse_report._entry_ptr.34, !66, !"_entry_ptr", i1 false, i1 false}
!69 = distinct !{null, !70, !"hid_time_addresses", i1 false, i1 false}
!70 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 34, i32 18}
!71 = !{ptr @hid_time_attrib_name.unknown, !72, !"unknown", i1 false, i1 false}
!72 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 124, i32 20}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 45, i32 2}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 45, i32 10}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 45, i32 19}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 45, i32 26}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 45, i32 34}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 45, i32 44}
!85 = !{ptr @hid_time_channel_names, !86, !"hid_time_channel_names", i1 false, i1 false}
!86 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 44, i32 27}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/hid.h", i32 963, i32 3}
!89 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @hid_device_io_start._entry, !88, !"_entry", i1 false, i1 false}
!93 = !{ptr @hid_device_io_start._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @hid_time_rtc_ops, !95, !"hid_time_rtc_ops", i1 false, i1 false}
!95 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 218, i32 35}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/linux/hid.h", i32 983, i32 3}
!98 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @hid_device_io_stop._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @hid_device_io_stop._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @hid_time_ids, !102, !"hid_time_ids", i1 false, i1 false}
!102 = !{!"../drivers/rtc/rtc-hid-sensor-time.c", i32 309, i32 40}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i8 0, i8 2}
