; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/adis16460.c_pt.bc'
source_filename = "../drivers/iio/imu/adis16460.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.adis16460_chip_info = type { i32, ptr, i32, i32, i32, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adis_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, i32, ptr, i8, i8, i32, i32, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.adis_timeout = type { i16, i16, i16 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.adis16460 = type { ptr, [124 x i8], %struct.adis }
%struct.adis = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.spi_message, ptr, i32, i32, ptr, [76 x i8], [10 x i8], [4 x i8], [114 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_adis16460__234_426_adis16460_driver_init6 = internal global ptr @adis16460_driver_init, section ".initcall6.init", align 4
@adis16460_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @adis16460_ids, ptr @adis16460_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adis16460_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adis16460_driver_exit = internal global ptr @adis16460_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [58 x i8] c"adis16460.author=Dragos Bogdan <dragos.bogdan@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [58 x i8] c"adis16460.description=Analog Devices ADIS16460 IMU driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [41 x i8] c"adis16460.file=drivers/iio/imu/adis16460\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [22 x i8] c"adis16460.license=GPL\00", section ".modinfo", align 1
@adis16460_ids = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"adis16460\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adis16460\00", [22 x i8] zeroinitializer }, align 32
@adis16460_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16460\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@adis16460_chip_info = internal constant { %struct.adis16460_chip_info, [40 x i8] } { %struct.adis16460_chip_info { i32 8, ptr @adis16460_channels, i32 750987876, i32 1, i32 133656243, i32 5 }, [40 x i8] zeroinitializer }, align 32
@adis16460_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @adis16460_read_raw, ptr null, ptr null, ptr @adis16460_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adis_update_scan_mode, ptr @adis_debugfs_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adis16460_data = internal constant { %struct.adis_data, [48 x i8] } { %struct.adis_data { i32 5, i32 5, i32 16, i32 62, i32 0, i32 2, i32 86, i32 16460, i32 4, i32 62, i8 0, ptr @adis16460_timeouts, ptr @adis16460_status_error_msgs, i32 252, ptr null, i8 1, i8 0, i32 0, i32 0, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@adis16460_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 4, i32 0, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 8, i32 1, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 12, i32 2, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 16, i32 3, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 20, i32 4, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 24, i32 5, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 30, i32 6, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 7, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [160 x i8] zeroinitializer }, align 32
@adis16460_timeouts = internal constant { %struct.adis_timeout, [26 x i8] } { %struct.adis_timeout { i16 225, i16 225, i16 10 }, [26 x i8] zeroinitializer }, align 32
@adis16460_status_error_msgs = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr null, ptr null, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Flash update failure\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SPI communication failure\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Sensor overrange\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Self test diagnostic failure\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Flash memory failure\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Input clock out of sync\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial_number\00", [18 x i8] zeroinitializer }, align 32
@adis16460_serial_number_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @adis16460_serial_number_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"product_id\00", [21 x i8] zeroinitializer }, align 32
@adis16460_product_id_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @adis16460_product_id_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flash_count\00", [20 x i8] zeroinitializer }, align 32
@adis16460_flash_count_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @adis16460_flash_count_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0x%.4llx\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 12]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 9]
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"adis16460_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 418, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"adis16460_ids\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 406, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 420, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"adis16460_of_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 412, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"adis16460_chip_info\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 301, i32 41 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"adis16460_info\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 315, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"adis16460_data\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 344, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"adis16460_channels\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 290, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"adis16460_timeouts\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 338, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [28 x i8] c"adis16460_status_error_msgs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 329, i32 27 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 335, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 334, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 333, i32 36 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 332, i32 36 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 331, i32 36 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 330, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 133, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant [29 x i8] c"adis16460_serial_number_fops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 135, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant [26 x i8] c"adis16460_product_id_fops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 137, i32 29 }
@___asan_gen_.77 = private unnamed_addr constant [27 x i8] c"adis16460_flash_count_fops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 89, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 107, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [31 x i8] c"../drivers/iio/imu/adis16460.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 125, i32 1 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_adis16460_driver_exit, ptr @__initcall__kmod_adis16460__234_426_adis16460_driver_init6, ptr @adis16460_driver_exit, ptr @adis16460_driver, ptr @adis16460_ids, ptr @.str, ptr @adis16460_of_match, ptr @adis16460_chip_info, ptr @adis16460_info, ptr @adis16460_data, ptr @adis16460_channels, ptr @adis16460_timeouts, ptr @adis16460_status_error_msgs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @adis16460_serial_number_fops, ptr @.str.8, ptr @adis16460_product_id_fops, ptr @.str.9, ptr @adis16460_flash_count_fops, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16460_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16460_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16460_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16460_chip_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16460_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16460_data to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16460_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16460_timeouts to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16460_status_error_msgs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16460_serial_number_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16460_product_id_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16460_flash_count_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16460_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @adis16460_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adis16460_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @adis16460_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16460_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 512) #5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @adis16460_chip_info, ptr %1, align 128
  %call2 = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %name3 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %name3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %name3, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %channels = getelementptr inbounds %struct.adis16460_chip_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channels, align 4
  %channels5 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %8 = ptrtoint ptr %channels5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %channels5, align 8
  %9 = load ptr, ptr %1, align 128
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %num_channels7 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %12 = ptrtoint ptr %num_channels7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_channels7, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %13 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @adis16460_info, ptr %info, align 8
  %14 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %call, align 8
  %adis = getelementptr inbounds %struct.adis16460, ptr %1, i32 0, i32 2
  %call8 = tail call i32 @adis_init(ptr noundef %adis, ptr noundef nonnull %call, ptr noundef %spi, ptr noundef nonnull @adis16460_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = tail call i32 @devm_adis_setup_buffer_and_trigger(ptr noundef %adis, ptr noundef nonnull %call, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %call17 = tail call i32 @__adis_initial_startup(ptr noundef %adis) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %call22 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @adis16460_debugfs_init(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -12, %entry.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ %call17, %if.end15.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adis_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_adis_setup_buffer_and_trigger(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__adis_initial_startup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adis16460_debugfs_init(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call ptr @iio_get_debugfs_dentry(ptr noundef %indio_dev) #5
  %call2 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %1, ptr noundef nonnull @adis16460_serial_number_fops) #5
  %call3 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.8, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %1, ptr noundef nonnull @adis16460_product_id_fops) #5
  %call4 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.9, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %1, ptr noundef nonnull @adis16460_flash_count_fops) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16460_read_raw(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %info) #2 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
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
    i32 3, label %sw.bb9
    i32 12, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @adis_single_conversion(ptr noundef %indio_dev, ptr noundef %chan, i32 noundef 0, ptr noundef %val) #5
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %4, label %sw.bb2.cleanup_crit_edge [
    i32 4, label %sw.bb3
    i32 3, label %sw.bb5
    i32 9, label %sw.bb8
  ]

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %gyro_max_scale = getelementptr inbounds %struct.adis16460_chip_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %gyro_max_scale to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gyro_max_scale, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  %11 = load ptr, ptr %1, align 128
  %gyro_max_val = getelementptr inbounds %struct.adis16460_chip_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %gyro_max_val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gyro_max_val, align 4
  %14 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %val2, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 128
  %accel_max_scale = getelementptr inbounds %struct.adis16460_chip_info, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %accel_max_scale to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %accel_max_scale, align 4
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val, align 4
  %20 = load ptr, ptr %1, align 128
  %accel_max_val = getelementptr inbounds %struct.adis16460_chip_info, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %accel_max_val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %accel_max_val, align 4
  %23 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val2, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 50, ptr %val, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 500, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %adis.i = getelementptr inbounds %struct.adis16460, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #5
  %26 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !66
  %state_lock.i.i.i = getelementptr inbounds %struct.adis16460, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i, i32 noundef 0) #5
  %call.i.i.i = call i32 @__adis_read_reg(ptr noundef %adis.i, i32 noundef 54, ptr noundef nonnull %tmp.i.i, i32 noundef 2) #5
  call void @mutex_unlock(ptr noundef %state_lock.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i, label %adis_read_reg_16.exit.i

adis_read_reg_16.exit.i:                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #5
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tmp.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #5
  %conv.i = and i32 %28, 65535
  %add.i = add nuw nsw i32 %conv.i, 1
  %div.i = udiv i32 2048000, %add.i
  %div.i.frozen = freeze i32 %div.i
  %div2.i = udiv i32 %div.i.frozen, 1000
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div2.i, ptr %val, align 4
  %30 = mul i32 %div2.i, 1000
  %rem.i.decomposed = sub i32 %div.i.frozen, %30
  %mul.i = mul nuw nsw i32 %rem.i.decomposed, 1000
  %31 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul.i, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %adis_read_reg_16.exit.i, %sw.bb9, %sw.bb8, %sw.bb5, %sw.bb3, %sw.bb2.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb9 ], [ 1, %sw.bb8 ], [ 10, %sw.bb5 ], [ 10, %sw.bb3 ], [ %call1, %sw.bb ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 2, %if.end.i ], [ %call.i.i.i, %adis_read_reg_16.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16460_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %info)
  %cond = icmp eq i32 %info, 12
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  %mul.i = mul i32 %val, 1000
  %div.i = sdiv i32 %val2, 1000
  %add.i = add i32 %div.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i)
  %cmp.i = icmp slt i32 %add.i, 1
  br i1 %cmp.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %div115.i = udiv i32 2048000, %add.i
  %2 = tail call i32 @llvm.smin.i32(i32 %div115.i, i32 2048) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp5.not.i = icmp eq i32 %2, 0
  %phi.cast.i = add nuw nsw i32 %2, 65535
  %adis.i = getelementptr inbounds %struct.adis16460, ptr %1, i32 0, i32 2
  %3 = and i32 %phi.cast.i, 65535
  %conv.i.i = select i1 %cmp5.not.i, i32 0, i32 %3
  %state_lock.i.i.i = getelementptr inbounds %struct.adis16460, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i, i32 noundef 0) #5
  %call.i.i.i = tail call i32 @__adis_write_reg(ptr noundef %adis.i, i32 noundef 54, i32 noundef %conv.i.i, i32 noundef 2) #5
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i.i) #5
  br label %return

return:                                           ; preds = %if.end.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %call.i.i.i, %if.end.i ], [ -22, %sw.bb.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adis_update_scan_mode(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adis_debugfs_reg_access(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adis_single_conversion(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__adis_read_reg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__adis_write_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_get_debugfs_dentry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16460_serial_number_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @adis16460_show_serial_number, ptr noundef null, ptr noundef nonnull @.str.10) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16460_show_serial_number(ptr noundef %arg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adis = getelementptr inbounds %struct.adis16460, ptr %arg, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !66
  %state_lock.i.i = getelementptr inbounds %struct.adis16460, ptr %arg, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #5
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 88, ptr noundef nonnull %tmp.i, i32 noundef 2) #5
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
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
define internal i32 @adis16460_product_id_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @adis16460_show_product_id, ptr noundef null, ptr noundef nonnull @.str.11) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16460_show_product_id(ptr noundef %arg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adis = getelementptr inbounds %struct.adis16460, ptr %arg, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !66
  %state_lock.i.i = getelementptr inbounds %struct.adis16460, ptr %arg, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #5
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 86, ptr noundef nonnull %tmp.i, i32 noundef 2) #5
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
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
define internal i32 @adis16460_flash_count_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @adis16460_show_flash_count, ptr noundef null, ptr noundef nonnull @.str.12) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16460_show_flash_count(ptr noundef %arg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adis = getelementptr inbounds %struct.adis16460, ptr %arg, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !66
  %state_lock.i.i = getelementptr inbounds %struct.adis16460, ptr %arg, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #5
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 0, ptr noundef nonnull %tmp.i, i32 noundef 4) #5
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_32.exit

adis_read_reg_32.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  %conv = zext i32 %2 to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %adis_read_reg_32.exit
  ret i32 %call.i.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !51, !52, !54, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_adis16460__234_426_adis16460_driver_init6, !1, !"__initcall__kmod_adis16460__234_426_adis16460_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/imu/adis16460.c", i32 426, i32 1}
!2 = !{ptr @__exitcall_adis16460_driver_exit, !1, !"__exitcall_adis16460_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/iio/imu/adis16460.c", i32 428, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/iio/imu/adis16460.c", i32 429, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/iio/imu/adis16460.c", i32 430, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/imu/adis16460.c", i32 420, i32 11}
!12 = !{ptr @adis16460_driver, !13, !"adis16460_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/imu/adis16460.c", i32 418, i32 26}
!14 = !{ptr @adis16460_ids, !15, !"adis16460_ids", i1 false, i1 false}
!15 = !{!"../drivers/iio/imu/adis16460.c", i32 406, i32 35}
!16 = !{ptr @adis16460_chip_info, !17, !"adis16460_chip_info", i1 false, i1 false}
!17 = !{!"../drivers/iio/imu/adis16460.c", i32 301, i32 41}
!18 = !{ptr @adis16460_channels, !19, !"adis16460_channels", i1 false, i1 false}
!19 = !{!"../drivers/iio/imu/adis16460.c", i32 290, i32 35}
!20 = !{ptr @adis16460_info, !21, !"adis16460_info", i1 false, i1 false}
!21 = !{!"../drivers/iio/imu/adis16460.c", i32 315, i32 30}
!22 = !{ptr @adis16460_data, !23, !"adis16460_data", i1 false, i1 false}
!23 = !{!"../drivers/iio/imu/adis16460.c", i32 344, i32 31}
!24 = !{ptr @adis16460_timeouts, !25, !"adis16460_timeouts", i1 false, i1 false}
!25 = !{!"../drivers/iio/imu/adis16460.c", i32 338, i32 34}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/imu/adis16460.c", i32 335, i32 36}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/imu/adis16460.c", i32 334, i32 35}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/imu/adis16460.c", i32 333, i32 36}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/imu/adis16460.c", i32 332, i32 36}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/imu/adis16460.c", i32 331, i32 36}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/imu/adis16460.c", i32 330, i32 37}
!38 = !{ptr @adis16460_status_error_msgs, !39, !"adis16460_status_error_msgs", i1 false, i1 false}
!39 = !{!"../drivers/iio/imu/adis16460.c", i32 329, i32 27}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/imu/adis16460.c", i32 133, i32 29}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/imu/adis16460.c", i32 135, i32 29}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/imu/adis16460.c", i32 137, i32 29}
!46 = !{ptr @adis16460_serial_number_fops, !47, !"adis16460_serial_number_fops", i1 false, i1 false}
!47 = !{!"../drivers/iio/imu/adis16460.c", i32 89, i32 1}
!48 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @adis16460_product_id_fops, !50, !"adis16460_product_id_fops", i1 false, i1 false}
!50 = !{!"../drivers/iio/imu/adis16460.c", i32 107, i32 1}
!51 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @adis16460_flash_count_fops, !53, !"adis16460_flash_count_fops", i1 false, i1 false}
!53 = !{!"../drivers/iio/imu/adis16460.c", i32 125, i32 1}
!54 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @adis16460_of_match, !56, !"adis16460_of_match", i1 false, i1 false}
!56 = !{!"../drivers/iio/imu/adis16460.c", i32 412, i32 34}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
