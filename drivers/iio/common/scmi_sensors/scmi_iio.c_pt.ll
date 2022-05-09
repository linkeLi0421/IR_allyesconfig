; ModuleID = '/llk/IR_all_yes/drivers/iio/common/scmi_sensors/scmi_iio.c_pt.bc'
source_filename = "../drivers/iio/common/scmi_sensors/scmi_iio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_device_id = type { i8, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.scmi_device = type { i32, i8, ptr, %struct.device, ptr }
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
%struct.scmi_handle = type { ptr, ptr, ptr, ptr, ptr }
%struct.scmi_sensor_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_sensor_info = type { i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, %struct.scmi_sensor_intervals_info, i32, [16 x i8], i8, i32, i32, i32, %struct.scmi_range_attrs }
%struct.scmi_sensor_intervals_info = type { i8, i32, ptr, [16 x i32] }
%struct.scmi_range_attrs = type { i64, i64 }
%struct.scmi_sensor_axis_info = type { i32, i32, i32, [16 x i8], i8, i32, i32, %struct.scmi_range_attrs }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_iio_priv = type { ptr, ptr, ptr, ptr, [4 x i64], %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.scmi_sensor_update_report = type { i64, i32, i32, i32, [0 x %struct.scmi_sensor_reading] }
%struct.scmi_sensor_reading = type { i64, i64 }

@__initcall__kmod_scmi_iio__236_722_scmi_iiodev_driver_init6 = internal global ptr @scmi_iiodev_driver_init, section ".initcall6.init", align 4
@scmi_iiodev_driver = internal global { %struct.scmi_driver, [36 x i8] } { %struct.scmi_driver { ptr @.str.1, ptr @scmi_iio_dev_probe, ptr null, ptr @scmi_id_table, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_scmi_iiodev_driver_exit = internal global ptr @scmi_iiodev_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [52 x i8] c"scmi_iio.author=Jyoti Bhayana <jbhayana@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [37 x i8] c"scmi_iio.description=SCMI IIO Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [55 x i8] c"scmi_iio.file=drivers/iio/common/scmi_sensors/scmi_iio\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [24 x i8] c"scmi_iio.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scmi_iio\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"scmi-sensor-iiodev\00", [45 x i8] zeroinitializer }, align 32
@scmi_id_table = internal constant { [2 x %struct.scmi_device_id], [16 x i8] } { [2 x %struct.scmi_device_id] [%struct.scmi_device_id { i8 21, ptr @.str.46 }, %struct.scmi_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@scmi_iio_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 652, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SCMI device has no sensor interface\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"scmi_iio_dev_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/iio/common/scmi_sensors/scmi_iio.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scmi_iio_dev_probe._entry_ptr = internal global ptr @scmi_iio_dev_probe._entry, section ".printk_index", align 4
@scmi_iio_dev_probe.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 0, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"0 sensors found via SCMI bus\0A\00", [34 x i8] zeroinitializer }, align 32
@scmi_iio_dev_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 665, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SCMI sensor %d has missing info\0A\00", [63 x i8] zeroinitializer }, align 32
@scmi_iio_dev_probe._entry_ptr.10 = internal global ptr @scmi_iio_dev_probe._entry.8, section ".printk_index", align 4
@scmi_iio_dev_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 683, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to allocate IIO device for sensor %s: %ld\0A\00", [46 x i8] zeroinitializer }, align 32
@scmi_iio_dev_probe._entry_ptr.13 = internal global ptr @scmi_iio_dev_probe._entry.11, section ".printk_index", align 4
@scmi_iio_buffer_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @scmi_iio_buffer_preenable, ptr null, ptr null, ptr @scmi_iio_buffer_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@scmi_iio_dev_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 694, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"IIO buffer setup error at sensor %s: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@scmi_iio_dev_probe._entry_ptr.16 = internal global ptr @scmi_iio_dev_probe._entry.14, section ".printk_index", align 4
@scmi_iio_dev_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 702, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"IIO device registration failed at sensor %s: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@scmi_iio_dev_probe._entry_ptr.19 = internal global ptr @scmi_iio_dev_probe._entry.17, section ".printk_index", align 4
@scmi_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @scmi_iio_read_raw, ptr null, ptr @scmi_iio_read_avail, ptr @scmi_iio_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@scmi_alloc_iiodev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 627, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Error in registering sensor update notifier for sensor %s err %d\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scmi_alloc_iiodev\00", [46 x i8] zeroinitializer }, align 32
@scmi_alloc_iiodev._entry_ptr = internal global ptr @scmi_alloc_iiodev._entry, section ".printk_index", align 4
@scmi_iio_get_odr_val._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 259, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Error in getting sensor config for sensor %s err %d\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scmi_iio_get_odr_val\00", [43 x i8] zeroinitializer }, align 32
@scmi_iio_get_odr_val._entry_ptr = internal global ptr @scmi_iio_get_odr_val._entry, section ".printk_index", align 4
@scmi_iio_read_channel_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 297, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error in enabling sensor %s err %d\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"scmi_iio_read_channel_data\00", [37 x i8] zeroinitializer }, align 32
@scmi_iio_read_channel_data._entry_ptr = internal global ptr @scmi_iio_read_channel_data._entry, section ".printk_index", align 4
@scmi_iio_read_channel_data._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.4, i32 307, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Error in reading raw attribute for sensor %s err %d\00", [44 x i8] zeroinitializer }, align 32
@scmi_iio_read_channel_data._entry_ptr.28 = internal global ptr @scmi_iio_read_channel_data._entry.26, section ".printk_index", align 4
@scmi_iio_read_channel_data._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.4, i32 318, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error in disabling sensor %s err %d\00", [60 x i8] zeroinitializer }, align 32
@scmi_iio_read_channel_data._entry_ptr.31 = internal global ptr @scmi_iio_read_channel_data._entry.29, section ".printk_index", align 4
@scmi_iio_set_odr_val._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.32, ptr @.str.4, i32 144, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scmi_iio_set_odr_val\00", [43 x i8] zeroinitializer }, align 32
@scmi_iio_set_odr_val._entry_ptr = internal global ptr @scmi_iio_set_odr_val._entry, section ".printk_index", align 4
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llu\00", [27 x i8] zeroinitializer }, align 32
@scmi_iio_set_odr_val._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.4, i32 167, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Trying to set invalid sensor update value for sensor %s\00", [40 x i8] zeroinitializer }, align 32
@scmi_iio_set_odr_val._entry_ptr.36 = internal global ptr @scmi_iio_set_odr_val._entry.34, section ".printk_index", align 4
@scmi_iio_set_odr_val._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.4, i32 192, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Error in setting sensor update interval for sensor %s value %u err %d\00", [58 x i8] zeroinitializer }, align 32
@scmi_iio_set_odr_val._entry_ptr.39 = internal global ptr @scmi_iio_set_odr_val._entry.37, section ".printk_index", align 4
@scmi_iio_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.40, i32 1, ptr @scmi_iio_get_raw_available, ptr null, i32 0 }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"raw_available\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%lld %llu.%llu %lld]\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[%lld %llu %lld]\0A\00", [46 x i8] zeroinitializer }, align 32
@scmi_iio_buffer_preenable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.43, ptr @.str.4, i32 100, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"scmi_iio_buffer_preenable\00", [38 x i8] zeroinitializer }, align 32
@scmi_iio_buffer_preenable._entry_ptr = internal global ptr @scmi_iio_buffer_preenable._entry, section ".printk_index", align 4
@scmi_iio_buffer_postdisable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 119, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error in disabling sensor %s with err %d\00", [55 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"scmi_iio_buffer_postdisable\00", [36 x i8] zeroinitializer }, align 32
@scmi_iio_buffer_postdisable._entry_ptr = internal global ptr @scmi_iio_buffer_postdisable._entry, section ".printk_index", align 4
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iiodev\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 87, i64 89]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 87, i64 89]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"scmi_iiodev_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 716, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 722, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 717, i32 10 }
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"scmi_id_table\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 709, i32 36 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 652, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 658, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 665, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 681, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"scmi_iio_buffer_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 125, i32 42 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 692, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 700, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [14 x i8] c"scmi_iio_info\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 362, i32 30 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 625, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 257, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 295, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 305, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 316, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 142, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 160, i32 37 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 165, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 190, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [18 x i8] c"scmi_iio_ext_info\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 411, i32 44 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 413, i32 11 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 400, i32 6 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 404, i32 36 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 99, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 117, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private constant [46 x i8] c"../drivers/iio/common/scmi_sensors/scmi_iio.c\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 710, i32 26 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_scmi_iiodev_driver_exit, ptr @__initcall__kmod_scmi_iio__236_722_scmi_iiodev_driver_init6, ptr @scmi_alloc_iiodev._entry, ptr @scmi_alloc_iiodev._entry_ptr, ptr @scmi_iio_buffer_postdisable._entry, ptr @scmi_iio_buffer_postdisable._entry_ptr, ptr @scmi_iio_buffer_preenable._entry, ptr @scmi_iio_buffer_preenable._entry_ptr, ptr @scmi_iio_dev_probe._entry, ptr @scmi_iio_dev_probe._entry.11, ptr @scmi_iio_dev_probe._entry.14, ptr @scmi_iio_dev_probe._entry.17, ptr @scmi_iio_dev_probe._entry.8, ptr @scmi_iio_dev_probe._entry_ptr, ptr @scmi_iio_dev_probe._entry_ptr.10, ptr @scmi_iio_dev_probe._entry_ptr.13, ptr @scmi_iio_dev_probe._entry_ptr.16, ptr @scmi_iio_dev_probe._entry_ptr.19, ptr @scmi_iio_get_odr_val._entry, ptr @scmi_iio_get_odr_val._entry_ptr, ptr @scmi_iio_read_channel_data._entry, ptr @scmi_iio_read_channel_data._entry.26, ptr @scmi_iio_read_channel_data._entry.29, ptr @scmi_iio_read_channel_data._entry_ptr, ptr @scmi_iio_read_channel_data._entry_ptr.28, ptr @scmi_iio_read_channel_data._entry_ptr.31, ptr @scmi_iio_set_odr_val._entry, ptr @scmi_iio_set_odr_val._entry.34, ptr @scmi_iio_set_odr_val._entry.37, ptr @scmi_iio_set_odr_val._entry_ptr, ptr @scmi_iio_set_odr_val._entry_ptr.36, ptr @scmi_iio_set_odr_val._entry_ptr.39, ptr @scmi_iiodev_driver_exit, ptr @scmi_iiodev_driver, ptr @.str, ptr @.str.1, ptr @scmi_id_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @scmi_iio_buffer_ops, ptr @.str.15, ptr @.str.18, ptr @scmi_iio_info, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @scmi_iio_ext_info, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_iiodev_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_iio_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_iio_dev_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_iio_dev_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_iio_buffer_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_iio_dev_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_iio_dev_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_alloc_iiodev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_iio_get_odr_val._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_iio_read_channel_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_iio_read_channel_data._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_iio_read_channel_data._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_iio_set_odr_val._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_iio_set_odr_val._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_iio_set_odr_val._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_iio_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_iio_buffer_preenable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_iio_buffer_postdisable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_iiodev_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scmi_driver_register(ptr noundef nonnull @scmi_iiodev_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @scmi_iiodev_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @scmi_driver_unregister(ptr noundef nonnull @scmi_iiodev_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_iio_dev_probe(ptr noundef %sdev) #2 align 64 {
entry:
  %ph = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handle1 = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 4
  %0 = ptrtoint ptr %handle1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ph) #7
  %2 = ptrtoint ptr %ph to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %ph, align 4, !annotation !113
  %dev2 = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 3
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %devm_protocol_get = getelementptr inbounds %struct.scmi_handle, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %devm_protocol_get to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %devm_protocol_get, align 4
  %call = call ptr %4(ptr noundef %sdev, i8 noundef zeroext 21, ptr noundef nonnull %ph) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.2) #10
  %5 = ptrtoint ptr %call to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %8 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ph, align 4
  %call7 = call i32 %7(ptr noundef %9) #7
  %conv = trunc i32 %call7 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool8.not = icmp eq i16 %conv, 0
  br i1 %tobool8.not, label %do.body10, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end6
  %conv20 = and i32 %call7, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv20)
  %cmp139.not = icmp eq i32 %conv20, 0
  br i1 %cmp139.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %info_get = getelementptr inbounds %struct.scmi_sensor_proto_ops, ptr %call, i32 0, i32 1
  br label %for.body

do.body10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_iio_dev_probe.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_iio_dev_probe, %if.then15)) #7
          to label %cleanup [label %if.then15], !srcloc !114

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_iio_dev_probe.__UNIQUE_ID_ddebug235, ptr noundef %dev2, ptr noundef nonnull @.str.7) #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0141 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %err.0140 = phi i32 [ -19, %for.body.lr.ph ], [ %err.1, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %info_get to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info_get, align 4
  %12 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ph, align 4
  %call22 = call ptr %11(ptr noundef %13, i32 noundef %i.0141) #7
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %do.end27, label %if.end28

do.end27:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.9, i32 noundef %i.0141) #10
  br label %cleanup

if.end28:                                         ; preds = %for.body
  %num_axis = getelementptr inbounds %struct.scmi_sensor_info, ptr %call22, i32 0, i32 8
  %14 = ptrtoint ptr %num_axis to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_axis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp29.not = icmp eq i32 %15, 3
  br i1 %cmp29.not, label %if.end32, label %if.end28.for.inc_crit_edge

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end32:                                         ; preds = %if.end28
  %axis = getelementptr inbounds %struct.scmi_sensor_info, ptr %call22, i32 0, i32 9
  %16 = ptrtoint ptr %axis to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %axis, align 4
  %type = getelementptr inbounds %struct.scmi_sensor_axis_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.end32.for.inc_crit_edge [
    i32 89, label %if.end32.if.end41_crit_edge
    i32 87, label %if.end32.if.end41_crit_edge218
  ]

if.end32.if.end41_crit_edge218:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end41:                                         ; preds = %if.end32.if.end41_crit_edge, %if.end32.if.end41_crit_edge218
  %21 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ph, align 4
  %23 = ptrtoint ptr %handle1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handle1, align 8
  %call.i = call ptr @devm_iio_device_alloc(ptr noundef %dev2, i32 noundef 64) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end41.do.end47_crit_edge, label %if.end.i

if.end41.do.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

if.end.i:                                         ; preds = %if.end41
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %call.i, align 8
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 19
  %26 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv.i.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call, ptr %27, align 8
  %ph5.i = getelementptr inbounds %struct.scmi_iio_priv, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %ph5.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %22, ptr %ph5.i, align 4
  %sensor_info6.i = getelementptr inbounds %struct.scmi_iio_priv, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %sensor_info6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call22, ptr %sensor_info6.i, align 8
  %sensor_update_nb.i = getelementptr inbounds %struct.scmi_iio_priv, ptr %27, i32 0, i32 5
  %31 = ptrtoint ptr %sensor_update_nb.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @scmi_iio_sensor_update_cb, ptr %sensor_update_nb.i, align 8
  %indio_dev.i = getelementptr inbounds %struct.scmi_iio_priv, ptr %27, i32 0, i32 3
  %32 = ptrtoint ptr %indio_dev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %indio_dev.i, align 4
  %33 = ptrtoint ptr %num_axis to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_axis, align 8
  %add.i = add i32 %34, 1
  %num_channels.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 14
  %35 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add.i, ptr %num_channels.i, align 4
  %name.i = getelementptr inbounds %struct.scmi_sensor_info, ptr %call22, i32 0, i32 12
  %name7.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 15
  %36 = ptrtoint ptr %name7.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %name.i, ptr %name7.i, align 8
  %info.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 17
  %37 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @scmi_iio_info, ptr %info.i, align 8
  %mul.i = mul i32 %add.i, 88
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef %mul.i, i32 noundef 3520) #7
  %tobool10.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool10.not.i, label %if.end.i.do.end47_crit_edge, label %if.end13.i

if.end.i.do.end47_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

if.end13.i:                                       ; preds = %if.end.i
  %38 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 2
  %sensor_info.i.i = getelementptr inbounds %struct.scmi_iio_priv, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %sensor_info.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sensor_info.i.i, align 8
  %count.i.i = getelementptr inbounds %struct.scmi_sensor_info, ptr %41, i32 0, i32 10, i32 1
  %42 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %count.i.i, align 4
  %mul1.i.i = shl i32 %43, 3
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i.i, i32 noundef %mul1.i.i, i32 noundef 3520) #7
  %freq_avail.i.i = getelementptr inbounds %struct.scmi_iio_priv, ptr %39, i32 0, i32 6
  %44 = ptrtoint ptr %freq_avail.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i.i.i, ptr %freq_avail.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end13.i.do.end47_crit_edge, label %if.end.i.i

if.end13.i.do.end47_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

if.end.i.i:                                       ; preds = %if.end13.i
  %45 = ptrtoint ptr %sensor_info.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sensor_info.i.i, align 8
  %intervals5.i.i = getelementptr inbounds %struct.scmi_sensor_info, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %intervals5.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %intervals5.i.i, align 8, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool6.not.i.i = icmp eq i8 %48, 0
  br i1 %tobool6.not.i.i, label %for.cond.preheader.i.i, label %if.then7.i.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  %count401345.i.i = getelementptr inbounds %struct.scmi_sensor_info, ptr %46, i32 0, i32 10, i32 1
  %49 = ptrtoint ptr %count401345.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %count401345.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp1346.not.i.i = icmp eq i32 %50, 0
  br i1 %cmp1346.not.i.i, label %for.cond.preheader.i.i.scmi_iio_set_sampling_freq_avail.exit.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.scmi_iio_set_sampling_freq_avail.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_iio_set_sampling_freq_avail.exit.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  %desc.i.i = getelementptr inbounds %struct.scmi_sensor_info, ptr %46, i32 0, i32 10, i32 2
  %51 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %desc.i.i, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %and.i.i.i = lshr i32 %54, 5
  %shr.i.i.i = and i32 %and.i.i.i, 65535
  %mul.i.i.i = mul i32 %shr.i.i.i, 1000000000
  %and29.i.i.i = and i32 %54, 31
  %and31.i.i.i = and i32 %54, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and31.i.i.i, 0
  %masksel.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 -32
  %spec.select.i.i.i = or i32 %masksel.i.i.i, %and29.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i)
  %cmp.i.i.i = icmp slt i32 %spec.select.i.i.i, 0
  br i1 %cmp.i.i.i, label %cond.end.i.i.i, label %if.else235.i.i.i

cond.end.i.i.i:                                   ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = sub nsw i32 0, %spec.select.i.i.i
  %call.i88.i.i = call i64 @int_pow(i64 noundef 10, i32 noundef %sub.i.i.i) #7
  %conv38.i.i.i = trunc i64 %call.i88.i.i to i32
  %div227.i.i.i = udiv i32 %mul.i.i.i, %conv38.i.i.i
  br label %if.else385.i.i.i

if.else235.i.i.i:                                 ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call236.i.i.i = call i64 @int_pow(i64 noundef 10, i32 noundef %spec.select.i.i.i) #7
  %55 = trunc i64 %call236.i.i.i to i32
  %extract.t185 = mul i32 %mul.i.i.i, %55
  br label %if.else385.i.i.i

if.else385.i.i.i:                                 ; preds = %if.else235.i.i.i, %cond.end.i.i.i
  %sensor_update_interval.0.i.i.i.off0 = phi i32 [ %div227.i.i.i, %cond.end.i.i.i ], [ %extract.t185, %if.else235.i.i.i ]
  %sensor_update_interval.0.i.i.i.off0.frozen = freeze i32 %sensor_update_interval.0.i.i.i.off0
  %div175.i.i.i = udiv i32 1000000000, %sensor_update_interval.0.i.i.i.off0.frozen
  %56 = mul i32 %div175.i.i.i, %sensor_update_interval.0.i.i.i.off0.frozen
  %rem173.i.i.i.decomposed = sub i32 1000000000, %56
  %conv183.i.i.i = zext i32 %rem173.i.i.i.decomposed to i64
  %mul184.i.i.i = mul nuw nsw i64 %conv183.i.i.i, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul184.i.i.i)
  %cmp387.i.i.i = icmp ult i64 %mul184.i.i.i, 4294967296
  br i1 %cmp387.i.i.i, label %if.then395.i.i.i, label %if.else401.i.i.i, !prof !116

if.then395.i.i.i:                                 ; preds = %if.else385.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv396.i.i.i = trunc i64 %mul184.i.i.i to i32
  %div399.i.i.i = udiv i32 %conv396.i.i.i, %sensor_update_interval.0.i.i.i.off0
  br label %convert_ns_to_freq.exit.i.i

if.else401.i.i.i:                                 ; preds = %if.else385.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sensor_update_interval.0.i.i.i.off0, i64 %mul184.i.i.i) #11, !srcloc !117
  %asmresult1.i606.i.i.i = extractvalue { i64, i64 } %57, 1
  %extract.t1318.i.i = trunc i64 %asmresult1.i606.i.i.i to i32
  br label %convert_ns_to_freq.exit.i.i

convert_ns_to_freq.exit.i.i:                      ; preds = %if.else401.i.i.i, %if.then395.i.i.i
  %div381.sink.i.off0.i.i = phi i32 [ %div399.i.i.i, %if.then395.i.i.i ], [ %extract.t1318.i.i, %if.else401.i.i.i ]
  %58 = ptrtoint ptr %freq_avail.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %freq_avail.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %div175.i.i.i, ptr %59, align 4
  %61 = load ptr, ptr %freq_avail.i.i, align 4
  %arrayidx15.i.i = getelementptr i32, ptr %61, i32 1
  %62 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %div381.sink.i.off0.i.i, ptr %arrayidx15.i.i, align 4
  %63 = ptrtoint ptr %sensor_info.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sensor_info.i.i, align 8
  %desc18.i.i = getelementptr inbounds %struct.scmi_sensor_info, ptr %64, i32 0, i32 10, i32 2
  %65 = ptrtoint ptr %desc18.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %desc18.i.i, align 8
  %arrayidx19.i.i = getelementptr i32, ptr %66, i32 2
  %67 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx19.i.i, align 4
  %and.i126.i.i = lshr i32 %68, 5
  %shr.i127.i.i = and i32 %and.i126.i.i, 65535
  %mul.i128.i.i = mul i32 %shr.i127.i.i, 1000000000
  %and29.i130.i.i = and i32 %68, 31
  %and31.i131.i.i = and i32 %68, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i131.i.i)
  %tobool.not.i132.i.i = icmp eq i32 %and31.i131.i.i, 0
  %masksel.i133.i.i = select i1 %tobool.not.i132.i.i, i32 0, i32 -32
  %spec.select.i134.i.i = or i32 %masksel.i133.i.i, %and29.i130.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i134.i.i)
  %cmp.i135.i.i = icmp slt i32 %spec.select.i134.i.i, 0
  br i1 %cmp.i135.i.i, label %cond.end.i142.i.i, label %if.else235.i260.i.i

cond.end.i142.i.i:                                ; preds = %convert_ns_to_freq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i136.i.i = sub nsw i32 0, %spec.select.i134.i.i
  %call.i137.i.i = call i64 @int_pow(i64 noundef 10, i32 noundef %sub.i136.i.i) #7
  %conv38.i138.i.i = trunc i64 %call.i137.i.i to i32
  %div227.i255.i.i = udiv i32 %mul.i128.i.i, %conv38.i138.i.i
  br label %if.else385.i501.i.i

if.else235.i260.i.i:                              ; preds = %convert_ns_to_freq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call236.i258.i.i = call i64 @int_pow(i64 noundef 10, i32 noundef %spec.select.i134.i.i) #7
  %69 = trunc i64 %call236.i258.i.i to i32
  %extract.t186 = mul i32 %mul.i128.i.i, %69
  br label %if.else385.i501.i.i

if.else385.i501.i.i:                              ; preds = %if.else235.i260.i.i, %cond.end.i142.i.i
  %sensor_update_interval.0.i261.i.i.off0 = phi i32 [ %div227.i255.i.i, %cond.end.i142.i.i ], [ %extract.t186, %if.else235.i260.i.i ]
  %sensor_update_interval.0.i261.i.i.off0.frozen = freeze i32 %sensor_update_interval.0.i261.i.i.off0
  %div175.i496.i.i = udiv i32 1000000000, %sensor_update_interval.0.i261.i.i.off0.frozen
  %70 = mul i32 %div175.i496.i.i, %sensor_update_interval.0.i261.i.i.off0.frozen
  %rem173.i495.i.i.decomposed = sub i32 1000000000, %70
  %conv183.i498.i.i = zext i32 %rem173.i495.i.i.decomposed to i64
  %mul184.i499.i.i = mul nuw nsw i64 %conv183.i498.i.i, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul184.i499.i.i)
  %cmp387.i500.i.i = icmp ult i64 %mul184.i499.i.i, 4294967296
  br i1 %cmp387.i500.i.i, label %if.then395.i505.i.i, label %if.else401.i507.i.i, !prof !116

if.then395.i505.i.i:                              ; preds = %if.else385.i501.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv396.i502.i.i = trunc i64 %mul184.i499.i.i to i32
  %div399.i503.i.i = udiv i32 %conv396.i502.i.i, %sensor_update_interval.0.i261.i.i.off0
  br label %convert_ns_to_freq.exit509.i.i

if.else401.i507.i.i:                              ; preds = %if.else385.i501.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sensor_update_interval.0.i261.i.i.off0, i64 %mul184.i499.i.i) #11, !srcloc !117
  %asmresult1.i606.i506.i.i = extractvalue { i64, i64 } %71, 1
  %extract.t1326.i.i = trunc i64 %asmresult1.i606.i506.i.i to i32
  br label %convert_ns_to_freq.exit509.i.i

convert_ns_to_freq.exit509.i.i:                   ; preds = %if.else401.i507.i.i, %if.then395.i505.i.i
  %div381.sink.i508.off0.i.i = phi i32 [ %div399.i503.i.i, %if.then395.i505.i.i ], [ %extract.t1326.i.i, %if.else401.i507.i.i ]
  %72 = ptrtoint ptr %freq_avail.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %freq_avail.i.i, align 4
  %arrayidx23.i.i = getelementptr i32, ptr %73, i32 2
  %74 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %div175.i496.i.i, ptr %arrayidx23.i.i, align 4
  %75 = load ptr, ptr %freq_avail.i.i, align 4
  %arrayidx26.i.i = getelementptr i32, ptr %75, i32 3
  %76 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %div381.sink.i508.off0.i.i, ptr %arrayidx26.i.i, align 4
  %77 = ptrtoint ptr %sensor_info.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sensor_info.i.i, align 8
  %desc29.i.i = getelementptr inbounds %struct.scmi_sensor_info, ptr %78, i32 0, i32 10, i32 2
  %79 = ptrtoint ptr %desc29.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %desc29.i.i, align 8
  %arrayidx30.i.i = getelementptr i32, ptr %80, i32 1
  %81 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx30.i.i, align 4
  %and.i510.i.i = lshr i32 %82, 5
  %shr.i511.i.i = and i32 %and.i510.i.i, 65535
  %mul.i512.i.i = mul i32 %shr.i511.i.i, 1000000000
  %and29.i514.i.i = and i32 %82, 31
  %and31.i515.i.i = and i32 %82, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i515.i.i)
  %tobool.not.i516.i.i = icmp eq i32 %and31.i515.i.i, 0
  %masksel.i517.i.i = select i1 %tobool.not.i516.i.i, i32 0, i32 -32
  %spec.select.i518.i.i = or i32 %masksel.i517.i.i, %and29.i514.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i518.i.i)
  %cmp.i519.i.i = icmp slt i32 %spec.select.i518.i.i, 0
  br i1 %cmp.i519.i.i, label %cond.end.i526.i.i, label %if.else235.i644.i.i

cond.end.i526.i.i:                                ; preds = %convert_ns_to_freq.exit509.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i520.i.i = sub nsw i32 0, %spec.select.i518.i.i
  %call.i521.i.i = call i64 @int_pow(i64 noundef 10, i32 noundef %sub.i520.i.i) #7
  %conv38.i522.i.i = trunc i64 %call.i521.i.i to i32
  %div227.i639.i.i = udiv i32 %mul.i512.i.i, %conv38.i522.i.i
  br label %if.else385.i885.i.i

if.else235.i644.i.i:                              ; preds = %convert_ns_to_freq.exit509.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call236.i642.i.i = call i64 @int_pow(i64 noundef 10, i32 noundef %spec.select.i518.i.i) #7
  %83 = trunc i64 %call236.i642.i.i to i32
  %extract.t187 = mul i32 %mul.i512.i.i, %83
  br label %if.else385.i885.i.i

if.else385.i885.i.i:                              ; preds = %if.else235.i644.i.i, %cond.end.i526.i.i
  %sensor_update_interval.0.i645.i.i.off0 = phi i32 [ %div227.i639.i.i, %cond.end.i526.i.i ], [ %extract.t187, %if.else235.i644.i.i ]
  %sensor_update_interval.0.i645.i.i.off0.frozen = freeze i32 %sensor_update_interval.0.i645.i.i.off0
  %div175.i880.i.i = udiv i32 1000000000, %sensor_update_interval.0.i645.i.i.off0.frozen
  %84 = mul i32 %div175.i880.i.i, %sensor_update_interval.0.i645.i.i.off0.frozen
  %rem173.i879.i.i.decomposed = sub i32 1000000000, %84
  %conv183.i882.i.i = zext i32 %rem173.i879.i.i.decomposed to i64
  %mul184.i883.i.i = mul nuw nsw i64 %conv183.i882.i.i, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul184.i883.i.i)
  %cmp387.i884.i.i = icmp ult i64 %mul184.i883.i.i, 4294967296
  br i1 %cmp387.i884.i.i, label %if.then395.i889.i.i, label %if.else401.i891.i.i, !prof !116

if.then395.i889.i.i:                              ; preds = %if.else385.i885.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv396.i886.i.i = trunc i64 %mul184.i883.i.i to i32
  %div399.i887.i.i = udiv i32 %conv396.i886.i.i, %sensor_update_interval.0.i645.i.i.off0
  br label %convert_ns_to_freq.exit893.i.i

if.else401.i891.i.i:                              ; preds = %if.else385.i885.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sensor_update_interval.0.i645.i.i.off0, i64 %mul184.i883.i.i) #11, !srcloc !117
  %asmresult1.i606.i890.i.i = extractvalue { i64, i64 } %85, 1
  %extract.t1334.i.i = trunc i64 %asmresult1.i606.i890.i.i to i32
  br label %convert_ns_to_freq.exit893.i.i

convert_ns_to_freq.exit893.i.i:                   ; preds = %if.else401.i891.i.i, %if.then395.i889.i.i
  %div381.sink.i892.off0.i.i = phi i32 [ %div399.i887.i.i, %if.then395.i889.i.i ], [ %extract.t1334.i.i, %if.else401.i891.i.i ]
  %86 = ptrtoint ptr %freq_avail.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %freq_avail.i.i, align 4
  %arrayidx34.i.i = getelementptr i32, ptr %87, i32 4
  %88 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %div175.i880.i.i, ptr %arrayidx34.i.i, align 4
  %89 = load ptr, ptr %freq_avail.i.i, align 4
  %arrayidx37.i.i = getelementptr i32, ptr %89, i32 5
  %90 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %div381.sink.i892.off0.i.i, ptr %arrayidx37.i.i, align 4
  br label %scmi_iio_set_sampling_freq_avail.exit.i

for.body.i.i:                                     ; preds = %convert_ns_to_freq.exit1277.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %91 = phi ptr [ %105, %convert_ns_to_freq.exit1277.i.i.for.body.i.i_crit_edge ], [ %46, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %i.01347.i.i = phi i32 [ %inc.i.i, %convert_ns_to_freq.exit1277.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %desc44.i.i = getelementptr inbounds %struct.scmi_sensor_info, ptr %91, i32 0, i32 10, i32 2
  %92 = ptrtoint ptr %desc44.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %desc44.i.i, align 8
  %arrayidx45.i.i = getelementptr i32, ptr %93, i32 %i.01347.i.i
  %94 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx45.i.i, align 4
  %and.i894.i.i = lshr i32 %95, 5
  %shr.i895.i.i = and i32 %and.i894.i.i, 65535
  %mul.i896.i.i = mul i32 %shr.i895.i.i, 1000000000
  %and29.i898.i.i = and i32 %95, 31
  %and31.i899.i.i = and i32 %95, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i899.i.i)
  %tobool.not.i900.i.i = icmp eq i32 %and31.i899.i.i, 0
  %masksel.i901.i.i = select i1 %tobool.not.i900.i.i, i32 0, i32 -32
  %spec.select.i902.i.i = or i32 %masksel.i901.i.i, %and29.i898.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i902.i.i)
  %cmp.i903.i.i = icmp slt i32 %spec.select.i902.i.i, 0
  br i1 %cmp.i903.i.i, label %cond.end.i910.i.i, label %if.else235.i1028.i.i

cond.end.i910.i.i:                                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i904.i.i = sub nsw i32 0, %spec.select.i902.i.i
  %call.i905.i.i = call i64 @int_pow(i64 noundef 10, i32 noundef %sub.i904.i.i) #7
  %conv38.i906.i.i = trunc i64 %call.i905.i.i to i32
  %div227.i1023.i.i = udiv i32 %mul.i896.i.i, %conv38.i906.i.i
  br label %if.else385.i1269.i.i

if.else235.i1028.i.i:                             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call236.i1026.i.i = call i64 @int_pow(i64 noundef 10, i32 noundef %spec.select.i902.i.i) #7
  %96 = trunc i64 %call236.i1026.i.i to i32
  %extract.t188 = mul i32 %mul.i896.i.i, %96
  br label %if.else385.i1269.i.i

if.else385.i1269.i.i:                             ; preds = %if.else235.i1028.i.i, %cond.end.i910.i.i
  %sensor_update_interval.0.i1029.i.i.off0 = phi i32 [ %div227.i1023.i.i, %cond.end.i910.i.i ], [ %extract.t188, %if.else235.i1028.i.i ]
  %sensor_update_interval.0.i1029.i.i.off0.frozen = freeze i32 %sensor_update_interval.0.i1029.i.i.off0
  %div175.i1264.i.i = udiv i32 1000000000, %sensor_update_interval.0.i1029.i.i.off0.frozen
  %97 = mul i32 %div175.i1264.i.i, %sensor_update_interval.0.i1029.i.i.off0.frozen
  %rem173.i1263.i.i.decomposed = sub i32 1000000000, %97
  %conv183.i1266.i.i = zext i32 %rem173.i1263.i.i.decomposed to i64
  %mul184.i1267.i.i = mul nuw nsw i64 %conv183.i1266.i.i, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul184.i1267.i.i)
  %cmp387.i1268.i.i = icmp ult i64 %mul184.i1267.i.i, 4294967296
  br i1 %cmp387.i1268.i.i, label %if.then395.i1273.i.i, label %if.else401.i1275.i.i, !prof !116

if.then395.i1273.i.i:                             ; preds = %if.else385.i1269.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv396.i1270.i.i = trunc i64 %mul184.i1267.i.i to i32
  %div399.i1271.i.i = udiv i32 %conv396.i1270.i.i, %sensor_update_interval.0.i1029.i.i.off0
  br label %convert_ns_to_freq.exit1277.i.i

if.else401.i1275.i.i:                             ; preds = %if.else385.i1269.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sensor_update_interval.0.i1029.i.i.off0, i64 %mul184.i1267.i.i) #11, !srcloc !117
  %asmresult1.i606.i1274.i.i = extractvalue { i64, i64 } %98, 1
  %extract.t1343.i.i = trunc i64 %asmresult1.i606.i1274.i.i to i32
  br label %convert_ns_to_freq.exit1277.i.i

convert_ns_to_freq.exit1277.i.i:                  ; preds = %if.else401.i1275.i.i, %if.then395.i1273.i.i
  %div381.sink.i1276.off0.i.i = phi i32 [ %div399.i1271.i.i, %if.then395.i1273.i.i ], [ %extract.t1343.i.i, %if.else401.i1275.i.i ]
  %99 = ptrtoint ptr %freq_avail.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %freq_avail.i.i, align 4
  %mul49.i.i = shl i32 %i.01347.i.i, 1
  %arrayidx50.i.i = getelementptr i32, ptr %100, i32 %mul49.i.i
  %101 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %div175.i1264.i.i, ptr %arrayidx50.i.i, align 4
  %102 = load ptr, ptr %freq_avail.i.i, align 4
  %add.i.i = or i32 %mul49.i.i, 1
  %arrayidx54.i.i = getelementptr i32, ptr %102, i32 %add.i.i
  %103 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %div381.sink.i1276.off0.i.i, ptr %arrayidx54.i.i, align 4
  %inc.i.i = add nuw i32 %i.01347.i.i, 1
  %104 = ptrtoint ptr %sensor_info.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sensor_info.i.i, align 8
  %count40.i.i = getelementptr inbounds %struct.scmi_sensor_info, ptr %105, i32 0, i32 10, i32 1
  %106 = ptrtoint ptr %count40.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %count40.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %107
  br i1 %cmp.i.i, label %convert_ns_to_freq.exit1277.i.i.for.body.i.i_crit_edge, label %convert_ns_to_freq.exit1277.i.i.scmi_iio_set_sampling_freq_avail.exit.i_crit_edge

convert_ns_to_freq.exit1277.i.i.scmi_iio_set_sampling_freq_avail.exit.i_crit_edge: ; preds = %convert_ns_to_freq.exit1277.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_iio_set_sampling_freq_avail.exit.i

convert_ns_to_freq.exit1277.i.i.for.body.i.i_crit_edge: ; preds = %convert_ns_to_freq.exit1277.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

scmi_iio_set_sampling_freq_avail.exit.i:          ; preds = %convert_ns_to_freq.exit1277.i.i.scmi_iio_set_sampling_freq_avail.exit.i_crit_edge, %convert_ns_to_freq.exit893.i.i, %for.cond.preheader.i.i.scmi_iio_set_sampling_freq_avail.exit.i_crit_edge
  %108 = ptrtoint ptr %num_axis to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_axis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp19127.not.i = icmp eq i32 %109, 0
  br i1 %cmp19127.not.i, label %scmi_iio_set_sampling_freq_avail.exit.i.for.end.i_crit_edge, label %for.body.lr.ph.i

scmi_iio_set_sampling_freq_avail.exit.i.for.end.i_crit_edge: ; preds = %scmi_iio_set_sampling_freq_avail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %scmi_iio_set_sampling_freq_avail.exit.i
  %110 = ptrtoint ptr %axis to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %axis, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %switch.lookup.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0128.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %switch.lookup.for.body.i_crit_edge ]
  %type20.i = getelementptr %struct.scmi_sensor_axis_info, ptr %111, i32 %i.0128.i, i32 1
  %112 = ptrtoint ptr %type20.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %type20.i, align 4
  %conv.i = trunc i32 %113 to i8
  %114 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %conv.i, label %for.body.i.do.end47_crit_edge [
    i8 89, label %for.body.i.if.end26.i_crit_edge
    i8 87, label %sw.bb1.i.i
  ]

for.body.i.if.end26.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

for.body.i.do.end47_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

sw.bb1.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.end26.i:                                       ; preds = %sw.bb1.i.i, %for.body.i.if.end26.i_crit_edge
  %.sink.i.i = phi i32 [ 4, %sw.bb1.i.i ], [ 3, %for.body.i.if.end26.i_crit_edge ]
  %name29.i = getelementptr %struct.scmi_sensor_axis_info, ptr %111, i32 %i.0128.i, i32 3
  %tobool.not.i107.i = icmp eq ptr %name29.i, null
  br i1 %tobool.not.i107.i, label %if.end26.i.do.end47_crit_edge, label %if.end.i109.i

if.end26.i.do.end47_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

if.end.i109.i:                                    ; preds = %if.end26.i
  %call.i108.i = call ptr @strrchr(ptr noundef nonnull %name29.i, i32 noundef 95) #7
  %tobool1.not.i.i = icmp eq ptr %call.i108.i, null
  br i1 %tobool1.not.i.i, label %if.end.i109.i.do.end47_crit_edge, label %if.end3.i.i

if.end.i109.i.do.end47_crit_edge:                 ; preds = %if.end.i109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

if.end3.i.i:                                      ; preds = %if.end.i109.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i108.i, i32 1
  %115 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %add.ptr.i.i, align 1
  %switch.tableidx = add i8 %116, -88
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %117 = icmp ult i8 %switch.tableidx, 3
  br i1 %117, label %switch.lookup, label %if.end3.i.i.do.end47_crit_edge

if.end3.i.i.do.end47_crit_edge:                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

switch.lookup:                                    ; preds = %if.end3.i.i
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 1
  %arrayidx37.i = getelementptr %struct.iio_chan_spec, ptr %call.i.i, i32 %i.0128.i
  %arrayidx39.i = getelementptr %struct.scmi_sensor_axis_info, ptr %111, i32 %i.0128.i
  %118 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx39.i, align 8
  %120 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %.sink.i.i, ptr %arrayidx37.i, align 4
  %modified.i.i = getelementptr %struct.iio_chan_spec, ptr %call.i.i, i32 %i.0128.i, i32 19
  %121 = ptrtoint ptr %modified.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %bf.load.i.i = load i8, ptr %modified.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %modified.i.i, align 4
  %channel2.i.i = getelementptr %struct.iio_chan_spec, ptr %call.i.i, i32 %i.0128.i, i32 2
  %122 = ptrtoint ptr %channel2.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %switch.offset, ptr %channel2.i.i, align 4
  %info_mask_separate.i.i = getelementptr %struct.iio_chan_spec, ptr %call.i.i, i32 %i.0128.i, i32 6
  %123 = ptrtoint ptr %info_mask_separate.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 5, ptr %info_mask_separate.i.i, align 4
  %info_mask_shared_by_type.i.i = getelementptr %struct.iio_chan_spec, ptr %call.i.i, i32 %i.0128.i, i32 8
  %124 = ptrtoint ptr %info_mask_shared_by_type.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 4096, ptr %info_mask_shared_by_type.i.i, align 4
  %info_mask_shared_by_type_available.i.i = getelementptr %struct.iio_chan_spec, ptr %call.i.i, i32 %i.0128.i, i32 9
  %125 = ptrtoint ptr %info_mask_shared_by_type_available.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 4096, ptr %info_mask_shared_by_type_available.i.i, align 4
  %scan_index2.i.i = getelementptr %struct.iio_chan_spec, ptr %call.i.i, i32 %i.0128.i, i32 4
  %126 = ptrtoint ptr %scan_index2.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %119, ptr %scan_index2.i.i, align 4
  %scan_type.i.i = getelementptr %struct.iio_chan_spec, ptr %call.i.i, i32 %i.0128.i, i32 5
  %127 = ptrtoint ptr %scan_type.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 115, ptr %scan_type.i.i, align 4
  %realbits.i.i = getelementptr %struct.iio_chan_spec, ptr %call.i.i, i32 %i.0128.i, i32 5, i32 1
  %128 = ptrtoint ptr %realbits.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 64, ptr %realbits.i.i, align 1
  %storagebits.i.i = getelementptr %struct.iio_chan_spec, ptr %call.i.i, i32 %i.0128.i, i32 5, i32 2
  %129 = ptrtoint ptr %storagebits.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 64, ptr %storagebits.i.i, align 2
  %endianness.i.i = getelementptr %struct.iio_chan_spec, ptr %call.i.i, i32 %i.0128.i, i32 5, i32 5
  %130 = ptrtoint ptr %endianness.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 2, ptr %endianness.i.i, align 4
  %ext_info.i.i = getelementptr %struct.iio_chan_spec, ptr %call.i.i, i32 %i.0128.i, i32 16
  %131 = ptrtoint ptr %ext_info.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @scmi_iio_ext_info, ptr %ext_info.i.i, align 4
  %inc.i = add nuw i32 %i.0128.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %109
  br i1 %exitcond.not.i, label %switch.lookup.for.end.i_crit_edge, label %switch.lookup.for.body.i_crit_edge

switch.lookup.for.body.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

switch.lookup.for.end.i_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %switch.lookup.for.end.i_crit_edge, %scmi_iio_set_sampling_freq_avail.exit.i.for.end.i_crit_edge
  %notify_ops.i = getelementptr inbounds %struct.scmi_handle, ptr %24, i32 0, i32 4
  %132 = ptrtoint ptr %notify_ops.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %notify_ops.i, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %136 = ptrtoint ptr %sensor_info6.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %sensor_info6.i, align 8
  %call43.i = call i32 %135(ptr noundef %sdev, i8 noundef zeroext 21, i8 noundef zeroext 1, ptr noundef %137, ptr noundef %sensor_update_nb.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end51.i, label %do.end.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %138 = ptrtoint ptr %sensor_info6.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %sensor_info6.i, align 8
  %name48.i = getelementptr inbounds %struct.scmi_sensor_info, ptr %139, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.20, ptr noundef %name48.i, i32 noundef %call43.i) #10
  %140 = inttoptr i32 %call43.i to ptr
  br label %scmi_alloc_iiodev.exit

if.end51.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx52.i = getelementptr %struct.iio_chan_spec, ptr %call.i.i, i32 %109
  %141 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 13, ptr %arrayidx52.i, align 4
  %channel.i.i = getelementptr %struct.iio_chan_spec, ptr %call.i.i, i32 %109, i32 1
  %142 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -1, ptr %channel.i.i, align 4
  %scan_index1.i.i = getelementptr %struct.iio_chan_spec, ptr %call.i.i, i32 %109, i32 4
  %143 = ptrtoint ptr %scan_index1.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %109, ptr %scan_index1.i.i, align 4
  %scan_type.i112.i = getelementptr %struct.iio_chan_spec, ptr %call.i.i, i32 %109, i32 5
  %144 = ptrtoint ptr %scan_type.i112.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 117, ptr %scan_type.i112.i, align 4
  %realbits.i113.i = getelementptr %struct.iio_chan_spec, ptr %call.i.i, i32 %109, i32 5, i32 1
  %145 = ptrtoint ptr %realbits.i113.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 64, ptr %realbits.i113.i, align 1
  %storagebits.i114.i = getelementptr %struct.iio_chan_spec, ptr %call.i.i, i32 %109, i32 5, i32 2
  %146 = ptrtoint ptr %storagebits.i114.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 64, ptr %storagebits.i114.i, align 2
  %channels.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 13
  %147 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call.i.i, ptr %channels.i, align 8
  br label %scmi_alloc_iiodev.exit

scmi_alloc_iiodev.exit:                           ; preds = %if.end51.i, %do.end.i
  %retval.0.i116 = phi ptr [ %140, %do.end.i ], [ %call.i, %if.end51.i ]
  %cmp.i117 = icmp ugt ptr %retval.0.i116, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %scmi_alloc_iiodev.exit.do.end47_crit_edge, label %if.end50

scmi_alloc_iiodev.exit.do.end47_crit_edge:        ; preds = %scmi_alloc_iiodev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

do.end47:                                         ; preds = %scmi_alloc_iiodev.exit.do.end47_crit_edge, %if.end3.i.i.do.end47_crit_edge, %if.end.i109.i.do.end47_crit_edge, %if.end26.i.do.end47_crit_edge, %for.body.i.do.end47_crit_edge, %if.end13.i.do.end47_crit_edge, %if.end.i.do.end47_crit_edge, %if.end41.do.end47_crit_edge
  %retval.0.i116121 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end3.i.i.do.end47_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.body.i.do.end47_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end26.i.do.end47_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i109.i.do.end47_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end41.do.end47_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.do.end47_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end13.i.do.end47_crit_edge ], [ %retval.0.i116, %scmi_alloc_iiodev.exit.do.end47_crit_edge ]
  %name = getelementptr inbounds %struct.scmi_sensor_info, ptr %call22, i32 0, i32 12
  %148 = ptrtoint ptr %retval.0.i116121 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %148) #10
  br label %cleanup

if.end50:                                         ; preds = %scmi_alloc_iiodev.exit
  %dev51 = getelementptr inbounds %struct.iio_dev, ptr %retval.0.i116, i32 0, i32 2
  %call52 = call i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef %dev51, ptr noundef %retval.0.i116, i32 noundef 4, ptr noundef nonnull @scmi_iio_buffer_ops, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %do.end58, label %if.end61

do.end58:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef %call52) #10
  br label %cleanup

if.end61:                                         ; preds = %if.end50
  %call62 = call i32 @__devm_iio_device_register(ptr noundef %dev2, ptr noundef %retval.0.i116, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end61.for.inc_crit_edge, label %do.end67

if.end61.for.inc_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.18, ptr noundef %name.i, i32 noundef %call62) #10
  br label %cleanup

for.inc:                                          ; preds = %if.end61.for.inc_crit_edge, %if.end32.for.inc_crit_edge, %if.end28.for.inc_crit_edge
  %err.1 = phi i32 [ %err.0140, %if.end28.for.inc_crit_edge ], [ 0, %if.end61.for.inc_crit_edge ], [ %err.0140, %if.end32.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0141, 1
  %exitcond.not = icmp eq i32 %inc, %conv20
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end67, %do.end58, %do.end47, %do.end27, %if.then15, %do.body10, %for.cond.preheader.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ %148, %do.end47 ], [ %call52, %do.end58 ], [ %call62, %do.end67 ], [ -22, %do.end27 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then15 ], [ -19, %do.body10 ], [ -19, %for.cond.preheader.cleanup_crit_edge ], [ %err.1, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ph) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_iio_sensor_update_cb(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %readings_count = getelementptr inbounds %struct.scmi_sensor_update_report, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %readings_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %readings_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %readings_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %readings_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2350.not = icmp eq i32 %3, 0
  br i1 %cmp2350.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %iio_buf = getelementptr i8, ptr %nb, i32 -32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0351 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.scmi_sensor_update_report, ptr %data, i32 0, i32 4, i32 %i.0351
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  %arrayidx3 = getelementptr [4 x i64], ptr %iio_buf, i32 0, i32 %i.0351
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %arrayidx3, align 8
  %inc = add nuw i32 %i.0351, 1
  %7 = ptrtoint ptr %readings_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %readings_count, align 8
  %cmp2 = icmp ult i32 %inc, %8
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %sensor_info = getelementptr i8, ptr %nb, i32 -40
  %9 = ptrtoint ptr %sensor_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sensor_info, align 8
  %timestamped = getelementptr inbounds %struct.scmi_sensor_info, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %timestamped to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %timestamped, align 2, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %data, align 8
  br label %if.end221

if.else:                                          ; preds = %for.end
  %timestamp7 = getelementptr inbounds %struct.scmi_sensor_update_report, ptr %data, i32 1, i32 1
  %15 = ptrtoint ptr %timestamp7 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %timestamp7, align 8
  %tstamp_scale9 = getelementptr inbounds %struct.scmi_sensor_info, ptr %10, i32 0, i32 7
  %17 = ptrtoint ptr %tstamp_scale9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tstamp_scale9, align 4
  %conv = shl i32 %18, 24
  %sext = add i32 %conv, 150994944
  %conv10 = ashr exact i32 %sext, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext)
  %cmp11 = icmp slt i32 %sext, 0
  br i1 %cmp11, label %cond.end, label %if.else216

cond.end:                                         ; preds = %if.else
  %sub = sub nsw i32 0, %conv10
  %call20 = tail call i64 @int_pow(i64 noundef 10, i32 noundef %sub) #7
  %conv21 = trunc i64 %call20 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %16)
  %cmp200 = icmp ult i64 %16, 4294967296
  br i1 %cmp200, label %if.then204, label %if.else210, !prof !116

if.then204:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv205 = trunc i64 %16 to i32
  %div208 = udiv i32 %conv205, %conv21
  %conv209 = zext i32 %div208 to i64
  br label %if.end221

if.else210:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv21, i64 %16) #11, !srcloc !117
  %asmresult1.i = extractvalue { i64, i64 } %19, 1
  br label %if.end221

if.else216:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call218 = tail call i64 @int_pow(i64 noundef 10, i32 noundef %conv10) #7
  %mul219 = mul i64 %call218, %16
  br label %if.end221

if.end221:                                        ; preds = %if.else216, %if.else210, %if.then204, %if.then4
  %time_ns.0 = phi i64 [ %mul219, %if.else216 ], [ %14, %if.then4 ], [ %conv209, %if.then204 ], [ %asmresult1.i, %if.else210 ]
  %indio_dev = getelementptr i8, ptr %nb, i32 -36
  %20 = ptrtoint ptr %indio_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %indio_dev, align 4
  %iio_buf222 = getelementptr i8, ptr %nb, i32 -32
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %scan_timestamp.i, align 8, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end221.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end221.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %21, i32 0, i32 4
  %24 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %25, 3
  %sub.i327 = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %iio_buf222, i32 %sub.i327
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %time_ns.0, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end221.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %21, ptr noundef %iio_buf222) #7
  br label %cleanup

cleanup:                                          ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %iio_push_to_buffers_with_timestamp.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @int_pow(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_iio_read_raw(ptr noundef %iio_dev, ptr nocapture noundef readonly %ch, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %readings.i = alloca [3 x %struct.scmi_sensor_reading], align 8
  %sensor_config.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 12, label %sw.bb14
    i32 0, label %sw.bb20
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %sensor_info = getelementptr inbounds %struct.scmi_iio_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %sensor_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sensor_info, align 8
  %axis = getelementptr inbounds %struct.scmi_sensor_info, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %axis to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %axis, align 4
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %ch, i32 0, i32 4
  %7 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scan_index, align 4
  %scale1 = getelementptr %struct.scmi_sensor_axis_info, ptr %6, i32 %8, i32 2
  %9 = ptrtoint ptr %scale1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scale1, align 8
  %sext = shl i32 %10, 24
  %conv2 = ashr exact i32 %sext, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext)
  %cmp = icmp slt i32 %sext, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %val, align 4
  %sub = sub nsw i32 0, %conv2
  %call9 = tail call i64 @int_pow(i64 noundef 10, i32 noundef %sub) #7
  %conv10 = trunc i64 %call9 to i32
  %12 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv10, ptr %val2, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i64 @int_pow(i64 noundef 10, i32 noundef %conv2) #7
  %conv13 = trunc i64 %call12 to i32
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv13, ptr %val, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sensor_config.i) #7
  %14 = ptrtoint ptr %sensor_config.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %sensor_config.i, align 4, !annotation !113
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %config_get.i = getelementptr inbounds %struct.scmi_sensor_proto_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %config_get.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config_get.i, align 4
  %ph.i = getelementptr inbounds %struct.scmi_iio_priv, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %ph.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ph.i, align 4
  %sensor_info.i = getelementptr inbounds %struct.scmi_iio_priv, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %sensor_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sensor_info.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %call1.i = call i32 %18(ptr noundef %20, i32 noundef %24, ptr noundef nonnull %sensor_config.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.end17.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 2
  %25 = ptrtoint ptr %sensor_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sensor_info.i, align 8
  %name.i = getelementptr inbounds %struct.scmi_sensor_info, ptr %26, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.22, ptr noundef %name.i, i32 noundef %call1.i) #10
  br label %scmi_iio_get_odr_val.exit

do.end17.i:                                       ; preds = %sw.bb14
  %27 = ptrtoint ptr %sensor_config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sensor_config.i, align 4
  %shr.i = lshr i32 %28, 16
  %mul.i = mul i32 %shr.i, 1000000000
  %and34.i = lshr i32 %28, 11
  %shr35.i = and i32 %and34.i, 31
  %29 = and i32 %28, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool37.not.i = icmp eq i32 %29, 0
  %masksel.i = select i1 %tobool37.not.i, i32 0, i32 -32
  %spec.select.i = or i32 %masksel.i, %shr35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp.i = icmp slt i32 %spec.select.i, 0
  br i1 %cmp.i, label %cond.end.i, label %if.else244.i

cond.end.i:                                       ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub nsw i32 0, %spec.select.i
  %call46.i = call i64 @int_pow(i64 noundef 10, i32 noundef %sub.i) #7
  %conv47.i = trunc i64 %call46.i to i32
  %div236.i = udiv i32 %mul.i, %conv47.i
  br label %if.else385.i.i

if.else244.i:                                     ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %call245.i = call i64 @int_pow(i64 noundef 10, i32 noundef %spec.select.i) #7
  %30 = trunc i64 %call245.i to i32
  %extract.t53 = mul i32 %mul.i, %30
  br label %if.else385.i.i

if.else385.i.i:                                   ; preds = %if.else244.i, %cond.end.i
  %sensor_update_interval.0.i.off0 = phi i32 [ %div236.i, %cond.end.i ], [ %extract.t53, %if.else244.i ]
  %sensor_update_interval.0.i.off0.frozen = freeze i32 %sensor_update_interval.0.i.off0
  %div175.i.i = udiv i32 1000000000, %sensor_update_interval.0.i.off0.frozen
  %31 = mul i32 %div175.i.i, %sensor_update_interval.0.i.off0.frozen
  %rem173.i.i.decomposed = sub i32 1000000000, %31
  %conv183.i.i = zext i32 %rem173.i.i.decomposed to i64
  %mul184.i.i = mul nuw nsw i64 %conv183.i.i, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul184.i.i)
  %cmp387.i.i = icmp ult i64 %mul184.i.i, 4294967296
  br i1 %cmp387.i.i, label %if.then395.i.i, label %if.else401.i.i, !prof !116

if.then395.i.i:                                   ; preds = %if.else385.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv396.i.i = trunc i64 %mul184.i.i to i32
  %div399.i.i = udiv i32 %conv396.i.i, %sensor_update_interval.0.i.off0
  br label %convert_ns_to_freq.exit.i

if.else401.i.i:                                   ; preds = %if.else385.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sensor_update_interval.0.i.off0, i64 %mul184.i.i) #11, !srcloc !117
  %asmresult1.i606.i.i = extractvalue { i64, i64 } %32, 1
  %extract.t391.i = trunc i64 %asmresult1.i606.i.i to i32
  br label %convert_ns_to_freq.exit.i

convert_ns_to_freq.exit.i:                        ; preds = %if.else401.i.i, %if.then395.i.i
  %div381.sink.i.off0.i = phi i32 [ %div399.i.i, %if.then395.i.i ], [ %extract.t391.i, %if.else401.i.i ]
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div175.i.i, ptr %val, align 4
  %34 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div381.sink.i.off0.i, ptr %val2, align 4
  br label %scmi_iio_get_odr_val.exit

scmi_iio_get_odr_val.exit:                        ; preds = %convert_ns_to_freq.exit.i, %do.end.i
  %spec.select = phi i32 [ %call1.i, %do.end.i ], [ 2, %convert_ns_to_freq.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sensor_config.i) #7
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  %call21 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %iio_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %sw.bb20.cleanup_crit_edge

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %sw.bb20
  %35 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %readings.i) #7
  %37 = call ptr @memset(ptr %readings.i, i32 255, i32 48)
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %36, align 8
  %config_set.i = getelementptr inbounds %struct.scmi_sensor_proto_ops, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %config_set.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %config_set.i, align 4
  %ph.i47 = getelementptr inbounds %struct.scmi_iio_priv, ptr %36, i32 0, i32 1
  %42 = ptrtoint ptr %ph.i47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ph.i47, align 4
  %sensor_info.i48 = getelementptr inbounds %struct.scmi_iio_priv, ptr %36, i32 0, i32 2
  %44 = ptrtoint ptr %sensor_info.i48 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sensor_info.i48, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %call13.i = tail call i32 %41(ptr noundef %43, i32 noundef %47, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i49 = icmp eq i32 %call13.i, 0
  br i1 %tobool.not.i49, label %if.end.i, label %do.end16.i

do.end16.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i50 = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 2
  %48 = ptrtoint ptr %sensor_info.i48 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sensor_info.i48, align 8
  %name.i51 = getelementptr inbounds %struct.scmi_sensor_info, ptr %49, i32 0, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i50, ptr noundef nonnull @.str.24, ptr noundef %name.i51, i32 noundef %call13.i) #10
  br label %scmi_iio_read_channel_data.exit

if.end.i:                                         ; preds = %if.end24
  %50 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %36, align 8
  %reading_get_timestamped.i = getelementptr inbounds %struct.scmi_sensor_proto_ops, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %reading_get_timestamped.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reading_get_timestamped.i, align 4
  %54 = ptrtoint ptr %ph.i47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ph.i47, align 4
  %56 = ptrtoint ptr %sensor_info.i48 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sensor_info.i48, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %num_axis.i = getelementptr inbounds %struct.scmi_sensor_info, ptr %57, i32 0, i32 8
  %60 = ptrtoint ptr %num_axis.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_axis.i, align 8
  %conv.i52 = trunc i32 %61 to i8
  %call24.i = call i32 %53(ptr noundef %55, i32 noundef %59, i8 noundef zeroext %conv.i52, ptr noundef nonnull %readings.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %do.end49.i, label %do.end29.i

do.end29.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev30.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 2
  %62 = ptrtoint ptr %sensor_info.i48 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sensor_info.i48, align 8
  %name32.i = getelementptr inbounds %struct.scmi_sensor_info, ptr %63, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30.i, ptr noundef nonnull @.str.27, ptr noundef %name32.i, i32 noundef %call24.i) #10
  br label %scmi_iio_read_channel_data.exit

do.end49.i:                                       ; preds = %if.end.i
  %64 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %36, align 8
  %config_set52.i = getelementptr inbounds %struct.scmi_sensor_proto_ops, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %config_set52.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %config_set52.i, align 4
  %68 = ptrtoint ptr %ph.i47 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ph.i47, align 4
  %70 = ptrtoint ptr %sensor_info.i48 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sensor_info.i48, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 8
  %call56.i = call i32 %67(ptr noundef %69, i32 noundef %73, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.end66.i, label %do.end61.i

do.end61.i:                                       ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev62.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 2
  %74 = ptrtoint ptr %sensor_info.i48 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sensor_info.i48, align 8
  %name64.i = getelementptr inbounds %struct.scmi_sensor_info, ptr %75, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev62.i, ptr noundef nonnull @.str.30, ptr noundef %name64.i, i32 noundef %call56.i) #10
  br label %scmi_iio_read_channel_data.exit

if.end66.i:                                       ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  %scan_index.i = getelementptr inbounds %struct.iio_chan_spec, ptr %ch, i32 0, i32 4
  %76 = ptrtoint ptr %scan_index.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %scan_index.i, align 4
  %arrayidx.i = getelementptr [3 x %struct.scmi_sensor_reading], ptr %readings.i, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx.i, align 8
  %conv67.i = trunc i64 %79 to i32
  %80 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv67.i, ptr %val, align 4
  %81 = load i32, ptr %scan_index.i, align 4
  %arrayidx69.i = getelementptr [3 x %struct.scmi_sensor_reading], ptr %readings.i, i32 0, i32 %81
  %82 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx69.i, align 8
  %84 = lshr i64 %83, 32
  %conv72.i = trunc i64 %84 to i32
  %85 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %conv72.i, ptr %val2, align 4
  br label %scmi_iio_read_channel_data.exit

scmi_iio_read_channel_data.exit:                  ; preds = %if.end66.i, %do.end61.i, %do.end29.i, %do.end16.i
  %retval.0.i = phi i32 [ %call13.i, %do.end16.i ], [ %call24.i, %do.end29.i ], [ %call56.i, %do.end61.i ], [ 6, %if.end66.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %readings.i) #7
  call void @iio_device_release_direct_mode(ptr noundef %iio_dev) #7
  br label %cleanup

cleanup:                                          ; preds = %scmi_iio_read_channel_data.exit, %sw.bb20.cleanup_crit_edge, %scmi_iio_get_odr_val.exit, %if.end, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %scmi_iio_read_channel_data.exit ], [ %spec.select, %scmi_iio_get_odr_val.exit ], [ 10, %if.then ], [ 1, %if.end ], [ %call21, %sw.bb20.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scmi_iio_read_avail(ptr nocapture noundef readonly %iio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cond = icmp eq i32 %mask, 12
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %freq_avail = getelementptr inbounds %struct.scmi_iio_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %freq_avail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %freq_avail, align 4
  %4 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %vals, align 4
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %type, align 4
  %sensor_info = getelementptr inbounds %struct.scmi_iio_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %sensor_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sensor_info, align 8
  %count = getelementptr inbounds %struct.scmi_sensor_info, ptr %7, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %mul = shl i32 %9, 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %length, align 4
  %11 = load ptr, ptr %sensor_info, align 8
  %intervals2 = getelementptr inbounds %struct.scmi_sensor_info, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %intervals2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %intervals2, align 8, !range !115
  %14 = zext i8 %13 to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_iio_write_raw(ptr noundef %iio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %sensor_config.i = alloca i32, align 4
  %buf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cond = icmp eq i32 %mask, 12
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mlock = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #7
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sensor_config.i) #7
  %2 = ptrtoint ptr %sensor_config.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sensor_config.i, align 4, !annotation !113
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #7
  %3 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %config_get.i = getelementptr inbounds %struct.scmi_sensor_proto_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %config_get.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config_get.i, align 4
  %ph.i = getelementptr inbounds %struct.scmi_iio_priv, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %ph.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ph.i, align 4
  %sensor_info.i = getelementptr inbounds %struct.scmi_iio_priv, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %sensor_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sensor_info.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %call1.i = call i32 %7(ptr noundef %9, i32 noundef %13, ptr noundef nonnull %sensor_config.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end189.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 2
  %14 = ptrtoint ptr %sensor_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sensor_info.i, align 8
  %name.i = getelementptr inbounds %struct.scmi_sensor_info, ptr %15, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.22, ptr noundef %name.i, i32 noundef %call1.i) #10
  br label %scmi_iio_set_odr_val.exit

if.end189.i:                                      ; preds = %sw.bb
  %mul.i = mul i32 %val, 1000000
  %add.i = add i32 %mul.i, %val2
  %conv.i = zext i32 %add.i to i64
  %mul3.i = mul nuw nsw i64 %conv.i, 65535
  %16 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul3.i) #11, !srcloc !118
  %17 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul3.i, i64 %16, i32 0) #11, !srcloc !119
  %asmresult10.i.i = extractvalue { i64, i32 } %17, 0
  %div169730.i = lshr i64 %asmresult10.i.i, 18
  %call192.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 32, ptr noundef nonnull @.str.33, i64 noundef %div169730.i) #7
  %sub193.i = add i32 %call192.i, -1
  %call196.i = call i64 @int_pow(i64 noundef 10, i32 noundef %sub193.i) #7
  %mul197.i = mul i64 %call196.i, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul197.i)
  %cmp400.i = icmp ult i64 %mul197.i, 4294967296
  br i1 %cmp400.i, label %if.then408.i, label %if.else414.i, !prof !116

if.then408.i:                                     ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv409.i = trunc i64 %mul197.i to i32
  %div412.i = udiv i32 %conv409.i, %add.i
  %conv413.i = zext i32 %div412.i to i64
  br label %if.end418.i

if.else414.i:                                     ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i, i64 %mul197.i) #11, !srcloc !117
  %asmresult1.i.i = extractvalue { i64, i64 } %18, 1
  br label %if.end418.i

if.end418.i:                                      ; preds = %if.else414.i, %if.then408.i
  %sec.0.i = phi i64 [ %conv413.i, %if.then408.i ], [ %asmresult1.i.i, %if.else414.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sec.0.i)
  %cmp420.i = icmp eq i64 %sec.0.i, 0
  br i1 %cmp420.i, label %do.end425.i, label %if.end430.i

do.end425.i:                                      ; preds = %if.end418.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev426.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 2
  %19 = ptrtoint ptr %sensor_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sensor_info.i, align 8
  %name428.i = getelementptr inbounds %struct.scmi_sensor_info, ptr %20, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev426.i, ptr noundef nonnull @.str.35, ptr noundef %name428.i) #10
  br label %scmi_iio_set_odr_val.exit

if.end430.i:                                      ; preds = %if.end418.i
  %21 = ptrtoint ptr %sensor_config.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sensor_config.i, align 4
  %conv454.i = trunc i64 %sec.0.i to i32
  %shl455.i = shl i32 %conv454.i, 16
  %.masked.i = and i32 %22, 2047
  %and458.i = or i32 %.masked.i, %shl455.i
  %.neg = mul i32 %call192.i, 63488
  %shl485.i = add i32 %.neg, 2048
  %and486.i = and i32 %shl485.i, 63488
  %or487.i = or i32 %and458.i, %and486.i
  store i32 %or487.i, ptr %sensor_config.i, align 4
  %23 = ptrtoint ptr %sensor_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sensor_info.i, align 8
  %timestamped.i = getelementptr inbounds %struct.scmi_sensor_info, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %timestamped.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %timestamped.i, align 2, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool489.not.i = icmp eq i8 %26, 0
  br i1 %tobool489.not.i, label %if.end430.i.if.end509.i_crit_edge, label %if.then490.i

if.end430.i.if.end509.i_crit_edge:                ; preds = %if.end430.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end509.i

if.then490.i:                                     ; preds = %if.end430.i
  call void @__sanitizer_cov_trace_pc() #9
  %or508.i = or i32 %or487.i, 2
  %27 = ptrtoint ptr %sensor_config.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or508.i, ptr %sensor_config.i, align 4
  br label %if.end509.i

if.end509.i:                                      ; preds = %if.then490.i, %if.end430.i.if.end509.i_crit_edge
  %28 = ptrtoint ptr %sensor_config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sensor_config.i, align 4
  %and510.i = and i32 %29, -1537
  %or527.i = or i32 %and510.i, 1024
  store i32 %or527.i, ptr %sensor_config.i, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %config_set.i = getelementptr inbounds %struct.scmi_sensor_proto_ops, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %config_set.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config_set.i, align 4
  %34 = ptrtoint ptr %ph.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ph.i, align 4
  %36 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %24, align 8
  %call532.i = call i32 %33(ptr noundef %35, i32 noundef %37, i32 noundef %or527.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call532.i)
  %tobool533.not.i = icmp eq i32 %call532.i, 0
  br i1 %tobool533.not.i, label %if.end509.i.scmi_iio_set_odr_val.exit_crit_edge, label %do.end537.i

if.end509.i.scmi_iio_set_odr_val.exit_crit_edge:  ; preds = %if.end509.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_iio_set_odr_val.exit

do.end537.i:                                      ; preds = %if.end509.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev538.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 2
  %38 = ptrtoint ptr %sensor_info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sensor_info.i, align 8
  %name540.i = getelementptr inbounds %struct.scmi_sensor_info, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %sensor_config.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sensor_config.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev538.i, ptr noundef nonnull @.str.38, ptr noundef %name540.i, i32 noundef %41, i32 noundef %call532.i) #10
  br label %scmi_iio_set_odr_val.exit

scmi_iio_set_odr_val.exit:                        ; preds = %do.end537.i, %if.end509.i.scmi_iio_set_odr_val.exit_crit_edge, %do.end425.i, %do.end.i
  %retval.0.i = phi i32 [ %call1.i, %do.end.i ], [ -22, %do.end425.i ], [ %call532.i, %do.end537.i ], [ 0, %if.end509.i.scmi_iio_set_odr_val.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sensor_config.i) #7
  call void @mutex_unlock(ptr noundef %mlock) #7
  br label %cleanup

cleanup:                                          ; preds = %scmi_iio_set_odr_val.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %scmi_iio_set_odr_val.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_iio_get_raw_available(ptr nocapture noundef readonly %iio_dev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %sensor_info = getelementptr inbounds %struct.scmi_iio_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sensor_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor_info, align 8
  %axis = getelementptr inbounds %struct.scmi_sensor_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %axis to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %axis, align 4
  %extended_attrs = getelementptr inbounds %struct.scmi_sensor_axis_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %extended_attrs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %extended_attrs, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end238_crit_edge, label %if.then

entry.if.end238_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end238

if.then:                                          ; preds = %entry
  %attrs = getelementptr inbounds %struct.scmi_sensor_axis_info, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %attrs to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %attrs, align 8
  %max_range9 = getelementptr inbounds %struct.scmi_sensor_axis_info, ptr %5, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %max_range9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %max_range9, align 8
  %resolution13 = getelementptr inbounds %struct.scmi_sensor_axis_info, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %resolution13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resolution13, align 8
  %exponent17 = getelementptr inbounds %struct.scmi_sensor_axis_info, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %exponent17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %exponent17, align 4
  %scale22 = getelementptr inbounds %struct.scmi_sensor_axis_info, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %scale22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %scale22, align 8
  %sub = sub i32 %15, %17
  %sext = shl i32 %sub, 24
  %conv27 = ashr exact i32 %sext, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext)
  %cmp = icmp slt i32 %sext, 0
  br i1 %cmp, label %cond.end, label %if.else232

cond.end:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %sub34 = sub nsw i32 0, %conv27
  %call36 = tail call i64 @int_pow(i64 noundef 10, i32 noundef %sub34) #7
  %conv37 = trunc i64 %call36 to i32
  %.frozen = freeze i32 %13
  %conv37.frozen = freeze i32 %conv37
  %div222 = udiv i32 %.frozen, %conv37.frozen
  %conv223 = zext i32 %div222 to i64
  %18 = mul i32 %div222, %conv37.frozen
  %rem220.decomposed = sub i32 %.frozen, %18
  %conv230 = zext i32 %rem220.decomposed to i64
  %call231 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.41, i64 noundef %9, i64 noundef %conv223, i64 noundef %conv230, i64 noundef %11) #7
  br label %if.end238

if.else232:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %13 to i64
  %call234 = tail call i64 @int_pow(i64 noundef 10, i32 noundef %conv27) #7
  %mul235 = mul i64 %call234, %conv
  %call236 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.42, i64 noundef %9, i64 noundef %mul235, i64 noundef %11) #7
  br label %if.end238

if.end238:                                        ; preds = %if.else232, %cond.end, %entry.if.end238_crit_edge
  %len.0 = phi i32 [ %call231, %cond.end ], [ %call236, %if.else232 ], [ 0, %entry.if.end238_crit_edge ]
  ret i32 %len.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_iio_buffer_preenable(ptr noundef %iio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %sensor_info = getelementptr inbounds %struct.scmi_iio_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sensor_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor_info, align 8
  %timestamped = getelementptr inbounds %struct.scmi_sensor_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %timestamped to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %timestamped, align 2, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 3
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %config_set = getelementptr inbounds %struct.scmi_sensor_proto_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %config_set to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config_set, align 4
  %ph = getelementptr inbounds %struct.scmi_iio_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ph, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 8
  %call31 = tail call i32 %9(ptr noundef %11, i32 noundef %13, i32 noundef %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %entry.if.end38_crit_edge, label %do.end36

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

do.end36:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 2
  %14 = ptrtoint ptr %sensor_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sensor_info, align 8
  %name = getelementptr inbounds %struct.scmi_sensor_info, ptr %15, i32 0, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %call31) #10
  br label %if.end38

if.end38:                                         ; preds = %do.end36, %entry.if.end38_crit_edge
  ret i32 %call31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_iio_buffer_postdisable(ptr noundef %iio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %config_set = getelementptr inbounds %struct.scmi_sensor_proto_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %config_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config_set, align 4
  %ph = getelementptr inbounds %struct.scmi_iio_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ph, align 4
  %sensor_info = getelementptr inbounds %struct.scmi_iio_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %sensor_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sensor_info, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %call13 = tail call i32 %5(ptr noundef %7, i32 noundef %11, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end16

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 2
  %12 = ptrtoint ptr %sensor_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sensor_info, align 8
  %name = getelementptr inbounds %struct.scmi_sensor_info, ptr %13, i32 0, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef %name, i32 noundef %call13) #10
  br label %if.end

if.end:                                           ; preds = %do.end16, %entry.if.end_crit_edge
  ret i32 %call13
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !79, !80, !81, !83, !85, !87, !89, !91, !93, !94, !95, !97, !98, !99, !100, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__initcall__kmod_scmi_iio__236_722_scmi_iiodev_driver_init6, !1, !"__initcall__kmod_scmi_iio__236_722_scmi_iiodev_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 722, i32 1}
!2 = !{ptr @__exitcall_scmi_iiodev_driver_exit, !1, !"__exitcall_scmi_iiodev_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 724, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 725, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 726, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 717, i32 10}
!13 = !{ptr @scmi_iiodev_driver, !14, !"scmi_iiodev_driver", i1 false, i1 false}
!14 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 716, i32 27}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 652, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @scmi_iio_dev_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @scmi_iio_dev_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 658, i32 3}
!25 = !{ptr @scmi_iio_dev_probe.__UNIQUE_ID_ddebug235, !24, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 665, i32 4}
!28 = !{ptr @scmi_iio_dev_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @scmi_iio_dev_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 681, i32 4}
!32 = !{ptr @scmi_iio_dev_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @scmi_iio_dev_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 692, i32 4}
!36 = !{ptr @scmi_iio_dev_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @scmi_iio_dev_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 700, i32 4}
!40 = !{ptr @scmi_iio_dev_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @scmi_iio_dev_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 625, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @scmi_alloc_iiodev._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @scmi_alloc_iiodev._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @scmi_iio_info, !48, !"scmi_iio_info", i1 false, i1 false}
!48 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 362, i32 30}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 257, i32 3}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @scmi_iio_get_odr_val._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @scmi_iio_get_odr_val._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 295, i32 3}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @scmi_iio_read_channel_data._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @scmi_iio_read_channel_data._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 305, i32 3}
!61 = !{ptr @scmi_iio_read_channel_data._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @scmi_iio_read_channel_data._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 316, i32 3}
!65 = !{ptr @scmi_iio_read_channel_data._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @scmi_iio_read_channel_data._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 142, i32 3}
!69 = !{ptr @scmi_iio_set_odr_val._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @scmi_iio_set_odr_val._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 160, i32 37}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 165, i32 3}
!75 = !{ptr @scmi_iio_set_odr_val._entry.34, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @scmi_iio_set_odr_val._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 190, i32 3}
!79 = !{ptr @scmi_iio_set_odr_val._entry.37, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @scmi_iio_set_odr_val._entry_ptr.39, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 413, i32 11}
!83 = !{ptr @scmi_iio_ext_info, !84, !"scmi_iio_ext_info", i1 false, i1 false}
!84 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 411, i32 44}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 400, i32 6}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 404, i32 36}
!89 = !{ptr @scmi_iio_buffer_ops, !90, !"scmi_iio_buffer_ops", i1 false, i1 false}
!90 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 125, i32 42}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 99, i32 3}
!93 = !{ptr @scmi_iio_buffer_preenable._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @scmi_iio_buffer_preenable._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 117, i32 3}
!97 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @scmi_iio_buffer_postdisable._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @scmi_iio_buffer_postdisable._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 710, i32 26}
!102 = !{ptr @scmi_id_table, !103, !"scmi_id_table", i1 false, i1 false}
!103 = !{!"../drivers/iio/common/scmi_sensors/scmi_iio.c", i32 709, i32 36}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"auto-init"}
!114 = !{i64 2148774653, i64 2148774658, i64 2148774671, i64 2148774715, i64 2148774749, i64 2148774770}
!115 = !{i8 0, i8 2}
!116 = !{!"branch_weights", i32 2000, i32 1}
!117 = !{i64 2148000326, i64 2148000606, i64 2148000940, i64 2148001274}
!118 = !{i64 492311, i64 492338}
!119 = !{i64 493006, i64 493033, i64 493066, i64 493087, i64 493114, i64 493140}
