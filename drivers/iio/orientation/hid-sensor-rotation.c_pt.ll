; ModuleID = '/llk/IR_all_yes/drivers/iio/orientation/hid-sensor-rotation.c_pt.bc'
source_filename = "../drivers/iio/orientation/hid-sensor-rotation.c"
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
%struct.dev_rot_state = type { %struct.hid_sensor_hub_callbacks, %struct.hid_sensor_common, %struct.hid_sensor_hub_attribute_info, [8 x i8], %struct.anon.70, i32, i32, i32, i32, i64, [8 x i8] }
%struct.hid_sensor_hub_callbacks = type { ptr, ptr, ptr, ptr, ptr }
%struct.hid_sensor_common = type { ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, ptr, i32, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.work_struct }
%struct.hid_sensor_hub_attribute_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.70 = type { [4 x i32], i64, [8 x i8] }
%struct.hid_sensor_hub_device = type { ptr, i32, i32, i32, i32, i32, ptr, %struct.sensor_hub_pending }
%struct.sensor_hub_pending = type { i8, %struct.completion, i32, i32, i32, ptr }

@__initcall__kmod_hid_sensor_rotation__228_369_hid_dev_rot_platform_driver_init6 = internal global ptr @hid_dev_rot_platform_driver_init, section ".initcall6.init", align 4
@hid_dev_rot_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hid_dev_rot_probe, ptr @hid_dev_rot_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hid_sensor_pm_ops, ptr null, ptr null }, ptr @hid_dev_rot_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hid_dev_rot_platform_driver_exit = internal global ptr @hid_dev_rot_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description229 = internal constant [59 x i8] c"hid_sensor_rotation.description=HID Sensor Device Rotation\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [85 x i8] c"hid_sensor_rotation.author=Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [69 x i8] c"hid_sensor_rotation.file=drivers/iio/orientation/hid-sensor-rotation\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [32 x i8] c"hid_sensor_rotation.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns233 = internal constant [38 x i8] c"hid_sensor_rotation.import_ns=IIO_HID\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hid_sensor_rotation\00", [44 x i8] zeroinitializer }, align 32
@hid_sensor_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@hid_dev_rot_ids = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"HID-SENSOR-20008a\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"HID-SENSOR-20008e\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"HID-SENSOR-2000c1\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dev_rotation\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"relative_orientation\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"geomagnetic_orientation\00", [40 x i8] zeroinitializer }, align 32
@rotation_sensitivity_addresses = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2098288, i32 2098307], [24 x i8] zeroinitializer }, align 32
@hid_dev_rot_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 270, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to setup common attributes\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hid_dev_rot_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/iio/orientation/hid-sensor-rotation.c\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hid_dev_rot_probe._entry_ptr = internal global ptr @hid_dev_rot_probe._entry, section ".printk_index", align 4
@dev_rot_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 11, i32 0, i32 20, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 69644, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.68 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@hid_dev_rot_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 278, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to duplicate channels\0A\00", [34 x i8] zeroinitializer }, align 32
@hid_dev_rot_probe._entry_ptr.11 = internal global ptr @hid_dev_rot_probe._entry.9, section ".printk_index", align 4
@hid_dev_rot_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 286, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to setup attributes\0A\00", [36 x i8] zeroinitializer }, align 32
@hid_dev_rot_probe._entry_ptr.14 = internal global ptr @hid_dev_rot_probe._entry.12, section ".printk_index", align 4
@dev_rot_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr null, ptr @dev_rot_read_raw, ptr null, ptr @dev_rot_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@hid_dev_rot_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 300, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trigger setup failed\0A\00", [42 x i8] zeroinitializer }, align 32
@hid_dev_rot_probe._entry_ptr.17 = internal global ptr @hid_dev_rot_probe._entry.15, section ".printk_index", align 4
@hid_dev_rot_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 306, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device register failed\0A\00", [40 x i8] zeroinitializer }, align 32
@hid_dev_rot_probe._entry_ptr.20 = internal global ptr @hid_dev_rot_probe._entry.18, section ".printk_index", align 4
@hid_dev_rot_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 316, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"callback reg failed\0A\00", [43 x i8] zeroinitializer }, align 32
@hid_dev_rot_probe._entry_ptr.23 = internal global ptr @hid_dev_rot_probe._entry.21, section ".printk_index", align 4
@dev_rot_parse_report.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.6, ptr @.str.25, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dev_rot_parse_report\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dev_rot %x:%x\0A\00", [17 x i8] zeroinitializer }, align 32
@dev_rot_parse_report.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.6, ptr @.str.26, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dev_rot: attrib size %d\0A\00", [39 x i8] zeroinitializer }, align 32
@dev_rot_proc_event.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.6, ptr @.str.28, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dev_rot_proc_event\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dev_rot_proc_event\0A\00", [44 x i8] zeroinitializer }, align 32
@dev_rot_capture_sample.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.6, ptr @.str.30, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dev_rot_capture_sample\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Recd Quat len:%zu::%zu\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2097290, i64 2097294, i64 2097345]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 2098307, i64 2098473]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 12, i64 16]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 16]
@___asan_gen_.34 = private unnamed_addr constant [28 x i8] c"hid_dev_rot_platform_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 360, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 363, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"hid_dev_rot_ids\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 343, i32 40 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 252, i32 10 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 255, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 258, i32 10 }
@___asan_gen_.52 = private unnamed_addr constant [31 x i8] c"rotation_sensitivity_addresses\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 32, i32 18 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 270, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"dev_rot_channels\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 38, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 278, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 286, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [13 x i8] c"dev_rot_info\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 139, i32 30 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 300, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 306, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 316, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 216, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 219, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 152, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [49 x i8] c"../drivers/iio/orientation/hid-sensor-rotation.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 186, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_import_ns233, ptr @__UNIQUE_ID_license232, ptr @__exitcall_hid_dev_rot_platform_driver_exit, ptr @__initcall__kmod_hid_sensor_rotation__228_369_hid_dev_rot_platform_driver_init6, ptr @hid_dev_rot_platform_driver_exit, ptr @hid_dev_rot_probe._entry, ptr @hid_dev_rot_probe._entry.12, ptr @hid_dev_rot_probe._entry.15, ptr @hid_dev_rot_probe._entry.18, ptr @hid_dev_rot_probe._entry.21, ptr @hid_dev_rot_probe._entry.9, ptr @hid_dev_rot_probe._entry_ptr, ptr @hid_dev_rot_probe._entry_ptr.11, ptr @hid_dev_rot_probe._entry_ptr.14, ptr @hid_dev_rot_probe._entry_ptr.17, ptr @hid_dev_rot_probe._entry_ptr.20, ptr @hid_dev_rot_probe._entry_ptr.23, ptr @hid_dev_rot_platform_driver, ptr @.str, ptr @hid_dev_rot_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rotation_sensitivity_addresses, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @dev_rot_channels, ptr @.str.10, ptr @.str.13, ptr @dev_rot_info, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_dev_rot_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_dev_rot_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotation_sensitivity_addresses to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_dev_rot_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_rot_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_dev_rot_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_dev_rot_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_rot_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_dev_rot_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_dev_rot_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_dev_rot_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_dev_rot_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hid_dev_rot_platform_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hid_dev_rot_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @hid_dev_rot_platform_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_dev_rot_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 432) #4
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
  %common_attributes = getelementptr inbounds %struct.dev_rot_state, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %common_attributes to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %common_attributes, align 4
  %pdev5 = getelementptr inbounds %struct.dev_rot_state, ptr %4, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %pdev5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %pdev5, align 4
  %usage = getelementptr inbounds %struct.hid_sensor_hub_device, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usage, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end.cleanup_crit_edge [
    i32 2097290, label %if.end.sw.epilog_crit_edge
    i32 2097294, label %sw.bb6
    i32 2097345, label %sw.bb7
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb6, %if.end.sw.epilog_crit_edge
  %name.0 = phi ptr [ @.str.3, %sw.bb7 ], [ @.str.2, %sw.bb6 ], [ @.str.1, %if.end.sw.epilog_crit_edge ]
  %call10 = tail call i32 @hid_sensor_parse_common_attributes(ptr noundef %1, i32 noundef %8, ptr noundef %common_attributes, ptr noundef nonnull @rotation_sensitivity_addresses, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end13, label %do.end

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end13:                                         ; preds = %sw.epilog
  %call15 = tail call ptr @devm_kmemdup(ptr noundef %dev, ptr noundef nonnull @dev_rot_channels, i32 noundef 176, i32 noundef 3264) #4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call15, ptr %channels, align 8
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %11 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %usage, align 4
  %call26 = tail call fastcc i32 @dev_rot_parse_report(ptr noundef %pdev, ptr noundef %1, ptr noundef nonnull %call15, i32 noundef %12, ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %13 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dev_rot_info, ptr %info, align 8
  %name34 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %15 = ptrtoint ptr %name34 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %name.0, ptr %name34, align 8
  %16 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %call, align 8
  %data_ready = getelementptr inbounds %struct.dev_rot_state, ptr %4, i32 0, i32 1, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data_ready, i32 noundef 4) #4
  %17 = ptrtoint ptr %data_ready to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %data_ready, align 4
  %call37 = tail call i32 @hid_sensor_setup_trigger(ptr noundef nonnull %call, ptr noundef nonnull %name.0, ptr noundef %common_attributes) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end44, label %do.end42

do.end42:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #7
  br label %cleanup

if.end44:                                         ; preds = %if.end33
  %call45 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end52, label %do.end50

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #7
  br label %error_remove_trigger

if.end52:                                         ; preds = %if.end44
  %send_event = getelementptr inbounds %struct.hid_sensor_hub_callbacks, ptr %4, i32 0, i32 4
  %18 = ptrtoint ptr %send_event to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @dev_rot_proc_event, ptr %send_event, align 16
  %capture_sample = getelementptr inbounds %struct.hid_sensor_hub_callbacks, ptr %4, i32 0, i32 3
  %19 = ptrtoint ptr %capture_sample to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @dev_rot_capture_sample, ptr %capture_sample, align 4
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pdev, ptr %4, align 16
  %21 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %usage, align 4
  %call58 = tail call i32 @sensor_hub_register_callback(ptr noundef %1, i32 noundef %22, ptr noundef %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end52.cleanup_crit_edge, label %do.end63

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end63:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #7
  tail call void @iio_device_unregister(ptr noundef nonnull %call) #4
  br label %error_remove_trigger

error_remove_trigger:                             ; preds = %do.end63, %do.end50
  %ret.0 = phi i32 [ %call45, %do.end50 ], [ %call58, %do.end63 ]
  tail call void @hid_sensor_remove_trigger(ptr noundef nonnull %call, ptr noundef %common_attributes) #4
  br label %cleanup

cleanup:                                          ; preds = %error_remove_trigger, %if.end52.cleanup_crit_edge, %do.end42, %do.end31, %do.end21, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end ], [ %call26, %do.end31 ], [ %call37, %do.end42 ], [ %ret.0, %error_remove_trigger ], [ -12, %do.end21 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_dev_rot_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
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
  %common_attributes = getelementptr inbounds %struct.dev_rot_state, ptr %5, i32 0, i32 1
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
define internal fastcc i32 @dev_rot_parse_report(ptr noundef %pdev, ptr noundef %hsdev, ptr nocapture noundef writeonly %channels, i32 noundef %usage_id, ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %quaternion = getelementptr inbounds %struct.dev_rot_state, ptr %st, i32 0, i32 2
  %call = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %hsdev, i8 noundef zeroext 0, i32 noundef %usage_id, i32 noundef 2098307, ptr noundef %quaternion) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.dev_rot_state, ptr %st, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %div = sdiv i32 %1, 4
  %scan_type.i = getelementptr inbounds %struct.iio_chan_spec, ptr %channels, i32 0, i32 5
  %2 = ptrtoint ptr %scan_type.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 115, ptr %scan_type.i, align 4
  %size.tr.i = trunc i32 %div to i8
  %conv.i = shl i8 %size.tr.i, 3
  %realbits.i = getelementptr inbounds %struct.iio_chan_spec, ptr %channels, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %realbits.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv.i, ptr %realbits.i, align 1
  %storagebits.i = getelementptr inbounds %struct.iio_chan_spec, ptr %channels, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %storagebits.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 32, ptr %storagebits.i, align 2
  %repeat.i = getelementptr inbounds %struct.iio_chan_spec, ptr %channels, i32 0, i32 5, i32 4
  %5 = ptrtoint ptr %repeat.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %repeat.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dev_rot_parse_report.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dev_rot_parse_report, %if.then6)) #4
          to label %do.body10 [label %if.then6], !srcloc !82

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %index = getelementptr inbounds %struct.dev_rot_state, ptr %st, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %report_id = getelementptr inbounds %struct.dev_rot_state, ptr %st, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %report_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %report_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dev_rot_parse_report.__UNIQUE_ID_ddebug226, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %7, i32 noundef %9) #4
  br label %do.body10

do.body10:                                        ; preds = %if.then6, %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dev_rot_parse_report.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dev_rot_parse_report, %if.then22)) #4
          to label %do.end28 [label %if.then22], !srcloc !82

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  %dev23 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dev_rot_parse_report.__UNIQUE_ID_ddebug227, ptr noundef %dev23, ptr noundef nonnull @.str.26, i32 noundef %11) #4
  br label %do.end28

do.end28:                                         ; preds = %if.then22, %do.body10
  %usage = getelementptr inbounds %struct.hid_sensor_hub_device, ptr %hsdev, i32 0, i32 3
  %12 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usage, align 4
  %scale_pre_decml = getelementptr inbounds %struct.dev_rot_state, ptr %st, i32 0, i32 5
  %scale_post_decml = getelementptr inbounds %struct.dev_rot_state, ptr %st, i32 0, i32 6
  %call30 = tail call i32 @hid_sensor_format_scale(i32 noundef %13, ptr noundef %quaternion, ptr noundef %scale_pre_decml, ptr noundef %scale_post_decml) #4
  %scale_precision = getelementptr inbounds %struct.dev_rot_state, ptr %st, i32 0, i32 7
  %14 = ptrtoint ptr %scale_precision to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call30, ptr %scale_precision, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_setup_trigger(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_rot_proc_event(ptr nocapture noundef readnone %hsdev, i32 noundef %usage_id, ptr nocapture noundef readonly %priv) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dev_rot_proc_event.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dev_rot_proc_event, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dev_rot_proc_event.__UNIQUE_ID_ddebug224, ptr noundef %dev, ptr noundef nonnull @.str.28) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data_ready = getelementptr inbounds %struct.dev_rot_state, ptr %3, i32 0, i32 1, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %data_ready, i32 noundef 4) #4
  %4 = ptrtoint ptr %data_ready to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %data_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %do.end.if.end16_crit_edge, label %if.then7

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then7:                                         ; preds = %do.end
  %timestamp = getelementptr inbounds %struct.dev_rot_state, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %timestamp, align 16
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
  store i64 %call10, ptr %timestamp, align 16
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then7.if.end12_crit_edge
  %scan = getelementptr inbounds %struct.dev_rot_state, ptr %3, i32 0, i32 4
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %scan_timestamp.i, align 8, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end12.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end12.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %timestamp, align 16
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

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end12.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan) #4
  %16 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %timestamp, align 16
  br label %if.end16

if.end16:                                         ; preds = %iio_push_to_buffers_with_timestamp.exit, %do.end.if.end16_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_rot_capture_sample(ptr nocapture noundef readnone %hsdev, i32 noundef %usage_id, i32 noundef %raw_len, ptr nocapture noundef readonly %raw_data, ptr nocapture noundef readonly %priv) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %usage_id, label %entry.if.end33_crit_edge [
    i32 2098307, label %if.then
    i32 2098473, label %if.then30
  ]

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then:                                          ; preds = %entry
  %div48.mask = and i32 %raw_len, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div48.mask)
  %cmp2 = icmp eq i32 %div48.mask, 8
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %raw_data to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %raw_data, align 2
  %conv = sext i16 %6 to i32
  %scan = getelementptr inbounds %struct.dev_rot_state, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %scan to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %scan, align 16
  %arrayidx5 = getelementptr i16, ptr %raw_data, i32 1
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx5, align 2
  %conv6 = sext i16 %9 to i32
  %arrayidx9 = getelementptr %struct.dev_rot_state, ptr %3, i32 0, i32 4, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv6, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr i16, ptr %raw_data, i32 2
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx10, align 2
  %conv11 = sext i16 %12 to i32
  %arrayidx14 = getelementptr %struct.dev_rot_state, ptr %3, i32 0, i32 4, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv11, ptr %arrayidx14, align 8
  %arrayidx15 = getelementptr i16, ptr %raw_data, i32 3
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx15, align 2
  %conv16 = sext i16 %15 to i32
  %arrayidx19 = getelementptr %struct.dev_rot_state, ptr %3, i32 0, i32 4, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv16, ptr %arrayidx19, align 4
  br label %do.body

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %scan20 = getelementptr inbounds %struct.dev_rot_state, ptr %3, i32 0, i32 4
  %17 = call ptr @memcpy(ptr %scan20, ptr %raw_data, i32 16)
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dev_rot_capture_sample.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dev_rot_capture_sample, %if.then25)) #4
          to label %if.end33 [label %if.then25], !srcloc !82

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dev_rot_capture_sample.__UNIQUE_ID_ddebug225, ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %raw_len, i32 noundef 16) #4
  br label %if.end33

if.then30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common_attributes = getelementptr inbounds %struct.dev_rot_state, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %raw_data to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %raw_data, align 8
  %call31 = tail call i64 @hid_sensor_convert_timestamp(ptr noundef %common_attributes, i64 noundef %19) #4
  %timestamp = getelementptr inbounds %struct.dev_rot_state, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call31, ptr %timestamp, align 16
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.then25, %do.body, %entry.if.end33_crit_edge
  ret i32 0
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
define internal i32 @dev_rot_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %size, ptr noundef %vals, ptr nocapture noundef writeonly %val_len, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %vals, align 4
  %arrayidx1 = getelementptr i32, ptr %vals, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx1, align 4
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb5
    i32 3, label %sw.bb8
    i32 12, label %sw.bb9
    i32 16, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp = icmp sgt i32 %size, 3
  br i1 %cmp, label %for.cond.preheader, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %scan = getelementptr inbounds %struct.dev_rot_state, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %scan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scan, align 4
  %7 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %vals, align 4
  %arrayidx3.1 = getelementptr %struct.dev_rot_state, ptr %1, i32 0, i32 4, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.1, align 4
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx1, align 4
  %arrayidx3.2 = getelementptr %struct.dev_rot_state, ptr %1, i32 0, i32 4, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3.2, align 4
  %arrayidx4.2 = getelementptr i32, ptr %vals, i32 2
  %13 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx4.2, align 4
  %arrayidx3.3 = getelementptr %struct.dev_rot_state, ptr %1, i32 0, i32 4, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx3.3, align 4
  %arrayidx4.3 = getelementptr i32, ptr %vals, i32 3
  %16 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx4.3, align 4
  %17 = ptrtoint ptr %val_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %val_len, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %scale_pre_decml = getelementptr inbounds %struct.dev_rot_state, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %scale_pre_decml to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scale_pre_decml, align 16
  %20 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %vals, align 4
  %scale_post_decml = getelementptr inbounds %struct.dev_rot_state, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %scale_post_decml to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scale_post_decml, align 4
  %23 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx1, align 4
  %scale_precision = getelementptr inbounds %struct.dev_rot_state, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %scale_precision to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scale_precision, align 8
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %value_offset = getelementptr inbounds %struct.dev_rot_state, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %value_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value_offset, align 4
  %28 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %vals, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common_attributes = getelementptr inbounds %struct.dev_rot_state, ptr %1, i32 0, i32 1
  %call12 = tail call i32 @hid_sensor_read_samp_freq_value(ptr noundef %common_attributes, ptr noundef %vals, ptr noundef %arrayidx1) #4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common_attributes14 = getelementptr inbounds %struct.dev_rot_state, ptr %1, i32 0, i32 1
  %call17 = tail call i32 @hid_sensor_read_raw_hyst_value(ptr noundef %common_attributes14, ptr noundef %vals, ptr noundef %arrayidx1) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb13, %sw.bb9, %sw.bb8, %sw.bb5, %for.cond.preheader, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb8 ], [ %25, %sw.bb5 ], [ %call17, %sw.bb13 ], [ %call12, %sw.bb9 ], [ 5, %for.cond.preheader ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_rot_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %mask, label %entry.sw.epilog_crit_edge [
    i32 12, label %sw.bb
    i32 16, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common_attributes = getelementptr inbounds %struct.dev_rot_state, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @hid_sensor_write_samp_freq_value(ptr noundef %common_attributes, i32 noundef %val, i32 noundef %val2) #4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common_attributes3 = getelementptr inbounds %struct.dev_rot_state, ptr %1, i32 0, i32 1
  %call4 = tail call i32 @hid_sensor_write_raw_hyst_value(ptr noundef %common_attributes3, i32 noundef %val, i32 noundef %val2) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call4, %sw.bb2 ], [ %call1, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

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

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !57, !58, !60, !61, !63, !65, !66, !67, !69, !70, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_hid_sensor_rotation__228_369_hid_dev_rot_platform_driver_init6, !1, !"__initcall__kmod_hid_sensor_rotation__228_369_hid_dev_rot_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 369, i32 1}
!2 = !{ptr @__exitcall_hid_dev_rot_platform_driver_exit, !1, !"__exitcall_hid_dev_rot_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description229, !4, !"__UNIQUE_ID_description229", i1 false, i1 false}
!4 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 371, i32 1}
!5 = !{ptr @__UNIQUE_ID_author230, !6, !"__UNIQUE_ID_author230", i1 false, i1 false}
!6 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 372, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 373, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns233, !11, !"__UNIQUE_ID_import_ns233", i1 false, i1 false}
!11 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 374, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 363, i32 11}
!14 = !{ptr @hid_dev_rot_platform_driver, !15, !"hid_dev_rot_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 360, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 252, i32 10}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 255, i32 10}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 258, i32 10}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 270, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @hid_dev_rot_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @hid_dev_rot_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 278, i32 3}
!32 = !{ptr @hid_dev_rot_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @hid_dev_rot_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 286, i32 3}
!36 = !{ptr @hid_dev_rot_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @hid_dev_rot_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 300, i32 3}
!40 = !{ptr @hid_dev_rot_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @hid_dev_rot_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 306, i32 3}
!44 = !{ptr @hid_dev_rot_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @hid_dev_rot_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 316, i32 3}
!48 = !{ptr @hid_dev_rot_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @hid_dev_rot_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @rotation_sensitivity_addresses, !51, !"rotation_sensitivity_addresses", i1 false, i1 false}
!51 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 32, i32 18}
!52 = !{ptr @dev_rot_channels, !53, !"dev_rot_channels", i1 false, i1 false}
!53 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 38, i32 35}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 216, i32 2}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @dev_rot_parse_report.__UNIQUE_ID_ddebug226, !55, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 219, i32 2}
!60 = !{ptr @dev_rot_parse_report.__UNIQUE_ID_ddebug227, !59, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!61 = !{ptr @dev_rot_info, !62, !"dev_rot_info", i1 false, i1 false}
!62 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 139, i32 30}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 152, i32 2}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @dev_rot_proc_event.__UNIQUE_ID_ddebug224, !64, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 186, i32 3}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @dev_rot_capture_sample.__UNIQUE_ID_ddebug225, !68, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!71 = !{ptr @hid_dev_rot_ids, !72, !"hid_dev_rot_ids", i1 false, i1 false}
!72 = !{!"../drivers/iio/orientation/hid-sensor-rotation.c", i32 343, i32 40}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2148285525, i64 2148285530, i64 2148285543, i64 2148285587, i64 2148285621, i64 2148285642}
!83 = !{i8 0, i8 2}
