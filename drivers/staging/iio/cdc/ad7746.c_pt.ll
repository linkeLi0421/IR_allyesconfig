; ModuleID = '/llk/IR_all_yes/drivers/staging/iio/cdc/ad7746.c_pt.bc'
source_filename = "../drivers/staging/iio/cdc/ad7746.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.87, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.87 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ad7746_chip_info = type { ptr, %struct.mutex, i8, i8, i8, [2 x [2 x i8]], i8, [24 x i8], %union.anon.86, [124 x i8] }
%union.anon.86 = type { i32 }

@__initcall__kmod_ad7746__288_763_ad7746_driver_init6 = internal global ptr @ad7746_driver_init, section ".initcall6.init", align 4
@ad7746_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ad7746_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad7746_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ad7746_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ad7746_driver_exit = internal global ptr @ad7746_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [63 x i8] c"ad7746.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [70 x i8] c"ad7746.description=Analog Devices AD7746/5/7 capacitive sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [43 x i8] c"ad7746.file=drivers/staging/iio/cdc/ad7746\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"ad7746.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7746\00", [25 x i8] zeroinitializer }, align 32
@ad7746_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7745\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7746\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7747\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@ad7746_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ad7745\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7745 }, %struct.i2c_device_id { [20 x i8] c"ad7746\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7746 }, %struct.i2c_device_id { [20 x i8] c"ad7747\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7747 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ad7746_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@ad7746_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ad7746_attribute_group, ptr @ad7746_read_raw, ptr null, ptr null, ptr @ad7746_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7746_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 1120, i32 0, %struct.anon.87 zeroinitializer, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1088, i32 0, %struct.anon.87 zeroinitializer, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr @.str.16, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 1024, i32 0, %struct.anon.87 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 1, i32 0, i32 1056, i32 0, %struct.anon.87 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 14, i32 0, i32 0, i32 256, i32 0, %struct.anon.87 zeroinitializer, i32 25, i32 0, i32 4132, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 14, i32 0, i32 2, i32 288, i32 0, %struct.anon.87 zeroinitializer, i32 25, i32 0, i32 4132, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 14, i32 1, i32 0, i32 320, i32 0, %struct.anon.87 zeroinitializer, i32 25, i32 0, i32 4132, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 14, i32 1, i32 3, i32 352, i32 0, %struct.anon.87 zeroinitializer, i32 25, i32 0, i32 4132, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }], [160 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adi,exca-output-en\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adi,exca-output-invert\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adi,excb-output-en\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adi,excb-output-invert\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"adi,excitation-vdd-permille\00", [36 x i8] zeroinitializer }, align 32
@ad7746_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad7746_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad7746_attributes = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @iio_dev_attr_in_capacitance0_calibbias_calibration, ptr @iio_dev_attr_in_capacitance0_calibscale_calibration, ptr @iio_dev_attr_in_capacitance1_calibscale_calibration, ptr @iio_dev_attr_in_capacitance1_calibbias_calibration, ptr @iio_dev_attr_in_voltage0_calibscale_calibration, ptr getelementptr (i8, ptr @iio_const_attr_in_voltage_sampling_frequency_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_capacitance_sampling_frequency_available, i64 4), ptr null], [32 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_capacitance0_calibbias_calibration = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad7746_start_offset_calib }, i64 4, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_capacitance0_calibscale_calibration = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad7746_start_gain_calib }, i64 4, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_capacitance1_calibscale_calibration = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad7746_start_gain_calib }, i64 6, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_capacitance1_calibbias_calibration = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad7746_start_offset_calib }, i64 6, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage0_calibscale_calibration = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad7746_start_gain_calib }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_const_attr_in_voltage_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.12, %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_capacitance_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.14, %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"in_capacitance0_calibbias_calibration\00", [58 x i8] zeroinitializer }, align 32
@ad7746_cap_filter_rate_table = internal constant { [8 x [2 x i8]], [16 x i8] } { [8 x [2 x i8]] [[2 x i8] c"[\0C", [2 x i8] c"T\0D", [2 x i8] c"2\15", [2 x i8] c"\1A'", [2 x i8] c"\10?", [2 x i8] c"\0DN", [2 x i8] c"\0B]", [2 x i8] c"\09o"], [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"in_capacitance0_calibscale_calibration\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"in_capacitance1_calibscale_calibration\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"in_capacitance1_calibbias_calibration\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"in_voltage0_calibscale_calibration\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"50 31 16 8\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"in_voltage_sampling_frequency_available\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"91 84 50 26 16 13 11 9\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"in_capacitance_sampling_frequency_available\00", [52 x i8] zeroinitializer }, align 32
@ad7746_vt_filter_rate_table = internal constant { [4 x [2 x i8]], [24 x i8] } { [4 x [2 x i8]] [[2 x i8] c"2\15", [2 x i8] c"\1F!", [2 x i8] c"\10?", [2 x i8] c"\08{"], [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"supply\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 250, i64 375, i64 500]
@__sancov_gen_cov_switch_values.17 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 12]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 14]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 14]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 14]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 12]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 14]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 14]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 9, i64 14]
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"ad7746_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 755, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 757, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"ad7746_of_match\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 746, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant [10 x i8] c"ad7746_id\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 737, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 678, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"ad7746_info\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 658, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"ad7746_channels\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 115, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 694, i32 37 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 695, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 701, i32 37 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 702, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 708, i32 38 }
@___asan_gen_.65 = private unnamed_addr constant [23 x i8] c"ad7746_attribute_group\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 415, i32 37 }
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"ad7746_attributes\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 404, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant [51 x i8] c"iio_dev_attr_in_capacitance0_calibbias_calibration\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [52 x i8] c"iio_dev_attr_in_capacitance0_calibscale_calibration\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [52 x i8] c"iio_dev_attr_in_capacitance1_calibscale_calibration\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [51 x i8] c"iio_dev_attr_in_capacitance1_calibbias_calibration\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [48 x i8] c"iio_dev_attr_in_voltage0_calibscale_calibration\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [55 x i8] c"iio_const_attr_in_voltage_sampling_frequency_available\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [59 x i8] c"iio_const_attr_in_capacitance_sampling_frequency_available\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 353, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant [29 x i8] c"ad7746_cap_filter_rate_table\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 207, i32 28 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 357, i32 8 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 359, i32 8 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 355, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 361, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 400, i32 8 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 401, i32 8 }
@___asan_gen_.122 = private unnamed_addr constant [28 x i8] c"ad7746_vt_filter_rate_table\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 203, i32 28 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [36 x i8] c"../drivers/staging/iio/cdc/ad7746.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 130, i32 18 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ad7746_driver_exit, ptr @__initcall__kmod_ad7746__288_763_ad7746_driver_init6, ptr @ad7746_driver_exit, ptr @ad7746_driver, ptr @.str, ptr @ad7746_of_match, ptr @ad7746_id, ptr @ad7746_probe.__key, ptr @.str.1, ptr @ad7746_info, ptr @ad7746_channels, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ad7746_attribute_group, ptr @ad7746_attributes, ptr @iio_dev_attr_in_capacitance0_calibbias_calibration, ptr @iio_dev_attr_in_capacitance0_calibscale_calibration, ptr @iio_dev_attr_in_capacitance1_calibscale_calibration, ptr @iio_dev_attr_in_capacitance1_calibbias_calibration, ptr @iio_dev_attr_in_voltage0_calibscale_calibration, ptr @iio_const_attr_in_voltage_sampling_frequency_available, ptr @iio_const_attr_in_capacitance_sampling_frequency_available, ptr @.str.7, ptr @ad7746_cap_filter_rate_table, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ad7746_vt_filter_rate_table, ptr @.str.16], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7746_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7746_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7746_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7746_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7746_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7746_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7746_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7746_attributes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_capacitance0_calibbias_calibration to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_capacitance0_calibscale_calibration to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_capacitance1_calibscale_calibration to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_capacitance1_calibbias_calibration to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage0_calibscale_calibration to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_voltage_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_capacitance_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7746_cap_filter_rate_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7746_vt_filter_rate_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7746_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ad7746_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad7746_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @ad7746_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7746_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  %vdd_permille = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vdd_permille) #5
  %0 = ptrtoint ptr %vdd_permille to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vdd_permille, align 4, !annotation !77
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 256) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad7746_chip_info, ptr %2, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ad7746_probe.__key) #5
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %2, align 128
  %capdac_set = getelementptr inbounds %struct.ad7746_chip_info, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %capdac_set to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %capdac_set, align 1
  %name5 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %6 = ptrtoint ptr %name5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %id, ptr %name5, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %7 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ad7746_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ad7746_channels, ptr %channels, align 8
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %9 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7746, i32 %10)
  %cmp = icmp eq i32 %10, 7746
  %spec.select = select i1 %cmp, i32 8, i32 6
  %11 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select, ptr %11, align 4
  %13 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %call, align 8
  %call.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.2) #5
  br i1 %call.i, label %if.then10, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i96 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.3) #5
  %. = select i1 %call.i96, i8 4, i8 8
  br label %if.end19

if.end19:                                         ; preds = %if.then10, %if.end.if.end19_crit_edge
  %regval.0 = phi i8 [ 0, %if.end.if.end19_crit_edge ], [ %., %if.then10 ]
  %call.i97 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.4) #5
  br i1 %call.i97, label %if.then21, label %if.end19.if.end32_crit_edge

if.end19.if.end32_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then21:                                        ; preds = %if.end19
  %call.i98 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.5) #5
  br i1 %call.i98, label %if.then23, label %if.else27

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %14 = or i8 %regval.0, 16
  br label %if.end32

if.else27:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %15 = or i8 %regval.0, 32
  br label %if.end32

if.end32:                                         ; preds = %if.else27, %if.then23, %if.end19.if.end32_crit_edge
  %regval.1 = phi i8 [ %14, %if.then23 ], [ %15, %if.else27 ], [ %regval.0, %if.end19.if.end32_crit_edge ]
  %call.i99 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef nonnull %vdd_permille, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool34.not = icmp eq i32 %call.i99, 0
  br i1 %tobool34.not, label %if.then35, label %if.end32.if.end51_crit_edge

if.end32.if.end51_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then35:                                        ; preds = %if.end32
  %16 = ptrtoint ptr %vdd_permille to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vdd_permille, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %if.then35.if.end51_crit_edge [
    i32 500, label %sw.bb47
    i32 250, label %sw.bb39
    i32 375, label %sw.bb43
  ]

if.then35.if.end51_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

sw.bb39:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %19 = or i8 %regval.1, 1
  br label %if.end51

sw.bb43:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %20 = or i8 %regval.1, 2
  br label %if.end51

sw.bb47:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %21 = or i8 %regval.1, 3
  br label %if.end51

if.end51:                                         ; preds = %sw.bb47, %sw.bb43, %sw.bb39, %if.then35.if.end51_crit_edge, %if.end32.if.end51_crit_edge
  %regval.2 = phi i8 [ %regval.1, %if.end32.if.end51_crit_edge ], [ %21, %sw.bb47 ], [ %20, %sw.bb43 ], [ %19, %sw.bb39 ], [ %regval.1, %if.then35.if.end51_crit_edge ]
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 128
  %call53 = call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 9, i8 noundef zeroext %regval.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end51.cleanup_crit_edge, label %if.end57

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent, align 8
  %call59 = call i32 @__devm_iio_device_register(ptr noundef %25, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end51.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call59, %if.end57 ], [ -12, %entry.cleanup_crit_edge ], [ %call53, %if.end51.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vdd_permille) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7746_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad7746_chip_info, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %mask, label %entry.out_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge128
    i32 4, label %sw.bb23
    i32 5, label %sw.bb37
    i32 3, label %sw.bb44
    i32 2, label %sw.bb51
    i32 12, label %sw.bb57
  ]

entry.sw.bb_crit_edge128:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge128
  %call1 = tail call fastcc i32 @ad7746_select_channel(ptr noundef %indio_dev, ptr noundef %chan)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.out_crit_edge, label %if.end

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %sw.bb
  %config = getelementptr inbounds %struct.ad7746_chip_info, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %config, align 32
  %5 = or i8 %4, 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %call3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 10, i8 noundef zeroext %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end7:                                          ; preds = %if.end
  tail call void @msleep(i32 noundef %call1) #5
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 128
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %10 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %address, align 4
  %shr = lshr i32 %11, 8
  %conv9 = trunc i32 %shr to i8
  %data = getelementptr inbounds %struct.ad7746_chip_info, ptr %1, i32 0, i32 8
  %arrayidx = getelementptr [4 x i8], ptr %data, i32 0, i32 1
  %call10 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %9, i8 noundef zeroext %conv9, i8 noundef zeroext 3, ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end7.out_crit_edge, label %if.end14

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end14:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 128
  %and = and i32 %13, 16777215
  %sub = add nsw i32 %and, -8388608
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %val, align 4
  %15 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chan, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %16, label %if.end14.out_crit_edge [
    i32 9, label %sw.bb16
    i32 0, label %sw.bb17
  ]

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb16:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %mul = mul nsw i32 %sub, 125
  %div = sdiv i32 %mul, 256
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div, ptr %val, align 4
  br label %out

sw.bb17:                                          ; preds = %if.end14
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %19 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp18 = icmp eq i32 %20, 1
  br i1 %cmp18, label %if.then20, label %sw.bb17.out_crit_edge

sw.bb17.out_crit_edge:                            ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then20:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  %mul21 = mul nsw i32 %sub, 6
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul21, ptr %val, align 4
  br label %out

sw.bb23:                                          ; preds = %entry
  %22 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chan, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %23, label %sw.bb23.out_crit_edge [
    i32 14, label %sw.bb23.sw.epilog28_crit_edge
    i32 0, label %sw.bb26
  ]

sw.bb23.sw.epilog28_crit_edge:                    ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog28

sw.bb23.out_crit_edge:                            ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb26:                                          ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog28

sw.epilog28:                                      ; preds = %sw.bb26, %sw.bb23.sw.epilog28_crit_edge
  %reg.0 = phi i8 [ 17, %sw.bb26 ], [ 15, %sw.bb23.sw.epilog28_crit_edge ]
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 128
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %26, i8 noundef zeroext %reg.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.epilog28.out_crit_edge, label %if.end34

sw.epilog28.out_crit_edge:                        ; preds = %sw.epilog28
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end34:                                         ; preds = %sw.epilog28
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = trunc i32 %call.i to i16
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #5
  %conv1.i = zext i16 %27 to i32
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %val, align 4
  %mul35 = mul nuw nsw i32 %conv1.i, 15625
  %div36127 = lshr i32 %mul35, 10
  %29 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div36127, ptr %val2, align 4
  br label %out

sw.bb37:                                          ; preds = %entry
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 128
  %call.i122 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %31, i8 noundef zeroext 13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %cmp.i123 = icmp slt i32 %call.i122, 0
  br i1 %cmp.i123, label %sw.bb37.out_crit_edge, label %if.end43

sw.bb37.out_crit_edge:                            ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end43:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i124 = trunc i32 %call.i122 to i16
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv.i124) #5
  %conv1.i125 = zext i16 %32 to i32
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv1.i125, ptr %val, align 4
  br label %out

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %channel45 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %34 = ptrtoint ptr %channel45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channel45, align 4
  %differential = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %36 = ptrtoint ptr %differential to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %differential, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %arrayidx47 = getelementptr %struct.ad7746_chip_info, ptr %1, i32 0, i32 5, i32 %35, i32 %bf.cast
  %37 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx47, align 1
  %39 = and i8 %38, 127
  %and49 = zext i8 %39 to i32
  %mul50 = mul nuw nsw i32 %and49, 338646
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul50, ptr %val, align 4
  br label %out

sw.bb51:                                          ; preds = %entry
  %41 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %chan, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %42, label %sw.bb51.out_crit_edge [
    i32 14, label %sw.bb53
    i32 0, label %sw.bb54
  ]

sw.bb51.out_crit_edge:                            ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb53:                                          ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %val, align 4
  %45 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 488, ptr %val2, align 4
  br label %out

sw.bb54:                                          ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1170, ptr %val, align 4
  %47 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 23, ptr %val2, align 4
  br label %out

sw.bb57:                                          ; preds = %entry
  %48 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chan, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %49, label %sw.bb57.out_crit_edge [
    i32 14, label %sw.bb59
    i32 0, label %sw.bb67
  ]

sw.bb57.out_crit_edge:                            ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb59:                                          ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #7
  %config60 = getelementptr inbounds %struct.ad7746_chip_info, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %config60 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %config60, align 32
  %53 = lshr i8 %52, 3
  %54 = and i8 %53, 7
  %shr63 = zext i8 %54 to i32
  %arrayidx64 = getelementptr [8 x [2 x i8]], ptr @ad7746_cap_filter_rate_table, i32 0, i32 %shr63
  %55 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx64, align 1
  %conv66 = zext i8 %56 to i32
  %57 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv66, ptr %val, align 4
  br label %out

sw.bb67:                                          ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #7
  %config68 = getelementptr inbounds %struct.ad7746_chip_info, ptr %1, i32 0, i32 2
  %58 = ptrtoint ptr %config68 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %config68, align 32
  %60 = lshr i8 %59, 6
  %shr71 = zext i8 %60 to i32
  %arrayidx72 = getelementptr [4 x [2 x i8]], ptr @ad7746_vt_filter_rate_table, i32 0, i32 %shr71
  %61 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx72, align 1
  %conv74 = zext i8 %62 to i32
  %63 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv74, ptr %val, align 4
  br label %out

out:                                              ; preds = %sw.bb67, %sw.bb59, %sw.bb57.out_crit_edge, %sw.bb54, %sw.bb53, %sw.bb51.out_crit_edge, %sw.bb44, %if.end43, %sw.bb37.out_crit_edge, %if.end34, %sw.epilog28.out_crit_edge, %sw.bb23.out_crit_edge, %if.then20, %sw.bb17.out_crit_edge, %sw.bb16, %if.end14.out_crit_edge, %if.end7.out_crit_edge, %if.end.out_crit_edge, %sw.bb.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 1, %sw.bb67 ], [ 1, %sw.bb59 ], [ 11, %sw.bb54 ], [ 3, %sw.bb53 ], [ 1, %sw.bb44 ], [ %call.i122, %sw.bb37.out_crit_edge ], [ 1, %if.end43 ], [ %call.i, %sw.epilog28.out_crit_edge ], [ 2, %if.end34 ], [ %call1, %sw.bb.out_crit_edge ], [ %call3, %if.end.out_crit_edge ], [ %call10, %if.end7.out_crit_edge ], [ 1, %if.end14.out_crit_edge ], [ 1, %sw.bb17.out_crit_edge ], [ 1, %if.then20 ], [ 1, %sw.bb16 ], [ -22, %sw.bb23.out_crit_edge ], [ -22, %sw.bb51.out_crit_edge ], [ -22, %sw.bb57.out_crit_edge ], [ -22, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7746_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad7746_chip_info, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %mask, label %entry.out_crit_edge [
    i32 4, label %sw.bb
    i32 5, label %sw.bb9
    i32 3, label %sw.bb23
    i32 12, label %sw.bb44
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp.not = icmp eq i32 %val, 1
  br i1 %cmp.not, label %if.end, label %sw.bb.out_crit_edge

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %sw.bb
  %mul = shl i32 %val2, 10
  %div = sdiv i32 %mul, 15625
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %4, label %if.end.out_crit_edge [
    i32 14, label %if.end.sw.epilog_crit_edge
    i32 0, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %reg.0 = phi i8 [ 17, %sw.bb2 ], [ 15, %if.end.sw.epilog_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %conv3 = trunc i32 %div to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv3) #5
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %7, i8 noundef zeroext %reg.0, i16 noundef zeroext %8) #5
  %9 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0)
  br label %out

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %val)
  %10 = icmp ugt i32 %val, 65535
  br i1 %10, label %sw.bb9.out_crit_edge, label %if.end15

sw.bb9.out_crit_edge:                             ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end15:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 128
  %conv17 = trunc i32 %val to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv17) #5
  %call.i87 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %12, i8 noundef zeroext 13, i16 noundef zeroext %13) #5
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i87, i32 0)
  br label %out

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 43008000, i32 %val)
  %15 = icmp ugt i32 %val, 43008000
  br i1 %15, label %sw.bb23.out_crit_edge, label %if.end30

sw.bb23.out_crit_edge:                            ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end30:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_const_cmp4(i32 338645, i32 %val)
  %cmp32 = icmp ugt i32 %val, 338645
  %div31103 = udiv i32 %val, 338646
  %16 = trunc i32 %div31103 to i8
  %phi.cast = or i8 %16, -128
  %cond = select i1 %cmp32, i8 %phi.cast, i8 0
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %17 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel, align 4
  %differential = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %19 = ptrtoint ptr %differential to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %differential, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %arrayidx35 = getelementptr %struct.ad7746_chip_info, ptr %1, i32 0, i32 5, i32 %18, i32 %bf.cast
  %20 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %cond, ptr %arrayidx35, align 1
  %21 = load i32, ptr %channel, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 128
  %arrayidx.i = getelementptr %struct.ad7746_chip_info, ptr %1, i32 0, i32 5, i32 %21
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  %call.i88 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 11, i8 noundef zeroext %25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %cmp.i = icmp slt i32 %call.i88, 0
  br i1 %cmp.i, label %if.end30.out_crit_edge, label %ad7746_set_capdac.exit

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

ad7746_set_capdac.exit:                           ; preds = %if.end30
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 128
  %arrayidx5.i = getelementptr %struct.ad7746_chip_info, ptr %1, i32 0, i32 5, i32 %21, i32 1
  %28 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx5.i, align 1
  %call6.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 12, i8 noundef zeroext %29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp38 = icmp slt i32 %call6.i, 0
  br i1 %cmp38, label %ad7746_set_capdac.exit.out_crit_edge, label %if.end41

ad7746_set_capdac.exit.out_crit_edge:             ; preds = %ad7746_set_capdac.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end41:                                         ; preds = %ad7746_set_capdac.exit
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %channel, align 4
  %conv43 = trunc i32 %31 to i8
  %capdac_set = getelementptr inbounds %struct.ad7746_chip_info, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %capdac_set to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv43, ptr %capdac_set, align 1
  br label %out

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %tobool.not = icmp eq i32 %val2, 0
  br i1 %tobool.not, label %if.end46, label %sw.bb44.out_crit_edge

sw.bb44.out_crit_edge:                            ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end46:                                         ; preds = %sw.bb44
  %33 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chan, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %34, label %if.end46.out_crit_edge [
    i32 14, label %sw.bb48
    i32 0, label %sw.bb50
  ]

if.end46.out_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb48:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 91, i32 %val)
  %cmp2.not.i = icmp slt i32 %val, 91
  br i1 %cmp2.not.i, label %for.inc.i, label %sw.bb48.ad7746_store_cap_filter_rate_setup.exit_crit_edge

sw.bb48.ad7746_store_cap_filter_rate_setup.exit_crit_edge: ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7746_store_cap_filter_rate_setup.exit

for.inc.i:                                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %val)
  %cmp2.not.1.i = icmp slt i32 %val, 84
  br i1 %cmp2.not.1.i, label %for.inc.1.i, label %for.inc.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge

for.inc.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7746_store_cap_filter_rate_setup.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %val)
  %cmp2.not.2.i = icmp slt i32 %val, 50
  br i1 %cmp2.not.2.i, label %for.inc.2.i, label %for.inc.1.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge

for.inc.1.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7746_store_cap_filter_rate_setup.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %val)
  %cmp2.not.3.i = icmp slt i32 %val, 26
  br i1 %cmp2.not.3.i, label %for.inc.3.i, label %for.inc.2.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge

for.inc.2.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7746_store_cap_filter_rate_setup.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %val)
  %cmp2.not.4.i = icmp slt i32 %val, 16
  br i1 %cmp2.not.4.i, label %for.inc.4.i, label %for.inc.3.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge

for.inc.3.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7746_store_cap_filter_rate_setup.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %val)
  %cmp2.not.5.i = icmp slt i32 %val, 13
  br i1 %cmp2.not.5.i, label %for.inc.5.i, label %for.inc.4.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge

for.inc.4.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7746_store_cap_filter_rate_setup.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %val)
  %cmp2.not.6.i = icmp slt i32 %val, 11
  br i1 %cmp2.not.6.i, label %for.inc.6.i, label %for.inc.5.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge

for.inc.5.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7746_store_cap_filter_rate_setup.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %val)
  %cmp2.not.7.inv.i = icmp sgt i32 %val, 8
  %spec.select.i = select i1 %cmp2.not.7.inv.i, i32 7, i32 8
  br label %ad7746_store_cap_filter_rate_setup.exit

ad7746_store_cap_filter_rate_setup.exit:          ; preds = %for.inc.6.i, %for.inc.5.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge, %for.inc.4.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge, %for.inc.3.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge, %for.inc.2.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge, %for.inc.1.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge, %for.inc.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge, %sw.bb48.ad7746_store_cap_filter_rate_setup.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %sw.bb48.ad7746_store_cap_filter_rate_setup.exit_crit_edge ], [ 1, %for.inc.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge ], [ 2, %for.inc.1.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge ], [ 3, %for.inc.2.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge ], [ 4, %for.inc.3.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge ], [ 5, %for.inc.4.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge ], [ 6, %for.inc.5.i.ad7746_store_cap_filter_rate_setup.exit_crit_edge ], [ %spec.select.i, %for.inc.6.i ]
  %36 = tail call i32 @llvm.umin.i32(i32 %i.0.lcssa.i, i32 7) #5
  %config.i = getelementptr inbounds %struct.ad7746_chip_info, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %config.i, align 32
  %39 = and i8 %38, -57
  %.tr.i = trunc i32 %36 to i8
  %40 = shl nuw nsw i8 %.tr.i, 3
  %conv12.i = or i8 %40, %39
  store i8 %conv12.i, ptr %config.i, align 32
  br label %out

sw.bb50:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %val)
  %cmp2.not.i89 = icmp slt i32 %val, 50
  br i1 %cmp2.not.i89, label %for.inc.i91, label %sw.bb50.ad7746_store_vt_filter_rate_setup.exit_crit_edge

sw.bb50.ad7746_store_vt_filter_rate_setup.exit_crit_edge: ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7746_store_vt_filter_rate_setup.exit

for.inc.i91:                                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %val)
  %cmp2.not.1.i90 = icmp slt i32 %val, 31
  br i1 %cmp2.not.1.i90, label %for.inc.1.i93, label %for.inc.i91.ad7746_store_vt_filter_rate_setup.exit_crit_edge

for.inc.i91.ad7746_store_vt_filter_rate_setup.exit_crit_edge: ; preds = %for.inc.i91
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7746_store_vt_filter_rate_setup.exit

for.inc.1.i93:                                    ; preds = %for.inc.i91
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %val)
  %cmp2.not.2.i92 = icmp slt i32 %val, 16
  br i1 %cmp2.not.2.i92, label %for.inc.2.i96, label %for.inc.1.i93.ad7746_store_vt_filter_rate_setup.exit_crit_edge

for.inc.1.i93.ad7746_store_vt_filter_rate_setup.exit_crit_edge: ; preds = %for.inc.1.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7746_store_vt_filter_rate_setup.exit

for.inc.2.i96:                                    ; preds = %for.inc.1.i93
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %val)
  %cmp2.not.3.i94 = icmp slt i32 %val, 8
  %spec.select.i95 = select i1 %cmp2.not.3.i94, i32 4, i32 3
  br label %ad7746_store_vt_filter_rate_setup.exit

ad7746_store_vt_filter_rate_setup.exit:           ; preds = %for.inc.2.i96, %for.inc.1.i93.ad7746_store_vt_filter_rate_setup.exit_crit_edge, %for.inc.i91.ad7746_store_vt_filter_rate_setup.exit_crit_edge, %sw.bb50.ad7746_store_vt_filter_rate_setup.exit_crit_edge
  %i.0.lcssa.i97 = phi i32 [ 0, %sw.bb50.ad7746_store_vt_filter_rate_setup.exit_crit_edge ], [ 1, %for.inc.i91.ad7746_store_vt_filter_rate_setup.exit_crit_edge ], [ 2, %for.inc.1.i93.ad7746_store_vt_filter_rate_setup.exit_crit_edge ], [ %spec.select.i95, %for.inc.2.i96 ]
  %41 = tail call i32 @llvm.umin.i32(i32 %i.0.lcssa.i97, i32 3) #5
  %config.i98 = getelementptr inbounds %struct.ad7746_chip_info, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %config.i98 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %config.i98, align 32
  %44 = and i8 %43, 63
  %.tr.i99 = trunc i32 %41 to i8
  %45 = shl nuw i8 %.tr.i99, 6
  %conv12.i100 = or i8 %45, %44
  store i8 %conv12.i100, ptr %config.i98, align 32
  br label %out

out:                                              ; preds = %ad7746_store_vt_filter_rate_setup.exit, %ad7746_store_cap_filter_rate_setup.exit, %if.end46.out_crit_edge, %sw.bb44.out_crit_edge, %if.end41, %ad7746_set_capdac.exit.out_crit_edge, %if.end30.out_crit_edge, %sw.bb23.out_crit_edge, %if.end15, %sw.bb9.out_crit_edge, %sw.epilog, %if.end.out_crit_edge, %sw.bb.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %ad7746_store_vt_filter_rate_setup.exit ], [ 0, %ad7746_store_cap_filter_rate_setup.exit ], [ %call6.i, %ad7746_set_capdac.exit.out_crit_edge ], [ 0, %if.end41 ], [ %14, %if.end15 ], [ %9, %sw.epilog ], [ -22, %sw.bb.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ -22, %sw.bb9.out_crit_edge ], [ -22, %sw.bb23.out_crit_edge ], [ -22, %sw.bb44.out_crit_edge ], [ -22, %if.end46.out_crit_edge ], [ -22, %entry.out_crit_edge ], [ %call.i88, %if.end30.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7746_start_offset_calib(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %doit.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %address, align 8
  %idxprom = trunc i64 %1 to i32
  %arrayidx = getelementptr [8 x %struct.iio_chan_spec], ptr @ad7746_channels, i32 0, i32 %idxprom
  %call1 = tail call fastcc i32 @ad7746_select_channel(ptr noundef %add.ptr.i, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i.i = getelementptr i8, ptr %dev, i32 1080
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %doit.i) #5
  %4 = ptrtoint ptr %doit.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %doit.i, align 1, !annotation !77
  %call.i.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %doit.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.ad7746_start_calib.exit_crit_edge, label %if.end.i

if.end.ad7746_start_calib.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7746_start_calib.exit

if.end.i:                                         ; preds = %if.end
  %5 = ptrtoint ptr %doit.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %doit.i, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end.i.ad7746_start_calib.exit_crit_edge, label %if.end4.i

if.end.i.ad7746_start_calib.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7746_start_calib.exit

if.end4.i:                                        ; preds = %if.end.i
  %lock.i = getelementptr inbounds %struct.ad7746_chip_info, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %config.i = getelementptr inbounds %struct.ad7746_chip_info, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config.i, align 32
  %or1.i = or i8 %8, 5
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 128
  %call7.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 10, i8 noundef zeroext %or1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end4.i.cleanup.sink.split.i_crit_edge, label %do.body.preheader.i

if.end4.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

do.body.preheader.i:                              ; preds = %if.end4.i
  %conv18.i = zext i8 %or1.i to i32
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %do.body.preheader.i
  %timeout.0.i = phi i32 [ %dec.i, %do.cond.i.do.body.i_crit_edge ], [ 10, %do.body.preheader.i ]
  call void @msleep(i32 noundef 20) #5
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 128
  %call13.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %do.body.i.cleanup.sink.split.i_crit_edge, label %do.cond.i

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

do.cond.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %conv18.i)
  %cmp19.i = icmp ne i32 %call13.i, %conv18.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %tobool21.not.i = icmp eq i32 %timeout.0.i, 0
  %or.cond.i = select i1 %cmp19.i, i1 true, i1 %tobool21.not.i
  br i1 %or.cond.i, label %do.cond.i.cleanup.sink.split.i_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.cond.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.cond.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge, %if.end4.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call7.i, %if.end4.i.cleanup.sink.split.i_crit_edge ], [ %call13.i, %do.body.i.cleanup.sink.split.i_crit_edge ], [ %len, %do.cond.i.cleanup.sink.split.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #5
  br label %ad7746_start_calib.exit

ad7746_start_calib.exit:                          ; preds = %cleanup.sink.split.i, %if.end.i.ad7746_start_calib.exit_crit_edge, %if.end.ad7746_start_calib.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.end.ad7746_start_calib.exit_crit_edge ], [ 0, %if.end.i.ad7746_start_calib.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %doit.i) #5
  br label %cleanup

cleanup:                                          ; preds = %ad7746_start_calib.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ad7746_start_calib.exit ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad7746_select_channel(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 14, label %sw.bb
    i32 0, label %entry.sw.bb20_crit_edge
    i32 9, label %entry.sw.bb20_crit_edge97
  ]

entry.sw.bb20_crit_edge97:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

entry.sw.bb20_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %address, align 4
  %7 = trunc i32 %6 to i8
  %conv = or i8 %7, -128
  %vt_setup1 = getelementptr inbounds %struct.ad7746_chip_info, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %vt_setup1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vt_setup1, align 2
  %10 = and i8 %9, 127
  %config = getelementptr inbounds %struct.ad7746_chip_info, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %config, align 32
  %13 = lshr i8 %12, 3
  %14 = and i8 %13, 7
  %shr = zext i8 %14 to i32
  %arrayidx7 = getelementptr [8 x [2 x i8]], ptr @ad7746_cap_filter_rate_table, i32 0, i32 %shr, i32 1
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx7, align 1
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %17 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 128
  %arrayidx.i = getelementptr %struct.ad7746_chip_info, ptr %1, i32 0, i32 5, i32 %18
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 11, i8 noundef zeroext %22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %ad7746_set_capdac.exit

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ad7746_set_capdac.exit:                           ; preds = %sw.bb
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 128
  %arrayidx5.i = getelementptr %struct.ad7746_chip_info, ptr %1, i32 0, i32 5, i32 %18, i32 1
  %25 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx5.i, align 1
  %call6.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 12, i8 noundef zeroext %26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %ad7746_set_capdac.exit.cleanup_crit_edge, label %if.end

ad7746_set_capdac.exit.cleanup_crit_edge:         ; preds = %ad7746_set_capdac.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %ad7746_set_capdac.exit
  %capdac_set = getelementptr inbounds %struct.ad7746_chip_info, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %capdac_set to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %capdac_set, align 1
  %conv11 = sext i8 %28 to i32
  %29 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv11)
  %cmp13.not = icmp eq i32 %30, %conv11
  br i1 %cmp13.not, label %if.end.sw.epilog_crit_edge, label %if.then15

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv17 = trunc i32 %30 to i8
  %31 = ptrtoint ptr %capdac_set to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv17, ptr %capdac_set, align 1
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry.sw.bb20_crit_edge, %entry.sw.bb20_crit_edge97
  %address21 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %32 = ptrtoint ptr %address21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %address21, align 4
  %34 = trunc i32 %33 to i8
  %conv24 = or i8 %34, -128
  %cap_setup25 = getelementptr inbounds %struct.ad7746_chip_info, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %cap_setup25 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cap_setup25, align 1
  %37 = and i8 %36, 127
  %config29 = getelementptr inbounds %struct.ad7746_chip_info, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %config29 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %config29, align 32
  %40 = lshr i8 %39, 6
  %shr32 = zext i8 %40 to i32
  %arrayidx34 = getelementptr [8 x [2 x i8]], ptr @ad7746_cap_filter_rate_table, i32 0, i32 %shr32, i32 1
  %41 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx34, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %if.then15, %if.end.sw.epilog_crit_edge
  %vt_setup.0 = phi i8 [ %conv24, %sw.bb20 ], [ %10, %if.then15 ], [ %10, %if.end.sw.epilog_crit_edge ]
  %cap_setup.0 = phi i8 [ %37, %sw.bb20 ], [ %conv, %if.then15 ], [ %conv, %if.end.sw.epilog_crit_edge ]
  %delay.0.in = phi i8 [ %42, %sw.bb20 ], [ %16, %if.then15 ], [ %16, %if.end.sw.epilog_crit_edge ]
  %delay.0 = zext i8 %delay.0.in to i32
  %cap_setup36 = getelementptr inbounds %struct.ad7746_chip_info, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %cap_setup36 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cap_setup36, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %cap_setup.0)
  %cmp39.not = icmp eq i8 %44, %cap_setup.0
  br i1 %cmp39.not, label %sw.epilog.if.end48_crit_edge, label %if.then41

sw.epilog.if.end48_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then41:                                        ; preds = %sw.epilog
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 128
  %call42 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %46, i8 noundef zeroext 7, i8 noundef zeroext %cap_setup.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.then41.cleanup_crit_edge, label %if.end46

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end46:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %cap_setup36 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %cap_setup.0, ptr %cap_setup36, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %sw.epilog.if.end48_crit_edge
  %vt_setup49 = getelementptr inbounds %struct.ad7746_chip_info, ptr %1, i32 0, i32 4
  %48 = ptrtoint ptr %vt_setup49 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %vt_setup49, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %vt_setup.0)
  %cmp52.not = icmp eq i8 %49, %vt_setup.0
  br i1 %cmp52.not, label %if.end48.cleanup_crit_edge, label %if.then54

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then54:                                        ; preds = %if.end48
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 128
  %call56 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 8, i8 noundef zeroext %vt_setup.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.then54.cleanup_crit_edge, label %if.end60

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end60:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %vt_setup49 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %vt_setup.0, ptr %vt_setup49, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then54.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.then41.cleanup_crit_edge, %ad7746_set_capdac.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6.i, %ad7746_set_capdac.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call42, %if.then41.cleanup_crit_edge ], [ %call56, %if.then54.cleanup_crit_edge ], [ %delay.0, %if.end60 ], [ %delay.0, %if.end48.cleanup_crit_edge ], [ %call.i, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7746_start_gain_calib(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %doit.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %address, align 8
  %idxprom = trunc i64 %1 to i32
  %arrayidx = getelementptr [8 x %struct.iio_chan_spec], ptr @ad7746_channels, i32 0, i32 %idxprom
  %call1 = tail call fastcc i32 @ad7746_select_channel(ptr noundef %add.ptr.i, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i.i = getelementptr i8, ptr %dev, i32 1080
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %doit.i) #5
  %4 = ptrtoint ptr %doit.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %doit.i, align 1, !annotation !77
  %call.i.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %doit.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.ad7746_start_calib.exit_crit_edge, label %if.end.i

if.end.ad7746_start_calib.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7746_start_calib.exit

if.end.i:                                         ; preds = %if.end
  %5 = ptrtoint ptr %doit.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %doit.i, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end.i.ad7746_start_calib.exit_crit_edge, label %if.end4.i

if.end.i.ad7746_start_calib.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7746_start_calib.exit

if.end4.i:                                        ; preds = %if.end.i
  %lock.i = getelementptr inbounds %struct.ad7746_chip_info, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %config.i = getelementptr inbounds %struct.ad7746_chip_info, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config.i, align 32
  %or1.i = or i8 %8, 6
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 128
  %call7.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 10, i8 noundef zeroext %or1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end4.i.cleanup.sink.split.i_crit_edge, label %do.body.preheader.i

if.end4.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

do.body.preheader.i:                              ; preds = %if.end4.i
  %conv18.i = zext i8 %or1.i to i32
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %do.body.preheader.i
  %timeout.0.i = phi i32 [ %dec.i, %do.cond.i.do.body.i_crit_edge ], [ 10, %do.body.preheader.i ]
  call void @msleep(i32 noundef 20) #5
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 128
  %call13.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %do.body.i.cleanup.sink.split.i_crit_edge, label %do.cond.i

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

do.cond.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %conv18.i)
  %cmp19.i = icmp ne i32 %call13.i, %conv18.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %tobool21.not.i = icmp eq i32 %timeout.0.i, 0
  %or.cond.i = select i1 %cmp19.i, i1 true, i1 %tobool21.not.i
  br i1 %or.cond.i, label %do.cond.i.cleanup.sink.split.i_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.cond.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.cond.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge, %if.end4.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call7.i, %if.end4.i.cleanup.sink.split.i_crit_edge ], [ %call13.i, %do.body.i.cleanup.sink.split.i_crit_edge ], [ %len, %do.cond.i.cleanup.sink.split.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #5
  br label %ad7746_start_calib.exit

ad7746_start_calib.exit:                          ; preds = %cleanup.sink.split.i, %if.end.i.ad7746_start_calib.exit_crit_edge, %if.end.ad7746_start_calib.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.end.ad7746_start_calib.exit_crit_edge ], [ 0, %if.end.i.ad7746_start_calib.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %doit.i) #5
  br label %cleanup

cleanup:                                          ; preds = %ad7746_start_calib.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ad7746_start_calib.exit ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_ad7746__288_763_ad7746_driver_init6, !1, !"__initcall__kmod_ad7746__288_763_ad7746_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 763, i32 1}
!2 = !{ptr @__exitcall_ad7746_driver_exit, !1, !"__exitcall_ad7746_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 765, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 766, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 767, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 757, i32 11}
!12 = !{ptr @ad7746_driver, !13, !"ad7746_driver", i1 false, i1 false}
!13 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 755, i32 26}
!14 = !{ptr @ad7746_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 678, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 694, i32 37}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 695, i32 38}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 701, i32 37}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 702, i32 38}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 708, i32 38}
!27 = !{ptr @ad7746_info, !28, !"ad7746_info", i1 false, i1 false}
!28 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 658, i32 30}
!29 = !{ptr @ad7746_attribute_group, !30, !"ad7746_attribute_group", i1 false, i1 false}
!30 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 415, i32 37}
!31 = !{ptr @ad7746_attributes, !32, !"ad7746_attributes", i1 false, i1 false}
!32 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 404, i32 26}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 353, i32 8}
!35 = !{ptr @iio_dev_attr_in_capacitance0_calibbias_calibration, !34, !"iio_dev_attr_in_capacitance0_calibbias_calibration", i1 false, i1 false}
!36 = !{ptr @ad7746_cap_filter_rate_table, !37, !"ad7746_cap_filter_rate_table", i1 false, i1 false}
!37 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 207, i32 28}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 357, i32 8}
!40 = !{ptr @iio_dev_attr_in_capacitance0_calibscale_calibration, !39, !"iio_dev_attr_in_capacitance0_calibscale_calibration", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 359, i32 8}
!43 = !{ptr @iio_dev_attr_in_capacitance1_calibscale_calibration, !42, !"iio_dev_attr_in_capacitance1_calibscale_calibration", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 355, i32 8}
!46 = !{ptr @iio_dev_attr_in_capacitance1_calibbias_calibration, !45, !"iio_dev_attr_in_capacitance1_calibbias_calibration", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 361, i32 8}
!49 = !{ptr @iio_dev_attr_in_voltage0_calibscale_calibration, !48, !"iio_dev_attr_in_voltage0_calibscale_calibration", i1 false, i1 false}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 400, i32 8}
!52 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @iio_const_attr_in_voltage_sampling_frequency_available, !51, !"iio_const_attr_in_voltage_sampling_frequency_available", i1 false, i1 false}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 401, i32 8}
!56 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @iio_const_attr_in_capacitance_sampling_frequency_available, !55, !"iio_const_attr_in_capacitance_sampling_frequency_available", i1 false, i1 false}
!58 = !{ptr @ad7746_vt_filter_rate_table, !59, !"ad7746_vt_filter_rate_table", i1 false, i1 false}
!59 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 203, i32 28}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 130, i32 18}
!62 = !{ptr @ad7746_channels, !63, !"ad7746_channels", i1 false, i1 false}
!63 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 115, i32 35}
!64 = !{ptr @ad7746_of_match, !65, !"ad7746_of_match", i1 false, i1 false}
!65 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 746, i32 34}
!66 = !{ptr @ad7746_id, !67, !"ad7746_id", i1 false, i1 false}
!67 = !{!"../drivers/staging/iio/cdc/ad7746.c", i32 737, i32 35}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
!78 = !{i8 0, i8 2}
