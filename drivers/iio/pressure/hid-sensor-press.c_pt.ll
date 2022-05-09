; ModuleID = '/llk/IR_all_yes/drivers/iio/pressure/hid-sensor-press.c_pt.bc'
source_filename = "../drivers/iio/pressure/hid-sensor-press.c"
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
%struct.press_state = type { %struct.hid_sensor_hub_callbacks, %struct.hid_sensor_common, %struct.hid_sensor_hub_attribute_info, %struct.anon.70, i32, i32, i32, i32, i64 }
%struct.hid_sensor_hub_callbacks = type { ptr, ptr, ptr, ptr, ptr }
%struct.hid_sensor_common = type { ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, ptr, i32, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.work_struct }
%struct.hid_sensor_hub_attribute_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.70 = type { i32, i64 }

@__initcall__kmod_hid_sensor_press__226_357_hid_press_platform_driver_init6 = internal global ptr @hid_press_platform_driver_init, section ".initcall6.init", align 4
@hid_press_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hid_press_probe, ptr @hid_press_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hid_sensor_pm_ops, ptr null, ptr null }, ptr @hid_press_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hid_press_platform_driver_exit = internal global ptr @hid_press_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description227 = internal constant [49 x i8] c"hid_sensor_press.description=HID Sensor Pressure\00", section ".modinfo", align 1
@__UNIQUE_ID_author228 = internal constant [64 x i8] c"hid_sensor_press.author=Archana Patni <archana.patni@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [60 x i8] c"hid_sensor_press.file=drivers/iio/pressure/hid-sensor-press\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [29 x i8] c"hid_sensor_press.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns231 = internal constant [35 x i8] c"hid_sensor_press.import_ns=IIO_HID\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hid_sensor_press\00", [47 x i8] zeroinitializer }, align 32
@hid_sensor_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@hid_press_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"HID-SENSOR-200031\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"press\00", [26 x i8] zeroinitializer }, align 32
@press_sensitivity_addresses = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2098224, i32 2098225], [24 x i8] zeroinitializer }, align 32
@hid_press_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 266, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to setup common attributes\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hid_press_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/iio/pressure/hid-sensor-press.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hid_press_probe._entry_ptr = internal global ptr @hid_press_probe._entry, section ".printk_index", align 4
@press_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 17, i32 0, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 69644, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.68 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@hid_press_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 273, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to duplicate channels\0A\00", [34 x i8] zeroinitializer }, align 32
@hid_press_probe._entry_ptr.9 = internal global ptr @hid_press_probe._entry.7, section ".printk_index", align 4
@hid_press_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 281, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to setup attributes\0A\00", [36 x i8] zeroinitializer }, align 32
@hid_press_probe._entry_ptr.12 = internal global ptr @hid_press_probe._entry.10, section ".printk_index", align 4
@press_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @press_read_raw, ptr null, ptr null, ptr @press_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@hid_press_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 296, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trigger setup failed\0A\00", [42 x i8] zeroinitializer }, align 32
@hid_press_probe._entry_ptr.15 = internal global ptr @hid_press_probe._entry.13, section ".printk_index", align 4
@hid_press_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 302, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device register failed\0A\00", [40 x i8] zeroinitializer }, align 32
@hid_press_probe._entry_ptr.18 = internal global ptr @hid_press_probe._entry.16, section ".printk_index", align 4
@hid_press_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 312, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"callback reg failed\0A\00", [43 x i8] zeroinitializer }, align 32
@hid_press_probe._entry_ptr.21 = internal global ptr @hid_press_probe._entry.19, section ".printk_index", align 4
@press_parse_report.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"press_parse_report\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"press %x:%x\0A\00", [19 x i8] zeroinitializer }, align 32
@press_proc_event.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"press_proc_event\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"press_proc_event\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2098225, i64 2098473]
@__sancov_gen_cov_switch_values.26 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 12, i64 16]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 16]
@___asan_gen_.28 = private unnamed_addr constant [26 x i8] c"hid_press_platform_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 348, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 351, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"hid_press_ids\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 339, i32 40 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 245, i32 28 }
@___asan_gen_.40 = private unnamed_addr constant [28 x i8] c"press_sensitivity_addresses\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 36, i32 18 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 266, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"press_channels\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 42, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 273, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 281, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [11 x i8] c"press_info\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 161, i32 30 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 296, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 302, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 312, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 230, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [43 x i8] c"../drivers/iio/pressure/hid-sensor-press.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 174, i32 2 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description227, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_import_ns231, ptr @__UNIQUE_ID_license230, ptr @__exitcall_hid_press_platform_driver_exit, ptr @__initcall__kmod_hid_sensor_press__226_357_hid_press_platform_driver_init6, ptr @hid_press_platform_driver_exit, ptr @hid_press_probe._entry, ptr @hid_press_probe._entry.10, ptr @hid_press_probe._entry.13, ptr @hid_press_probe._entry.16, ptr @hid_press_probe._entry.19, ptr @hid_press_probe._entry.7, ptr @hid_press_probe._entry_ptr, ptr @hid_press_probe._entry_ptr.12, ptr @hid_press_probe._entry_ptr.15, ptr @hid_press_probe._entry_ptr.18, ptr @hid_press_probe._entry_ptr.21, ptr @hid_press_probe._entry_ptr.9, ptr @hid_press_platform_driver, ptr @.str, ptr @hid_press_ids, ptr @.str.1, ptr @press_sensitivity_addresses, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @press_channels, ptr @.str.8, ptr @.str.11, ptr @press_info, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_press_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_press_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @press_sensitivity_addresses to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_press_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @press_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_press_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_press_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @press_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_press_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_press_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_press_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_press_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hid_press_platform_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hid_press_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @hid_press_platform_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_press_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 400) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

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
  %common_attributes = getelementptr inbounds %struct.press_state, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %common_attributes to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %common_attributes, align 4
  %pdev5 = getelementptr inbounds %struct.press_state, ptr %4, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %pdev5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %pdev5, align 4
  %call7 = tail call i32 @hid_sensor_parse_common_attributes(ptr noundef %1, i32 noundef 2097201, ptr noundef %common_attributes, ptr noundef nonnull @press_sensitivity_addresses, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call13 = tail call ptr @devm_kmemdup(ptr noundef %dev, ptr noundef nonnull @press_channels, i32 noundef 176, i32 noundef 3264) #4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %7 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call13, ptr %channels, align 8
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %press_attr.i = getelementptr inbounds %struct.press_state, ptr %4, i32 0, i32 2
  %call.i = tail call i32 @sensor_hub_input_get_attribute_info(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 2097201, i32 noundef 2098225, ptr noundef %press_attr.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end21.do.end28_crit_edge, label %if.end.i

if.end21.do.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end28

if.end.i:                                         ; preds = %if.end21
  %size.i = getelementptr inbounds %struct.press_state, ptr %4, i32 0, i32 2, i32 6
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  %scan_type.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %call13, i32 0, i32 5
  %10 = ptrtoint ptr %scan_type.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 115, ptr %scan_type.i.i, align 4
  %size.tr.i.i = trunc i32 %9 to i8
  %conv.i.i = shl i8 %size.tr.i.i, 3
  %realbits.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %call13, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %realbits.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i.i, ptr %realbits.i.i, align 1
  %storagebits.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %call13, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %storagebits.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 32, ptr %storagebits.i.i, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @press_parse_report.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hid_press_probe, %if.then5.i)) #4
          to label %press_parse_report.exit [label %if.then5.i], !srcloc !73

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %index.i = getelementptr inbounds %struct.press_state, ptr %4, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i, align 4
  %report_id.i = getelementptr inbounds %struct.press_state, ptr %4, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %report_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %report_id.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @press_parse_report.__UNIQUE_ID_ddebug225, ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %14, i32 noundef %16) #4
  br label %press_parse_report.exit

press_parse_report.exit:                          ; preds = %if.then5.i, %if.end.i
  %scale_pre_decml.i = getelementptr inbounds %struct.press_state, ptr %4, i32 0, i32 4
  %scale_post_decml.i = getelementptr inbounds %struct.press_state, ptr %4, i32 0, i32 5
  %call10.i = tail call i32 @hid_sensor_format_scale(i32 noundef 2097201, ptr noundef %press_attr.i, ptr noundef %scale_pre_decml.i, ptr noundef %scale_post_decml.i) #4
  %scale_precision.i = getelementptr inbounds %struct.press_state, ptr %4, i32 0, i32 6
  %17 = ptrtoint ptr %scale_precision.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call10.i, ptr %scale_precision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %if.end30, label %press_parse_report.exit.do.end28_crit_edge

press_parse_report.exit.do.end28_crit_edge:       ; preds = %press_parse_report.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end28

do.end28:                                         ; preds = %press_parse_report.exit.do.end28_crit_edge, %if.end21.do.end28_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.end30:                                         ; preds = %press_parse_report.exit
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %18 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %19 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @press_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %20 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.1, ptr %name, align 8
  %21 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %call, align 8
  %data_ready = getelementptr inbounds %struct.press_state, ptr %4, i32 0, i32 1, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data_ready, i32 noundef 4) #4
  %22 = ptrtoint ptr %data_ready to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %data_ready, align 4
  %call33 = tail call i32 @hid_sensor_setup_trigger(ptr noundef nonnull %call, ptr noundef nonnull @.str.1, ptr noundef %common_attributes) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #7
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  %call41 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #7
  br label %error_remove_trigger

if.end48:                                         ; preds = %if.end40
  %send_event = getelementptr inbounds %struct.hid_sensor_hub_callbacks, ptr %4, i32 0, i32 4
  %23 = ptrtoint ptr %send_event to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @press_proc_event, ptr %send_event, align 8
  %capture_sample = getelementptr inbounds %struct.hid_sensor_hub_callbacks, ptr %4, i32 0, i32 3
  %24 = ptrtoint ptr %capture_sample to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @press_capture_sample, ptr %capture_sample, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pdev, ptr %4, align 8
  %call53 = tail call i32 @sensor_hub_register_callback(ptr noundef %1, i32 noundef 2097201, ptr noundef %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp = icmp slt i32 %call53, 0
  br i1 %cmp, label %do.end57, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end57:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #7
  tail call void @iio_device_unregister(ptr noundef nonnull %call) #4
  br label %error_remove_trigger

error_remove_trigger:                             ; preds = %do.end57, %do.end46
  %ret.0 = phi i32 [ %call41, %do.end46 ], [ %call53, %do.end57 ]
  tail call void @hid_sensor_remove_trigger(ptr noundef nonnull %call, ptr noundef %common_attributes) #4
  br label %cleanup

cleanup:                                          ; preds = %error_remove_trigger, %if.end48.cleanup_crit_edge, %do.end38, %do.end28, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ %call.i, %do.end28 ], [ %call33, %do.end38 ], [ %ret.0, %error_remove_trigger ], [ -12, %do.end19 ], [ -12, %entry.cleanup_crit_edge ], [ %call53, %if.end48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_press_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
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
  %call2 = tail call i32 @sensor_hub_remove_callback(ptr noundef %1, i32 noundef 2097201) #4
  tail call void @iio_device_unregister(ptr noundef %3) #4
  %common_attributes = getelementptr inbounds %struct.press_state, ptr %5, i32 0, i32 1
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_setup_trigger(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @press_proc_event(ptr nocapture noundef readnone %hsdev, i32 noundef %usage_id, ptr nocapture noundef readonly %priv) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @press_proc_event.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@press_proc_event, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @press_proc_event.__UNIQUE_ID_ddebug224, ptr noundef %dev, ptr noundef nonnull @.str.25) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data_ready = getelementptr inbounds %struct.press_state, ptr %3, i32 0, i32 1, i32 3
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
  %timestamp = getelementptr inbounds %struct.press_state, ptr %3, i32 0, i32 8
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
  %scan = getelementptr inbounds %struct.press_state, ptr %3, i32 0, i32 3
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %scan_timestamp.i, align 8, !range !74
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

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end12.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan) #4
  br label %if.end15

if.end15:                                         ; preds = %iio_push_to_buffers_with_timestamp.exit, %do.end.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @press_capture_sample(ptr nocapture noundef readnone %hsdev, i32 noundef %usage_id, i32 noundef %raw_len, ptr nocapture noundef readonly %raw_data, ptr nocapture noundef readonly %priv) #2 align 64 {
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
    i32 2098225, label %sw.bb
    i32 2098473, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %raw_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %raw_data, align 4
  %scan = getelementptr inbounds %struct.press_state, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %scan to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %scan, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common_attributes = getelementptr inbounds %struct.press_state, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %raw_data to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %raw_data, align 8
  %call3 = tail call i64 @hid_sensor_convert_timestamp(ptr noundef %common_attributes, i64 noundef %9) #4
  %timestamp = getelementptr inbounds %struct.press_state, ptr %3, i32 0, i32 8
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
define internal i32 @press_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb10
    i32 3, label %sw.bb11
    i32 12, label %sw.bb12
    i32 16, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %5 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scan_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cond = icmp eq i32 %6, 0
  br i1 %cond, label %sw.epilog, label %sw.bb.if.else_crit_edge

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

sw.epilog:                                        ; preds = %sw.bb
  %report_id2 = getelementptr inbounds %struct.press_state, ptr %1, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %report_id2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %report_id2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp = icmp sgt i32 %8, -1
  br i1 %cmp, label %if.then, label %sw.epilog.if.else_crit_edge

sw.epilog.if.else_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %logical_minimum = getelementptr inbounds %struct.press_state, ptr %1, i32 0, i32 2, i32 7
  %9 = ptrtoint ptr %logical_minimum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %logical_minimum, align 4
  %common_attributes = getelementptr inbounds %struct.press_state, ptr %1, i32 0, i32 1
  %call4 = tail call i32 @hid_sensor_power_state(ptr noundef %common_attributes, i1 noundef zeroext true) #4
  %11 = ptrtoint ptr %common_attributes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %common_attributes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp6 = icmp slt i32 %10, 0
  %call7 = tail call i32 @sensor_hub_input_attr_get_raw_value(ptr noundef %12, i32 noundef 2097201, i32 noundef 2098225, i32 noundef %8, i32 noundef 0, i1 noundef zeroext %cmp6) #4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call7, ptr %val, align 4
  %call9 = tail call i32 @hid_sensor_power_state(ptr noundef %common_attributes, i1 noundef zeroext false) #4
  br label %cleanup

if.else:                                          ; preds = %sw.epilog.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %scale_pre_decml = getelementptr inbounds %struct.press_state, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %scale_pre_decml to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scale_pre_decml, align 8
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %val, align 4
  %scale_post_decml = getelementptr inbounds %struct.press_state, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %scale_post_decml to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scale_post_decml, align 4
  %20 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %val2, align 4
  %scale_precision = getelementptr inbounds %struct.press_state, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %scale_precision to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scale_precision, align 8
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %value_offset = getelementptr inbounds %struct.press_state, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %value_offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value_offset, align 4
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %val, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common_attributes13 = getelementptr inbounds %struct.press_state, ptr %1, i32 0, i32 1
  %call14 = tail call i32 @hid_sensor_read_samp_freq_value(ptr noundef %common_attributes13, ptr noundef %val, ptr noundef %val2) #4
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common_attributes16 = getelementptr inbounds %struct.press_state, ptr %1, i32 0, i32 1
  %call17 = tail call i32 @hid_sensor_read_raw_hyst_value(ptr noundef %common_attributes16, ptr noundef %val, ptr noundef %val2) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb15, %sw.bb12, %sw.bb11, %sw.bb10, %if.else, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else ], [ %call17, %sw.bb15 ], [ %call14, %sw.bb12 ], [ 1, %sw.bb11 ], [ %22, %sw.bb10 ], [ 1, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @press_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %mask, label %entry.sw.epilog_crit_edge [
    i32 12, label %sw.bb
    i32 16, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common_attributes = getelementptr inbounds %struct.press_state, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @hid_sensor_write_samp_freq_value(ptr noundef %common_attributes, i32 noundef %val, i32 noundef %val2) #4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common_attributes3 = getelementptr inbounds %struct.press_state, ptr %1, i32 0, i32 1
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !55, !56, !58, !60, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_hid_sensor_press__226_357_hid_press_platform_driver_init6, !1, !"__initcall__kmod_hid_sensor_press__226_357_hid_press_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 357, i32 1}
!2 = !{ptr @__exitcall_hid_press_platform_driver_exit, !1, !"__exitcall_hid_press_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description227, !4, !"__UNIQUE_ID_description227", i1 false, i1 false}
!4 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 359, i32 1}
!5 = !{ptr @__UNIQUE_ID_author228, !6, !"__UNIQUE_ID_author228", i1 false, i1 false}
!6 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 360, i32 1}
!7 = !{ptr @__UNIQUE_ID_file229, !8, !"__UNIQUE_ID_file229", i1 false, i1 false}
!8 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 361, i32 1}
!9 = !{ptr @__UNIQUE_ID_license230, !8, !"__UNIQUE_ID_license230", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns231, !11, !"__UNIQUE_ID_import_ns231", i1 false, i1 false}
!11 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 362, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 351, i32 11}
!14 = !{ptr @hid_press_platform_driver, !15, !"hid_press_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 348, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 245, i32 28}
!18 = distinct !{null, !19, !"name", i1 false, i1 false}
!19 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 245, i32 21}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 266, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @hid_press_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @hid_press_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 273, i32 3}
!30 = !{ptr @hid_press_probe._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @hid_press_probe._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 281, i32 3}
!34 = !{ptr @hid_press_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @hid_press_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 296, i32 3}
!38 = !{ptr @hid_press_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @hid_press_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 302, i32 3}
!42 = !{ptr @hid_press_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @hid_press_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 312, i32 3}
!46 = !{ptr @hid_press_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @hid_press_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @press_sensitivity_addresses, !49, !"press_sensitivity_addresses", i1 false, i1 false}
!49 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 36, i32 18}
!50 = !{ptr @press_channels, !51, !"press_channels", i1 false, i1 false}
!51 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 42, i32 35}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 230, i32 2}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @press_parse_report.__UNIQUE_ID_ddebug225, !53, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!56 = !{ptr @press_info, !57, !"press_info", i1 false, i1 false}
!57 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 161, i32 30}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 174, i32 2}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @press_proc_event.__UNIQUE_ID_ddebug224, !59, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!62 = !{ptr @hid_press_ids, !63, !"hid_press_ids", i1 false, i1 false}
!63 = !{!"../drivers/iio/pressure/hid-sensor-press.c", i32 339, i32 40}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2148285216, i64 2148285221, i64 2148285234, i64 2148285278, i64 2148285312, i64 2148285333}
!74 = !{i8 0, i8 2}
