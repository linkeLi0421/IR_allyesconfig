; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/max31785.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/max31785.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.pmbus_driver_info = type { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_max31785__288_401_max31785_driver_init6 = internal global ptr @max31785_driver_init, section ".initcall6.init", align 4
@max31785_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @max31785_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max31785_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max31785_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max31785_driver_exit = internal global ptr @max31785_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [49 x i8] c"max31785.author=Andrew Jeffery <andrew@aj.id.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [57 x i8] c"max31785.description=PMBus driver for the Maxim MAX31785\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [43 x i8] c"max31785.file=drivers/hwmon/pmbus/max31785\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"max31785.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns293 = internal constant [25 x i8] c"max31785.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max31785\00", [23 x i8] zeroinitializer }, align 32
@max31785_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31785\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31785a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31785b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@max31785_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max31785\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max31785a\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max31785b\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"max31785a\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"max31785b\00", [22 x i8] zeroinitializer }, align 32
@max31785_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 359, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Expected max31785a/b, found max31785: cannot provide secondary tachometer readings\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max31785_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/hwmon/pmbus/max31785.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max31785_probe._entry_ptr = internal global ptr @max31785_probe._entry, section ".printk_index", align 4
@max31785_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 361, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unrecognized MAX31785 revision: %x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@max31785_probe._entry_ptr.11 = internal global ptr @max31785_probe._entry.8, section ".printk_index", align 4
@max31785_info = internal constant { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ [23 x i32], [9 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, [116 x i8] } { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ [23 x i32], [9 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 23, [32 x i8] zeroinitializer, [8 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1], [32 x i32] zeroinitializer, [8 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1], [8 x i32] zeroinitializer, [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2], <{ [23 x i32], [9 x i32] }> <{ [23 x i32] [i32 1114240, i32 1114240, i32 1114240, i32 1114240, i32 1114240, i32 1114240, i32 33280, i32 33280, i32 33280, i32 33280, i32 33280, i32 33280, i32 33280, i32 33280, i32 33280, i32 33280, i32 33280, i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 4100], [9 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr @max31785_read_byte_data, ptr @max31785_read_word_data, ptr @max31785_write_word_data, ptr @max31785_write_byte, ptr null, i32 0, ptr null, ptr null }, [116 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 12336, i64 12352, i64 12385]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 58]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 59, i64 144, i64 299, i64 303]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 299, i64 303]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"max31785_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 392, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 394, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"max31785_of_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 383, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [12 x i8] c"max31785_id\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 374, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 357, i32 15 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 358, i32 15 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 359, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 361, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"max31785_info\00", align 1
@___asan_gen_.63 = private constant [34 x i8] c"../drivers/hwmon/pmbus/max31785.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 248, i32 39 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_import_ns293, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max31785_driver_exit, ptr @__initcall__kmod_max31785__288_401_max31785_driver_init6, ptr @max31785_driver_exit, ptr @max31785_probe._entry, ptr @max31785_probe._entry.8, ptr @max31785_probe._entry_ptr, ptr @max31785_probe._entry_ptr.11, ptr @max31785_driver, ptr @.str, ptr @max31785_of_match, ptr @max31785_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @max31785_info], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31785_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31785_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31785_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31785_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31785_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31785_info to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max31785_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max31785_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max31785_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @max31785_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max31785_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #8
  %and.i = and i32 %call.i.i, 7864320
  call void @__sanitizer_cov_trace_const_cmp4(i32 7864320, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 7864320
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 492, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = call ptr @memcpy(ptr %call.i, ptr @max31785_info, i32 492)
  %call6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %call9 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -101) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %7 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call9, label %do.end30 [
    i32 12352, label %if.end12.if.then34_crit_edge
    i32 12385, label %if.end12.if.then34_crit_edge70
    i32 12336, label %if.then17
  ]

if.end12.if.then34_crit_edge70:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.end12.if.then34_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.then17:                                        ; preds = %if.end12
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.1, ptr noundef %name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.do.end_crit_edge, label %lor.lhs.false20

if.then17.do.end_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false20:                                  ; preds = %if.then17
  %call23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.2, ptr noundef %name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %lor.lhs.false20.do.end_crit_edge, label %lor.lhs.false20.if.end39_crit_edge

lor.lhs.false20.if.end39_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

lor.lhs.false20.do.end_crit_edge:                 ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false20.do.end_crit_edge, %if.then17.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.3) #12
  br label %if.end39

do.end30:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %call9) #12
  br label %cleanup

if.then34:                                        ; preds = %if.end12.if.then34_crit_edge, %if.end12.if.then34_crit_edge70
  %call.i66 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp1.i = icmp slt i32 %call.i66, 0
  br i1 %cmp1.i, label %if.then34.cleanup_crit_edge, label %if.end.i

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then34
  %call3.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %and.i67 = and i32 %call3.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67)
  %tobool.not.i = icmp eq i32 %and.i67, 0
  br i1 %tobool.not.i, label %if.end7.i.for.inc.i_crit_edge, label %if.then8.i

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then8.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 24, ptr %call.i, align 4
  %arrayidx.i = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 7, i32 23
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %or12.i = or i32 %10, -2147483520
  store i32 %or12.i, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i, %if.end7.i.for.inc.i_crit_edge
  %call.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp1.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp1.1.i, label %for.inc.i.cleanup_crit_edge, label %if.end.1.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.1.i:                                       ; preds = %for.inc.i
  %call3.1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1.i)
  %cmp4.1.i = icmp slt i32 %call3.1.i, 0
  br i1 %cmp4.1.i, label %if.end.1.i.cleanup_crit_edge, label %if.end7.1.i

if.end.1.i.cleanup_crit_edge:                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.1.i:                                      ; preds = %if.end.1.i
  %and.1.i = and i32 %call3.1.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %if.end7.1.i.for.inc.1.i_crit_edge, label %if.then8.1.i

if.end7.1.i.for.inc.1.i_crit_edge:                ; preds = %if.end7.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

if.then8.1.i:                                     ; preds = %if.end7.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 25, ptr %call.i, align 4
  %arrayidx.1.i = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 7, i32 24
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1.i, align 4
  %or12.1.i = or i32 %13, -2147483520
  store i32 %or12.1.i, ptr %arrayidx.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then8.1.i, %if.end7.1.i.for.inc.1.i_crit_edge
  %call.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp1.2.i = icmp slt i32 %call.2.i, 0
  br i1 %cmp1.2.i, label %for.inc.1.i.cleanup_crit_edge, label %if.end.2.i

for.inc.1.i.cleanup_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.2.i:                                       ; preds = %for.inc.1.i
  %call3.2.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2.i)
  %cmp4.2.i = icmp slt i32 %call3.2.i, 0
  br i1 %cmp4.2.i, label %if.end.2.i.cleanup_crit_edge, label %if.end7.2.i

if.end.2.i.cleanup_crit_edge:                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.2.i:                                      ; preds = %if.end.2.i
  %and.2.i = and i32 %call3.2.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %if.end7.2.i.for.inc.2.i_crit_edge, label %if.then8.2.i

if.end7.2.i.for.inc.2.i_crit_edge:                ; preds = %if.end7.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

if.then8.2.i:                                     ; preds = %if.end7.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 26, ptr %call.i, align 4
  %arrayidx.2.i = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 7, i32 25
  %15 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.2.i, align 4
  %or12.2.i = or i32 %16, -2147483520
  store i32 %or12.2.i, ptr %arrayidx.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then8.2.i, %if.end7.2.i.for.inc.2.i_crit_edge
  %call.3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp1.3.i = icmp slt i32 %call.3.i, 0
  br i1 %cmp1.3.i, label %for.inc.2.i.cleanup_crit_edge, label %if.end.3.i

for.inc.2.i.cleanup_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.3.i:                                       ; preds = %for.inc.2.i
  %call3.3.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3.i)
  %cmp4.3.i = icmp slt i32 %call3.3.i, 0
  br i1 %cmp4.3.i, label %if.end.3.i.cleanup_crit_edge, label %if.end7.3.i

if.end.3.i.cleanup_crit_edge:                     ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.3.i:                                      ; preds = %if.end.3.i
  %and.3.i = and i32 %call3.3.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %if.end7.3.i.for.inc.3.i_crit_edge, label %if.then8.3.i

if.end7.3.i.for.inc.3.i_crit_edge:                ; preds = %if.end7.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i

if.then8.3.i:                                     ; preds = %if.end7.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 27, ptr %call.i, align 4
  %arrayidx.3.i = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 7, i32 26
  %18 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.3.i, align 4
  %or12.3.i = or i32 %19, -2147483520
  store i32 %or12.3.i, ptr %arrayidx.3.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then8.3.i, %if.end7.3.i.for.inc.3.i_crit_edge
  %call.4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp1.4.i = icmp slt i32 %call.4.i, 0
  br i1 %cmp1.4.i, label %for.inc.3.i.cleanup_crit_edge, label %if.end.4.i

for.inc.3.i.cleanup_crit_edge:                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.4.i:                                       ; preds = %for.inc.3.i
  %call3.4.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.4.i)
  %cmp4.4.i = icmp slt i32 %call3.4.i, 0
  br i1 %cmp4.4.i, label %if.end.4.i.cleanup_crit_edge, label %if.end7.4.i

if.end.4.i.cleanup_crit_edge:                     ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.4.i:                                      ; preds = %if.end.4.i
  %and.4.i = and i32 %call3.4.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool.not.4.i, label %if.end7.4.i.for.inc.4.i_crit_edge, label %if.then8.4.i

if.end7.4.i.for.inc.4.i_crit_edge:                ; preds = %if.end7.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.i

if.then8.4.i:                                     ; preds = %if.end7.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 28, ptr %call.i, align 4
  %arrayidx.4.i = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 7, i32 27
  %21 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.4.i, align 4
  %or12.4.i = or i32 %22, -2147483520
  store i32 %or12.4.i, ptr %arrayidx.4.i, align 4
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then8.4.i, %if.end7.4.i.for.inc.4.i_crit_edge
  %call.5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %cmp1.5.i = icmp slt i32 %call.5.i, 0
  br i1 %cmp1.5.i, label %for.inc.4.i.cleanup_crit_edge, label %if.end.5.i

for.inc.4.i.cleanup_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.5.i:                                       ; preds = %for.inc.4.i
  %call3.5.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.5.i)
  %cmp4.5.i = icmp slt i32 %call3.5.i, 0
  br i1 %cmp4.5.i, label %if.end.5.i.cleanup_crit_edge, label %if.end7.5.i

if.end.5.i.cleanup_crit_edge:                     ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.5.i:                                      ; preds = %if.end.5.i
  %and.5.i = and i32 %call3.5.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool.not.5.i, label %if.end7.5.i.if.end39_crit_edge, label %if.then8.5.i

if.end7.5.i.if.end39_crit_edge:                   ; preds = %if.end7.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then8.5.i:                                     ; preds = %if.end7.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 29, ptr %call.i, align 4
  %arrayidx.5.i = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 7, i32 28
  %24 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.5.i, align 4
  %or12.5.i = or i32 %25, -2147483520
  store i32 %or12.5.i, ptr %arrayidx.5.i, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then8.5.i, %if.end7.5.i.if.end39_crit_edge, %do.end, %lor.lhs.false20.if.end39_crit_edge
  %call40 = tail call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end.5.i.cleanup_crit_edge, %for.inc.4.i.cleanup_crit_edge, %if.end.4.i.cleanup_crit_edge, %for.inc.3.i.cleanup_crit_edge, %if.end.3.i.cleanup_crit_edge, %for.inc.2.i.cleanup_crit_edge, %if.end.2.i.cleanup_crit_edge, %for.inc.1.i.cleanup_crit_edge, %if.end.1.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then34.cleanup_crit_edge, %do.end30, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %if.end39 ], [ -19, %do.end30 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call3.5.i, %if.end.5.i.cleanup_crit_edge ], [ %call.5.i, %for.inc.4.i.cleanup_crit_edge ], [ %call3.4.i, %if.end.4.i.cleanup_crit_edge ], [ %call.4.i, %for.inc.3.i.cleanup_crit_edge ], [ %call3.3.i, %if.end.3.i.cleanup_crit_edge ], [ %call.3.i, %for.inc.2.i.cleanup_crit_edge ], [ %call3.2.i, %if.end.2.i.cleanup_crit_edge ], [ %call.2.i, %for.inc.1.i.cleanup_crit_edge ], [ %call3.1.i, %if.end.1.i.cleanup_crit_edge ], [ %call.1.i, %for.inc.i.cleanup_crit_edge ], [ %call3.i, %if.end.i.cleanup_crit_edge ], [ %call.i66, %if.then34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max31785_read_byte_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %page)
  %cmp = icmp slt i32 %page, 23
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %reg, label %sw.epilog [
    i32 32, label %if.end.return_crit_edge
    i32 58, label %sw.bb1
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add nsw i32 %page, -23
  %call = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef %sub, i8 noundef zeroext 58) #8
  br label %return

sw.epilog:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb1, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -61, %sw.epilog ], [ %call, %sw.bb1 ], [ -61, %entry.return_crit_edge ], [ -524, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max31785_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  %cmdbuf.i = alloca [1 x i8], align 1
  %rspbuf.i = alloca [4 x i8], align 4
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %reg, label %entry.cleanup_crit_edge [
    i32 144, label %sw.bb
    i32 59, label %sw.bb4
    i32 299, label %sw.bb6
    i32 303, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %page)
  %cmp = icmp slt i32 %page, 23
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %sub = add nsw i32 %page, -23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmdbuf.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rspbuf.i) #8
  %1 = getelementptr inbounds [4 x i8], ptr %rspbuf.i, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %rspbuf.i, i32 0, i32 3
  %3 = ptrtoint ptr %rspbuf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %rspbuf.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %6 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr1.i, align 2
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cmdbuf.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %7, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %14 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 4, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rspbuf.i, ptr %buf6.i, align 4
  %16 = ptrtoint ptr %cmdbuf.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -112, ptr %cmdbuf.i, align 1
  %call.i = call i32 @pmbus_set_page(ptr noundef %client, i32 noundef %sub, i32 noundef 255) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.max31785_read_long_data.exit.thread_crit_edge, label %if.end.i

if.end.max31785_read_long_data.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %max31785_read_long_data.exit.thread

if.end.i:                                         ; preds = %if.end
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 8
  %call10.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end.i.max31785_read_long_data.exit.thread_crit_edge, label %if.end3

if.end.i.max31785_read_long_data.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max31785_read_long_data.exit.thread

max31785_read_long_data.exit.thread:              ; preds = %if.end.i.max31785_read_long_data.exit.thread_crit_edge, %if.end.max31785_read_long_data.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call10.i, %if.end.i.max31785_read_long_data.exit.thread_crit_edge ], [ %call.i, %if.end.max31785_read_long_data.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rspbuf.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmdbuf.i) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %1, align 2
  %conv21.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %2, align 1
  %conv25.i = zext i8 %22 to i32
  %shl26.i = shl nuw nsw i32 %conv25.i, 8
  %or27.i = or i32 %shl26.i, %conv21.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rspbuf.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmdbuf.i) #8
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %page)
  %cmp5 = icmp sgt i32 %page, 22
  %cond = select i1 %cmp5, i32 -524, i32 -61
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i20 = tail call i32 @pmbus_get_fan_rate_device(ptr noundef %client, i32 noundef %page, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp.i21 = icmp slt i32 %call.i20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %call.i20)
  %cmp1.i = icmp ugt i32 %call.i20, 32767
  %23 = tail call i32 @llvm.umin.i32(i32 %call.i20, i32 10000) #8
  %spec.select.i = select i1 %cmp1.i, i32 0, i32 %23
  %retval.0.i22 = select i1 %cmp.i21, i32 %call.i20, i32 %spec.select.i
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %call.i23 = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext 58) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %cmp.i24 = icmp slt i32 %call.i23, 0
  br i1 %cmp.i24, label %sw.bb8.cleanup_crit_edge, label %if.end.i25

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i25:                                       ; preds = %sw.bb8
  %call1.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i8 noundef zeroext 59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i25.cleanup_crit_edge, label %if.end4.i

if.end.i25.cleanup_crit_edge:                     ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i25
  %and.i = and i32 %call.i23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %call1.i)
  %cmp8.i = icmp ugt i32 %call1.i, 32767
  br i1 %tobool.not.i, label %if.end7.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %cond.i = select i1 %cmp8.i, i32 3, i32 2
  br label %cleanup

if.end7.i:                                        ; preds = %if.end4.i
  br i1 %cmp8.i, label %if.end7.i.cleanup_crit_edge, label %if.else.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10001, i32 %call1.i)
  %cmp10.i = icmp ult i32 %call1.i, 10001
  %..i = zext i1 %cmp10.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.end7.i.cleanup_crit_edge, %if.then5.i, %if.end.i25.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %sw.bb6, %sw.bb4, %if.end3, %max31785_read_long_data.exit.thread, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %sw.bb.cleanup_crit_edge ], [ %retval.0.i22, %sw.bb6 ], [ %cond, %sw.bb4 ], [ %or27.i, %if.end3 ], [ -61, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %max31785_read_long_data.exit.thread ], [ %cond.i, %if.then5.i ], [ %call.i23, %sw.bb8.cleanup_crit_edge ], [ %call1.i, %if.end.i25.cleanup_crit_edge ], [ 3, %if.end7.i.cleanup_crit_edge ], [ %..i, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max31785_write_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg, i16 noundef zeroext %word) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %reg, label %entry.return_crit_edge [
    i32 299, label %sw.bb
    i32 303, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %word to i32
  %mul.i = mul nuw nsw i32 %conv, 100
  %div.i = udiv i32 %mul.i, 255
  br label %return.sink.split

sw.bb3:                                           ; preds = %entry
  %1 = zext i16 %word to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %word, label %sw.bb3.return_crit_edge [
    i16 0, label %sw.bb3.return.sink.split_crit_edge
    i16 1, label %sw.bb1.i
    i16 2, label %sw.bb4.i
    i16 3, label %sw.bb10.i
  ]

sw.bb3.return.sink.split_crit_edge:               ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1.i:                                         ; preds = %sw.bb3
  %call.i = tail call i32 @pmbus_get_fan_rate_cached(ptr noundef %client, i32 noundef %page, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb1.i.return_crit_edge, label %if.end.i

sw.bb1.i.return_crit_edge:                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i.i = mul i32 %call.i, 100
  %div.i.i = udiv i32 %mul.i.i, 255
  br label %return.sink.split

sw.bb4.i:                                         ; preds = %sw.bb3
  %call5.i = tail call i32 @pmbus_get_fan_rate_cached(ptr noundef %client, i32 noundef %page, i32 noundef 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %sw.bb4.i.return_crit_edge, label %sw.bb4.i.return.sink.split_crit_edge

sw.bb4.i.return.sink.split_crit_edge:             ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

sw.bb4.i.return_crit_edge:                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb10.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb10.i, %sw.bb4.i.return.sink.split_crit_edge, %if.end.i, %sw.bb3.return.sink.split_crit_edge, %sw.bb
  %rate.0.i.sink = phi i32 [ %div.i, %sw.bb ], [ 65535, %sw.bb10.i ], [ %call5.i, %sw.bb4.i.return.sink.split_crit_edge ], [ %div.i.i, %if.end.i ], [ 32767, %sw.bb3.return.sink.split_crit_edge ]
  %config.0.i.sink = phi i8 [ 0, %sw.bb ], [ 0, %sw.bb10.i ], [ 64, %sw.bb4.i.return.sink.split_crit_edge ], [ 0, %if.end.i ], [ 0, %sw.bb3.return.sink.split_crit_edge ]
  %conv12.i = trunc i32 %rate.0.i.sink to i16
  %call13.i = tail call i32 @pmbus_update_fan(ptr noundef %client, i32 noundef %page, i32 noundef 0, i8 noundef zeroext %config.0.i.sink, i8 noundef zeroext 64, i16 noundef zeroext %conv12.i) #8
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb4.i.return_crit_edge, %sw.bb1.i.return_crit_edge, %sw.bb3.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -61, %entry.return_crit_edge ], [ %call.i, %sw.bb1.i.return_crit_edge ], [ %call5.i, %sw.bb4.i.return_crit_edge ], [ -22, %sw.bb3.return_crit_edge ], [ %call13.i, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max31785_write_byte(ptr nocapture noundef readnone %client, i32 noundef %page, i8 noundef zeroext %value) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %page)
  %cmp = icmp slt i32 %page, 23
  %. = select i1 %cmp, i32 -61, i32 -524
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_byte_data(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_set_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_get_fan_rate_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_word_data(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_update_fan(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_get_fan_rate_cached(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_max31785__288_401_max31785_driver_init6, !1, !"__initcall__kmod_max31785__288_401_max31785_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/max31785.c", i32 401, i32 1}
!2 = !{ptr @__exitcall_max31785_driver_exit, !1, !"__exitcall_max31785_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/max31785.c", i32 403, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/max31785.c", i32 404, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/max31785.c", i32 405, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns293, !11, !"__UNIQUE_ID_import_ns293", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/max31785.c", i32 406, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/max31785.c", i32 394, i32 11}
!14 = !{ptr @max31785_driver, !15, !"max31785_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/max31785.c", i32 392, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/max31785.c", i32 357, i32 15}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/pmbus/max31785.c", i32 358, i32 15}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/pmbus/max31785.c", i32 359, i32 4}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @max31785_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @max31785_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/pmbus/max31785.c", i32 361, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @max31785_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @max31785_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @max31785_info, !34, !"max31785_info", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/pmbus/max31785.c", i32 248, i32 39}
!35 = !{ptr @max31785_of_match, !36, !"max31785_of_match", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/pmbus/max31785.c", i32 383, i32 34}
!37 = !{ptr @max31785_id, !38, !"max31785_id", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/pmbus/max31785.c", i32 374, i32 35}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
