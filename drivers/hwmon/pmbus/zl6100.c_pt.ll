; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/zl6100.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/zl6100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.zl6100_data = type { i32, i64, i32, %struct.pmbus_driver_info }
%struct.pmbus_driver_info = type { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@__param_str_delay = internal constant [13 x i8] c"zl6100.delay\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@delay = internal global { i16, [30 x i8] } { i16 1000, [30 x i8] zeroinitializer }, align 32
@__param_delay = internal constant %struct.kernel_param { ptr @__param_str_delay, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @delay } }, section "__param", align 4
@__UNIQUE_ID_delaytype288 = internal constant [29 x i8] c"zl6100.parmtype=delay:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_delay289 = internal constant [52 x i8] c"zl6100.parm=delay:Delay between chip accesses in uS\00", section ".modinfo", align 1
@__initcall__kmod_zl6100__290_468_zl6100_driver_init6 = internal global ptr @zl6100_driver_init, section ".initcall6.init", align 4
@zl6100_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @zl6100_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @zl6100_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_zl6100_driver_exit = internal global ptr @zl6100_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [28 x i8] c"zl6100.author=Guenter Roeck\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [59 x i8] c"zl6100.description=PMBus driver for ZL6100 and compatibles\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [39 x i8] c"zl6100.file=drivers/hwmon/pmbus/zl6100\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [19 x i8] c"zl6100.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns295 = internal constant [23 x i8] c"zl6100.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"zl6100\00", [25 x i8] zeroinitializer }, align 32
@zl6100_id = internal constant { [23 x %struct.i2c_device_id], [152 x i8] } { [23 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bmr450\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"bmr451\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"bmr462\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"bmr463\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"bmr464\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"bmr465\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12 }, %struct.i2c_device_id { [20 x i8] c"bmr466\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11 }, %struct.i2c_device_id { [20 x i8] c"bmr467\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12 }, %struct.i2c_device_id { [20 x i8] c"bmr469\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"zl2004\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"zl2005\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"zl2006\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"zl2008\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"zl2105\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"zl2106\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"zl6100\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"zl6105\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"zl8802\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"zl9101\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.i2c_device_id { [20 x i8] c"zl9117\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.i2c_device_id { [20 x i8] c"zls1003\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11 }, %struct.i2c_device_id { [20 x i8] c"zls4009\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12 }, %struct.i2c_device_id zeroinitializer], [152 x i8] zeroinitializer }, align 32
@zl6100_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 334, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to read device ID\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zl6100_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/hwmon/pmbus/zl6100.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zl6100_probe._entry_ptr = internal global ptr @zl6100_probe._entry, section ".printk_index", align 4
@zl6100_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 338, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Device ID %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@zl6100_probe._entry_ptr.9 = internal global ptr @zl6100_probe._entry.6, section ".printk_index", align 4
@zl6100_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 346, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unsupported device\0A\00", [44 x i8] zeroinitializer }, align 32
@zl6100_probe._entry_ptr.12 = internal global ptr @zl6100_probe._entry.10, section ".printk_index", align 4
@zl6100_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 352, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Device mismatch: Configured %s, detected %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@zl6100_probe._entry_ptr.16 = internal global ptr @zl6100_probe._entry.13, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.zl6100_read_word_data = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\F7\F6\F5\F6\F5", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 8, i64 9, i64 10, i64 12]
@__sancov_gen_cov_switch_values.17 = internal global [10 x i64] [i64 8, i64 32, i64 66, i64 67, i64 74, i64 289, i64 290, i64 291, i64 292, i64 293]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 290, i64 291]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 290, i64 291, i64 292, i64 293]
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 55, i32 15 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"zl6100_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 460, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 462, i32 14 }
@___asan_gen_.29 = private unnamed_addr constant [10 x i8] c"zl6100_id\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 291, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 334, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 338, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 346, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [32 x i8] c"../drivers/hwmon/pmbus/zl6100.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 350, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [35 x i8] c"switch.table.zl6100_read_word_data\00", align 1
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_delay289, ptr @__UNIQUE_ID_delaytype288, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_import_ns295, ptr @__UNIQUE_ID_license294, ptr @__exitcall_zl6100_driver_exit, ptr @__initcall__kmod_zl6100__290_468_zl6100_driver_init6, ptr @__param_delay, ptr @zl6100_driver_exit, ptr @zl6100_probe._entry, ptr @zl6100_probe._entry.10, ptr @zl6100_probe._entry.13, ptr @zl6100_probe._entry.6, ptr @zl6100_probe._entry_ptr, ptr @zl6100_probe._entry_ptr.12, ptr @zl6100_probe._entry_ptr.16, ptr @zl6100_probe._entry_ptr.9, ptr @delay, ptr @zl6100_driver, ptr @.str, ptr @zl6100_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @switch.table.zl6100_read_word_data], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl6100_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl6100_id to i32), i32 552, i32 704, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl6100_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl6100_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl6100_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl6100_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.zl6100_read_word_data to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zl6100_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @zl6100_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zl6100_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @zl6100_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl6100_probe(ptr noundef %client) #2 align 64 {
entry:
  %device_id = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %device_id) #9
  %0 = call ptr @memset(ptr %device_id, i32 255, i32 33)
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %2) #9
  %and.i = and i32 %call.i.i, 18874368
  call void @__sanitizer_cov_trace_const_cmp4(i32 18874368, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 18874368
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -28, ptr noundef nonnull %device_id) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr [33 x i8], ptr %device_id, i32 0, i32 %call1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 1
  %dev7 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.7, ptr noundef nonnull %device_id) #12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3
  %mid.0265 = phi ptr [ @zl6100_id, %if.end3 ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %call16 = call i32 @strlen(ptr noundef %mid.0265) #13
  %call17 = call i32 @strncasecmp(ptr noundef %mid.0265, ptr noundef nonnull %device_id, i32 noundef %call16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end29, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.i2c_device_id, ptr %mid.0265, i32 1
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq i8 %9, 0
  br i1 %tobool10.not, label %do.end27, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end27:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end29:                                         ; preds = %for.body
  %name30 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call34 = call i32 @strcmp(ptr noundef %name30, ptr noundef %mid.0265) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %if.end29.if.end45_crit_edge, label %do.end39

if.end29.if.end45_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

do.end39:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev7, ptr noundef nonnull @.str.14, ptr noundef %name30, ptr noundef %mid.0265) #12
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %if.end29.if.end45_crit_edge
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev7, i32 noundef 512, i32 noundef 3520) #9
  %tobool48.not = icmp eq ptr %call.i, null
  br i1 %tobool48.not, label %if.end45.cleanup_crit_edge, label %if.end50

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %mid.0265, i32 0, i32 1
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_data, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call.i, align 8
  %13 = load i16, ptr @delay, align 2
  %conv = zext i16 %13 to i32
  %delay = getelementptr inbounds %struct.zl6100_data, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %delay, align 8
  %call51 = call i64 @ktime_get() #9
  %access = getelementptr inbounds %struct.zl6100_data, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %access to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call51, ptr %access, align 8
  call fastcc void @zl6100_wait(ptr noundef nonnull %call.i)
  %info52 = getelementptr inbounds %struct.zl6100_data, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %info52 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %info52, align 4
  %func = getelementptr inbounds %struct.zl6100_data, ptr %call.i, i32 0, i32 3, i32 7
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 61973, ptr %func, align 4
  %18 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.end50.if.else139_crit_edge [
    i32 0, label %if.end50.if.end75_crit_edge
    i32 8, label %if.end50.if.end75_crit_edge276
    i32 9, label %if.end50.if.end75_crit_edge277
    i32 10, label %if.end50.if.end75_crit_edge278
    i32 12, label %if.end50.if.end75_crit_edge279
  ]

if.end50.if.end75_crit_edge279:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.end50.if.end75_crit_edge278:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.end50.if.end75_crit_edge277:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.end50.if.end75_crit_edge276:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.end50.if.end75_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.end50.if.else139_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else139

if.end75:                                         ; preds = %if.end50.if.end75_crit_edge, %if.end50.if.end75_crit_edge276, %if.end50.if.end75_crit_edge277, %if.end50.if.end75_crit_edge278, %if.end50.if.end75_crit_edge279
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 848405, ptr %func, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp77 = icmp eq i32 %11, 8
  br i1 %cmp77, label %if.then79, label %if.end75.if.else139_crit_edge

if.end75.if.else139_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else139

if.then79:                                        ; preds = %if.end75
  %20 = ptrtoint ptr %info52 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %info52, align 4
  %21 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %func, align 4
  %or83 = or i32 %22, 8
  store i32 %or83, ptr %func, align 4
  %call84 = call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.then79.cleanup_crit_edge, label %if.end88

if.then79.cleanup_crit_edge:                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end88:                                         ; preds = %if.then79
  %call89 = call i64 @ktime_get() #9
  %23 = ptrtoint ptr %access to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %call89, ptr %access, align 8
  call fastcc void @zl6100_wait(ptr noundef nonnull %call.i)
  %and = and i32 %call84, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool91.not = icmp eq i32 %and, 0
  %arrayidx97 = getelementptr %struct.zl6100_data, ptr %call.i, i32 0, i32 3, i32 7, i32 1
  br i1 %tobool91.not, label %if.end88.if.end98_crit_edge, label %if.then92

if.end88.if.end98_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then92:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx97, align 4
  %or95 = or i32 %25, 8208
  br label %if.end98

if.end98:                                         ; preds = %if.then92, %if.end88.if.end98_crit_edge
  %.sink = phi i32 [ %or95, %if.then92 ], [ 12308, %if.end88.if.end98_crit_edge ]
  %26 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %arrayidx97, align 4
  br label %for.body102

for.body102:                                      ; preds = %zl6100_wait.exit261.for.body102_crit_edge, %if.end98
  %cmp100 = phi i1 [ true, %if.end98 ], [ false, %zl6100_wait.exit261.for.body102_crit_edge ]
  %i.0266 = phi i32 [ 0, %if.end98 ], [ 1, %zl6100_wait.exit261.for.body102_crit_edge ]
  %conv103 = trunc i32 %i.0266 to i8
  %call104 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %conv103) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %for.body102.cleanup_crit_edge, label %if.end108

for.body102.cleanup_crit_edge:                    ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end108:                                        ; preds = %for.body102
  %call109 = call i64 @ktime_get() #9
  %27 = ptrtoint ptr %access to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call109, ptr %access, align 8
  %28 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %delay, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %if.end108.zl6100_wait.exit_crit_edge, label %if.then.i

if.end108.zl6100_wait.exit_crit_edge:             ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %zl6100_wait.exit

if.then.i:                                        ; preds = %if.end108
  %call.i234 = call i64 @ktime_get() #9
  %30 = ptrtoint ptr %access to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %access, align 8
  %sub.i.i = sub i64 %call.i234, %31
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i, 0
  %32 = call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #9
  %33 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %32, i32 0) #14, !srcloc !57
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %33, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %33, 1
  %34 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %32, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #14, !srcloc !58
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %34, 0
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i
  %cond213.i.i.i.i = select i1 %cmp8.i.i.i.i, i64 %sub210.i.i.i.i, i64 %div1811.i.i.i.i
  %35 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay, align 8
  %conv.i235 = sext i32 %36 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i.i, i64 %conv.i235)
  %cmp.i236 = icmp slt i64 %cond213.i.i.i.i, %conv.i235
  br i1 %cmp.i236, label %cond.false17.i, label %if.then.i.zl6100_wait.exit_crit_edge

if.then.i.zl6100_wait.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %zl6100_wait.exit

cond.false17.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %38 = trunc i64 %cond213.i.i.i.i to i32
  %conv21.i = sub i32 %36, %38
  call void %37(i32 noundef %conv21.i) #9
  br label %zl6100_wait.exit

zl6100_wait.exit:                                 ; preds = %cond.false17.i, %if.then.i.zl6100_wait.exit_crit_edge, %if.end108.zl6100_wait.exit_crit_edge
  %call111 = call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -47) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %zl6100_wait.exit.cleanup_crit_edge, label %if.end115

zl6100_wait.exit.cleanup_crit_edge:               ; preds = %zl6100_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end115:                                        ; preds = %zl6100_wait.exit
  %and116 = and i32 %call111, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end122_crit_edge, label %if.then118

if.end115.if.end122_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx120 = getelementptr %struct.zl6100_data, ptr %call.i, i32 0, i32 3, i32 7, i32 %i.0266
  %39 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx120, align 4
  %or121 = or i32 %40, 1024
  store i32 %or121, ptr %arrayidx120, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then118, %if.end115.if.end122_crit_edge
  %call123 = call i64 @ktime_get() #9
  %41 = ptrtoint ptr %access to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %call123, ptr %access, align 8
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delay, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i238 = icmp eq i32 %43, 0
  br i1 %tobool.not.i238, label %if.end122.zl6100_wait.exit261_crit_edge, label %if.then.i251

if.end122.zl6100_wait.exit261_crit_edge:          ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %zl6100_wait.exit261

if.then.i251:                                     ; preds = %if.end122
  %call.i239 = call i64 @ktime_get() #9
  %44 = ptrtoint ptr %access to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %access, align 8
  %sub.i.i241 = sub i64 %call.i239, %45
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i241)
  %cmp8.i.i.i.i242 = icmp slt i64 %sub.i.i241, 0
  %46 = call i64 @llvm.abs.i64(i64 %sub.i.i241, i1 false) #9
  %47 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %46, i32 0) #14, !srcloc !57
  %asmresult.i.i.i.i.i243 = extractvalue { i64, i32 } %47, 0
  %asmresult4.i.i.i.i.i244 = extractvalue { i64, i32 } %47, 1
  %48 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %46, i64 %asmresult.i.i.i.i.i243, i32 %asmresult4.i.i.i.i.i244) #14, !srcloc !58
  %asmresult10.i.i.i.i.i245 = extractvalue { i64, i32 } %48, 0
  %div1811.i.i.i.i246 = lshr i64 %asmresult10.i.i.i.i.i245, 9
  %sub210.i.i.i.i247 = sub nsw i64 0, %div1811.i.i.i.i246
  %cond213.i.i.i.i248 = select i1 %cmp8.i.i.i.i242, i64 %sub210.i.i.i.i247, i64 %div1811.i.i.i.i246
  %49 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %delay, align 8
  %conv.i249 = sext i32 %50 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i.i248, i64 %conv.i249)
  %cmp.i250 = icmp slt i64 %cond213.i.i.i.i248, %conv.i249
  br i1 %cmp.i250, label %cond.false17.i260, label %if.then.i251.zl6100_wait.exit261_crit_edge

if.then.i251.zl6100_wait.exit261_crit_edge:       ; preds = %if.then.i251
  call void @__sanitizer_cov_trace_pc() #11
  br label %zl6100_wait.exit261

cond.false17.i260:                                ; preds = %if.then.i251
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %52 = trunc i64 %cond213.i.i.i.i248 to i32
  %conv21.i259 = sub i32 %50, %52
  call void %51(i32 noundef %conv21.i259) #9
  br label %zl6100_wait.exit261

zl6100_wait.exit261:                              ; preds = %cond.false17.i260, %if.then.i251.zl6100_wait.exit261_crit_edge, %if.end122.zl6100_wait.exit261_crit_edge
  br i1 %cmp100, label %zl6100_wait.exit261.for.body102_crit_edge, label %for.end126

zl6100_wait.exit261.for.body102_crit_edge:        ; preds = %zl6100_wait.exit261
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body102

for.end126:                                       ; preds = %zl6100_wait.exit261
  %call127 = call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %for.end126.cleanup_crit_edge, label %if.end131

for.end126.cleanup_crit_edge:                     ; preds = %for.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end131:                                        ; preds = %for.end126
  %and132 = and i32 %call127, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.end131.if.end152_crit_edge, label %if.end131.if.end152.sink.split_crit_edge

if.end131.if.end152.sink.split_crit_edge:         ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152.sink.split

if.end131.if.end152_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

if.else139:                                       ; preds = %if.end75.if.else139_crit_edge, %if.end50.if.else139_crit_edge
  %call140 = call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %cmp141 = icmp slt i32 %call140, 0
  br i1 %cmp141, label %if.else139.cleanup_crit_edge, label %if.end144

if.else139.cleanup_crit_edge:                     ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end144:                                        ; preds = %if.else139
  %and145 = and i32 %call140, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.end144.if.end152_crit_edge, label %if.end144.if.end152.sink.split_crit_edge

if.end144.if.end152.sink.split_crit_edge:         ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152.sink.split

if.end144.if.end152_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

if.end152.sink.split:                             ; preds = %if.end144.if.end152.sink.split_crit_edge, %if.end131.if.end152.sink.split_crit_edge
  %.sink272 = phi i32 [ 2048, %if.end131.if.end152.sink.split_crit_edge ], [ 1024, %if.end144.if.end152.sink.split_crit_edge ]
  %53 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %func, align 4
  %or150 = or i32 %54, %.sink272
  store i32 %or150, ptr %func, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.end152.sink.split, %if.end144.if.end152_crit_edge, %if.end131.if.end152_crit_edge
  %call153 = call i64 @ktime_get() #9
  %55 = ptrtoint ptr %access to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %call153, ptr %access, align 8
  call fastcc void @zl6100_wait(ptr noundef nonnull %call.i)
  %read_word_data = getelementptr inbounds %struct.zl6100_data, ptr %call.i, i32 0, i32 3, i32 10
  %56 = ptrtoint ptr %read_word_data to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @zl6100_read_word_data, ptr %read_word_data, align 4
  %read_byte_data = getelementptr inbounds %struct.zl6100_data, ptr %call.i, i32 0, i32 3, i32 9
  %57 = ptrtoint ptr %read_byte_data to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @zl6100_read_byte_data, ptr %read_byte_data, align 4
  %write_word_data = getelementptr inbounds %struct.zl6100_data, ptr %call.i, i32 0, i32 3, i32 11
  %58 = ptrtoint ptr %write_word_data to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @zl6100_write_word_data, ptr %write_word_data, align 4
  %write_byte = getelementptr inbounds %struct.zl6100_data, ptr %call.i, i32 0, i32 3, i32 12
  %59 = ptrtoint ptr %write_byte to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @zl6100_write_byte, ptr %write_byte, align 4
  %call155 = call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef %info52) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end152, %if.else139.cleanup_crit_edge, %for.end126.cleanup_crit_edge, %zl6100_wait.exit.cleanup_crit_edge, %for.body102.cleanup_crit_edge, %if.then79.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %do.end27, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call155, %if.end152 ], [ -19, %do.end27 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end45.cleanup_crit_edge ], [ %call84, %if.then79.cleanup_crit_edge ], [ %call127, %for.end126.cleanup_crit_edge ], [ %call140, %if.else139.cleanup_crit_edge ], [ %call111, %zl6100_wait.exit.cleanup_crit_edge ], [ %call104, %for.body102.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %device_id) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_block_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zl6100_wait(ptr nocapture noundef readonly %data) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %delay = getelementptr inbounds %struct.zl6100_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then:                                          ; preds = %entry
  %call = tail call i64 @ktime_get() #9
  %access = getelementptr inbounds %struct.zl6100_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %access to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %access, align 8
  %sub.i = sub i64 %call, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #9
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #14, !srcloc !57
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #14, !srcloc !58
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %7 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delay, align 8
  %conv = sext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i, i64 %conv)
  %cmp = icmp slt i64 %cond213.i.i.i, %conv
  br i1 %cmp, label %cond.false17, label %if.then.if.end23_crit_edge

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

cond.false17:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %10 = trunc i64 %cond213.i.i.i to i32
  %conv21 = sub i32 %8, %10
  tail call void %9(i32 noundef %conv21) #9
  br label %if.end23

if.end23:                                         ; preds = %cond.false17, %if.then.if.end23_crit_edge, %entry.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl6100_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %page)
  %cmp.not = icmp sgt i32 %1, %page
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call, i32 -20
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %reg, label %if.then2.sw.default_crit_edge [
    i32 66, label %if.then2.cleanup_crit_edge
    i32 67, label %if.then2.cleanup_crit_edge142
    i32 74, label %if.then2.cleanup_crit_edge143
    i32 289, label %if.then2.sw.epilog10_crit_edge
    i32 291, label %if.then2.sw.bb5_crit_edge
    i32 293, label %if.then2.sw.bb5_crit_edge144
    i32 290, label %if.then2.sw.bb6_crit_edge
    i32 292, label %if.then2.sw.bb6_crit_edge145
  ]

if.then2.sw.bb6_crit_edge145:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

if.then2.sw.bb6_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

if.then2.sw.bb5_crit_edge144:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

if.then2.sw.bb5_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

if.then2.sw.epilog10_crit_edge:                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog10

if.then2.cleanup_crit_edge143:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2.cleanup_crit_edge142:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2.sw.default_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

if.end3:                                          ; preds = %if.end
  %switch.tableidx = add i32 %reg, -289
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 5
  br i1 %5, label %switch.lookup, label %if.end3.sw.default_crit_edge

if.end3.sw.default_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

sw.bb5:                                           ; preds = %if.then2.sw.bb5_crit_edge, %if.then2.sw.bb5_crit_edge144
  br label %sw.epilog10

sw.bb6:                                           ; preds = %if.then2.sw.bb6_crit_edge, %if.then2.sw.bb6_crit_edge145
  br label %sw.epilog10

sw.default:                                       ; preds = %if.end3.sw.default_crit_edge, %if.then2.sw.default_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %reg)
  %cmp7 = icmp sgt i32 %reg, 255
  br i1 %cmp7, label %sw.default.cleanup_crit_edge, label %if.end9

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast = trunc i32 %reg to i8
  br label %sw.epilog10

switch.lookup:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.zl6100_read_word_data, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %6)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog10

sw.epilog10:                                      ; preds = %switch.lookup, %if.end9, %sw.bb6, %sw.bb5, %if.then2.sw.epilog10_crit_edge
  %vreg.0 = phi i8 [ %phi.cast, %if.end9 ], [ -10, %sw.bb6 ], [ -11, %sw.bb5 ], [ -9, %if.then2.sw.epilog10_crit_edge ], [ %switch.load, %switch.lookup ]
  %delay.i = getelementptr i8, ptr %call, i32 -4
  %7 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delay.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %sw.epilog10.zl6100_wait.exit_crit_edge, label %if.then.i

sw.epilog10.zl6100_wait.exit_crit_edge:           ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #11
  br label %zl6100_wait.exit

if.then.i:                                        ; preds = %sw.epilog10
  %call.i = tail call i64 @ktime_get() #9
  %access.i = getelementptr i8, ptr %call, i32 -12
  %9 = ptrtoint ptr %access.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %access.i, align 8
  %sub.i.i = sub i64 %call.i, %10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i, 0
  %11 = tail call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #9
  %12 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %11, i32 0) #14, !srcloc !57
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %12, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %12, 1
  %13 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %11, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #14, !srcloc !58
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %13, 0
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i
  %cond213.i.i.i.i = select i1 %cmp8.i.i.i.i, i64 %sub210.i.i.i.i, i64 %div1811.i.i.i.i
  %14 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %delay.i, align 8
  %conv.i = sext i32 %15 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i.i, i64 %conv.i)
  %cmp.i = icmp slt i64 %cond213.i.i.i.i, %conv.i
  br i1 %cmp.i, label %cond.false17.i, label %if.then.i.zl6100_wait.exit_crit_edge

if.then.i.zl6100_wait.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %zl6100_wait.exit

cond.false17.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %17 = trunc i64 %cond213.i.i.i.i to i32
  %conv21.i = sub i32 %15, %17
  tail call void %16(i32 noundef %conv21.i) #9
  br label %zl6100_wait.exit

zl6100_wait.exit:                                 ; preds = %cond.false17.i, %if.then.i.zl6100_wait.exit_crit_edge, %sw.epilog10.zl6100_wait.exit_crit_edge
  %call11 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext %vreg.0) #9
  %call12 = tail call i64 @ktime_get() #9
  %access = getelementptr i8, ptr %call, i32 -12
  %18 = ptrtoint ptr %access to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call12, ptr %access, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp13 = icmp slt i32 %call11, 0
  br i1 %cmp13, label %zl6100_wait.exit.cleanup_crit_edge, label %if.end16

zl6100_wait.exit.cleanup_crit_edge:               ; preds = %zl6100_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %zl6100_wait.exit
  %19 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %reg, label %if.end16.cleanup_crit_edge [
    i32 291, label %sw.bb17
    i32 290, label %sw.bb32
  ]

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb17:                                          ; preds = %if.end16
  %conv18 = trunc i32 %call11 to i16
  %shr.i = ashr i16 %conv18, 11
  %shr5.i140 = shl i32 %call11, 21
  %shr5.i = ashr exact i32 %shr5.i140, 21
  %mul.i = mul nsw i32 %shr5.i, 1000
  %conv6.i = sext i16 %shr.i to i32
  %shl9.i = shl i32 %mul.i, %conv6.i
  %sub.i86 = sub nsw i32 0, %conv6.i
  %shr11.i = ashr i32 %mul.i, %sub.i86
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv18)
  %cmp19.i = icmp slt i16 %conv18, 0
  %val.0.i = select i1 %cmp19.i, i32 %shr11.i, i32 %shl9.i
  %mul = mul i32 %val.0.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp21 = icmp sgt i32 %mul, 0
  %cond.in.v = select i1 %cmp21, i32 5, i32 -5
  %cond.in = add i32 %cond.in.v, %mul
  %cond.in.off = add i32 %cond.in, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %cond.in.off)
  %20 = icmp ult i32 %cond.in.off, 19
  br i1 %20, label %sw.bb17.cleanup_crit_edge, label %if.end.i

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb17
  %cond = sdiv i32 %cond.in, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %cond.in)
  %cmp1.i = icmp slt i32 %cond.in, -9
  %21 = tail call i32 @llvm.abs.i32(i32 %cond, i1 true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1022999, i32 %21)
  %cmp467.i = icmp ugt i32 %21, 1022999
  br i1 %cmp467.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.while.cond7.preheader.i_crit_edge

if.end.i.while.cond7.preheader.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond7.preheader.i

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

while.cond7.preheader.i:                          ; preds = %while.body.i.while.cond7.preheader.i_crit_edge, %if.end.i.while.cond7.preheader.i_crit_edge
  %val.addr.1.lcssa.i = phi i32 [ %21, %if.end.i.while.cond7.preheader.i_crit_edge ], [ %shr66.i, %while.body.i.while.cond7.preheader.i_crit_edge ]
  %exponent.0.lcssa.i = phi i16 [ 0, %if.end.i.while.cond7.preheader.i_crit_edge ], [ %inc.i, %while.body.i.while.cond7.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 511000, i32 %val.addr.1.lcssa.i)
  %cmp871.i = icmp ult i32 %val.addr.1.lcssa.i, 511000
  br i1 %cmp871.i, label %while.cond7.preheader.i.while.body15.i_crit_edge, label %while.cond7.preheader.i.while.end16.i_crit_edge

while.cond7.preheader.i.while.end16.i_crit_edge:  ; preds = %while.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end16.i

while.cond7.preheader.i.while.body15.i_crit_edge: ; preds = %while.cond7.preheader.i
  br label %while.body15.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %exponent.069.i = phi i16 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end.i.while.body.i_crit_edge ]
  %val.addr.168.i = phi i32 [ %shr66.i, %while.body.i.while.body.i_crit_edge ], [ %21, %if.end.i.while.body.i_crit_edge ]
  %inc.i = add nuw nsw i16 %exponent.069.i, 1
  %shr66.i = lshr i32 %val.addr.168.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2045999, i32 %val.addr.168.i)
  %cmp4.i = icmp ugt i32 %val.addr.168.i, 2045999
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %exponent.069.i)
  %cmp5.i = icmp ult i16 %exponent.069.i, 14
  %or.cond.i = select i1 %cmp4.i, i1 %cmp5.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.cond7.preheader.i_crit_edge

while.body.i.while.cond7.preheader.i_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond7.preheader.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body15.i:                                   ; preds = %while.body15.i.while.body15.i_crit_edge, %while.cond7.preheader.i.while.body15.i_crit_edge
  %exponent.175.i = phi i16 [ %dec.i, %while.body15.i.while.body15.i_crit_edge ], [ %exponent.0.lcssa.i, %while.cond7.preheader.i.while.body15.i_crit_edge ]
  %val.addr.274.i = phi i32 [ %shl.i, %while.body15.i.while.body15.i_crit_edge ], [ %val.addr.1.lcssa.i, %while.cond7.preheader.i.while.body15.i_crit_edge ]
  %dec.i = add nsw i16 %exponent.175.i, -1
  %shl.i = shl i32 %val.addr.274.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 511000, i32 %shl.i)
  %cmp8.i = icmp slt i32 %shl.i, 511000
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14, i16 %exponent.175.i)
  %cmp12.i = icmp sgt i16 %exponent.175.i, -14
  %or.cond65.i = select i1 %cmp8.i, i1 %cmp12.i, i1 false
  br i1 %or.cond65.i, label %while.body15.i.while.body15.i_crit_edge, label %while.body15.i.while.end16.i_crit_edge

while.body15.i.while.end16.i_crit_edge:           ; preds = %while.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end16.i

while.body15.i.while.body15.i_crit_edge:          ; preds = %while.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body15.i

while.end16.i:                                    ; preds = %while.body15.i.while.end16.i_crit_edge, %while.cond7.preheader.i.while.end16.i_crit_edge
  %val.addr.2.lcssa.i = phi i32 [ %val.addr.1.lcssa.i, %while.cond7.preheader.i.while.end16.i_crit_edge ], [ %shl.i, %while.body15.i.while.end16.i_crit_edge ]
  %exponent.1.lcssa.i = phi i16 [ %exponent.0.lcssa.i, %while.cond7.preheader.i.while.end16.i_crit_edge ], [ %dec.i, %while.body15.i.while.end16.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.addr.2.lcssa.i)
  %cmp17.i = icmp sgt i32 %val.addr.2.lcssa.i, 0
  %cond.in.v.i = select i1 %cmp17.i, i32 500, i32 -500
  %cond.in.i = add i32 %cond.in.v.i, %val.addr.2.lcssa.i
  %cond.i = sdiv i32 %cond.in.i, 1000
  %conv27.i = trunc i32 %cond.i to i16
  %sext.i = shl i32 %cond.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 67043328, i32 %sext.i)
  %cmp29.i = icmp sgt i32 %sext.i, 67043328
  %spec.store.select.i = select i1 %cmp29.i, i16 1023, i16 %conv27.i
  %sub35.i = sub i16 0, %spec.store.select.i
  %mantissa.0.i = select i1 %cmp1.i, i16 %sub35.i, i16 %spec.store.select.i
  %22 = and i16 %mantissa.0.i, 2047
  %shl40.i = shl i16 %exponent.1.lcssa.i, 11
  %or.i = or i16 %22, %shl40.i
  %phi.cast141 = zext i16 %or.i to i32
  br label %cleanup

sw.bb32:                                          ; preds = %if.end16
  %conv34 = trunc i32 %call11 to i16
  %shr.i88 = ashr i16 %conv34, 11
  %shr5.i89138 = shl i32 %call11, 21
  %shr5.i89 = ashr exact i32 %shr5.i89138, 21
  %mul.i90 = mul nsw i32 %shr5.i89, 1000
  %conv6.i91 = sext i16 %shr.i88 to i32
  %shl9.i92 = shl i32 %mul.i90, %conv6.i91
  %sub.i93 = sub nsw i32 0, %conv6.i91
  %shr11.i94 = ashr i32 %mul.i90, %sub.i93
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv34)
  %cmp19.i95 = icmp slt i16 %conv34, 0
  %val.0.i96 = select i1 %cmp19.i95, i32 %shr11.i94, i32 %shl9.i92
  %mul36 = mul i32 %val.0.i96, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul36)
  %cmp39 = icmp sgt i32 %mul36, 0
  %cond54.in.v = select i1 %cmp39, i32 5, i32 -5
  %cond54.in = add i32 %cond54.in.v, %mul36
  %cond54.in.off = add i32 %cond54.in, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %cond54.in.off)
  %23 = icmp ult i32 %cond54.in.off, 19
  br i1 %23, label %sw.bb32.cleanup_crit_edge, label %if.end.i100

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i100:                                      ; preds = %sw.bb32
  %cond54 = sdiv i32 %cond54.in, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %cond54.in)
  %cmp1.i98 = icmp slt i32 %cond54.in, -9
  %24 = tail call i32 @llvm.abs.i32(i32 %cond54, i1 true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1022999, i32 %24)
  %cmp467.i99 = icmp ugt i32 %24, 1022999
  br i1 %cmp467.i99, label %if.end.i100.while.body.i112_crit_edge, label %if.end.i100.while.cond7.preheader.i104_crit_edge

if.end.i100.while.cond7.preheader.i104_crit_edge: ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond7.preheader.i104

if.end.i100.while.body.i112_crit_edge:            ; preds = %if.end.i100
  br label %while.body.i112

while.cond7.preheader.i104:                       ; preds = %while.body.i112.while.cond7.preheader.i104_crit_edge, %if.end.i100.while.cond7.preheader.i104_crit_edge
  %val.addr.1.lcssa.i101 = phi i32 [ %24, %if.end.i100.while.cond7.preheader.i104_crit_edge ], [ %shr66.i108, %while.body.i112.while.cond7.preheader.i104_crit_edge ]
  %exponent.0.lcssa.i102 = phi i16 [ 0, %if.end.i100.while.cond7.preheader.i104_crit_edge ], [ %inc.i107, %while.body.i112.while.cond7.preheader.i104_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 511000, i32 %val.addr.1.lcssa.i101)
  %cmp871.i103 = icmp ult i32 %val.addr.1.lcssa.i101, 511000
  br i1 %cmp871.i103, label %while.cond7.preheader.i104.while.body15.i120_crit_edge, label %while.cond7.preheader.i104.while.end16.i135_crit_edge

while.cond7.preheader.i104.while.end16.i135_crit_edge: ; preds = %while.cond7.preheader.i104
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end16.i135

while.cond7.preheader.i104.while.body15.i120_crit_edge: ; preds = %while.cond7.preheader.i104
  br label %while.body15.i120

while.body.i112:                                  ; preds = %while.body.i112.while.body.i112_crit_edge, %if.end.i100.while.body.i112_crit_edge
  %exponent.069.i105 = phi i16 [ %inc.i107, %while.body.i112.while.body.i112_crit_edge ], [ 0, %if.end.i100.while.body.i112_crit_edge ]
  %val.addr.168.i106 = phi i32 [ %shr66.i108, %while.body.i112.while.body.i112_crit_edge ], [ %24, %if.end.i100.while.body.i112_crit_edge ]
  %inc.i107 = add nuw nsw i16 %exponent.069.i105, 1
  %shr66.i108 = lshr i32 %val.addr.168.i106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2045999, i32 %val.addr.168.i106)
  %cmp4.i109 = icmp ugt i32 %val.addr.168.i106, 2045999
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %exponent.069.i105)
  %cmp5.i110 = icmp ult i16 %exponent.069.i105, 14
  %or.cond.i111 = select i1 %cmp4.i109, i1 %cmp5.i110, i1 false
  br i1 %or.cond.i111, label %while.body.i112.while.body.i112_crit_edge, label %while.body.i112.while.cond7.preheader.i104_crit_edge

while.body.i112.while.cond7.preheader.i104_crit_edge: ; preds = %while.body.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond7.preheader.i104

while.body.i112.while.body.i112_crit_edge:        ; preds = %while.body.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i112

while.body15.i120:                                ; preds = %while.body15.i120.while.body15.i120_crit_edge, %while.cond7.preheader.i104.while.body15.i120_crit_edge
  %exponent.175.i113 = phi i16 [ %dec.i115, %while.body15.i120.while.body15.i120_crit_edge ], [ %exponent.0.lcssa.i102, %while.cond7.preheader.i104.while.body15.i120_crit_edge ]
  %val.addr.274.i114 = phi i32 [ %shl.i116, %while.body15.i120.while.body15.i120_crit_edge ], [ %val.addr.1.lcssa.i101, %while.cond7.preheader.i104.while.body15.i120_crit_edge ]
  %dec.i115 = add nsw i16 %exponent.175.i113, -1
  %shl.i116 = shl i32 %val.addr.274.i114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 511000, i32 %shl.i116)
  %cmp8.i117 = icmp slt i32 %shl.i116, 511000
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14, i16 %exponent.175.i113)
  %cmp12.i118 = icmp sgt i16 %exponent.175.i113, -14
  %or.cond65.i119 = select i1 %cmp8.i117, i1 %cmp12.i118, i1 false
  br i1 %or.cond65.i119, label %while.body15.i120.while.body15.i120_crit_edge, label %while.body15.i120.while.end16.i135_crit_edge

while.body15.i120.while.end16.i135_crit_edge:     ; preds = %while.body15.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end16.i135

while.body15.i120.while.body15.i120_crit_edge:    ; preds = %while.body15.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body15.i120

while.end16.i135:                                 ; preds = %while.body15.i120.while.end16.i135_crit_edge, %while.cond7.preheader.i104.while.end16.i135_crit_edge
  %val.addr.2.lcssa.i121 = phi i32 [ %val.addr.1.lcssa.i101, %while.cond7.preheader.i104.while.end16.i135_crit_edge ], [ %shl.i116, %while.body15.i120.while.end16.i135_crit_edge ]
  %exponent.1.lcssa.i122 = phi i16 [ %exponent.0.lcssa.i102, %while.cond7.preheader.i104.while.end16.i135_crit_edge ], [ %dec.i115, %while.body15.i120.while.end16.i135_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.addr.2.lcssa.i121)
  %cmp17.i123 = icmp sgt i32 %val.addr.2.lcssa.i121, 0
  %cond.in.v.i124 = select i1 %cmp17.i123, i32 500, i32 -500
  %cond.in.i125 = add i32 %cond.in.v.i124, %val.addr.2.lcssa.i121
  %cond.i126 = sdiv i32 %cond.in.i125, 1000
  %conv27.i127 = trunc i32 %cond.i126 to i16
  %sext.i128 = shl i32 %cond.i126, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 67043328, i32 %sext.i128)
  %cmp29.i129 = icmp sgt i32 %sext.i128, 67043328
  %spec.store.select.i130 = select i1 %cmp29.i129, i16 1023, i16 %conv27.i127
  %sub35.i131 = sub i16 0, %spec.store.select.i130
  %mantissa.0.i132 = select i1 %cmp1.i98, i16 %sub35.i131, i16 %spec.store.select.i130
  %25 = and i16 %mantissa.0.i132, 2047
  %shl40.i133 = shl i16 %exponent.1.lcssa.i122, 11
  %or.i134 = or i16 %25, %shl40.i133
  %phi.cast139 = zext i16 %or.i134 to i32
  br label %cleanup

cleanup:                                          ; preds = %while.end16.i135, %sw.bb32.cleanup_crit_edge, %while.end16.i, %sw.bb17.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %zl6100_wait.exit.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.then2.cleanup_crit_edge142, %if.then2.cleanup_crit_edge143, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ -6, %if.then2.cleanup_crit_edge ], [ -6, %if.then2.cleanup_crit_edge142 ], [ -6, %if.then2.cleanup_crit_edge143 ], [ -6, %sw.default.cleanup_crit_edge ], [ %call11, %zl6100_wait.exit.cleanup_crit_edge ], [ %call11, %if.end16.cleanup_crit_edge ], [ %phi.cast141, %while.end16.i ], [ 0, %sw.bb17.cleanup_crit_edge ], [ %phi.cast139, %while.end16.i135 ], [ 0, %sw.bb32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl6100_read_byte_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %page)
  %cmp.not = icmp sgt i32 %1, %page
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %delay.i = getelementptr i8, ptr %call, i32 -4
  %2 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.zl6100_wait.exit_crit_edge, label %if.then.i

if.end.zl6100_wait.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %zl6100_wait.exit

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i64 @ktime_get() #9
  %access.i = getelementptr i8, ptr %call, i32 -12
  %4 = ptrtoint ptr %access.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %access.i, align 8
  %sub.i.i = sub i64 %call.i, %5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i, 0
  %6 = tail call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #9
  %7 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %6, i32 0) #14, !srcloc !57
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %7, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %7, 1
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %6, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #14, !srcloc !58
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %8, 0
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i
  %cond213.i.i.i.i = select i1 %cmp8.i.i.i.i, i64 %sub210.i.i.i.i, i64 %div1811.i.i.i.i
  %9 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay.i, align 8
  %conv.i = sext i32 %10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i.i, i64 %conv.i)
  %cmp.i = icmp slt i64 %cond213.i.i.i.i, %conv.i
  br i1 %cmp.i, label %cond.false17.i, label %if.then.i.zl6100_wait.exit_crit_edge

if.then.i.zl6100_wait.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %zl6100_wait.exit

cond.false17.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %12 = trunc i64 %cond213.i.i.i.i to i32
  %conv21.i = sub i32 %10, %12
  tail call void %11(i32 noundef %conv21.i) #9
  br label %zl6100_wait.exit

zl6100_wait.exit:                                 ; preds = %cond.false17.i, %if.then.i.zl6100_wait.exit_crit_edge, %if.end.zl6100_wait.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 294, i32 %reg)
  %cond = icmp eq i32 %reg, 294
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %zl6100_wait.exit
  %call1 = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %sw.bb.sw.epilog_crit_edge, label %if.end4

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end4:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %call1, 32
  %and7 = shl i32 %call1, 2
  %13 = and i32 %and7, 64
  %14 = or i32 %13, %and
  %and12 = shl i32 %call1, 3
  %15 = and i32 %and12, 16
  %16 = or i32 %14, %15
  %and17 = shl i32 %call1, 7
  %17 = and i32 %and17, 128
  %18 = or i32 %16, %17
  br label %sw.epilog

sw.default:                                       ; preds = %zl6100_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %reg to i8
  %call22 = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext %conv) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end4, %sw.bb.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call1, %sw.bb.sw.epilog_crit_edge ], [ %18, %if.end4 ], [ %call22, %sw.default ]
  %call23 = tail call i64 @ktime_get() #9
  %access = getelementptr i8, ptr %call, i32 -12
  %19 = ptrtoint ptr %access to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call23, ptr %access, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl6100_write_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg, i16 noundef zeroext %word) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %page)
  %cmp.not = icmp sgt i32 %1, %page
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %reg, label %sw.default [
    i32 291, label %sw.bb
    i32 293, label %sw.bb12
    i32 290, label %sw.bb13
    i32 292, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.end
  %shr.i = ashr i16 %word, 11
  %3 = shl i16 %word, 5
  %4 = ashr exact i16 %3, 5
  %shr5.i = sext i16 %4 to i32
  %mul.i = mul nsw i32 %shr5.i, 1000
  %conv6.i = sext i16 %shr.i to i32
  %shl9.i = shl i32 %mul.i, %conv6.i
  %sub.i = sub nsw i32 0, %conv6.i
  %shr11.i = ashr i32 %mul.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %word)
  %cmp19.i = icmp slt i16 %word, 0
  %val.0.i = select i1 %cmp19.i, i32 %shr11.i, i32 %shl9.i
  %mul = mul i32 %val.0.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp3 = icmp sgt i32 %mul, 0
  %cond.in.v = select i1 %cmp3, i32 4, i32 -4
  %cond.in = add i32 %cond.in.v, %mul
  %cond.in.off = add i32 %cond.in, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %cond.in.off)
  %5 = icmp ult i32 %cond.in.off, 17
  br i1 %5, label %sw.bb.zl6100_d2l.exit_crit_edge, label %if.end.i

sw.bb.zl6100_d2l.exit_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %zl6100_d2l.exit

if.end.i:                                         ; preds = %sw.bb
  %cond = sdiv i32 %cond.in, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %cond.in)
  %cmp1.i = icmp slt i32 %cond.in, -8
  %6 = tail call i32 @llvm.abs.i32(i32 %cond, i1 true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1022999, i32 %6)
  %cmp467.i = icmp ugt i32 %6, 1022999
  br i1 %cmp467.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.while.cond7.preheader.i_crit_edge

if.end.i.while.cond7.preheader.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond7.preheader.i

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

while.cond7.preheader.i:                          ; preds = %while.body.i.while.cond7.preheader.i_crit_edge, %if.end.i.while.cond7.preheader.i_crit_edge
  %val.addr.1.lcssa.i = phi i32 [ %6, %if.end.i.while.cond7.preheader.i_crit_edge ], [ %shr66.i, %while.body.i.while.cond7.preheader.i_crit_edge ]
  %exponent.0.lcssa.i = phi i16 [ 0, %if.end.i.while.cond7.preheader.i_crit_edge ], [ %inc.i, %while.body.i.while.cond7.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 511000, i32 %val.addr.1.lcssa.i)
  %cmp871.i = icmp ult i32 %val.addr.1.lcssa.i, 511000
  br i1 %cmp871.i, label %while.cond7.preheader.i.while.body15.i_crit_edge, label %while.cond7.preheader.i.while.end16.i_crit_edge

while.cond7.preheader.i.while.end16.i_crit_edge:  ; preds = %while.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end16.i

while.cond7.preheader.i.while.body15.i_crit_edge: ; preds = %while.cond7.preheader.i
  br label %while.body15.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %exponent.069.i = phi i16 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end.i.while.body.i_crit_edge ]
  %val.addr.168.i = phi i32 [ %shr66.i, %while.body.i.while.body.i_crit_edge ], [ %6, %if.end.i.while.body.i_crit_edge ]
  %inc.i = add nuw nsw i16 %exponent.069.i, 1
  %shr66.i = lshr i32 %val.addr.168.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2045999, i32 %val.addr.168.i)
  %cmp4.i = icmp ugt i32 %val.addr.168.i, 2045999
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %exponent.069.i)
  %cmp5.i = icmp ult i16 %exponent.069.i, 14
  %or.cond.i = select i1 %cmp4.i, i1 %cmp5.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.cond7.preheader.i_crit_edge

while.body.i.while.cond7.preheader.i_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond7.preheader.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body15.i:                                   ; preds = %while.body15.i.while.body15.i_crit_edge, %while.cond7.preheader.i.while.body15.i_crit_edge
  %exponent.175.i = phi i16 [ %dec.i, %while.body15.i.while.body15.i_crit_edge ], [ %exponent.0.lcssa.i, %while.cond7.preheader.i.while.body15.i_crit_edge ]
  %val.addr.274.i = phi i32 [ %shl.i, %while.body15.i.while.body15.i_crit_edge ], [ %val.addr.1.lcssa.i, %while.cond7.preheader.i.while.body15.i_crit_edge ]
  %dec.i = add nsw i16 %exponent.175.i, -1
  %shl.i = shl i32 %val.addr.274.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 511000, i32 %shl.i)
  %cmp8.i = icmp slt i32 %shl.i, 511000
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14, i16 %exponent.175.i)
  %cmp12.i = icmp sgt i16 %exponent.175.i, -14
  %or.cond65.i = select i1 %cmp8.i, i1 %cmp12.i, i1 false
  br i1 %or.cond65.i, label %while.body15.i.while.body15.i_crit_edge, label %while.body15.i.while.end16.i_crit_edge

while.body15.i.while.end16.i_crit_edge:           ; preds = %while.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end16.i

while.body15.i.while.body15.i_crit_edge:          ; preds = %while.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body15.i

while.end16.i:                                    ; preds = %while.body15.i.while.end16.i_crit_edge, %while.cond7.preheader.i.while.end16.i_crit_edge
  %val.addr.2.lcssa.i = phi i32 [ %val.addr.1.lcssa.i, %while.cond7.preheader.i.while.end16.i_crit_edge ], [ %shl.i, %while.body15.i.while.end16.i_crit_edge ]
  %exponent.1.lcssa.i = phi i16 [ %exponent.0.lcssa.i, %while.cond7.preheader.i.while.end16.i_crit_edge ], [ %dec.i, %while.body15.i.while.end16.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.addr.2.lcssa.i)
  %cmp17.i = icmp sgt i32 %val.addr.2.lcssa.i, 0
  %cond.in.v.i = select i1 %cmp17.i, i32 500, i32 -500
  %cond.in.i = add i32 %cond.in.v.i, %val.addr.2.lcssa.i
  %cond.i = sdiv i32 %cond.in.i, 1000
  %conv27.i = trunc i32 %cond.i to i16
  %sext.i = shl i32 %cond.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 67043328, i32 %sext.i)
  %cmp29.i = icmp sgt i32 %sext.i, 67043328
  %spec.store.select.i = select i1 %cmp29.i, i16 1023, i16 %conv27.i
  %sub35.i = sub i16 0, %spec.store.select.i
  %mantissa.0.i = select i1 %cmp1.i, i16 %sub35.i, i16 %spec.store.select.i
  %7 = and i16 %mantissa.0.i, 2047
  %shl40.i = shl i16 %exponent.1.lcssa.i, 11
  %or.i = or i16 %7, %shl40.i
  br label %zl6100_d2l.exit

zl6100_d2l.exit:                                  ; preds = %while.end16.i, %sw.bb.zl6100_d2l.exit_crit_edge
  %retval.0.i = phi i16 [ %or.i, %while.end16.i ], [ 0, %sw.bb.zl6100_d2l.exit_crit_edge ]
  tail call void @pmbus_clear_cache(ptr noundef %client) #9
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pmbus_clear_cache(ptr noundef %client) #9
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %shr.i71 = ashr i16 %word, 11
  %8 = shl i16 %word, 5
  %9 = ashr exact i16 %8, 5
  %shr5.i72 = sext i16 %9 to i32
  %mul.i73 = mul nsw i32 %shr5.i72, 1000
  %conv6.i74 = sext i16 %shr.i71 to i32
  %shl9.i75 = shl i32 %mul.i73, %conv6.i74
  %sub.i76 = sub nsw i32 0, %conv6.i74
  %shr11.i77 = ashr i32 %mul.i73, %sub.i76
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %word)
  %cmp19.i78 = icmp slt i16 %word, 0
  %val.0.i79 = select i1 %cmp19.i78, i32 %shr11.i77, i32 %shl9.i75
  %mul16 = mul i32 %val.0.i79, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul16)
  %cmp19 = icmp sgt i32 %mul16, 0
  %cond34.in.v = select i1 %cmp19, i32 5, i32 -5
  %cond34.in = add i32 %cond34.in.v, %mul16
  %cond34.in.off = add i32 %cond34.in, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %cond34.in.off)
  %10 = icmp ult i32 %cond34.in.off, 21
  br i1 %10, label %sw.bb13.zl6100_d2l.exit120_crit_edge, label %if.end.i83

sw.bb13.zl6100_d2l.exit120_crit_edge:             ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  br label %zl6100_d2l.exit120

if.end.i83:                                       ; preds = %sw.bb13
  %cond34 = sdiv i32 %cond34.in, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %cond34.in)
  %cmp1.i81 = icmp slt i32 %cond34.in, -10
  %11 = tail call i32 @llvm.abs.i32(i32 %cond34, i1 true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1022999, i32 %11)
  %cmp467.i82 = icmp ugt i32 %11, 1022999
  br i1 %cmp467.i82, label %if.end.i83.while.body.i95_crit_edge, label %if.end.i83.while.cond7.preheader.i87_crit_edge

if.end.i83.while.cond7.preheader.i87_crit_edge:   ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond7.preheader.i87

if.end.i83.while.body.i95_crit_edge:              ; preds = %if.end.i83
  br label %while.body.i95

while.cond7.preheader.i87:                        ; preds = %while.body.i95.while.cond7.preheader.i87_crit_edge, %if.end.i83.while.cond7.preheader.i87_crit_edge
  %val.addr.1.lcssa.i84 = phi i32 [ %11, %if.end.i83.while.cond7.preheader.i87_crit_edge ], [ %shr66.i91, %while.body.i95.while.cond7.preheader.i87_crit_edge ]
  %exponent.0.lcssa.i85 = phi i16 [ 0, %if.end.i83.while.cond7.preheader.i87_crit_edge ], [ %inc.i90, %while.body.i95.while.cond7.preheader.i87_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 511000, i32 %val.addr.1.lcssa.i84)
  %cmp871.i86 = icmp ult i32 %val.addr.1.lcssa.i84, 511000
  br i1 %cmp871.i86, label %while.cond7.preheader.i87.while.body15.i103_crit_edge, label %while.cond7.preheader.i87.while.end16.i118_crit_edge

while.cond7.preheader.i87.while.end16.i118_crit_edge: ; preds = %while.cond7.preheader.i87
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end16.i118

while.cond7.preheader.i87.while.body15.i103_crit_edge: ; preds = %while.cond7.preheader.i87
  br label %while.body15.i103

while.body.i95:                                   ; preds = %while.body.i95.while.body.i95_crit_edge, %if.end.i83.while.body.i95_crit_edge
  %exponent.069.i88 = phi i16 [ %inc.i90, %while.body.i95.while.body.i95_crit_edge ], [ 0, %if.end.i83.while.body.i95_crit_edge ]
  %val.addr.168.i89 = phi i32 [ %shr66.i91, %while.body.i95.while.body.i95_crit_edge ], [ %11, %if.end.i83.while.body.i95_crit_edge ]
  %inc.i90 = add nuw nsw i16 %exponent.069.i88, 1
  %shr66.i91 = lshr i32 %val.addr.168.i89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2045999, i32 %val.addr.168.i89)
  %cmp4.i92 = icmp ugt i32 %val.addr.168.i89, 2045999
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %exponent.069.i88)
  %cmp5.i93 = icmp ult i16 %exponent.069.i88, 14
  %or.cond.i94 = select i1 %cmp4.i92, i1 %cmp5.i93, i1 false
  br i1 %or.cond.i94, label %while.body.i95.while.body.i95_crit_edge, label %while.body.i95.while.cond7.preheader.i87_crit_edge

while.body.i95.while.cond7.preheader.i87_crit_edge: ; preds = %while.body.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond7.preheader.i87

while.body.i95.while.body.i95_crit_edge:          ; preds = %while.body.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i95

while.body15.i103:                                ; preds = %while.body15.i103.while.body15.i103_crit_edge, %while.cond7.preheader.i87.while.body15.i103_crit_edge
  %exponent.175.i96 = phi i16 [ %dec.i98, %while.body15.i103.while.body15.i103_crit_edge ], [ %exponent.0.lcssa.i85, %while.cond7.preheader.i87.while.body15.i103_crit_edge ]
  %val.addr.274.i97 = phi i32 [ %shl.i99, %while.body15.i103.while.body15.i103_crit_edge ], [ %val.addr.1.lcssa.i84, %while.cond7.preheader.i87.while.body15.i103_crit_edge ]
  %dec.i98 = add nsw i16 %exponent.175.i96, -1
  %shl.i99 = shl i32 %val.addr.274.i97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 511000, i32 %shl.i99)
  %cmp8.i100 = icmp slt i32 %shl.i99, 511000
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14, i16 %exponent.175.i96)
  %cmp12.i101 = icmp sgt i16 %exponent.175.i96, -14
  %or.cond65.i102 = select i1 %cmp8.i100, i1 %cmp12.i101, i1 false
  br i1 %or.cond65.i102, label %while.body15.i103.while.body15.i103_crit_edge, label %while.body15.i103.while.end16.i118_crit_edge

while.body15.i103.while.end16.i118_crit_edge:     ; preds = %while.body15.i103
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end16.i118

while.body15.i103.while.body15.i103_crit_edge:    ; preds = %while.body15.i103
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body15.i103

while.end16.i118:                                 ; preds = %while.body15.i103.while.end16.i118_crit_edge, %while.cond7.preheader.i87.while.end16.i118_crit_edge
  %val.addr.2.lcssa.i104 = phi i32 [ %val.addr.1.lcssa.i84, %while.cond7.preheader.i87.while.end16.i118_crit_edge ], [ %shl.i99, %while.body15.i103.while.end16.i118_crit_edge ]
  %exponent.1.lcssa.i105 = phi i16 [ %exponent.0.lcssa.i85, %while.cond7.preheader.i87.while.end16.i118_crit_edge ], [ %dec.i98, %while.body15.i103.while.end16.i118_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.addr.2.lcssa.i104)
  %cmp17.i106 = icmp sgt i32 %val.addr.2.lcssa.i104, 0
  %cond.in.v.i107 = select i1 %cmp17.i106, i32 500, i32 -500
  %cond.in.i108 = add i32 %cond.in.v.i107, %val.addr.2.lcssa.i104
  %cond.i109 = sdiv i32 %cond.in.i108, 1000
  %conv27.i110 = trunc i32 %cond.i109 to i16
  %sext.i111 = shl i32 %cond.i109, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 67043328, i32 %sext.i111)
  %cmp29.i112 = icmp sgt i32 %sext.i111, 67043328
  %spec.store.select.i113 = select i1 %cmp29.i112, i16 1023, i16 %conv27.i110
  %sub35.i114 = sub i16 0, %spec.store.select.i113
  %mantissa.0.i115 = select i1 %cmp1.i81, i16 %sub35.i114, i16 %spec.store.select.i113
  %12 = and i16 %mantissa.0.i115, 2047
  %shl40.i116 = shl i16 %exponent.1.lcssa.i105, 11
  %or.i117 = or i16 %12, %shl40.i116
  br label %zl6100_d2l.exit120

zl6100_d2l.exit120:                               ; preds = %while.end16.i118, %sw.bb13.zl6100_d2l.exit120_crit_edge
  %retval.0.i119 = phi i16 [ %or.i117, %while.end16.i118 ], [ 0, %sw.bb13.zl6100_d2l.exit120_crit_edge ]
  tail call void @pmbus_clear_cache(ptr noundef %client) #9
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pmbus_clear_cache(ptr noundef %client) #9
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %reg)
  %cmp37 = icmp sgt i32 %reg, 255
  br i1 %cmp37, label %sw.default.cleanup_crit_edge, label %if.end40

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast = trunc i32 %reg to i8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end40, %sw.bb36, %zl6100_d2l.exit120, %sw.bb12, %zl6100_d2l.exit
  %vreg.0 = phi i8 [ %phi.cast, %if.end40 ], [ -10, %sw.bb36 ], [ -10, %zl6100_d2l.exit120 ], [ -11, %sw.bb12 ], [ -11, %zl6100_d2l.exit ]
  %word.addr.0 = phi i16 [ %word, %if.end40 ], [ %word, %sw.bb36 ], [ %retval.0.i119, %zl6100_d2l.exit120 ], [ %word, %sw.bb12 ], [ %retval.0.i, %zl6100_d2l.exit ]
  %delay.i = getelementptr i8, ptr %call, i32 -4
  %13 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %delay.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %sw.epilog.zl6100_wait.exit_crit_edge, label %if.then.i

sw.epilog.zl6100_wait.exit_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %zl6100_wait.exit

if.then.i:                                        ; preds = %sw.epilog
  %call.i = tail call i64 @ktime_get() #9
  %access.i = getelementptr i8, ptr %call, i32 -12
  %15 = ptrtoint ptr %access.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %access.i, align 8
  %sub.i.i = sub i64 %call.i, %16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i, 0
  %17 = tail call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #9
  %18 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %17, i32 0) #14, !srcloc !57
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %18, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %18, 1
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %17, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #14, !srcloc !58
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %19, 0
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i
  %cond213.i.i.i.i = select i1 %cmp8.i.i.i.i, i64 %sub210.i.i.i.i, i64 %div1811.i.i.i.i
  %20 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delay.i, align 8
  %conv.i = sext i32 %21 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i.i, i64 %conv.i)
  %cmp.i121 = icmp slt i64 %cond213.i.i.i.i, %conv.i
  br i1 %cmp.i121, label %cond.false17.i, label %if.then.i.zl6100_wait.exit_crit_edge

if.then.i.zl6100_wait.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %zl6100_wait.exit

cond.false17.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %23 = trunc i64 %cond213.i.i.i.i to i32
  %conv21.i = sub i32 %21, %23
  tail call void %22(i32 noundef %conv21.i) #9
  br label %zl6100_wait.exit

zl6100_wait.exit:                                 ; preds = %cond.false17.i, %if.then.i.zl6100_wait.exit_crit_edge, %sw.epilog.zl6100_wait.exit_crit_edge
  %call42 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext %vreg.0, i16 noundef zeroext %word.addr.0) #9
  %call43 = tail call i64 @ktime_get() #9
  %access = getelementptr i8, ptr %call, i32 -12
  %24 = ptrtoint ptr %access to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %call43, ptr %access, align 8
  br label %cleanup

cleanup:                                          ; preds = %zl6100_wait.exit, %sw.default.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %zl6100_wait.exit ], [ -6, %entry.cleanup_crit_edge ], [ -6, %sw.default.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl6100_write_byte(ptr noundef %client, i32 noundef %page, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %page)
  %cmp.not = icmp sgt i32 %1, %page
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %delay.i = getelementptr i8, ptr %call, i32 -4
  %2 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.zl6100_wait.exit_crit_edge, label %if.then.i

if.end.zl6100_wait.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %zl6100_wait.exit

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i64 @ktime_get() #9
  %access.i = getelementptr i8, ptr %call, i32 -12
  %4 = ptrtoint ptr %access.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %access.i, align 8
  %sub.i.i = sub i64 %call.i, %5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i, 0
  %6 = tail call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #9
  %7 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %6, i32 0) #14, !srcloc !57
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %7, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %7, 1
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %6, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #14, !srcloc !58
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %8, 0
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i
  %cond213.i.i.i.i = select i1 %cmp8.i.i.i.i, i64 %sub210.i.i.i.i, i64 %div1811.i.i.i.i
  %9 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay.i, align 8
  %conv.i = sext i32 %10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i.i, i64 %conv.i)
  %cmp.i = icmp slt i64 %cond213.i.i.i.i, %conv.i
  br i1 %cmp.i, label %cond.false17.i, label %if.then.i.zl6100_wait.exit_crit_edge

if.then.i.zl6100_wait.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %zl6100_wait.exit

cond.false17.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %12 = trunc i64 %cond213.i.i.i.i to i32
  %conv21.i = sub i32 %10, %12
  tail call void %11(i32 noundef %conv21.i) #9
  br label %zl6100_wait.exit

zl6100_wait.exit:                                 ; preds = %cond.false17.i, %if.then.i.zl6100_wait.exit_crit_edge, %if.end.zl6100_wait.exit_crit_edge
  %call1 = tail call i32 @pmbus_write_byte(ptr noundef %client, i32 noundef %page, i8 noundef zeroext %value) #9
  %call2 = tail call i64 @ktime_get() #9
  %access = getelementptr i8, ptr %call, i32 -12
  %13 = ptrtoint ptr %access to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call2, ptr %access, align 8
  br label %cleanup

cleanup:                                          ; preds = %zl6100_wait.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %zl6100_wait.exit ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmbus_get_driver_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_word_data(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_byte_data(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmbus_clear_cache(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_write_word_data(ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_write_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__param_delay, !1, !"__param_delay", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/zl6100.c", i32 56, i32 1}
!2 = !{ptr @__UNIQUE_ID_delaytype288, !1, !"__UNIQUE_ID_delaytype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_delay289, !4, !"__UNIQUE_ID_delay289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/zl6100.c", i32 57, i32 1}
!5 = !{ptr @__initcall__kmod_zl6100__290_468_zl6100_driver_init6, !6, !"__initcall__kmod_zl6100__290_468_zl6100_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/zl6100.c", i32 468, i32 1}
!7 = !{ptr @__exitcall_zl6100_driver_exit, !6, !"__exitcall_zl6100_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author291, !9, !"__UNIQUE_ID_author291", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/pmbus/zl6100.c", i32 470, i32 1}
!10 = !{ptr @__UNIQUE_ID_description292, !11, !"__UNIQUE_ID_description292", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/zl6100.c", i32 471, i32 1}
!12 = !{ptr @__UNIQUE_ID_file293, !13, !"__UNIQUE_ID_file293", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/zl6100.c", i32 472, i32 1}
!14 = !{ptr @__UNIQUE_ID_license294, !13, !"__UNIQUE_ID_license294", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_import_ns295, !16, !"__UNIQUE_ID_import_ns295", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/pmbus/zl6100.c", i32 473, i32 1}
!17 = !{ptr @__param_str_delay, !1, !"__param_str_delay", i1 false, i1 false}
!18 = !{ptr @delay, !19, !"delay", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/pmbus/zl6100.c", i32 55, i32 15}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/pmbus/zl6100.c", i32 462, i32 14}
!22 = !{ptr @zl6100_driver, !23, !"zl6100_driver", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/pmbus/zl6100.c", i32 460, i32 26}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/pmbus/zl6100.c", i32 334, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @zl6100_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @zl6100_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/pmbus/zl6100.c", i32 338, i32 2}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @zl6100_probe._entry.6, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @zl6100_probe._entry_ptr.9, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/pmbus/zl6100.c", i32 346, i32 3}
!39 = !{ptr @zl6100_probe._entry.10, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @zl6100_probe._entry_ptr.12, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/pmbus/zl6100.c", i32 350, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @zl6100_probe._entry.13, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @zl6100_probe._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @zl6100_id, !47, !"zl6100_id", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/pmbus/zl6100.c", i32 291, i32 35}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 1124175, i64 1124202, i64 1124224, i64 1124252}
!58 = !{i64 1124583, i64 1124610, i64 1124643, i64 1124664, i64 1124691, i64 1124717}
