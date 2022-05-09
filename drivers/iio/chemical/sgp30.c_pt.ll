; ModuleID = '/llk/IR_all_yes/drivers/iio/chemical/sgp30.c_pt.bc'
source_filename = "../drivers/iio/chemical/sgp30.c"
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
%struct.sgp_device = type { ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sgp_version = type { i8, i8 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.sgp_data = type { ptr, ptr, %struct.mutex, i32, i32, i16, i16, i32, i32, i32, i32, %union.sgp_reading, %union.sgp_reading, i32 }
%union.sgp_reading = type { [4 x %struct.sgp_crc_word] }
%struct.sgp_crc_word = type <{ i16, i8 }>

@__initcall__kmod_sgp30__288_584_sgp_driver_init6 = internal global ptr @sgp_driver_init, section ".initcall6.init", align 4
@sgp_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sgp_probe, ptr @sgp_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sgp_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sgp_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sgp_driver_exit = internal global ptr @sgp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [63 x i8] c"sgp30.author=Andreas Brauchli <andreas.brauchli@sensirion.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [55 x i8] c"sgp30.author=Pascal Sachs <pascal.sachs@sensirion.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [44 x i8] c"sgp30.description=Sensirion SGP gas sensors\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [38 x i8] c"sgp30.file=drivers/iio/chemical/sgp30\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [21 x i8] c"sgp30.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgp30\00", [26 x i8] zeroinitializer }, align 32
@sgp_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sensirion,sgp30\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sensirion,sgpc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sgp_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sgp30\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"sgpc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sgp_crc8_table = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@sgp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&data->data_lock\00", [47 x i8] zeroinitializer }, align 32
@sgp_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @sgp_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sgp_devices = internal constant { [2 x %struct.sgp_device], [16 x i8] } { [2 x %struct.sgp_device] [%struct.sgp_device { ptr @sgp30_channels, i32 4 }, %struct.sgp_device { ptr @sgpc3_channels, i32 2 }], [16 x i8] zeroinitializer }, align 32
@sgp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 545, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sgp_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/chemical/sgp30.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sgp_probe._entry_ptr = internal global ptr @sgp_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-iaq\00", [25 x i8] zeroinitializer }, align 32
@sgp_verify_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 215, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CRC error\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sgp_verify_buffer\00", [46 x i8] zeroinitializer }, align 32
@sgp_verify_buffer._entry_ptr = internal global ptr @sgp_verify_buffer._entry, section ".printk_index", align 4
@sgp_check_compat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 422, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"incompatible product generation %d != 0\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sgp_check_compat\00", [47 x i8] zeroinitializer }, align 32
@sgp_check_compat._entry_ptr = internal global ptr @sgp_check_compat._entry, section ".printk_index", align 4
@sgp_check_compat._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 429, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sensor reports a different product: 0x%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@sgp_check_compat._entry_ptr.14 = internal global ptr @sgp_check_compat._entry.12, section ".printk_index", align 4
@sgp_check_compat._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.4, i32 434, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reserved bit is set\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sgp_check_compat._entry_ptr.18 = internal global ptr @sgp_check_compat._entry.15, section ".printk_index", align 4
@supported_versions_sgp30 = internal constant { [1 x %struct.sgp_version], [30 x i8] } { [1 x %struct.sgp_version] [%struct.sgp_version { i8 1, i8 0 }], [30 x i8] zeroinitializer }, align 32
@supported_versions_sgpc3 = internal constant { [1 x %struct.sgp_version], [30 x i8] } { [1 x %struct.sgp_version] [%struct.sgp_version { i8 0, i8 4 }], [30 x i8] zeroinitializer }, align 32
@sgp_check_compat._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.11, ptr @.str.4, i32 460, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported sgp version: %d.%d\0A\00", [32 x i8] zeroinitializer }, align 32
@sgp_check_compat._entry_ptr.21 = internal global ptr @sgp_check_compat._entry.19, section ".printk_index", align 4
@sgp30_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 24, i32 0, i32 35, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 24, i32 0, i32 34, i32 1, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 24, i32 0, i32 42, i32 2, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 24, i32 0, i32 43, i32 3, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }], [64 x i8] zeroinitializer }, align 32
@sgpc3_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 24, i32 0, i32 35, i32 10, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 24, i32 0, i32 42, i32 11, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }], [48 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sgp_iaq_threadfn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 323, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IAQ measurement error [%d]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sgp_iaq_threadfn\00", [47 x i8] zeroinitializer }, align 32
@sgp_iaq_threadfn._entry_ptr = internal global ptr @sgp_iaq_threadfn._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 10]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 11]
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"sgp_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 575, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 577, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [11 x i8] c"sgp_dt_ids\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 493, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"sgp_id\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 566, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"sgp_crc8_table\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 48, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 521, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [9 x i8] c"sgp_info\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 489, i32 30 }
@___asan_gen_.52 = private unnamed_addr constant [12 x i8] c"sgp_devices\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 183, i32 32 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 545, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 549, i32 21 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 215, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 421, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 428, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 434, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [25 x i8] c"supported_versions_sgp30\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 121, i32 33 }
@___asan_gen_.112 = private unnamed_addr constant [25 x i8] c"supported_versions_sgpc3\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 128, i32 33 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 460, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [15 x i8] c"sgp30_channels\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 135, i32 35 }
@___asan_gen_.124 = private unnamed_addr constant [15 x i8] c"sgpc3_channels\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 166, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [32 x i8] c"../drivers/iio/chemical/sgp30.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 322, i32 4 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_sgp_driver_exit, ptr @__initcall__kmod_sgp30__288_584_sgp_driver_init6, ptr @sgp_check_compat._entry, ptr @sgp_check_compat._entry.12, ptr @sgp_check_compat._entry.15, ptr @sgp_check_compat._entry.19, ptr @sgp_check_compat._entry_ptr, ptr @sgp_check_compat._entry_ptr.14, ptr @sgp_check_compat._entry_ptr.18, ptr @sgp_check_compat._entry_ptr.21, ptr @sgp_driver_exit, ptr @sgp_iaq_threadfn._entry, ptr @sgp_iaq_threadfn._entry_ptr, ptr @sgp_probe._entry, ptr @sgp_probe._entry_ptr, ptr @sgp_verify_buffer._entry, ptr @sgp_verify_buffer._entry_ptr, ptr @sgp_driver, ptr @.str, ptr @sgp_dt_ids, ptr @sgp_id, ptr @sgp_crc8_table, ptr @sgp_probe.__key, ptr @.str.1, ptr @sgp_info, ptr @sgp_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @supported_versions_sgp30, ptr @supported_versions_sgpc3, ptr @.str.20, ptr @sgp30_channels, ptr @sgpc3_channels, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp_crc8_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp_devices to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp_verify_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp_check_compat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp_check_compat._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp_check_compat._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_versions_sgp30 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_versions_sgpc3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp_check_compat._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp30_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgpc3_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp_iaq_threadfn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sgp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sgp_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sgp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @sgp_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgp_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 156) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @dev_fwnode(ptr noundef %dev1) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call ptr @device_get_match_data(ptr noundef %dev1) #5
  %0 = ptrtoint ptr %call5 to i32
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %product_id.0 = phi i32 [ %0, %if.then4 ], [ %2, %if.else ]
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %4, align 4
  tail call void @crc8_populate_msb(ptr noundef nonnull @sgp_crc8_table, i8 noundef zeroext 49) #5
  %data_lock = getelementptr inbounds %struct.sgp_data, ptr %4, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %data_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sgp_probe.__key) #5
  %buffer = getelementptr inbounds %struct.sgp_data, ptr %4, i32 0, i32 11
  %call9 = tail call fastcc i32 @sgp_read_cmd(ptr noundef %4, i32 noundef 8239, ptr noundef %buffer, i32 noundef 1, i32 noundef 12000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %buffer, align 4
  %feature_set = getelementptr inbounds %struct.sgp_data, ptr %4, i32 0, i32 6
  %9 = ptrtoint ptr %feature_set to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %feature_set, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %4, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %and.i = lshr i16 %8, 9
  %12 = and i16 %and.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.not.i = icmp eq i16 %12, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %conv3.i = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.10, i32 noundef %conv3.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end11
  %13 = lshr i16 %8, 12
  %conv11.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %product_id.0, i32 %conv11.i)
  %cmp12.not.i = icmp eq i32 %product_id.0, %conv11.i
  br i1 %cmp12.not.i, label %if.end19.i, label %do.end17.i

do.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.13, i32 noundef %conv11.i) #8
  br label %cleanup

if.end19.i:                                       ; preds = %if.end.i
  %14 = and i16 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i, label %if.end19.i.if.end28.i_crit_edge, label %do.end27.i

if.end19.i.if.end28.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

do.end27.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.16) #8
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end27.i, %if.end19.i.if.end28.i_crit_edge
  %15 = ptrtoint ptr %feature_set to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %feature_set, align 2
  %17 = and i16 %16, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool33.not.i = icmp eq i16 %17, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end28.i.cleanup_crit_edge

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end35.i:                                       ; preds = %if.end28.i
  %18 = zext i32 %product_id.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %product_id.0, label %if.end35.i.cleanup_crit_edge [
    i32 0, label %if.end35.i.sw.epilog.i_crit_edge
    i32 1, label %sw.bb37.i
  ]

if.end35.i.sw.epilog.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end35.i.cleanup_crit_edge:                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb37.i:                                        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb37.i, %if.end35.i.sw.epilog.i_crit_edge
  %supported_versions.0.i = phi ptr [ @supported_versions_sgpc3, %sw.bb37.i ], [ @supported_versions_sgp30, %if.end35.i.sw.epilog.i_crit_edge ]
  %and40.i = lshr i16 %16, 5
  %19 = and i16 %and40.i, 7
  %20 = and i16 %16, 31
  %21 = ptrtoint ptr %supported_versions.0.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %supported_versions.0.i, align 1
  %23 = zext i8 %22 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %23)
  %cmp54.i = icmp eq i16 %19, %23
  br i1 %cmp54.i, label %land.lhs.true.i, label %sw.epilog.i.do.end67.i_crit_edge

sw.epilog.i.do.end67.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %minor59.i = getelementptr inbounds %struct.sgp_version, ptr %supported_versions.0.i, i32 0, i32 1
  %24 = ptrtoint ptr %minor59.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %minor59.i, align 1
  %26 = zext i8 %25 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %26)
  %cmp61.not.i = icmp ult i16 %20, %26
  br i1 %cmp61.not.i, label %land.lhs.true.i.do.end67.i_crit_edge, label %if.end16

land.lhs.true.i.do.end67.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67.i

do.end67.i:                                       ; preds = %land.lhs.true.i.do.end67.i_crit_edge, %sw.epilog.i.do.end67.i_crit_edge
  %conv68.i = zext i16 %19 to i32
  %conv69.i = zext i16 %20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.20, i32 noundef %conv68.i, i32 noundef %conv69.i) #8
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.i
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %27 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @sgp_info, ptr %info, align 8
  %name17 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %28 = ptrtoint ptr %name17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %id, ptr %name17, align 8
  %29 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %call, align 8
  %arrayidx18 = getelementptr [2 x %struct.sgp_device], ptr @sgp_devices, i32 0, i32 %product_id.0
  %30 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx18, align 4
  %channels19 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %32 = ptrtoint ptr %channels19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %channels19, align 8
  %num_channels = getelementptr [2 x %struct.sgp_device], ptr @sgp_devices, i32 0, i32 %product_id.0, i32 1
  %33 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_channels, align 4
  %num_channels21 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %35 = ptrtoint ptr %num_channels21 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %num_channels21, align 4
  %iaq_init_cmd.i = getelementptr inbounds %struct.sgp_data, ptr %4, i32 0, i32 8
  %36 = ptrtoint ptr %iaq_init_cmd.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8195, ptr %iaq_init_cmd.i, align 4
  %iaq_init_start_jiffies.i = getelementptr inbounds %struct.sgp_data, ptr %4, i32 0, i32 3
  %37 = ptrtoint ptr %iaq_init_start_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %iaq_init_start_jiffies.i, align 4
  %iaq_buffer_state.i = getelementptr inbounds %struct.sgp_data, ptr %4, i32 0, i32 13
  %38 = ptrtoint ptr %iaq_buffer_state.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %iaq_buffer_state.i, align 4
  %39 = ptrtoint ptr %feature_set to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %feature_set, align 2
  %41 = lshr i16 %40, 12
  %42 = zext i16 %41 to i32
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %42, label %if.end16.sgp_init.exit_crit_edge [
    i32 0, label %if.end16.sw.epilog.sink.split.i_crit_edge
    i32 1, label %sw.bb1.i
  ]

if.end16.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.i

if.end16.sgp_init.exit_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %sgp_init.exit

sw.bb1.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %if.end16.sw.epilog.sink.split.i_crit_edge
  %.sink25.i = phi i32 [ 200, %sw.bb1.i ], [ 100, %if.end16.sw.epilog.sink.split.i_crit_edge ]
  %.sink24.i = phi i32 [ 8262, %sw.bb1.i ], [ 8200, %if.end16.sw.epilog.sink.split.i_crit_edge ]
  %.sink23.i = phi i32 [ 8262, %sw.bb1.i ], [ 8272, %if.end16.sw.epilog.sink.split.i_crit_edge ]
  %.sink22.i = phi i16 [ 1, %sw.bb1.i ], [ 0, %if.end16.sw.epilog.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 8600, %sw.bb1.i ], [ 1500, %if.end16.sw.epilog.sink.split.i_crit_edge ]
  %measure_interval_jiffies2.i = getelementptr inbounds %struct.sgp_data, ptr %4, i32 0, i32 7
  %44 = ptrtoint ptr %measure_interval_jiffies2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink25.i, ptr %measure_interval_jiffies2.i, align 4
  %measure_iaq_cmd3.i = getelementptr inbounds %struct.sgp_data, ptr %4, i32 0, i32 9
  %45 = ptrtoint ptr %measure_iaq_cmd3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink24.i, ptr %measure_iaq_cmd3.i, align 4
  %measure_gas_signals_cmd4.i = getelementptr inbounds %struct.sgp_data, ptr %4, i32 0, i32 10
  %46 = ptrtoint ptr %measure_gas_signals_cmd4.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink23.i, ptr %measure_gas_signals_cmd4.i, align 4
  %product_id5.i = getelementptr inbounds %struct.sgp_data, ptr %4, i32 0, i32 5
  %47 = ptrtoint ptr %product_id5.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %.sink22.i, ptr %product_id5.i, align 4
  %iaq_defval_skip_jiffies7.i = getelementptr inbounds %struct.sgp_data, ptr %4, i32 0, i32 4
  %48 = ptrtoint ptr %iaq_defval_skip_jiffies7.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink.i, ptr %iaq_defval_skip_jiffies7.i, align 4
  br label %sgp_init.exit

sgp_init.exit:                                    ; preds = %sw.epilog.sink.split.i, %if.end16.sgp_init.exit_crit_edge
  %call22 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end28, label %do.end27

do.end27:                                         ; preds = %sgp_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end28:                                         ; preds = %sgp_init.exit
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %4, align 4
  %name30 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 2
  %call32 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @sgp_iaq_threadfn, ptr noundef %4, i32 noundef -1, ptr noundef nonnull @.str.7, ptr noundef %name30) #5
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end28.if.end36_crit_edge, label %if.then34

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %call35 = tail call i32 @wake_up_process(ptr noundef %call32) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end28.if.end36_crit_edge
  %iaq_thread = getelementptr inbounds %struct.sgp_data, ptr %4, i32 0, i32 1
  %51 = ptrtoint ptr %iaq_thread to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call32, ptr %iaq_thread, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end27, %do.end67.i, %if.end35.i.cleanup_crit_edge, %if.end28.i.cleanup_crit_edge, %do.end17.i, %do.end.i, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %do.end27 ], [ 0, %if.end36 ], [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.end6.cleanup_crit_edge ], [ -19, %do.end.i ], [ -19, %do.end17.i ], [ -19, %do.end67.i ], [ -19, %if.end28.i.cleanup_crit_edge ], [ -19, %if.end35.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgp_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %iaq_thread = getelementptr inbounds %struct.sgp_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %iaq_thread to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iaq_thread, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @kthread_stop(ptr noundef nonnull %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crc8_populate_msb(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sgp_read_cmd(ptr nocapture noundef readonly %data, i32 noundef %cmd, ptr noundef %buf, i32 noundef %word_count, i32 noundef %duration_us) unnamed_addr #2 align 64 {
entry:
  %cmd.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cmd, ptr %cmd.addr, align 4
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %mul = mul i32 %word_count, 3
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef nonnull %cmd.addr, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %duration_us, 1000
  call void @usleep_range_state(i32 noundef %duration_us, i32 noundef %add, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %word_count)
  %cmp2 = icmp eq i32 %word_count, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i26 = call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef %buf, i32 noundef %mul, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp6 = icmp slt i32 %call.i26, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i26, i32 %mul)
  %cmp9.not = icmp eq i32 %call.i26, %mul
  br i1 %cmp9.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp13.not.i = icmp eq i32 %mul, 0
  br i1 %cmp13.not.i, label %if.end11.cleanup_crit_edge, label %if.end11.for.body.i_crit_edge

if.end11.for.body.i_crit_edge:                    ; preds = %if.end11
  br label %for.body.i

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i
  %add5.i = add i32 %i.014.i, 3
  %cmp.i = icmp ult i32 %add5.i, %mul
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end11.for.body.i_crit_edge
  %i.014.i = phi i32 [ %add5.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end11.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %i.014.i
  %call.i27 = call zeroext i8 @crc8(ptr noundef nonnull @sgp_crc8_table, ptr noundef %arrayidx.i, i32 noundef 2, i8 noundef zeroext -1) #5
  %add.i = add i32 %i.014.i, 2
  %arrayidx1.i = getelementptr i8, ptr %buf, i32 %add.i
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call.i27, i8 %4)
  %cmp3.not.i = icmp eq i8 %call.i27, %4
  br i1 %cmp3.not.i, label %for.cond.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %for.cond.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i26, %if.end4.cleanup_crit_edge ], [ -5, %if.end8.cleanup_crit_edge ], [ -5, %do.end.i ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgp_iaq_threadfn(ptr noundef %p) #2 align 64 {
entry:
  %cmd.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call34 = call zeroext i1 @kthread_should_stop() #5
  br i1 %call34, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %data_lock = getelementptr inbounds %struct.sgp_data, ptr %p, i32 0, i32 2
  %iaq_init_start_jiffies = getelementptr inbounds %struct.sgp_data, ptr %p, i32 0, i32 3
  %iaq_init_cmd = getelementptr inbounds %struct.sgp_data, ptr %p, i32 0, i32 8
  %iaq_defval_skip_jiffies.i = getelementptr inbounds %struct.sgp_data, ptr %p, i32 0, i32 4
  %measure_iaq_cmd.i = getelementptr inbounds %struct.sgp_data, ptr %p, i32 0, i32 9
  %iaq_buffer.i = getelementptr inbounds %struct.sgp_data, ptr %p, i32 0, i32 12
  %iaq_buffer_state.i = getelementptr inbounds %struct.sgp_data, ptr %p, i32 0, i32 13
  %measure_interval_jiffies = getelementptr inbounds %struct.sgp_data, ptr %p, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %sgp_iaq_thread_sleep_until.exit.while.body_crit_edge, %while.body.lr.ph
  call void @mutex_lock_nested(ptr noundef %data_lock, i32 noundef 0) #5
  %0 = ptrtoint ptr %iaq_init_start_jiffies to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iaq_init_start_jiffies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %while.body.if.end5_crit_edge

while.body.if.end5_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %while.body
  %2 = ptrtoint ptr %iaq_init_cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iaq_init_cmd, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.addr.i)
  %4 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %cmd.addr.i, align 4
  %5 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %cmd.addr.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i, label %if.end, label %sgp_read_cmd.exit.thread

sgp_read_cmd.exit.thread:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.addr.i)
  br label %unlock_sleep_continue

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @usleep_range_state(i32 noundef 12000, i32 noundef 13000, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.addr.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %8 = ptrtoint ptr %iaq_init_start_jiffies to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %iaq_init_start_jiffies, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %while.body.if.end5_crit_edge
  %9 = ptrtoint ptr %iaq_init_start_jiffies to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iaq_init_start_jiffies, align 4
  %11 = ptrtoint ptr %iaq_defval_skip_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iaq_defval_skip_jiffies.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %14 = ptrtoint ptr %measure_iaq_cmd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %measure_iaq_cmd.i, align 4
  %call.i = call fastcc i32 @sgp_read_cmd(ptr noundef %p, i32 noundef %15, ptr noundef %iaq_buffer.i, i32 noundef 2, i32 noundef 50000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %sgp_measure_iaq.exit, label %if.end.i23

if.end.i23:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %add.i = add i32 %12, %10
  %sub.i = sub i32 %add.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  %spec.store.select.i = select i1 %cmp.i, i32 1, i32 2
  %16 = ptrtoint ptr %iaq_buffer_state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.store.select.i, ptr %iaq_buffer_state.i, align 4
  br label %unlock_sleep_continue

sgp_measure_iaq.exit:                             ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call.i)
  %cond = icmp eq i32 %call.i, -16
  br i1 %cond, label %sgp_measure_iaq.exit.unlock_sleep_continue_crit_edge, label %do.end

sgp_measure_iaq.exit.unlock_sleep_continue_crit_edge: ; preds = %sgp_measure_iaq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock_sleep_continue

do.end:                                           ; preds = %sgp_measure_iaq.exit
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call.i) #8
  br label %unlock_sleep_continue

unlock_sleep_continue:                            ; preds = %do.end, %sgp_measure_iaq.exit.unlock_sleep_continue_crit_edge, %if.end.i23, %sgp_read_cmd.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %20 = ptrtoint ptr %measure_interval_jiffies to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %measure_interval_jiffies, align 4
  %add = add i32 %21, %19
  call void @mutex_unlock(ptr noundef %data_lock) #5
  br label %while.cond.i

while.cond.i:                                     ; preds = %lor.lhs.false.i.while.cond.i_crit_edge, %unlock_sleep_continue
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub.i26 = sub i32 %add, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i26)
  %cmp.i27 = icmp sgt i32 %sub.i26, -1
  br i1 %cmp.i27, label %while.body.i, label %while.cond.i.sgp_iaq_thread_sleep_until.exit_crit_edge

while.cond.i.sgp_iaq_thread_sleep_until.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sgp_iaq_thread_sleep_until.exit

while.body.i:                                     ; preds = %while.cond.i
  call void @usleep_range_state(i32 noundef 50000, i32 noundef 60000, i32 noundef 2) #5
  %call.i28 = call zeroext i1 @kthread_should_stop() #5
  br i1 %call.i28, label %while.body.i.sgp_iaq_thread_sleep_until.exit_crit_edge, label %lor.lhs.false.i

while.body.i.sgp_iaq_thread_sleep_until.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sgp_iaq_thread_sleep_until.exit

lor.lhs.false.i:                                  ; preds = %while.body.i
  %23 = ptrtoint ptr %iaq_init_start_jiffies to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iaq_init_start_jiffies, align 4
  %cmp1.i29 = icmp eq i32 %24, 0
  br i1 %cmp1.i29, label %lor.lhs.false.i.sgp_iaq_thread_sleep_until.exit_crit_edge, label %lor.lhs.false.i.while.cond.i_crit_edge

lor.lhs.false.i.while.cond.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

lor.lhs.false.i.sgp_iaq_thread_sleep_until.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sgp_iaq_thread_sleep_until.exit

sgp_iaq_thread_sleep_until.exit:                  ; preds = %lor.lhs.false.i.sgp_iaq_thread_sleep_until.exit_crit_edge, %while.body.i.sgp_iaq_thread_sleep_until.exit_crit_edge, %while.cond.i.sgp_iaq_thread_sleep_until.exit_crit_edge
  %call = call zeroext i1 @kthread_should_stop() #5
  br i1 %call, label %sgp_iaq_thread_sleep_until.exit.while.end_crit_edge, label %sgp_iaq_thread_sleep_until.exit.while.body_crit_edge

sgp_iaq_thread_sleep_until.exit.while.body_crit_edge: ; preds = %sgp_iaq_thread_sleep_until.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

sgp_iaq_thread_sleep_until.exit.while.end_crit_edge: ; preds = %sgp_iaq_thread_sleep_until.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %sgp_iaq_thread_sleep_until.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgp_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %data_lock = getelementptr inbounds %struct.sgp_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_lock, i32 noundef 0) #5
  %iaq_buffer_state = getelementptr inbounds %struct.sgp_data, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %iaq_buffer_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iaq_buffer_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not = icmp eq i32 %4, 2
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %sw.bb
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %address, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %6, label %if.end.cleanup.sink.split_crit_edge [
    i32 0, label %if.end.sw.bb2_crit_edge
    i32 10, label %if.end.sw.bb2_crit_edge78
    i32 1, label %sw.bb3
  ]

if.end.sw.bb2_crit_edge78:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge78
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %val, align 4
  %arrayidx = getelementptr %struct.sgp_data, ptr %1, i32 0, i32 12, i32 0, i32 1
  br label %cleanup.sink.split.sink.split

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %iaq_buffer = getelementptr inbounds %struct.sgp_data, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %val, align 4
  br label %cleanup.sink.split.sink.split

sw.bb8:                                           ; preds = %entry
  %data_lock9 = getelementptr inbounds %struct.sgp_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_lock9, i32 noundef 0) #5
  %address10 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %10 = ptrtoint ptr %address10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %address10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %11)
  %cmp11 = icmp eq i32 %11, 11
  br i1 %cmp11, label %if.then13, label %if.end25

if.then13:                                        ; preds = %sw.bb8
  %iaq_buffer_state14 = getelementptr inbounds %struct.sgp_data, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %iaq_buffer_state14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iaq_buffer_state14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp15 = icmp eq i32 %13, 0
  %iaq_buffer19 = getelementptr inbounds %struct.sgp_data, ptr %1, i32 0, i32 12
  br i1 %cmp15, label %if.then13.cleanup.sink.split_crit_edge, label %if.then13.if.end28_crit_edge

if.then13.if.end28_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then13.cleanup.sink.split_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end25:                                         ; preds = %sw.bb8
  %measure_gas_signals_cmd = getelementptr inbounds %struct.sgp_data, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %measure_gas_signals_cmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %measure_gas_signals_cmd, align 4
  %buffer = getelementptr inbounds %struct.sgp_data, ptr %1, i32 0, i32 11
  %call22 = tail call fastcc i32 @sgp_read_cmd(ptr noundef %1, i32 noundef %15, ptr noundef %buffer, i32 noundef 2, i32 noundef 50000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %if.end25.if.end28_crit_edge, label %if.end25.cleanup.sink.split_crit_edge

if.end25.cleanup.sink.split_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.end28:                                         ; preds = %if.end25.if.end28_crit_edge, %if.then13.if.end28_crit_edge
  %words.072 = phi ptr [ %buffer, %if.end25.if.end28_crit_edge ], [ %iaq_buffer19, %if.then13.if.end28_crit_edge ]
  %16 = ptrtoint ptr %address10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %address10, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %17, label %if.end28.cleanup.sink.split_crit_edge [
    i32 2, label %sw.bb30
    i32 11, label %if.end28.cleanup.sink.split.sink.split_crit_edge
    i32 3, label %if.end28.cleanup.sink.split.sink.split_crit_edge79
  ]

if.end28.cleanup.sink.split.sink.split_crit_edge79: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split

if.end28.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split

if.end28.cleanup.sink.split_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb30:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx31 = getelementptr %struct.sgp_crc_word, ptr %words.072, i32 1
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %sw.bb30, %if.end28.cleanup.sink.split.sink.split_crit_edge, %if.end28.cleanup.sink.split.sink.split_crit_edge79, %sw.bb3, %sw.bb2
  %words.072.sink.sink = phi ptr [ %iaq_buffer, %sw.bb3 ], [ %arrayidx, %sw.bb2 ], [ %arrayidx31, %sw.bb30 ], [ %words.072, %if.end28.cleanup.sink.split.sink.split_crit_edge ], [ %words.072, %if.end28.cleanup.sink.split.sink.split_crit_edge79 ]
  %val.sink = phi ptr [ %val2, %sw.bb3 ], [ %val2, %sw.bb2 ], [ %val, %sw.bb30 ], [ %val, %if.end28.cleanup.sink.split.sink.split_crit_edge ], [ %val, %if.end28.cleanup.sink.split.sink.split_crit_edge79 ]
  %data_lock.sink.ph = phi ptr [ %data_lock, %sw.bb3 ], [ %data_lock, %sw.bb2 ], [ %data_lock9, %sw.bb30 ], [ %data_lock9, %if.end28.cleanup.sink.split.sink.split_crit_edge ], [ %data_lock9, %if.end28.cleanup.sink.split.sink.split_crit_edge79 ]
  %retval.0.ph.ph = phi i32 [ 2, %sw.bb3 ], [ 3, %sw.bb2 ], [ 1, %sw.bb30 ], [ 1, %if.end28.cleanup.sink.split.sink.split_crit_edge ], [ 1, %if.end28.cleanup.sink.split.sink.split_crit_edge79 ]
  %19 = ptrtoint ptr %words.072.sink.sink to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %words.072.sink.sink, align 1
  %conv37 = zext i16 %20 to i32
  %21 = ptrtoint ptr %val.sink to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv37, ptr %val.sink, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end28.cleanup.sink.split_crit_edge, %if.end25.cleanup.sink.split_crit_edge, %if.then13.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge
  %data_lock.sink = phi ptr [ %data_lock, %sw.bb.cleanup.sink.split_crit_edge ], [ %data_lock, %if.end.cleanup.sink.split_crit_edge ], [ %data_lock9, %if.then13.cleanup.sink.split_crit_edge ], [ %data_lock9, %if.end25.cleanup.sink.split_crit_edge ], [ %data_lock9, %if.end28.cleanup.sink.split_crit_edge ], [ %data_lock.sink.ph, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ -16, %sw.bb.cleanup.sink.split_crit_edge ], [ -22, %if.end.cleanup.sink.split_crit_edge ], [ -16, %if.then13.cleanup.sink.split_crit_edge ], [ %call22, %if.end25.cleanup.sink.split_crit_edge ], [ -22, %if.end28.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @mutex_unlock(ptr noundef %data_lock.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_sgp30__288_584_sgp_driver_init6, !1, !"__initcall__kmod_sgp30__288_584_sgp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/chemical/sgp30.c", i32 584, i32 1}
!2 = !{ptr @__exitcall_sgp_driver_exit, !1, !"__exitcall_sgp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/chemical/sgp30.c", i32 586, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/iio/chemical/sgp30.c", i32 587, i32 1}
!7 = !{ptr @__UNIQUE_ID_description291, !8, !"__UNIQUE_ID_description291", i1 false, i1 false}
!8 = !{!"../drivers/iio/chemical/sgp30.c", i32 588, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/iio/chemical/sgp30.c", i32 589, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/chemical/sgp30.c", i32 577, i32 11}
!14 = !{ptr @sgp_driver, !15, !"sgp_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/chemical/sgp30.c", i32 575, i32 26}
!16 = !{ptr @sgp_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/chemical/sgp30.c", i32 521, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/chemical/sgp30.c", i32 545, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sgp_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @sgp_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/chemical/sgp30.c", i32 549, i32 21}
!29 = !{ptr @sgp_crc8_table, !30, !"sgp_crc8_table", i1 false, i1 false}
!30 = !{!"../drivers/iio/chemical/sgp30.c", i32 48, i32 1}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/chemical/sgp30.c", i32 215, i32 4}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sgp_verify_buffer._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @sgp_verify_buffer._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/chemical/sgp30.c", i32 421, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sgp_check_compat._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @sgp_check_compat._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/chemical/sgp30.c", i32 428, i32 3}
!43 = !{ptr @sgp_check_compat._entry.12, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @sgp_check_compat._entry_ptr.14, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/chemical/sgp30.c", i32 434, i32 3}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @sgp_check_compat._entry.15, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @sgp_check_compat._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/chemical/sgp30.c", i32 460, i32 2}
!52 = !{ptr @sgp_check_compat._entry.19, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @sgp_check_compat._entry_ptr.21, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @supported_versions_sgp30, !55, !"supported_versions_sgp30", i1 false, i1 false}
!55 = !{!"../drivers/iio/chemical/sgp30.c", i32 121, i32 33}
!56 = !{ptr @supported_versions_sgpc3, !57, !"supported_versions_sgpc3", i1 false, i1 false}
!57 = !{!"../drivers/iio/chemical/sgp30.c", i32 128, i32 33}
!58 = !{ptr @sgp_info, !59, !"sgp_info", i1 false, i1 false}
!59 = !{!"../drivers/iio/chemical/sgp30.c", i32 489, i32 30}
!60 = !{ptr @sgp_devices, !61, !"sgp_devices", i1 false, i1 false}
!61 = !{!"../drivers/iio/chemical/sgp30.c", i32 183, i32 32}
!62 = !{ptr @sgp30_channels, !63, !"sgp30_channels", i1 false, i1 false}
!63 = !{!"../drivers/iio/chemical/sgp30.c", i32 135, i32 35}
!64 = !{ptr @sgpc3_channels, !65, !"sgpc3_channels", i1 false, i1 false}
!65 = !{!"../drivers/iio/chemical/sgp30.c", i32 166, i32 35}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/chemical/sgp30.c", i32 322, i32 4}
!68 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @sgp_iaq_threadfn._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @sgp_iaq_threadfn._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @sgp_dt_ids, !72, !"sgp_dt_ids", i1 false, i1 false}
!72 = !{!"../drivers/iio/chemical/sgp30.c", i32 493, i32 34}
!73 = !{ptr @sgp_id, !74, !"sgp_id", i1 false, i1 false}
!74 = !{!"../drivers/iio/chemical/sgp30.c", i32 566, i32 35}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
