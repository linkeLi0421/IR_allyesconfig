; ModuleID = '/llk/IR_all_yes/drivers/iio/magnetometer/hid-sensor-magn-3d.c_pt.bc'
source_filename = "../drivers/iio/magnetometer/hid-sensor-magn-3d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.68, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.68 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.magn_3d_state = type { %struct.hid_sensor_hub_callbacks, %struct.hid_sensor_common, %struct.hid_sensor_common, [8 x %struct.hid_sensor_hub_attribute_info], ptr, [8 x ptr], %struct.common_attributes, %struct.common_attributes, i64 }
%struct.hid_sensor_hub_callbacks = type { ptr, ptr, ptr, ptr, ptr }
%struct.hid_sensor_common = type { ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, ptr, i32, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.work_struct }
%struct.hid_sensor_hub_attribute_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.common_attributes = type { i32, i32, i32, i32 }

@__initcall__kmod_hid_sensor_magn_3d__229_581_hid_magn_3d_platform_driver_init6 = internal global ptr @hid_magn_3d_platform_driver_init, section ".initcall6.init", align 4
@hid_magn_3d_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hid_magn_3d_probe, ptr @hid_magn_3d_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hid_sensor_pm_ops, ptr null, ptr null }, ptr @hid_magn_3d_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hid_magn_3d_platform_driver_exit = internal global ptr @hid_magn_3d_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description230 = internal constant [58 x i8] c"hid_sensor_magn_3d.description=HID Sensor Magnetometer 3D\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [78 x i8] c"hid_sensor_magn_3d.author=Srinivas Pandruvada <srinivas.pandruvada@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [68 x i8] c"hid_sensor_magn_3d.file=drivers/iio/magnetometer/hid-sensor-magn-3d\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [31 x i8] c"hid_sensor_magn_3d.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns234 = internal constant [37 x i8] c"hid_sensor_magn_3d.import_ns=IIO_HID\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hid_sensor_magn_3d\00", [45 x i8] zeroinitializer }, align 32
@hid_sensor_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@hid_magn_3d_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"HID-SENSOR-200083\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"magn_3d\00", [24 x i8] zeroinitializer }, align 32
@magn_3d_sensitivity_addresses = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2098288, i32 2098308], [24 x i8] zeroinitializer }, align 32
@hid_magn_3d_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 494, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to setup common attributes\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hid_magn_3d_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/iio/magnetometer/hid-sensor-magn-3d.c\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hid_magn_3d_probe._entry_ptr = internal global ptr @hid_magn_3d_probe._entry, section ".printk_index", align 4
@hid_magn_3d_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 505, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to parse report\0A\00", [40 x i8] zeroinitializer }, align 32
@hid_magn_3d_probe._entry_ptr.9 = internal global ptr @hid_magn_3d_probe._entry.7, section ".printk_index", align 4
@magn_3d_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @magn_3d_read_raw, ptr null, ptr null, ptr @magn_3d_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@hid_magn_3d_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 520, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trigger setup failed\0A\00", [42 x i8] zeroinitializer }, align 32
@hid_magn_3d_probe._entry_ptr.12 = internal global ptr @hid_magn_3d_probe._entry.10, section ".printk_index", align 4
@hid_magn_3d_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 526, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device register failed\0A\00", [40 x i8] zeroinitializer }, align 32
@hid_magn_3d_probe._entry_ptr.15 = internal global ptr @hid_magn_3d_probe._entry.13, section ".printk_index", align 4
@hid_magn_3d_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 536, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"callback reg failed\0A\00", [43 x i8] zeroinitializer }, align 32
@hid_magn_3d_probe._entry_ptr.18 = internal global ptr @hid_magn_3d_probe._entry.16, section ".printk_index", align 4
@magn_3d_addresses = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2098309, i32 2098310, i32 2098311, i32 2098293, i32 2098294, i32 2098295, i32 2098296, i32 2098473], [32 x i8] zeroinitializer }, align 32
@magn_3d_parse_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 377, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"failed to find any supported usage attributes in report\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"magn_3d_parse_report\00", [43 x i8] zeroinitializer }, align 32
@magn_3d_parse_report._entry_ptr = internal global ptr @magn_3d_parse_report._entry, section ".printk_index", align 4
@magn_3d_parse_report.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"magn_3d Found %d usage attributes\0A\00", [61 x i8] zeroinitializer }, align 32
@magn_3d_parse_report.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.22, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"magn_3d X: %x:%x Y: %x:%x Z: %x:%x\0A\00", [60 x i8] zeroinitializer }, align 32
@magn_3d_parse_report._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.4, i32 395, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to allocate space for iio channels\0A\00", [53 x i8] zeroinitializer }, align 32
@magn_3d_parse_report._entry_ptr.25 = internal global ptr @magn_3d_parse_report._entry.23, section ".printk_index", align 4
@magn_3d_parse_report._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.20, ptr @.str.4, i32 405, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to allocate space for iio values array\0A\00", [49 x i8] zeroinitializer }, align 32
@magn_3d_parse_report._entry_ptr.28 = internal global ptr @magn_3d_parse_report._entry.26, section ".printk_index", align 4
@magn_3d_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 69644, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 69644, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 69644, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 11, i32 0, i32 25, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 69644, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 11, i32 0, i32 26, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 69644, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 11, i32 0, i32 23, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 69644, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 11, i32 0, i32 24, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 69644, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 7, %struct.anon.68 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [160 x i8] zeroinitializer }, align 32
@magn_3d_parse_report._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.20, ptr @.str.4, i32 431, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to find any magnetic channels setup\0A\00", [52 x i8] zeroinitializer }, align 32
@magn_3d_parse_report._entry_ptr.31 = internal global ptr @magn_3d_parse_report._entry.29, section ".printk_index", align 4
@magn_3d_parse_report.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.32, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"magn_3d Setup %d IIO channels\0A\00", [33 x i8] zeroinitializer }, align 32
@magn_3d_parse_report.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.33, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Sensitivity index:report %d:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@magn_3d_proc_event.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.4, ptr @.str.35, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"magn_3d_proc_event\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"magn_3d_proc_event\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 2098293, i64 2098294, i64 2098295, i64 2098296, i64 2098309, i64 2098310, i64 2098311, i64 2098473]
@__sancov_gen_cov_switch_values.36 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 12, i64 16]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 11]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 11]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 11]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 16]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 11]
@___asan_gen_.42 = private unnamed_addr constant [28 x i8] c"hid_magn_3d_platform_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 572, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 575, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"hid_magn_3d_ids\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 563, i32 40 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 470, i32 22 }
@___asan_gen_.54 = private unnamed_addr constant [30 x i8] c"magn_3d_sensitivity_addresses\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 61, i32 18 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 494, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 505, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"magn_3d_info\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 276, i32 30 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 520, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 526, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 536, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"magn_3d_addresses\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 50, i32 18 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 376, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 381, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 383, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 394, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 404, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"magn_3d_channels\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 67, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 430, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 437, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 458, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [49 x i8] c"../drivers/iio/magnetometer/hid-sensor-magn-3d.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 289, i32 2 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_import_ns234, ptr @__UNIQUE_ID_license233, ptr @__exitcall_hid_magn_3d_platform_driver_exit, ptr @__initcall__kmod_hid_sensor_magn_3d__229_581_hid_magn_3d_platform_driver_init6, ptr @hid_magn_3d_platform_driver_exit, ptr @hid_magn_3d_probe._entry, ptr @hid_magn_3d_probe._entry.10, ptr @hid_magn_3d_probe._entry.13, ptr @hid_magn_3d_probe._entry.16, ptr @hid_magn_3d_probe._entry.7, ptr @hid_magn_3d_probe._entry_ptr, ptr @hid_magn_3d_probe._entry_ptr.12, ptr @hid_magn_3d_probe._entry_ptr.15, ptr @hid_magn_3d_probe._entry_ptr.18, ptr @hid_magn_3d_probe._entry_ptr.9, ptr @magn_3d_parse_report._entry, ptr @magn_3d_parse_report._entry.23, ptr @magn_3d_parse_report._entry.26, ptr @magn_3d_parse_report._entry.29, ptr @magn_3d_parse_report._entry_ptr, ptr @magn_3d_parse_report._entry_ptr.25, ptr @magn_3d_parse_report._entry_ptr.28, ptr @magn_3d_parse_report._entry_ptr.31, ptr @hid_magn_3d_platform_driver, ptr @.str, ptr @hid_magn_3d_ids, ptr @.str.1, ptr @magn_3d_sensitivity_addresses, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @magn_3d_info, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @magn_3d_addresses, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @magn_3d_channels, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_magn_3d_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_magn_3d_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magn_3d_sensitivity_addresses to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_magn_3d_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_magn_3d_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magn_3d_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_magn_3d_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_magn_3d_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_magn_3d_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magn_3d_addresses to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magn_3d_parse_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magn_3d_parse_report._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magn_3d_parse_report._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magn_3d_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magn_3d_parse_report._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_magn_3d_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hid_magn_3d_platform_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hid_magn_3d_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @hid_magn_3d_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_magn_3d_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %channels = alloca ptr, align 4
  %chan_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channels) #5
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %channels, align 4, !annotation !96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan_count) #5
  %3 = ptrtoint ptr %chan_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %chan_count, align 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 992) #5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %magn_flux_attributes = getelementptr inbounds %struct.magn_3d_state, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %magn_flux_attributes to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %magn_flux_attributes, align 4
  %pdev5 = getelementptr inbounds %struct.magn_3d_state, ptr %6, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %pdev5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pdev, ptr %pdev5, align 4
  %call7 = tail call i32 @hid_sensor_parse_common_attributes(ptr noundef %1, i32 noundef 2097283, ptr noundef %magn_flux_attributes, ptr noundef nonnull @magn_3d_sensitivity_addresses, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %rot_attributes = getelementptr inbounds %struct.magn_3d_state, ptr %6, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %rot_attributes, ptr %magn_flux_attributes, i32 304)
  %index = getelementptr inbounds %struct.magn_3d_state, ptr %6, i32 0, i32 2, i32 14, i32 3
  %10 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %index, align 4
  %call13 = call fastcc i32 @magn_3d_parse_report(ptr noundef %pdev, ptr noundef %1, ptr noundef nonnull %channels, ptr noundef nonnull %chan_count, ptr noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %11 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channels, align 4
  %channels21 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %13 = ptrtoint ptr %channels21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %channels21, align 8
  %14 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chan_count, align 4
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %16 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %17 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @magn_3d_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %18 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.1, ptr %name, align 8
  %19 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %call, align 8
  %data_ready = getelementptr inbounds %struct.magn_3d_state, ptr %6, i32 0, i32 1, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data_ready, i32 noundef 4) #5
  %20 = ptrtoint ptr %data_ready to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %data_ready, align 4
  %call24 = tail call i32 @hid_sensor_setup_trigger(ptr noundef nonnull %call, ptr noundef nonnull @.str.1, ptr noundef %magn_flux_attributes) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  %call32 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end39, label %do.end37

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %error_remove_trigger

if.end39:                                         ; preds = %if.end31
  %send_event = getelementptr inbounds %struct.hid_sensor_hub_callbacks, ptr %6, i32 0, i32 4
  %21 = ptrtoint ptr %send_event to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @magn_3d_proc_event, ptr %send_event, align 8
  %capture_sample = getelementptr inbounds %struct.hid_sensor_hub_callbacks, ptr %6, i32 0, i32 3
  %22 = ptrtoint ptr %capture_sample to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @magn_3d_capture_sample, ptr %capture_sample, align 4
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %pdev, ptr %6, align 8
  %call44 = tail call i32 @sensor_hub_register_callback(ptr noundef %1, i32 noundef 2097283, ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.end49, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end49:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  tail call void @iio_device_unregister(ptr noundef nonnull %call) #5
  br label %error_remove_trigger

error_remove_trigger:                             ; preds = %do.end49, %do.end37
  %ret.0 = phi i32 [ %call32, %do.end37 ], [ %call44, %do.end49 ]
  tail call void @hid_sensor_remove_trigger(ptr noundef nonnull %call, ptr noundef %magn_flux_attributes) #5
  br label %cleanup

cleanup:                                          ; preds = %error_remove_trigger, %if.end39.cleanup_crit_edge, %do.end29, %do.end18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ %call13, %do.end18 ], [ %call24, %do.end29 ], [ %ret.0, %error_remove_trigger ], [ -12, %entry.cleanup_crit_edge ], [ %call44, %if.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan_count) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channels) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_magn_3d_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call2 = tail call i32 @sensor_hub_remove_callback(ptr noundef %1, i32 noundef 2097283) #5
  tail call void @iio_device_unregister(ptr noundef %3) #5
  %magn_flux_attributes = getelementptr inbounds %struct.magn_3d_state, ptr %5, i32 0, i32 1
  tail call void @hid_sensor_remove_trigger(ptr noundef %3, ptr noundef %magn_flux_attributes) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_parse_common_attributes(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @magn_3d_parse_report(ptr noundef %pdev, ptr noundef %hsdev, ptr nocapture noundef writeonly %channels, ptr nocapture noundef %chan_count, ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx1 = getelementptr %struct.magn_3d_state, ptr %st, i32 0, i32 3, i32 0
  %call = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %hsdev, i8 noundef zeroext 0, i32 noundef 2097283, i32 noundef 2098309, ptr noundef %arrayidx1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %inc = zext i1 %tobool.not to i32
  %arrayidx1.1 = getelementptr %struct.magn_3d_state, ptr %st, i32 0, i32 3, i32 1
  %call.1 = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %hsdev, i8 noundef zeroext 0, i32 noundef 2097283, i32 noundef 2098310, ptr noundef %arrayidx1.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  %inc.1 = zext i1 %tobool.not.1 to i32
  %spec.select.1 = add nuw nsw i32 %inc, %inc.1
  %arrayidx1.2 = getelementptr %struct.magn_3d_state, ptr %st, i32 0, i32 3, i32 2
  %call.2 = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %hsdev, i8 noundef zeroext 0, i32 noundef 2097283, i32 noundef 2098311, ptr noundef %arrayidx1.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  %inc.2 = zext i1 %tobool.not.2 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %inc.2
  %arrayidx1.3 = getelementptr %struct.magn_3d_state, ptr %st, i32 0, i32 3, i32 3
  %call.3 = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %hsdev, i8 noundef zeroext 0, i32 noundef 2097283, i32 noundef 2098293, ptr noundef %arrayidx1.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  %inc.3 = zext i1 %tobool.not.3 to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %inc.3
  %arrayidx1.4 = getelementptr %struct.magn_3d_state, ptr %st, i32 0, i32 3, i32 4
  %call.4 = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %hsdev, i8 noundef zeroext 0, i32 noundef 2097283, i32 noundef 2098294, ptr noundef %arrayidx1.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  %inc.4 = zext i1 %tobool.not.4 to i32
  %spec.select.4 = add nuw nsw i32 %spec.select.3, %inc.4
  %arrayidx1.5 = getelementptr %struct.magn_3d_state, ptr %st, i32 0, i32 3, i32 5
  %call.5 = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %hsdev, i8 noundef zeroext 0, i32 noundef 2097283, i32 noundef 2098295, ptr noundef %arrayidx1.5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  %inc.5 = zext i1 %tobool.not.5 to i32
  %spec.select.5 = add nuw nsw i32 %spec.select.4, %inc.5
  %arrayidx1.6 = getelementptr %struct.magn_3d_state, ptr %st, i32 0, i32 3, i32 6
  %call.6 = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %hsdev, i8 noundef zeroext 0, i32 noundef 2097283, i32 noundef 2098296, ptr noundef %arrayidx1.6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  %inc.6 = zext i1 %tobool.not.6 to i32
  %spec.select.6 = add nuw nsw i32 %spec.select.5, %inc.6
  %arrayidx1.7 = getelementptr %struct.magn_3d_state, ptr %st, i32 0, i32 3, i32 7
  %call.7 = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %hsdev, i8 noundef zeroext 0, i32 noundef 2097283, i32 noundef 2098473, ptr noundef %arrayidx1.7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  %inc.7 = zext i1 %tobool.not.7 to i32
  %spec.select.7 = add nuw nsw i32 %spec.select.6, %inc.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.7)
  %cmp3 = icmp eq i32 %spec.select.7, 0
  br i1 %cmp3, label %do.end, label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #8
  br label %cleanup

do.body6:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @magn_3d_parse_report.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@magn_3d_parse_report, %if.then11)) #5
          to label %do.body16 [label %if.then11], !srcloc !97

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  %dev12 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @magn_3d_parse_report.__UNIQUE_ID_ddebug225, ptr noundef %dev12, ptr noundef nonnull @.str.21, i32 noundef %spec.select.7) #5
  br label %do.body16

do.body16:                                        ; preds = %if.then11, %do.body6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @magn_3d_parse_report.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@magn_3d_parse_report, %if.then28)) #5
          to label %do.end48 [label %if.then28], !srcloc !97

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  %dev29 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %index = getelementptr inbounds %struct.magn_3d_state, ptr %st, i32 0, i32 3, i32 0, i32 3
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %report_id = getelementptr inbounds %struct.magn_3d_state, ptr %st, i32 0, i32 3, i32 0, i32 2
  %2 = ptrtoint ptr %report_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %report_id, align 4
  %index36 = getelementptr %struct.magn_3d_state, ptr %st, i32 0, i32 3, i32 1, i32 3
  %4 = ptrtoint ptr %index36 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index36, align 4
  %report_id39 = getelementptr %struct.magn_3d_state, ptr %st, i32 0, i32 3, i32 1, i32 2
  %6 = ptrtoint ptr %report_id39 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %report_id39, align 4
  %index42 = getelementptr %struct.magn_3d_state, ptr %st, i32 0, i32 3, i32 2, i32 3
  %8 = ptrtoint ptr %index42 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index42, align 4
  %report_id45 = getelementptr %struct.magn_3d_state, ptr %st, i32 0, i32 3, i32 2, i32 2
  %10 = ptrtoint ptr %report_id45 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %report_id45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @magn_3d_parse_report.__UNIQUE_ID_ddebug226, ptr noundef %dev29, ptr noundef nonnull @.str.22, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #5
  br label %do.end48

do.end48:                                         ; preds = %if.then28, %do.body16
  %dev49 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %12 = mul nuw nsw i32 %spec.select.7, 88
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev49, i32 noundef %12, i32 noundef 3520) #5
  %tobool51.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool51.not, label %do.end55, label %devm_kcalloc.exit13

do.end55:                                         ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.24) #8
  br label %cleanup

devm_kcalloc.exit13:                              ; preds = %do.end48
  %add = add nuw nsw i32 %spec.select.7, 1
  %rem24 = shl nuw nsw i32 %add, 1
  %add6027 = and i32 %rem24, 2
  %div252628 = add nuw nsw i32 %add6027, %add
  %mul = shl nuw nsw i32 %div252628, 2
  %13 = and i32 %mul, -8
  %call5.i.i10 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev49, i32 noundef %13, i32 noundef 3520) #5
  %iio_vals = getelementptr inbounds %struct.magn_3d_state, ptr %st, i32 0, i32 4
  %14 = ptrtoint ptr %iio_vals to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i10, ptr %iio_vals, align 4
  %tobool63.not = icmp eq ptr %call5.i.i10, null
  br i1 %tobool63.not, label %do.end67, label %if.end69

do.end67:                                         ; preds = %devm_kcalloc.exit13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.27) #8
  br label %cleanup

if.end69:                                         ; preds = %devm_kcalloc.exit13
  %15 = ptrtoint ptr %chan_count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %chan_count, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc94.land.rhs_crit_edge, %if.end69
  %i.131 = phi i32 [ 0, %if.end69 ], [ %inc95, %for.inc94.land.rhs_crit_edge ]
  %16 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chan_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %spec.select.7)
  %cmp72 = icmp slt i32 %17, %spec.select.7
  br i1 %cmp72, label %for.body73, label %land.rhs.for.end96_crit_edge

land.rhs.for.end96_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end96

for.body73:                                       ; preds = %land.rhs
  %index76 = getelementptr %struct.magn_3d_state, ptr %st, i32 0, i32 3, i32 %i.131, i32 3
  %18 = ptrtoint ptr %index76 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp77 = icmp sgt i32 %19, -1
  br i1 %cmp77, label %if.then78, label %for.body73.for.inc94_crit_edge

for.body73.for.inc94_crit_edge:                   ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc94

if.then78:                                        ; preds = %for.body73
  %arrayidx79 = getelementptr %struct.iio_chan_spec, ptr %call5.i.i, i32 %17
  %arrayidx80 = getelementptr [8 x %struct.iio_chan_spec], ptr @magn_3d_channels, i32 0, i32 %i.131
  %20 = call ptr @memcpy(ptr %arrayidx79, ptr %arrayidx80, i32 88)
  %21 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chan_count, align 4
  %scan_index = getelementptr %struct.iio_chan_spec, ptr %call5.i.i, i32 %22, i32 4
  %23 = ptrtoint ptr %scan_index to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %scan_index, align 4
  %address83 = getelementptr %struct.iio_chan_spec, ptr %call5.i.i, i32 %22, i32 3
  %24 = ptrtoint ptr %address83 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %i.131, ptr %address83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.131)
  %cmp84.not = icmp eq i32 %i.131, 7
  br i1 %cmp84.not, label %if.then78.if.end91_crit_edge, label %if.then85

if.then78.if.end91_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

if.then85:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %iio_vals to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iio_vals, align 4
  %27 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chan_count, align 4
  %arrayidx87 = getelementptr i32, ptr %26, i32 %28
  %arrayidx88 = getelementptr %struct.magn_3d_state, ptr %st, i32 0, i32 5, i32 %i.131
  %29 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx87, ptr %arrayidx88, align 4
  %30 = load i32, ptr %chan_count, align 4
  %size = getelementptr %struct.magn_3d_state, ptr %st, i32 0, i32 3, i32 %i.131, i32 6
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size, align 4
  %scan_type.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i, i32 %30, i32 5
  %33 = ptrtoint ptr %scan_type.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 115, ptr %scan_type.i, align 4
  %size.tr.i = trunc i32 %32 to i8
  %conv.i = shl i8 %size.tr.i, 3
  %realbits.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i, i32 %30, i32 5, i32 1
  %34 = ptrtoint ptr %realbits.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i, ptr %realbits.i, align 1
  %storagebits.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i, i32 %30, i32 5, i32 2
  %35 = ptrtoint ptr %storagebits.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 32, ptr %storagebits.i, align 2
  br label %if.end91

if.end91:                                         ; preds = %if.then85, %if.then78.if.end91_crit_edge
  %36 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chan_count, align 4
  %inc92 = add i32 %37, 1
  store i32 %inc92, ptr %chan_count, align 4
  br label %for.inc94

for.inc94:                                        ; preds = %if.end91, %for.body73.for.inc94_crit_edge
  %inc95 = add nuw nsw i32 %i.131, 1
  %exitcond.not = icmp eq i32 %inc95, 8
  br i1 %exitcond.not, label %for.end96thread-pre-split, label %for.inc94.land.rhs_crit_edge

for.inc94.land.rhs_crit_edge:                     ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

for.end96thread-pre-split:                        ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load i32, ptr %chan_count, align 4
  br label %for.end96

for.end96:                                        ; preds = %for.end96thread-pre-split, %land.rhs.for.end96_crit_edge
  %39 = phi i32 [ %.pr, %for.end96thread-pre-split ], [ %17, %land.rhs.for.end96_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp97 = icmp slt i32 %39, 1
  br i1 %cmp97, label %do.end101, label %if.end103

do.end101:                                        ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.30) #8
  br label %cleanup

if.end103:                                        ; preds = %for.end96
  %40 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call5.i.i, ptr %channels, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @magn_3d_parse_report.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@magn_3d_parse_report, %if.then116)) #5
          to label %do.end120 [label %if.then116], !srcloc !97

if.then116:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %chan_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @magn_3d_parse_report.__UNIQUE_ID_ddebug227, ptr noundef %dev49, ptr noundef nonnull @.str.32, i32 noundef %42) #5
  br label %do.end120

do.end120:                                        ; preds = %if.then116, %if.end103
  %magn_flux_attr = getelementptr inbounds %struct.magn_3d_state, ptr %st, i32 0, i32 6
  %scale_post_decml = getelementptr inbounds %struct.magn_3d_state, ptr %st, i32 0, i32 6, i32 1
  %call124 = tail call i32 @hid_sensor_format_scale(i32 noundef 2097283, ptr noundef %arrayidx1, ptr noundef %magn_flux_attr, ptr noundef %scale_post_decml) #5
  %scale_precision = getelementptr inbounds %struct.magn_3d_state, ptr %st, i32 0, i32 6, i32 2
  %43 = ptrtoint ptr %scale_precision to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call124, ptr %scale_precision, align 8
  %rot_attr = getelementptr inbounds %struct.magn_3d_state, ptr %st, i32 0, i32 7
  %scale_post_decml130 = getelementptr inbounds %struct.magn_3d_state, ptr %st, i32 0, i32 7, i32 1
  %call131 = tail call i32 @hid_sensor_format_scale(i32 noundef 2098293, ptr noundef %arrayidx1.3, ptr noundef %rot_attr, ptr noundef %scale_post_decml130) #5
  %scale_precision133 = getelementptr inbounds %struct.magn_3d_state, ptr %st, i32 0, i32 7, i32 2
  %44 = ptrtoint ptr %scale_precision133 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call131, ptr %scale_precision133, align 8
  %index134 = getelementptr inbounds %struct.magn_3d_state, ptr %st, i32 0, i32 2, i32 14, i32 3
  %45 = ptrtoint ptr %index134 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp135 = icmp slt i32 %46, 0
  br i1 %cmp135, label %if.then136, label %do.end120.cleanup_crit_edge

do.end120.cleanup_crit_edge:                      ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then136:                                       ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #7
  %sensitivity = getelementptr inbounds %struct.magn_3d_state, ptr %st, i32 0, i32 2, i32 14
  %call139 = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %hsdev, i8 noundef zeroext 2, i32 noundef 2097283, i32 noundef 2102389, ptr noundef %sensitivity) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @magn_3d_parse_report.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@magn_3d_parse_report, %if.then152)) #5
          to label %cleanup [label %if.then152], !srcloc !97

if.then152:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %index134 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %index134, align 4
  %report_id159 = getelementptr inbounds %struct.magn_3d_state, ptr %st, i32 0, i32 2, i32 14, i32 2
  %49 = ptrtoint ptr %report_id159 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %report_id159, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @magn_3d_parse_report.__UNIQUE_ID_ddebug228, ptr noundef %dev49, ptr noundef nonnull @.str.33, i32 noundef %48, i32 noundef %50) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then152, %if.then136, %do.end120.cleanup_crit_edge, %do.end101, %do.end67, %do.end55, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end101 ], [ -12, %do.end67 ], [ -12, %do.end55 ], [ 0, %if.then152 ], [ 0, %do.end120.cleanup_crit_edge ], [ 0, %if.then136 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_setup_trigger(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @magn_3d_proc_event(ptr nocapture noundef readnone %hsdev, i32 noundef %usage_id, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %priv, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @magn_3d_proc_event.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@magn_3d_proc_event, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !97

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @magn_3d_proc_event.__UNIQUE_ID_ddebug224, ptr noundef %dev, ptr noundef nonnull @.str.35) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data_ready = getelementptr inbounds %struct.magn_3d_state, ptr %3, i32 0, i32 1, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %data_ready, i32 noundef 4) #5
  %4 = ptrtoint ptr %data_ready to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %data_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %do.end.if.end16_crit_edge, label %if.then7

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then7:                                         ; preds = %do.end
  %timestamp = getelementptr inbounds %struct.magn_3d_state, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %timestamp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool8.not = icmp eq i64 %7, 0
  br i1 %tobool8.not, label %if.then9, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call i64 @iio_get_time_ns(ptr noundef %1) #5
  %8 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call10, ptr %timestamp, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then7.if.end12_crit_edge
  %iio_vals = getelementptr inbounds %struct.magn_3d_state, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %iio_vals to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iio_vals, align 4
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %scan_timestamp.i, align 8, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.end12.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end12.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %16, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %10, i32 %sub.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %14, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end12.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %10) #5
  %18 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %timestamp, align 8
  br label %if.end16

if.end16:                                         ; preds = %iio_push_to_buffers_with_timestamp.exit, %do.end.if.end16_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @magn_3d_capture_sample(ptr nocapture noundef readnone %hsdev, i32 noundef %usage_id, i32 noundef %raw_len, ptr nocapture noundef readonly %raw_data, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
    i32 2098309, label %entry.sw.epilog_crit_edge
    i32 2098310, label %entry.sw.epilog_crit_edge18
    i32 2098311, label %entry.sw.epilog_crit_edge19
    i32 2098293, label %entry.sw.bb2_crit_edge
    i32 2098294, label %entry.sw.bb2_crit_edge20
    i32 2098295, label %entry.sw.bb2_crit_edge21
    i32 2098296, label %entry.sw.bb2_crit_edge22
    i32 2098473, label %sw.bb5
  ]

entry.sw.bb2_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb2_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb2_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.epilog_crit_edge19:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge18:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge20, %entry.sw.bb2_crit_edge21, %entry.sw.bb2_crit_edge22
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %magn_flux_attributes = getelementptr inbounds %struct.magn_3d_state, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %raw_data to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %raw_data, align 8
  %call6 = tail call i64 @hid_sensor_convert_timestamp(ptr noundef %magn_flux_attributes, i64 noundef %6) #5
  %timestamp = getelementptr inbounds %struct.magn_3d_state, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %call6, ptr %timestamp, align 8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge18, %entry.sw.epilog_crit_edge19
  %.sink = phi i32 [ -2098290, %sw.bb2 ], [ -2098309, %entry.sw.epilog_crit_edge ], [ -2098309, %entry.sw.epilog_crit_edge18 ], [ -2098309, %entry.sw.epilog_crit_edge19 ]
  %add4 = add nsw i32 %.sink, %usage_id
  %arrayidx = getelementptr %struct.magn_3d_state, ptr %3, i32 0, i32 5, i32 %add4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %9, null
  br i1 %cmp.not, label %sw.epilog.cleanup_crit_edge, label %if.then

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %raw_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %raw_data, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog.cleanup_crit_edge, %sw.bb5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb5 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_register_callback(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_sensor_remove_trigger(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_input_get_attribute_info(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_format_scale(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @magn_3d_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val, align 4
  %3 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %val2, align 4
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb16
    i32 3, label %sw.bb26
    i32 12, label %sw.bb35
    i32 16, label %sw.bb38
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %magn_flux_attributes = getelementptr inbounds %struct.magn_3d_state, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @hid_sensor_power_state(ptr noundef %magn_flux_attributes, i1 noundef zeroext true) #5
  %address2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %5 = ptrtoint ptr %address2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %address2, align 4
  %report_id3 = getelementptr %struct.magn_3d_state, ptr %1, i32 0, i32 3, i32 %6, i32 2
  %7 = ptrtoint ptr %report_id3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %report_id3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp = icmp sgt i32 %8, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8 = getelementptr [8 x i32], ptr @magn_3d_addresses, i32 0, i32 %6
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx8, align 4
  %logical_minimum = getelementptr %struct.magn_3d_state, ptr %1, i32 0, i32 3, i32 %6, i32 7
  %11 = ptrtoint ptr %logical_minimum to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %logical_minimum, align 4
  %13 = ptrtoint ptr %magn_flux_attributes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %magn_flux_attributes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp10 = icmp slt i32 %12, 0
  %call11 = tail call i32 @sensor_hub_input_attr_get_raw_value(ptr noundef %14, i32 noundef 2097283, i32 noundef %10, i32 noundef %8, i32 noundef 0, i1 noundef zeroext %cmp10) #5
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call11, ptr %val, align 4
  %call15 = tail call i32 @hid_sensor_power_state(ptr noundef %magn_flux_attributes, i1 noundef zeroext false) #5
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %val, align 4
  %call13 = tail call i32 @hid_sensor_power_state(ptr noundef %magn_flux_attributes, i1 noundef zeroext false) #5
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %17 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chan, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %18, label %sw.bb16.cleanup_crit_edge [
    i32 5, label %sw.bb17
    i32 11, label %sw.bb20
  ]

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb17:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #7
  %magn_flux_attr = getelementptr inbounds %struct.magn_3d_state, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %magn_flux_attr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %magn_flux_attr, align 8
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %val, align 4
  %scale_post_decml = getelementptr inbounds %struct.magn_3d_state, ptr %1, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %scale_post_decml to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %scale_post_decml, align 4
  %25 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %val2, align 4
  %scale_precision = getelementptr inbounds %struct.magn_3d_state, ptr %1, i32 0, i32 6, i32 2
  %26 = ptrtoint ptr %scale_precision to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scale_precision, align 8
  br label %cleanup

sw.bb20:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #7
  %rot_attr = getelementptr inbounds %struct.magn_3d_state, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %rot_attr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rot_attr, align 8
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %val, align 4
  %scale_post_decml23 = getelementptr inbounds %struct.magn_3d_state, ptr %1, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %scale_post_decml23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %scale_post_decml23, align 4
  %33 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %val2, align 4
  %scale_precision25 = getelementptr inbounds %struct.magn_3d_state, ptr %1, i32 0, i32 7, i32 2
  %34 = ptrtoint ptr %scale_precision25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scale_precision25, align 8
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  %36 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chan, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %37, label %sw.bb26.cleanup_crit_edge [
    i32 5, label %sw.bb28
    i32 11, label %sw.bb30
  ]

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb28:                                          ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #7
  %value_offset = getelementptr inbounds %struct.magn_3d_state, ptr %1, i32 0, i32 6, i32 3
  %39 = ptrtoint ptr %value_offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %value_offset, align 4
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %val, align 4
  br label %cleanup

sw.bb30:                                          ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #7
  %value_offset32 = getelementptr inbounds %struct.magn_3d_state, ptr %1, i32 0, i32 7, i32 3
  %42 = ptrtoint ptr %value_offset32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %value_offset32, align 4
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %val, align 4
  br label %cleanup

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %magn_flux_attributes36 = getelementptr inbounds %struct.magn_3d_state, ptr %1, i32 0, i32 1
  %call37 = tail call i32 @hid_sensor_read_samp_freq_value(ptr noundef %magn_flux_attributes36, ptr noundef %val, ptr noundef %val2) #5
  br label %cleanup

sw.bb38:                                          ; preds = %entry
  %45 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chan, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %46, label %sw.bb38.cleanup_crit_edge [
    i32 5, label %sw.bb40
    i32 11, label %sw.bb43
  ]

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb40:                                          ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #7
  %magn_flux_attributes41 = getelementptr inbounds %struct.magn_3d_state, ptr %1, i32 0, i32 1
  %call42 = tail call i32 @hid_sensor_read_raw_hyst_value(ptr noundef %magn_flux_attributes41, ptr noundef %val, ptr noundef %val2) #5
  br label %cleanup

sw.bb43:                                          ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #7
  %rot_attributes = getelementptr inbounds %struct.magn_3d_state, ptr %1, i32 0, i32 2
  %call44 = tail call i32 @hid_sensor_read_raw_hyst_value(ptr noundef %rot_attributes, ptr noundef %val, ptr noundef %val2) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb43, %sw.bb40, %sw.bb38.cleanup_crit_edge, %sw.bb35, %sw.bb30, %sw.bb28, %sw.bb26.cleanup_crit_edge, %sw.bb20, %sw.bb17, %sw.bb16.cleanup_crit_edge, %if.else, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else ], [ %call44, %sw.bb43 ], [ %call42, %sw.bb40 ], [ %call37, %sw.bb35 ], [ 1, %sw.bb30 ], [ 1, %sw.bb28 ], [ %35, %sw.bb20 ], [ %27, %sw.bb17 ], [ 1, %if.then ], [ -22, %sw.bb16.cleanup_crit_edge ], [ -22, %sw.bb26.cleanup_crit_edge ], [ -22, %sw.bb38.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @magn_3d_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %mask, label %entry.sw.epilog9_crit_edge [
    i32 12, label %sw.bb
    i32 16, label %sw.bb2
  ]

entry.sw.epilog9_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog9

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %magn_flux_attributes = getelementptr inbounds %struct.magn_3d_state, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @hid_sensor_write_samp_freq_value(ptr noundef %magn_flux_attributes, i32 noundef %val, i32 noundef %val2) #5
  br label %sw.epilog9

sw.bb2:                                           ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %4, label %sw.bb2.sw.epilog9_crit_edge [
    i32 5, label %sw.bb3
    i32 11, label %sw.bb6
  ]

sw.bb2.sw.epilog9_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog9

sw.bb3:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %magn_flux_attributes4 = getelementptr inbounds %struct.magn_3d_state, ptr %1, i32 0, i32 1
  %call5 = tail call i32 @hid_sensor_write_raw_hyst_value(ptr noundef %magn_flux_attributes4, i32 noundef %val, i32 noundef %val2) #5
  br label %sw.epilog9

sw.bb6:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %rot_attributes = getelementptr inbounds %struct.magn_3d_state, ptr %1, i32 0, i32 2
  %call7 = tail call i32 @hid_sensor_write_raw_hyst_value(ptr noundef %rot_attributes, i32 noundef %val, i32 noundef %val2) #5
  br label %sw.epilog9

sw.epilog9:                                       ; preds = %sw.bb6, %sw.bb3, %sw.bb2.sw.epilog9_crit_edge, %sw.bb, %entry.sw.epilog9_crit_edge
  %ret.0 = phi i32 [ %call7, %sw.bb6 ], [ %call5, %sw.bb3 ], [ %call1, %sw.bb ], [ -22, %sw.bb2.sw.epilog9_crit_edge ], [ -22, %entry.sw.epilog9_crit_edge ]
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
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !51, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !74, !75, !77, !79, !81, !83, !84, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_hid_sensor_magn_3d__229_581_hid_magn_3d_platform_driver_init6, !1, !"__initcall__kmod_hid_sensor_magn_3d__229_581_hid_magn_3d_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 581, i32 1}
!2 = !{ptr @__exitcall_hid_magn_3d_platform_driver_exit, !1, !"__exitcall_hid_magn_3d_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description230, !4, !"__UNIQUE_ID_description230", i1 false, i1 false}
!4 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 583, i32 1}
!5 = !{ptr @__UNIQUE_ID_author231, !6, !"__UNIQUE_ID_author231", i1 false, i1 false}
!6 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 584, i32 1}
!7 = !{ptr @__UNIQUE_ID_file232, !8, !"__UNIQUE_ID_file232", i1 false, i1 false}
!8 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 585, i32 1}
!9 = !{ptr @__UNIQUE_ID_license233, !8, !"__UNIQUE_ID_license233", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns234, !11, !"__UNIQUE_ID_import_ns234", i1 false, i1 false}
!11 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 586, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 575, i32 11}
!14 = !{ptr @hid_magn_3d_platform_driver, !15, !"hid_magn_3d_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 572, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 470, i32 22}
!18 = distinct !{null, !19, !"name", i1 false, i1 false}
!19 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 470, i32 15}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 494, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @hid_magn_3d_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @hid_magn_3d_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 505, i32 3}
!30 = !{ptr @hid_magn_3d_probe._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @hid_magn_3d_probe._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 520, i32 3}
!34 = !{ptr @hid_magn_3d_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @hid_magn_3d_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 526, i32 3}
!38 = !{ptr @hid_magn_3d_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @hid_magn_3d_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 536, i32 3}
!42 = !{ptr @hid_magn_3d_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @hid_magn_3d_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @magn_3d_sensitivity_addresses, !45, !"magn_3d_sensitivity_addresses", i1 false, i1 false}
!45 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 61, i32 18}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 376, i32 3}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @magn_3d_parse_report._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @magn_3d_parse_report._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 381, i32 2}
!53 = !{ptr @magn_3d_parse_report.__UNIQUE_ID_ddebug225, !52, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 383, i32 2}
!56 = !{ptr @magn_3d_parse_report.__UNIQUE_ID_ddebug226, !55, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 394, i32 3}
!59 = !{ptr @magn_3d_parse_report._entry.23, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @magn_3d_parse_report._entry_ptr.25, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 404, i32 3}
!63 = !{ptr @magn_3d_parse_report._entry.26, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @magn_3d_parse_report._entry_ptr.28, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 430, i32 3}
!67 = !{ptr @magn_3d_parse_report._entry.29, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @magn_3d_parse_report._entry_ptr.31, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 437, i32 2}
!71 = !{ptr @magn_3d_parse_report.__UNIQUE_ID_ddebug227, !70, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 458, i32 3}
!74 = !{ptr @magn_3d_parse_report.__UNIQUE_ID_ddebug228, !73, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!75 = !{ptr @magn_3d_addresses, !76, !"magn_3d_addresses", i1 false, i1 false}
!76 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 50, i32 18}
!77 = !{ptr @magn_3d_channels, !78, !"magn_3d_channels", i1 false, i1 false}
!78 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 67, i32 35}
!79 = !{ptr @magn_3d_info, !80, !"magn_3d_info", i1 false, i1 false}
!80 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 276, i32 30}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 289, i32 2}
!83 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @magn_3d_proc_event.__UNIQUE_ID_ddebug224, !82, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!85 = !{ptr @hid_magn_3d_ids, !86, !"hid_magn_3d_ids", i1 false, i1 false}
!86 = !{!"../drivers/iio/magnetometer/hid-sensor-magn-3d.c", i32 563, i32 40}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"auto-init"}
!97 = !{i64 2148291934, i64 2148291939, i64 2148291952, i64 2148291996, i64 2148292030, i64 2148292051}
!98 = !{i8 0, i8 2}
