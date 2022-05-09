; ModuleID = '/llk/IR_all_yes/drivers/iio/position/hid-sensor-custom-intel-hinge.c_pt.bc'
source_filename = "../drivers/iio/position/hid-sensor-custom-intel-hinge.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.68, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.68 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.hinge_state = type { ptr, [3 x %struct.hid_sensor_hub_attribute_info], %struct.hid_sensor_hub_callbacks, %struct.hid_sensor_common, [3 x ptr], %struct.anon.70, i32, i32, i32, i32, i64 }
%struct.hid_sensor_hub_attribute_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hid_sensor_hub_callbacks = type { ptr, ptr, ptr, ptr, ptr }
%struct.hid_sensor_common = type { ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, ptr, i32, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.work_struct }
%struct.anon.70 = type { [3 x i32], i64 }
%struct.hid_sensor_hub_device = type { ptr, i32, i32, i32, i32, i32, ptr, %struct.sensor_hub_pending }
%struct.sensor_hub_pending = type { i8, %struct.completion, i32, i32, i32, ptr }

@__initcall__kmod_hid_sensor_custom_intel_hinge__224_376_hid_hinge_platform_driver_init6 = internal global ptr @hid_hinge_platform_driver_init, section ".initcall6.init", align 4
@hid_hinge_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hid_hinge_probe, ptr @hid_hinge_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hid_sensor_pm_ops, ptr null, ptr null }, ptr @hid_hinge_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hid_hinge_platform_driver_exit = internal global ptr @hid_hinge_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description225 = internal constant [65 x i8] c"hid_sensor_custom_intel_hinge.description=HID Sensor INTEL Hinge\00", section ".modinfo", align 1
@__UNIQUE_ID_author226 = internal constant [67 x i8] c"hid_sensor_custom_intel_hinge.author=Ye Xiang <xiang.ye@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [86 x i8] c"hid_sensor_custom_intel_hinge.file=drivers/iio/position/hid-sensor-custom-intel-hinge\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [42 x i8] c"hid_sensor_custom_intel_hinge.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns229 = internal constant [48 x i8] c"hid_sensor_custom_intel_hinge.import_ns=IIO_HID\00", section ".modinfo", align 1
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hid_sensor_custom_intel_hinge\00", [34 x i8] zeroinitializer }, align 32
@hid_sensor_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@hid_hinge_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"HID-SENSOR-INT-020b\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hinge_labels = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.9, ptr @.str.19, ptr @.str.20], [20 x i8] zeroinitializer }, align 32
@hinge_sensitivity_addresses = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 2098500], [28 x i8] zeroinitializer }, align 32
@hid_hinge_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to setup common attributes\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hid_hinge_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/iio/position/hid-sensor-custom-intel-hinge.c\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hid_hinge_probe._entry_ptr = internal global ptr @hid_hinge_probe._entry, section ".printk_index", align 4
@hinge_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 12, i32 0, i32 0, i32 0, i32 0, %struct.anon.68 { i8 115, i8 0, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 69644, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 12, i32 1, i32 0, i32 0, i32 1, %struct.anon.68 { i8 115, i8 0, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 69644, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 12, i32 2, i32 0, i32 0, i32 2, %struct.anon.68 { i8 115, i8 0, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 69644, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.68 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@hid_hinge_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 304, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to setup attributes\0A\00", [36 x i8] zeroinitializer }, align 32
@hid_hinge_probe._entry_ptr.8 = internal global ptr @hid_hinge_probe._entry.6, section ".printk_index", align 4
@hinge_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @hinge_read_raw, ptr null, ptr null, ptr @hinge_write_raw, ptr @hinge_read_label, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hinge\00", [26 x i8] zeroinitializer }, align 32
@hid_hinge_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 316, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trigger setup failed\0A\00", [42 x i8] zeroinitializer }, align 32
@hid_hinge_probe._entry_ptr.12 = internal global ptr @hid_hinge_probe._entry.10, section ".printk_index", align 4
@hid_hinge_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"callback reg failed\0A\00", [43 x i8] zeroinitializer }, align 32
@hid_hinge_probe._entry_ptr.15 = internal global ptr @hid_hinge_probe._entry.13, section ".printk_index", align 4
@hid_hinge_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 331, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device register failed\0A\00", [40 x i8] zeroinitializer }, align 32
@hid_hinge_probe._entry_ptr.18 = internal global ptr @hid_hinge_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"screen\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"keyboard\00", [23 x i8] zeroinitializer }, align 32
@hinge_addresses = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2098500, i32 2098501, i32 2098502], [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2098473, i64 2098500, i64 2098501, i64 2098502]
@__sancov_gen_cov_switch_values.22 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 12, i64 16]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 16]
@___asan_gen_.24 = private unnamed_addr constant [26 x i8] c"hid_hinge_platform_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 367, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 370, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"hid_hinge_ids\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 358, i32 40 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"hinge_labels\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 30, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant [28 x i8] c"hinge_sensitivity_addresses\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 52, i32 18 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 290, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"hinge_channels\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 57, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 304, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [11 x i8] c"hinge_info\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 182, i32 30 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 309, i32 20 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 316, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 325, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 331, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 31, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 32, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"hinge_addresses\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 24, i32 18 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [56 x i8] c"../drivers/iio/position/hid-sensor-custom-intel-hinge.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 179, i32 24 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_import_ns229, ptr @__UNIQUE_ID_license228, ptr @__exitcall_hid_hinge_platform_driver_exit, ptr @__initcall__kmod_hid_sensor_custom_intel_hinge__224_376_hid_hinge_platform_driver_init6, ptr @hid_hinge_platform_driver_exit, ptr @hid_hinge_probe._entry, ptr @hid_hinge_probe._entry.10, ptr @hid_hinge_probe._entry.13, ptr @hid_hinge_probe._entry.16, ptr @hid_hinge_probe._entry.6, ptr @hid_hinge_probe._entry_ptr, ptr @hid_hinge_probe._entry_ptr.12, ptr @hid_hinge_probe._entry_ptr.15, ptr @hid_hinge_probe._entry_ptr.18, ptr @hid_hinge_probe._entry_ptr.8, ptr @hid_hinge_platform_driver, ptr @.str, ptr @hid_hinge_ids, ptr @hinge_labels, ptr @hinge_sensitivity_addresses, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @hinge_channels, ptr @.str.7, ptr @hinge_info, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @hinge_addresses, ptr @.str.21], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_hinge_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_hinge_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hinge_labels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hinge_sensitivity_addresses to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_hinge_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hinge_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_hinge_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hinge_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_hinge_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_hinge_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_hinge_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hinge_addresses to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_hinge_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hid_hinge_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hid_hinge_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @hid_hinge_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_hinge_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 496) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %common_attributes = getelementptr inbounds %struct.hinge_state, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %common_attributes to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %common_attributes, align 4
  %pdev5 = getelementptr inbounds %struct.hinge_state, ptr %4, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %pdev5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %pdev5, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %4, align 8
  %uglygep = getelementptr i8, ptr %4, i32 436
  %8 = call ptr @memcpy(ptr %uglygep, ptr @hinge_labels, i32 12)
  %usage = getelementptr inbounds %struct.hid_sensor_hub_device, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usage, align 4
  %call9 = tail call i32 @hid_sensor_parse_common_attributes(ptr noundef %1, i32 noundef %10, ptr noundef %common_attributes, ptr noundef nonnull @hinge_sensitivity_addresses, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %11 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %num_channels, align 4
  %dev14 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  %call15 = tail call ptr @devm_kmemdup(ptr noundef %dev14, ptr noundef nonnull @hinge_channels, i32 noundef 352, i32 noundef 3264) #6
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call15, ptr %channels, align 8
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %if.end13.cleanup_crit_edge, label %if.end19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %13 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usage, align 4
  %arrayidx1.i = getelementptr %struct.hinge_state, ptr %4, i32 0, i32 1, i32 0
  %call.i = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %1, i8 noundef zeroext 0, i32 noundef %14, i32 noundef 2098500, ptr noundef %arrayidx1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %if.end19.do.end27_crit_edge, label %if.end.i

if.end19.do.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

if.end.i:                                         ; preds = %if.end19
  %size.i = getelementptr %struct.hinge_state, ptr %4, i32 0, i32 1, i32 0, i32 6
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i, align 4
  %size.tr.i.i = trunc i32 %16 to i8
  %conv.i.i = shl i8 %size.tr.i.i, 3
  %realbits.i.i = getelementptr %struct.iio_chan_spec, ptr %call15, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %realbits.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i.i, ptr %realbits.i.i, align 1
  %arrayidx1.1.i = getelementptr %struct.hinge_state, ptr %4, i32 0, i32 1, i32 1
  %call.1.i = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %1, i8 noundef zeroext 0, i32 noundef %14, i32 noundef 2098501, ptr noundef %arrayidx1.1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp2.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp2.1.i, label %if.end.i.do.end27_crit_edge, label %if.end.1.i

if.end.i.do.end27_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

if.end.1.i:                                       ; preds = %if.end.i
  %size.1.i = getelementptr %struct.hinge_state, ptr %4, i32 0, i32 1, i32 1, i32 6
  %18 = ptrtoint ptr %size.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.1.i, align 4
  %size.tr.i.1.i = trunc i32 %19 to i8
  %conv.i.1.i = shl i8 %size.tr.i.1.i, 3
  %realbits.i.1.i = getelementptr %struct.iio_chan_spec, ptr %call15, i32 1, i32 5, i32 1
  %20 = ptrtoint ptr %realbits.i.1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i.1.i, ptr %realbits.i.1.i, align 1
  %arrayidx1.2.i = getelementptr %struct.hinge_state, ptr %4, i32 0, i32 1, i32 2
  %call.2.i = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %1, i8 noundef zeroext 0, i32 noundef %14, i32 noundef 2098502, ptr noundef %arrayidx1.2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp2.2.i = icmp slt i32 %call.2.i, 0
  br i1 %cmp2.2.i, label %if.end.1.i.do.end27_crit_edge, label %hinge_parse_report.exit

if.end.1.i.do.end27_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

hinge_parse_report.exit:                          ; preds = %if.end.1.i
  %size.2.i = getelementptr %struct.hinge_state, ptr %4, i32 0, i32 1, i32 2, i32 6
  %21 = ptrtoint ptr %size.2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.2.i, align 4
  %size.tr.i.2.i = trunc i32 %22 to i8
  %conv.i.2.i = shl i8 %size.tr.i.2.i, 3
  %realbits.i.2.i = getelementptr %struct.iio_chan_spec, ptr %call15, i32 2, i32 5, i32 1
  %23 = ptrtoint ptr %realbits.i.2.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i.2.i, ptr %realbits.i.2.i, align 1
  %scale_pre_decml.i = getelementptr inbounds %struct.hinge_state, ptr %4, i32 0, i32 6
  %scale_post_decml.i = getelementptr inbounds %struct.hinge_state, ptr %4, i32 0, i32 7
  %call7.i = tail call i32 @hid_sensor_format_scale(i32 noundef 2097675, ptr noundef %arrayidx1.i, ptr noundef %scale_pre_decml.i, ptr noundef %scale_post_decml.i) #6
  %scale_precision.i = getelementptr inbounds %struct.hinge_state, ptr %4, i32 0, i32 8
  %24 = ptrtoint ptr %scale_precision.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call7.i, ptr %scale_precision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool23.not = icmp eq i32 %call.2.i, 0
  br i1 %tobool23.not, label %if.end29, label %hinge_parse_report.exit.do.end27_crit_edge

hinge_parse_report.exit.do.end27_crit_edge:       ; preds = %hinge_parse_report.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

do.end27:                                         ; preds = %hinge_parse_report.exit.do.end27_crit_edge, %if.end.1.i.do.end27_crit_edge, %if.end.i.do.end27_crit_edge, %if.end19.do.end27_crit_edge
  %call4.i128 = phi i32 [ %call.2.i, %hinge_parse_report.exit.do.end27_crit_edge ], [ %call.2.i, %if.end.1.i.do.end27_crit_edge ], [ %call.1.i, %if.end.i.do.end27_crit_edge ], [ %call.i, %if.end19.do.end27_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end29:                                         ; preds = %hinge_parse_report.exit
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %25 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @hinge_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %26 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.9, ptr %name, align 8
  %27 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %call, align 8
  %data_ready = getelementptr inbounds %struct.hinge_state, ptr %4, i32 0, i32 3, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data_ready, i32 noundef 4) #6
  %28 = ptrtoint ptr %data_ready to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %data_ready, align 4
  %29 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name, align 8
  %call33 = tail call i32 @hid_sensor_setup_trigger(ptr noundef nonnull %call, ptr noundef %30, ptr noundef %common_attributes) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end38, label %if.end40

do.end38:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end40:                                         ; preds = %if.end29
  %callbacks = getelementptr inbounds %struct.hinge_state, ptr %4, i32 0, i32 2
  %send_event = getelementptr inbounds %struct.hinge_state, ptr %4, i32 0, i32 2, i32 4
  %31 = ptrtoint ptr %send_event to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @hinge_proc_event, ptr %send_event, align 8
  %capture_sample = getelementptr inbounds %struct.hinge_state, ptr %4, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %capture_sample to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @hinge_capture_sample, ptr %capture_sample, align 4
  %33 = ptrtoint ptr %callbacks to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %pdev, ptr %callbacks, align 8
  %34 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %usage, align 4
  %call46 = tail call i32 @sensor_hub_register_callback(ptr noundef %1, i32 noundef %35, ptr noundef %callbacks) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end51, label %if.end53

do.end51:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %error_remove_trigger

if.end53:                                         ; preds = %if.end40
  %call54 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end53.cleanup_crit_edge, label %do.end59

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  %36 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %usage, align 4
  %call63 = tail call i32 @sensor_hub_remove_callback(ptr noundef %1, i32 noundef %37) #6
  br label %error_remove_trigger

error_remove_trigger:                             ; preds = %do.end59, %do.end51
  %ret.0 = phi i32 [ %call46, %do.end51 ], [ %call54, %do.end59 ]
  tail call void @hid_sensor_remove_trigger(ptr noundef nonnull %call, ptr noundef %common_attributes) #6
  br label %cleanup

cleanup:                                          ; preds = %error_remove_trigger, %if.end53.cleanup_crit_edge, %do.end38, %do.end27, %if.end13.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end ], [ %call4.i128, %do.end27 ], [ %call33, %do.end38 ], [ %ret.0, %error_remove_trigger ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_hinge_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %3) #6
  %usage = getelementptr inbounds %struct.hid_sensor_hub_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usage, align 4
  %call2 = tail call i32 @sensor_hub_remove_callback(ptr noundef %1, i32 noundef %7) #6
  %common_attributes = getelementptr inbounds %struct.hinge_state, ptr %5, i32 0, i32 3
  tail call void @hid_sensor_remove_trigger(ptr noundef %3, ptr noundef %common_attributes) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_parse_common_attributes(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_setup_trigger(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hinge_proc_event(ptr nocapture noundef readnone %hsdev, i32 noundef %usage_id, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %priv, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %data_ready = getelementptr inbounds %struct.hinge_state, ptr %3, i32 0, i32 3, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %data_ready, i32 noundef 4) #6
  %4 = ptrtoint ptr %data_ready to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %data_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %entry
  %timestamp = getelementptr inbounds %struct.hinge_state, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %timestamp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool3.not = icmp eq i64 %7, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i64 @iio_get_time_ns(ptr noundef %1) #6
  %8 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call5, ptr %timestamp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %scan = getelementptr inbounds %struct.hinge_state, ptr %3, i32 0, i32 5
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %scan_timestamp.i, align 8, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %14, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %12, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan) #6
  %16 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %timestamp, align 8
  br label %if.end10

if.end10:                                         ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hinge_capture_sample(ptr nocapture noundef readnone %hsdev, i32 noundef %usage_id, i32 noundef %raw_len, ptr nocapture noundef readonly %raw_data, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %priv, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = zext i32 %usage_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %usage_id, label %entry.cleanup_crit_edge [
    i32 2098500, label %entry.sw.bb_crit_edge
    i32 2098501, label %entry.sw.bb_crit_edge10
    i32 2098502, label %entry.sw.bb_crit_edge11
    i32 2098473, label %sw.bb2
  ]

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge10, %entry.sw.bb_crit_edge11
  %sub = add nsw i32 %usage_id, -2098500
  %5 = ptrtoint ptr %raw_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %raw_data, align 4
  %scan = getelementptr inbounds %struct.hinge_state, ptr %3, i32 0, i32 5
  %arrayidx = getelementptr [3 x i32], ptr %scan, i32 0, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %common_attributes = getelementptr inbounds %struct.hinge_state, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %raw_data to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %raw_data, align 8
  %call3 = tail call i64 @hid_sensor_convert_timestamp(ptr noundef %common_attributes, i64 noundef %9) #6
  %timestamp = getelementptr inbounds %struct.hinge_state, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call3, ptr %timestamp, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_register_callback(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_remove_callback(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_sensor_remove_trigger(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_input_get_attribute_info(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_format_scale(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hinge_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %common_attributes = getelementptr inbounds %struct.hinge_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %common_attributes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common_attributes, align 4
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb18
    i32 3, label %sw.bb19
    i32 12, label %sw.bb20
    i32 16, label %sw.bb23
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call3 = tail call i32 @hid_sensor_power_state(ptr noundef %common_attributes, i1 noundef zeroext true) #6
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %5 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scan_index, align 4
  %report_id4 = getelementptr %struct.hinge_state, ptr %1, i32 0, i32 1, i32 %6, i32 2
  %7 = ptrtoint ptr %report_id4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %report_id4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 @hid_sensor_power_state(ptr noundef %common_attributes, i1 noundef zeroext false) #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %logical_minimum = getelementptr %struct.hinge_state, ptr %1, i32 0, i32 1, i32 %6, i32 7
  %9 = ptrtoint ptr %logical_minimum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %logical_minimum, align 4
  %11 = ptrtoint ptr %common_attributes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %common_attributes, align 4
  %usage = getelementptr inbounds %struct.hid_sensor_hub_device, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usage, align 4
  %arrayidx13 = getelementptr [3 x i32], ptr @hinge_addresses, i32 0, i32 %6
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp14 = icmp slt i32 %10, 0
  %call15 = tail call i32 @sensor_hub_input_attr_get_raw_value(ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %8, i32 noundef 0, i1 noundef zeroext %cmp14) #6
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call15, ptr %val, align 4
  %call17 = tail call i32 @hid_sensor_power_state(ptr noundef %common_attributes, i1 noundef zeroext false) #6
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %scale_pre_decml = getelementptr inbounds %struct.hinge_state, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %scale_pre_decml to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scale_pre_decml, align 8
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %val, align 4
  %scale_post_decml = getelementptr inbounds %struct.hinge_state, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %scale_post_decml to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scale_post_decml, align 4
  %23 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val2, align 4
  %scale_precision = getelementptr inbounds %struct.hinge_state, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %scale_precision to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scale_precision, align 8
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %value_offset = getelementptr inbounds %struct.hinge_state, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %value_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value_offset, align 4
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %val, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 @hid_sensor_read_samp_freq_value(ptr noundef %common_attributes, ptr noundef %val, ptr noundef %val2) #6
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = tail call i32 @hid_sensor_read_raw_hyst_value(ptr noundef %common_attributes, ptr noundef %val, ptr noundef %val2) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb23, %sw.bb20, %sw.bb19, %sw.bb18, %if.end, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %sw.bb23 ], [ %call22, %sw.bb20 ], [ 1, %sw.bb19 ], [ %25, %sw.bb18 ], [ -22, %if.then ], [ 1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hinge_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 12, label %sw.bb
    i32 16, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %common_attributes = getelementptr inbounds %struct.hinge_state, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @hid_sensor_write_samp_freq_value(ptr noundef %common_attributes, i32 noundef %val, i32 noundef %val2) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %common_attributes3 = getelementptr inbounds %struct.hinge_state, ptr %1, i32 0, i32 3
  %call4 = tail call i32 @hid_sensor_write_raw_hyst_value(ptr noundef %common_attributes3, i32 noundef %val, i32 noundef %val2) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %sw.bb2 ], [ %call1, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hinge_read_label(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %label) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.hinge_state, ptr %1, i32 0, i32 4, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %label, ptr noundef nonnull @.str.21, ptr noundef %5)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_power_state(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_input_attr_get_raw_value(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_read_samp_freq_value(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_read_raw_hyst_value(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_write_samp_freq_value(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_write_raw_hyst_value(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hid_sensor_convert_timestamp(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_hid_sensor_custom_intel_hinge__224_376_hid_hinge_platform_driver_init6, !1, !"__initcall__kmod_hid_sensor_custom_intel_hinge__224_376_hid_hinge_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 376, i32 1}
!2 = !{ptr @__exitcall_hid_hinge_platform_driver_exit, !1, !"__exitcall_hid_hinge_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description225, !4, !"__UNIQUE_ID_description225", i1 false, i1 false}
!4 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 378, i32 1}
!5 = !{ptr @__UNIQUE_ID_author226, !6, !"__UNIQUE_ID_author226", i1 false, i1 false}
!6 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 379, i32 1}
!7 = !{ptr @__UNIQUE_ID_file227, !8, !"__UNIQUE_ID_file227", i1 false, i1 false}
!8 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 380, i32 1}
!9 = !{ptr @__UNIQUE_ID_license228, !8, !"__UNIQUE_ID_license228", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns229, !11, !"__UNIQUE_ID_import_ns229", i1 false, i1 false}
!11 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 381, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 370, i32 11}
!14 = !{ptr @hid_hinge_platform_driver, !15, !"hid_hinge_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 367, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 290, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hid_hinge_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @hid_hinge_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 304, i32 3}
!26 = !{ptr @hid_hinge_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hid_hinge_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 309, i32 20}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 316, i32 3}
!32 = !{ptr @hid_hinge_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @hid_hinge_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 325, i32 3}
!36 = !{ptr @hid_hinge_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @hid_hinge_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 331, i32 3}
!40 = !{ptr @hid_hinge_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @hid_hinge_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 31, i32 11}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 32, i32 11}
!46 = !{ptr @hinge_labels, !47, !"hinge_labels", i1 false, i1 false}
!47 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 30, i32 26}
!48 = !{ptr @hinge_sensitivity_addresses, !49, !"hinge_sensitivity_addresses", i1 false, i1 false}
!49 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 52, i32 18}
!50 = !{ptr @hinge_channels, !51, !"hinge_channels", i1 false, i1 false}
!51 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 57, i32 35}
!52 = !{ptr @hinge_addresses, !53, !"hinge_addresses", i1 false, i1 false}
!53 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 24, i32 18}
!54 = !{ptr @hinge_info, !55, !"hinge_info", i1 false, i1 false}
!55 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 182, i32 30}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 179, i32 24}
!58 = !{ptr @hid_hinge_ids, !59, !"hid_hinge_ids", i1 false, i1 false}
!59 = !{!"../drivers/iio/position/hid-sensor-custom-intel-hinge.c", i32 358, i32 40}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i8 0, i8 2}
