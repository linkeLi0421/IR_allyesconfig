; ModuleID = '/llk/IR_all_yes/drivers/iio/accel/hid-sensor-accel-3d.c_pt.bc'
source_filename = "../drivers/iio/accel/hid-sensor-accel-3d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.68, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.68 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.accel_3d_state = type { %struct.hid_sensor_hub_callbacks, %struct.hid_sensor_common, [3 x %struct.hid_sensor_hub_attribute_info], %struct.anon.70, i32, i32, i32, i32, i64 }
%struct.hid_sensor_hub_callbacks = type { ptr, ptr, ptr, ptr, ptr }
%struct.hid_sensor_common = type { ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, ptr, i32, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.work_struct }
%struct.hid_sensor_hub_attribute_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.70 = type { [3 x i32], i64 }
%struct.hid_sensor_hub_device = type { ptr, i32, i32, i32, i32, i32, ptr, %struct.sensor_hub_pending }
%struct.sensor_hub_pending = type { i8, %struct.completion, i32, i32, i32, ptr }

@__initcall__kmod_hid_sensor_accel_3d__227_458_hid_accel_3d_platform_driver_init6 = internal global ptr @hid_accel_3d_platform_driver_init, section ".initcall6.init", align 4
@hid_accel_3d_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hid_accel_3d_probe, ptr @hid_accel_3d_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hid_sensor_pm_ops, ptr null, ptr null }, ptr @hid_accel_3d_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hid_accel_3d_platform_driver_exit = internal global ptr @hid_accel_3d_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [52 x i8] c"hid_sensor_accel_3d.description=HID Sensor Accel 3D\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [79 x i8] c"hid_sensor_accel_3d.author=Srinivas Pandruvada <srinivas.pandruvada@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [63 x i8] c"hid_sensor_accel_3d.file=drivers/iio/accel/hid-sensor-accel-3d\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [32 x i8] c"hid_sensor_accel_3d.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns232 = internal constant [38 x i8] c"hid_sensor_accel_3d.import_ns=IIO_HID\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hid_sensor_accel_3d\00", [44 x i8] zeroinitializer }, align 32
@hid_sensor_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@hid_accel_3d_ids = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"HID-SENSOR-200073\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"HID-SENSOR-20007b\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"accel_3d\00", [23 x i8] zeroinitializer }, align 32
@accel_3d_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 69644, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 1, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 69644, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 2, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 69644, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.68 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gravity\00", [24 x i8] zeroinitializer }, align 32
@gravity_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 31, i32 0, i32 1, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 69644, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 31, i32 0, i32 2, i32 0, i32 1, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 69644, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 31, i32 0, i32 3, i32 0, i32 2, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 69644, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.68 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@accel_3d_sensitivity_addresses = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 2098258], [28 x i8] zeroinitializer }, align 32
@hid_accel_3d_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 367, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to setup common attributes\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hid_accel_3d_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/iio/accel/hid-sensor-accel-3d.c\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hid_accel_3d_probe._entry_ptr = internal global ptr @hid_accel_3d_probe._entry, section ".printk_index", align 4
@hid_accel_3d_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 374, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to duplicate channels\0A\00", [34 x i8] zeroinitializer }, align 32
@hid_accel_3d_probe._entry_ptr.10 = internal global ptr @hid_accel_3d_probe._entry.8, section ".printk_index", align 4
@hid_accel_3d_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 381, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to setup attributes\0A\00", [36 x i8] zeroinitializer }, align 32
@hid_accel_3d_probe._entry_ptr.13 = internal global ptr @hid_accel_3d_probe._entry.11, section ".printk_index", align 4
@accel_3d_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @accel_3d_read_raw, ptr null, ptr null, ptr @accel_3d_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@hid_accel_3d_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 394, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trigger setup failed\0A\00", [42 x i8] zeroinitializer }, align 32
@hid_accel_3d_probe._entry_ptr.16 = internal global ptr @hid_accel_3d_probe._entry.14, section ".printk_index", align 4
@hid_accel_3d_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 400, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device register failed\0A\00", [40 x i8] zeroinitializer }, align 32
@hid_accel_3d_probe._entry_ptr.19 = internal global ptr @hid_accel_3d_probe._entry.17, section ".printk_index", align 4
@hid_accel_3d_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 410, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"callback reg failed\0A\00", [43 x i8] zeroinitializer }, align 32
@hid_accel_3d_probe._entry_ptr.22 = internal global ptr @hid_accel_3d_probe._entry.20, section ".printk_index", align 4
@accel_3d_parse_report.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.5, ptr @.str.24, i8 0, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"accel_3d_parse_report\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"accel_3d %x:%x, %x:%x, %x:%x\0A\00", [34 x i8] zeroinitializer }, align 32
@accel_3d_addresses = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2098259, i32 2098260, i32 2098261], [20 x i8] zeroinitializer }, align 32
@accel_3d_proc_event.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.5, ptr @.str.26, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"accel_3d_proc_event\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"accel_3d_proc_event\0A\00", [43 x i8] zeroinitializer }, align 32
@hid_sensor_push_data.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.5, ptr @.str.28, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hid_sensor_push_data\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hid_sensor_push_data\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2098259, i64 2098260, i64 2098261, i64 2098473]
@__sancov_gen_cov_switch_values.29 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 12, i64 16]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 16]
@___asan_gen_.31 = private unnamed_addr constant [29 x i8] c"hid_accel_3d_platform_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 449, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 452, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"hid_accel_3d_ids\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 437, i32 40 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 351, i32 10 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"accel_3d_channels\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 51, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 356, i32 10 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"gravity_channels\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 87, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [31 x i8] c"accel_3d_sensitivity_addresses\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 46, i32 18 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 367, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 374, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 381, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"accel_3d_info\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 221, i32 30 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 394, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 400, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 410, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 313, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [19 x i8] c"accel_3d_addresses\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 40, i32 18 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 242, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [43 x i8] c"../drivers/iio/accel/hid-sensor-accel-3d.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 230, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_import_ns232, ptr @__UNIQUE_ID_license231, ptr @__exitcall_hid_accel_3d_platform_driver_exit, ptr @__initcall__kmod_hid_sensor_accel_3d__227_458_hid_accel_3d_platform_driver_init6, ptr @hid_accel_3d_platform_driver_exit, ptr @hid_accel_3d_probe._entry, ptr @hid_accel_3d_probe._entry.11, ptr @hid_accel_3d_probe._entry.14, ptr @hid_accel_3d_probe._entry.17, ptr @hid_accel_3d_probe._entry.20, ptr @hid_accel_3d_probe._entry.8, ptr @hid_accel_3d_probe._entry_ptr, ptr @hid_accel_3d_probe._entry_ptr.10, ptr @hid_accel_3d_probe._entry_ptr.13, ptr @hid_accel_3d_probe._entry_ptr.16, ptr @hid_accel_3d_probe._entry_ptr.19, ptr @hid_accel_3d_probe._entry_ptr.22, ptr @hid_accel_3d_platform_driver, ptr @.str, ptr @hid_accel_3d_ids, ptr @.str.1, ptr @accel_3d_channels, ptr @.str.2, ptr @gravity_channels, ptr @accel_3d_sensitivity_addresses, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @accel_3d_info, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @accel_3d_addresses, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_accel_3d_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_accel_3d_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @accel_3d_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gravity_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @accel_3d_sensitivity_addresses to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_accel_3d_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_accel_3d_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_accel_3d_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @accel_3d_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_accel_3d_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_accel_3d_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_accel_3d_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @accel_3d_addresses to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_accel_3d_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hid_accel_3d_platform_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hid_accel_3d_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @hid_accel_3d_platform_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_accel_3d_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 480) #4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  %common_attributes = getelementptr inbounds %struct.accel_3d_state, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %common_attributes to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %common_attributes, align 4
  %pdev5 = getelementptr inbounds %struct.accel_3d_state, ptr %4, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %pdev5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %pdev5, align 4
  %usage = getelementptr inbounds %struct.hid_sensor_hub_device, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097267, i32 %8)
  %cmp6 = icmp eq i32 %8, 2097267
  %spec.select = select i1 %cmp6, ptr @.str.1, ptr @.str.2
  %9 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %9, align 4
  %11 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %usage, align 4
  %call12 = tail call i32 @hid_sensor_parse_common_attributes(ptr noundef %1, i32 noundef %12, ptr noundef %common_attributes, ptr noundef nonnull @accel_3d_sensitivity_addresses, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %spec.select128 = select i1 %cmp6, ptr @accel_3d_channels, ptr @gravity_channels
  %call17 = tail call ptr @devm_kmemdup(ptr noundef %dev, ptr noundef nonnull %spec.select128, i32 noundef 352, i32 noundef 3264) #4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call17, ptr %channels, align 8
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #7
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usage, align 4
  %call28 = tail call fastcc i32 @accel_3d_parse_report(ptr noundef %pdev, ptr noundef %1, ptr noundef nonnull %call17, i32 noundef %15, ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #7
  br label %cleanup

if.end35:                                         ; preds = %if.end25
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %16 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @accel_3d_info, ptr %info, align 8
  %name36 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %17 = ptrtoint ptr %name36 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %spec.select, ptr %name36, align 8
  %18 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %call, align 8
  %data_ready = getelementptr inbounds %struct.accel_3d_state, ptr %4, i32 0, i32 1, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data_ready, i32 noundef 4) #4
  %19 = ptrtoint ptr %data_ready to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %data_ready, align 4
  %call39 = tail call i32 @hid_sensor_setup_trigger(ptr noundef nonnull %call, ptr noundef nonnull %spec.select, ptr noundef %common_attributes) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.end44, label %if.end46

do.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #7
  br label %cleanup

if.end46:                                         ; preds = %if.end35
  %call47 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end54, label %do.end52

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #7
  br label %error_remove_trigger

if.end54:                                         ; preds = %if.end46
  %send_event = getelementptr inbounds %struct.hid_sensor_hub_callbacks, ptr %4, i32 0, i32 4
  %20 = ptrtoint ptr %send_event to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @accel_3d_proc_event, ptr %send_event, align 8
  %capture_sample = getelementptr inbounds %struct.hid_sensor_hub_callbacks, ptr %4, i32 0, i32 3
  %21 = ptrtoint ptr %capture_sample to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @accel_3d_capture_sample, ptr %capture_sample, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %pdev, ptr %4, align 8
  %23 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %usage, align 4
  %call60 = tail call i32 @sensor_hub_register_callback(ptr noundef %1, i32 noundef %24, ptr noundef %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %do.end65, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end65:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #7
  tail call void @iio_device_unregister(ptr noundef nonnull %call) #4
  br label %error_remove_trigger

error_remove_trigger:                             ; preds = %do.end65, %do.end52
  %ret.0 = phi i32 [ %call47, %do.end52 ], [ %call60, %do.end65 ]
  tail call void @hid_sensor_remove_trigger(ptr noundef nonnull %call, ptr noundef %common_attributes) #4
  br label %cleanup

cleanup:                                          ; preds = %error_remove_trigger, %if.end54.cleanup_crit_edge, %do.end44, %do.end33, %do.end23, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %do.end ], [ %call28, %do.end33 ], [ %call39, %do.end44 ], [ %ret.0, %error_remove_trigger ], [ -12, %do.end23 ], [ -12, %entry.cleanup_crit_edge ], [ %call60, %if.end54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_accel_3d_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %usage = getelementptr inbounds %struct.hid_sensor_hub_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usage, align 4
  %call2 = tail call i32 @sensor_hub_remove_callback(ptr noundef %1, i32 noundef %7) #4
  tail call void @iio_device_unregister(ptr noundef %3) #4
  %common_attributes = getelementptr inbounds %struct.accel_3d_state, ptr %5, i32 0, i32 1
  tail call void @hid_sensor_remove_trigger(ptr noundef %3, ptr noundef %common_attributes) #4
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @accel_3d_parse_report(ptr noundef %pdev, ptr noundef %hsdev, ptr nocapture noundef writeonly %channels, i32 noundef %usage_id, ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.accel_3d_state, ptr %st, i32 0, i32 2, i32 0
  %call = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %hsdev, i8 noundef zeroext 0, i32 noundef %usage_id, i32 noundef 2098259, ptr noundef %arrayidx) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %entry.do.body_crit_edge, label %if.end

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end:                                           ; preds = %entry
  %size = getelementptr %struct.accel_3d_state, ptr %st, i32 0, i32 2, i32 0, i32 6
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %scan_type.i = getelementptr %struct.iio_chan_spec, ptr %channels, i32 0, i32 5
  %2 = ptrtoint ptr %scan_type.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 115, ptr %scan_type.i, align 4
  %size.tr.i = trunc i32 %1 to i8
  %conv.i = shl i8 %size.tr.i, 3
  %realbits.i = getelementptr %struct.iio_chan_spec, ptr %channels, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %realbits.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv.i, ptr %realbits.i, align 1
  %storagebits.i = getelementptr %struct.iio_chan_spec, ptr %channels, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %storagebits.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 32, ptr %storagebits.i, align 2
  %arrayidx.1 = getelementptr %struct.accel_3d_state, ptr %st, i32 0, i32 2, i32 1
  %call.1 = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %hsdev, i8 noundef zeroext 0, i32 noundef %usage_id, i32 noundef 2098260, ptr noundef %arrayidx.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp2.1 = icmp slt i32 %call.1, 0
  br i1 %cmp2.1, label %if.end.do.body_crit_edge, label %if.end.1

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end.1:                                         ; preds = %if.end
  %size.1 = getelementptr %struct.accel_3d_state, ptr %st, i32 0, i32 2, i32 1, i32 6
  %5 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.1, align 4
  %scan_type.i.1 = getelementptr %struct.iio_chan_spec, ptr %channels, i32 1, i32 5
  %7 = ptrtoint ptr %scan_type.i.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 115, ptr %scan_type.i.1, align 4
  %size.tr.i.1 = trunc i32 %6 to i8
  %conv.i.1 = shl i8 %size.tr.i.1, 3
  %realbits.i.1 = getelementptr %struct.iio_chan_spec, ptr %channels, i32 1, i32 5, i32 1
  %8 = ptrtoint ptr %realbits.i.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i.1, ptr %realbits.i.1, align 1
  %storagebits.i.1 = getelementptr %struct.iio_chan_spec, ptr %channels, i32 1, i32 5, i32 2
  %9 = ptrtoint ptr %storagebits.i.1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %storagebits.i.1, align 2
  %arrayidx.2 = getelementptr %struct.accel_3d_state, ptr %st, i32 0, i32 2, i32 2
  %call.2 = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %hsdev, i8 noundef zeroext 0, i32 noundef %usage_id, i32 noundef 2098261, ptr noundef %arrayidx.2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp2.2 = icmp slt i32 %call.2, 0
  br i1 %cmp2.2, label %if.end.1.do.body_crit_edge, label %if.end.2

if.end.1.do.body_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end.2:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  %size.2 = getelementptr %struct.accel_3d_state, ptr %st, i32 0, i32 2, i32 2, i32 6
  %10 = ptrtoint ptr %size.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.2, align 4
  %scan_type.i.2 = getelementptr %struct.iio_chan_spec, ptr %channels, i32 2, i32 5
  %12 = ptrtoint ptr %scan_type.i.2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 115, ptr %scan_type.i.2, align 4
  %size.tr.i.2 = trunc i32 %11 to i8
  %conv.i.2 = shl i8 %size.tr.i.2, 3
  %realbits.i.2 = getelementptr %struct.iio_chan_spec, ptr %channels, i32 2, i32 5, i32 1
  %13 = ptrtoint ptr %realbits.i.2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i.2, ptr %realbits.i.2, align 1
  %storagebits.i.2 = getelementptr %struct.iio_chan_spec, ptr %channels, i32 2, i32 5, i32 2
  %14 = ptrtoint ptr %storagebits.i.2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 32, ptr %storagebits.i.2, align 2
  br label %do.body

do.body:                                          ; preds = %if.end.2, %if.end.1.do.body_crit_edge, %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.do.body_crit_edge ], [ %call.1, %if.end.do.body_crit_edge ], [ %call.2, %if.end.1.do.body_crit_edge ], [ %call.2, %if.end.2 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @accel_3d_parse_report.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@accel_3d_parse_report, %if.then10)) #4
          to label %do.end [label %if.then10], !srcloc !81

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %index = getelementptr inbounds %struct.accel_3d_state, ptr %st, i32 0, i32 2, i32 0, i32 3
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  %report_id = getelementptr inbounds %struct.accel_3d_state, ptr %st, i32 0, i32 2, i32 0, i32 2
  %17 = ptrtoint ptr %report_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %report_id, align 4
  %index17 = getelementptr %struct.accel_3d_state, ptr %st, i32 0, i32 2, i32 1, i32 3
  %19 = ptrtoint ptr %index17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index17, align 4
  %report_id20 = getelementptr %struct.accel_3d_state, ptr %st, i32 0, i32 2, i32 1, i32 2
  %21 = ptrtoint ptr %report_id20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %report_id20, align 4
  %index23 = getelementptr %struct.accel_3d_state, ptr %st, i32 0, i32 2, i32 2, i32 3
  %23 = ptrtoint ptr %index23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index23, align 4
  %report_id26 = getelementptr %struct.accel_3d_state, ptr %st, i32 0, i32 2, i32 2, i32 2
  %25 = ptrtoint ptr %report_id26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %report_id26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @accel_3d_parse_report.__UNIQUE_ID_ddebug226, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26) #4
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %usage = getelementptr inbounds %struct.hid_sensor_hub_device, ptr %hsdev, i32 0, i32 3
  %27 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %usage, align 4
  %scale_pre_decml = getelementptr inbounds %struct.accel_3d_state, ptr %st, i32 0, i32 4
  %scale_post_decml = getelementptr inbounds %struct.accel_3d_state, ptr %st, i32 0, i32 5
  %call30 = tail call i32 @hid_sensor_format_scale(i32 noundef %28, ptr noundef %arrayidx, ptr noundef %scale_pre_decml, ptr noundef %scale_post_decml) #4
  %scale_precision = getelementptr inbounds %struct.accel_3d_state, ptr %st, i32 0, i32 6
  %29 = ptrtoint ptr %scale_precision to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call30, ptr %scale_precision, align 8
  ret i32 %call.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_setup_trigger(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @accel_3d_proc_event(ptr nocapture noundef readnone %hsdev, i32 noundef %usage_id, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %priv, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @accel_3d_proc_event.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@accel_3d_proc_event, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @accel_3d_proc_event.__UNIQUE_ID_ddebug225, ptr noundef %dev, ptr noundef nonnull @.str.26) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data_ready = getelementptr inbounds %struct.accel_3d_state, ptr %3, i32 0, i32 1, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %data_ready, i32 noundef 4) #4
  %4 = ptrtoint ptr %data_ready to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %data_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %do.end.if.end15_crit_edge, label %if.then7

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then7:                                         ; preds = %do.end
  %timestamp = getelementptr inbounds %struct.accel_3d_state, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %timestamp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool8.not = icmp eq i64 %7, 0
  br i1 %tobool8.not, label %if.then9, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i64 @iio_get_time_ns(ptr noundef %1) #4
  %8 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call10, ptr %timestamp, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then7.if.end12_crit_edge
  %scan = getelementptr inbounds %struct.accel_3d_state, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %timestamp, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hid_sensor_push_data.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@accel_3d_proc_event, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !81

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hid_sensor_push_data.__UNIQUE_ID_ddebug224, ptr noundef %dev.i, ptr noundef nonnull @.str.28) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end12
  %scan_timestamp.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %scan_timestamp.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %scan_timestamp.i.i, align 8, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i, label %do.end.i.hid_sensor_push_data.exit_crit_edge, label %if.then.i.i

do.end.i.hid_sensor_push_data.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hid_sensor_push_data.exit

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %scan_bytes.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %scan_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %scan_bytes.i.i, align 4
  %div1.i.i = lshr i32 %14, 3
  %sub.i.i = add nsw i32 %div1.i.i, -1
  %arrayidx.i.i = getelementptr i64, ptr %scan, i32 %sub.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %10, ptr %arrayidx.i.i, align 8
  br label %hid_sensor_push_data.exit

hid_sensor_push_data.exit:                        ; preds = %if.then.i.i, %do.end.i.hid_sensor_push_data.exit_crit_edge
  %call.i.i24 = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan) #4
  %16 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %timestamp, align 8
  br label %if.end15

if.end15:                                         ; preds = %hid_sensor_push_data.exit, %do.end.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @accel_3d_capture_sample(ptr nocapture noundef readnone %hsdev, i32 noundef %usage_id, i32 noundef %raw_len, ptr nocapture noundef readonly %raw_data, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  switch i32 %usage_id, label %entry.sw.epilog_crit_edge [
    i32 2098259, label %entry.sw.bb_crit_edge
    i32 2098260, label %entry.sw.bb_crit_edge8
    i32 2098261, label %entry.sw.bb_crit_edge9
    i32 2098473, label %sw.bb2
  ]

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge8, %entry.sw.bb_crit_edge9
  %sub = add nsw i32 %usage_id, -2098259
  %5 = ptrtoint ptr %raw_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %raw_data, align 4
  %scan = getelementptr inbounds %struct.accel_3d_state, ptr %3, i32 0, i32 3
  %arrayidx = getelementptr [3 x i32], ptr %scan, i32 0, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common_attributes = getelementptr inbounds %struct.accel_3d_state, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %raw_data to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %raw_data, align 8
  %call3 = tail call i64 @hid_sensor_convert_timestamp(ptr noundef %common_attributes, i64 noundef %9) #4
  %timestamp = getelementptr inbounds %struct.accel_3d_state, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call3, ptr %timestamp, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ -22, %sw.bb2 ], [ 0, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_register_callback(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_sensor_remove_trigger(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_input_get_attribute_info(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_format_scale(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @accel_3d_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %common_attributes = getelementptr inbounds %struct.accel_3d_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %common_attributes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common_attributes, align 4
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val, align 4
  %5 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %val2, align 4
  %6 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb18
    i32 3, label %sw.bb19
    i32 12, label %sw.bb20
    i32 16, label %sw.bb23
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call3 = tail call i32 @hid_sensor_power_state(ptr noundef %common_attributes, i1 noundef zeroext true) #4
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %7 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scan_index, align 4
  %report_id4 = getelementptr %struct.accel_3d_state, ptr %1, i32 0, i32 2, i32 %8, i32 2
  %9 = ptrtoint ptr %report_id4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %report_id4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp = icmp sgt i32 %10, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx9 = getelementptr [3 x i32], ptr @accel_3d_addresses, i32 0, i32 %8
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx9, align 4
  %logical_minimum = getelementptr %struct.accel_3d_state, ptr %1, i32 0, i32 2, i32 %8, i32 7
  %13 = ptrtoint ptr %logical_minimum to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %logical_minimum, align 4
  %15 = ptrtoint ptr %common_attributes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %common_attributes, align 4
  %usage = getelementptr inbounds %struct.hid_sensor_hub_device, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp12 = icmp slt i32 %14, 0
  %call13 = tail call i32 @sensor_hub_input_attr_get_raw_value(ptr noundef %16, i32 noundef %18, i32 noundef %12, i32 noundef %10, i32 noundef 0, i1 noundef zeroext %cmp12) #4
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call13, ptr %val, align 4
  %call17 = tail call i32 @hid_sensor_power_state(ptr noundef %common_attributes, i1 noundef zeroext false) #4
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %val, align 4
  %call15 = tail call i32 @hid_sensor_power_state(ptr noundef %common_attributes, i1 noundef zeroext false) #4
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %scale_pre_decml = getelementptr inbounds %struct.accel_3d_state, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %scale_pre_decml to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scale_pre_decml, align 8
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val, align 4
  %scale_post_decml = getelementptr inbounds %struct.accel_3d_state, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %scale_post_decml to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scale_post_decml, align 4
  %26 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %val2, align 4
  %scale_precision = getelementptr inbounds %struct.accel_3d_state, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %scale_precision to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %scale_precision, align 8
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %value_offset = getelementptr inbounds %struct.accel_3d_state, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %value_offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %value_offset, align 4
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %val, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call22 = tail call i32 @hid_sensor_read_samp_freq_value(ptr noundef %common_attributes, ptr noundef %val, ptr noundef %val2) #4
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call25 = tail call i32 @hid_sensor_read_raw_hyst_value(ptr noundef %common_attributes, ptr noundef %val, ptr noundef %val2) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb23, %sw.bb20, %sw.bb19, %sw.bb18, %if.else, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else ], [ %call25, %sw.bb23 ], [ %call22, %sw.bb20 ], [ 1, %sw.bb19 ], [ %28, %sw.bb18 ], [ 1, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @accel_3d_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %mask, label %entry.sw.epilog_crit_edge [
    i32 12, label %sw.bb
    i32 16, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common_attributes = getelementptr inbounds %struct.accel_3d_state, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @hid_sensor_write_samp_freq_value(ptr noundef %common_attributes, i32 noundef %val, i32 noundef %val2) #4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common_attributes3 = getelementptr inbounds %struct.accel_3d_state, ptr %1, i32 0, i32 1
  %call4 = tail call i32 @hid_sensor_write_raw_hyst_value(ptr noundef %common_attributes3, i32 noundef %val, i32 noundef %val2) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call4, %sw.bb2 ], [ %call1, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
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
declare dso_local i32 @sensor_hub_remove_callback(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !57, !58, !60, !62, !64, !65, !66, !68, !69, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_hid_sensor_accel_3d__227_458_hid_accel_3d_platform_driver_init6, !1, !"__initcall__kmod_hid_sensor_accel_3d__227_458_hid_accel_3d_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 458, i32 1}
!2 = !{ptr @__exitcall_hid_accel_3d_platform_driver_exit, !1, !"__exitcall_hid_accel_3d_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 460, i32 1}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 461, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 462, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns232, !11, !"__UNIQUE_ID_import_ns232", i1 false, i1 false}
!11 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 463, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 452, i32 11}
!14 = !{ptr @hid_accel_3d_platform_driver, !15, !"hid_accel_3d_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 449, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 351, i32 10}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 356, i32 10}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 367, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @hid_accel_3d_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @hid_accel_3d_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 374, i32 3}
!30 = !{ptr @hid_accel_3d_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @hid_accel_3d_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 381, i32 3}
!34 = !{ptr @hid_accel_3d_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @hid_accel_3d_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 394, i32 3}
!38 = !{ptr @hid_accel_3d_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @hid_accel_3d_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 400, i32 3}
!42 = !{ptr @hid_accel_3d_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @hid_accel_3d_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 410, i32 3}
!46 = !{ptr @hid_accel_3d_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @hid_accel_3d_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @accel_3d_channels, !49, !"accel_3d_channels", i1 false, i1 false}
!49 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 51, i32 35}
!50 = !{ptr @gravity_channels, !51, !"gravity_channels", i1 false, i1 false}
!51 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 87, i32 35}
!52 = !{ptr @accel_3d_sensitivity_addresses, !53, !"accel_3d_sensitivity_addresses", i1 false, i1 false}
!53 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 46, i32 18}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 313, i32 2}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @accel_3d_parse_report.__UNIQUE_ID_ddebug226, !55, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!58 = !{ptr @accel_3d_info, !59, !"accel_3d_info", i1 false, i1 false}
!59 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 221, i32 30}
!60 = !{ptr @accel_3d_addresses, !61, !"accel_3d_addresses", i1 false, i1 false}
!61 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 40, i32 18}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 242, i32 2}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @accel_3d_proc_event.__UNIQUE_ID_ddebug225, !63, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 230, i32 2}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @hid_sensor_push_data.__UNIQUE_ID_ddebug224, !67, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!70 = !{ptr @hid_accel_3d_ids, !71, !"hid_accel_3d_ids", i1 false, i1 false}
!71 = !{!"../drivers/iio/accel/hid-sensor-accel-3d.c", i32 437, i32 40}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 2148288492, i64 2148288497, i64 2148288510, i64 2148288554, i64 2148288588, i64 2148288609}
!82 = !{i8 0, i8 2}
