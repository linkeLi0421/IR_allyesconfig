; ModuleID = '/llk/IR_all_yes/drivers/iio/gyro/adis16260.c_pt.bc'
source_filename = "../drivers/iio/gyro/adis16260.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.adis16260_chip_info = type { i32, i32, ptr, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adis_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, i32, ptr, i8, i8, i32, i32, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.adis_timeout = type { i16, i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.adis16260 = type { ptr, [124 x i8], %struct.adis }
%struct.adis = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.spi_message, ptr, i32, i32, ptr, [76 x i8], [10 x i8], [4 x i8], [114 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@__initcall__kmod_adis16260__234_431_adis16260_driver_init6 = internal global ptr @adis16260_driver_init, section ".initcall6.init", align 4
@adis16260_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @adis16260_id, ptr @adis16260_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adis16260_driver_exit = internal global ptr @adis16260_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [48 x i8] c"adis16260.author=Barry Song <21cnbao@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [74 x i8] c"adis16260.description=Analog Devices ADIS16260/5 Digital Gyroscope Sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [42 x i8] c"adis16260.file=drivers/iio/gyro/adis16260\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [25 x i8] c"adis16260.license=GPL v2\00", section ".modinfo", align 1
@adis16260_id = internal constant { [7 x %struct.spi_device_id], [36 x i8] } { [7 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"adis16260\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"adis16265\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"adis16266\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"adis16250\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"adis16255\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"adis16251\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adis16260\00", [22 x i8] zeroinitializer }, align 32
@adis16260_chip_info_table = internal constant { [3 x %struct.adis16260_chip_info], [48 x i8] } { [3 x %struct.adis16260_chip_info] [%struct.adis16260_chip_info { i32 250268, i32 80, ptr @adis16260_channels, i32 6 }, %struct.adis16260_chip_info { i32 250268, i32 320, ptr @adis16260_channels, i32 6 }, %struct.adis16260_chip_info { i32 192342, i32 14000, ptr @adis16266_channels, i32 5 }], [48 x i8] zeroinitializer }, align 32
@adis16260_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @adis16260_read_raw, ptr null, ptr null, ptr @adis16260_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adis_update_scan_mode, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adis16260_data = internal constant { %struct.adis_data, [48 x i8] } { %struct.adis_data { i32 30, i32 30, i32 0, i32 62, i32 52, i32 60, i32 0, i32 0, i32 2048, i32 52, i8 0, ptr @adis16260_timeouts, ptr @adis1620_status_error_msgs, i32 127, ptr null, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@adis16260_channels = internal constant { [6 x %struct.iio_chan_spec], [144 x i8] } { [6 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 4, i32 0, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 49, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 10, i32 0, i32 1, i32 14, i32 4, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 12, i32 3, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 2, i32 1, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.1, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 10, i32 2, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 5, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [144 x i8] zeroinitializer }, align 32
@adis16266_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 4, i32 0, %struct.anon.71 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 1 }, i32 49, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 12, i32 3, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 2, i32 1, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.1, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 10, i32 2, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"supply\00", [25 x i8] zeroinitializer }, align 32
@adis16260_addresses = internal constant { [1 x [2 x i8]], [30 x i8] } { [1 x [2 x i8]] [[2 x i8] c"\14\16"], [30 x i8] zeroinitializer }, align 32
@adis16260_timeouts = internal constant { %struct.adis_timeout, [26 x i8] } { %struct.adis_timeout { i16 220, i16 220, i16 220 }, [26 x i8] zeroinitializer }, align 32
@adis1620_status_error_msgs = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Power supply below 4.75\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Power supply above 5.25\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Flash update failed\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SPI failure\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Sensor overrange\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Self test error\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Flash checksum error\00", [43 x i8] zeroinitializer }, align 32
@adis16260_stop_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 177, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"problem with turning device off: SLP_CNT\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adis16260_stop_device\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/gyro/adis16260.c\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adis16260_stop_device._entry_ptr = internal global ptr @adis16260_stop_device._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 12]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4, i64 9, i64 10]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 12]
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"adis16260_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 424, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"adis16260_id\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 413, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 426, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [26 x i8] c"adis16260_chip_info_table\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 147, i32 41 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"adis16260_info\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 314, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"adis16260_data\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 336, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"adis16260_channels\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 117, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"adis16266_channels\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 133, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 126, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"adis16260_addresses\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 182, i32 17 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"adis16260_timeouts\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 330, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [27 x i8] c"adis1620_status_error_msgs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 320, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 327, i32 40 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 326, i32 41 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 325, i32 40 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 324, i32 39 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 323, i32 39 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 322, i32 40 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 321, i32 40 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [32 x i8] c"../drivers/iio/gyro/adis16260.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 177, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_adis16260_driver_exit, ptr @__initcall__kmod_adis16260__234_431_adis16260_driver_init6, ptr @adis16260_driver_exit, ptr @adis16260_stop_device._entry, ptr @adis16260_stop_device._entry_ptr, ptr @adis16260_driver, ptr @adis16260_id, ptr @.str, ptr @adis16260_chip_info_table, ptr @adis16260_info, ptr @adis16260_data, ptr @adis16260_channels, ptr @adis16266_channels, ptr @.str.1, ptr @adis16260_addresses, ptr @adis16260_timeouts, ptr @adis1620_status_error_msgs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16260_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16260_id to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16260_chip_info_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16260_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16260_data to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16260_channels to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16266_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16260_addresses to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16260_timeouts to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis1620_status_error_msgs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16260_stop_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16260_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @adis16260_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adis16260_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @adis16260_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16260_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 512) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %driver_data.i.i, align 4
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [3 x %struct.adis16260_chip_info], ptr @adis16260_chip_info_table, i32 0, i32 %4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %1, align 128
  %name6 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 15
  %6 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %name6, align 8
  %info7 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 17
  %7 = ptrtoint ptr %info7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @adis16260_info, ptr %info7, align 8
  %8 = load ptr, ptr %1, align 128
  %channels = getelementptr inbounds %struct.adis16260_chip_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %channels, align 4
  %channels9 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 13
  %11 = ptrtoint ptr %channels9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %channels9, align 8
  %12 = load ptr, ptr %1, align 128
  %num_channels = getelementptr inbounds %struct.adis16260_chip_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_channels, align 4
  %num_channels11 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 14
  %15 = ptrtoint ptr %num_channels11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %num_channels11, align 4
  %16 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %call1, align 8
  %adis = getelementptr inbounds %struct.adis16260, ptr %1, i32 0, i32 2
  %call12 = tail call i32 @adis_init(ptr noundef %adis, ptr noundef nonnull %call1, ptr noundef %spi, ptr noundef nonnull @adis16260_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end4
  %call17 = tail call i32 @devm_adis_setup_buffer_and_trigger(ptr noundef %adis, ptr noundef nonnull %call1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %state_lock.i = getelementptr inbounds %struct.adis16260, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i, i32 noundef 0) #5
  %call.i = tail call i32 @__adis_initial_startup(ptr noundef %adis) #5
  tail call void @mutex_unlock(ptr noundef %state_lock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %call.i66 = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @adis16260_stop, ptr noundef nonnull %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i, label %if.end30, label %if.then.i

if.then.i:                                        ; preds = %if.end25
  %17 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv.i, align 8
  %adis.i.i.i = getelementptr inbounds %struct.adis16260, ptr %18, i32 0, i32 2
  %state_lock.i.i.i.i.i = getelementptr inbounds %struct.adis16260, ptr %18, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i.i.i, i32 noundef 0) #5
  %call.i.i.i.i.i = tail call i32 @__adis_write_reg(ptr noundef %adis.i.i.i, i32 noundef 58, i32 noundef 128, i32 noundef 2) #5
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call1, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %if.end30 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call12, %if.end4.cleanup_crit_edge ], [ %call17, %if.end15.cleanup_crit_edge ], [ %call.i, %if.end20.cleanup_crit_edge ], [ %call.i66, %if.then.i.cleanup_crit_edge ], [ %call.i66, %do.end.i.i.i ]
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
define internal void @adis16260_stop(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %adis.i = getelementptr inbounds %struct.adis16260, ptr %1, i32 0, i32 2
  %state_lock.i.i.i = getelementptr inbounds %struct.adis16260, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i, i32 noundef 0) #5
  %call.i.i.i = tail call i32 @__adis_write_reg(ptr noundef %adis.i, i32 noundef 58, i32 noundef 128, i32 noundef 2) #5
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %entry.adis16260_stop_device.exit_crit_edge, label %do.end.i

entry.adis16260_stop_device.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %adis16260_stop_device.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.9) #8
  br label %adis16260_stop_device.exit

adis16260_stop_device.exit:                       ; preds = %do.end.i, %entry.adis16260_stop_device.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16260_read_raw(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %tmp.i94 = alloca i32, align 4
  %tmp.i87 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %adis2 = getelementptr inbounds %struct.adis16260, ptr %1, i32 0, i32 2
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb9
    i32 5, label %sw.bb10
    i32 4, label %sw.bb17
    i32 12, label %sw.bb27
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @adis_single_conversion(ptr noundef %indio_dev, ptr noundef %chan, i32 noundef 16384, ptr noundef %val) #5
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %6, label %sw.bb4.cleanup_crit_edge [
    i32 4, label %sw.bb5
    i32 10, label %sw.bb6
    i32 0, label %sw.bb7
    i32 9, label %sw.bb8
  ]

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %gyro_max_scale = getelementptr inbounds %struct.adis16260_chip_info, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %gyro_max_scale to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gyro_max_scale, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %13 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val2, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %val, align 4
  %15 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 639, ptr %val2, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %16 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  %. = zext i1 %cmp to i32
  %.86 = select i1 %cmp, i32 831500, i32 610500
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %., ptr %val, align 4
  %19 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.86, ptr %val2, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 145, ptr %val, align 4
  %21 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 300000, ptr %val2, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 172, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %23 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %tmp.i, align 4, !annotation !65
  %state_lock.i.i = getelementptr inbounds %struct.adis16260, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #5
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis2, i32 noundef 20, ptr noundef nonnull %tmp.i, i32 noundef 2) #5
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end14, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  br label %cleanup

if.end14:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  %shl.i = shl i32 %25, 20
  %shr.i = ashr exact i32 %shl.i, 20
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr.i, ptr %val, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  %scan_index18 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %27 = ptrtoint ptr %scan_index18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %scan_index18, align 4
  %arrayidx20 = getelementptr [1 x [2 x i8]], ptr @adis16260_addresses, i32 0, i32 %28, i32 1
  %29 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %30 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i87) #5
  %31 = ptrtoint ptr %tmp.i87 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %tmp.i87, align 4, !annotation !65
  %state_lock.i.i88 = getelementptr inbounds %struct.adis16260, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i88, i32 noundef 0) #5
  %call.i.i89 = call i32 @__adis_read_reg(ptr noundef %adis2, i32 noundef %conv21, ptr noundef nonnull %tmp.i87, i32 noundef 2) #5
  call void @mutex_unlock(ptr noundef %state_lock.i.i88) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89)
  %cmp.i90 = icmp eq i32 %call.i.i89, 0
  br i1 %cmp.i90, label %if.end25, label %adis_read_reg_16.exit93

adis_read_reg_16.exit93:                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i87) #5
  br label %cleanup

if.end25:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %tmp.i87 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tmp.i87, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i87) #5
  %sext = shl i32 %33, 16
  %conv26 = ashr exact i32 %sext, 16
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv26, ptr %val, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i94) #5
  %35 = ptrtoint ptr %tmp.i94 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %tmp.i94, align 4, !annotation !65
  %state_lock.i.i95 = getelementptr inbounds %struct.adis16260, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i95, i32 noundef 0) #5
  %call.i.i96 = call i32 @__adis_read_reg(ptr noundef %adis2, i32 noundef 54, ptr noundef nonnull %tmp.i94, i32 noundef 2) #5
  call void @mutex_unlock(ptr noundef %state_lock.i.i95) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i96)
  %cmp.i97 = icmp eq i32 %call.i.i96, 0
  br i1 %cmp.i97, label %if.end31, label %adis_read_reg_16.exit100

adis_read_reg_16.exit100:                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i94) #5
  br label %cleanup

if.end31:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %tmp.i94 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tmp.i94, align 4
  %conv.i98 = trunc i32 %37 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i94) #5
  %38 = ptrtoint ptr %adis2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adis2, align 128
  %call32 = call ptr @spi_get_device_id(ptr noundef %39) #5
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call32, i32 0, i32 1
  %40 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool33.not = icmp eq i32 %41, 0
  %42 = and i16 %conv.i98, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool40.not = icmp eq i16 %42, 0
  %cond41 = select i1 %tobool40.not, i16 2048, i16 66
  %cond = select i1 %tobool40.not, i16 256, i16 8
  %storemerge = select i1 %tobool33.not, i16 %cond41, i16 %cond
  %43 = and i16 %conv.i98, 127
  %narrow = add nuw nsw i16 %43, 1
  %div112 = udiv i16 %storemerge, %narrow
  %div.zext = zext i16 %div112 to i32
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %div.zext, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %adis_read_reg_16.exit100, %if.end25, %adis_read_reg_16.exit93, %if.end14, %adis_read_reg_16.exit, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end31 ], [ 1, %if.end25 ], [ 1, %if.end14 ], [ 1, %sw.bb9 ], [ 2, %sw.bb8 ], [ 2, %sw.bb7 ], [ 2, %sw.bb6 ], [ 10, %sw.bb5 ], [ %call3, %sw.bb ], [ -22, %sw.bb4.cleanup_crit_edge ], [ %call.i.i, %adis_read_reg_16.exit ], [ %call.i.i89, %adis_read_reg_16.exit93 ], [ %call.i.i96, %adis_read_reg_16.exit100 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16260_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %adis1 = getelementptr inbounds %struct.adis16260, ptr %1, i32 0, i32 2
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 4, label %sw.bb6
    i32 12, label %sw.bb20
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = add i32 %val, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %3)
  %4 = icmp ult i32 %3, -4096
  br i1 %4, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = and i32 %val, 65535
  %state_lock.i.i = getelementptr inbounds %struct.adis16260, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #5
  %call.i.i = tail call i32 @__adis_write_reg(ptr noundef %adis1, i32 noundef 20, i32 noundef %conv.i, i32 noundef 2) #5
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %val)
  %5 = icmp ugt i32 %val, 4095
  br i1 %5, label %sw.bb6.cleanup_crit_edge, label %if.end13

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  %scan_index14 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %6 = ptrtoint ptr %scan_index14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scan_index14, align 4
  %arrayidx16 = getelementptr [1 x [2 x i8]], ptr @adis16260_addresses, i32 0, i32 %7, i32 1
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %9 to i32
  %state_lock.i.i74 = getelementptr inbounds %struct.adis16260, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i74, i32 noundef 0) #5
  %call.i.i75 = tail call i32 @__adis_write_reg(ptr noundef %adis1, i32 noundef %conv17, i32 noundef %val, i32 noundef 2) #5
  br label %cleanup.sink.split

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %state_lock.i = getelementptr inbounds %struct.adis16260, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i, i32 noundef 0) #5
  %10 = ptrtoint ptr %adis1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adis1, align 128
  %call21 = tail call ptr @spi_get_device_id(ptr noundef %11) #5
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call21, i32 0, i32 1
  %12 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %. = select i1 %tobool.not, i32 2048, i32 256
  %t.0.in = sdiv i32 %., %val
  %t.0 = trunc i32 %t.0.in to i8
  %conv27 = and i32 %t.0.in, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %conv27)
  %cmp28 = icmp ugt i32 %conv27, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv27)
  %cmp33.not = icmp ne i32 %conv27, 0
  %dec = sext i1 %cmp33.not to i8
  %spec.select = add i8 %dec, %t.0
  %t.1 = select i1 %cmp28, i8 127, i8 %spec.select
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %t.1)
  %cmp39 = icmp ugt i8 %t.1, 9
  %14 = ptrtoint ptr %adis1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adis1, align 128
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %15, i32 0, i32 3
  %.78 = select i1 %cmp39, i32 300000, i32 2000000
  %16 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.78, ptr %max_speed_hz, align 8
  %conv.i76 = zext i8 %t.1 to i32
  %call.i = tail call i32 @__adis_write_reg(ptr noundef %adis1, i32 noundef 54, i32 noundef %conv.i76, i32 noundef 1) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb20, %if.end13, %if.end
  %state_lock.i.sink = phi ptr [ %state_lock.i, %sw.bb20 ], [ %state_lock.i.i74, %if.end13 ], [ %state_lock.i.i, %if.end ]
  %retval.0.ph = phi i32 [ %call.i, %sw.bb20 ], [ %call.i.i75, %if.end13 ], [ %call.i.i, %if.end ]
  tail call void @mutex_unlock(ptr noundef %state_lock.i.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adis_update_scan_mode(ptr noundef, ptr noundef) #1

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
declare dso_local i32 @__adis_initial_startup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_adis16260__234_431_adis16260_driver_init6, !1, !"__initcall__kmod_adis16260__234_431_adis16260_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/gyro/adis16260.c", i32 431, i32 1}
!2 = !{ptr @__exitcall_adis16260_driver_exit, !1, !"__exitcall_adis16260_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/iio/gyro/adis16260.c", i32 433, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/iio/gyro/adis16260.c", i32 434, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/iio/gyro/adis16260.c", i32 435, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/gyro/adis16260.c", i32 426, i32 11}
!12 = !{ptr @adis16260_driver, !13, !"adis16260_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/gyro/adis16260.c", i32 424, i32 26}
!14 = !{ptr @adis16260_id, !15, !"adis16260_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/gyro/adis16260.c", i32 413, i32 35}
!16 = !{ptr @adis16260_chip_info_table, !17, !"adis16260_chip_info_table", i1 false, i1 false}
!17 = !{!"../drivers/iio/gyro/adis16260.c", i32 147, i32 41}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/gyro/adis16260.c", i32 126, i32 2}
!20 = !{ptr @adis16260_channels, !21, !"adis16260_channels", i1 false, i1 false}
!21 = !{!"../drivers/iio/gyro/adis16260.c", i32 117, i32 35}
!22 = !{ptr @adis16266_channels, !23, !"adis16266_channels", i1 false, i1 false}
!23 = !{!"../drivers/iio/gyro/adis16260.c", i32 133, i32 35}
!24 = !{ptr @adis16260_info, !25, !"adis16260_info", i1 false, i1 false}
!25 = !{!"../drivers/iio/gyro/adis16260.c", i32 314, i32 30}
!26 = !{ptr @adis16260_addresses, !27, !"adis16260_addresses", i1 false, i1 false}
!27 = !{!"../drivers/iio/gyro/adis16260.c", i32 182, i32 17}
!28 = !{ptr @adis16260_data, !29, !"adis16260_data", i1 false, i1 false}
!29 = !{!"../drivers/iio/gyro/adis16260.c", i32 336, i32 31}
!30 = !{ptr @adis16260_timeouts, !31, !"adis16260_timeouts", i1 false, i1 false}
!31 = !{!"../drivers/iio/gyro/adis16260.c", i32 330, i32 34}
!32 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/gyro/adis16260.c", i32 327, i32 40}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/gyro/adis16260.c", i32 326, i32 41}
!36 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/gyro/adis16260.c", i32 325, i32 40}
!38 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/gyro/adis16260.c", i32 324, i32 39}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/gyro/adis16260.c", i32 323, i32 39}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/gyro/adis16260.c", i32 322, i32 40}
!44 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/gyro/adis16260.c", i32 321, i32 40}
!46 = !{ptr @adis1620_status_error_msgs, !47, !"adis1620_status_error_msgs", i1 false, i1 false}
!47 = !{!"../drivers/iio/gyro/adis16260.c", i32 320, i32 27}
!48 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/gyro/adis16260.c", i32 177, i32 3}
!50 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @adis16260_stop_device._entry, !49, !"_entry", i1 false, i1 false}
!55 = !{ptr @adis16260_stop_device._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
