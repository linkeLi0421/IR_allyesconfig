; ModuleID = '/llk/IR_all_yes/drivers/iio/chemical/sunrise_co2.c_pt.bc'
source_filename = "../drivers/iio/chemical/sunrise_co2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
%struct.sunrise_calib_data = type { i16, i8, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sunrise_dev = type { ptr, ptr, %struct.mutex, i8 }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_sunrise_co2__289_533_sunrise_driver_init6 = internal global ptr @sunrise_driver_init, section ".initcall6.init", align 4
@sunrise_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @sunrise_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sunrise_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sunrise_driver_exit = internal global ptr @sunrise_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [52 x i8] c"sunrise_co2.author=Jacopo Mondi <jacopo@jmondi.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [74 x i8] c"sunrise_co2.description=Senseair Sunrise 006-0-0007 CO2 sensor IIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [50 x i8] c"sunrise_co2.file=drivers/iio/chemical/sunrise_co2\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [27 x i8] c"sunrise_co2.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sunrise_co2\00", [20 x i8] zeroinitializer }, align 32
@sunrise_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"senseair,sunrise-006-0-0007\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sunrise_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 482, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Adapter does not support required functionalities\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sunrise_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/iio/chemical/sunrise_co2.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sunrise_probe._entry_ptr = internal global ptr @sunrise_probe._entry, section ".printk_index", align 4
@sunrise_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sunrise->lock\00", [17 x i8] zeroinitializer }, align 32
@sunrise_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sunrise_regmap_bus = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @sunrise_regmap_write, ptr null, ptr null, ptr null, ptr null, ptr @sunrise_regmap_read, ptr null, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sunrise_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sunrise_co2:497:(&sunrise_regmap_config)->lock\00", [49 x i8] zeroinitializer }, align 32
@sunrise_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 499, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialize regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@sunrise_probe._entry_ptr.10 = internal global ptr @sunrise_probe._entry.8, section ".printk_index", align 4
@sunrise_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @sunrise_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sunrise_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 24, i32 0, i32 34, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @sunrise_concentration_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@sunrise_read_word._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 147, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Read word failed: reg 0x%02x (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sunrise_read_word\00", [46 x i8] zeroinitializer }, align 32
@sunrise_read_word._entry_ptr = internal global ptr @sunrise_read_word._entry, section ".printk_index", align 4
@sunrise_concentration_ext_info = internal constant { [5 x %struct.iio_chan_spec_ext_info], [60 x i8] } { [5 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.13, i32 0, ptr null, ptr @sunrise_cal_factory_write, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.14, i32 0, ptr null, ptr @sunrise_cal_background_write, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.15, i32 3, ptr @sunrise_error_status_read, ptr null, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.16, i32 3, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @sunrise_error_statuses_enum to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"calibration_factory\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"calibration_background\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"error_status\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error_status_available\00", [41 x i8] zeroinitializer }, align 32
@sunrise_error_statuses_enum = internal constant { %struct.iio_enum, [16 x i8] } { %struct.iio_enum { ptr @sunrise_error_statuses, i32 10, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@calib_data = internal constant { [2 x %struct.sunrise_calib_data], [16 x i8] } { [2 x %struct.sunrise_calib_data] [%struct.sunrise_calib_data { i16 31746, i8 4, ptr @.str.25 }, %struct.sunrise_calib_data { i16 31750, i8 32, ptr @.str.26 }], [16 x i8] zeroinitializer }, align 32
@sunrise_calibrate.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sunrise_calibrate\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s in progress\0A\00", [16 x i8] zeroinitializer }, align 32
@sunrise_write_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 166, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Write byte failed: reg 0x%02x (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sunrise_write_byte\00", [45 x i8] zeroinitializer }, align 32
@sunrise_write_byte._entry_ptr = internal global ptr @sunrise_write_byte._entry, section ".printk_index", align 4
@sunrise_write_word._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 182, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Write word failed: reg 0x%02x (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sunrise_write_word\00", [45 x i8] zeroinitializer }, align 32
@sunrise_write_word._entry_ptr = internal global ptr @sunrise_write_word._entry, section ".printk_index", align 4
@sunrise_read_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 129, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Read byte failed: reg 0x%02x (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sunrise_read_byte\00", [46 x i8] zeroinitializer }, align 32
@sunrise_read_byte._entry_ptr = internal global ptr @sunrise_read_byte._entry, section ".printk_index", align 4
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"factory_calibration\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"background_calibration\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@sunrise_error_statuses = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"error_fatal\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"error_i2c\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"error_algorithm\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"error_calibration\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error_self_diagnostic\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"error_out_of_range\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"error_memory\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error_no_measurement\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"error_low_voltage\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error_measurement_timeout\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 24]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 24]
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"sunrise_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 526, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 528, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"sunrise_of_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 520, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 481, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 492, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"sunrise_regmap_bus\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 464, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant [22 x i8] c"sunrise_regmap_config\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 469, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 496, i32 20 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 499, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [13 x i8] c"sunrise_info\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 460, i32 30 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"sunrise_channels\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 379, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 147, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [31 x i8] c"sunrise_concentration_ext_info\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 351, i32 44 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 354, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 359, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 366, i32 11 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 371, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant [28 x i8] c"sunrise_error_statuses_enum\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 315, i32 30 }
@___asan_gen_.124 = private unnamed_addr constant [11 x i8] c"calib_data\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 198, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 227, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 166, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 182, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 129, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 202, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 207, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 341, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant [23 x i8] c"sunrise_error_statuses\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 302, i32 27 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 303, i32 26 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 304, i32 24 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 305, i32 30 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 306, i32 32 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 307, i32 36 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 308, i32 33 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 309, i32 27 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 310, i32 35 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 311, i32 32 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private constant [38 x i8] c"../drivers/iio/chemical/sunrise_co2.c\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 312, i32 40 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_sunrise_driver_exit, ptr @__initcall__kmod_sunrise_co2__289_533_sunrise_driver_init6, ptr @sunrise_driver_exit, ptr @sunrise_probe._entry, ptr @sunrise_probe._entry.8, ptr @sunrise_probe._entry_ptr, ptr @sunrise_probe._entry_ptr.10, ptr @sunrise_read_byte._entry, ptr @sunrise_read_byte._entry_ptr, ptr @sunrise_read_word._entry, ptr @sunrise_read_word._entry_ptr, ptr @sunrise_write_byte._entry, ptr @sunrise_write_byte._entry_ptr, ptr @sunrise_write_word._entry, ptr @sunrise_write_word._entry_ptr, ptr @sunrise_driver, ptr @.str, ptr @sunrise_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sunrise_probe.__key, ptr @.str.6, ptr @sunrise_probe._key, ptr @sunrise_regmap_bus, ptr @sunrise_regmap_config, ptr @.str.7, ptr @.str.9, ptr @sunrise_info, ptr @sunrise_channels, ptr @.str.11, ptr @.str.12, ptr @sunrise_concentration_ext_info, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @sunrise_error_statuses_enum, ptr @calib_data, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @sunrise_error_statuses, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrise_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrise_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrise_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrise_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrise_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrise_regmap_bus to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrise_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrise_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrise_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrise_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrise_read_word._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrise_concentration_ext_info to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrise_error_statuses_enum to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calib_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrise_write_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrise_write_word._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrise_read_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrise_error_statuses to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sunrise_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sunrise_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sunrise_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @sunrise_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunrise_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 51904512
  call void @__sanitizer_cov_trace_const_cmp4(i32 51904512, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 51904512
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 104) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %7, align 4
  %lock = getelementptr inbounds %struct.sunrise_dev, ptr %7, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @sunrise_probe.__key) #5
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %driver_data.i.i, align 4
  %call12 = tail call ptr @__devm_regmap_init(ptr noundef %dev1, ptr noundef nonnull @sunrise_regmap_bus, ptr noundef %client, ptr noundef nonnull @sunrise_regmap_config, ptr noundef nonnull @sunrise_probe._key, ptr noundef nonnull @.str.7) #5
  %regmap = getelementptr inbounds %struct.sunrise_dev, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call12, ptr %regmap, align 4
  %cmp.i53 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53, label %do.end18, label %if.end22

do.end18:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end5
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 8
  %algo.i.i54 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %algo.i.i54 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %algo.i.i54, align 8
  %functionality.i.i55 = getelementptr inbounds %struct.i2c_algorithm, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %functionality.i.i55 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %functionality.i.i55, align 4
  %call.i.i56 = tail call i32 %19(ptr noundef %15) #5
  %20 = and i32 %call.i.i56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool25.not = icmp eq i32 %20, 0
  br i1 %tobool25.not, label %if.end22.if.end27_crit_edge, label %if.then26

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %ignore_nak = getelementptr inbounds %struct.sunrise_dev, ptr %7, i32 0, i32 3
  %21 = ptrtoint ptr %ignore_nak to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %ignore_nak, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end22.if.end27_crit_edge
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %22 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sunrise_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %23 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %24 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @sunrise_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %25 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %num_channels, align 4
  %26 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %call2, align 8
  %call29 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call2, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end18, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %13, %do.end18 ], [ %call29, %if.end27 ], [ -95, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunrise_regmap_write(ptr nocapture noundef readonly %context, ptr nocapture noundef readonly %val_buf, i32 noundef %count) #2 align 64 {
entry:
  %data = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dec = add i32 %count, -1
  %2 = call ptr @memset(ptr %data, i32 0, i32 34)
  %conv = trunc i32 %dec to i8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %data, align 2
  %arrayidx1 = getelementptr inbounds [34 x i8], ptr %data, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %val_buf, i32 1
  %4 = call ptr @memcpy(ptr %arrayidx1, ptr %add.ptr, i32 %dec)
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 3
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr, align 2
  %ignore_nak = getelementptr inbounds %struct.sunrise_dev, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %ignore_nak to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ignore_nak, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  %conv4 = select i1 %tobool2.not, i16 0, i16 4096
  %call5 = call i32 @__i2c_smbus_xfer(ptr noundef %6, i16 noundef zeroext %8, i16 noundef zeroext %conv4, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 2, ptr noundef nonnull %data) #5
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1500, i32 noundef 2) #5
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr, align 2
  %15 = ptrtoint ptr %context to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %context, align 8
  %17 = ptrtoint ptr %val_buf to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val_buf, align 1
  %call9 = call i32 @__i2c_smbus_xfer(ptr noundef %12, i16 noundef zeroext %14, i16 noundef zeroext %16, i8 noundef zeroext 0, i8 noundef zeroext %18, i32 noundef 8, ptr noundef nonnull %data) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunrise_regmap_read(ptr nocapture noundef readonly %context, ptr nocapture noundef readonly %reg_buf, i32 noundef %reg_size, ptr nocapture noundef writeonly %val_buf, i32 noundef %val_size) #2 align 64 {
entry:
  %data = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reg_size)
  %cmp.not = icmp ne i32 %reg_size, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val_size)
  %tobool.not = icmp eq i32 %val_size, 0
  %or.cond = or i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %data, i32 0, i32 34)
  %conv = trunc i32 %val_size to i8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %data, align 2
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 3
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr, align 2
  %ignore_nak = getelementptr inbounds %struct.sunrise_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %ignore_nak to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ignore_nak, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  %conv3 = select i1 %tobool1.not, i16 0, i16 4096
  %call4 = call i32 @__i2c_smbus_xfer(ptr noundef %5, i16 noundef zeroext %7, i16 noundef zeroext %conv3, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 2, ptr noundef nonnull %data) #5
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1500, i32 noundef 2) #5
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr, align 2
  %14 = ptrtoint ptr %context to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %context, align 8
  %16 = ptrtoint ptr %reg_buf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg_buf, align 1
  %call8 = call i32 @__i2c_smbus_xfer(ptr noundef %11, i16 noundef zeroext %13, i16 noundef zeroext %15, i8 noundef zeroext 1, i8 noundef zeroext %17, i32 noundef 8, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx13 = getelementptr inbounds [34 x i8], ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data, align 2
  %conv15 = zext i8 %19 to i32
  %20 = call ptr @memcpy(ptr %val_buf, ptr %arrayidx13, i32 %conv15)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunrise_read_raw(ptr nocapture noundef readonly %iio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %be_val.i32 = alloca i16, align 2
  %be_val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %4, label %sw.bb.cleanup_crit_edge [
    i32 24, label %sw.bb1
    i32 9, label %sw.bb4
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %lock = getelementptr inbounds %struct.sunrise_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %be_val.i) #5
  %8 = ptrtoint ptr %be_val.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %be_val.i, align 2, !annotation !118
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %9 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock_ops.i.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void %14(ptr noundef %10, i32 noundef 2) #5
  %regmap.i = getelementptr inbounds %struct.sunrise_dev, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %16, i32 noundef 6, ptr noundef nonnull %be_val.i, i32 noundef 2) #5
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i14.i = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %lock_ops.i14.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock_ops.i14.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %unlock_bus.i.i, align 4
  call void %22(ptr noundef %18, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %sunrise_read_word.exit

sunrise_read_word.exit:                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.11, i32 noundef 6, i32 noundef %call.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %be_val.i) #5
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %be_val.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %be_val.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %be_val.i) #5
  call void @mutex_unlock(ptr noundef %lock) #5
  %conv = zext i16 %24 to i32
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb
  %lock5 = getelementptr inbounds %struct.sunrise_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock5, i32 noundef 0) #5
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %be_val.i32) #5
  %28 = ptrtoint ptr %be_val.i32 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %be_val.i32, align 2, !annotation !118
  %adapter.i33 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 3
  %29 = ptrtoint ptr %adapter.i33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter.i33, align 8
  %lock_ops.i.i34 = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %lock_ops.i.i34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lock_ops.i.i34, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  tail call void %34(ptr noundef %30, i32 noundef 2) #5
  %regmap.i35 = getelementptr inbounds %struct.sunrise_dev, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %regmap.i35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i35, align 4
  %call.i36 = call i32 @regmap_bulk_read(ptr noundef %36, i32 noundef 8, ptr noundef nonnull %be_val.i32, i32 noundef 2) #5
  %37 = ptrtoint ptr %adapter.i33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter.i33, align 8
  %lock_ops.i14.i37 = getelementptr inbounds %struct.i2c_adapter, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %lock_ops.i14.i37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lock_ops.i14.i37, align 8
  %unlock_bus.i.i38 = getelementptr inbounds %struct.i2c_lock_operations, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %unlock_bus.i.i38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %unlock_bus.i.i38, align 4
  call void %42(ptr noundef %38, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool.not.i39 = icmp eq i32 %call.i36, 0
  br i1 %tobool.not.i39, label %if.end10, label %sunrise_read_word.exit43

sunrise_read_word.exit43:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %dev2.i40 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i40, ptr noundef nonnull @.str.11, i32 noundef 8, i32 noundef %call.i36) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %be_val.i32) #5
  call void @mutex_unlock(ptr noundef %lock5) #5
  br label %cleanup

if.end10:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %be_val.i32 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %be_val.i32, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %be_val.i32) #5
  call void @mutex_unlock(ptr noundef %lock5) #5
  %conv11 = zext i16 %44 to i32
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv11, ptr %val, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %46 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chan, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %47, label %sw.bb12.cleanup_crit_edge [
    i32 24, label %sw.bb14
    i32 9, label %sw.bb15
  ]

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb14:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %val, align 4
  %50 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 10000, ptr %val2, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 10, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb15, %sw.bb14, %sw.bb12.cleanup_crit_edge, %if.end10, %sunrise_read_word.exit43, %if.end, %sunrise_read_word.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb15 ], [ 10, %sw.bb14 ], [ 1, %if.end10 ], [ 1, %if.end ], [ %call.i, %sunrise_read_word.exit ], [ %call.i36, %sunrise_read_word.exit43 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb12.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunrise_cal_factory_write(ptr nocapture noundef readonly %iiodev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iiodev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #5
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %enable, align 1, !annotation !118
  %call1 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enable, align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.sunrise_dev, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %call5 = call fastcc i32 @sunrise_calibrate(ptr noundef %1, ptr noundef nonnull @calib_data)
  call void @mutex_unlock(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  %len.call5 = select i1 %tobool7.not, i32 %len, i32 %call5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %len, %if.end.cleanup_crit_edge ], [ %len.call5, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunrise_cal_background_write(ptr nocapture noundef readonly %iiodev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iiodev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #5
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %enable, align 1, !annotation !118
  %call1 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enable, align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.sunrise_dev, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %call5 = call fastcc i32 @sunrise_calibrate(ptr noundef %1, ptr noundef getelementptr inbounds ([2 x %struct.sunrise_calib_data], ptr @calib_data, i32 0, i32 1))
  call void @mutex_unlock(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  %len.call5 = select i1 %tobool7.not, i32 %len, i32 %call5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %len, %if.end.cleanup_crit_edge ], [ %len.call5, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunrise_error_status_read(ptr nocapture noundef readonly %iiodev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr noundef %buf) #2 align 64 {
entry:
  %be_val.i = alloca i16, align 2
  %errors = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iiodev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %errors) #5
  %lock = getelementptr inbounds %struct.sunrise_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %be_val.i) #5
  %4 = ptrtoint ptr %be_val.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %be_val.i, align 2, !annotation !118
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock_ops.i.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void %10(ptr noundef %6, i32 noundef 2) #5
  %regmap.i = getelementptr inbounds %struct.sunrise_dev, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %be_val.i, i32 noundef 2) #5
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i14.i = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %lock_ops.i14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock_ops.i14.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %unlock_bus.i.i, align 4
  call void %18(ptr noundef %14, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef %call.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %be_val.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = ptrtoint ptr %be_val.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %be_val.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %be_val.i) #5
  %conv = zext i16 %20 to i32
  %21 = ptrtoint ptr %errors to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %errors, align 4
  %call3 = call i32 @_find_next_bit_be(ptr noundef nonnull %errors, i32 noundef 10, i32 noundef 0) #5
  %conv535 = and i32 %call3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %conv535)
  %cmp36 = icmp ult i32 %conv535, 10
  br i1 %cmp36, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %conv538 = phi i32 [ %conv5, %for.body.for.body_crit_edge ], [ %conv535, %if.end.for.body_crit_edge ]
  %len.037 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [10 x ptr], ptr @sunrise_error_statuses, i32 0, i32 %conv538
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %call7 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.037, ptr noundef nonnull @.str.27, ptr noundef %23) #5
  %add = add i32 %call7, %len.037
  %add9 = add nuw nsw i32 %conv538, 1
  %call10 = call i32 @_find_next_bit_be(ptr noundef nonnull %errors, i32 noundef 10, i32 noundef %add9) #5
  %conv5 = and i32 %call10, 255
  %cmp = icmp ult i32 %conv5, 10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool12.not = icmp eq i32 %add, 0
  br i1 %tobool12.not, label %for.end.cleanup_crit_edge, label %if.then13

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %add, -1
  %arrayidx14 = getelementptr i8, ptr %buf, i32 %sub
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 10, ptr %arrayidx14, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %add, %if.then13 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %errors) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_available_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sunrise_calibrate(ptr nocapture noundef readonly %sunrise, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  %val.i80 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %be_data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sunrise to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sunrise, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock_ops.i.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void %7(ptr noundef %3, i32 noundef 2) #5
  %regmap.i = getelementptr inbounds %struct.sunrise_dev, ptr %sunrise, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 129, i32 noundef 0) #5
  %10 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i1.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %lock_ops.i1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock_ops.i1.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %15(ptr noundef %11, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %sunrise_write_byte.exit

sunrise_write_byte.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.19, i32 noundef 129, i32 noundef %call.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data, align 4
  %18 = ptrtoint ptr %sunrise to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sunrise, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %be_data.i) #5
  %20 = ptrtoint ptr %be_data.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %17, ptr %be_data.i, align 2
  %adapter.i60 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 3
  %21 = ptrtoint ptr %adapter.i60 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter.i60, align 8
  %lock_ops.i.i61 = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %lock_ops.i.i61 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lock_ops.i.i61, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  tail call void %26(ptr noundef %22, i32 noundef 2) #5
  %27 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i, align 4
  %call.i63 = call i32 @regmap_bulk_write(ptr noundef %28, i32 noundef 130, ptr noundef nonnull %be_data.i, i32 noundef 2) #5
  %29 = ptrtoint ptr %adapter.i60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter.i60, align 8
  %lock_ops.i1.i64 = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %lock_ops.i1.i64 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lock_ops.i1.i64, align 8
  %unlock_bus.i.i65 = getelementptr inbounds %struct.i2c_lock_operations, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %unlock_bus.i.i65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %unlock_bus.i.i65, align 4
  call void %34(ptr noundef %30, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool.not.i66 = icmp eq i32 %call.i63, 0
  br i1 %tobool.not.i66, label %do.body, label %sunrise_write_word.exit

sunrise_write_word.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev2.i67 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i67, ptr noundef nonnull @.str.21, i32 noundef 130, i32 noundef %call.i63) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %be_data.i) #5
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %be_data.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunrise_calibrate.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunrise_calibrate, %if.then9)) #5
          to label %do.end [label %if.then9], !srcloc !119

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %sunrise to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sunrise, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  %name = getelementptr inbounds %struct.sunrise_calib_data, ptr %data, i32 0, i32 2
  %37 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sunrise_calibrate.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %38) #5
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %call11 = call i64 @ktime_get() #5
  %add.i = add i64 %call11, 30000000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 235) #5
  %bit = getelementptr inbounds %struct.sunrise_calib_data, ptr %data, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.then37, %do.end
  %39 = ptrtoint ptr %sunrise to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sunrise, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %41 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %val.i, align 4, !annotation !118
  %adapter.i69 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 3
  %42 = ptrtoint ptr %adapter.i69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter.i69, align 8
  %lock_ops.i.i70 = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %lock_ops.i.i70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lock_ops.i.i70, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  call void %47(ptr noundef %43, i32 noundef 2) #5
  %48 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i, align 4
  %call.i72 = call i32 @regmap_read(ptr noundef %49, i32 noundef 129, ptr noundef nonnull %val.i) #5
  %50 = ptrtoint ptr %adapter.i69 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adapter.i69, align 8
  %lock_ops.i1.i73 = getelementptr inbounds %struct.i2c_adapter, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %lock_ops.i1.i73 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lock_ops.i1.i73, align 8
  %unlock_bus.i.i74 = getelementptr inbounds %struct.i2c_lock_operations, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %unlock_bus.i.i74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %unlock_bus.i.i74, align 4
  call void %55(ptr noundef %51, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool.not.i75 = icmp eq i32 %call.i72, 0
  br i1 %tobool.not.i75, label %if.end.i, label %do.end.i77

do.end.i77:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %dev2.i76 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i76, ptr noundef nonnull @.str.23, i32 noundef 129, i32 noundef %call.i72) #8
  br label %sunrise_read_byte.exit

if.end.i:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val.i, align 4
  br label %sunrise_read_byte.exit

sunrise_read_byte.exit:                           ; preds = %if.end.i, %do.end.i77
  %retval.0.i78 = phi i32 [ %call.i72, %do.end.i77 ], [ %57, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %58 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bit, align 2
  %conv = zext i8 %59 to i32
  %and = and i32 %retval.0.i78, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %land.lhs.true, label %sunrise_read_byte.exit.for.end_crit_edge

sunrise_read_byte.exit.for.end_crit_edge:         ; preds = %sunrise_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true:                                    ; preds = %sunrise_read_byte.exit
  %call29 = call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call29, %add.i
  br i1 %cmp3.i, label %if.then33, label %if.then37

if.then33:                                        ; preds = %land.lhs.true
  %60 = ptrtoint ptr %sunrise to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sunrise, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i80) #5
  %62 = ptrtoint ptr %val.i80 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %val.i80, align 4, !annotation !118
  %adapter.i81 = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 3
  %63 = ptrtoint ptr %adapter.i81 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adapter.i81, align 8
  %lock_ops.i.i82 = getelementptr inbounds %struct.i2c_adapter, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %lock_ops.i.i82 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lock_ops.i.i82, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  call void %68(ptr noundef %64, i32 noundef 2) #5
  %69 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap.i, align 4
  %call.i84 = call i32 @regmap_read(ptr noundef %70, i32 noundef 129, ptr noundef nonnull %val.i80) #5
  %71 = ptrtoint ptr %adapter.i81 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %adapter.i81, align 8
  %lock_ops.i1.i85 = getelementptr inbounds %struct.i2c_adapter, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %lock_ops.i1.i85 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lock_ops.i1.i85, align 8
  %unlock_bus.i.i86 = getelementptr inbounds %struct.i2c_lock_operations, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %unlock_bus.i.i86 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %unlock_bus.i.i86, align 4
  call void %76(ptr noundef %72, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool.not.i87 = icmp eq i32 %call.i84, 0
  br i1 %tobool.not.i87, label %if.end.i90, label %do.end.i89

do.end.i89:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  %dev2.i88 = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i88, ptr noundef nonnull @.str.23, i32 noundef 129, i32 noundef %call.i84) #8
  br label %sunrise_read_byte.exit92

if.end.i90:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %val.i80 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %val.i80, align 4
  br label %sunrise_read_byte.exit92

sunrise_read_byte.exit92:                         ; preds = %if.end.i90, %do.end.i89
  %retval.0.i91 = phi i32 [ %call.i84, %do.end.i89 ], [ %78, %if.end.i90 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i80) #5
  br label %for.end

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @usleep_range_state(i32 noundef 50001, i32 noundef 200000, i32 noundef 2) #5
  br label %for.cond

for.end:                                          ; preds = %sunrise_read_byte.exit92, %sunrise_read_byte.exit.for.end_crit_edge
  %status.0 = phi i32 [ %retval.0.i91, %sunrise_read_byte.exit92 ], [ %retval.0.i78, %sunrise_read_byte.exit.for.end_crit_edge ]
  %79 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bit, align 2
  %conv41 = zext i8 %80 to i32
  %and42 = and i32 %status.0, %conv41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %cond = select i1 %tobool43.not, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %sunrise_write_word.exit, %sunrise_write_byte.exit
  %retval.0 = phi i32 [ %cond, %for.end ], [ %call.i, %sunrise_write_byte.exit ], [ %call.i63, %sunrise_write_word.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !32, !34, !36, !38, !40, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__initcall__kmod_sunrise_co2__289_533_sunrise_driver_init6, !1, !"__initcall__kmod_sunrise_co2__289_533_sunrise_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 533, i32 1}
!2 = !{ptr @__exitcall_sunrise_driver_exit, !1, !"__exitcall_sunrise_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 535, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 536, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 537, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 528, i32 11}
!12 = !{ptr @sunrise_driver, !13, !"sunrise_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 526, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 481, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sunrise_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sunrise_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @sunrise_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 492, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sunrise_probe._key, !26, !"_key", i1 false, i1 false}
!26 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 496, i32 20}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 499, i32 3}
!30 = !{ptr @sunrise_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sunrise_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @sunrise_regmap_bus, !33, !"sunrise_regmap_bus", i1 false, i1 false}
!33 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 464, i32 32}
!34 = !{ptr @sunrise_regmap_config, !35, !"sunrise_regmap_config", i1 false, i1 false}
!35 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 469, i32 35}
!36 = !{ptr @sunrise_info, !37, !"sunrise_info", i1 false, i1 false}
!37 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 460, i32 30}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 147, i32 3}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sunrise_read_word._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @sunrise_read_word._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @sunrise_channels, !44, !"sunrise_channels", i1 false, i1 false}
!44 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 379, i32 35}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 354, i32 11}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 359, i32 11}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 366, i32 11}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 371, i32 11}
!53 = !{ptr @sunrise_concentration_ext_info, !54, !"sunrise_concentration_ext_info", i1 false, i1 false}
!54 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 351, i32 44}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 227, i32 2}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sunrise_calibrate.__UNIQUE_ID_ddebug288, !56, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 166, i32 3}
!61 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @sunrise_write_byte._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @sunrise_write_byte._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 182, i32 3}
!66 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @sunrise_write_word._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @sunrise_write_word._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 129, i32 3}
!71 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @sunrise_read_byte._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @sunrise_read_byte._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 202, i32 3}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 207, i32 3}
!78 = !{ptr @calib_data, !79, !"calib_data", i1 false, i1 false}
!79 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 198, i32 3}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 341, i32 34}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 303, i32 26}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 304, i32 24}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 305, i32 30}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 306, i32 32}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 307, i32 36}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 308, i32 33}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 309, i32 27}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 310, i32 35}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 311, i32 32}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 312, i32 40}
!102 = !{ptr @sunrise_error_statuses, !103, !"sunrise_error_statuses", i1 false, i1 false}
!103 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 302, i32 27}
!104 = !{ptr @sunrise_error_statuses_enum, !105, !"sunrise_error_statuses_enum", i1 false, i1 false}
!105 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 315, i32 30}
!106 = !{ptr @sunrise_of_match, !107, !"sunrise_of_match", i1 false, i1 false}
!107 = !{!"../drivers/iio/chemical/sunrise_co2.c", i32 520, i32 34}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i8 0, i8 2}
!118 = !{!"auto-init"}
!119 = !{i64 2148998781, i64 2148998786, i64 2148998799, i64 2148998843, i64 2148998877, i64 2148998898}
