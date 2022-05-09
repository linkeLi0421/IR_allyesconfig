; ModuleID = '/llk/IR_all_yes/drivers/iio/gyro/adis16136.c_pt.bc'
source_filename = "../drivers/iio/gyro/adis16136.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.adis16136_chip_info = type { i32, i32, %struct.adis_data }
%struct.adis_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, i32, ptr, i8, i8, i32, i32, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adis_timeout = type { i16, i16, i16 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.adis16136 = type { ptr, [124 x i8], %struct.adis }
%struct.adis = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.spi_message, ptr, i32, i32, ptr, [76 x i8], [10 x i8], [4 x i8], [114 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__initcall__kmod_adis16136__234_589_adis16136_driver_init6 = internal global ptr @adis16136_driver_init, section ".initcall6.init", align 4
@adis16136_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @adis16136_ids, ptr @adis16136_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adis16136_driver_exit = internal global ptr @adis16136_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [54 x i8] c"adis16136.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [84 x i8] c"adis16136.description=Analog Devices ADIS16133/ADIS16135/ADIS16136 gyroscope driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [42 x i8] c"adis16136.file=drivers/iio/gyro/adis16136\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [25 x i8] c"adis16136.license=GPL v2\00", section ".modinfo", align 1
@adis16136_ids = internal constant { [5 x %struct.spi_device_id], [44 x i8] } { [5 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"adis16133\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"adis16135\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"adis16136\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"adis16137\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adis16136\00", [22 x i8] zeroinitializer }, align 32
@adis16136_chip_info = internal constant { [4 x %struct.adis16136_chip_info], [64 x i8] } { [4 x %struct.adis16136_chip_info] [%struct.adis16136_chip_info { i32 21, i32 24000, %struct.adis_data { i32 10, i32 10, i32 0, i32 40, i32 28, i32 38, i32 0, i32 0, i32 1024, i32 28, i8 0, ptr @adis16133_timeouts, ptr @adis16136_status_error_msgs, i32 108, ptr null, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.adis16136_chip_info { i32 5, i32 24000, %struct.adis_data { i32 10, i32 10, i32 0, i32 40, i32 28, i32 38, i32 0, i32 0, i32 1024, i32 28, i8 0, ptr @adis16133_timeouts, ptr @adis16136_status_error_msgs, i32 108, ptr null, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.adis16136_chip_info { i32 8, i32 24623, %struct.adis_data { i32 10, i32 10, i32 0, i32 40, i32 28, i32 38, i32 0, i32 0, i32 1024, i32 28, i8 0, ptr @adis16136_timeouts, ptr @adis16136_status_error_msgs, i32 108, ptr null, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.adis16136_chip_info { i32 17, i32 24609, %struct.adis_data { i32 10, i32 10, i32 0, i32 40, i32 28, i32 38, i32 0, i32 0, i32 1024, i32 28, i8 0, ptr @adis16136_timeouts, ptr @adis16136_status_error_msgs, i32 108, ptr null, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0 } }], [64 x i8] zeroinitializer }, align 32
@adis16136_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 4, i32 0, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 1057, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 2, i32 1, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 2, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@adis16136_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @adis16136_attribute_group, ptr @adis16136_read_raw, ptr null, ptr null, ptr @adis16136_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adis_update_scan_mode, ptr @adis_debugfs_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adis16133_timeouts = internal constant { %struct.adis_timeout, [26 x i8] } { %struct.adis_timeout { i16 75, i16 75, i16 50 }, [26 x i8] zeroinitializer }, align 32
@adis16136_status_error_msgs = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr null, ptr null, ptr @.str.1, ptr @.str.2, ptr null, ptr @.str.3, ptr @.str.4], [36 x i8] zeroinitializer }, align 32
@adis16136_timeouts = internal constant { %struct.adis_timeout, [26 x i8] } { %struct.adis_timeout { i16 128, i16 75, i16 245 }, [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Flash update failed\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SPI failure\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Self test error\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Flash checksum error\00", [43 x i8] zeroinitializer }, align 32
@adis16136_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adis16136_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@adis16136_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_dev_attr_sampling_frequency, ptr null], [24 x i8] zeroinitializer }, align 32
@iio_dev_attr_sampling_frequency = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adis16136_read_frequency, ptr @adis16136_write_frequency }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sampling_frequency\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@adis16136_3db_divisors = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 6, i32 12, i32 25, i32 50, i32 100, i32 200, i32 200], [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adis%u\0A\00", [24 x i8] zeroinitializer }, align 32
@adis16136_initial_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 447, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Device ID(%u) and product ID(%u) do not match.\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adis16136_initial_setup\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/gyro/adis16136.c\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adis16136_initial_setup._entry_ptr = internal global ptr @adis16136_initial_setup._entry, section ".printk_index", align 4
@adis16136_stop_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.10, i32 420, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not power down device: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adis16136_stop_device\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@adis16136_stop_device._entry_ptr = internal global ptr @adis16136_stop_device._entry, section ".printk_index", align 4
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial_number\00", [18 x i8] zeroinitializer }, align 32
@adis16136_serial_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @adis16136_show_serial, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"product_id\00", [21 x i8] zeroinitializer }, align 32
@adis16136_product_id_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @adis16136_product_id_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flash_count\00", [20 x i8] zeroinitializer }, align 32
@adis16136_flash_count_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @adis16136_flash_count_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%.4x%.4x%.4x-%.4x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 5, i64 10]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 9]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 10]
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"adis16136_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 582, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"adis16136_ids\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 573, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 584, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"adis16136_chip_info\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 495, i32 41 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"adis16136_channels\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 359, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"adis16136_info\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 404, i32 30 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"adis16133_timeouts\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 483, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [28 x i8] c"adis16136_status_error_msgs\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 452, i32 27 }
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"adis16136_timeouts\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 489, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 453, i32 44 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 454, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 455, i32 41 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 456, i32 44 }
@___asan_gen_.63 = private unnamed_addr constant [26 x i8] c"adis16136_attribute_group\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 400, i32 37 }
@___asan_gen_.66 = private unnamed_addr constant [21 x i8] c"adis16136_attributes\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 395, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant [32 x i8] c"iio_dev_attr_sampling_frequency\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 233, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 230, i32 22 }
@___asan_gen_.78 = private unnamed_addr constant [23 x i8] c"adis16136_3db_divisors\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 237, i32 23 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 441, i32 32 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 446, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 419, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 148, i32 29 }
@___asan_gen_.117 = private unnamed_addr constant [22 x i8] c"adis16136_serial_fops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 100, i32 37 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 150, i32 29 }
@___asan_gen_.123 = private unnamed_addr constant [26 x i8] c"adis16136_product_id_fops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 152, i32 29 }
@___asan_gen_.129 = private unnamed_addr constant [27 x i8] c"adis16136_flash_count_fops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 94, i32 35 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 122, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [32 x i8] c"../drivers/iio/gyro/adis16136.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 140, i32 1 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_adis16136_driver_exit, ptr @__initcall__kmod_adis16136__234_589_adis16136_driver_init6, ptr @adis16136_driver_exit, ptr @adis16136_initial_setup._entry, ptr @adis16136_initial_setup._entry_ptr, ptr @adis16136_stop_device._entry, ptr @adis16136_stop_device._entry_ptr, ptr @adis16136_driver, ptr @adis16136_ids, ptr @.str, ptr @adis16136_chip_info, ptr @adis16136_channels, ptr @adis16136_info, ptr @adis16133_timeouts, ptr @adis16136_status_error_msgs, ptr @adis16136_timeouts, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @adis16136_attribute_group, ptr @adis16136_attributes, ptr @iio_dev_attr_sampling_frequency, ptr @.str.5, ptr @.str.6, ptr @adis16136_3db_divisors, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @adis16136_serial_fops, ptr @.str.17, ptr @adis16136_product_id_fops, ptr @.str.18, ptr @adis16136_flash_count_fops, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16136_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16136_ids to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16136_chip_info to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16136_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16136_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16133_timeouts to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16136_status_error_msgs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16136_timeouts to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16136_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16136_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sampling_frequency to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16136_3db_divisors to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16136_initial_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16136_stop_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16136_serial_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16136_product_id_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16136_flash_count_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16136_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @adis16136_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adis16136_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @adis16136_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16136_probe(ptr noundef %spi) #2 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  %device_id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #6
  %call1 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 512) #6
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [4 x %struct.adis16136_chip_info], ptr @adis16136_chip_info, i32 0, i32 %4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %2, align 128
  %call3 = tail call ptr @spi_get_device_id(ptr noundef %spi) #6
  %name4 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 15
  %6 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %name4, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 13
  %7 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @adis16136_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 14
  %8 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 17
  %9 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @adis16136_info, ptr %info, align 8
  %10 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %call1, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 128
  %adis_data = getelementptr inbounds %struct.adis16136_chip_info, ptr %12, i32 0, i32 2
  %adis = getelementptr inbounds %struct.adis16136, ptr %2, i32 0, i32 2
  %call6 = tail call i32 @adis_init(ptr noundef %adis, ptr noundef nonnull %call1, ptr noundef %spi, ptr noundef %adis_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call i32 @devm_adis_setup_buffer_and_trigger(ptr noundef %adis, ptr noundef nonnull %call1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device_id.i) #6
  %15 = ptrtoint ptr %device_id.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %device_id.i, align 4, !annotation !88
  %adis.i = getelementptr inbounds %struct.adis16136, ptr %14, i32 0, i32 2
  %state_lock.i.i = getelementptr inbounds %struct.adis16136, ptr %14, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #6
  %call.i.i = tail call i32 @__adis_initial_startup(ptr noundef %adis.i) #6
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.adis16136_initial_setup.exit.thread_crit_edge

if.end13.adis16136_initial_setup.exit.thread_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %adis16136_initial_setup.exit.thread

if.end.i:                                         ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #6
  %16 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !88
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #6
  %call.i.i.i = call i32 @__adis_read_reg(ptr noundef %adis.i, i32 noundef 56, ptr noundef nonnull %tmp.i.i, i32 noundef 2) #6
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end6.i, label %adis_read_reg_16.exit.i

adis_read_reg_16.exit.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  br label %adis16136_initial_setup.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tmp.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  %19 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name4, align 8
  %call7.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %20, ptr noundef nonnull @.str.7, ptr noundef nonnull %device_id.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %cmp.not.i = icmp eq i32 %call7.i, 1
  br i1 %cmp.not.i, label %if.end9.i, label %if.end6.i.adis16136_initial_setup.exit.thread_crit_edge

if.end6.i.adis16136_initial_setup.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adis16136_initial_setup.exit.thread

if.end9.i:                                        ; preds = %if.end6.i
  %conv.i = and i32 %18, 65535
  %21 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %device_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv.i)
  %cmp10.not.i = icmp eq i32 %22, %conv.i
  br i1 %cmp10.not.i, label %if.end9.i.if.end17_crit_edge, label %do.end.i

if.end9.i.if.end17_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.8, i32 noundef %22, i32 noundef %conv.i) #9
  br label %if.end17

adis16136_initial_setup.exit.thread:              ; preds = %if.end6.i.adis16136_initial_setup.exit.thread_crit_edge, %adis_read_reg_16.exit.i, %if.end13.adis16136_initial_setup.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end6.i.adis16136_initial_setup.exit.thread_crit_edge ], [ %call.i.i.i, %adis_read_reg_16.exit.i ], [ %call.i.i, %if.end13.adis16136_initial_setup.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_id.i) #6
  br label %cleanup

if.end17:                                         ; preds = %do.end.i, %if.end9.i.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_id.i) #6
  %call.i = call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @adis16136_stop, ptr noundef nonnull %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i64 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i64, label %if.end22, label %if.then.i

if.then.i:                                        ; preds = %if.end17
  %23 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv.i, align 8
  %adis.i.i.i = getelementptr inbounds %struct.adis16136, ptr %24, i32 0, i32 2
  %state_lock.i.i.i.i.i = getelementptr inbounds %struct.adis16136, ptr %24, i32 0, i32 2, i32 4
  call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i.i.i, i32 noundef 0) #6
  %call.i.i.i.i.i = call i32 @__adis_write_reg(ptr noundef %adis.i.i.i, i32 noundef 36, i32 noundef 255, i32 noundef 2) #6
  call void @mutex_unlock(ptr noundef %state_lock.i.i.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.13, i32 noundef %call.i.i.i.i.i) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %call24 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @adis16136_debugfs_init(ptr noundef nonnull %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end22.cleanup_crit_edge, %do.end.i.i.i, %if.then.i.cleanup_crit_edge, %adis16136_initial_setup.exit.thread, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -12, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ %call24, %if.end22.cleanup_crit_edge ], [ %retval.0.i.ph, %adis16136_initial_setup.exit.thread ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adis_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_adis_setup_buffer_and_trigger(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adis16136_stop(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %adis.i = getelementptr inbounds %struct.adis16136, ptr %1, i32 0, i32 2
  %state_lock.i.i.i = getelementptr inbounds %struct.adis16136, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i, i32 noundef 0) #6
  %call.i.i.i = tail call i32 @__adis_write_reg(ptr noundef %adis.i, i32 noundef 36, i32 noundef 255, i32 noundef 2) #6
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %entry.adis16136_stop_device.exit_crit_edge, label %do.end.i

entry.adis16136_stop_device.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %adis16136_stop_device.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %call.i.i.i) #9
  br label %adis16136_stop_device.exit

adis16136_stop_device.exit:                       ; preds = %do.end.i, %entry.adis16136_stop_device.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adis16136_debugfs_init(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call ptr @iio_get_debugfs_dentry(ptr noundef %indio_dev) #6
  %call2 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.16, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %1, ptr noundef nonnull @adis16136_serial_fops) #6
  %call3 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.17, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %1, ptr noundef nonnull @adis16136_product_id_fops) #6
  %call4 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.18, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %1, ptr noundef nonnull @adis16136_flash_count_fops) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16136_read_raw(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %info) #2 align 64 {
entry:
  %tmp.i.i.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 5, label %sw.bb6
    i32 10, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @adis_single_conversion(ptr noundef %indio_dev, ptr noundef %chan, i32 noundef 0, ptr noundef %val) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %4, label %sw.bb2.cleanup_crit_edge [
    i32 4, label %sw.bb3
    i32 9, label %sw.bb5
  ]

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  %11 = load ptr, ptr %1, align 128
  %fullscale = getelementptr inbounds %struct.adis16136_chip_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %fullscale to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fullscale, align 4
  %shl = shl i32 %13, 16
  %14 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shl, ptr %val2, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 10, ptr %val, align 4
  %16 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 697000, ptr %val2, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %adis = getelementptr inbounds %struct.adis16136, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %17 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %tmp.i, align 4, !annotation !88
  %state_lock.i.i = getelementptr inbounds %struct.adis16136, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #6
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 4) #6
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_32.exit

adis_read_reg_32.exit:                            ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %val, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %adis.i = getelementptr inbounds %struct.adis16136, ptr %1, i32 0, i32 2
  %state_lock.i.i25 = getelementptr inbounds %struct.adis16136, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i25, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #6
  %21 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !88
  %call.i.i26 = call i32 @__adis_read_reg(ptr noundef %adis.i, i32 noundef 32, ptr noundef nonnull %tmp.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26)
  %cmp.i.i = icmp eq i32 %call.i.i26, 0
  br i1 %cmp.i.i, label %if.end.i, label %__adis_read_reg_16.exit.i

__adis_read_reg_16.exit.i:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  br label %adis16136_get_filter.exit

if.end.i:                                         ; preds = %sw.bb9
  %22 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tmp.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #6
  %24 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %tmp.i.i.i, align 4, !annotation !88
  %call.i.i.i = call i32 @__adis_read_reg(ptr noundef %adis.i, i32 noundef 30, ptr noundef nonnull %tmp.i.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %25, label %__adis16136_get_freq.exit.i

__adis16136_get_freq.exit.i:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #6
  br label %adis16136_get_filter.exit

25:                                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tmp.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #6
  %conv.i15.i = and i32 %27, 65535
  %add.i.i = add nuw nsw i32 %conv.i15.i, 1
  %div.i.i = udiv i32 32768, %add.i.i
  %28 = and i32 %23, 7
  %arrayidx.i = getelementptr [8 x i32], ptr @adis16136_3db_divisors, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %div.i = udiv i32 %div.i.i, %30
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div.i, ptr %val, align 4
  br label %adis16136_get_filter.exit

adis16136_get_filter.exit:                        ; preds = %25, %__adis16136_get_freq.exit.i, %__adis_read_reg_16.exit.i
  %32 = phi i32 [ 1, %25 ], [ %call.i.i.i, %__adis16136_get_freq.exit.i ], [ %call.i.i26, %__adis_read_reg_16.exit.i ]
  call void @mutex_unlock(ptr noundef %state_lock.i.i25) #6
  br label %cleanup

cleanup:                                          ; preds = %adis16136_get_filter.exit, %if.end, %adis_read_reg_32.exit, %sw.bb5, %sw.bb3, %sw.bb2.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %32, %adis16136_get_filter.exit ], [ 1, %if.end ], [ 2, %sw.bb5 ], [ 10, %sw.bb3 ], [ %call1, %sw.bb ], [ -22, %sw.bb2.cleanup_crit_edge ], [ %call.i.i, %adis_read_reg_32.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16136_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %info) #2 align 64 {
entry:
  %tmp.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 10, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %adis = getelementptr inbounds %struct.adis16136, ptr %1, i32 0, i32 2
  %state_lock.i.i = getelementptr inbounds %struct.adis16136, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #6
  %call.i.i = tail call i32 @__adis_write_reg(ptr noundef %adis, i32 noundef 8, i32 noundef %val, i32 noundef 4) #6
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %adis.i = getelementptr inbounds %struct.adis16136, ptr %1, i32 0, i32 2
  %state_lock.i.i6 = getelementptr inbounds %struct.adis16136, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i6, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #6
  %3 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tmp.i.i.i, align 4, !annotation !88
  %call.i.i.i = call i32 @__adis_read_reg(ptr noundef %adis.i, i32 noundef 30, ptr noundef nonnull %tmp.i.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %__adis16136_get_freq.exit.i, label %__adis16136_get_freq.exit.thread.i

__adis16136_get_freq.exit.thread.i:               ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #6
  br label %adis16136_set_filter.exit

__adis16136_get_freq.exit.i:                      ; preds = %sw.bb2
  %4 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #6
  %conv.i.i = and i32 %5, 65535
  %add.i.i = add nuw nsw i32 %conv.i.i, 1
  %div.i.i = udiv i32 32768, %add.i.i
  %div.lhs.trunc.i = trunc i32 %div.i.i to i16
  %div19.i = udiv i16 %div.lhs.trunc.i, 200
  %div.zext.i = zext i16 %div19.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.zext.i, i32 %val)
  %cmp2.not.i = icmp ult i32 %div.zext.i, %val
  br i1 %cmp2.not.i, label %for.inc.1.i, label %__adis16136_get_freq.exit.i.for.end.i_crit_edge

__adis16136_get_freq.exit.i.for.end.i_crit_edge:  ; preds = %__adis16136_get_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.1.i:                                      ; preds = %__adis16136_get_freq.exit.i
  %div.220.i = udiv i16 %div.lhs.trunc.i, 100
  %div.2.zext.i = zext i16 %div.220.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.2.zext.i, i32 %val)
  %cmp2.not.2.i = icmp ult i32 %div.2.zext.i, %val
  br i1 %cmp2.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.end.i_crit_edge

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %div.321.i = udiv i16 %div.lhs.trunc.i, 50
  %div.3.zext.i = zext i16 %div.321.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.3.zext.i, i32 %val)
  %cmp2.not.3.i = icmp ult i32 %div.3.zext.i, %val
  br i1 %cmp2.not.3.i, label %for.inc.3.i, label %for.inc.2.i.for.end.i_crit_edge

for.inc.2.i.for.end.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %div.422.i = udiv i16 %div.lhs.trunc.i, 25
  %div.4.zext.i = zext i16 %div.422.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.4.zext.i, i32 %val)
  %cmp2.not.4.i = icmp ult i32 %div.4.zext.i, %val
  br i1 %cmp2.not.4.i, label %for.inc.4.i, label %for.inc.3.i.for.end.i_crit_edge

for.inc.3.i.for.end.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %div.523.i = udiv i16 %div.lhs.trunc.i, 12
  %div.5.zext.i = zext i16 %div.523.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.5.zext.i, i32 %val)
  %cmp2.not.5.i = icmp ult i32 %div.5.zext.i, %val
  br i1 %cmp2.not.5.i, label %for.inc.5.i, label %for.inc.4.i.for.end.i_crit_edge

for.inc.4.i.for.end.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %div.624.i = udiv i16 %div.lhs.trunc.i, 6
  %div.6.zext.i = zext i16 %div.624.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.6.zext.i, i32 %val)
  %cmp2.not.6.i = icmp uge i32 %div.6.zext.i, %val
  %spec.select.i = zext i1 %cmp2.not.6.i to i32
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.5.i, %for.inc.4.i.for.end.i_crit_edge, %for.inc.3.i.for.end.i_crit_edge, %for.inc.2.i.for.end.i_crit_edge, %for.inc.1.i.for.end.i_crit_edge, %__adis16136_get_freq.exit.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 7, %__adis16136_get_freq.exit.i.for.end.i_crit_edge ], [ 5, %for.inc.1.i.for.end.i_crit_edge ], [ 4, %for.inc.2.i.for.end.i_crit_edge ], [ 3, %for.inc.3.i.for.end.i_crit_edge ], [ 2, %for.inc.4.i.for.end.i_crit_edge ], [ %spec.select.i, %for.inc.5.i ]
  %call.i.i7 = call i32 @__adis_write_reg(ptr noundef %adis.i, i32 noundef 32, i32 noundef %i.0.lcssa.i, i32 noundef 2) #6
  br label %adis16136_set_filter.exit

adis16136_set_filter.exit:                        ; preds = %for.end.i, %__adis16136_get_freq.exit.thread.i
  %ret.0.i = phi i32 [ %call.i.i7, %for.end.i ], [ %call.i.i.i, %__adis16136_get_freq.exit.thread.i ]
  call void @mutex_unlock(ptr noundef %state_lock.i.i6) #6
  br label %cleanup

cleanup:                                          ; preds = %adis16136_set_filter.exit, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %adis16136_set_filter.exit ], [ %call.i.i, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adis_update_scan_mode(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adis_debugfs_reg_access(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16136_read_frequency(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %adis = getelementptr inbounds %struct.adis16136, ptr %1, i32 0, i32 2
  %state_lock.i = getelementptr inbounds %struct.adis16136, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #6
  %2 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !88
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 30, ptr noundef nonnull %tmp.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %__adis16136_get_freq.exit

__adis16136_get_freq.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  call void @mutex_unlock(ptr noundef %state_lock.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  %conv.i = and i32 %4, 65535
  %add.i = add nuw nsw i32 %conv.i, 1
  %div.i = udiv i32 32768, %add.i
  call void @mutex_unlock(ptr noundef %state_lock.i) #6
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.6, i32 noundef %div.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__adis16136_get_freq.exit
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call.i.i, %__adis16136_get_freq.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16136_write_frequency(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !88
  %call2 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %div.i = udiv i32 32768, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2184, i32 %4)
  %cmp.i = icmp ugt i32 %4, 2184
  %phi.cast.i = add nuw nsw i32 %div.i, 65535
  %adis.i = getelementptr inbounds %struct.adis16136, ptr %1, i32 0, i32 2
  %5 = and i32 %phi.cast.i, 65535
  %conv.i.i = select i1 %cmp.i, i32 15, i32 %5
  %state_lock.i.i.i = getelementptr inbounds %struct.adis16136, ptr %1, i32 0, i32 2, i32 4
  call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i, i32 noundef 0) #6
  %call.i.i.i = call i32 @__adis_write_reg(ptr noundef %adis.i, i32 noundef 30, i32 noundef %conv.i.i, i32 noundef 2) #6
  call void @mutex_unlock(ptr noundef %state_lock.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool6.not = icmp eq i32 %call.i.i.i, 0
  %len.call5 = select i1 %tobool6.not, i32 %len, i32 %call.i.i.i
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.call5, %if.end4 ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__adis_read_reg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__adis_write_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adis_single_conversion(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__adis_initial_startup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_get_debugfs_dentry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16136_show_serial(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %tmp.i53 = alloca i32, align 4
  %tmp.i46 = alloca i32, align 4
  %tmp.i39 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #6
  %adis = getelementptr inbounds %struct.adis16136, ptr %1, i32 0, i32 2
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tmp.i, align 4, !annotation !88
  %state_lock.i.i = getelementptr inbounds %struct.adis16136, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #6
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 58, ptr noundef nonnull %tmp.i, i32 noundef 2) #6
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i39) #6
  %6 = ptrtoint ptr %tmp.i39 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tmp.i39, align 4, !annotation !88
  call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #6
  %call.i.i41 = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 50, ptr noundef nonnull %tmp.i39, i32 noundef 2) #6
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41)
  %cmp.i42 = icmp eq i32 %call.i.i41, 0
  br i1 %cmp.i42, label %if.end5, label %adis_read_reg_16.exit45

adis_read_reg_16.exit45:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i39) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %tmp.i39 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tmp.i39, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i39) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i46) #6
  %9 = ptrtoint ptr %tmp.i46 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %tmp.i46, align 4, !annotation !88
  call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #6
  %call.i.i48 = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 52, ptr noundef nonnull %tmp.i46, i32 noundef 2) #6
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48)
  %cmp.i49 = icmp eq i32 %call.i.i48, 0
  br i1 %cmp.i49, label %if.end10, label %adis_read_reg_16.exit52

adis_read_reg_16.exit52:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i46) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %10 = ptrtoint ptr %tmp.i46 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmp.i46, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i46) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i53) #6
  %12 = ptrtoint ptr %tmp.i53 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %tmp.i53, align 4, !annotation !88
  call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #6
  %call.i.i55 = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 54, ptr noundef nonnull %tmp.i53, i32 noundef 2) #6
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i55)
  %cmp.i56 = icmp eq i32 %call.i.i55, 0
  br i1 %cmp.i56, label %if.end15, label %adis_read_reg_16.exit59

adis_read_reg_16.exit59:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i53) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %tmp.i53 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmp.i53, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i53) #6
  %conv = and i32 %8, 65535
  %conv16 = and i32 %11, 65535
  %conv17 = and i32 %14, 65535
  %conv18 = and i32 %5, 65535
  %call19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv16, i32 noundef %conv17, i32 noundef %conv18)
  %call21 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call19) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %adis_read_reg_16.exit59, %adis_read_reg_16.exit52, %adis_read_reg_16.exit45, %adis_read_reg_16.exit
  %retval.0 = phi i32 [ %call21, %if.end15 ], [ %call.i.i, %adis_read_reg_16.exit ], [ %call.i.i41, %adis_read_reg_16.exit45 ], [ %call.i.i48, %adis_read_reg_16.exit52 ], [ %call.i.i55, %adis_read_reg_16.exit59 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16136_product_id_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @adis16136_show_product_id, ptr noundef null, ptr noundef nonnull @.str.20) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16136_show_product_id(ptr noundef %arg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adis = getelementptr inbounds %struct.adis16136, ptr %arg, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !88
  %state_lock.i.i = getelementptr inbounds %struct.adis16136, ptr %arg, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #6
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 56, ptr noundef nonnull %tmp.i, i32 noundef 2) #6
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  %conv.i.mask = and i32 %2, 65535
  %conv = zext i32 %conv.i.mask to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %adis_read_reg_16.exit
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16136_flash_count_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @adis16136_show_flash_count, ptr noundef null, ptr noundef nonnull @.str.21) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16136_show_flash_count(ptr noundef %arg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adis = getelementptr inbounds %struct.adis16136, ptr %arg, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !88
  %state_lock.i.i = getelementptr inbounds %struct.adis16136, ptr %arg, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #6
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 0, ptr noundef nonnull %tmp.i, i32 noundef 2) #6
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  %conv.i.mask = and i32 %2, 65535
  %conv = zext i32 %conv.i.mask to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %adis_read_reg_16.exit
  ret i32 %call.i.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !45, !47, !49, !51, !52, !53, !54, !55, !56, !57, !59, !60, !61, !62, !63, !65, !67, !69, !71, !73, !75, !76, !78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__initcall__kmod_adis16136__234_589_adis16136_driver_init6, !1, !"__initcall__kmod_adis16136__234_589_adis16136_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/gyro/adis16136.c", i32 589, i32 1}
!2 = !{ptr @__exitcall_adis16136_driver_exit, !1, !"__exitcall_adis16136_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/iio/gyro/adis16136.c", i32 591, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/iio/gyro/adis16136.c", i32 592, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/iio/gyro/adis16136.c", i32 593, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/gyro/adis16136.c", i32 584, i32 11}
!12 = !{ptr @adis16136_driver, !13, !"adis16136_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/gyro/adis16136.c", i32 582, i32 26}
!14 = !{ptr @adis16136_ids, !15, !"adis16136_ids", i1 false, i1 false}
!15 = !{!"../drivers/iio/gyro/adis16136.c", i32 573, i32 35}
!16 = !{ptr @adis16136_chip_info, !17, !"adis16136_chip_info", i1 false, i1 false}
!17 = !{!"../drivers/iio/gyro/adis16136.c", i32 495, i32 41}
!18 = !{ptr @adis16133_timeouts, !19, !"adis16133_timeouts", i1 false, i1 false}
!19 = !{!"../drivers/iio/gyro/adis16136.c", i32 483, i32 34}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/gyro/adis16136.c", i32 453, i32 44}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/gyro/adis16136.c", i32 454, i32 35}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/gyro/adis16136.c", i32 455, i32 41}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/gyro/adis16136.c", i32 456, i32 44}
!28 = !{ptr @adis16136_status_error_msgs, !29, !"adis16136_status_error_msgs", i1 false, i1 false}
!29 = !{!"../drivers/iio/gyro/adis16136.c", i32 452, i32 27}
!30 = !{ptr @adis16136_timeouts, !31, !"adis16136_timeouts", i1 false, i1 false}
!31 = !{!"../drivers/iio/gyro/adis16136.c", i32 489, i32 34}
!32 = !{ptr @adis16136_channels, !33, !"adis16136_channels", i1 false, i1 false}
!33 = !{!"../drivers/iio/gyro/adis16136.c", i32 359, i32 35}
!34 = !{ptr @adis16136_info, !35, !"adis16136_info", i1 false, i1 false}
!35 = !{!"../drivers/iio/gyro/adis16136.c", i32 404, i32 30}
!36 = !{ptr @adis16136_attribute_group, !37, !"adis16136_attribute_group", i1 false, i1 false}
!37 = !{!"../drivers/iio/gyro/adis16136.c", i32 400, i32 37}
!38 = !{ptr @adis16136_attributes, !39, !"adis16136_attributes", i1 false, i1 false}
!39 = !{!"../drivers/iio/gyro/adis16136.c", i32 395, i32 26}
!40 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/gyro/adis16136.c", i32 233, i32 8}
!42 = !{ptr @iio_dev_attr_sampling_frequency, !41, !"iio_dev_attr_sampling_frequency", i1 false, i1 false}
!43 = !{ptr @.str.6, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/gyro/adis16136.c", i32 230, i32 22}
!45 = !{ptr @adis16136_3db_divisors, !46, !"adis16136_3db_divisors", i1 false, i1 false}
!46 = !{!"../drivers/iio/gyro/adis16136.c", i32 237, i32 23}
!47 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/gyro/adis16136.c", i32 441, i32 32}
!49 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/gyro/adis16136.c", i32 446, i32 3}
!51 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @adis16136_initial_setup._entry, !50, !"_entry", i1 false, i1 false}
!56 = !{ptr @adis16136_initial_setup._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/gyro/adis16136.c", i32 419, i32 3}
!59 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @adis16136_stop_device._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @adis16136_stop_device._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/gyro/adis16136.c", i32 148, i32 29}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/gyro/adis16136.c", i32 150, i32 29}
!67 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/gyro/adis16136.c", i32 152, i32 29}
!69 = !{ptr @adis16136_serial_fops, !70, !"adis16136_serial_fops", i1 false, i1 false}
!70 = !{!"../drivers/iio/gyro/adis16136.c", i32 100, i32 37}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/gyro/adis16136.c", i32 94, i32 35}
!73 = !{ptr @adis16136_product_id_fops, !74, !"adis16136_product_id_fops", i1 false, i1 false}
!74 = !{!"../drivers/iio/gyro/adis16136.c", i32 122, i32 1}
!75 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @adis16136_flash_count_fops, !77, !"adis16136_flash_count_fops", i1 false, i1 false}
!77 = !{!"../drivers/iio/gyro/adis16136.c", i32 140, i32 1}
!78 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{!"auto-init"}
