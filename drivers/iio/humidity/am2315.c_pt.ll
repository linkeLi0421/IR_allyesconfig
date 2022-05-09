; ModuleID = '/llk/IR_all_yes/drivers/iio/humidity/am2315.c_pt.bc'
source_filename = "../drivers/iio/humidity/am2315.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.am2315_data = type { ptr, %struct.mutex, %struct.anon.87 }
%struct.anon.87 = type { [2 x i16], i64 }
%struct.am2315_sensor_data = type { i16, i16 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@__initcall__kmod_am2315__288_270_am2315_driver_init6 = internal global ptr @am2315_driver_init, section ".initcall6.init", align 4
@am2315_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @am2315_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @am2315_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_am2315_driver_exit = internal global ptr @am2315_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [58 x i8] c"am2315.author=Tiberiu Breana <tiberiu.a.breana@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [67 x i8] c"am2315.description=Aosong AM2315 relative humidity and temperature\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [40 x i8] c"am2315.file=drivers/iio/humidity/am2315\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"am2315.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"am2315\00", [25 x i8] zeroinitializer }, align 32
@am2315_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"am2315\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@am2315_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 230, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iio allocation failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"am2315_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/iio/humidity/am2315.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@am2315_probe._entry_ptr = internal global ptr @am2315_probe._entry, section ".printk_index", align 4
@am2315_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@am2315_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @am2315_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@am2315_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 18, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 1, %struct.anon.86 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 2, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@am2315_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 249, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iio triggered buffer setup failed\0A\00", [61 x i8] zeroinitializer }, align 32
@am2315_probe._entry_ptr.9 = internal global ptr @am2315_probe._entry.7, section ".printk_index", align 4
@__const.am2315_read_data.tx_buf = private unnamed_addr constant [3 x i8] c"\03\00\04", align 1
@am2315_read_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 123, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to send read request\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"am2315_read_data\00", [47 x i8] zeroinitializer }, align 32
@am2315_read_data._entry_ptr = internal global ptr @am2315_read_data._entry, section ".printk_index", align 4
@am2315_read_data._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to read sensor data\0A\00", [36 x i8] zeroinitializer }, align 32
@am2315_read_data._entry_ptr.14 = internal global ptr @am2315_read_data._entry.12, section ".printk_index", align 4
@am2315_read_data._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.3, i32 141, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to verify sensor data\0A\00", [34 x i8] zeroinitializer }, align 32
@am2315_read_data._entry_ptr.17 = internal global ptr @am2315_read_data._entry.15, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"am2315_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 262, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 264, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"am2315_i2c_id\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 256, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 230, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 237, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"am2315_info\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 217, i32 30 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"am2315_channels\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 47, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 249, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 123, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 131, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [33 x i8] c"../drivers/iio/humidity/am2315.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 141, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_am2315_driver_exit, ptr @__initcall__kmod_am2315__288_270_am2315_driver_init6, ptr @am2315_driver_exit, ptr @am2315_probe._entry, ptr @am2315_probe._entry.7, ptr @am2315_probe._entry_ptr, ptr @am2315_probe._entry_ptr.9, ptr @am2315_read_data._entry, ptr @am2315_read_data._entry.12, ptr @am2315_read_data._entry.15, ptr @am2315_read_data._entry_ptr, ptr @am2315_read_data._entry_ptr.14, ptr @am2315_read_data._entry_ptr.17, ptr @am2315_driver, ptr @.str, ptr @am2315_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @am2315_probe.__key, ptr @.str.6, ptr @am2315_info, ptr @am2315_channels, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am2315_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am2315_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am2315_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am2315_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am2315_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am2315_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am2315_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am2315_read_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am2315_read_data._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am2315_read_data._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @am2315_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @am2315_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @am2315_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @am2315_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am2315_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 112) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %1, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.am2315_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @am2315_probe.__key) #5
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @am2315_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %name, align 8
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %7 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @am2315_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %8 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %num_channels, align 4
  %call8 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @am2315_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end12, %do.end
  %retval.0 = phi i32 [ %call8, %do.end12 ], [ %call16, %if.end14 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am2315_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %sensor_data = alloca %struct.am2315_sensor_data, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sensor_data) #5
  %4 = ptrtoint ptr %sensor_data to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %sensor_data, align 2, !annotation !57
  %5 = getelementptr inbounds %struct.am2315_sensor_data, ptr %sensor_data, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %5, align 2, !annotation !57
  %call2 = call fastcc i32 @am2315_read_data(ptr noundef %3, ptr noundef nonnull %sensor_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.am2315_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %active_scan_mask, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp3 = icmp eq i32 %10, 3
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %sensor_data to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sensor_data, align 2
  %scan = getelementptr inbounds %struct.am2315_data, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %scan to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %scan, align 8
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %5, align 2
  %arrayidx7 = getelementptr %struct.am2315_data, ptr %3, i32 0, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %arrayidx7, align 2
  br label %if.end22

if.else:                                          ; preds = %if.end
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %masklength, align 8
  %call9 = tail call i32 @_find_next_bit_be(ptr noundef %8, i32 noundef %18, i32 noundef 0) #5
  %19 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %20)
  %cmp1144 = icmp ult i32 %call9, %20
  br i1 %cmp1144, label %for.body.lr.ph, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

for.body.lr.ph:                                   ; preds = %if.else
  %scan16 = getelementptr inbounds %struct.am2315_data, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %bit.046 = phi i32 [ %call9, %for.body.lr.ph ], [ %call21, %cond.end.for.body_crit_edge ]
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bit.046)
  %tobool.not = icmp eq i32 %bit.046, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %5, align 2
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %sensor_data to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %sensor_data, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i16 [ %22, %cond.true ], [ %24, %cond.false ]
  %arrayidx18 = getelementptr [2 x i16], ptr %scan16, i32 0, i32 %i.045
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %cond.in, ptr %arrayidx18, align 2
  %inc = add i32 %i.045, 1
  %26 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %active_scan_mask, align 4
  %28 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %masklength, align 8
  %add = add nuw i32 %bit.046, 1
  %call21 = tail call i32 @_find_next_bit_be(ptr noundef %27, i32 noundef %29, i32 noundef %add) #5
  %30 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %masklength, align 8
  %cmp11 = icmp ult i32 %call21, %31
  br i1 %cmp11, label %cond.end.for.body_crit_edge, label %cond.end.if.end22_crit_edge

cond.end.if.end22_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end22:                                         ; preds = %cond.end.if.end22_crit_edge, %if.else.if.end22_crit_edge, %if.then4
  tail call void @mutex_unlock(ptr noundef %lock) #5
  %scan24 = getelementptr inbounds %struct.am2315_data, ptr %3, i32 0, i32 2
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %scan_timestamp.i, align 8, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %if.end22.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end22.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %34 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %37, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan24, i32 %sub.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %35, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end22.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan24) #5
  br label %err

err:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.err_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %39 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %40) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sensor_data) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am2315_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  %sensor_data = alloca %struct.am2315_sensor_data, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sensor_data) #5
  %0 = ptrtoint ptr %sensor_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %sensor_data, align 2, !annotation !57
  %1 = getelementptr inbounds %struct.am2315_sensor_data, ptr %sensor_data, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !57
  %3 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %entry.cleanup.sink.split_crit_edge
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %call1 = call fastcc i32 @am2315_read_data(ptr noundef %5, ptr noundef nonnull %sensor_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %7)
  %cmp2 = icmp eq i32 %7, 18
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %sensor_data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sensor_data, align 2
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i16 [ %9, %cond.true ], [ %11, %cond.false ]
  %cond = sext i16 %cond.in to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cond.end, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %cond, %cond.end ], [ 100, %entry.cleanup.sink.split_crit_edge ]
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sensor_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @am2315_read_data(ptr noundef %data, ptr nocapture noundef writeonly %sensor_data) unnamed_addr #2 align 64 {
entry:
  %tx_buf = alloca [3 x i8], align 1
  %rx_buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %tx_buf) #5
  %0 = call ptr @memcpy(ptr %tx_buf, ptr @__const.am2315_read_data.tx_buf, i32 3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rx_buf) #5
  %1 = getelementptr inbounds [8 x i8], ptr %rx_buf, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %rx_buf, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %rx_buf, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %rx_buf, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %rx_buf, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i8], ptr %rx_buf, i32 0, i32 7
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %rx_buf, align 8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 0) #5
  %lock = getelementptr inbounds %struct.am2315_data, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 8
  %call.i61 = call i32 @i2c_transfer_buffer_flags(ptr noundef %11, ptr noundef nonnull %tx_buf, i32 noundef 3, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp = icmp slt i32 %call.i61, 0
  br i1 %cmp, label %entry.exit_unlock_crit_edge, label %if.end

entry.exit_unlock_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_unlock

if.end:                                           ; preds = %entry
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #5
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 8
  %call.i62 = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %rx_buf, i32 noundef 8, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp6 = icmp slt i32 %call.i62, 0
  br i1 %cmp6, label %if.end.exit_unlock_crit_edge, label %if.end13

if.end.exit_unlock_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_unlock

if.end13:                                         ; preds = %if.end
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end13
  %dec5.i = phi i8 [ 5, %if.end13 ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %crc.04.i = phi i16 [ -1, %if.end13 ], [ %crc.2.7.i, %while.body.i.while.body.i_crit_edge ]
  %data.addr.03.i = phi ptr [ %rx_buf, %if.end13 ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %14 = ptrtoint ptr %data.addr.03.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %data.addr.03.i, align 1
  %conv.i = zext i8 %15 to i16
  %xor.i = xor i16 %crc.04.i, %conv.i
  %16 = and i16 %xor.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool5.not.i = icmp eq i16 %16, 0
  %17 = lshr i16 %xor.i, 1
  %18 = xor i16 %17, -24575
  %crc.2.i = select i1 %tobool5.not.i, i16 %17, i16 %18
  %19 = and i16 %crc.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool5.not.1.i = icmp eq i16 %19, 0
  %20 = lshr i16 %crc.2.i, 1
  %21 = xor i16 %20, -24575
  %crc.2.1.i = select i1 %tobool5.not.1.i, i16 %20, i16 %21
  %22 = and i16 %crc.2.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool5.not.2.i = icmp eq i16 %22, 0
  %23 = lshr i16 %crc.2.1.i, 1
  %24 = xor i16 %23, -24575
  %crc.2.2.i = select i1 %tobool5.not.2.i, i16 %23, i16 %24
  %25 = and i16 %crc.2.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool5.not.3.i = icmp eq i16 %25, 0
  %26 = lshr i16 %crc.2.2.i, 1
  %27 = xor i16 %26, -24575
  %crc.2.3.i = select i1 %tobool5.not.3.i, i16 %26, i16 %27
  %28 = and i16 %crc.2.3.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool5.not.4.i = icmp eq i16 %28, 0
  %29 = lshr i16 %crc.2.3.i, 1
  %30 = xor i16 %29, -24575
  %crc.2.4.i = select i1 %tobool5.not.4.i, i16 %29, i16 %30
  %31 = and i16 %crc.2.4.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool5.not.5.i = icmp eq i16 %31, 0
  %32 = lshr i16 %crc.2.4.i, 1
  %33 = xor i16 %32, -24575
  %crc.2.5.i = select i1 %tobool5.not.5.i, i16 %32, i16 %33
  %34 = and i16 %crc.2.5.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool5.not.6.i = icmp eq i16 %34, 0
  %35 = lshr i16 %crc.2.5.i, 1
  %36 = xor i16 %35, -24575
  %crc.2.6.i = select i1 %tobool5.not.6.i, i16 %35, i16 %36
  %37 = and i16 %crc.2.6.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool5.not.7.i = icmp eq i16 %37, 0
  %38 = lshr i16 %crc.2.6.i, 1
  %39 = xor i16 %38, -24575
  %crc.2.7.i = select i1 %tobool5.not.7.i, i16 %38, i16 %39
  %incdec.ptr.i = getelementptr i8, ptr %data.addr.03.i, i32 1
  %dec.i = add nsw i8 %dec5.i, -1
  %tobool.not.i = icmp eq i8 %dec5.i, 0
  br i1 %tobool.not.i, label %am2315_crc.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

am2315_crc.exit:                                  ; preds = %while.body.i
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %5, align 2
  %42 = trunc i16 %crc.2.7.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %42)
  %cmp18.not = icmp eq i8 %41, %42
  br i1 %cmp18.not, label %lor.lhs.false, label %am2315_crc.exit.do.end28_crit_edge

am2315_crc.exit.do.end28_crit_edge:               ; preds = %am2315_crc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

lor.lhs.false:                                    ; preds = %am2315_crc.exit
  %43 = lshr i16 %crc.2.7.i, 8
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %6, align 1
  %46 = zext i8 %45 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %46)
  %cmp23.not = icmp eq i16 %43, %46
  br i1 %cmp23.not, label %if.end31, label %lor.lhs.false.do.end28_crit_edge

lor.lhs.false.do.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

do.end28:                                         ; preds = %lor.lhs.false.do.end28_crit_edge, %am2315_crc.exit.do.end28_crit_edge
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 8
  %dev30 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %1, align 2
  %conv33 = zext i8 %50 to i16
  %shl = shl nuw i16 %conv33, 8
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %2, align 1
  %conv35 = zext i8 %52 to i16
  %or = or i16 %shl, %conv35
  %53 = ptrtoint ptr %sensor_data to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %or, ptr %sensor_data, align 2
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %3, align 4
  %conv38 = zext i8 %55 to i16
  %shl39 = shl nuw i16 %conv38, 8
  %56 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %4, align 1
  %conv41 = zext i8 %57 to i16
  %or42 = or i16 %shl39, %conv41
  %temp_data = getelementptr inbounds %struct.am2315_sensor_data, ptr %sensor_data, i32 0, i32 1
  %58 = ptrtoint ptr %temp_data to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %or42, ptr %temp_data, align 2
  br label %cleanup

exit_unlock:                                      ; preds = %if.end.exit_unlock_crit_edge, %entry.exit_unlock_crit_edge
  %.str.13.sink = phi ptr [ @.str.10, %entry.exit_unlock_crit_edge ], [ @.str.13, %if.end.exit_unlock_crit_edge ]
  %ret.0 = phi i32 [ %call.i61, %entry.exit_unlock_crit_edge ], [ %call.i62, %if.end.exit_unlock_crit_edge ]
  %59 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data, align 8
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %60, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull %.str.13.sink) #8
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %exit_unlock, %if.end31, %do.end28
  %retval.0 = phi i32 [ %ret.0, %exit_unlock ], [ -5, %do.end28 ], [ %call.i62, %if.end31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rx_buf) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %tx_buf) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_am2315__288_270_am2315_driver_init6, !1, !"__initcall__kmod_am2315__288_270_am2315_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/humidity/am2315.c", i32 270, i32 1}
!2 = !{ptr @__exitcall_am2315_driver_exit, !1, !"__exitcall_am2315_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/humidity/am2315.c", i32 272, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/humidity/am2315.c", i32 273, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/humidity/am2315.c", i32 274, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/humidity/am2315.c", i32 264, i32 11}
!12 = !{ptr @am2315_driver, !13, !"am2315_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/humidity/am2315.c", i32 262, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/humidity/am2315.c", i32 230, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @am2315_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @am2315_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @am2315_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/iio/humidity/am2315.c", i32 237, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/humidity/am2315.c", i32 249, i32 3}
!27 = !{ptr @am2315_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @am2315_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @am2315_info, !30, !"am2315_info", i1 false, i1 false}
!30 = !{!"../drivers/iio/humidity/am2315.c", i32 217, i32 30}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/humidity/am2315.c", i32 123, i32 3}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @am2315_read_data._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @am2315_read_data._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/humidity/am2315.c", i32 131, i32 3}
!38 = !{ptr @am2315_read_data._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @am2315_read_data._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/humidity/am2315.c", i32 141, i32 3}
!42 = !{ptr @am2315_read_data._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @am2315_read_data._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @am2315_channels, !45, !"am2315_channels", i1 false, i1 false}
!45 = !{!"../drivers/iio/humidity/am2315.c", i32 47, i32 35}
!46 = !{ptr @am2315_i2c_id, !47, !"am2315_i2c_id", i1 false, i1 false}
!47 = !{!"../drivers/iio/humidity/am2315.c", i32 256, i32 35}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
!58 = !{i8 0, i8 2}
