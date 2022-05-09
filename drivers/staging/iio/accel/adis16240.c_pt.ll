; ModuleID = '/llk/IR_all_yes/drivers/staging/iio/accel/adis16240.c_pt.bc'
source_filename = "../drivers/staging/iio/accel/adis16240.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.adis_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, i32, ptr, i8, i8, i32, i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.adis_timeout = type { i16, i16, i16 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.adis = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.spi_message, ptr, i32, i32, ptr, [76 x i8], [10 x i8], [4 x i8], [114 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_adis16240__234_437_adis16240_driver_init6 = internal global ptr @adis16240_driver_init, section ".initcall6.init", align 4
@adis16240_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @adis16240_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adis16240_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adis16240_driver_exit = internal global ptr @adis16240_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [48 x i8] c"adis16240.author=Barry Song <21cnbao@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [77 x i8] c"adis16240.description=Analog Devices Programmable Impact Sensor and Recorder\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [51 x i8] c"adis16240.file=drivers/staging/iio/accel/adis16240\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [25 x i8] c"adis16240.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias239 = internal constant [30 x i8] c"adis16240.alias=spi:adis16240\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adis16240\00", [22 x i8] zeroinitializer }, align 32
@adis16240_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16240\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@adis16240_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @adis16240_attribute_group, ptr @adis16240_read_raw, ptr null, ptr null, ptr @adis16240_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adis_update_scan_mode, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adis16240_channels = internal constant { [7 x %struct.iio_chan_spec], [152 x i8] } { [7 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 2, i32 3, %struct.anon.71 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr @.str.10, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 10, i32 4, %struct.anon.71 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 4, i32 0, %struct.anon.71 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 97, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 6, i32 1, %struct.anon.71 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 97, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 8, i32 2, %struct.anon.71 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 97, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 12, i32 5, %struct.anon.71 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 6, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [152 x i8] zeroinitializer }, align 32
@adis16240_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 405, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spi_setup failed!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adis16240_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/iio/accel/adis16240.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adis16240_probe._entry_ptr = internal global ptr @adis16240_probe._entry, section ".printk_index", align 4
@adis16240_data = internal constant { %struct.adis_data, [48 x i8] } { %struct.adis_data { i32 35, i32 35, i32 0, i32 74, i32 70, i32 26, i32 0, i32 0, i32 256, i32 70, i8 1, ptr @adis16240_timeouts, ptr @adis16240_status_error_msgs, i32 47, ptr null, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@adis16240_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adis16240_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@adis16240_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @iio_dev_attr_in_accel_xyz_squared_peak_raw, ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [20 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_accel_xyz_squared_peak_raw = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adis16240_read_12bit_signed, ptr null }, i64 20, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.8, %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"in_accel_xyz_squared_peak_raw\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"4096\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@adis16240_addresses = internal constant { [3 x [2 x i8]], [26 x i8] } { [3 x [2 x i8]] [[2 x i8] c" \0E", [2 x i8] c"\22\10", [2 x i8] c"$\12"], [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"supply\00", [25 x i8] zeroinitializer }, align 32
@adis16240_timeouts = internal constant { %struct.adis_timeout, [26 x i8] } { %struct.adis_timeout { i16 220, i16 220, i16 220 }, [26 x i8] zeroinitializer }, align 32
@adis16240_status_error_msgs = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr null, ptr @.str.15], [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Power supply below 2.225V\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Power supply above 3.625V\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Flash update failed\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SPI failure\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Power on, self-test failed\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 9]
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"adis16240_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 430, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 432, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"adis16240_of_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 424, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"adis16240_info\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 341, i32 30 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"adis16240_channels\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 315, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 405, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"adis16240_data\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 362, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant [26 x i8] c"adis16240_attribute_group\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 337, i32 37 }
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"adis16240_attributes\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 331, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant [43 x i8] c"iio_dev_attr_in_accel_xyz_squared_peak_raw\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 226, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 216, i32 22 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 230, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant [20 x i8] c"adis16240_addresses\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 232, i32 17 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 316, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [19 x i8] c"adis16240_timeouts\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 356, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant [28 x i8] c"adis16240_status_error_msgs\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 348, i32 27 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 353, i32 40 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 352, i32 41 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 351, i32 40 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 350, i32 39 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [41 x i8] c"../drivers/staging/iio/accel/adis16240.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 349, i32 41 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_alias239, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_adis16240_driver_exit, ptr @__initcall__kmod_adis16240__234_437_adis16240_driver_init6, ptr @adis16240_driver_exit, ptr @adis16240_probe._entry, ptr @adis16240_probe._entry_ptr, ptr @adis16240_driver, ptr @.str, ptr @adis16240_of_match, ptr @adis16240_info, ptr @adis16240_channels, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @adis16240_data, ptr @adis16240_attribute_group, ptr @adis16240_attributes, ptr @iio_dev_attr_in_accel_xyz_squared_peak_raw, ptr @iio_const_attr_sampling_frequency_available, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @adis16240_addresses, ptr @.str.10, ptr @adis16240_timeouts, ptr @adis16240_status_error_msgs, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16240_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16240_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16240_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16240_channels to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16240_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16240_data to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16240_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16240_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_accel_xyz_squared_peak_raw to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16240_addresses to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16240_timeouts to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16240_status_error_msgs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16240_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @adis16240_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adis16240_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @adis16240_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16240_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 384) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %driver = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 6
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %name3 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %7 = ptrtoint ptr %name3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %name3, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @adis16240_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @adis16240_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %10 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 7, ptr %num_channels, align 4
  %11 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call, align 8
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %mode, align 8
  %call4 = tail call i32 @spi_setup(ptr noundef %spi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @adis_init(ptr noundef %1, ptr noundef nonnull %call, ptr noundef %spi, ptr noundef nonnull @adis16240_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @devm_adis_setup_buffer_and_trigger(ptr noundef %1, ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %state_lock.i = getelementptr inbounds %struct.adis, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i, i32 noundef 0) #6
  %call.i = tail call i32 @__adis_initial_startup(ptr noundef %1) #6
  tail call void @mutex_unlock(ptr noundef %state_lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call22, %if.end20 ], [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call.i, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adis_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_adis_setup_buffer_and_trigger(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16240_read_raw(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %tmp.i51 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 7, label %sw.bb6
    i32 3, label %sw.bb7
    i32 5, label %sw.bb8
    i32 6, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @adis_single_conversion(ptr noundef %indio_dev, ptr noundef %chan, i32 noundef 16384, ptr noundef %val) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %4, label %sw.bb2.cleanup_crit_edge [
    i32 0, label %sw.bb3
    i32 9, label %sw.bb4
    i32 3, label %sw.bb5
  ]

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb2
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %val, align 4
  %9 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 880000, ptr %val2, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 244, ptr %val, align 4
  %11 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %val2, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %val, align 4
  %13 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 504061, ptr %val2, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %val, align 4
  %15 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 504061, ptr %val2, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -205, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %17 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %scan_index, align 4
  %arrayidx = getelementptr [3 x [2 x i8]], ptr @adis16240_addresses, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %20 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %21 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %tmp.i, align 4, !annotation !72
  %state_lock.i.i = getelementptr inbounds %struct.adis, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #6
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull %tmp.i, i32 noundef 2) #6
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end12, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  br label %cleanup

if.end12:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  %shl.i = shl i32 %23, 22
  %shr.i = ashr exact i32 %shl.i, 22
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr.i, ptr %val, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %scan_index16 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %25 = ptrtoint ptr %scan_index16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scan_index16, align 4
  %arrayidx18 = getelementptr [3 x [2 x i8]], ptr @adis16240_addresses, i32 0, i32 %26, i32 1
  %27 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %28 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i51) #6
  %29 = ptrtoint ptr %tmp.i51 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %tmp.i51, align 4, !annotation !72
  %state_lock.i.i52 = getelementptr inbounds %struct.adis, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i52, i32 noundef 0) #6
  %call.i.i53 = call i32 @__adis_read_reg(ptr noundef %1, i32 noundef %conv19, ptr noundef nonnull %tmp.i51, i32 noundef 2) #6
  call void @mutex_unlock(ptr noundef %state_lock.i.i52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i53)
  %cmp.i54 = icmp eq i32 %call.i.i53, 0
  br i1 %cmp.i54, label %if.end23, label %adis_read_reg_16.exit57

adis_read_reg_16.exit57:                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i51) #6
  br label %cleanup

if.end23:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %tmp.i51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tmp.i51, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i51) #6
  %shl.i49 = shl i32 %31, 22
  %shr.i50 = ashr exact i32 %shl.i49, 22
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shr.i50, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %adis_read_reg_16.exit57, %if.end12, %adis_read_reg_16.exit, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %if.then, %sw.bb3.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end23 ], [ 1, %if.end12 ], [ 1, %sw.bb7 ], [ 2, %sw.bb6 ], [ 2, %sw.bb5 ], [ 2, %sw.bb4 ], [ 2, %if.then ], [ %call1, %sw.bb ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ], [ %call.i.i, %adis_read_reg_16.exit ], [ %call.i.i53, %adis_read_reg_16.exit57 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16240_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mask)
  %cond = icmp eq i32 %mask, 5
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_index, align 4
  %arrayidx = getelementptr [3 x [2 x i8]], ptr @adis16240_addresses, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %conv2 = and i32 %val, 1023
  %state_lock.i.i = getelementptr inbounds %struct.adis, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #6
  %call.i.i = tail call i32 @__adis_write_reg(ptr noundef %1, i32 noundef %conv, i32 noundef %conv2, i32 noundef 2) #6
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adis_update_scan_mode(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16240_read_12bit_signed(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %address.i = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %address.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %address.i, align 8
  %conv.i = trunc i64 %3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #6
  %4 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !72
  %state_lock.i.i.i = getelementptr inbounds %struct.adis, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i, i32 noundef 0) #6
  %call.i.i.i = call i32 @__adis_read_reg(ptr noundef %1, i32 noundef %conv.i, ptr noundef nonnull %tmp.i.i, i32 noundef 2) #6
  call void @mutex_unlock(ptr noundef %state_lock.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i, label %adis_read_reg_16.exit.i

adis_read_reg_16.exit.i:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  br label %adis16240_spi_read_signed.exit

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  %7 = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not.i = icmp eq i32 %7, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i, i32 noundef 0) #6
  %call.i.i = call i32 @__adis_check_status(ptr noundef %1) #6
  call void @mutex_unlock(ptr noundef %state_lock.i.i.i) #6
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %conv125.i = shl i32 %6, 20
  %conv12.i = ashr exact i32 %conv125.i, 20
  %call13.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.7, i32 noundef %conv12.i) #6
  br label %adis16240_spi_read_signed.exit

adis16240_spi_read_signed.exit:                   ; preds = %if.end7.i, %adis_read_reg_16.exit.i
  %retval.0.i = phi i32 [ %call13.i, %if.end7.i ], [ %call.i.i.i, %adis_read_reg_16.exit.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__adis_read_reg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__adis_check_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adis_single_conversion(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__adis_write_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__adis_initial_startup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_adis16240__234_437_adis16240_driver_init6, !1, !"__initcall__kmod_adis16240__234_437_adis16240_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 437, i32 1}
!2 = !{ptr @__exitcall_adis16240_driver_exit, !1, !"__exitcall_adis16240_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 439, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 440, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 441, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias239, !11, !"__UNIQUE_ID_alias239", i1 false, i1 false}
!11 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 442, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 432, i32 11}
!14 = !{ptr @adis16240_driver, !15, !"adis16240_driver", i1 false, i1 false}
!15 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 430, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 405, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @adis16240_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @adis16240_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @adis16240_info, !25, !"adis16240_info", i1 false, i1 false}
!25 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 341, i32 30}
!26 = !{ptr @adis16240_attribute_group, !27, !"adis16240_attribute_group", i1 false, i1 false}
!27 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 337, i32 37}
!28 = !{ptr @adis16240_attributes, !29, !"adis16240_attributes", i1 false, i1 false}
!29 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 331, i32 26}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 226, i32 8}
!32 = !{ptr @iio_dev_attr_in_accel_xyz_squared_peak_raw, !31, !"iio_dev_attr_in_accel_xyz_squared_peak_raw", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 216, i32 22}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 230, i32 8}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @iio_const_attr_sampling_frequency_available, !36, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!39 = !{ptr @adis16240_addresses, !40, !"adis16240_addresses", i1 false, i1 false}
!40 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 232, i32 17}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 316, i32 2}
!43 = !{ptr @adis16240_channels, !44, !"adis16240_channels", i1 false, i1 false}
!44 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 315, i32 35}
!45 = !{ptr @adis16240_data, !46, !"adis16240_data", i1 false, i1 false}
!46 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 362, i32 31}
!47 = !{ptr @adis16240_timeouts, !48, !"adis16240_timeouts", i1 false, i1 false}
!48 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 356, i32 34}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 353, i32 40}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 352, i32 41}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 351, i32 40}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 350, i32 39}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 349, i32 41}
!59 = !{ptr @adis16240_status_error_msgs, !60, !"adis16240_status_error_msgs", i1 false, i1 false}
!60 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 348, i32 27}
!61 = !{ptr @adis16240_of_match, !62, !"adis16240_of_match", i1 false, i1 false}
!62 = !{!"../drivers/staging/iio/accel/adis16240.c", i32 424, i32 34}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"auto-init"}
