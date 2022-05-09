; ModuleID = '/llk/IR_all_yes/drivers/iio/accel/sca3300.c_pt.bc'
source_filename = "../drivers/iio/accel/sca3300.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.72, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.72 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sca3300_data = type { ptr, %struct.mutex, %struct.anon.71, [16 x i8], [4 x i8], [4 x i8], [120 x i8] }
%struct.anon.71 = type { [4 x i16], i64 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_sca3300__234_468_sca3300_driver_init6 = internal global ptr @sca3300_driver_init, section ".initcall6.init", align 4
@sca3300_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @sca3300_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sca3300_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sca3300_driver_exit = internal global ptr @sca3300_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [53 x i8] c"sca3300.author=Tomas Melin <tomas.melin@vaisala.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [53 x i8] c"sca3300.description=Murata SCA3300 SPI Accelerometer\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [39 x i8] c"sca3300.file=drivers/iio/accel/sca3300\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [23 x i8] c"sca3300.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sca3300\00", [24 x i8] zeroinitializer }, align 32
@sca3300_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"murata,sca3300\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sca3300_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sca_data->lock\00", [16 x i8] zeroinitializer }, align 32
@sca3300_crc_table = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@sca3300_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @sca3300_read_raw, ptr null, ptr @sca3300_read_avail, ptr @sca3300_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sca3300_debugfs_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sca3300_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 1, i32 0, %struct.anon.72 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 1028, i32 1028, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 2, i32 1, %struct.anon.72 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 1028, i32 1028, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 3, i32 2, %struct.anon.72 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 1028, i32 1028, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 5, i32 3, %struct.anon.72 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.72 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@sca3300_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 15, i32 0], [24 x i8] zeroinitializer }, align 32
@sca3300_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 433, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to init device, error: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sca3300_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/accel/sca3300.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sca3300_probe._entry_ptr = internal global ptr @sca3300_probe._entry, section ".printk_index", align 4
@sca3300_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 442, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"iio triggered buffer setup failed, error: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@sca3300_probe._entry_ptr.9 = internal global ptr @sca3300_probe._entry.7, section ".printk_index", align 4
@sca3300_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 449, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"iio device register failed, error: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sca3300_probe._entry_ptr.12 = internal global ptr @sca3300_probe._entry.10, section ".printk_index", align 4
@sca3300_accel_scale = internal constant { [4 x [2 x i32]], [32 x i8] } { [4 x [2 x i32]] [[2 x i32] [i32 0, i32 370], [2 x i32] [i32 0, i32 741], [2 x i32] [i32 0, i32 185], [2 x i32] [i32 0, i32 185]], [32 x i8] zeroinitializer }, align 32
@sca3300_lp_freq = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 70, i32 70, i32 70, i32 10], [16 x i8] zeroinitializer }, align 32
@sca3300_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 152, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"transfer error, error: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sca3300_transfer\00", [47 x i8] zeroinitializer }, align 32
@sca3300_transfer._entry_ptr = internal global ptr @sca3300_transfer._entry, section ".printk_index", align 4
@sca3300_transfer._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.4, i32 158, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CRC checksum mismatch\00", [42 x i8] zeroinitializer }, align 32
@sca3300_transfer._entry_ptr.17 = internal global ptr @sca3300_transfer._entry.15, section ".printk_index", align 4
@sca3300_error_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 187, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error reading device status: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sca3300_error_handler\00", [42 x i8] zeroinitializer }, align 32
@sca3300_error_handler._entry_ptr = internal global ptr @sca3300_error_handler._entry, section ".printk_index", align 4
@sca3300_error_handler._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 192, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"device status: 0x%lx\0A\00", [42 x i8] zeroinitializer }, align 32
@sca3300_error_handler._entry_ptr.22 = internal global ptr @sca3300_error_handler._entry.20, section ".printk_index", align 4
@sca3300_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 351, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"device id not expected value, %d != %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sca3300_init\00", [19 x i8] zeroinitializer }, align 32
@sca3300_init._entry_ptr = internal global ptr @sca3300_init._entry, section ".printk_index", align 4
@sca3300_trigger_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.sca3300_trigger_handler = private unnamed_addr constant [24 x i8] c"sca3300_trigger_handler\00", align 1
@sca3300_trigger_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @__func__.sca3300_trigger_handler, ptr @.str.4, i32 308, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to read register, error: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@sca3300_trigger_handler._entry_ptr = internal global ptr @sca3300_trigger_handler._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 10]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 185, i64 370, i64 741]
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"sca3300_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 461, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 463, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"sca3300_dt_ids\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 455, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 419, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"sca3300_crc_table\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 122, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"sca3300_info\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 401, i32 30 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"sca3300_channels\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 75, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"sca3300_scan_masks\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 97, i32 28 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 433, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 441, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 448, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [20 x i8] c"sca3300_accel_scale\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 95, i32 18 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"sca3300_lp_freq\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 94, i32 18 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 151, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 158, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 186, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 191, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 349, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [31 x i8] c"../drivers/iio/accel/sca3300.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 307, i32 4 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_sca3300_driver_exit, ptr @__initcall__kmod_sca3300__234_468_sca3300_driver_init6, ptr @sca3300_driver_exit, ptr @sca3300_error_handler._entry, ptr @sca3300_error_handler._entry.20, ptr @sca3300_error_handler._entry_ptr, ptr @sca3300_error_handler._entry_ptr.22, ptr @sca3300_init._entry, ptr @sca3300_init._entry_ptr, ptr @sca3300_probe._entry, ptr @sca3300_probe._entry.10, ptr @sca3300_probe._entry.7, ptr @sca3300_probe._entry_ptr, ptr @sca3300_probe._entry_ptr.12, ptr @sca3300_probe._entry_ptr.9, ptr @sca3300_transfer._entry, ptr @sca3300_transfer._entry.15, ptr @sca3300_transfer._entry_ptr, ptr @sca3300_transfer._entry_ptr.17, ptr @sca3300_trigger_handler._entry, ptr @sca3300_trigger_handler._entry_ptr, ptr @sca3300_driver, ptr @.str, ptr @sca3300_dt_ids, ptr @sca3300_probe.__key, ptr @.str.1, ptr @sca3300_crc_table, ptr @sca3300_info, ptr @sca3300_channels, ptr @sca3300_scan_masks, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @sca3300_accel_scale, ptr @sca3300_lp_freq, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @sca3300_trigger_handler._rs, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3300_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3300_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3300_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3300_crc_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3300_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3300_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3300_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3300_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3300_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3300_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3300_accel_scale to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3300_lp_freq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3300_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3300_transfer._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3300_error_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3300_error_handler._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3300_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3300_trigger_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3300_trigger_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sca3300_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @sca3300_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sca3300_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @sca3300_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca3300_probe(ptr noundef %spi) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #6
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
  %lock = getelementptr inbounds %struct.sca3300_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sca3300_probe.__key) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %1, align 128
  tail call void @crc8_populate_msb(ptr noundef nonnull @sca3300_crc_table, i8 noundef zeroext 29) #6
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sca3300_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str, ptr %name, align 8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sca3300_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5, ptr %num_channels, align 4
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sca3300_scan_masks, ptr %available_scan_masks, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #6
  %9 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %value.i, align 4
  %call.i = tail call fastcc i32 @sca3300_write_reg(ptr noundef %1, i8 noundef zeroext 13, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

if.end.i:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 16000, i32 noundef 50000, i32 noundef 2) #6
  %call1.i = call fastcc i32 @sca3300_read_reg(ptr noundef %1, i8 noundef zeroext 16, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.do.end8_crit_edge

if.end.i.do.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

if.end4.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 81, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 81
  br i1 %cmp.not.i, label %if.end10, label %do.end.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef %11, i32 noundef 81) #9
  br label %do.end8

do.end8:                                          ; preds = %do.end.i, %if.end.i.do.end8_crit_edge, %if.end.do.end8_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.end.i.do.end8_crit_edge ], [ %call.i, %if.end.do.end8_crit_edge ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end4.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  %call12 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @sca3300_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.8, i32 noundef %call12) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %call21 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end19.cleanup_crit_edge, label %do.end26

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.11, i32 noundef %call21) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.end19.cleanup_crit_edge, %do.end17, %do.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end8 ], [ %call12, %do.end17 ], [ -12, %entry.cleanup_crit_edge ], [ %call21, %do.end26 ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crc8_populate_msb(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca3300_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !86
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %masklength, align 8
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %6, i32 noundef %8, i32 noundef 0) #6
  %9 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %10)
  %cmp34 = icmp ult i32 %call2, %10
  br i1 %cmp34, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %scan = getelementptr inbounds %struct.sca3300_data, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end11.for.body_crit_edge ]
  %bit.035 = phi i32 [ %call2, %for.body.lr.ph ], [ %call16, %if.end11.for.body_crit_edge ]
  %address = getelementptr [5 x %struct.iio_chan_spec], ptr @sca3300_channels, i32 0, i32 %bit.035, i32 3
  %11 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %address, align 4
  %conv = trunc i32 %12 to i8
  %call4 = call fastcc i32 @sca3300_read_reg(ptr noundef %3, i8 noundef zeroext %conv, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end11, label %do.body

do.body:                                          ; preds = %for.body
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @sca3300_trigger_handler._rs, ptr noundef nonnull @__func__.sca3300_trigger_handler) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.26, i32 noundef %call4) #9
  br label %out

if.end11:                                         ; preds = %for.body
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %conv12 = trunc i32 %16 to i16
  %inc = add i32 %i.036, 1
  %arrayidx13 = getelementptr [4 x i16], ptr %scan, i32 0, i32 %i.036
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv12, ptr %arrayidx13, align 2
  %18 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %active_scan_mask, align 4
  %20 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %masklength, align 8
  %add = add nuw i32 %bit.035, 1
  %call16 = tail call i32 @_find_next_bit_be(ptr noundef %19, i32 noundef %21, i32 noundef %add) #6
  %22 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %call16, %23
  br i1 %cmp, label %if.end11.for.body_crit_edge, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %entry.for.end_crit_edge
  %scan17 = getelementptr inbounds %struct.sca3300_data, ptr %3, i32 0, i32 2
  %call18 = tail call i64 @iio_get_time_ns(ptr noundef %1) #6
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %scan_timestamp.i, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %27, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan17, i32 %sub.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call18, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan17) #6
  br label %out

out:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %do.end, %do.body.out_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %30) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca3300_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #6
  %2 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg_val, align 4, !annotation !86
  %3 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 10, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %address, align 4
  %conv = trunc i32 %5 to i8
  %call1 = tail call fastcc i32 @sca3300_read_reg(ptr noundef %1, i8 noundef zeroext %conv, ptr noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %.call1 = select i1 %tobool.not, i32 1, i32 %call1
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %call3 = call fastcc i32 @sca3300_read_reg(ptr noundef %1, i8 noundef zeroext 13, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val, align 4
  %7 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_val, align 4
  %arrayidx7 = getelementptr [4 x [2 x i32]], ptr @sca3300_accel_scale, i32 0, i32 %8, i32 1
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx7, align 4
  %11 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val2, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %call9 = call fastcc i32 @sca3300_read_reg(ptr noundef %1, i8 noundef zeroext 13, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_val, align 4
  %arrayidx13 = getelementptr [4 x i32], ptr @sca3300_lp_freq, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx13, align 4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %sw.bb8.cleanup_crit_edge, %if.end6, %sw.bb2.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end12 ], [ 2, %if.end6 ], [ %.call1, %sw.bb ], [ %call3, %sw.bb2.cleanup_crit_edge ], [ %call9, %sw.bb8.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sca3300_read_avail(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %mask, label %entry.return_crit_edge [
    i32 2, label %entry.return.sink.split_crit_edge
    i32 10, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %.sink6 = phi ptr [ getelementptr inbounds ([4 x i32], ptr @sca3300_lp_freq, i32 0, i32 2), %sw.bb1 ], [ @sca3300_accel_scale, %entry.return.sink.split_crit_edge ]
  %.sink5 = phi i32 [ 2, %sw.bb1 ], [ 6, %entry.return.sink.split_crit_edge ]
  %.sink = phi i32 [ 1, %sw.bb1 ], [ %mask, %entry.return.sink.split_crit_edge ]
  %1 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %.sink6, ptr %vals, align 4
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink5, ptr %length, align 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %type, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca3300_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #6
  %2 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg_val, align 4, !annotation !86
  %3 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 10, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  br i1 %tobool.not, label %for.body.preheader, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %sw.bb
  %4 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %val2, label %for.body.preheader.cleanup_crit_edge [
    i32 370, label %for.body.preheader.cleanup.sink.split_crit_edge
    i32 741, label %if.then3.fold.split
    i32 185, label %if.then3.fold.split38
  ]

for.body.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.fold.split:                              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then3.fold.split38:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry
  %call7 = call fastcc i32 @sca3300_read_reg(ptr noundef %1, i8 noundef zeroext 13, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %sw.bb6
  %5 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp11 = icmp eq i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %val)
  %cmp12 = icmp eq i32 %val, 10
  %or.cond = and i1 %cmp12, %cmp11
  br i1 %or.cond, label %if.end10.cleanup.sink.split_crit_edge, label %if.end15

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp16 = icmp eq i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %val)
  %cmp18 = icmp eq i32 %val, 70
  %or.cond34 = and i1 %cmp18, %cmp16
  br i1 %or.cond34, label %if.end15.cleanup.sink.split_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end15.cleanup.sink.split_crit_edge, %if.end10.cleanup.sink.split_crit_edge, %if.then3.fold.split38, %if.then3.fold.split, %for.body.preheader.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %for.body.preheader.cleanup.sink.split_crit_edge ], [ 1, %if.then3.fold.split ], [ 2, %if.then3.fold.split38 ], [ 3, %if.end10.cleanup.sink.split_crit_edge ], [ 2, %if.end15.cleanup.sink.split_crit_edge ]
  %call20 = tail call fastcc i32 @sca3300_write_reg(ptr noundef %1, i8 noundef zeroext 13, i32 noundef %.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end15.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ %call7, %sw.bb6.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ], [ %call20, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca3300_debugfs_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef writeonly %readval) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %reg)
  %cmp = icmp ugt i32 %reg, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %readval, null
  %conv = trunc i32 %reg to i8
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call fastcc i32 @sca3300_write_reg(ptr noundef %1, i8 noundef zeroext %conv, i32 noundef %writeval)
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call5 = call fastcc i32 @sca3300_read_reg(ptr noundef %1, i8 noundef zeroext %conv, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %readval, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end3.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call2, %if.then1 ], [ -22, %entry.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sca3300_read_reg(ptr noundef %sca_data, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sca3300_data, ptr %sca_data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %shl = shl i8 %reg, 2
  %txbuf = getelementptr inbounds %struct.sca3300_data, ptr %sca_data, i32 0, i32 4
  %0 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %shl, ptr %txbuf, align 128
  %call = tail call fastcc i32 @sca3300_transfer(ptr noundef %sca_data, ptr noundef %val)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call)
  %cmp.not = icmp eq i32 %call, -22
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val.i, align 4, !annotation !86
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %2 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 24, ptr %txbuf, align 128
  %call.i = call fastcc i32 @sca3300_transfer(ptr noundef %sca_data, ptr noundef nonnull %val.i) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, -22
  %3 = ptrtoint ptr %sca_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sca_data, align 128
  br i1 %cmp.not.i, label %do.end4.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.18, i32 noundef %call.i) #9
  br label %sca3300_error_handler.exit

do.end4.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %and.i = and i32 %6, 511
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.21, i32 noundef %and.i) #9
  br label %sca3300_error_handler.exit

sca3300_error_handler.exit:                       ; preds = %do.end4.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %do.end4.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

cleanup:                                          ; preds = %sca3300_error_handler.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %sca3300_error_handler.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sca3300_transfer(ptr noundef %sca_data, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfers = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfers) #6
  %0 = getelementptr inbounds i8, ptr %xfers, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 188)
  %txbuf = getelementptr inbounds %struct.sca3300_data, ptr %sca_data, i32 0, i32 4
  %2 = ptrtoint ptr %xfers to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %txbuf, ptr %xfers, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %len, align 4
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 7
  %4 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 64, ptr %cs_change, align 4
  %delay1 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 9
  %5 = ptrtoint ptr %delay1 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 655360, ptr %delay1, align 2
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 1
  %rxbuf = getelementptr inbounds %struct.sca3300_data, ptr %sca_data, i32 0, i32 5
  %6 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rxbuf, ptr %rx_buf, align 4
  %len4 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 2
  %7 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %len4, align 4
  %delay9 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 9
  %8 = ptrtoint ptr %delay9 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 655360, ptr %delay9, align 2
  %call = tail call zeroext i8 @crc8(ptr noundef nonnull @sca3300_crc_table, ptr noundef %txbuf, i32 noundef 3, i8 noundef zeroext -1) #6
  %neg = xor i8 %call, -1
  %arrayidx13 = getelementptr %struct.sca3300_data, ptr %sca_data, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %neg, ptr %arrayidx13, align 1
  %10 = ptrtoint ptr %sca_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sca_data, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #6
  %12 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 18
  %22 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.1.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.1.i.i, ptr noundef %23, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.1.i.i, label %if.end.i.i.i.1.i.i, label %spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge

spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sync_transfer.exit

if.end.i.i.i.1.i.i:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.1.i.i, ptr %prev.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i, ptr %transfer_list.i.1.i.i, align 4
  %prev3.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i.1.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.1.i.i, ptr %23, align 4
  br label %spi_sync_transfer.exit

spi_sync_transfer.exit:                           ; preds = %if.end.i.i.i.1.i.i, %spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %11, ptr noundef nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %spi_sync_transfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %sca_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sca_data, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.13, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %spi_sync_transfer.exit
  %call19 = call zeroext i8 @crc8(ptr noundef nonnull @sca3300_crc_table, ptr noundef %rxbuf, i32 noundef 3, i8 noundef zeroext -1) #6
  %neg21 = xor i8 %call19, -1
  %arrayidx24 = getelementptr %struct.sca3300_data, ptr %sca_data, i32 0, i32 5, i32 3
  %30 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx24, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %neg21)
  %cmp.not = icmp eq i8 %31, %neg21
  br i1 %cmp.not, label %if.end34, label %do.end31

do.end31:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %sca_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sca_data, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end34:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rxbuf, align 4
  %36 = and i8 %35, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp38 = icmp eq i8 %36, 3
  %spec.select = select i1 %cmp38, i32 -22, i32 0
  %arrayidx43 = getelementptr %struct.sca3300_data, ptr %sca_data, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %arrayidx43, align 1
  %shr.i = sext i16 %38 to i32
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shr.i, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end31, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end31 ], [ %spec.select, %if.end34 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfers) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sca3300_write_reg(ptr noundef %sca_data, i8 noundef zeroext %reg, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #6
  %lock = getelementptr inbounds %struct.sca3300_data, ptr %sca_data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %shl = shl i8 %reg, 2
  %or = or i8 %shl, -128
  %txbuf = getelementptr inbounds %struct.sca3300_data, ptr %sca_data, i32 0, i32 4
  %0 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %or, ptr %txbuf, align 128
  %conv2 = trunc i32 %val to i16
  %arrayidx4 = getelementptr %struct.sca3300_data, ptr %sca_data, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 %conv2, ptr %arrayidx4, align 1
  %call = call fastcc i32 @sca3300_transfer(ptr noundef %sca_data, ptr noundef nonnull %reg_val)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call)
  %cmp.not = icmp eq i32 %call, -22
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !86
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %3 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 24, ptr %txbuf, align 128
  %call.i = call fastcc i32 @sca3300_transfer(ptr noundef %sca_data, ptr noundef nonnull %val.i) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, -22
  %4 = ptrtoint ptr %sca_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sca_data, align 128
  br i1 %cmp.not.i, label %do.end4.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.18, i32 noundef %call.i) #9
  br label %sca3300_error_handler.exit

do.end4.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i, align 4
  %and.i = and i32 %7, 511
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.21, i32 noundef %and.i) #9
  br label %sca3300_error_handler.exit

sca3300_error_handler.exit:                       ; preds = %do.end4.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %do.end4.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

cleanup:                                          ; preds = %sca3300_error_handler.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %sca3300_error_handler.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !73, !74, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_sca3300__234_468_sca3300_driver_init6, !1, !"__initcall__kmod_sca3300__234_468_sca3300_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/accel/sca3300.c", i32 468, i32 1}
!2 = !{ptr @__exitcall_sca3300_driver_exit, !1, !"__exitcall_sca3300_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/iio/accel/sca3300.c", i32 470, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/iio/accel/sca3300.c", i32 471, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/iio/accel/sca3300.c", i32 472, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/accel/sca3300.c", i32 463, i32 12}
!12 = !{ptr @sca3300_driver, !13, !"sca3300_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/accel/sca3300.c", i32 461, i32 26}
!14 = !{ptr @sca3300_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/accel/sca3300.c", i32 419, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/accel/sca3300.c", i32 433, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sca3300_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @sca3300_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/accel/sca3300.c", i32 441, i32 3}
!27 = !{ptr @sca3300_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @sca3300_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/accel/sca3300.c", i32 448, i32 3}
!31 = !{ptr @sca3300_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sca3300_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @sca3300_crc_table, !34, !"sca3300_crc_table", i1 false, i1 false}
!34 = !{!"../drivers/iio/accel/sca3300.c", i32 122, i32 1}
!35 = !{ptr @sca3300_info, !36, !"sca3300_info", i1 false, i1 false}
!36 = !{!"../drivers/iio/accel/sca3300.c", i32 401, i32 30}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/accel/sca3300.c", i32 151, i32 3}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sca3300_transfer._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @sca3300_transfer._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/accel/sca3300.c", i32 158, i32 3}
!44 = !{ptr @sca3300_transfer._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @sca3300_transfer._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/accel/sca3300.c", i32 186, i32 3}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @sca3300_error_handler._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @sca3300_error_handler._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/accel/sca3300.c", i32 191, i32 2}
!53 = !{ptr @sca3300_error_handler._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sca3300_error_handler._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @sca3300_accel_scale, !56, !"sca3300_accel_scale", i1 false, i1 false}
!56 = !{!"../drivers/iio/accel/sca3300.c", i32 95, i32 18}
!57 = !{ptr @sca3300_lp_freq, !58, !"sca3300_lp_freq", i1 false, i1 false}
!58 = !{!"../drivers/iio/accel/sca3300.c", i32 94, i32 18}
!59 = !{ptr @sca3300_channels, !60, !"sca3300_channels", i1 false, i1 false}
!60 = !{!"../drivers/iio/accel/sca3300.c", i32 75, i32 35}
!61 = !{ptr @sca3300_scan_masks, !62, !"sca3300_scan_masks", i1 false, i1 false}
!62 = !{!"../drivers/iio/accel/sca3300.c", i32 97, i32 28}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/accel/sca3300.c", i32 349, i32 3}
!65 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sca3300_init._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @sca3300_init._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/accel/sca3300.c", i32 307, i32 4}
!70 = !{ptr @sca3300_trigger_handler._rs, !69, !"_rs", i1 false, i1 false}
!71 = !{ptr @__func__.sca3300_trigger_handler, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @sca3300_trigger_handler._entry, !69, !"_entry", i1 false, i1 false}
!74 = !{ptr @sca3300_trigger_handler._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @sca3300_dt_ids, !76, !"sca3300_dt_ids", i1 false, i1 false}
!76 = !{!"../drivers/iio/accel/sca3300.c", i32 455, i32 34}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
!87 = !{i8 0, i8 2}
