; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/adis16400.c_pt.bc'
source_filename = "../drivers/iio/imu/adis16400.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.adis16400_chip_info = type { ptr, %struct.adis_data, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.adis_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, i32, ptr, i8, i8, i32, i32, i32, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.adis_timeout = type { i16, i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.adis16400_state = type { ptr, i32, [120 x i8], %struct.adis, [2 x i32], [120 x i8] }
%struct.adis = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.spi_message, ptr, i32, i32, ptr, [76 x i8], [10 x i8], [4 x i8], [114 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__initcall__kmod_adis16400__234_1238_adis16400_driver_init6 = internal global ptr @adis16400_driver_init, section ".initcall6.init", align 4
@adis16400_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @adis16400_id, ptr @adis16400_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adis16400_driver_exit = internal global ptr @adis16400_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [63 x i8] c"adis16400.author=Manuel Stahl <manuel.stahl@iis.fraunhofer.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [64 x i8] c"adis16400.description=Analog Devices ADIS16400/5 IMU SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [41 x i8] c"adis16400.file=drivers/iio/imu/adis16400\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [25 x i8] c"adis16400.license=GPL v2\00", section ".modinfo", align 1
@adis16400_id = internal constant { [16 x %struct.spi_device_id], [128 x i8] } { [16 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"adis16300\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"adis16305\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"adis16334\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"adis16350\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"adis16354\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"adis16355\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"adis16360\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id { [32 x i8] c"adis16362\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.spi_device_id { [32 x i8] c"adis16364\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.spi_device_id { [32 x i8] c"adis16365\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id { [32 x i8] c"adis16367\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.spi_device_id { [32 x i8] c"adis16400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.spi_device_id { [32 x i8] c"adis16405\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.spi_device_id { [32 x i8] c"adis16445\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.spi_device_id { [32 x i8] c"adis16448\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.spi_device_id zeroinitializer], [128 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adis16400\00", [22 x i8] zeroinitializer }, align 32
@adis16400_chips = internal global { [10 x %struct.adis16400_chip_info], [312 x i8] } { [10 x %struct.adis16400_chip_info] [%struct.adis16400_chip_info { ptr @adis16300_channels, %struct.adis_data { i32 50, i32 50, i32 0, i32 62, i32 52, i32 60, i32 0, i32 0, i32 2048, i32 52, i8 0, ptr @adis16300_timeouts, ptr @adis16400_status_error_msgs, i32 65407, ptr null, i8 0, i8 0, i32 62, i32 18, i32 0, i32 1000000 }, i32 10, i32 13, i32 873, i32 5884, i32 140000000, i32 178, ptr @adis16400_set_freq, ptr @adis16400_get_freq }, %struct.adis16400_chip_info { ptr @adis16334_channels, %struct.adis_data { i32 50, i32 50, i32 0, i32 62, i32 52, i32 60, i32 0, i32 0, i32 2048, i32 52, i8 0, ptr @adis16334_timeouts, ptr @adis16400_status_error_msgs, i32 65407, ptr null, i8 0, i8 0, i32 62, i32 0, i32 0, i32 1000000 }, i32 8, i32 11, i32 873, i32 9806, i32 67850000, i32 368, ptr @adis16334_set_freq, ptr @adis16334_get_freq }, %struct.adis16400_chip_info { ptr @adis16350_channels, %struct.adis_data { i32 50, i32 50, i32 0, i32 62, i32 52, i32 60, i32 0, i32 0, i32 2048, i32 52, i8 0, ptr @adis16300_timeouts, ptr @adis16400_status_error_msgs, i32 65407, ptr null, i8 0, i8 0, i32 62, i32 0, i32 0, i32 1000000 }, i32 15, i32 6, i32 1279, i32 24732, i32 145300000, i32 172, ptr @adis16400_set_freq, ptr @adis16400_get_freq }, %struct.adis16400_chip_info { ptr @adis16350_channels, %struct.adis_data { i32 50, i32 50, i32 0, i32 62, i32 52, i32 60, i32 0, i32 0, i32 2048, i32 52, i8 0, ptr @adis16300_timeouts, ptr @adis16400_status_error_msgs, i32 65407, ptr null, i8 0, i8 0, i32 62, i32 28, i32 0, i32 1000000 }, i32 15, i32 13, i32 873, i32 32685, i32 136000000, i32 183, ptr @adis16400_set_freq, ptr @adis16400_get_freq }, %struct.adis16400_chip_info { ptr @adis16350_channels, %struct.adis_data { i32 50, i32 50, i32 0, i32 62, i32 52, i32 60, i32 0, i32 0, i32 2048, i32 52, i8 0, ptr @adis16362_timeouts, ptr @adis16400_status_error_msgs, i32 65407, ptr null, i8 0, i8 0, i32 62, i32 28, i32 0, i32 1000000 }, i32 15, i32 13, i32 873, i32 3265, i32 136000000, i32 183, ptr @adis16400_set_freq, ptr @adis16400_get_freq }, %struct.adis16400_chip_info { ptr @adis16350_channels, %struct.adis_data { i32 50, i32 50, i32 0, i32 62, i32 52, i32 60, i32 0, i32 0, i32 2048, i32 52, i8 0, ptr @adis16362_timeouts, ptr @adis16400_status_error_msgs, i32 65407, ptr null, i8 0, i8 0, i32 62, i32 28, i32 0, i32 1000000 }, i32 15, i32 13, i32 873, i32 9806, i32 136000000, i32 183, ptr @adis16400_set_freq, ptr @adis16400_get_freq }, %struct.adis16400_chip_info { ptr @adis16350_channels, %struct.adis_data { i32 50, i32 50, i32 0, i32 62, i32 52, i32 60, i32 0, i32 0, i32 2048, i32 52, i8 0, ptr @adis16300_timeouts, ptr @adis16400_status_error_msgs, i32 65407, ptr null, i8 0, i8 0, i32 62, i32 28, i32 0, i32 1000000 }, i32 15, i32 13, i32 35, i32 32685, i32 136000000, i32 183, ptr @adis16400_set_freq, ptr @adis16400_get_freq }, %struct.adis16400_chip_info { ptr @adis16400_channels, %struct.adis_data { i32 50, i32 50, i32 0, i32 62, i32 52, i32 60, i32 0, i32 0, i32 2048, i32 52, i8 0, ptr @adis16400_timeouts, ptr @adis16400_status_error_msgs, i32 65407, ptr null, i8 0, i8 0, i32 62, i32 24, i32 0, i32 1000000 }, i32 13, i32 5, i32 873, i32 32685, i32 140000000, i32 178, ptr @adis16400_set_freq, ptr @adis16400_get_freq }, %struct.adis16400_chip_info { ptr @adis16445_channels, %struct.adis_data { i32 50, i32 50, i32 0, i32 62, i32 52, i32 60, i32 0, i32 0, i32 2048, i32 52, i8 0, ptr @adis16445_timeouts, ptr @adis16400_status_error_msgs, i32 65407, ptr null, i8 0, i8 0, i32 62, i32 16, i32 0, i32 1000000 }, i32 8, i32 25, i32 175, i32 2451, i32 73860000, i32 419, ptr @adis16334_set_freq, ptr @adis16334_get_freq }, %struct.adis16400_chip_info { ptr @adis16448_channels, %struct.adis_data { i32 50, i32 50, i32 0, i32 62, i32 52, i32 60, i32 0, i32 0, i32 2048, i32 52, i8 0, ptr @adis16448_timeouts, ptr @adis16400_status_error_msgs, i32 65407, ptr null, i8 0, i8 0, i32 62, i32 24, i32 0, i32 1000000 }, i32 12, i32 25, i32 698, i32 8168, i32 73860000, i32 419, ptr @adis16334_set_freq, ptr @adis16334_get_freq }], [312 x i8] zeroinitializer }, align 32
@adis16400_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @adis16400_read_raw, ptr null, ptr null, ptr @adis16400_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adis_update_scan_mode, ptr @adis_debugfs_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adis16300_channels = internal constant { [10 x %struct.iio_chan_spec], [208 x i8] } { [10 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 2, i32 0, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.1, ptr null, i8 64 }, %struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 4, i32 1, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 10, i32 4, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 12, i32 5, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 14, i32 6, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 16, i32 11, %struct.anon.71 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 22, i32 16, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 10, i32 0, i32 1, i32 18, i32 14, %struct.anon.71 { i8 115, i8 13, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 10, i32 0, i32 2, i32 20, i32 15, %struct.anon.71 { i8 115, i8 13, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 17, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [208 x i8] zeroinitializer }, align 32
@adis16300_timeouts = internal constant { %struct.adis_timeout, [26 x i8] } { %struct.adis_timeout { i16 290, i16 290, i16 290 }, [26 x i8] zeroinitializer }, align 32
@adis16400_status_error_msgs = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr null, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], [32 x i8] zeroinitializer }, align 32
@adis16334_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 4, i32 1, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 6, i32 2, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 8, i32 3, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 10, i32 4, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 12, i32 5, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 14, i32 6, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 16, i32 11, %struct.anon.71 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 17, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [160 x i8] zeroinitializer }, align 32
@adis16334_timeouts = internal constant { %struct.adis_timeout, [26 x i8] } { %struct.adis_timeout { i16 60, i16 60, i16 14 }, [26 x i8] zeroinitializer }, align 32
@adis16350_channels = internal constant { [15 x %struct.iio_chan_spec], [344 x i8] } { [15 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 2, i32 0, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.1, ptr null, i8 64 }, %struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 4, i32 1, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 6, i32 2, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 8, i32 3, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 10, i32 4, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 12, i32 5, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 14, i32 6, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 16, i32 7, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 18, i32 8, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 20, i32 9, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 22, i32 16, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 16, i32 11, %struct.anon.71 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 1024, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.17, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 18, i32 12, %struct.anon.71 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 1024, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.18, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 20, i32 13, %struct.anon.71 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 1024, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.19, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 17, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [344 x i8] zeroinitializer }, align 32
@adis16362_timeouts = internal constant { %struct.adis_timeout, [26 x i8] } { %struct.adis_timeout { i16 130, i16 130, i16 12 }, [26 x i8] zeroinitializer }, align 32
@adis16400_channels = internal constant { [13 x %struct.iio_chan_spec], [264 x i8] } { [13 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 2, i32 0, %struct.anon.71 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.1, ptr null, i8 64 }, %struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 4, i32 1, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 6, i32 2, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 8, i32 3, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 10, i32 4, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 12, i32 5, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 14, i32 6, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 16, i32 7, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 18, i32 8, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 20, i32 9, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 22, i32 11, %struct.anon.71 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 24, i32 16, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 17, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [264 x i8] zeroinitializer }, align 32
@adis16400_timeouts = internal constant { %struct.adis_timeout, [26 x i8] } { %struct.adis_timeout { i16 170, i16 170, i16 12 }, [26 x i8] zeroinitializer }, align 32
@adis16445_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 4, i32 1, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 6, i32 2, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 8, i32 3, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 10, i32 4, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 12, i32 5, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 14, i32 6, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 24, i32 11, %struct.anon.71 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 17, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [160 x i8] zeroinitializer }, align 32
@adis16445_timeouts = internal constant { %struct.adis_timeout, [26 x i8] } { %struct.adis_timeout { i16 55, i16 55, i16 16 }, [26 x i8] zeroinitializer }, align 32
@adis16448_channels = internal constant { [12 x %struct.iio_chan_spec], [256 x i8] } { [12 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 4, i32 1, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 6, i32 2, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 8, i32 3, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 10, i32 4, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 12, i32 5, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 14, i32 6, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 16, i32 7, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 18, i32 8, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 20, i32 9, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 17, i32 0, i32 0, i32 22, i32 10, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 24, i32 11, %struct.anon.71 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 17, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [256 x i8] zeroinitializer }, align 32
@adis16448_timeouts = internal constant { %struct.adis_timeout, [26 x i8] } { %struct.adis_timeout { i16 90, i16 90, i16 45 }, [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"supply\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Power supply below 4.75V\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Power supply above 5.25V\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Flash update failed\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SPI failure\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Sensor overrange\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Self test error\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Flash checksum error\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Alarm 1 active\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Alarm 2 active\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Z-axis gyroscope self-test failure\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Y-axis gyroscope self-test failure\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"X-axis gyroscope self-test failure\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"X-axis accelerometer self-test failure\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Y-axis accelerometer self-test failure\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Z-axis accelerometer self-test failure\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"x\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"y\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"z\00", [30 x i8] zeroinitializer }, align 32
@adis16400_addresses = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\00\1A\1C\1E \22$", [25 x i8] zeroinitializer }, align 32
@adis16400_trigger_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.22, i32 642, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to read data: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adis16400_trigger_handler\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/imu/adis16400.c\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adis16400_trigger_handler._entry_ptr = internal global ptr @adis16400_trigger_handler._entry, section ".printk_index", align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adis%u\0A\00", [24 x i8] zeroinitializer }, align 32
@adis16400_initial_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.22, i32 465, ptr @.str.28, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Device ID(%u) and product ID(%u) do not match.\00", [49 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adis16400_initial_setup\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@adis16400_initial_setup._entry_ptr = internal global ptr @adis16400_initial_setup._entry, section ".printk_index", align 4
@adis16400_initial_setup._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.22, i32 469, ptr @.str.31, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: prod_id 0x%04x at CS%d (irq %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@adis16400_initial_setup._entry_ptr.32 = internal global ptr @adis16400_initial_setup._entry.29, section ".printk_index", align 4
@adis16400_stop_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.22, i32 428, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"problem with turning device off: SLP_CNT\00", [55 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adis16400_stop_device\00", [42 x i8] zeroinitializer }, align 32
@adis16400_stop_device._entry_ptr = internal global ptr @adis16400_stop_device._entry, section ".printk_index", align 4
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial_number\00", [18 x i8] zeroinitializer }, align 32
@adis16400_serial_number_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @adis16400_show_serial_number, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"product_id\00", [21 x i8] zeroinitializer }, align 32
@adis16400_product_id_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @adis16400_product_id_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flash_count\00", [20 x i8] zeroinitializer }, align 32
@adis16400_flash_count_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @adis16400_flash_count_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%.4x-%.4x-%.4x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 3, i64 5, i64 10, i64 12]
@__sancov_gen_cov_switch_values.40 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 3, i64 4, i64 5, i64 9, i64 17]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 10, i64 12]
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"adis16400_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1231, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"adis16400_id\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1211, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1233, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"adis16400_chips\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 999, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"adis16400_info\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1132, i32 30 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"adis16300_channels\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 890, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c"adis16300_timeouts\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 963, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant [28 x i8] c"adis16400_status_error_msgs\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 914, i32 27 }
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c"adis16334_channels\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 903, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"adis16334_timeouts\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 969, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"adis16350_channels\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 872, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant [19 x i8] c"adis16362_timeouts\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 975, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant [19 x i8] c"adis16400_channels\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 817, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant [19 x i8] c"adis16400_timeouts\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 981, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant [19 x i8] c"adis16445_channels\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 833, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c"adis16445_timeouts\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 987, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"adis16448_channels\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 844, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant [19 x i8] c"adis16448_timeouts\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 993, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 891, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 929, i32 36 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 928, i32 37 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 927, i32 36 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 926, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 925, i32 35 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 924, i32 36 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 923, i32 36 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 922, i32 33 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 921, i32 33 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 920, i32 37 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 919, i32 37 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 918, i32 37 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 917, i32 37 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 916, i32 37 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 915, i32 37 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 884, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 885, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 886, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c"adis16400_addresses\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 487, i32 22 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 642, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 458, i32 31 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 464, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 467, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 427, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 282, i32 30 }
@___asan_gen_.210 = private unnamed_addr constant [29 x i8] c"adis16400_serial_number_fops\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 235, i32 37 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 285, i32 30 }
@___asan_gen_.216 = private unnamed_addr constant [26 x i8] c"adis16400_product_id_fops\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 287, i32 29 }
@___asan_gen_.222 = private unnamed_addr constant [27 x i8] c"adis16400_flash_count_fops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 273, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 229, i32 35 }
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.229 = private constant [31 x i8] c"../drivers/iio/imu/adis16400.c\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 256, i32 1 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_adis16400_driver_exit, ptr @__initcall__kmod_adis16400__234_1238_adis16400_driver_init6, ptr @adis16400_driver_exit, ptr @adis16400_initial_setup._entry, ptr @adis16400_initial_setup._entry.29, ptr @adis16400_initial_setup._entry_ptr, ptr @adis16400_initial_setup._entry_ptr.32, ptr @adis16400_stop_device._entry, ptr @adis16400_stop_device._entry_ptr, ptr @adis16400_trigger_handler._entry, ptr @adis16400_trigger_handler._entry_ptr, ptr @adis16400_driver, ptr @adis16400_id, ptr @.str, ptr @adis16400_chips, ptr @adis16400_info, ptr @adis16300_channels, ptr @adis16300_timeouts, ptr @adis16400_status_error_msgs, ptr @adis16334_channels, ptr @adis16334_timeouts, ptr @adis16350_channels, ptr @adis16362_timeouts, ptr @adis16400_channels, ptr @adis16400_timeouts, ptr @adis16445_channels, ptr @adis16445_timeouts, ptr @adis16448_channels, ptr @adis16448_timeouts, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @adis16400_addresses, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @adis16400_serial_number_fops, ptr @.str.36, ptr @adis16400_product_id_fops, ptr @.str.37, ptr @adis16400_flash_count_fops, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16400_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16400_id to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16400_chips to i32), i32 1160, i32 1472, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16400_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16300_channels to i32), i32 880, i32 1088, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16300_timeouts to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16400_status_error_msgs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16334_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16334_timeouts to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16350_channels to i32), i32 1320, i32 1664, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16362_timeouts to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16400_channels to i32), i32 1144, i32 1408, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16400_timeouts to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16445_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16445_timeouts to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16448_channels to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16448_timeouts to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16400_addresses to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16400_trigger_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16400_initial_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16400_initial_setup._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16400_stop_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16400_serial_number_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16400_product_id_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16400_flash_count_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16400_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @adis16400_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adis16400_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @adis16400_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16400_probe(ptr noundef %spi) #2 align 64 {
entry:
  %tmp.i92.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %device_id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 640) #7
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call2 = tail call ptr @spi_get_device_id(ptr noundef %spi) #7
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [10 x %struct.adis16400_chip_info], ptr @adis16400_chips, i32 0, i32 %3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %1, align 128
  %call3 = tail call ptr @spi_get_device_id(ptr noundef %spi) #7
  %name4 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %5 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %name4, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %channels6 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %10 = ptrtoint ptr %channels6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %channels6, align 8
  %11 = load ptr, ptr %1, align 128
  %num_channels = getelementptr inbounds %struct.adis16400_chip_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_channels, align 4
  %num_channels8 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %14 = ptrtoint ptr %num_channels8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %num_channels8, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %15 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @adis16400_info, ptr %info, align 8
  %16 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %call, align 8
  %17 = load ptr, ptr %1, align 128
  %flags = getelementptr inbounds %struct.adis16400_chip_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then10, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end
  %num_channels.i = getelementptr inbounds %struct.adis16400_chip_info, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp12.not.i = icmp eq i32 %21, 0
  br i1 %cmp12.not.i, label %if.then10.adis16400_setup_chan_mask.exit_crit_edge, label %for.body.lr.ph.i

if.then10.adis16400_setup_chan_mask.exit_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %adis16400_setup_chan_mask.exit

for.body.lr.ph.i:                                 ; preds = %if.then10
  %avail_scan_mask.i = getelementptr inbounds %struct.adis16400_state, ptr %1, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 4
  %scan_index.i = getelementptr %struct.iio_chan_spec, ptr %23, i32 %i.013.i, i32 4
  %24 = ptrtoint ptr %scan_index.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scan_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp1.i = icmp slt i32 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %25)
  %cmp3.not.i = icmp eq i32 %25, 17
  %or.cond.i = or i1 %cmp1.i, %cmp3.not.i
  br i1 %or.cond.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw i32 1, %25
  %26 = ptrtoint ptr %avail_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %avail_scan_mask.i, align 128
  %or.i = or i32 %27, %shl.i
  store i32 %or.i, ptr %avail_scan_mask.i, align 128
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw i32 %i.013.i, 1
  %28 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_channels.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %29
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.adis16400_setup_chan_mask.exit_crit_edge

if.end.i.adis16400_setup_chan_mask.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adis16400_setup_chan_mask.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

adis16400_setup_chan_mask.exit:                   ; preds = %if.end.i.adis16400_setup_chan_mask.exit_crit_edge, %if.then10.adis16400_setup_chan_mask.exit_crit_edge
  %avail_scan_mask = getelementptr inbounds %struct.adis16400_state, ptr %1, i32 0, i32 4
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %30 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %avail_scan_mask, ptr %available_scan_masks, align 4
  br label %if.end12

if.end12:                                         ; preds = %adis16400_setup_chan_mask.exit, %if.end.if.end12_crit_edge
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 128
  %adis_data = getelementptr inbounds %struct.adis16400_chip_info, ptr %32, i32 0, i32 1
  %adis = getelementptr inbounds %struct.adis16400_state, ptr %1, i32 0, i32 3
  %call14 = tail call i32 @adis_init(ptr noundef %adis, ptr noundef nonnull %call, ptr noundef %spi, ptr noundef %adis_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call19 = tail call i32 @devm_adis_setup_buffer_and_trigger(ptr noundef %adis, ptr noundef nonnull %call, ptr noundef nonnull @adis16400_trigger_handler) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %33 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device_id.i) #7
  %35 = ptrtoint ptr %device_id.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %device_id.i, align 4, !annotation !138
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %34, align 128
  %flags.i = getelementptr inbounds %struct.adis16400_chip_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %adis1.i = getelementptr inbounds %struct.adis16400_state, ptr %34, i32 0, i32 3
  %40 = ptrtoint ptr %adis1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adis1.i, align 128
  %max_speed_hz3.i = getelementptr inbounds %struct.spi_device, ptr %41, i32 0, i32 3
  %..i = select i1 %tobool.not.i, i32 2000000, i32 300000
  %42 = ptrtoint ptr %max_speed_hz3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %..i, ptr %max_speed_hz3.i, align 8
  %43 = load ptr, ptr %adis1.i, align 128
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %mode.i, align 8
  %45 = load ptr, ptr %adis1.i, align 128
  %call8.i = tail call i32 @spi_setup(ptr noundef %45) #7
  %state_lock.i.i = getelementptr inbounds %struct.adis16400_state, ptr %34, i32 0, i32 3, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #7
  %call.i.i = tail call i32 @__adis_initial_startup(ptr noundef %adis1.i) #7
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end22.adis16400_initial_setup.exit.thread_crit_edge

if.end22.adis16400_initial_setup.exit.thread_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %adis16400_initial_setup.exit.thread

if.end13.i:                                       ; preds = %if.end22
  %46 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %34, align 128
  %flags15.i = getelementptr inbounds %struct.adis16400_chip_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %flags15.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags15.i, align 4
  %and16.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end13.i.if.end43.i_crit_edge, label %if.then18.i

if.end13.i.if.end43.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.then18.i:                                      ; preds = %if.end13.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #7
  %50 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !138
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #7
  %call.i.i.i = call i32 @__adis_read_reg(ptr noundef %adis1.i, i32 noundef 86, ptr noundef nonnull %tmp.i.i, i32 noundef 2) #7
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end23.i, label %adis_read_reg_16.exit.i

adis_read_reg_16.exit.i:                          ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #7
  br label %adis16400_initial_setup.exit.thread

if.end23.i:                                       ; preds = %if.then18.i
  %51 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tmp.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #7
  %53 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name4, align 8
  %call24.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %54, ptr noundef nonnull @.str.25, ptr noundef nonnull %device_id.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call24.i)
  %cmp.not.i = icmp eq i32 %call24.i, 1
  br i1 %cmp.not.i, label %if.end26.i, label %if.end23.i.adis16400_initial_setup.exit.thread_crit_edge

if.end23.i.adis16400_initial_setup.exit.thread_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adis16400_initial_setup.exit.thread

if.end26.i:                                       ; preds = %if.end23.i
  %conv.i = and i32 %52, 65535
  %55 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %device_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %conv.i)
  %cmp27.not.i = icmp eq i32 %56, %conv.i
  br i1 %cmp27.not.i, label %if.end26.i.do.end34.i_crit_edge, label %do.end.i

if.end26.i.do.end34.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34.i

do.end.i:                                         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.26, i32 noundef %56, i32 noundef %conv.i) #10
  br label %do.end34.i

do.end34.i:                                       ; preds = %do.end.i, %if.end26.i.do.end34.i_crit_edge
  %dev35.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  %57 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name4, align 8
  %59 = ptrtoint ptr %adis1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %adis1.i, align 128
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %chip_select.i, align 4
  %conv40.i = zext i8 %62 to i32
  %irq.i = getelementptr inbounds %struct.spi_device, ptr %60, i32 0, i32 8
  %63 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %irq.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev35.i, ptr noundef nonnull @.str.30, ptr noundef %58, i32 noundef %conv.i, i32 noundef %conv40.i, i32 noundef %64) #10
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end34.i, %if.end13.i.if.end43.i_crit_edge
  %65 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %34, align 128
  %flags45.i = getelementptr inbounds %struct.adis16400_chip_info, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %flags45.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags45.i, align 4
  %and46.i = and i32 %68, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.end43.i.if.end26_crit_edge, label %if.then48.i

if.end43.i.if.end26_crit_edge:                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then48.i:                                      ; preds = %if.end43.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i92.i) #7
  %69 = ptrtoint ptr %tmp.i92.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %tmp.i92.i, align 4, !annotation !138
  call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #7
  %call.i.i94.i = call i32 @__adis_read_reg(ptr noundef %adis1.i, i32 noundef 54, ptr noundef nonnull %tmp.i92.i, i32 noundef 2) #7
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i94.i)
  %cmp.i95.i = icmp eq i32 %call.i.i94.i, 0
  br i1 %cmp.i95.i, label %if.end53.i, label %adis_read_reg_16.exit98.i

adis_read_reg_16.exit98.i:                        ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i92.i) #7
  br label %adis16400_initial_setup.exit.thread

if.end53.i:                                       ; preds = %if.then48.i
  %70 = ptrtoint ptr %tmp.i92.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tmp.i92.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i92.i) #7
  %72 = and i32 %71, 126
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %72)
  %cmp56.i = icmp ult i32 %72, 10
  br i1 %cmp56.i, label %if.then58.i, label %if.end53.i.if.end26_crit_edge

if.end53.i.if.end26_crit_edge:                    ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then58.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %adis1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %adis1.i, align 128
  %max_speed_hz61.i = getelementptr inbounds %struct.spi_device, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %max_speed_hz61.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 2000000, ptr %max_speed_hz61.i, align 8
  %76 = load ptr, ptr %adis1.i, align 128
  %call64.i = call i32 @spi_setup(ptr noundef %76) #7
  br label %if.end26

adis16400_initial_setup.exit.thread:              ; preds = %adis_read_reg_16.exit98.i, %if.end23.i.adis16400_initial_setup.exit.thread_crit_edge, %adis_read_reg_16.exit.i, %if.end22.adis16400_initial_setup.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end23.i.adis16400_initial_setup.exit.thread_crit_edge ], [ %call.i.i94.i, %adis_read_reg_16.exit98.i ], [ %call.i.i.i, %adis_read_reg_16.exit.i ], [ %call.i.i, %if.end22.adis16400_initial_setup.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_id.i) #7
  br label %cleanup

if.end26:                                         ; preds = %if.then58.i, %if.end53.i.if.end26_crit_edge, %if.end43.i.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_id.i) #7
  %call.i = call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @adis16400_stop, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i76 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i76, label %if.end31, label %if.then.i77

if.then.i77:                                      ; preds = %if.end26
  %77 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %priv.i, align 8
  %adis.i.i.i = getelementptr inbounds %struct.adis16400_state, ptr %78, i32 0, i32 3
  %state_lock.i.i.i.i.i = getelementptr inbounds %struct.adis16400_state, ptr %78, i32 0, i32 3, i32 4
  call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i.i.i, i32 noundef 0) #7
  %call.i.i.i.i.i = call i32 @__adis_write_reg(ptr noundef %adis.i.i.i, i32 noundef 58, i32 noundef 256, i32 noundef 2) #7
  call void @mutex_unlock(ptr noundef %state_lock.i.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i77.cleanup_crit_edge, label %do.end.i.i.i

if.then.i77.cleanup_crit_edge:                    ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i.i.i:                                     ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.33) #10
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %call33 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @adis16400_debugfs_init(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end31.cleanup_crit_edge, %do.end.i.i.i, %if.then.i77.cleanup_crit_edge, %adis16400_initial_setup.exit.thread, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -12, %entry.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %call19, %if.end17.cleanup_crit_edge ], [ %call33, %if.end31.cleanup_crit_edge ], [ %retval.0.i.ph, %adis16400_initial_setup.exit.thread ], [ %call.i, %if.then.i77.cleanup_crit_edge ], [ %call.i, %do.end.i.i.i ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16400_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %adis2 = getelementptr inbounds %struct.adis16400_state, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %adis2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adis2, align 128
  %msg = getelementptr inbounds %struct.adis16400_state, ptr %3, i32 0, i32 3, i32 5
  %call3 = tail call i32 @spi_sync(ptr noundef %5, ptr noundef %msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %adis2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adis2, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.20, i32 noundef %call3) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 128
  %flags = getelementptr inbounds %struct.adis16400_chip_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %buffer9 = getelementptr inbounds %struct.adis16400_state, ptr %3, i32 0, i32 3, i32 9
  %12 = ptrtoint ptr %buffer9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer9, align 16
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %13, i32 2
  %scan_bytes = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scan_bytes, align 4
  %sub = add i32 %15, -8
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %16 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %timestamp, align 8
  %call8 = tail call i32 @iio_push_to_buffers_with_ts_unaligned(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %sub, i64 noundef %17) #7
  br label %if.end12

if.else:                                          ; preds = %if.end
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %scan_timestamp.i, align 8, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.else.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.else.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %timestamp10 = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %20 = ptrtoint ptr %timestamp10 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %timestamp10, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %23, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %13, i32 %sub.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %21, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.else.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %13) #7
  br label %if.end12

if.end12:                                         ; preds = %iio_push_to_buffers_with_timestamp.exit, %if.then6
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %26) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adis16400_stop(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %adis.i = getelementptr inbounds %struct.adis16400_state, ptr %1, i32 0, i32 3
  %state_lock.i.i.i = getelementptr inbounds %struct.adis16400_state, ptr %1, i32 0, i32 3, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i, i32 noundef 0) #7
  %call.i.i.i = tail call i32 @__adis_write_reg(ptr noundef %adis.i, i32 noundef 58, i32 noundef 256, i32 noundef 2) #7
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %entry.adis16400_stop_device.exit_crit_edge, label %do.end.i

entry.adis16400_stop_device.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %adis16400_stop_device.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.33) #10
  br label %adis16400_stop_device.exit

adis16400_stop_device.exit:                       ; preds = %do.end.i, %entry.adis16400_stop_device.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adis16400_debugfs_init(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call ptr @iio_get_debugfs_dentry(ptr noundef %indio_dev) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %flags = getelementptr inbounds %struct.adis16400_chip_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.35, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %1, ptr noundef nonnull @adis16400_serial_number_fops) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %flags4 = getelementptr inbounds %struct.adis16400_chip_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags4, align 4
  %and5 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.36, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %1, ptr noundef nonnull @adis16400_product_id_fops) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %call10 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.37, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %1, ptr noundef nonnull @adis16400_flash_count_fops) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16400_set_freq(ptr noundef %st, i32 noundef %freq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12801, i32 %freq)
  %cmp = icmp ult i32 %freq, 12801
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %div2.rhs.trunc = trunc i32 %freq to i16
  %div235 = udiv i16 -12685, %div2.rhs.trunc
  %0 = tail call i16 @llvm.umin.i16(i16 %div235, i16 127)
  %1 = zext i16 %0 to i32
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %div = udiv i32 1638404, %freq
  call void @__sanitizer_cov_trace_const_cmp4(i32 1638404, i32 %freq)
  %cmp6.not = icmp ugt i32 %freq, 1638404
  %dec = add nsw i32 %div, -1
  %spec.select = select i1 %cmp6.not, i32 0, i32 %dec
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then
  %t.0 = phi i32 [ %1, %if.then ], [ %spec.select, %if.else ]
  %val.0 = phi i32 [ 128, %if.then ], [ 0, %if.else ]
  %or12 = or i32 %val.0, %t.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %t.0)
  %cmp14 = icmp ult i32 %t.0, 10
  %and = and i32 %or12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp14, i1 %tobool.not, i1 false
  %adis19 = getelementptr inbounds %struct.adis16400_state, ptr %st, i32 0, i32 3
  %2 = ptrtoint ptr %adis19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adis19, align 128
  %max_speed_hz21 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 3
  %. = select i1 %or.cond, i32 2000000, i32 300000
  %4 = ptrtoint ptr %max_speed_hz21 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %., ptr %max_speed_hz21, align 8
  %adis23 = getelementptr inbounds %struct.adis16400_state, ptr %st, i32 0, i32 3
  %conv.i = and i32 %or12, 255
  %call.i = tail call i32 @__adis_write_reg(ptr noundef %adis23, i32 noundef 54, i32 noundef %conv.i, i32 noundef 1) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16400_get_freq(ptr noundef %st) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adis = getelementptr inbounds %struct.adis16400_state, ptr %st, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !138
  %call.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 54, ptr noundef nonnull %tmp.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %__adis_read_reg_16.exit

__adis_read_reg_16.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  %and = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool1.not, i32 1638404, i32 52851
  %and3 = and i32 %2, 127
  %add = add nuw nsw i32 %and3, 1
  %div = udiv i32 %cond, %add
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__adis_read_reg_16.exit
  %retval.0 = phi i32 [ %div, %if.end ], [ %call.i, %__adis_read_reg_16.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16334_set_freq(ptr noundef %st, i32 noundef %freq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 819200, i32 %freq)
  %cmp = icmp ult i32 %freq, 819200
  br i1 %cmp, label %cond.false5, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cond.false5:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %div = udiv i32 819200, %freq
  %0 = tail call i32 @llvm.ctlz.i32(i32 %div, i1 false) #7, !range !140
  %sub.i = sub nsw i32 31, %0
  br label %if.end

if.end:                                           ; preds = %cond.false5, %entry.if.end_crit_edge
  %t.0 = phi i32 [ %sub.i, %cond.false5 ], [ 0, %entry.if.end_crit_edge ]
  %1 = tail call i32 @llvm.umin.i32(i32 %t.0, i32 49)
  %adis = getelementptr inbounds %struct.adis16400_state, ptr %st, i32 0, i32 3
  %2 = shl nuw nsw i32 %1, 8
  %conv13 = or i32 %2, 1
  %call.i = tail call i32 @__adis_write_reg(ptr noundef %adis, i32 noundef 54, i32 noundef %conv13, i32 noundef 2) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16334_get_freq(ptr noundef %st) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adis = getelementptr inbounds %struct.adis16400_state, ptr %st, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !138
  %call.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 54, ptr noundef nonnull %tmp.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %__adis_read_reg_16.exit

__adis_read_reg_16.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  %3 = lshr i32 %2, 8
  %conv2 = and i32 %3, 255
  %shr3 = lshr i32 819200, %conv2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__adis_read_reg_16.exit
  %retval.0 = phi i32 [ %shr3, %if.end ], [ %call.i, %__adis_read_reg_16.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__adis_write_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__adis_read_reg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16400_read_raw(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %info) #2 align 64 {
entry:
  %tmp.i110 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
    i32 5, label %sw.bb13
    i32 3, label %sw.bb21
    i32 10, label %sw.bb23
    i32 12, label %sw.bb42
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @adis_single_conversion(ptr noundef %indio_dev, ptr noundef %chan, i32 noundef 0, ptr noundef %val) #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %4, label %sw.bb2.cleanup_crit_edge [
    i32 4, label %sw.bb3
    i32 0, label %sw.bb4
    i32 3, label %sw.bb5
    i32 5, label %sw.bb7
    i32 9, label %sw.bb8
    i32 17, label %sw.bb12
  ]

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 128
  %gyro_scale_micro = getelementptr inbounds %struct.adis16400_chip_info, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %gyro_scale_micro to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gyro_scale_micro, align 4
  %11 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val2, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %val, align 4
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %13 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  %. = select i1 %cmp, i32 2, i32 0
  %.109 = select i1 %cmp, i32 418000, i32 805800
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %., ptr %val, align 4
  %16 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.109, ptr %val2, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %val, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 128
  %accel_scale_micro = getelementptr inbounds %struct.adis16400_chip_info, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %accel_scale_micro to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %accel_scale_micro, align 4
  %22 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %val2, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %val, align 4
  %24 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 500, ptr %val2, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 128
  %temp_scale_nano = getelementptr inbounds %struct.adis16400_chip_info, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %temp_scale_nano to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %temp_scale_nano, align 4
  %div = sdiv i32 %28, 1000000
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div, ptr %val, align 4
  %30 = load ptr, ptr %1, align 128
  %temp_scale_nano11 = getelementptr inbounds %struct.adis16400_chip_info, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %temp_scale_nano11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %temp_scale_nano11, align 4
  %rem = srem i32 %32, 1000000
  %33 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %rem, ptr %val2, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %val, align 4
  %35 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2000, ptr %val2, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %adis = getelementptr inbounds %struct.adis16400_state, ptr %1, i32 0, i32 3
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %36 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %scan_index, align 4
  %arrayidx = getelementptr [7 x i8], ptr @adis16400_addresses, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %39 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %40 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %tmp.i, align 4, !annotation !138
  %state_lock.i.i = getelementptr inbounds %struct.adis16400_state, ptr %1, i32 0, i32 3, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #7
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef %conv, ptr noundef nonnull %tmp.i, i32 noundef 2) #7
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end16, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  br label %cleanup

if.end16:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  %shl.i = shl i32 %42, 20
  %conv20 = ashr exact i32 %shl.i, 20
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv20, ptr %val, align 4
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 128
  %temp_offset = getelementptr inbounds %struct.adis16400_chip_info, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %temp_offset to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %temp_offset, align 4
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %val, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  %adis24 = getelementptr inbounds %struct.adis16400_state, ptr %1, i32 0, i32 3
  %state_lock.i = getelementptr inbounds %struct.adis16400_state, ptr %1, i32 0, i32 3, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i110) #7
  %49 = ptrtoint ptr %tmp.i110 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %tmp.i110, align 4, !annotation !138
  %call.i = call i32 @__adis_read_reg(ptr noundef %adis24, i32 noundef 56, ptr noundef nonnull %tmp.i110, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i111 = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i110) #7
  br i1 %cmp.i111, label %if.end30, label %if.then28

if.then28:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %state_lock.i) #7
  br label %cleanup

if.end30:                                         ; preds = %sw.bb23
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 128
  %get_freq = getelementptr inbounds %struct.adis16400_chip_info, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %get_freq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %get_freq, align 4
  %call32 = call i32 %53(ptr noundef %1) #7
  call void @mutex_unlock(ptr noundef %state_lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool34.not = icmp eq i32 %call32, 0
  br i1 %tobool34.not, label %if.end36, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %val, align 4
  %55 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %val2, align 4
  br label %cleanup

sw.bb42:                                          ; preds = %entry
  %state_lock.i116 = getelementptr inbounds %struct.adis16400_state, ptr %1, i32 0, i32 3, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i116, i32 noundef 0) #7
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 128
  %get_freq45 = getelementptr inbounds %struct.adis16400_chip_info, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %get_freq45 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %get_freq45, align 4
  %call46 = tail call i32 %59(ptr noundef %1) #7
  tail call void @mutex_unlock(ptr noundef %state_lock.i116) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool48.not = icmp eq i32 %call46, 0
  br i1 %tobool48.not, label %if.end50, label %sw.bb42.cleanup_crit_edge

sw.bb42.cleanup_crit_edge:                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %val, align 4
  %61 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %sw.bb42.cleanup_crit_edge, %if.end36, %if.end30.cleanup_crit_edge, %if.then28, %sw.bb21, %if.end16, %adis_read_reg_16.exit, %sw.bb12, %sw.bb8, %sw.bb7, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end50 ], [ %call.i, %if.then28 ], [ 2, %if.end36 ], [ 1, %sw.bb21 ], [ 1, %if.end16 ], [ 2, %sw.bb12 ], [ 2, %sw.bb8 ], [ 2, %sw.bb7 ], [ 2, %sw.bb5 ], [ 2, %sw.bb4 ], [ 2, %sw.bb3 ], [ %call1, %sw.bb ], [ -22, %sw.bb2.cleanup_crit_edge ], [ %call.i.i, %adis_read_reg_16.exit ], [ %call32, %if.end30.cleanup_crit_edge ], [ %call46, %sw.bb42.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16400_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %info) #2 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 10, label %sw.bb3
    i32 12, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %adis = getelementptr inbounds %struct.adis16400_state, ptr %1, i32 0, i32 3
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %scan_index, align 4
  %arrayidx = getelementptr [7 x i8], ptr @adis16400_addresses, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %conv.i = and i32 %val, 65535
  %state_lock.i.i = getelementptr inbounds %struct.adis16400_state, ptr %1, i32 0, i32 3, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #7
  %call.i.i = tail call i32 @__adis_write_reg(ptr noundef %adis, i32 noundef %conv, i32 noundef %conv.i, i32 noundef 2) #7
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i) #7
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %state_lock.i = getelementptr inbounds %struct.adis16400_state, ptr %1, i32 0, i32 3, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i, i32 noundef 0) #7
  %filt_int = getelementptr inbounds %struct.adis16400_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %filt_int to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %val, ptr %filt_int, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 128
  %get_freq = getelementptr inbounds %struct.adis16400_chip_info, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %get_freq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_freq, align 4
  %call5 = tail call i32 %11(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %state_lock.i) #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb3
  %mul = mul i32 %val, 1000
  %div = sdiv i32 %val2, 1000
  %add = add i32 %div, %mul
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 8
  %div.i = udiv i32 %call5, 200
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %add)
  %cmp1.not.i = icmp ult i32 %div.i, %add
  br i1 %cmp1.not.i, label %for.inc.1.i, label %if.end.for.end.i_crit_edge

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.1.i:                                      ; preds = %if.end
  %div.2.i = udiv i32 %call5, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %div.2.i, i32 %add)
  %cmp1.not.2.i = icmp ult i32 %div.2.i, %add
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.end.i_crit_edge

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %div.3.i = udiv i32 %call5, 50
  call void @__sanitizer_cov_trace_cmp4(i32 %div.3.i, i32 %add)
  %cmp1.not.3.i = icmp ult i32 %div.3.i, %add
  br i1 %cmp1.not.3.i, label %for.inc.3.i, label %for.inc.2.i.for.end.i_crit_edge

for.inc.2.i.for.end.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %div.4.i = udiv i32 %call5, 25
  call void @__sanitizer_cov_trace_cmp4(i32 %div.4.i, i32 %add)
  %cmp1.not.4.i = icmp ult i32 %div.4.i, %add
  br i1 %cmp1.not.4.i, label %for.inc.4.i, label %for.inc.3.i.for.end.i_crit_edge

for.inc.3.i.for.end.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %div.5.i = udiv i32 %call5, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %div.5.i, i32 %add)
  %cmp1.not.5.i = icmp ult i32 %div.5.i, %add
  br i1 %cmp1.not.5.i, label %for.inc.5.i, label %for.inc.4.i.for.end.i_crit_edge

for.inc.4.i.for.end.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %div.6.i = udiv i32 %call5, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %div.6.i, i32 %add)
  %cmp1.not.6.i = icmp uge i32 %div.6.i, %add
  %spec.select.i = zext i1 %cmp1.not.6.i to i32
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.5.i, %for.inc.4.i.for.end.i_crit_edge, %for.inc.3.i.for.end.i_crit_edge, %for.inc.2.i.for.end.i_crit_edge, %for.inc.1.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 7, %if.end.for.end.i_crit_edge ], [ 5, %for.inc.1.i.for.end.i_crit_edge ], [ 4, %for.inc.2.i.for.end.i_crit_edge ], [ 3, %for.inc.3.i.for.end.i_crit_edge ], [ 2, %for.inc.4.i.for.end.i_crit_edge ], [ %spec.select.i, %for.inc.5.i ]
  %adis.i = getelementptr inbounds %struct.adis16400_state, ptr %13, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #7
  %14 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !138
  %call.i.i46 = call i32 @__adis_read_reg(ptr noundef %adis.i, i32 noundef 56, ptr noundef nonnull %tmp.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46)
  %cmp.i.i = icmp eq i32 %call.i.i46, 0
  br i1 %cmp.i.i, label %if.end4.i, label %__adis_read_reg_16.exit.i

__adis_read_reg_16.exit.i:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #7
  br label %__adis16400_set_filter.exit

if.end4.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tmp.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #7
  %17 = and i32 %16, 65528
  %conv.i17.i = or i32 %17, %i.0.lcssa.i
  %call.i18.i = call i32 @__adis_write_reg(ptr noundef %adis.i, i32 noundef 56, i32 noundef %conv.i17.i, i32 noundef 2) #7
  br label %__adis16400_set_filter.exit

__adis16400_set_filter.exit:                      ; preds = %if.end4.i, %__adis_read_reg_16.exit.i
  %retval.0.i = phi i32 [ %call.i18.i, %if.end4.i ], [ %call.i.i46, %__adis_read_reg_16.exit.i ]
  call void @mutex_unlock(ptr noundef %state_lock.i) #7
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %mul11 = mul i32 %val, 1000
  %div12 = sdiv i32 %val2, 1000
  %add13 = add i32 %div12, %mul11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add13)
  %cmp14 = icmp slt i32 %add13, 1
  br i1 %cmp14, label %sw.bb10.cleanup_crit_edge, label %if.end17

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %state_lock.i48 = getelementptr inbounds %struct.adis16400_state, ptr %1, i32 0, i32 3, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i48, i32 noundef 0) #7
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 128
  %set_freq = getelementptr inbounds %struct.adis16400_chip_info, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %set_freq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_freq, align 4
  %call20 = tail call i32 %21(ptr noundef %1, i32 noundef %add13) #7
  tail call void @mutex_unlock(ptr noundef %state_lock.i48) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %sw.bb10.cleanup_crit_edge, %__adis16400_set_filter.exit, %if.then, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end17 ], [ %call5, %if.then ], [ %retval.0.i, %__adis16400_set_filter.exit ], [ %call.i.i, %sw.bb ], [ -22, %sw.bb10.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
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
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers_with_ts_unaligned(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__adis_initial_startup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_get_debugfs_dentry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16400_show_serial_number(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %tmp.i36 = alloca i32, align 4
  %tmp.i29 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #7
  %adis = getelementptr inbounds %struct.adis16400_state, ptr %1, i32 0, i32 3
  %2 = call ptr @memset(ptr %buf, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tmp.i, align 4, !annotation !138
  %state_lock.i.i = getelementptr inbounds %struct.adis16400_state, ptr %1, i32 0, i32 3, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #7
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 82, ptr noundef nonnull %tmp.i, i32 noundef 2) #7
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i29) #7
  %6 = ptrtoint ptr %tmp.i29 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tmp.i29, align 4, !annotation !138
  call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #7
  %call.i.i31 = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 84, ptr noundef nonnull %tmp.i29, i32 noundef 2) #7
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31)
  %cmp.i32 = icmp eq i32 %call.i.i31, 0
  br i1 %cmp.i32, label %if.end5, label %adis_read_reg_16.exit35

adis_read_reg_16.exit35:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i29) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %tmp.i29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tmp.i29, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i29) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i36) #7
  %9 = ptrtoint ptr %tmp.i36 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %tmp.i36, align 4, !annotation !138
  call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #7
  %call.i.i38 = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 88, ptr noundef nonnull %tmp.i36, i32 noundef 2) #7
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38)
  %cmp.i39 = icmp eq i32 %call.i.i38, 0
  br i1 %cmp.i39, label %if.end10, label %adis_read_reg_16.exit42

adis_read_reg_16.exit42:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i36) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %tmp.i36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmp.i36, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i36) #7
  %conv = and i32 %5, 65535
  %conv11 = and i32 %8, 65535
  %conv12 = and i32 %11, 65535
  %call13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 16, ptr noundef nonnull @.str.38, i32 noundef %conv, i32 noundef %conv11, i32 noundef %conv12)
  %call15 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %adis_read_reg_16.exit42, %adis_read_reg_16.exit35, %adis_read_reg_16.exit
  %retval.0 = phi i32 [ %call15, %if.end10 ], [ %call.i.i, %adis_read_reg_16.exit ], [ %call.i.i31, %adis_read_reg_16.exit35 ], [ %call.i.i38, %adis_read_reg_16.exit42 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16400_product_id_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @adis16400_show_product_id, ptr noundef null, ptr noundef nonnull @.str.39) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16400_show_product_id(ptr noundef %arg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adis = getelementptr inbounds %struct.adis16400_state, ptr %arg, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !138
  %state_lock.i.i = getelementptr inbounds %struct.adis16400_state, ptr %arg, i32 0, i32 3, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #7
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 86, ptr noundef nonnull %tmp.i, i32 noundef 2) #7
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
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
define internal i32 @adis16400_flash_count_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @adis16400_show_flash_count, ptr noundef null, ptr noundef nonnull @.str.39) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16400_show_flash_count(ptr noundef %arg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adis = getelementptr inbounds %struct.adis16400_state, ptr %arg, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !138
  %state_lock.i.i = getelementptr inbounds %struct.adis16400_state, ptr %arg, i32 0, i32 3, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #7
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 0, ptr noundef nonnull %tmp.i, i32 noundef 2) #7
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  %conv.i.mask = and i32 %2, 65535
  %conv = zext i32 %conv.i.mask to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %adis_read_reg_16.exit
  ret i32 %call.i.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !93, !94, !95, !96, !98, !100, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !118, !120, !122, !124, !126, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__initcall__kmod_adis16400__234_1238_adis16400_driver_init6, !1, !"__initcall__kmod_adis16400__234_1238_adis16400_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/imu/adis16400.c", i32 1238, i32 1}
!2 = !{ptr @__exitcall_adis16400_driver_exit, !1, !"__exitcall_adis16400_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/iio/imu/adis16400.c", i32 1240, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/iio/imu/adis16400.c", i32 1241, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/iio/imu/adis16400.c", i32 1242, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/imu/adis16400.c", i32 1233, i32 11}
!12 = !{ptr @adis16400_driver, !13, !"adis16400_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/imu/adis16400.c", i32 1231, i32 26}
!14 = !{ptr @adis16400_id, !15, !"adis16400_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/imu/adis16400.c", i32 1211, i32 35}
!16 = !{ptr @adis16400_chips, !17, !"adis16400_chips", i1 false, i1 false}
!17 = !{!"../drivers/iio/imu/adis16400.c", i32 999, i32 35}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/imu/adis16400.c", i32 891, i32 2}
!20 = !{ptr @adis16300_channels, !21, !"adis16300_channels", i1 false, i1 false}
!21 = !{!"../drivers/iio/imu/adis16400.c", i32 890, i32 35}
!22 = !{ptr @adis16300_timeouts, !23, !"adis16300_timeouts", i1 false, i1 false}
!23 = !{!"../drivers/iio/imu/adis16400.c", i32 963, i32 34}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/imu/adis16400.c", i32 929, i32 36}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/imu/adis16400.c", i32 928, i32 37}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/imu/adis16400.c", i32 927, i32 36}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/imu/adis16400.c", i32 926, i32 35}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/imu/adis16400.c", i32 925, i32 35}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/imu/adis16400.c", i32 924, i32 36}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/imu/adis16400.c", i32 923, i32 36}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/imu/adis16400.c", i32 922, i32 33}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/imu/adis16400.c", i32 921, i32 33}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/imu/adis16400.c", i32 920, i32 37}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/imu/adis16400.c", i32 919, i32 37}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/imu/adis16400.c", i32 918, i32 37}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/imu/adis16400.c", i32 917, i32 37}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/imu/adis16400.c", i32 916, i32 37}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/imu/adis16400.c", i32 915, i32 37}
!54 = !{ptr @adis16400_status_error_msgs, !55, !"adis16400_status_error_msgs", i1 false, i1 false}
!55 = !{!"../drivers/iio/imu/adis16400.c", i32 914, i32 27}
!56 = !{ptr @adis16334_channels, !57, !"adis16334_channels", i1 false, i1 false}
!57 = !{!"../drivers/iio/imu/adis16400.c", i32 903, i32 35}
!58 = !{ptr @adis16334_timeouts, !59, !"adis16334_timeouts", i1 false, i1 false}
!59 = !{!"../drivers/iio/imu/adis16400.c", i32 969, i32 34}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/imu/adis16400.c", i32 884, i32 2}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/imu/adis16400.c", i32 885, i32 2}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/imu/adis16400.c", i32 886, i32 2}
!66 = !{ptr @adis16350_channels, !67, !"adis16350_channels", i1 false, i1 false}
!67 = !{!"../drivers/iio/imu/adis16400.c", i32 872, i32 35}
!68 = !{ptr @adis16362_timeouts, !69, !"adis16362_timeouts", i1 false, i1 false}
!69 = !{!"../drivers/iio/imu/adis16400.c", i32 975, i32 34}
!70 = !{ptr @adis16400_channels, !71, !"adis16400_channels", i1 false, i1 false}
!71 = !{!"../drivers/iio/imu/adis16400.c", i32 817, i32 35}
!72 = !{ptr @adis16400_timeouts, !73, !"adis16400_timeouts", i1 false, i1 false}
!73 = !{!"../drivers/iio/imu/adis16400.c", i32 981, i32 34}
!74 = !{ptr @adis16445_channels, !75, !"adis16445_channels", i1 false, i1 false}
!75 = !{!"../drivers/iio/imu/adis16400.c", i32 833, i32 35}
!76 = !{ptr @adis16445_timeouts, !77, !"adis16445_timeouts", i1 false, i1 false}
!77 = !{!"../drivers/iio/imu/adis16400.c", i32 987, i32 34}
!78 = !{ptr @adis16448_channels, !79, !"adis16448_channels", i1 false, i1 false}
!79 = !{!"../drivers/iio/imu/adis16400.c", i32 844, i32 35}
!80 = !{ptr @adis16448_timeouts, !81, !"adis16448_timeouts", i1 false, i1 false}
!81 = !{!"../drivers/iio/imu/adis16400.c", i32 993, i32 34}
!82 = !{ptr @adis16400_info, !83, !"adis16400_info", i1 false, i1 false}
!83 = !{!"../drivers/iio/imu/adis16400.c", i32 1132, i32 30}
!84 = !{ptr @adis16400_addresses, !85, !"adis16400_addresses", i1 false, i1 false}
!85 = !{!"../drivers/iio/imu/adis16400.c", i32 487, i32 22}
!86 = distinct !{null, !87, !"adis16400_3db_divisors", i1 false, i1 false}
!87 = !{!"../drivers/iio/imu/adis16400.c", i32 387, i32 27}
!88 = !{ptr @.str.20, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/imu/adis16400.c", i32 642, i32 3}
!90 = !{ptr @.str.21, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.22, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.23, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.24, !89, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @adis16400_trigger_handler._entry, !89, !"_entry", i1 false, i1 false}
!95 = !{ptr @adis16400_trigger_handler._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.25, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/iio/imu/adis16400.c", i32 458, i32 31}
!98 = !{ptr @.str.26, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/imu/adis16400.c", i32 464, i32 4}
!100 = !{ptr @.str.27, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.28, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @adis16400_initial_setup._entry, !99, !"_entry", i1 false, i1 false}
!103 = !{ptr @adis16400_initial_setup._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.30, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/imu/adis16400.c", i32 467, i32 3}
!106 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @adis16400_initial_setup._entry.29, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @adis16400_initial_setup._entry_ptr.32, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.33, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/iio/imu/adis16400.c", i32 427, i32 3}
!111 = !{ptr @.str.34, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @adis16400_stop_device._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @adis16400_stop_device._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.35, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/iio/imu/adis16400.c", i32 282, i32 30}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/iio/imu/adis16400.c", i32 285, i32 30}
!118 = !{ptr @.str.37, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/iio/imu/adis16400.c", i32 287, i32 29}
!120 = !{ptr @adis16400_serial_number_fops, !121, !"adis16400_serial_number_fops", i1 false, i1 false}
!121 = !{!"../drivers/iio/imu/adis16400.c", i32 235, i32 37}
!122 = !{ptr @.str.38, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/iio/imu/adis16400.c", i32 229, i32 35}
!124 = !{ptr @adis16400_product_id_fops, !125, !"adis16400_product_id_fops", i1 false, i1 false}
!125 = !{!"../drivers/iio/imu/adis16400.c", i32 256, i32 1}
!126 = !{ptr @.str.39, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @adis16400_flash_count_fops, !128, !"adis16400_flash_count_fops", i1 false, i1 false}
!128 = !{!"../drivers/iio/imu/adis16400.c", i32 273, i32 1}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{!"auto-init"}
!139 = !{i8 0, i8 2}
!140 = !{i32 0, i32 33}
