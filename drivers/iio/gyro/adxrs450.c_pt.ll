; ModuleID = '/llk/IR_all_yes/drivers/iio/gyro/adxrs450.c_pt.bc'
source_filename = "../drivers/iio/gyro/adxrs450.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.adxrs450_state = type { ptr, %struct.mutex, [32 x i8], i32, i32, [120 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_adxrs450__234_460_adxrs450_driver_init6 = internal global ptr @adxrs450_driver_init, section ".initcall6.init", align 4
@adxrs450_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @adxrs450_id, ptr @adxrs450_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adxrs450_driver_exit = internal global ptr @adxrs450_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [49 x i8] c"adxrs450.author=Cliff Cai <cliff.cai@xxxxxxxxxx>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [75 x i8] c"adxrs450.description=Analog Devices ADXRS450/ADXRS453 Gyroscope SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [40 x i8] c"adxrs450.file=drivers/iio/gyro/adxrs450\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [24 x i8] c"adxrs450.license=GPL v2\00", section ".modinfo", align 1
@adxrs450_id = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"adxrs450\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"adxrs453\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adxrs450\00", [23 x i8] zeroinitializer }, align 32
@adxrs450_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&st->buf_lock\00", [18 x i8] zeroinitializer }, align 32
@adxrs450_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @adxrs450_read_raw, ptr null, ptr null, ptr @adxrs450_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adxrs450_channels = internal constant { [2 x [2 x %struct.iio_chan_spec]], [64 x i8] } { [2 x [2 x %struct.iio_chan_spec]] [[2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 293, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 261, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }]], [64 x i8] zeroinitializer }, align 32
@adxrs450_spi_sensor_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 187, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Problem while reading sensor data\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adxrs450_spi_sensor_data\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/gyro/adxrs450.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adxrs450_spi_sensor_data._entry_ptr = internal global ptr @adxrs450_spi_sensor_data._entry, section ".printk_index", align 4
@adxrs450_spi_read_reg_16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 118, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"problem while reading 16 bit register 0x%02x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adxrs450_spi_read_reg_16\00", [39 x i8] zeroinitializer }, align 32
@adxrs450_spi_read_reg_16._entry_ptr = internal global ptr @adxrs450_spi_read_reg_16._entry, section ".printk_index", align 4
@adxrs450_spi_write_reg_16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 154, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"problem while writing 16 bit register 0x%02x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adxrs450_spi_write_reg_16\00", [38 x i8] zeroinitializer }, align 32
@adxrs450_spi_write_reg_16._entry_ptr = internal global ptr @adxrs450_spi_write_reg_16._entry, section ".printk_index", align 4
@adxrs450_initial_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 247, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"The initial power on response is not correct! Restart without reset?\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adxrs450_initial_setup\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@adxrs450_initial_setup._entry_ptr = internal global ptr @adxrs450_initial_setup._entry, section ".printk_index", align 4
@adxrs450_initial_setup._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.4, i32 259, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"The second response is not correct!\0A\00", [59 x i8] zeroinitializer }, align 32
@adxrs450_initial_setup._entry_ptr.16 = internal global ptr @adxrs450_initial_setup._entry.14, section ".printk_index", align 4
@adxrs450_initial_setup._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.4, i32 267, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"The third response is not correct!\0A\00", [60 x i8] zeroinitializer }, align 32
@adxrs450_initial_setup._entry_ptr.19 = internal global ptr @adxrs450_initial_setup._entry.17, section ".printk_index", align 4
@adxrs450_initial_setup._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.12, ptr @.str.4, i32 275, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"The device is not in normal status!\0A\00", [59 x i8] zeroinitializer }, align 32
@adxrs450_initial_setup._entry_ptr.22 = internal global ptr @adxrs450_initial_setup._entry.20, section ".printk_index", align 4
@adxrs450_spi_initial._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 223, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Problem while reading initializing data\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adxrs450_spi_initial\00", [43 x i8] zeroinitializer }, align 32
@adxrs450_spi_initial._entry_ptr = internal global ptr @adxrs450_spi_initial._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 5, i64 8]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 9]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 9]
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"adxrs450_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 453, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"adxrs450_id\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 446, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 455, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 423, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"adxrs450_info\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 406, i32 30 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"adxrs450_channels\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 370, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 187, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 117, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 153, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 247, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 259, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 267, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 275, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [31 x i8] c"../drivers/iio/gyro/adxrs450.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 223, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_adxrs450_driver_exit, ptr @__initcall__kmod_adxrs450__234_460_adxrs450_driver_init6, ptr @adxrs450_driver_exit, ptr @adxrs450_initial_setup._entry, ptr @adxrs450_initial_setup._entry.14, ptr @adxrs450_initial_setup._entry.17, ptr @adxrs450_initial_setup._entry.20, ptr @adxrs450_initial_setup._entry_ptr, ptr @adxrs450_initial_setup._entry_ptr.16, ptr @adxrs450_initial_setup._entry_ptr.19, ptr @adxrs450_initial_setup._entry_ptr.22, ptr @adxrs450_spi_initial._entry, ptr @adxrs450_spi_initial._entry_ptr, ptr @adxrs450_spi_read_reg_16._entry, ptr @adxrs450_spi_read_reg_16._entry_ptr, ptr @adxrs450_spi_sensor_data._entry, ptr @adxrs450_spi_sensor_data._entry_ptr, ptr @adxrs450_spi_write_reg_16._entry, ptr @adxrs450_spi_write_reg_16._entry_ptr, ptr @adxrs450_driver, ptr @adxrs450_id, ptr @.str, ptr @adxrs450_probe.__key, ptr @.str.1, ptr @adxrs450_info, ptr @adxrs450_channels, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs450_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs450_id to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs450_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs450_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs450_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs450_spi_sensor_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs450_spi_read_reg_16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs450_spi_write_reg_16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs450_initial_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs450_initial_setup._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs450_initial_setup._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs450_initial_setup._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs450_spi_initial._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adxrs450_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @adxrs450_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adxrs450_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @adxrs450_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxrs450_probe(ptr noundef %spi) #2 align 64 {
entry:
  %t.i = alloca i32, align 4
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

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
  store ptr %spi, ptr %1, align 128
  %buf_lock = getelementptr inbounds %struct.adxrs450_state, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %buf_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @adxrs450_probe.__key) #5
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i.i, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @adxrs450_info, ptr %info, align 8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %call, align 8
  %call2 = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call2, i32 0, i32 1
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [2 x [2 x %struct.iio_chan_spec]], ptr @adxrs450_channels, i32 0, i32 %7
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %num_channels, align 4
  %driver = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 6
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %name4 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %14 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %name4, align 8
  %call6 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #5
  %15 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %t.i, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #5
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %data.i, align 2, !annotation !73
  %17 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv.i, align 8
  tail call void @msleep(i32 noundef 100) #5
  %call1.i = call fastcc i32 @adxrs450_spi_initial(ptr noundef %18, ptr noundef nonnull %t.i, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.adxrs450_initial_setup.exit_crit_edge

if.end9.adxrs450_initial_setup.exit_crit_edge:    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %adxrs450_initial_setup.exit

if.end.i:                                         ; preds = %if.end9
  %19 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %t.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 1
  br i1 %cmp.not.i, label %if.end.i.if.end3.i_crit_edge, label %do.end.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.11) #8
  br label %if.end3.i

if.end3.i:                                        ; preds = %do.end.i, %if.end.i.if.end3.i_crit_edge
  tail call void @msleep(i32 noundef 50) #5
  %call4.i = call fastcc i32 @adxrs450_spi_initial(ptr noundef %18, ptr noundef nonnull %t.i, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end3.i.adxrs450_initial_setup.exit_crit_edge

if.end3.i.adxrs450_initial_setup.exit_crit_edge:  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adxrs450_initial_setup.exit

if.end7.i:                                        ; preds = %if.end3.i
  tail call void @msleep(i32 noundef 50) #5
  %call8.i = call fastcc i32 @adxrs450_spi_initial(ptr noundef %18, ptr noundef nonnull %t.i, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.adxrs450_initial_setup.exit_crit_edge

if.end7.i.adxrs450_initial_setup.exit_crit_edge:  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adxrs450_initial_setup.exit

if.end11.i:                                       ; preds = %if.end7.i
  %23 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %t.i, align 4
  %25 = and i32 %24, 201326846
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217982, i32 %25)
  %26 = icmp eq i32 %25, 134217982
  br i1 %26, label %if.end21.i, label %if.end11.i.cleanup.sink.split.i_crit_edge

if.end11.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end21.i:                                       ; preds = %if.end11.i
  %call22.i = call fastcc i32 @adxrs450_spi_initial(ptr noundef %18, ptr noundef nonnull %t.i, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end21.i.adxrs450_initial_setup.exit_crit_edge

if.end21.i.adxrs450_initial_setup.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adxrs450_initial_setup.exit

if.end25.i:                                       ; preds = %if.end21.i
  %27 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %t.i, align 4
  %29 = and i32 %28, 201326846
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217982, i32 %29)
  %30 = icmp eq i32 %29, 134217982
  br i1 %30, label %if.end39.i, label %if.end25.i.cleanup.sink.split.i_crit_edge

if.end25.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end39.i:                                       ; preds = %if.end25.i
  %call40.i = call fastcc i32 @adxrs450_spi_read_reg_16(ptr noundef nonnull %call, i8 noundef zeroext 10, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %if.end39.i.adxrs450_initial_setup.exit_crit_edge

if.end39.i.adxrs450_initial_setup.exit_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adxrs450_initial_setup.exit

if.end43.i:                                       ; preds = %if.end39.i
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %data.i, align 2
  %33 = and i16 %32, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool45.not.i = icmp eq i16 %33, 0
  br i1 %tobool45.not.i, label %if.end43.i.adxrs450_initial_setup.exit_crit_edge, label %if.end43.i.cleanup.sink.split.i_crit_edge

if.end43.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end43.i.adxrs450_initial_setup.exit_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adxrs450_initial_setup.exit

cleanup.sink.split.i:                             ; preds = %if.end43.i.cleanup.sink.split.i_crit_edge, %if.end25.i.cleanup.sink.split.i_crit_edge, %if.end11.i.cleanup.sink.split.i_crit_edge
  %.str.21.sink.i = phi ptr [ @.str.15, %if.end11.i.cleanup.sink.split.i_crit_edge ], [ @.str.18, %if.end25.i.cleanup.sink.split.i_crit_edge ], [ @.str.21, %if.end43.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -5, %if.end11.i.cleanup.sink.split.i_crit_edge ], [ -5, %if.end25.i.cleanup.sink.split.i_crit_edge ], [ -22, %if.end43.i.cleanup.sink.split.i_crit_edge ]
  %34 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %18, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull %.str.21.sink.i) #8
  br label %adxrs450_initial_setup.exit

adxrs450_initial_setup.exit:                      ; preds = %cleanup.sink.split.i, %if.end43.i.adxrs450_initial_setup.exit_crit_edge, %if.end39.i.adxrs450_initial_setup.exit_crit_edge, %if.end21.i.adxrs450_initial_setup.exit_crit_edge, %if.end7.i.adxrs450_initial_setup.exit_crit_edge, %if.end3.i.adxrs450_initial_setup.exit_crit_edge, %if.end9.adxrs450_initial_setup.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end9.adxrs450_initial_setup.exit_crit_edge ], [ %call4.i, %if.end3.i.adxrs450_initial_setup.exit_crit_edge ], [ %call8.i, %if.end7.i.adxrs450_initial_setup.exit_crit_edge ], [ %call22.i, %if.end21.i.adxrs450_initial_setup.exit_crit_edge ], [ %call40.i, %if.end39.i.adxrs450_initial_setup.exit_crit_edge ], [ 0, %if.end43.i.adxrs450_initial_setup.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #5
  br label %cleanup

cleanup:                                          ; preds = %adxrs450_initial_setup.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %retval.0.i, %adxrs450_initial_setup.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxrs450_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfers.i = alloca [2 x %struct.spi_transfer], align 4
  %t = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %t) #5
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %t, align 2, !annotation !73
  %1 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb8
    i32 8, label %sw.bb13
    i32 5, label %sw.bb19
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %3, label %sw.bb.cleanup_crit_edge [
    i32 4, label %sw.bb1
    i32 9, label %sw.bb2
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %5 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfers.i) #5
  %7 = getelementptr inbounds i8, ptr %xfers.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 188)
  %tx.i = getelementptr inbounds %struct.adxrs450_state, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %xfers.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tx.i, ptr %xfers.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 0, i32 2
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %len.i, align 4
  %cs_change.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 0, i32 7
  %11 = ptrtoint ptr %cs_change.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 64, ptr %cs_change.i, align 4
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 0, i32 8
  %12 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 8, ptr %bits_per_word.i, align 1
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 1, i32 1
  %rx.i = getelementptr inbounds %struct.adxrs450_state, ptr %6, i32 0, i32 4
  %13 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %rx.i, ptr %rx_buf.i, align 4
  %len2.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 1, i32 2
  %14 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %len2.i, align 4
  %bits_per_word7.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 1, i32 8
  %15 = ptrtoint ptr %bits_per_word7.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %bits_per_word7.i, align 1
  %buf_lock.i = getelementptr inbounds %struct.adxrs450_state, ptr %6, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %buf_lock.i, i32 noundef 0) #5
  %16 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 536870912, ptr %tx.i, align 128
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %6, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %19 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %sw.bb1.spi_message_add_tail.exit.i.i.i_crit_edge

sw.bb1.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %sw.bb1.spi_message_add_tail.exit.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 1, i32 18
  %29 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i, ptr noundef %30, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.1.i, label %if.end.i.i.i.i.i.1.i, label %spi_message_add_tail.exit.i.i.i.spi_message_add_tail.exit.i.i.1.i_crit_edge

spi_message_add_tail.exit.i.i.i.spi_message_add_tail.exit.i.i.1.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i.i.1.i

if.end.i.i.i.i.i.1.i:                             ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %transfer_list.i.i.i.1.i, ptr %prev.i.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %transfer_list.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.1.i, align 4
  %prev3.i.i.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 1, i32 18, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i.i.i.1.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %transfer_list.i.i.i.1.i, ptr %30, align 4
  br label %spi_message_add_tail.exit.i.i.1.i

spi_message_add_tail.exit.i.i.1.i:                ; preds = %if.end.i.i.i.i.i.1.i, %spi_message_add_tail.exit.i.i.i.spi_message_add_tail.exit.i.i.1.i_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %18, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %adxrs450_spi_sensor_data.exit

adxrs450_spi_sensor_data.exit:                    ; preds = %spi_message_add_tail.exit.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %6, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.2) #8
  call void @mutex_unlock(ptr noundef %buf_lock.i) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfers.i) #5
  br label %cleanup

if.end:                                           ; preds = %spi_message_add_tail.exit.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx.i, align 4
  call void @mutex_unlock(ptr noundef %buf_lock.i) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfers.i) #5
  %39 = shl i32 %38, 6
  %sext = ashr i32 %39, 16
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sext, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  %call3 = call fastcc i32 @adxrs450_spi_read_reg_16(ptr noundef %indio_dev, i8 noundef zeroext 2, ptr noundef nonnull %t)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %t to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %t, align 2
  %43 = ashr i16 %42, 6
  %narrow = add nsw i16 %43, 225
  %add = sext i16 %narrow to i32
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %45 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chan, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %46, label %sw.bb8.cleanup_crit_edge [
    i32 4, label %sw.bb10
    i32 9, label %sw.bb11
  ]

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb10:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %val, align 4
  %49 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 218166, ptr %val2, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 200, ptr %val, align 4
  %51 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %val2, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %call14 = call fastcc i32 @adxrs450_spi_read_reg_16(ptr noundef %indio_dev, i8 noundef zeroext 8, ptr noundef nonnull %t)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %t to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %t, align 2
  %conv18 = sext i16 %53 to i32
  %54 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv18, ptr %val, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %call20 = call fastcc i32 @adxrs450_spi_read_reg_16(ptr noundef %indio_dev, i8 noundef zeroext 18, ptr noundef nonnull %t)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %sw.bb19.cleanup_crit_edge

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %t to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %t, align 2
  %conv2444 = zext i16 %56 to i32
  %shl.i = shl i32 %conv2444, 22
  %shr.i = ashr exact i32 %shl.i, 22
  %57 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %shr.i, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %sw.bb19.cleanup_crit_edge, %if.end17, %sw.bb13.cleanup_crit_edge, %sw.bb11, %sw.bb10, %sw.bb8.cleanup_crit_edge, %if.end6, %sw.bb2.cleanup_crit_edge, %if.end, %adxrs450_spi_sensor_data.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb11 ], [ 3, %sw.bb10 ], [ -22, %sw.bb8.cleanup_crit_edge ], [ %call20, %sw.bb19.cleanup_crit_edge ], [ 1, %if.end23 ], [ %call14, %sw.bb13.cleanup_crit_edge ], [ 1, %if.end17 ], [ %call3, %sw.bb2.cleanup_crit_edge ], [ 1, %if.end6 ], [ %call.i.i, %adxrs450_spi_sensor_data.exit ], [ 1, %if.end ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %t) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxrs450_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mask)
  %cond = icmp ne i32 %mask, 5
  %0 = add i32 %val, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2048, i32 %0)
  %1 = icmp ult i32 %0, -2048
  %or.cond = or i1 %1, %cond
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %buf_lock.i = getelementptr inbounds %struct.adxrs450_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %buf_lock.i, i32 noundef 0) #5
  %conv1.i = shl i32 %val, 1
  %shl2.i = and i32 %conv1.i, 131070
  %or3.i = or i32 %shl2.i, 1076101120
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %or3.i) #5
  %and285.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and285.i)
  %tobool286.not.i = icmp eq i32 %and285.i, 0
  %or287.i = or i32 %shl2.i, 1076101121
  %spec.select.i = select i1 %tobool286.not.i, i32 %or287.i, i32 %or3.i
  %tx288.i = getelementptr inbounds %struct.adxrs450_state, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %tx288.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select.i, ptr %tx288.i, align 128
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %7 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 92)
  %9 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tx288.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %11 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.spi_write.exit.i_crit_edge

if.end.spi_write.exit.i_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %if.end.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %6, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool291.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool291.not.i, label %spi_write.exit.i.adxrs450_spi_write_reg_16.exit_crit_edge, label %do.end.i

spi_write.exit.i.adxrs450_spi_write_reg_16.exit_crit_edge: ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adxrs450_spi_write_reg_16.exit

do.end.i:                                         ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.9, i32 noundef 18) #8
  br label %adxrs450_spi_write_reg_16.exit

adxrs450_spi_write_reg_16.exit:                   ; preds = %do.end.i, %spi_write.exit.i.adxrs450_spi_write_reg_16.exit_crit_edge
  call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #5
  call void @mutex_unlock(ptr noundef %buf_lock.i) #5
  br label %cleanup

cleanup:                                          ; preds = %adxrs450_spi_write_reg_16.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %adxrs450_spi_write_reg_16.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adxrs450_spi_read_reg_16(ptr nocapture noundef readonly %indio_dev, i8 noundef zeroext %reg_address, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfers = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfers) #5
  %2 = getelementptr inbounds i8, ptr %xfers, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %tx1 = getelementptr inbounds %struct.adxrs450_state, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %xfers to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tx1, ptr %xfers, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %len, align 4
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 7
  %6 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 64, ptr %cs_change, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 8
  %7 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %bits_per_word, align 1
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 1
  %rx = getelementptr inbounds %struct.adxrs450_state, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %rx, ptr %rx_buf, align 4
  %len3 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 2
  %9 = ptrtoint ptr %len3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %len3, align 4
  %bits_per_word8 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 8
  %10 = ptrtoint ptr %bits_per_word8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %bits_per_word8, align 1
  %buf_lock = getelementptr inbounds %struct.adxrs450_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %buf_lock, i32 noundef 0) #5
  %conv = zext i8 %reg_address to i32
  %shl = shl nuw nsw i32 %conv, 17
  %or = or i32 %shl, -2147483648
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %or) #5
  %and290 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and290)
  %tobool291.not = icmp eq i32 %and290, 0
  %or292 = or i32 %shl, -2147483647
  %spec.select = select i1 %tobool291.not, i32 %or292, i32 %or
  %11 = ptrtoint ptr %tx1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %tx1, align 128
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 18
  %24 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1, ptr noundef %25, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i.i.1, label %if.end.i.i.i.i.i.1, label %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge

spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i.i.1

if.end.i.i.i.i.i.1:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i.i.i.1, ptr %prev.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i, ptr %transfer_list.i.i.i.1, align 4
  %prev3.i.i.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i.i.i.1, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i.i.i.1, ptr %25, align 4
  br label %spi_message_add_tail.exit.i.i.1

spi_message_add_tail.exit.i.i.1:                  ; preds = %if.end.i.i.i.i.i.1, %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge
  %call.i349 = call i32 @spi_sync(ptr noundef %13, ptr noundef nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i349)
  %tobool295.not = icmp eq i32 %call.i349, 0
  br i1 %tobool295.not, label %if.end299, label %do.end

do.end:                                           ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.7, i32 noundef %conv) #8
  br label %error_ret

if.end299:                                        ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx, align 4
  %shr301 = lshr i32 %33, 5
  %conv303 = trunc i32 %shr301 to i16
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv303, ptr %val, align 2
  br label %error_ret

error_ret:                                        ; preds = %if.end299, %do.end
  call void @mutex_unlock(ptr noundef %buf_lock) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfers) #5
  ret i32 %call.i349
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adxrs450_spi_initial(ptr noundef %st, ptr nocapture noundef writeonly %val, i8 noundef zeroext %chk) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfers = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfers) #5
  %0 = getelementptr inbounds i8, ptr %xfers, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %tx1 = getelementptr inbounds %struct.adxrs450_state, ptr %st, i32 0, i32 3
  %2 = ptrtoint ptr %xfers to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tx1, ptr %xfers, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 1
  %rx = getelementptr inbounds %struct.adxrs450_state, ptr %st, i32 0, i32 4
  %3 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rx, ptr %rx_buf, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %len, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 8
  %5 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 8, ptr %bits_per_word, align 1
  %buf_lock = getelementptr inbounds %struct.adxrs450_state, ptr %st, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %buf_lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %chk)
  %tobool.not = icmp eq i8 %chk, 0
  %spec.select = select i1 %tobool.not, i32 536870912, i32 536870915
  %6 = ptrtoint ptr %tx1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %tx1, align 128
  %7 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %8, ptr noundef nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %st, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.23) #8
  br label %error_ret

if.end6:                                          ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx, align 4
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val, align 4
  br label %error_ret

error_ret:                                        ; preds = %if.end6, %do.end
  call void @mutex_unlock(ptr noundef %buf_lock) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfers) #5
  ret i32 %call.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_adxrs450__234_460_adxrs450_driver_init6, !1, !"__initcall__kmod_adxrs450__234_460_adxrs450_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/gyro/adxrs450.c", i32 460, i32 1}
!2 = !{ptr @__exitcall_adxrs450_driver_exit, !1, !"__exitcall_adxrs450_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/iio/gyro/adxrs450.c", i32 462, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/iio/gyro/adxrs450.c", i32 463, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/iio/gyro/adxrs450.c", i32 464, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/gyro/adxrs450.c", i32 455, i32 11}
!12 = !{ptr @adxrs450_driver, !13, !"adxrs450_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/gyro/adxrs450.c", i32 453, i32 26}
!14 = !{ptr @adxrs450_id, !15, !"adxrs450_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/gyro/adxrs450.c", i32 446, i32 35}
!16 = !{ptr @adxrs450_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/gyro/adxrs450.c", i32 423, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @adxrs450_info, !20, !"adxrs450_info", i1 false, i1 false}
!20 = !{!"../drivers/iio/gyro/adxrs450.c", i32 406, i32 30}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/gyro/adxrs450.c", i32 187, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @adxrs450_spi_sensor_data._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @adxrs450_spi_sensor_data._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/gyro/adxrs450.c", i32 117, i32 3}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @adxrs450_spi_read_reg_16._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @adxrs450_spi_read_reg_16._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/gyro/adxrs450.c", i32 153, i32 3}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @adxrs450_spi_write_reg_16._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @adxrs450_spi_write_reg_16._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @adxrs450_channels, !40, !"adxrs450_channels", i1 false, i1 false}
!40 = !{!"../drivers/iio/gyro/adxrs450.c", i32 370, i32 35}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/gyro/adxrs450.c", i32 247, i32 3}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @adxrs450_initial_setup._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @adxrs450_initial_setup._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/gyro/adxrs450.c", i32 259, i32 3}
!49 = !{ptr @adxrs450_initial_setup._entry.14, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @adxrs450_initial_setup._entry_ptr.16, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/gyro/adxrs450.c", i32 267, i32 3}
!53 = !{ptr @adxrs450_initial_setup._entry.17, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @adxrs450_initial_setup._entry_ptr.19, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/gyro/adxrs450.c", i32 275, i32 3}
!57 = !{ptr @adxrs450_initial_setup._entry.20, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @adxrs450_initial_setup._entry_ptr.22, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/gyro/adxrs450.c", i32 223, i32 3}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @adxrs450_spi_initial._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @adxrs450_spi_initial._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"auto-init"}
