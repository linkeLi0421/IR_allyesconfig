; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/max16601.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/max16601.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max16601_data = type { i32, %struct.pmbus_driver_info, ptr, i32 }
%struct.pmbus_driver_info = type { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_max16601__288_357_max16601_driver_init6 = internal global ptr @max16601_driver_init, section ".initcall6.init", align 4
@max16601_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @max16601_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max16601_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max16601_driver_exit = internal global ptr @max16601_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [51 x i8] c"max16601.author=Guenter Roeck <linux@roeck-us.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [53 x i8] c"max16601.description=PMBus driver for Maxim MAX16601\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [43 x i8] c"max16601.file=drivers/hwmon/pmbus/max16601\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"max16601.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns293 = internal constant [25 x i8] c"max16601.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max16601\00", [23 x i8] zeroinitializer }, align 32
@max16601_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max16508\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max16601\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@max16601_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Device mismatch: Configured %s (%d), detected %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max16601_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/hwmon/pmbus/max16601.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max16601_probe._entry_ptr = internal global ptr @max16601_probe._entry, section ".printk_index", align 4
@max16601_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 325, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Driver must be instantiated on CORE rail I2C address\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@max16601_probe._entry_ptr.9 = internal global ptr @max16601_probe._entry.6, section ".printk_index", align 4
@max16601_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 337, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register VSA client\0A\00", [33 x i8] zeroinitializer }, align 32
@max16601_probe._entry_ptr.12 = internal global ptr @max16601_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MAX16500\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MAX16601\00", [23 x i8] zeroinitializer }, align 32
@max16601_get_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 292, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported chip '%s'\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max16601_get_id\00", [16 x i8] zeroinitializer }, align 32
@max16601_get_id._entry_ptr = internal global ptr @max16601_get_id._entry, section ".printk_index", align 4
@max16601_info = internal constant { { i32, <{ i8, [31 x i8] }>, [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, i32, [29 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, [116 x i8] } { { i32, <{ i8, [31 x i8] }>, [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, i32, [29 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 3, <{ i8, [31 x i8] }> <{ i8 8, [31 x i8] zeroinitializer }>, [8 x i32] [i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [32 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, <{ i32, i32, i32, [29 x i32] }> <{ i32 -1073679747, i32 -2147483608, i32 -2147425768, [29 x i32] zeroinitializer }>, [10 x i32] [i32 536, i32 24, i32 536, i32 24, i32 536, i32 24, i32 536, i32 24, i32 0, i32 0], ptr @max16601_read_byte, ptr @max16601_read_word, ptr @max16601_write_word, ptr @max16601_write_byte, ptr @max16601_identify, i32 0, ptr null, ptr null }, [116 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 137, i64 140, i64 141]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 137, i64 140, i64 141]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 137, i64 151]
@__sancov_gen_cov_switch_values.21 = internal global [12 x i64] [i64 10, i64 32, i64 70, i64 74, i64 79, i64 81, i64 121, i64 137, i64 140, i64 141, i64 283, i64 284]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [7 x i64] [i64 5, i64 32, i64 70, i64 74, i64 79, i64 81, i64 284]
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"max16601_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 349, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 351, i32 14 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"max16601_id\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 264, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 316, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 324, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 337, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 286, i32 20 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 288, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 292, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [14 x i8] c"max16601_info\00", align 1
@___asan_gen_.82 = private constant [34 x i8] c"../drivers/hwmon/pmbus/max16601.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 223, i32 33 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_import_ns293, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max16601_driver_exit, ptr @__initcall__kmod_max16601__288_357_max16601_driver_init6, ptr @max16601_driver_exit, ptr @max16601_get_id._entry, ptr @max16601_get_id._entry_ptr, ptr @max16601_probe._entry, ptr @max16601_probe._entry.10, ptr @max16601_probe._entry.6, ptr @max16601_probe._entry_ptr, ptr @max16601_probe._entry_ptr.12, ptr @max16601_probe._entry_ptr.9, ptr @max16601_driver, ptr @.str, ptr @max16601_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @max16601_info], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16601_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16601_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16601_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16601_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16601_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16601_get_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16601_info to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max16601_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max16601_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max16601_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @max16601_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max16601_probe(ptr noundef %client) #2 align 64 {
entry:
  %buf.i = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 17301504
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 17301504
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %buf.i) #6
  %6 = call ptr @memset(ptr %buf.i, i32 255, i32 33)
  %call.i = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -83, ptr noundef nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 11
  br i1 %cmp2.i, label %if.end.max16601_get_id.exit.thread_crit_edge, label %if.end.i

if.end.max16601_get_id.exit.thread_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %max16601_get_id.exit.thread

if.end.i:                                         ; preds = %if.end
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %buf.i, ptr noundef nonnull dereferenceable(8) @.str.13, i32 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end4_crit_edge, label %if.else.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.else.i:                                        ; preds = %if.end.i
  %bcmp20.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %buf.i, ptr noundef nonnull dereferenceable(8) @.str.14, i32 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp20.i)
  %tobool8.not.i = icmp eq i32 %bcmp20.i, 0
  br i1 %tobool8.not.i, label %if.else.i.if.end4_crit_edge, label %if.else10.i

if.else.i.if.end4_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [33 x i8], ptr %buf.i, i32 0, i32 %call.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx.i, align 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull %buf.i) #10
  br label %max16601_get_id.exit.thread

max16601_get_id.exit.thread:                      ; preds = %if.else10.i, %if.end.max16601_get_id.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %buf.i) #6
  br label %cleanup

if.end4:                                          ; preds = %if.else.i.if.end4_crit_edge, %if.end.i.if.end4_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i.if.end4_crit_edge ], [ 1, %if.else.i.if.end4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %buf.i) #6
  %call5 = call ptr @i2c_match_id(ptr noundef nonnull @max16601_id, ptr noundef %client) #6
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call5, i32 0, i32 1
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %9)
  %cmp6.not = icmp eq i32 %retval.0.i, %9
  br i1 %cmp6.not, label %if.end4.if.end10_crit_edge, label %do.end

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef %call5, i32 noundef %9, i32 noundef %retval.0.i) #10
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end4.if.end10_crit_edge
  %call11 = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %and = and i32 %call11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %do.end19, label %if.end20

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %call.i77 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 504, i32 noundef 3520) #6
  %tobool22.not = icmp eq ptr %call.i77, null
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %10 = ptrtoint ptr %call.i77 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i, ptr %call.i77, align 4
  %iout_avg_pkg = getelementptr inbounds %struct.max16601_data, ptr %call.i77, i32 0, i32 3
  %11 = ptrtoint ptr %iout_avg_pkg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 64512, ptr %iout_avg_pkg, align 4
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr, align 2
  %add = add i16 %15, 1
  %call28 = call ptr @i2c_new_dummy_device(ptr noundef %13, i16 noundef zeroext %add) #6
  %vsa = getelementptr inbounds %struct.max16601_data, ptr %call.i77, i32 0, i32 2
  %16 = ptrtoint ptr %vsa to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call28, ptr %vsa, align 4
  %cmp.i78 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #10
  %17 = ptrtoint ptr %vsa to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vsa, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end24
  %call.i79 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @max16601_remove, ptr noundef nonnull %call.i77) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool.not.i80 = icmp eq i32 %call.i79, 0
  br i1 %tobool.not.i80, label %if.end41, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %vsa to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vsa, align 4
  call void @i2c_unregister_device(ptr noundef %21) #6
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %info = getelementptr inbounds %struct.max16601_data, ptr %call.i77, i32 0, i32 1
  %22 = call ptr @memcpy(ptr %info, ptr @max16601_info, i32 492)
  %call43 = call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef %info) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %devm_add_action_or_reset.exit, %do.end34, %if.end20.cleanup_crit_edge, %do.end19, %if.end10.cleanup_crit_edge, %max16601_get_id.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %do.end34 ], [ %call43, %if.end41 ], [ -19, %do.end19 ], [ -19, %entry.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ], [ %call.i79, %devm_add_action_or_reset.exit ], [ -19, %max16601_get_id.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max16601_remove(ptr nocapture noundef readonly %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vsa = getelementptr inbounds %struct.max16601_data, ptr %_data, i32 0, i32 2
  %0 = ptrtoint ptr %vsa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsa, align 4
  tail call void @i2c_unregister_device(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_block_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max16601_read_byte(ptr noundef %client, i32 noundef %page, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp = icmp sgt i32 %page, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %page)
  %cmp1 = icmp eq i32 %page, 2
  br i1 %cmp1, label %if.then2, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %vsa = getelementptr i8, ptr %call, i32 492
  %0 = ptrtoint ptr %vsa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsa, align 4
  %conv = trunc i32 %reg to i8
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ -95, %if.then.cleanup_crit_edge ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max16601_read_word(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  %buf = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #6
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %buf) #6
  %0 = call ptr @memset(ptr %buf, i32 255, i32 33)
  %1 = zext i32 %page to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %page, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb33
    i32 2, label %sw.bb40
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %phase)
  %cmp = icmp eq i32 %phase, 255
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %2 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %reg, label %if.end.cleanup_crit_edge [
    i32 137, label %if.end.sw.bb1_crit_edge
    i32 140, label %if.end.sw.bb1_crit_edge88
    i32 141, label %if.end.sw.bb1_crit_edge89
  ]

if.end.sw.bb1_crit_edge89:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

if.end.sw.bb1_crit_edge88:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %if.end.sw.bb1_crit_edge, %if.end.sw.bb1_crit_edge88, %if.end.sw.bb1_crit_edge89
  %conv = trunc i32 %phase to i8
  %call2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -13, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %sw.bb1
  %call5 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -12, ptr noundef nonnull %buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call5)
  %cmp10 = icmp ult i32 %call5, 6
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %3 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %reg, label %if.end13.cleanup_crit_edge [
    i32 141, label %sw.bb14
    i32 140, label %sw.bb18
    i32 137, label %sw.bb25
  ]

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb14:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr inbounds [33 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv15 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv15, 8
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf, align 1
  %conv17 = zext i8 %7 to i32
  %or = or i32 %shl, %conv17
  br label %cleanup

sw.bb18:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx19 = getelementptr inbounds [33 x i8], ptr %buf, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %9 to i32
  %shl21 = shl nuw nsw i32 %conv20, 8
  %arrayidx22 = getelementptr inbounds [33 x i8], ptr %buf, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %11 to i32
  %or24 = or i32 %shl21, %conv23
  br label %cleanup

sw.bb25:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx26 = getelementptr inbounds [33 x i8], ptr %buf, i32 0, i32 5
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %13 to i32
  %shl28 = shl nuw nsw i32 %conv27, 8
  %arrayidx29 = getelementptr inbounds [33 x i8], ptr %buf, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %15 to i32
  %or31 = or i32 %shl28, %conv30
  br label %cleanup

sw.bb33:                                          ; preds = %entry
  %16 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %reg, label %sw.bb33.cleanup_crit_edge [
    i32 137, label %sw.bb34
    i32 151, label %sw.bb36
  ]

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb34:                                          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -15) #6
  br label %cleanup

sw.bb36:                                          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -14) #6
  br label %cleanup

sw.bb40:                                          ; preds = %entry
  %17 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %reg, label %sw.default60 [
    i32 283, label %sw.bb41
    i32 284, label %sw.bb40.cleanup_crit_edge
    i32 70, label %sw.bb40.sw.bb56_crit_edge
    i32 74, label %sw.bb40.sw.bb56_crit_edge90
    i32 79, label %sw.bb40.sw.bb56_crit_edge91
    i32 81, label %sw.bb40.sw.bb56_crit_edge92
    i32 137, label %sw.bb40.sw.bb56_crit_edge93
    i32 140, label %sw.bb40.sw.bb56_crit_edge94
    i32 141, label %sw.bb40.sw.bb56_crit_edge95
    i32 121, label %sw.bb40.sw.bb56_crit_edge96
  ]

sw.bb40.sw.bb56_crit_edge96:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb56

sw.bb40.sw.bb56_crit_edge95:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb56

sw.bb40.sw.bb56_crit_edge94:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb56

sw.bb40.sw.bb56_crit_edge93:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb56

sw.bb40.sw.bb56_crit_edge92:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb56

sw.bb40.sw.bb56_crit_edge91:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb56

sw.bb40.sw.bb56_crit_edge90:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb56

sw.bb40.sw.bb56_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb56

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb41:                                          ; preds = %sw.bb40
  %vsa = getelementptr i8, ptr %call, i32 492
  %18 = ptrtoint ptr %vsa to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vsa, align 4
  %call42 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %19, i8 noundef zeroext -18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %sw.bb41.cleanup_crit_edge, label %if.end46

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46:                                         ; preds = %sw.bb41
  %shl.i = shl i32 %call42, 21
  %iout_avg_pkg = getelementptr i8, ptr %call, i32 496
  %20 = ptrtoint ptr %iout_avg_pkg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iout_avg_pkg, align 4
  %shl.i86 = shl i32 %21, 21
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl.i86)
  %cmp49 = icmp sgt i32 %shl.i, %shl.i86
  br i1 %cmp49, label %if.then51, label %if.end46.if.end53_crit_edge

if.end46.if.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %iout_avg_pkg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call42, ptr %iout_avg_pkg, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end46.if.end53_crit_edge
  %23 = ptrtoint ptr %iout_avg_pkg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iout_avg_pkg, align 4
  br label %cleanup

sw.bb56:                                          ; preds = %sw.bb40.sw.bb56_crit_edge, %sw.bb40.sw.bb56_crit_edge90, %sw.bb40.sw.bb56_crit_edge91, %sw.bb40.sw.bb56_crit_edge92, %sw.bb40.sw.bb56_crit_edge93, %sw.bb40.sw.bb56_crit_edge94, %sw.bb40.sw.bb56_crit_edge95, %sw.bb40.sw.bb56_crit_edge96
  %vsa57 = getelementptr i8, ptr %call, i32 492
  %25 = ptrtoint ptr %vsa57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vsa57, align 4
  %conv58 = trunc i32 %reg to i8
  %call59 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %26, i8 noundef zeroext %conv58) #6
  br label %cleanup

sw.default60:                                     ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default60, %sw.bb56, %if.end53, %sw.bb41.cleanup_crit_edge, %sw.bb40.cleanup_crit_edge, %sw.bb36, %sw.bb34, %sw.bb33.cleanup_crit_edge, %sw.bb25, %sw.bb18, %sw.bb14, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sw.default60 ], [ %call59, %sw.bb56 ], [ %24, %if.end53 ], [ %call37, %sw.bb36 ], [ %call35, %sw.bb34 ], [ %or31, %sw.bb25 ], [ %or24, %sw.bb18 ], [ %or, %sw.bb14 ], [ -61, %sw.bb.cleanup_crit_edge ], [ %call2, %sw.bb1.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ -5, %if.end9.cleanup_crit_edge ], [ -95, %if.end13.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %sw.bb33.cleanup_crit_edge ], [ %call42, %sw.bb41.cleanup_crit_edge ], [ 0, %sw.bb40.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max16601_write_word(ptr noundef %client, i32 noundef %page, i32 noundef %reg, i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #6
  %0 = zext i32 %page to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %page, label %sw.default [
    i32 0, label %entry.cleanup_crit_edge
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %1 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %reg, label %sw.bb2.cleanup_crit_edge [
    i32 284, label %sw.bb3
    i32 70, label %sw.bb2.sw.bb4_crit_edge
    i32 74, label %sw.bb2.sw.bb4_crit_edge10
    i32 79, label %sw.bb2.sw.bb4_crit_edge11
    i32 81, label %sw.bb2.sw.bb4_crit_edge12
  ]

sw.bb2.sw.bb4_crit_edge12:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

sw.bb2.sw.bb4_crit_edge11:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

sw.bb2.sw.bb4_crit_edge10:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

sw.bb2.sw.bb4_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %iout_avg_pkg = getelementptr i8, ptr %call, i32 496
  %2 = ptrtoint ptr %iout_avg_pkg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 64512, ptr %iout_avg_pkg, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb2.sw.bb4_crit_edge, %sw.bb2.sw.bb4_crit_edge10, %sw.bb2.sw.bb4_crit_edge11, %sw.bb2.sw.bb4_crit_edge12
  %vsa = getelementptr i8, ptr %call, i32 492
  %3 = ptrtoint ptr %vsa to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vsa, align 4
  %conv = trunc i32 %reg to i8
  %call5 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %4, i8 noundef zeroext %conv, i16 noundef zeroext %value) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %sw.bb3, %sw.bb2.cleanup_crit_edge, %sw.default, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sw.default ], [ %call5, %sw.bb4 ], [ 0, %sw.bb3 ], [ -61, %entry.cleanup_crit_edge ], [ -95, %sw.bb2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max16601_write_byte(ptr noundef %client, i32 noundef %page, i8 noundef zeroext %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %page)
  %cmp = icmp eq i32 %page, 2
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %reg)
  %cmp1 = icmp eq i8 %reg, 3
  br i1 %cmp1, label %if.then3, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %vsa = getelementptr i8, ptr %call, i32 492
  %0 = ptrtoint ptr %vsa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsa, align 4
  %call4 = tail call i32 @i2c_smbus_write_byte(ptr noundef %1, i8 noundef zeroext 3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then3 ], [ -95, %if.then.cleanup_crit_edge ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max16601_identify(ptr noundef %client, ptr nocapture noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %info, i32 -4
  %and = and i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 2
  %0 = getelementptr inbounds %struct.pmbus_driver_info, ptr %info, i32 0, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %spec.select, ptr %0, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp5.not = icmp eq i32 %3, 1
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -60) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %and12 = and i32 %call8, 15
  %4 = add nsw i32 %and12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %5 = icmp ult i32 %4, 8
  br i1 %5, label %if.then15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %and12 to i8
  %phases = getelementptr inbounds %struct.pmbus_driver_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %phases to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %phases, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmbus_get_driver_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !37, !39, !40, !41, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_max16601__288_357_max16601_driver_init6, !1, !"__initcall__kmod_max16601__288_357_max16601_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/max16601.c", i32 357, i32 1}
!2 = !{ptr @__exitcall_max16601_driver_exit, !1, !"__exitcall_max16601_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/max16601.c", i32 359, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/max16601.c", i32 360, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/max16601.c", i32 361, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns293, !11, !"__UNIQUE_ID_import_ns293", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/max16601.c", i32 362, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/max16601.c", i32 351, i32 14}
!14 = !{ptr @max16601_driver, !15, !"max16601_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/max16601.c", i32 349, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/max16601.c", i32 316, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @max16601_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @max16601_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/pmbus/max16601.c", i32 324, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @max16601_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @max16601_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/pmbus/max16601.c", i32 337, i32 3}
!31 = !{ptr @max16601_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @max16601_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/pmbus/max16601.c", i32 286, i32 20}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/pmbus/max16601.c", i32 288, i32 27}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/pmbus/max16601.c", i32 292, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @max16601_get_id._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @max16601_get_id._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @max16601_info, !43, !"max16601_info", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/pmbus/max16601.c", i32 223, i32 33}
!44 = !{ptr @max16601_id, !45, !"max16601_id", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/pmbus/max16601.c", i32 264, i32 35}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
